area proj7,code,readonly
a rn 1
r rn 2
count rn 3
res rn 4
entry
        mov a,#1
	    mov r,#2
	    mov count,#10
	    mov res,#0
	    mov r5,#0x40000000
loop    mul a,a,r
        add res,res,a
	    subs count,count,#1
		str res,[r5],#4
	    bne loop
stop b stop
end
