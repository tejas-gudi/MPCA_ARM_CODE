/*
;SMLAL
.TEXT
    MOV R0, #0xf0000005
    MOV R1, #0x00000002
    MOV R2, #0x00000003
    MOV R3, #0x00000004
    SMLAL R3, R2, R1, R0
.END
*/  

;UMLAL
.TEXT
    MOV R0, #0xf0000005
    MOV R1, #0x00000002
    MOV R2, #0x00000003
    MOV R3, #0x00000004
    UMLAL R3, R2, R1, R0
.END
    