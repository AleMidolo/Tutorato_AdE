         ;       Moltiplicare i numeri 9,3

fattore1 dcd     9
fattore2 dcd     3
moltiplo fill    4

         mov     r1,#fattore1
         ldr     r1,[r1]
         mov     r2,#fattore2
         ldr     r2,[r2]
         mov     r3,#moltiplo

         mov     r10,#0; somma dei numeri
ciclo    add     r10,r10,r1
         subs    r2,r2,#1
         bgt     ciclo

         str     r10,[r3]
