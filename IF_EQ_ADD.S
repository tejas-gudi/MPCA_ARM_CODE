.TEXT
    MOV R0, #5
    MOV R1, #5
    CMP R0, R1
    ADDEQ R2, R0, R1
    SWIEQ 0X011
    SUB R2, R0, R1
    SWI 0X011