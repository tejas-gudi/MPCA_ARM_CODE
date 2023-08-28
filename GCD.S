.TEXT
    MOV R0, #25
    MOV R1, #20
GCD:
    CMP R0, R1
    BEQ RES
    BLT LOOP
    SUB R0, R0, R1
    B GCD
LOOP: 
    SUB R1, R1, R0
    B GCD
RES:
    MOV R2, R0
    SWI 0X011
