            ;1,24,12,8,10,1,4,21,3,1,5,1
            ;sommarei numeri maggiori (o uguali) di x con x = 10

LISTA       DCD     1,24,12,8,10,1,4,21,3,1,5,1
NUM         EQU     12
COSTANTE    EQU     10
RESULT      FILL    4

            MOV     R1,#LISTA
            MOV     R2,#NUM
            MOV     R3,#RESULT
            MOV     R5,#0 ; CONTATORE

CICLO       LDR     R4,[R1],#4

            CMP     R4,#COSTANTE ;cmp R4,#10
            BGE     SOMMAVALORI

TOBE        SUBS    R2,R2,#1
            BGT     CICLO

            STR     R5,[R3]
            END


SOMMAVALORI ADD     R5,R5,R4
            B       TOBE

