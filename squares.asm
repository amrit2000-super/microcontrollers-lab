area proj5,code,readonly
entry
	  mov r1,#0
	  mov r2,#1
	  mov r3,#0
	  mov r4,#0
loop	 bl squ
         add r3,r3,#1
		 cmp r3,#5
		 bne loop
go b go
squ      mul r1,r2,r2
         add r4,r4,r1
		 add r2,r2,#1
		 mov pc,lr
end
