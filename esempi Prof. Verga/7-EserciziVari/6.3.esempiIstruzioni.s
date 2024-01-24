       MOV     R1,#11
       MOV     R2,#1
       AND     R3,R1,R2
       ORR     R4,R1,R2
       EOR     R5,R1,R2
       LSL     R6,R1,#2
       LSR     R7,R1,#2
       ASR     R8,R1,#2
       ASR     R9,R13,#2
       LSR     R10,R13,#2
       ROR     R11,R1,#2
LISTA  DCD     400
       MOV     R1,#LISTA
       LDRB    R2,[R1,#0]
       MOV     R3,#12
       STRB    R3,[R1,#3]
