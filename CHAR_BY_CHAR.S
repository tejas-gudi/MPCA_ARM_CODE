.DATA   
    A: .ASCIZ "HELLO WORLD"
.TEXT
    LDR R1, =A
    L1: LDRB R0, [R1], #1
        CMP R0, #0
        SWINE 0X00
        BNE L1
        SWIEQ 0X011
