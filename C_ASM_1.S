.TEXT
    MOV R0, #5
    MOV R1, #3
    MOV R2, #1
    CMP R0, #5
    BEQ EQL
    SWI 0X011
EQL:
    ADD R1, R1, R0
    SUB R1, R2

    ;if(R0 != 5){R1 = R1 + R0 - R2}