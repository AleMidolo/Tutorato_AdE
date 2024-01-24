          ;       Data la lista [1,2,3,4,5,6,7,8,9,10,11,12,13]
          ;       contare tutti i numeri minori di 5, pari a 5 e
          ;       maggiori di 5.

LISTA     DCD     1,2,3,4,5,6,7,8,9,10,11,12,13
DIM       EQU     13
RISULTATO FILL    12

          MOV     R1,#LISTA
          MOV     R2,#DIM
          MOV     R4,#0 ; MINORI
          MOV     R5,#0 ; PARI
          MOV     R6,#0 ; MAGGIORI

CICLO     SUBS    R2,R2,#1
          BLT     EXITCICLO
          LDR     R3,[R1],#4
          CMP     R3,#5
          BLT     CONTO1
          BEQ     CONTO2
          BGT     CONTO3

CONTO1    ADD     R4,R4,#1
          B       CICLO
CONTO2    ADD     R5,R5,#1
          B       CICLO
CONTO3    ADD     R6,R6,#1
          B       CICLO

EXITCICLO MOV     R1,#RISULTATO
          STR     R4,[R1]
          STR     R5,[R1,#4]
          STR     R6,[R1,#8]