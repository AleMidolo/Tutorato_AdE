array_a_len  dcd     6
array_a      dcd     10,20,30,40,50,60
             fill    40

array_b_len  dcd     4
array_b      dcd     30,4,5,60
min          dcd     100

             ;       R1 = puntatore array_b
             ;       R2 = valore corrente array_b
             ;       R3 = numero elementi array_b
             ;       R4 = puntatore array_a
             ;       R5 = valore corrente array_a
             ;       R6 = numero elementi array_a
             ;       R7 = puntatore al minimo
             ;       R8 = valore minimo

             MOV     R1, #array_b
             MOV     R3, #array_b_len
             LDR     R3, [R3]
             MOV     R7, #min
             LDR     R8, [R7]

CICLOB       
             CMP     R3, #0
             BEQ     FINECICLOB

             LDR     R2, [R1], #4

             MOV     R4, #array_a
             MOV     R6, #array_a_len
             LDR     R6, [R6]

             CMP     R2, R8
             BLT     update_min_b

CICLOA       
             CMP     R6, #0
             BEQ     FINECICLOA

             LDR     R5, [R4], #4
             CMP     R2, R5
             BEQ     FOUND

             SUB     R6, R6, #1
             CMP     R5, R8
             BLT     update_min_a

             b       CICLOA

FINECICLOA   
             STR     R2, [R4]

             MOV     R6, #array_a_len
             LDR     R4, [R6]

             ADD     R4, R4, #1
             STR     R4, [R6]

FOUND        
             SUB     R3, R3, #1
             B       CICLOB

update_min_a 
             MOV     R8, R5
             b       CICLOA

update_min_b 
             MOV     R8, R2
             b       CICLOA

FINECICLOB   
             STR     R8, [R7]
             END