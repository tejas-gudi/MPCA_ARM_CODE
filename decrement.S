.DATA
    A: .WORD 10, 20, 30
    B: .WORD 0, 0, 0
.TEXT   
    LDR R0, =A
    ADD R0, R0, #8
    LDMDA R0!, {R1 - R3}
    LDR R4, =B
    ADD R4, R4, #8
    STMDA R4!, {R1 - R3}
SWI 0X011