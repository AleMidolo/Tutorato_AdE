       ;       Data la lista [1,2,3,4,5,6,7,8,9,10]
       ;       moltiplicazione ogni elemento x2.

LISTA  DCD     1,2,3,4,5,6,7,8,9,10
DIM    EQU     10

       MOV     R1,#LISTA
       MOV     R2,#DIM

CICLO  SUBS    R2,R2,#1
       BLT     EXIT
       LDR     R3,[R1]
       LSL     R3,R3,#1
       STR     R3,[R1]
       ADD     R1,R1,#4
       B       CICLO

EXIT   END