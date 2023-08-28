.DATA
    A: .WORD 10, 20, 30
    B: .WORD 0, 0, 0
.TEXT
    LDR R0, =A
    LDMIA R0!, {R1, R2, R3}    ; OR {R1-R3}   LDR IS LEFT TO RIGHT                   ! IS WRITEBACK
    LDR R5, =B
    STMIA R5!, {R1 - R3}       ; OR {R1, R2, R3} STR IS RIGHT TO LEFT                                ;LDMIA AND STMIA ARE INCREMENT AFTER  
    SWI 0X011