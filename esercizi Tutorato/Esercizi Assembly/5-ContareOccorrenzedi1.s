LISTA  DCD     1,24,12,8,10,1,4,21,3,1,5,1
SIZE   EQU     12
CONST  EQU     1
RESULT FILL    4

       ;       R1 = puntatore all LISTA
       ;       R2 = valore corrente della LISTA
       ;       R3 = puntatore al risultato finale
       ;       R4 = valore del risultato
       ;       R5 = indice della lista (SIZE)

       MOV     R1,#LISTA
       MOV     R3,#RESULT
       MOV     R5,#SIZE

CICLO  LDR     R2, [R1], #4
       CMP     R2, #CONST
       BEQ     FOUND

KEEP   SUBS    R5, R5, #1
       BGT     CICLO

       STR     R4, [R3]
       END

FOUND  ADD     R4, R4, #1
       B       KEEP
