        ;Data   la sequenza di numeri 1,2,3,4,5,6,7,8
        ;sommarei numeri di posizione pari.
        ;sottrarre i numeri in posizione dispari
        ;salvarei due risultati in memoria

lista   dcd     1,2,3,4,5,6,7,8
dim     dcd     8
results fill    8

        mov     r1,#lista
        mov     r2,#dim
        mov     r3,#results
        ldr     r2,[r2]
        mov     r4,#0 ;somma
        mov     r5,#0 ;sottrazione
ciclo   subs    r2,r2,#1
        blt     fine
        ldr     r6,[r1]
        sub     r5,r5,r6
        subs    r2,r2,#1
        blt     fine
        add     r1,r1,#4
        ldr     r6,[r1]
        add     r4,r4,r6
        add     r1,r1,#4
        b       ciclo

fine    str     r5,[r3]
        str     r4,[r3,#4]

