;LINEAR SEARCH

.DATA
    ARR: .WORD 1,2,3,4,5,6,7,8,9,10
    FOUND: .ASCIZ "FOUND"
    NOTFOUND: .ASCIZ "NOT FOUND"
.TEXT
    LDR R1, =ARR
    MOV R2, #0
    LOOP:
        LDR R3, [R1], #4
        CMP R2, R3
        BEQ SUCCESS
        ADD R2, R2, #1
        CMP R2, #3
        BNE LOOP 
    LDR R0, =NOTFOUND
    SWI 0X02
    SWI 0X011
    SUCCESS:
        LDR R0, =FOUND
        SWI 0X02
        SWI 0X011