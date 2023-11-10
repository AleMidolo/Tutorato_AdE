       ;       modi di indirizzamento

NUM1   DCD     10
NUM2   DCD     23
 
       MOV     R3,#231

       MOV     R2,R3


       MOV     R1,#NUM1
       LDR     R4,=NUM1


       LDR     R5,[R1]


       LDR     R3,[R1,#4]
       LDR     R5,[R1],#4
