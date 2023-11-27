DATI   DCD     1,2,3,4,5,6,7,8
ITH    EQU     8
RESULT FILL    4

       MOV     R1, #DATI
       MOV     R2,#ITH
       MOV     R3, #RESULT

CICLO  LDR     R4, [R1], #4
       ADD     R4, R4, #10
       ADD     R5, R5, R4

       SUBS    R2, R2, #1
       BGT     CICLO

       STR     R5, [R3]