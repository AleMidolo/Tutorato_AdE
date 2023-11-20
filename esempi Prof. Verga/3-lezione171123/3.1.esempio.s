LISTA  DCD     1,20,20,20,2,18,30,27,3,22,26,28

NUM    EQU     3
VOTI   FILL    12
TEST   DCD     10
       MOV     R1,#LISTA
       MOV     R2,#NUM
       MOV     R3,#VOTI
       MOV     R5,#0 ; SOMMATORE VOTO 1
       MOV     R6,#0 ; SOMMATORE VOTO 2
       MOV     R7,#0 ; SOMMATORE VOTO 3

CICLO  ADD     R1,R1,#4
       LDR     R4,[R1],#4 ;PRELEVO IL VOTO1
       ADD     R5,R5,R4
       ;ADD    R1,R1,#4
       LDR     R4,[R1],#4
       ADD     R6,R6,R4
       ;ADD    R1,R1,#4
       LDR     R4,[R1],#4
       ADD     R7,R7,R4
       ;ADD    R1,R1,#4
       SUBS    R2,R2,#1
       BGT     CICLO

       STR     R5,[R3]
       STR     R6,[R3,#4]
       STR     R7,[R3,#8]







