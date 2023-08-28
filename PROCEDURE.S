.DATA
    RESULT: .WORD 10
.TEXT
        LDR R0, =RESULT
        MOV R1, #5
        MOV R2, #9
        BL ADDITION
        STR R3, [R0]
        SWI 0X011
    ADDITION:
        ADD R3, R2, R1
        MOV R15,R14                        ; BX LR or MOV PC, LR