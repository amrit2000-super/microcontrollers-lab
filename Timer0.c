#include <lpc214x.h>

void wait()
{
    T0TCR=1;
	while(T0TC!=T0MR1);
}

int main()
{
    T0MR1=0x1234;
	T0MCR=0x10;
	while(1)
	{
	   IODIR0=0xFFFFFFFF;
	   IOSET0=0xFFFFFFFF;
	   wait();
	   IOCLR0=0xFFFFFFFF;
	   wait();
	 }	   
}
