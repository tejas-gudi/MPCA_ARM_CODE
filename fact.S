.TEXT
        MOV R0, #7
        MOV R1, #1
    LOOP1:
        MUL R1, R0, R1
        SUB R0, R0, #1
        CMP R0, #0
        BNE LOOP1
    SWI 0X011