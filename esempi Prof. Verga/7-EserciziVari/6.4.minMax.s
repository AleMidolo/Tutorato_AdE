          ;Data   la lista [-10,4,23,50,0,40,10,7]
          ;trovare il minimo e massimo e salvare il risultato in memoria.

LISTA     DCD     -10,4,23,50,0,40,10,7
DIM       EQU     8
RISULTATO FILL    8

          MOV     R1,#LISTA
          MOV     R2,#DIM
          LDR     R3,[R1],#4
          MOV     R4,R3 ; MINIMO
          MOV     R5,R3 ; MASSIMO
          SUB     R2,R2,#1

CICLO     SUBS    R2,R2,#1
          BLT     FINE
          LDR     R3,[R1],#4
          CMP     R3,R4
          BLT     MINIMO
          CMP     R3,R5
          BGT     MASSIMO
          B       CICLO
FINE      MOV     R7,#RISULTATO
          STR     R4,[R7]
          STR     R5,[R7,#4]
          END
MINIMO    MOV     R4,R3
          B       CICLO
MASSIMO   MOV     R5,R3
          B       CICLO