.DATA
    A: .WORD 0
.TEXT
        LDR R9, =A
        MOV R1, #11
        MOV R2, #10
        MOV R3, #2
        STMFA R13!, {R1, R2, R3}
        BL ADDFUN
        STR R0, [R9]
        SWI 0X011
    ADDFUN:
        LDMFA R13!, {R4, R5, R6}
        ADD R0, R4, R5
        STMFA R13!, {R0, R6, LR}
        BL MULFUN
        MOV PC, LR
    MULFUN:
        LDMFA R13!, {R4, R5, LR}
        MUL R0, R4, R5
        MOV PC, LR