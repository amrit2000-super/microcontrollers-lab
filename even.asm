area proj6,code,readonly
en rn 1
res rn 2
count rn 3
entry
      mov en,#0
	  mov res,#0
	  mov count,#5
	  mov r4,#0x40000000
backk   add en,en,#2
        add res,res,en
		subs count,count,#1
		bne backk
		str res,[r4]
stop b stop
end
