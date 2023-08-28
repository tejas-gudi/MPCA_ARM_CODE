.DATA
    Numbers: .WORD 1, 2, 3, 4, 5, 6, 7, 8, 9, 10    
    Sum: .WORD 0
.TEXT    
    LDR R0, =Numbers
    LDR R1, =Sum
    MOV R3, #0          ;SUM STORED IN REG
    MOV R4, #1          ;STARTING LOOP FROM 1
    LOOP:   
        ;LDR R2,[R0]        ADDRESS OF FIRST NUMBER IS STORED IN R2 using
        ;LDR R2, [R0,#4]        ;ADDRESS OF FIRST NUMBER IS STORED IN R2 using [preindexing without writeback]
        ;LDR R2, [R0,#4]!        ADDRESS OF FIRST NUMBER IS STORED IN R2 using [preindexing with writeback]
        LDR R2, [R0],#4        ;ADDRESS OF FIRST NUMBER IS STORED IN R2 using [postindexing]
        ADD R3, R3, R2      ;PREVIOUS SUM AND NEW NUMBER IS ADDED
        ADD R4, R4, #1      ;COUNT IS INCREMENTED
        ;ADD R0, R0,#4        ADDRESS OF THE NEXT NUMBER IS ACCESSED BY INCREMENTING THE PREVIOUS ADDRESS BY THE SIZE OF THE DATA(HERE IT IS 4)[used when no writeback is used]
        CMP R4, #11         ;R4 IS COMPARED WITH 10
        BNE LOOP
STR R3, [R1]
SWI 0X011