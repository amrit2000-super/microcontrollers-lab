area proj16,code,readonly
nooftermstotal rn 1
nooftermsini rn 2
nooftermsinj rn 3
entry
       mov nooftermstotal,#4
	   ldr r4,=nums
	   mov r5,#0x40000000
	   mov r6,#0x40000000
	   mov nooftermstotal,#4
loop1  ldr r5,[r4],#4
       str r5,[r6],#4
	   subs nooftermstotal,nooftermstotal,#1
	   bne loop1
       mov nooftermstotal,#4
	   mov nooftermsini,#4
	   mov nooftermsinj,#0
loop2  mov r6,#0x40000000
       subs nooftermsini,nooftermsini,#1
	   movne nooftermsinj,nooftermsini
	   beq stop
loop3  add r5,r6,#4
       ldr r9,[r6]
	   ldr r10,[r5]
	   cmp r9,r10
	   strpl r10,[r6]
	   strpl r9,[r5]
	   add r6,r6,#4
	   subs nooftermsinj,nooftermsinj,#1
	   cmp nooftermsinj,#0
	   bne loop3
	   cmp nooftermsini,#0
	   bne loop2
stop b stop
nums dcd 10,15,8,6
end
