area proj13,code,readonly
fact1 rn 1 ;fact1 is used for calculating n!
fact2 rn 2 ;fact2 is used for calculating (n-r)!
n rn 4 ;n is linked with register r4
r rn 5 ;r is linked with register r5
n1 rn 6 ;n1 is linked with register r6
quotient rn 7 ;quotient is linked with register r7
dividend rn 8 ;dividend is linked with register r8
divisor rn 9 ;divisor is linked with register r9
entry
       mov fact1,#1 ;initialize fact1 with 1
	   mov fact2,#1 ; initialize fact2 with 1
	   mov n,#7 ;initialize n with 7
	   mov r,#5 ;initialize r with 5
	   mov n1,n ;load n1 with value of n
loop1  mul fact1,n,fact1 ;multiply n with fact1 and store the result in fact1
       subs n,n,#1 ; decrement the value of n by 1
	   bne loop1 ; keep executing loop1 until zero flag is not set
	   subs n1,n1,r ;subtract r from n1 and store the result in n1
loop2  mul fact2,n1,fact2 ;multiply n with fact2 and store the result in fact2
       subs n1,n1,#1 ;decrement the value of n1 by 1
	   bne loop2 ; keep executing loop2 until zero flag is not set
	   mov quotient,#0 ;initialize quotient with 0
	   mov dividend,fact1 ;load dividend with value of fact1
	   mov divisor,fact2 ;load divisor with value of fact2
loop3  subs dividend,dividend,divisor ;subtract divisor from dividend and store the result in dividend
       addpl quotient,quotient,#1 ;increment the quotient by 1 if negative flag is not set
	   bpl loop3 ;keep executing loop3 until negative flag is not set
stop b stop
end
