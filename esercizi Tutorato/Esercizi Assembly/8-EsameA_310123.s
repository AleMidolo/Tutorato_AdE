LIST            DCD     13,16,28,15,26,35,54,21,11
SIZE            EQU     9
EVEN            FILL    36
ODD             FILL    36
MIN             FILL    4
MAX             FILL    4

                ;       R0 = numero elemnti di LIST
                ;       R1 = puntatore a LIST
                ;       R2 = elemento corrente di LIST
                ;       R3 = puntatore a lista EVEN
                ;       R4 = numero di elementi in EVEN
                ;       R5 = puntatore a lista ODD
                ;       R6 = numero di elementi in ODD
                ;       R7 = valore MIN EVEN
                ;       R8 = valore MIN ODD
                ;       R9 = valore MAX EVEN
                ;       R10 = valore MAX ODD
                ;       R11 = divisore e resto
                ;       R12 = elemento corrente EVEN or ODD

                MOV     R0, #SIZE
                MOV     R1, #LIST
                MOV     R3, #EVEN
                MOV     R4, #0
                MOV     R5, #ODD
                MOV     R6, #0
                MOV     R7, #100
                MOV     R8, #100

scan_list       
                CMP     R0, #0
                BEQ     end_scan

                LDR     R2, [R1], #4
                MOV     R11, R2

div_loop        
                CMP     R11, #2
                BLT     eval

                SUB     R11, R11, #2
                B       div_loop

eval            
                CMP     R11,#0
                BEQ     is_even

                STR     R2, [R5], #4
                ADD     R6, R6, #1

                CMP     R2, R8
                BLT     update_min_odd
                CMP     R2, R10
                BGT     update_max_odd

                B       next_element

is_even         
                STR     R2, [R3], #4
                ADD     R4, R4, #1

                CMP     R2, R7
                BLT     update_min_even
                CMP     R2, R9
                BGT     update_max_even

next_element    
                SUB     R0, R0, #1
                B       scan_list

update_min_even 
                MOV     R7, R2
                B       next_element

update_max_even 
                MOV     R9, R2
                B       next_element

update_min_odd  
                MOV     R8, R2
                B       next_element

update_max_odd  
                MOV     R10, R2
                B       next_element

end_scan        
                CMP     R4, R6
                BLT     odd_is_bigger
                MOV     R8, #MIN
                MOV     R10, #MAX
                STR     R7, [R8]
                STR     R9, [R10]
                END

odd_is_bigger   
                MOV     R7, #MIN
                MOV     R9, #MAX
                STR     R8, [R7]
                STR     R10, [R9]
                END