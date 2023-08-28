;   if(R0 != 5){R1 = R1 + R0 - R2}
.TEXT
    MOV R0, #5
    MOV R1, #3
    MOV R2, #1
    CMP R0, #5
    BNE EQL
    SWI 0X011
EQL:
    ADD R1, R1, R0
    SUB R1, R1, R2
/*
.TEXT
    MOV R0, #5
    MOV R1, #3
    MOV R2, #1
    CMP R0, #5
    BNE EQL
    ADDNE R1, R1, R0
    SUBNE R1, R1, R2
    SWI 0X011
 */