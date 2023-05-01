/******************************************************************************
*
* Copyright (C) 2009 - 2014 Xilinx, Inc.  All rights reserved.
*
* Permission is hereby granted, free of charge, to any person obtaining a copy
* of this software and associated documentation files (the "Software"), to deal
* in the Software without restriction, including without limitation the rights
* to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
* copies of the Software, and to permit persons to whom the Software is
* furnished to do so, subject to the following conditions:
*
* The above copyright notice and this permission notice shall be included in
* all copies or substantial portions of the Software.
*
* Use of the Software is limited solely to applications:
* (a) running on a Xilinx device, or
* (b) that interact with a Xilinx device through a bus or interconnect.
*
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
* XILINX  BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
* WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF
* OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
* SOFTWARE.
*
* Except as contained in this notice, the name of the Xilinx shall not be used
* in advertising or otherwise to promote the sale, use or other dealings in
* this Software without prior written authorization from Xilinx.
*
******************************************************************************/

/*
 * helloworld.c: simple test application
 *
 * This application configures UART 16550 to baud rate 9600.
 * PS7 UART (Zynq) is not initialized by this application, since
 * bootrom/bsp configures it to baud rate 115200
 *
 * ------------------------------------------------
 * | UART TYPE   BAUD RATE                        |
 * ------------------------------------------------
 *   uartns550   9600
 *   uartlite    Configurable only in HW design
 *   ps7_uart    115200 (configured by bootrom/bsp)
 */

#include <stdio.h>
#include <fcntl.h>
#include <stdlib.h>
#include <time.h>
#include <limits.h>
#include <sys/mman.h> 
#include <unistd.h>
#include <string.h> 
#include <sys/types.h> 
#include <sys/socket.h> 
#include <arpa/inet.h> 
#include <netinet/in.h> 
#include <pthread.h>

#define _BSD_SOURCE

#define RADIO_TUNER_FAKE_ADC_PINC_OFFSET 0
#define RADIO_TUNER_TUNER_PINC_OFFSET 1
#define RADIO_TUNER_CONTROL_REG_OFFSET 2
#define RADIO_TUNER_TIMER_REG_OFFSET 3
#define RADIO_PERIPH_ADDRESS 0x43c00000

#define FIFO_EMPTY_OFFSET 0
#define FIFO_DATA_OFFSET 1
#define FIFO_CONTROL_REG_OFFSET 2
#define FIFO_RD_INDEX_OFFSET 3
#define FIFO_PERIPH_ADDRESS 0x40000000

int stream_en = 0; // enable stream data
char ip_addr [24] = "192.168.0.2";

// the below code uses a device called /dev/mem to get a pointer to a physical
// address.  We will use this pointer to read/write the custom peripheral
volatile unsigned int * get_a_pointer(unsigned int phys_addr)
{

	int mem_fd = open("/dev/mem", O_RDWR | O_SYNC); 
	void *map_base = mmap(0, 4096, PROT_READ | PROT_WRITE, MAP_SHARED, mem_fd, phys_addr); 
	volatile unsigned int *radio_base = (volatile unsigned int *)map_base; 
	return (radio_base);
}


void radioTuner_tuneRadio(volatile unsigned int *ptrToRadio, float tune_frequency)
{
	float pinc = (-1.0*tune_frequency)*(float)(1<<27)/125.0e6;
	*(ptrToRadio+RADIO_TUNER_TUNER_PINC_OFFSET)=(int)pinc;
}

void radioTuner_setAdcFreq(volatile unsigned int* ptrToRadio, float freq)
{
	float pinc = freq*(float)(1<<27)/125.0e6;
	*(ptrToRadio+RADIO_TUNER_FAKE_ADC_PINC_OFFSET) = (int)pinc;
}

void play_tune(volatile unsigned int *ptrToRadio, float base_frequency)
{
	int i;
	float freqs[16] = {1760.0,1567.98,1396.91, 1318.51, 1174.66, 1318.51, 1396.91, 1567.98, 1760.0, 0, 1760.0, 0, 1760.0, 1975.53, 2093.0,0};
	float durations[16] = {1,1,1,1,1,1,1,1,.5,0.0001,.5,0.0001,1,1,2,0.0001};
	for (i=0;i<16;i++)
	{
		radioTuner_setAdcFreq(ptrToRadio,freqs[i]+base_frequency);
		usleep((int)(durations[i]*500000));
	}
}


