area proj17,code,readonly
entry
      ldr r0,=number
	  mov r1,#0x40000000
	  mov r2,#0x40000000
loop1 ldr r6,[r0],#4
      str r6,[r1],#4
      cmp r0,#0
	  bne loop1
stop b stop
number dcd 121
end
