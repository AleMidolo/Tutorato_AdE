NUMS   DCD     1,24,12,8,10,1,4,21,3,1,5,1
SIZE   EQU     12
CONST  EQU     10
RESULT FILL    4

       ;       R1 = puntatore alla lista NUMS
       ;       R2 = elemento corrente lista NUMS
       ;       R3 = indice posizione lista
       ;       R4 = puntatore al risultato

       MOV     R1,#NUMS
       MOV     R3,#SIZE
       MOV     R4,#RESULT

CICLO  LDR     R2, [R1]
       CMP     R2,#CONST
       BEQ     FOUND
       ADD     R1, R1, #4
       SUBS    R3, R3, #1
       BGT     CICLO

FOUND  STR     R1, [R4]