void *streamingThread(void *vargp)
{
	short packet_data [513] = {0};
	short packet_count = 0;
	struct sockaddr_in servaddr = {0}; //addr of destination socket
	int len = 0;
	int rd_index = 0; 
	int data = 0;
	int j = 0;	
	volatile unsigned int *periph_base = get_a_pointer(FIFO_PERIPH_ADDRESS);
	*(periph_base+FIFO_CONTROL_REG_OFFSET) = 0; // set fifo to stop streaming data
	
	int sockfd = socket(AF_INET, SOCK_DGRAM, 0); //udp packet socket config 
	if(sockfd == -1)
	{
		perror("failed to create socket");
		exit(EXIT_FAILURE);
	}
	
	servaddr.sin_family = AF_INET;
	servaddr.sin_port = htons(25344);
 	servaddr.sin_addr.s_addr = inet_addr(ip_addr);


	while(1) {


        // if input is 'S', start/stop streaming
        if (stream_en == 1){
			servaddr.sin_addr.s_addr = inet_addr(ip_addr);
			packet_data[0] = packet_count;
			*(periph_base+FIFO_CONTROL_REG_OFFSET) = 1 ; // set fifo to be streaming data
			for (int i=0;i<256;i++){
				j = 0;
				while(periph_base[FIFO_EMPTY_OFFSET] == 1){
					sleep(1/500000000);
				}
				if(i == 0 && j == 0){
					rd_index = periph_base[FIFO_RD_INDEX_OFFSET];
					packet_data[i*2+1]         = (short)(periph_base[FIFO_DATA_OFFSET] >> 16);
					packet_data[i*2 + 2]     = (short)(periph_base[FIFO_DATA_OFFSET] & 0xffff);
					*(periph_base+FIFO_CONTROL_REG_OFFSET) = 3 ; //flip second bit to signal data read
					j = 1;
				}
				else{
					rd_index = periph_base[FIFO_RD_INDEX_OFFSET];
					packet_data[i*2 +1]         = (short)(periph_base[FIFO_DATA_OFFSET] >> 16);
					packet_data[i*2 + 2]     = (short)(periph_base[FIFO_DATA_OFFSET] & 0xffff);
					if(periph_base[FIFO_CONTROL_REG_OFFSET] == 3){
						*(periph_base+FIFO_CONTROL_REG_OFFSET) = 1 ;
					}
					else{
						*(periph_base+FIFO_CONTROL_REG_OFFSET) = 3 ;
					}
				}
			}
			
			len = sendto(sockfd, packet_data, sizeof(packet_data),
				0, (const struct sockaddr *)&servaddr, sizeof(servaddr));
			if(len ==-1)
			{
				perror("failed to send");
			}
			packet_count = packet_count +1;
        }
		else{
			//close(sockfd);
			*(periph_base+FIFO_CONTROL_REG_OFFSET) = 0; // set fifo to stop streaming data
		}
	}
	return NULL;
}

