NUMS   DCD     1,2,3,4,5,6,7,8
SIZE   EQU     8
CONST  EQU     10
RESULT FILL    4

       ;       R1 = puntatore alla lista NUMS
       ;       R2 = elemento corrente lista NUMS
       ;       R3 = risultato somma
       ;       R4 = indice della lista (SIZE)
       ;       R5 = puntatore al risultato

       MOV     R1, #NUMS
       MOV     R4, #SIZE
       MOV     R5, #RESULT

CICLO  LDR     R2, [R1], #4
       ADD     R2, R2, #CONST
       ADD     R3, R3, R2
       SUBS    R4, R4, #1
       BGT     CICLO

       STR     R3,[R5]