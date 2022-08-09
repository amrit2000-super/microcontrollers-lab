area proj13,code,readonly
noofterms rn 0
nooftermsini rn 1
nooftermsinj rn 2
entry
      mov noofterms,#4
	  ldr r3,=array
	  mov r5,#0x40000000
	  mov r6,#0x40000000
storeelements  ldr r9,[r3],#4
               str r9,[r5],#4
			   subs noofterms,noofterms,#1
			   bne storeelements
			   mov r5,#0x40000000
			   mov noofterms,#4
			   sub nooftermsini,noofterms,#1
	           mov nooftermsinj,nooftermsini
outerloop  bl innerloop
           subs nooftermsini,nooftermsini,#1
		   mov nooftermsinj,nooftermsini
		   mov r5,#0x40000000
		   mov r6,#0x40000000
		   bne outerloop
stop b stop
innerloop  add r6,r6,#4
           ldr r7,[r5]
		   ldr r8,[r6]
		   cmp r7,r8
		   strpl r8,[r5]
		   strpl r7,[r6]
		   mov r5,r6
		   subs nooftermsinj,nooftermsinj,#1
		   bne innerloop
		   bx lr
array dcd 8,2,9,6
end
		   
