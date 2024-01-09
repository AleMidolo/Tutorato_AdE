          ;Eseguire la divisione 274 / 13 e salvare il risultato e il resto

fattore1  dcd     274
fattore2  dcd     13
risultato fill    4
resto     fill    4

          mov     r1,#fattore1
          ldr     r1,[r1]

          mov     r2,#fattore2
          ldr     r2,[r2]
          mov     r3,#risultato
          mov     r4,#resto
          mov     r5,#0 ;contatore
ciclo     sub     r1,r1,r2 ;274-13
          add     r5,r5,#1
          cmp     r1,r2
          bge     ciclo

          str     r1,[r4]
          str     r5,[r3]
