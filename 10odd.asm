area proj3,code,readonly
entry
      mov r0,#-1
      mov r2,#0
	  mov r3,#0
backk    add r0,r0,#2
         add r3,r3,r0
		 add r2,r2,#1
		 cmp r2,#10
		 bne backk
go b go
end
