#include <stdio.h>
#include <sys/mman.h> 
#include <fcntl.h> 
#include <unistd.h>
#define _BSD_SOURCE

#define FIFO_EMPTY_OFFSET 0
#define FIFO_DATA_OFFSET 1
#define FIFO_CONTROL_REG_OFFSET 2
#define FIFO_RD_INDEX_OFFSET 3
#define FIFO_PERIPH_ADDRESS 0x40000000

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
void rd_fifo_data(volatile unsigned int *periph_base, unsigned int data_count)
{
    unsigned int rd_index;
    *(periph_base+FIFO_CONTROL_REG_OFFSET) = 1 ; // set fifo to be streaming data
    for (int i=0;i<data_count;i++){
        int data;
        int j = 0;
        while(periph_base[FIFO_EMPTY_OFFSET] == 1){
            sleep(1/500000000);
        }
        if(i == 0 && j == 0){
            rd_index = *(periph_base+FIFO_RD_INDEX_OFFSET);
            data     = *(periph_base+FIFO_DATA_OFFSET);
            *(periph_base+FIFO_CONTROL_REG_OFFSET) = 3 ; //flip second bit to signal data read
            j = 1;
        }
        else{
            // while(rd_index == periph_base[FIFO_RD_INDEX_OFFSET]){
            //     sleep(1/500000000);
            //     printf("2\r");
            // }
            rd_index = *(periph_base+FIFO_RD_INDEX_OFFSET);
            data     = *(periph_base+FIFO_DATA_OFFSET);
            if(periph_base[FIFO_CONTROL_REG_OFFSET] == 3){
                *(periph_base+FIFO_CONTROL_REG_OFFSET) = 1 ;
            }
            else{
                *(periph_base+FIFO_CONTROL_REG_OFFSET) = 3 ;
            }
        }
    }
    *(periph_base+FIFO_CONTROL_REG_OFFSET) = 0; // set fifo to stop streaming data
}

int main()
{

// first, get a pointer to the peripheral base address using /dev/mem and the function mmap
    volatile unsigned int *periph_radio = get_a_pointer(RADIO_PERIPH_ADDRESS);	
    volatile unsigned int *periph_fifo = get_a_pointer(FIFO_PERIPH_ADDRESS);	

    printf("\r\n\r\n\r\nLab 6 Celine - Custom FIFO Demonstration\n\r");
    *(periph_fifo+FIFO_CONTROL_REG_OFFSET) = 0; // reset read enable on fifo
    printf("Tuning Radio to 30MHz\n\r");
    radioTuner_tuneRadio(periph_radio,30e6);
    printf("Playing 1KHz Tune at near 30MHz\r\n");
    radioTuner_setAdcFreq(periph_radio, 30e6 + 1000);

    sleep(1);
    printf("Start Reading 480000 data points\n\r");
    rd_fifo_data(periph_fifo, 480000);
    printf("Finished!\n\r");
    return 0;
}
