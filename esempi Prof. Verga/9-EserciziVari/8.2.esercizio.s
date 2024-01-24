          ;       Data la lista [10,20,12,12,5,1,5,1]
          ;       contare tutti i numeri diversi da 1 e 10.

LISTA     DCD     10,20,12,12,5,1,5,1
DIM       EQU     8
RISULTATO FILL    4

          MOV     R1,#LISTA
          MOV     R2,#DIM
          MOV     R4,#0 ;CLEAR
CICLO     SUBS    R2,R2,#1
          BLT     FINE
          LDR     R3,[R1],#4
          CMP     R3,#1
          BEQ     CICLO
          CMP     R3,#10
          BEQ     CICLO
          ADD     R4,R4,#1
          B       CICLO
FINE      MOV     R1,#RISULTATO
          STR     R4,[R1]
