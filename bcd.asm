 area proj15,code,readonly
radix rn 0
lowernibblemask rn 10
uppernibblemask rn 11
lowernibble rn 3
uppernibble rn 4
result rn 5
numbytes rn 6
byte rn 2
entry
       mov radix,#10
	   mov lowernibblemask,#0x0F
	   mov uppernibblemask,#0xF0
	   mov result,#0
	   mov numbytes,#4
	   ldr r1,=number
	   add r1,r1,numbytes
	   subs r1,r1,#1
loop   ldrb byte,[r1]
       subs r1,r1,#1
	   and lowernibble,byte,lowernibblemask
	   and uppernibble,byte,uppernibblemask
	   lsr uppernibble,#4
	   mla result,radix,result,uppernibble
	   mla result,radix,result,lowernibble
	   subs numbytes,numbytes,#1
	   bne loop
stop b stop
number dcd 0x00000127
end
