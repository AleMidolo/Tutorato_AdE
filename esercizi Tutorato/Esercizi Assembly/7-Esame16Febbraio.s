array_a_len dcd     6
array_a     dcd     10,20,30,40,50,60
            fill    40

array_b_len EQU     4
array_b     dcd     30,4,5,60

            ;       R1 = puntatore array_b
            ;       R2 = valore corrente array_b
            ;       R3 = numero elementi array_b
            ;       R4 = puntatore array_a
            ;       R5 = valore corrente array_a
            ;       R6 = numero elementi array_a

            MOV     R1, #array_b
            MOV     R3, #array_b_len

CICLOB      
            CMP     R3, #0
            BEQ     FINECICLOB

            LDR     R2, [R1], #4

            MOV     R4, #array_a
            MOV     R6, #array_a_len
            LDR     R6, [R6]

CICLOA      
            CMP     R6, #0
            BEQ     FINECICLOA

            LDR     R5, [R4], #4
            CMP     R2, R5
            BEQ     FOUND

            SUBS    R6, R6, #1
            b       CICLOA

FINECICLOA  
            STR     R2, [R4]

            MOV     R4,#array_a_len
            LDR     R3,[R4]
            ADD     R3,R3,#1
            STR     R3,[R4]

FOUND       
            SUBS    R3, R3, #1
            B       CICLOB

FINECICLOB  
            end
