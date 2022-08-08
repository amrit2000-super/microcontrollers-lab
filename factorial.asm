area proj9,code,readonly
fact rn 1
number rn 2
entry
      mov fact,#1
	  mov number,#10
	  mov r3,#0x40000000
backk   mul fact,number,fact
        subs number,number,#1
		bne backk
        str fact,[r3]
stop b stop
end
