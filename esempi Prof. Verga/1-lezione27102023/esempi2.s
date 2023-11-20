        ;       SOMMARE 2,3,4,1 E SALVARE IN MEMORIA

NUM1    EQU     2
NUM2    DCD     3
NUM3    DCD     4
NUM4    DCD     1
RESUL   DCD     0
        MOV     R1,#NUM1
        MOV     R2, #NUM2
        MOV     R3, #NUM3
        MOV     R4,#NUM4
        MOV     R10,#RESUL

        ;       LDR R5,[R1]
        LDR     R6,[R2]
        LDR     R7,[R3]
        LDR     R8,[R4]

        MOV     R9,#0
        ADD     R9,R5,R6
        ADD     R9,R9,R7
        ADD     R9,R9,R8
        SUB     R11, R9,R8
        STR     R9,[R10]

        end
        ;       ALTRO ESEMPIO
NUMX    DCD     2,3,4,1
RESULT2 FILL    4
        MOV     R1,#NUMX
        MOV     R10,#RESULT2
        LDR     R3,[R1]
        ADD     R1,R1,#4
        LDR     R4,[R1]
        ADD     R1,R1,#4
        LDR     R5,[R1]
        ADD     R1,R1,#4
        LDR     R6,[R1]
        MOV     R9,#0
        ADD     R9,R3,R4
        ADD     R9,R9,R5
        ADD     R9,R9,R6
        STR     R9,[R10]







