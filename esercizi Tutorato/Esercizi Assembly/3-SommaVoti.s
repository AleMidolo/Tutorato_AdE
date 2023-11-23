VOTI   DCD     20,20,20,18,30,27,22,26,28
SIZE   EQU     9
ITH    EQU     3
RESULT FILL    12

       ;       R1 = puntatore alla lista VOTI
       ;       R2 = elemento corrente della lista VOTI
       ;       R3 = puntatore al risultato
       ;       R4 = valore somma voti
       ;       R5 = numero di elementi di VOTI
       ;       R6 = valore del corrente indice ITH
       ;       R7 = puntatore ai tre risultati

       MOV     R1,#VOTI
       MOV     R3, #RESULT
       MOV     R5, #SIZE
       MOV     R6, #ITH
       MOV     R7, #RESULT

CICLO  LDR     R2,[R1],#4
       ADD     R4, R4, R2
       SUBS    R6, R6, #1
       BGT     CICLO

       STR     R4, [R7], #4
       MOV     R4, #0
       ADD     R6, R6, #3
       SUBS    R5, R5, #3
       BGT     CICLO