.TEXT   
        BL SUB
        CMP R1, #5
        MOVEQ R1, #0
    SUB:
        SUB LR, LR, #4
        MOV PC, LR
