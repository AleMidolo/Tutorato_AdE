        ;       1,24,12,8,10,1,4,21,3,1,5,1

        ;       contare il numero di volte che compare 1
        ;       in memoria il valore 1 e salvare il risultato in memoria.

LISTA   DCD     1,24,12,8,10,1,4,21,3,1,5,1
NUM     DCD     12
RESULT  FILL    4

        MOV     R1,#LISTA
        MOV     R2,#NUM
        LDR     R2,[R2]
        MOV     R3,#RESULT
        MOV     R6,#0 ; CONTATORE DI 1
CICLO   LDR     R4,[R1]
        CMP     R4,#1
        BEQ     AddCont
ToBe    ADD     R1,R1,#4
        SUBS    R2,R2,#1
        BGT     CICLO
        STR     R6,[R3]
        END
AddCont ADD     R6,R6,#1
        B       ToBe





