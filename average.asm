area proj10,code,readonly
entry
      ldr r7,=table
	  ldrh r6,[r7]
	  mov r1,#10
	  mov r3,#10
	  mov r4,#0
backk   ldrh r2,[r7,#2]!
        add r6,r6,r2
		subs r1,r1,#1
		bne backk
		mov r5,r6
backk1    subs r5,r5,r3
          addpl r4,r4,#1
		  bpl backk1
		  addmi r5,r5,r3
go b go
table dcw 1000,2564,8936,344,5667,908,786,654,9871,456
end
