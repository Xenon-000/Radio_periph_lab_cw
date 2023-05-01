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
#include "platform.h"
#include "xil_printf.h"
#include "xparameters.h"
#include "xgpio_l.h"
#include "sleep.h"
#include "xuartps_hw.h"
#include "xiic_l.h"

#define _BSD_SOURCE

#define RADIO_TUNER_FAKE_ADC_PINC_OFFSET 0
#define RADIO_TUNER_TUNER_PINC_OFFSET 1
#define RADIO_TUNER_CONTROL_REG_OFFSET 2
#define RADIO_TUNER_TIMER_REG_OFFSET 3
#define RADIO_PERIPH_ADDRESS 0x43c00000


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


void print_benchmark(volatile unsigned int *periph_base)
{
    // the below code does a little benchmark, reading from the peripheral a bunch 
    // of times, and seeing how many clocks it takes.  You can use this information
    // to get an idea of how fast you can generally read from an axi-lite slave device
    unsigned int start_time;
    unsigned int stop_time;
    start_time = *(periph_base+RADIO_TUNER_TIMER_REG_OFFSET);
    for (int i=0;i<2048;i++)
        stop_time = *(periph_base+RADIO_TUNER_TIMER_REG_OFFSET);
    printf("Elapsed time in clocks = %u\n",stop_time-start_time);
    float throughput=0; 
    // please insert your code here for calculate the actual throughput in Mbytes/second
    // how much data was transferred? How long did it take?
    unsigned int bytes_transferred = 8192; // change obviously
    float time_spent = (stop_time-start_time)/125.0e6; // change obviously
    throughput = bytes_transferred/1048576.0/time_spent;
    printf("You transferred %u bytes of data in %f seconds\n",bytes_transferred,time_spent);
    printf("Measured Transfer throughput = %f Mbytes/sec\n",throughput);
}

long long int phase_inc_calc(long long int freq)
{
	print("Updating frequency:\n\r");
	long long int phase_inc;
	//calculate phase_inc
	phase_inc = freq*134217728/125000000;
	printf("frequency = %lld\n\r", freq);
	printf("phase_inc = %lld\n\n\r", phase_inc);
	return phase_inc;
}

void write_codec_register(u8 regnum, u16 regval)
{
	regval = (regnum << 9) + regval;

	u8 regbytes[2];
	regbytes[0] = regval >> 8;  //upper byte in position 0
	regbytes[1] = (u8) regval;  //lower byte in position 1 (top byte truncated when casting)
	XIic_Send(XPAR_IIC_0_BASEADDR, 0x1A, (regbytes), 2, XIIC_STOP);
}
void set_dacif_resetn(u8 regval)
{
	XIic_WriteReg(XPAR_IIC_0_BASEADDR, XIIC_GPO_REG_OFFSET, regval);
	usleep(1000);
}

void configure_codec()
{
    set_dacif_resetn(0);
    write_codec_register(15,0x00);
    usleep(1000);
    write_codec_register(6,0x30);
    write_codec_register(0,0x17);
    write_codec_register(1,0x17);
    write_codec_register(2,0x79);
    write_codec_register(3,0x79);
    write_codec_register(4,0x10);
    write_codec_register(5,0x00);
    write_codec_register(7,0x02);
    write_codec_register(8,0x00);
    usleep(75000);
    write_codec_register(9,0x01);
    write_codec_register(6,0x00);
    set_dacif_resetn(1);
}




