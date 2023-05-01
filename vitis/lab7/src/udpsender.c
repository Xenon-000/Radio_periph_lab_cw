
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

	short packet_data [packet_num];
    memset( packet_data, 0, packet_num*sizeof(short) );

    for (int i = 0; i < packet_num; i++) {
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
	
    for (int i = 0; i < packet_num; i++) {
        int len = sendto(sockfd, packet_data, sizeof(packet_data]),
            0, (const struct sockaddr *)&servaddr, sizeof(servaddr));
        printf("(const short *)packet_data+i = 5d", (const short *)packet_data+i);
        if(len ==-1)
        {
            perror("failed to send");
        }
        //printf("Sending packet %d  = %d.\n", i+1, packet_data[i]);
    }
	
	close(sockfd);
	
    return 0;
}