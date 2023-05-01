
#include <stdio.h> 
#include <stdlib.h> 
#include <unistd.h> 
#include <string.h> 
#include <sys/types.h> 
#include <sys/socket.h> 
#include <arpa/inet.h> 
#include <netinet/in.h> 
#include <fcntl.h>
#include <limits.h>


int main( int argc, char *argv[] )
{

    printf("You have entered %d arguments:\n", argc);
 
    for (int i = 0; i < argc; i++) {
        printf("%s\n", argv[i]);
    }

    if( argc != 3 ){
        printf("Invalid input. Please run again with this format: program_name IP_ADDR #_of_packets.\n");
        printf("ex: ./udpsender 192.168.1.23 10\n");
        return 0;
    }
    int packet_num = atoi(argv[2]);
    printf("Sending %d packets.\n", packet_num);

    //1026 total UDP data bytes per UDP frame (256 complex 16 bit samples per packet)
    // bytes 0-1 : 16 bit unsigned counter, which increments by one each UDP frame. This will let the
    // application know if it has missed a frame, so it can tell the user. This way you know if you are
    // missing lots of frames.
    // bytes 2-1025 : 16 bit signed I, 16 bit signed Q, 16 bit signed I, ...etc.
    // all 16 bit values are little endian, and sample rate is assumed to be 125MHz/2560 = approx 48kHz


	short packet_data [513] = {0};

    for (int i = 1; i < 513; i++) {
        packet_data[i] = i;
    }

	struct sockaddr_in servaddr = {0}; //addr of destination socket
	
	int sockfd = socket(AF_INET, SOCK_DGRAM, 0); //udp packet socket config 
	if(sockfd == -1)
	{
		perror("failed to create socket");
		exit(EXIT_FAILURE);
	}
	
	servaddr.sin_family = AF_INET;
	servaddr.sin_port = htons(25344);
 	servaddr.sin_addr.s_addr = inet_addr(argv[1]);
	//servaddr.sin_addr.s_addr = inet_addr("192.168.0.192");
    printf("port = %d, IP Addr = %d.\n", servaddr.sin_port, servaddr.sin_addr.s_addr);
	
    for (int i = 0; i < packet_num; i++){
        packet_data[0] = i;//htons(i);
        int len = sendto(sockfd, packet_data, sizeof(packet_data),
            0, (const struct sockaddr *)&servaddr, sizeof(servaddr));
        if(len ==-1)
        {
            perror("failed to send");
        }
        printf("Done sending packet %d.\n", i);
	}
	close(sockfd);
	
    return 0;
}