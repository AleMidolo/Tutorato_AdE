          ;Eseguire l'operazione 20 + 10 - 15
          ;e      salvare il risultato in memoria,
          ;usando la pila e conservando i vecchi valori
          ;contenuti nei registri.

Na        dcd     20
Nb        dcd     10
Nc        dcd     15
risultato fill    4
          ;       aggiungo dei valori ai registri
          MOV     r1,#13
          MOV     r2,#45
          MOV     r3,#3
          MOV     r5,#10
          ;       inserisco i valori dei registri in pila
          STMFD   SP!,{r1,r2,r3,r4,r5,r12}
          ;       carico i dati 20,10 e 15 dalla memoria
          mov     r1,#Na
          ldr     r1,[r1]
          mov     r2,#Nb
          ldr     r2,[r2]
          mov     r3,#Nc
          ldr     r3,[r3]
          ;       eseguo l'operazione
          mov     r4,#0
          add     r4,r1,r2
          sub     r4,r4,r3
          ;       salto il risultato in memoria
          mov     r1,#risultato
          str     r4,[r1]
          ;       ripristino i valori dei registri
          LDMFD   SP!,{r1,r2,r3,r4,r5,r12}
