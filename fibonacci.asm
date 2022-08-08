area proj11,code,readonly
entry
     mov r1,#1
	 ldr r2,=table
	 ldr r3,=numberfib
	 ldrb r6,[r3]
	 mov r3,#0
	 strb r0,[r2],#1
	 strb r1,[r2],#1
	 mov r4,#0
	 mov r5,#2
backk   add r4,r3,r1
        strb r4,[r2],#1
		mov r3,r1
		mov r1,r4
		add r5,r5,#1
		cmp r5,r6
		bls backk
go b go
numberfib dcb 0x0A
 area number,data,readwrite
table space 60
end
