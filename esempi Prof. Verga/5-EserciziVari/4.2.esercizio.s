           ;Data   la sequenza di numeri 1,2,3,4,5,6,7,8
           ;sommarei numeri di posizione pari.
           ;sottrarre i numeri in posizione dispari
           ;salvarei due risultati in memoria

lista      dcd     1,2,3,4,5,6,7,8
dim        dcd     8
results    fill    8

           mov     r1,#lista
           mov     r2,#dim
           ldr     r2,[r2]
           mov     r3,#results
           mov     r4,#0 ; contatore
           mov     r8,#0 ; somma
           mov     r9,#0 ; sottrazione

ciclo      ldr     r5,[r1],#4
           add     r4,r4,#1

           mov     r6,r4 ;copio il contatore
verify     subs    r6,r6,#2
           bgt     verify
           cmp     r6,#0
           beq     addPari
           bne     addDispari

tocontinue cmp     r4,r2
           blt     ciclo

           str     r8,[r3]
           str     r9,[r3,#4]
           end

addPari    add     r8,r8,r5
           b       tocontinue
addDispari sub     r9,r9,r5
           b       tocontinue
