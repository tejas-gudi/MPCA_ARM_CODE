.DATA
    EVEN: .ASCIZ "EVEN"
    ODD: .ASCIZ "ODD"
.TEXT
        LDR R0, =ODD
        MOV R3, #6
        ANDS R2, R3, #1
        BEQ L1
        SWI 0X02
        SWI 0X011
    L1:
        LDR R0, =EVEN
        SWI 0X02
        