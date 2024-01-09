VALORE EQU     10

       mov     r1,#10
       bl      somma
       mov     r2,#10
       mov     r3,#1

       end

somma  add     r1,r1, #VALORE
       mov     pc,lr