            ;1,24,12,8,10,1,4,21,3,1,5,1
            ;       trovare il valore 10 in memoria e salvare in memoria
            ;l’indirizzo corrispondente. Se non viene trovato salvare -1.

LISTA       DCD     1,24,12,8,10,1,4,21,3,1,5,1
NUM         DCD     12
RESULT      FILL    4
COSTANTE    EQU     10

            MOV     R1,#LISTA
            MOV     R2,#NUM
            LDR     R2,[R2]
            MOV     R3,#RESULT

CICLO       LDR     R5,[R1]
            CMP     R5,#COSTANTE
            BEQ     SaveAddress
            ADD     R1,R1,#4

            SUBS    R2,R2,#1
            BGT     CICLO
            MOV     R8,#-1
            STR     R8,[R3]
            END

SaveAddress STR     R1,[R3]



