#include <lpc214x.h>

void delay(int n)
{
    int i;
	for(i=0;i<n;i++);
}

int main()
{
     IODIR0=0x2;
	 while(1)
	 {
	     IOSET0=0x2;
		 delay(500);
		 IOCLR0=0x2;
		 delay(500);
     }
}
