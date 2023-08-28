.TEXT    
    MOV R0, #0x00000005
    MOV R1, #0x00000002
    MOV R2, #0x0000000a
    MUL R3, R1, R0
    MLA R4, R1, R0, R2
.END
