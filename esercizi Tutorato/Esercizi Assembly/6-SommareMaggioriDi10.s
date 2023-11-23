NUMS   DCD     1,24,12,8,10,1,4,21,3,1,5,1
SIZE   EQU     12
RESULT FILL    4
Xvalue EQU     10

       ;       R1 = puntatore all LISTA
       ;       R2 = valore corrente della LISTA
       ;       R3 = puntatore al risultato
       ;       R4 = valore della somma
       ;       R5 = indice della lista

       MOV     R1,#NUMS
       MOV     R3,#RESULT
       MOV     R5, #SIZE

CICLO  LDR     R2, [R1], #4
       CMP     R2,#Xvalue
       BGE     SOMMA
       
KEEP   SUBS    R5, R5, #1
       BGT     CICLO

       STR     R4, [R3]
       END

SOMMA  ADD     R4,R4,R2
       B       KEEP