int main()
{
    init_platform();
    char myChar;
    long long int freq  = 1001000;
    long long int tone_freq = 1000000;
    long long int temp  = 0;
    long long int phase_inc = 1074816;
    long long int tone_phase_inc = 1073742;
    u16 volume = 0x79;
    //config codec
    print("Celine.\n\n\r");
    print("Using IIC to set registers on CODEC.\n\n\r");
    configure_codec();
    setvbuf(stdin, NULL, _IONBF, 0);
    setvbuf(stdout, NULL, _IONBF, 0);
    print("Done. Starting Lab 5 Application.\n\n\r");
    //print menu
    XGpio_WriteReg(XPAR_AXI_GPIO_BASEADDR, XGPIO_DATA_OFFSET, phase_inc);
    XGpio_WriteReg(XPAR_AXI_GPIO_BASEADDR, XGPIO_DATA2_OFFSET, tone_phase_inc);
    print("Press 'T' to tone the radio.\n\r");
    print("Press 'f' to tune to a new frequency.\n\r");
    print("Press 'U/u' to increase frequency by 1000/100 Hz.\n\r");
    print("Press 'D/d' to decrease frequency by 1000/100 Hz.\n\r");
    print("Press '+/-' to turn up/down the volume.\n\r");
    print("Press 'z' to reset the phase.\n\r");
    print("Press [space] to repeat this menu.\n\n\r");

    //check for input
    while (1){
        scanf("%c", &myChar);
        //if input is not a valid char
        if (myChar != 'f' && myChar != 'U' && myChar != 'u' && myChar != 'D' && myChar != 'd' && myChar != 'T' && myChar != 'z' && myChar != ' ' && myChar != '+' && myChar != '-'){
            print("Invalid input.\n\r");
            print("Press 'T' to tone the radio.\n\r");
            print("Press 'f' to tune to a new frequency.\n\r");
            print("Press 'U/u' to increase frequency by 1000/100 Hz.\n\r");
            print("Press 'D/d' to decrease frequency by 1000/100 Hz.\n\r");
            print("Press '+/-' to turn up/down the volume.\n\r");
            print("Press 'z' to reset the phase.\n\r");
            print("Press [space] to repeat this menu.\n\n\r");
        }
        // if input is 'f', set freq to user input number
        else if (myChar == 'f'){
            print("Enter a frequency in Hz: ");
            temp = 0;
            while (scanf("%c", &myChar)){
            	printf("%c", myChar);
            	if ( myChar == EOF || myChar == '\n' || myChar == '\r' ){
            		print("Return Received, done reading frequency.\n\n\r");
            		if (temp < 0 || temp > 125000000){
            			print("Oops, frequency can't be larger than 125000000, setting to 125000000.\n\r");
            			freq = 125000000;
            			phase_inc = phase_inc_calc(freq);
            		}
            		else{
            			freq = temp;
            			phase_inc = phase_inc_calc(freq);
            		}
            		break;
            	}
            	else if(myChar <= 57 && myChar >= 48){
            		temp = temp*10 + (myChar - 48);
            	}
            	else{
            		print("\nNot a valid character, no frequency loaded.\n\r");
            		break;
            	}
            }

        }
        //increase freq by 1000/100 with input U/u
        else if (myChar == 'U'){
            freq = freq + 1000;
    		if (freq < 0 || freq > 125000000){
    			print("Oops, frequency can't be larger than 125000000, setting to 125000000.\n\n\r");
    			freq = 125000000;
    			phase_inc = phase_inc_calc(freq);
    		}
    		else{
    			phase_inc = phase_inc_calc(freq);
    		}
        }
        else if (myChar == 'u'){
            freq = freq + 100;
    		if (freq < 0 || freq > 125000000){
    			print("Oops, frequency can't be larger than 125000000, setting to 125000000.\n\n\r");
    			freq = 125000000;
    			phase_inc = phase_inc_calc(freq);
    		}
    		else{
    			phase_inc = phase_inc_calc(freq);
    		}
		}
        //decrease freq by 1000/100 with input D/d
        else if (myChar == 'D'){
            freq = freq - 1000;
    		if (freq < 0 || freq > 125000000){
    			print("Oops, frequency can't be less than 0, setting to 0.\n\n\r");
    			freq = 0;
    			phase_inc = phase_inc_calc(freq);
    		}
    		else{
    			phase_inc = phase_inc_calc(freq);
    		}
        }
        else if (myChar == 'd'){
            freq = freq - 100;
    		if (freq < 0 || freq > 125000000){
    			print("Oops, frequency can't be less than 0, setting to 0.\n\n\r");
    			freq = 0;
    			phase_inc = phase_inc_calc(freq);
    		}
    		else{
    			phase_inc = phase_inc_calc(freq);
    		}
		}
        //increase/decrease volume of codec with input +/-
        else if (myChar == '+'){

    		if (volume + 1 < 0x030 || volume + 1 > 0x07F){
    			print("Oops, volume can't be more than 127, setting to 127.\n\n\r");
    			volume = 0x07F;
    			printf("Volume = %d\n\n\r", volume);

    			write_codec_register(2,volume);
    			write_codec_register(3,volume);
    		}
    		else{
    			volume = volume + 1;
    			printf("Volume = %d\n\n\r", volume);
    			write_codec_register(2,volume);
    			write_codec_register(3,volume);
    		}
        }
        else if (myChar == '-'){

            if (volume - 1 < 0x030 || volume - 1 > 0x07F){
    			print("Oops, volume can't be less than 48, setting to 48.\n\n\r");
    			volume = 0x030;
    			printf("Volume = %d\n\n\r", volume);

    			write_codec_register(2,volume);
    			write_codec_register(3,volume);
    		}
    		else{
    			volume = volume - 1;
    			printf("Volume = %d\n\n\r", volume);
    			write_codec_register(2,volume);
    			write_codec_register(3,volume);
    		}
		}
        //take tone freq from user and set phase inc of tuner DDS so that tune freq is shifted to 0
        else if (myChar == 'T'){
            print("Enter a frequency in Hz: ");
            temp = 0;
            while (scanf("%c", &myChar)){
            	printf("%c", myChar);
            	if ( myChar == EOF || myChar == '\n' || myChar == '\r' ){
            		print("Return Received, done reading frequency.\n\n\r");

            		if (temp > 60000000){
            			print("Oops, toning frequency can't be larger than 60000000, setting to 60000000.\n\r");
            			tone_freq = 60000000;
            			tone_phase_inc = phase_inc_calc(tone_freq);
            		}
            		else if(temp < 1000000){
            			print("Oops, toning frequency can't be less than 1000000, setting to 1000000.\n\r");
            			tone_freq = 1000000;
            			tone_phase_inc = phase_inc_calc(tone_freq);
            		}
            		else{
            			tone_freq = temp;
            			tone_phase_inc = phase_inc_calc(tone_freq);
            		}
            		printf("Toned radio to %lld Hz.\n\n\r", tone_freq);
            		break;
            	}
            	else if(myChar <= 57 && myChar >= 48){
            		temp = temp*10 + (myChar - 48);
            	}
            	else{
            		print("\nNot a valid character, no frequency loaded.\n\r");
            		break;
            	}
            }
		}
        // reset DDS/DAC if input is 'z'
        else if (myChar == 'z'){
        	print("Set DDS ARESETN low...");
        	set_dacif_resetn(0);
        	set_dacif_resetn(1);
        	print("and bring it back high.\n\n\r");
		}
        // reprint menu if input is a [space]
        else if (myChar == ' '){
            print("Press 'T' to tone the radio.\n\r");
            print("Press 'f' to tune to a new frequency.\n\r");
            print("Press 'U/u' to increase frequency by 1000/100 Hz.\n\r");
            print("Press 'D/d' to decrease frequency by 1000/100 Hz.\n\r");
            print("Press '+/-' to turn up/down the volume.\n\r");
            print("Press 'z' to reset the phase.\n\r");
            print("Press [space] to repeat this menu.\n\n\r");
		}
        XGpio_WriteReg(XPAR_AXI_GPIO_BASEADDR, XGPIO_DATA_OFFSET, phase_inc);
        XGpio_WriteReg(XPAR_AXI_GPIO_BASEADDR, XGPIO_DATA2_OFFSET, tone_phase_inc);
    }

    cleanup_platform();
    return 0;
}
