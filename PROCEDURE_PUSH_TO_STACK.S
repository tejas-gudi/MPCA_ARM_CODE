.DATA
    A: .WORD 0
.TEXT   
        LDR R1, =A
        MOV R2, #25
        MOV R3, #25
        STMFD R13!, {R2,R3}
        BL LINK
        STR R0, [R1]
        SWI 0X011
    LINK:
        LDMFD R13!, {R4, R5}
        ADD R0, R4, R5
        MOV PC, LR    