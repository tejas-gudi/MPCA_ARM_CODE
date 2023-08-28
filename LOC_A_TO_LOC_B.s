.DATA
    LOC_A: .WORD 10, 20, 30, 40, 50, 60, 70, 80, 90, 100
    LOC_B: .WORD 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

.TEXT
    LDR R0, =LOC_A
    LDR R1, =LOC_B
    MOV R4, #0
LOOP:
        LDR R2, [R0], #4 
        STR R2, [R1], #4
        ADD R4, R4, #1
        CMP R4, #10
        BNE LOOP
        SWI 0X011