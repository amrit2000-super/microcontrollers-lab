 area proj16,code,readonly
entry
      ldr r0,=array
	  ldr r1,=key
	  mov r2,#0
	  mov r3,#5
	  mov r4,#0
	  mov r6,#1
	  mov r7,#4
	  ldr r9,[r1]
loop  cmp r2,r3
      movgt r4,#-1
	  bgt stop
	  mov r5,#0
	  add r5,r2,r3
	  mov r5,r5,lsr #1
	  mul r6,r7,r5
	  add r0,r0,r6
	  ldr r8,[r0]
	  sub r0,r0,r6
	  cmp r9,r8
	  sublt r3,r5,#1
	  addgt r2,r5,#1
	  moveq r4,#1
	  beq stop
	  bal loop
stop b stop
array dcd 10,20,30,40,50,60
key dcd 50
end

