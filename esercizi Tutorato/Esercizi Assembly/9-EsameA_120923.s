list        dcd     10,12,28,25,34,21,20,43,45,62
list_length dcd     10
divisore    dcd     5
a_1         fill    32
a_2         fill    32
result      fill    4


            ;       r0 = risultato finale
            ;       r1 = puntatore a list
            ;       r2 = numero di elementi di list
            ;       r3 = elemento corrente di list
            ;       r4 = resto/divisione
            ;       r5 = divisore
            ;       r6 = puntatore ad a_1
            ;       r7 = numero di elementi in a_1
            ;       r8 = puntatore ad a_2
            ;       r9 = numero di elementi in a_2

            mov     r0, #result
            mov     r1, #list
            mov     r2, #list_length
            ldr     r2, [r2]
            mov     r5, #divisore
            ldr     r5, [r5]
            mov     r6, #a_1
            mov     r8, #a_2

scan_list   
            cmp     r2, #0
            beq     end_scan

            ldr     r3, [r1], #4
            mov     r4, r3

ciclo_div   
            cmp     r4, r5
            blt     eval

            sub     r4, r4, r5
            b       ciclo_div

eval        
            cmp     r4,#0
            beq     copy_on_a1

            str     r3, [r8], #4
            add     r9, r9, #1
            b       end_copy

copy_on_a1  
            str     r3, [r6], #4
            add     r7, r7, #1

end_copy    
            sub     r2, r2, #1
            b       scan_list

end_scan    
            cmp     r7, r9
            bgt     a_1_greater
            mov     r10, #2
            str     r10, [r0]
            end

a_1_greater 
            mov     r10, #1
            str     r10, [r0]
            end

