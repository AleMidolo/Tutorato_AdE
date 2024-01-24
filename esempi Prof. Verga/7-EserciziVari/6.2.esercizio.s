          ;       somma dei numeri tramite pila

lista     dcd     1,2,3,4,5,6,7,8,9,10
dim       equ     10
risultato fill    4

          mov     r1,#dim
          stmfd   sp!,{r1}
          ;impilo dim
          mov     r1,#lista
          ;impilo indirizzo
          stmfd   sp!,{r1}
          bl      somma
          ldmfd   sp!,{r1}
          mov     r2,#risultato
          str     r1,[r2]

          end

          ;salvo  i registri necessari per effettuare la somma
somma     stmfd   sp!,{r1,r2,r3,r4}
          ;carico dim e indirizzo
          ldr     r1,[sp,#16]
          ldr     r2,[sp,#20]
          mov     r3,#0
          ;       salvo in r3 la somma
ciclo     subs    r2,r2,#1
          blt     fine
          ldr     r4,[r1],#4
          add     r3,r3,r4
          b       ciclo
          ;       salvo in pila la somma
fine      str     r3,[sp,#16]
          ;       ripristino i vecchi valori
          ldmfd   sp!,{r1,r2,r3,r4}
          mov     pc,lr






