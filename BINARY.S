.DATA
        NUMBERS: .WORD 10, 20, 30, 40, 50, 60, 70, 80, 90, 100
        MSG1: .ASCIZ "ELEMENT FOUND AT REGISTER R4"
        MSG2: .ASCIZ "ELEMENT NOT FOUND"
.TEXT
        LDR R6, =NUMBERS
        MOV R1, #1000
        MOV R2, #0
        MOV R3, #9
    LOOP:       
            CMP R2, R3
            BGT NOTFOUND
            ADD R4, R2, R3
            MOV R4, R4, LSR #1
            MOV R5, #4
            MLA R7, R4, R5, R6
            LDR R8, [R7]
            CMP R1, R8
            BEQ FOUND
            ;CMP R4, #9
            ;BGT BOUNDRY
            ;CMP R3, #9
            ;Beq UPPERBOUNDRY
            ;CMP R4, #0
            ;Beq LOWERBOUNDRY
            BMI LOWER
            BPL UPPER 
            
    LOWER:
        SUB R3, R4, #1
        B LOOP
    UPPER:
        ADD R2, R4, #1
        B LOOP
    FOUND:
        LDR R0, =MSG1
        SWI 0X02
        SWI 0X011
    NOTFOUND:
        LDR R0, = MSG2
        SWI 0X02
        SWI 0X011
;    UPPERBOUNDRY:
;        CMP R2, R3
;        BEQ COMP
;    LOWERBOUNDRY:
;        CMP R2, R3
;        BEQ COMP
;    COMP:
;        CMP R1, R8
;        B FOUND


;write an ELP using ais to perform multiplication r0*123 where R0 can have any value and the multiplication should be achived only using shift and add instructions