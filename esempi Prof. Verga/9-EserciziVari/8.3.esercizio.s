          ;       Data la lista [30,10,23,1,17,8,19,10]
          ;sommaretutti i numeri compresi tra 10 e 20.

LISTA     DCD     30,10,23,1,17,8,19,10
DIM       EQU     8
RISULTATO FILL    4

          MOV     R1,#LISTA
          MOV     R2,#DIM
          MOV     R5,#0 ; SOMMA
CICLO     SUBS    R2,R2,#1
          BLT     EXITCICLO
          LDR     R3,[R1],#4
          ;       ANALIZZIAMO R3
          CMP     R3,#10
          BLT     CICLO
          CMP     R3,#20
          BGT     CICLO
          ;       R3 è COMPRESO
          ADD     R5,R5,R3
          B       CICLO
EXITCICLO END