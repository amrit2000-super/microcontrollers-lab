divisor rn 0
dividend rn 1
remainder rn 2
result rn 3
quotient rn 6
entry
       ldr r4,=121
	   mov divisor,#10
	   mov dividend,r4
	   mov remainder,#0
	   mov result,#0
	   mov r5,r4
loop   bl div
       mla result,divisor,result,remainder
       movs dividend,quotient
	   mov quotient,#0
	   mov remainder,#0
	   cmp dividend,#0
	   bne loop
	   cmp r5,result
	   moveq r7,#1
	   movne r7,#0
stop b stop
div    subs dividend,dividend,divisor
       addpl quotient,quotient,#1
	   bpl div
	   addmi remainder,dividend,divisor
	   bx lr
end
