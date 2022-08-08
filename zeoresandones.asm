 area proj8,code,readonly
number rn 1
nozeroes rn 2
noones rn 3
entry
       ldr number,=0xB
	   mov nozeroes,#0
	   mov noones,#0
	   mov r4,#0x40000000
backk    lsrs number,#1
         addcs noones,#1
		 addcc nozeroes,#1
		 bne backk
		 str nozeroes,[r4]
		 str noones,[r4,#4]
stop b stop
end
