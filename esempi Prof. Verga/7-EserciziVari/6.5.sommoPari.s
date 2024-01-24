          ;Data   la lista [-10,4,23,50,0,40,10,7]
          ;sommare i numeri pari e salvare il risultato in memoria.

LISTA     DCD     -10,4,23,50,0,40,10,7
DIM       EQU     8
RISULTATO FILL    4

          MOV     R1,#LISTA
          MOV     R2,#DIM
          MOV     R3,#0
CICLO     SUBS    R2,R2,#1
          BLT     FINE
          LDR     R4,[R1],#4
          AND     R5,R4,#1
          CMP     R5,#0
          BEQ     SOMMOPARI
          B       CICLO
FINE      MOV     R4,#RISULTATO
          STR     R3,[R4]

          END

SOMMOPARI ADD     R3,R3,R4
          B       CICLO


