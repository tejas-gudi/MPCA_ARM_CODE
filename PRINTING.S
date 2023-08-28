.DATA   
    A: .ASCIZ "Hello PES"
.TEXT   
    LDR R0, =A
    SWI 0X02
    SWI0X011