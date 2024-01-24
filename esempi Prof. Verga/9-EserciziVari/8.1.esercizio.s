               ;Date   le due stringhe T: «Ciao Carla!!» e P: «Ciao»
               ;di     carattere ASCII, verificare se P è una
               ;sottostringa di T e trovare l’indice della prima
               ;occorrenza di T.

TSTRING        DCB     0x43, 0x49, 0x41, 0x4F, 0x20, 0x43, 0x41, 0x52, 0x4C, 0x41, 0x21, 0x21
SUBSTR         DCB     0x41, 0x49, 0x41, 0x4F
DIMT           EQU     12
DIMP           EQU     4
RISULTATO      FILL    4
               MOV     R1,#TSTRING
               MOV     R2,#SUBSTR
               MOV     R3,#DIMT
               MOV     R4,#DIMP
               ;       TROVATO GLI ULTIMI BYTE
               SUB     R3,R3,R4
               ADD     R3,R1,R3 ; LAST T
               ADD     R4,R2,R4 ;LAST S
CICLO1         MOV     R5,R1
               MOV     R6,R2
CICLO2         LDRB    R7,[R5],#1
               LDRB    R8,[R6],#1
               CMP     R7,R8
               BNE     CONTINUACICLO1
               CMP     R4,R6
               BGT     CICLO2
               B       FOUND
CONTINUACICLO1 ADD     R1,R1,#1
               CMP     R3,R1
               BGE     CICLO1
               MOV     R1,#-1
FOUND          MOV     R2,#RISULTATO
               STR     R1,[R2]

