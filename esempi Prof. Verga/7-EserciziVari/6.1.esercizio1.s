          ;SOMMA  DI N NUMERI TRAMITE REGISTRI

lista     dcd     1,2,3,4,5,6,7,8,9,10
dim       equ     10
risultato fill    4

          mov     r1,#dim
          mov     r2,#lista
          mov     r4,#risultato
          bl      somma
          str     r3,[r4]
          end

somma     stmfd   sp!, {r4}
          mov     r3,#0
ciclo     subs    r1,r1,#1
          blt     fine
          ldr     r4,[r2],#4
          add     r3,r3,r4
          b       ciclo
fine      ldmfd   sp!,{r4}
          mov     pc,lr
