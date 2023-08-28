.data
    string: .asciz "PES_UNIVERSITY"
    string2: .asciz "number of chars in the text : "
    char: .asciz "S"
    count: .word 0
.text
    ldrb r1, = string
    ldrb r2, = char
    ldr r6, = count
    mov r5, #0
    LOOP:
        ldrb r3, [r1], #1
        ldrb r4, [r2]
        cmp r3, r4
        addeq r5,r5, #1
        cmp r3, #0
        bne LOOP
    ldr r0, =string2
    swi 0x02
    str  r5, [r6]
    mov r0, r6
    swi 0x02
    swi 0x011

