         ;Data   la sequenza di numeri 1,2,3,4,5,6,7,8 :
         ;sommarea tutti i numeri la costante 10;
         ;sommarei numeri ottenuti;
         ;salvareil valore della somma in memoria.


DATI     DCD     1,2,3,4,5,6,7,8
DIM      DCD     8
COSTANTE EQU     10
RESULT   FILL    4
         MOV     R8,#DIM
         LDR     R8,[R8]
         MOV     R1,#DATI
         MOV     R7,#0
CICLO    LDR     R2,[R1]
         ADD     R2,R2,#COSTANTE
         ADD     R7,R7,R2
         ADD     R1,R1,#4
         SUBS    R8,R8,#1
         BGT     CICLO

         MOV     R9,#RESULT
         STR     R7,[R9]

