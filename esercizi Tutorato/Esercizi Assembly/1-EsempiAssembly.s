       ;       modi di indirizzamento

NUM1   DCD     10
NUM2   DCD     23
NUM5   FILL    4
NUM4   DCD     5
NUM3   EQU     3

       MOV     R3,#231 ; Assegno al registro R3 il valore 231

       MOV     R2,R3 ; Copio il valore salvato in R3 nel registro R2

       MOV     R6,#NUM3 ; Copia il valore di NUM3 in R6
       MOV     R1,#NUM1 ; Copia l'indirizzo di NUM1 in R1
       LDR     R4,=NUM1 ; Carica in R4 l'indirizzo di NUM1


       LDR     R5,[R1] ; Carica in R5 il valore presente nell'indirizzo di R1


       LDR     R3,[R1,#16] ; Carica in R3 il valore presente nell'indirizzo di R1 + 4 byte
       LDR     R5,[R1],#4 ; Carica in R5 il valore presente nell'indirizzo di R1 e aggiorna R1 aggiungendo 4 byte

       ADD     R7,R5,R6 ; Somma i valori presenti in R5 e R6 e salva il risultato nel registro R7
       MOV     R8,#NUM5 ; Copia l'indirizzo salvato in NUM5 nel registro R8
       STR     R7,[R8] ; Salva il valore presente in R7 nell'indirizzo di memoria contenuto in R8