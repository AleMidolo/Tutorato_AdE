          ;       Data la lista [1,2,3,4,5,6,7,8,9,10]
          ;       contare tutti i numeri dispari e maggiori
          ;       di 5 e salvare il risultato in memoria.

LISTA     DCD     1,2,3,4,5,6,7,8,9,10
DIM       EQU     10
RISULTATO FILL    4

          MOV     R1,#LISTA
          MOV     R2,#DIM
          MOV     R5,#0
CICLO     SUBS    R2,R2,#1
          BLT     EXIT
          LDR     R3,[R1],#4
          AND     R4,R3,#1
          CMP     R4,#1
          BEQ     MAGGIORE
          B       CICLO

MAGGIORE  CMP     R3,#5
          BGT     CONTA
          B       CICLO

CONTA     ADD     R5,R5,#1
          B       CICLO

EXIT      MOV     R1,#RISULTATO
          STR     R5,[R1]