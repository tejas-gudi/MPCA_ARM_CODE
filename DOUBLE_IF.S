;   if((R0 == R1) && (R2 == R3)) R4++
.TEXT
    MOV R0, #5
    MOV R1, #5
    MOV R2, #3
    MOV R3, #3
    CMP R0, R1
    BEQ EQL
    SWI 0X011
EQL:
    CMP R2, R3
    ADDEQ R4, R4, #1
    SWI 0X011


/*
.TEXT
    MOV R0, #5
    MOV R1, #5
    MOV R2, #3
    MOV R3, #3
    CMP R0, R1
    CMPEQ R2, R3
    ADDEQ R4, R4, #1
    SWI 0X011
 */