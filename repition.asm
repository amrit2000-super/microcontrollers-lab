area proj15,code,readonly
entry
      mov r1,#0
	  mov r2,#0
	  mov r10,#0
	  ldr r3,=pattern
	  ldr r4,=text
	  bl findlengthofpattern
repeat  ldrb r0,[r3]
        ldrb r6,[r4],#1
		cmp r6,#0
		beq stop
		cmp r0,r6
		bne repeat
		mov r7,r2
		sub r7,r7,#1
		mov r8,r3
		mov r9,r4
find    ldrb r0,[r8,#1]!
        ldrb r6,[r9],#1
		cmp r0,r6
		bne repeat
		subs r7,r7,#1
		bne find
		add r10,r10,#1
		b repeat
stop    b stop
findlengthofpattern  ldrb r5,[r3],#1
					 cmp r5,#0
					 addne r2,r2,#1
					 bne findlengthofpattern
					 sub r3,r3,r2
					 sub r3,r3,#1
					 bx lr
pattern dcb "ABC",0
text dcb "ABCABC",0
end