int main()
{
    char myChar;
    long long int freq  = 30e6;
    long long int tone_freq = 30e6;
    long long int temp  = 0;
	//create parallel thread 
	pthread_t thread_id;
	pthread_create(&thread_id, NULL, streamingThread, NULL);

	// first, get a pointer to the peripheral base address using /dev/mem and the function mmap
    volatile unsigned int *my_periph = get_a_pointer(RADIO_PERIPH_ADDRESS);	
    *(my_periph+RADIO_TUNER_CONTROL_REG_OFFSET) = 0; // make sure radio isn't in reset

    //config codec
    printf("\n\nCeline's Radio Tuner.\n\n\r");
    printf("Tuning Radio to 30MHz\n\r");
    radioTuner_tuneRadio(my_periph,30e6);
    printf("Playing Tune at near 30MHz\r\n\n");
    play_tune(my_periph,30e6);

    //print menu
    
    printf("Press 'T' to tone the radio.\n\r");
    printf("Press 'f' to tune to a new frequency.\n\r");
    printf("Press 'U/u' to increase frequency by 1000/100 Hz.\n\r");
    printf("Press 'D/d' to decrease frequency by 1000/100 Hz.\n\r");
	printf("Press 'S' to start/stop streaming data.\n\r");
    printf("Press [space] to repeat this menu.\n\n\r");

    //check for input
    while (1){
        scanf("%c", &myChar);

        //if input is not a valid char
        if (myChar != 'f' && myChar != 'U' && myChar != 'u' && myChar != 'D' && myChar != 'd' && myChar != 'T' && myChar != ' ' && myChar != 'S' && myChar != EOF && myChar != '\n' && myChar != '\r'  ){
            printf("Invalid input.\n\r");
            printf("Press 'T' to tone the radio.\n\r");
            printf("Press 'f' to tune to a new frequency.\n\r");
            printf("Press 'U/u' to increase frequency by 1000/100 Hz.\n\r");
            printf("Press 'D/d' to decrease frequency by 1000/100 Hz.\n\r");
			printf("Press 'S' to start/stop streaming data.\n\r");
            printf("Press [space] to repeat this menu.\n\n\r");
        }
        // if input is 'f', set freq to user input number
        else if (myChar == 'f'){
            printf("Enter a frequency in Hz: ");
			scanf("%lld", &freq);
			if (freq < 0 || freq > 125000000){
				printf("Oops, frequency can't be larger than 125000000 or less than 0, setting to 125000000.\n\r");
				freq = 125000000;
				radioTuner_setAdcFreq(my_periph,freq);
			}
			else{
				radioTuner_setAdcFreq(my_periph,freq);
			}
			printf("New frequency = %lld\n\r", freq);

			radioTuner_setAdcFreq(my_periph,freq);
        }

		else if (myChar == 'S'){
			if (stream_en == 0){
				printf("Enter IP_ADDR: ");
				scanf("%s", ip_addr);
				stream_en = 1;			
				printf("Data streaming starting.\r\n\n");
			}
			else {
				stream_en = 0;
				printf("Data streaming stoped.\n\n\r");
			}
            temp = 0;
        }
        //increase freq by 1000/100 with input U/u
        else if (myChar == 'U'){
            freq = freq + 1000;
    		if (freq < 0 || freq > 125000000){
    			printf("Oops, frequency can't be larger than 125000000, setting to 125000000.\n\n\r");
    			freq = 125000000;
    			radioTuner_setAdcFreq(my_periph,freq);
    		}
    		else{
    			radioTuner_setAdcFreq(my_periph,freq);
    		}
			printf("New frequency = %lld\n\r", freq);
        }
        else if (myChar == 'u'){
            freq = freq + 100;
    		if (freq < 0 || freq > 125000000){
    			printf("Oops, frequency can't be larger than 125000000, setting to 125000000.\n\n\r");
    			freq = 125000000;
    			radioTuner_setAdcFreq(my_periph,freq);
    		}
    		else{
    			radioTuner_setAdcFreq(my_periph,freq);
    		}
			printf("New frequency = %lld\n\r", freq);
		}
        //decrease freq by 1000/100 with input D/d
        else if (myChar == 'D'){
            freq = freq - 1000;
    		if (freq < 0 || freq > 125000000){
    			printf("Oops, frequency can't be less than 0, setting to 0.\n\n\r");
    			freq = 0;
    			radioTuner_setAdcFreq(my_periph,freq);
    		}
    		else{
    			radioTuner_setAdcFreq(my_periph,freq);
    		}
			printf("New frequency = %lld\n\r", freq);
        }
        else if (myChar == 'd'){
            freq = freq - 100;
    		if (freq < 0 || freq > 125000000){
    			printf("Oops, frequency can't be less than 0, setting to 0.\n\n\r");
    			freq = 0;
    			radioTuner_setAdcFreq(my_periph,freq);
    		}
    		else{
    			radioTuner_setAdcFreq(my_periph,freq);
    		}
			printf("New frequency = %lld\n\r", freq);
		}
        //take tone freq from user and set phase inc of tuner DDS so that tune freq is shifted to 0
        else if (myChar == 'T'){
            printf("Enter a frequency in Hz: ");
            temp = 0;
			scanf("%lld", &tone_freq);
			if (tone_freq > 60000000){
				printf("Oops, toning frequency can't be larger than 60000000, setting to 60000000.\n\r");
				tone_freq = 60000000;
				radioTuner_tuneRadio(my_periph,tone_freq);
			}
			else if(tone_freq < 1000000){
				printf("Oops, toning frequency can't be less than 1000000, setting to 1000000.\n\r");
				tone_freq = 1000000;
				radioTuner_tuneRadio(my_periph,tone_freq);
			}
			else{
				radioTuner_tuneRadio(my_periph,tone_freq);
			}
			printf("Toned radio to %lld Hz.\n\n\r", tone_freq);
		}
        // reprint menu if input is a [space]
        else if (myChar == ' '){
            printf("Press 'T' to tone the radio.\n\r");
            printf("Press 'f' to tune to a new frequency.\n\r");
            printf("Press 'U/u' to increase frequency by 1000/100 Hz.\n\r");
            printf("Press 'D/d' to decrease frequency by 1000/100 Hz.\n\r");
			printf("Press 'S' to start/stop streaming data.\n\r");
            printf("Press [space] to repeat this menu.\n\n\r");
		}
    }
    return 0;
}
