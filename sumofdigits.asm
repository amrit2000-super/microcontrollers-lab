area proj12,code,readonly
dividend rn 1
quotient rn 2
remainder rn 3
divisor rn 4
res rn 5
entry
      ldr dividend,=12345
	  mov quotient,#0
	  mov remainder,#0
	  mov divisor,#10
	  mov res,#0
loop1    bl div
         add res,res,remainder
		 cmp dividend,#0
         bne loop1
stop b stop
div      mov quotient,#0
loop2    subs dividend,dividend,divisor
		 addpl quotient,quotient,#1
		 bpl loop2
		 addmi remainder,dividend,divisor
		 mov dividend,quotient
		 bx lr
end
