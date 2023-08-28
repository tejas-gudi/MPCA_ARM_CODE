.DATA
    a: .word 1,2,3,4,5,6,7,8,9
    b: .word 1,1,1,1,1,1,1,1,1
    c: .word 0,0,0,0,0,0,0,0,0

.TEXT
        ldr r0, =a
        ldr r1, =b
        ldr r2, =c
        mov r3, #0  ;row no
        mov r4, #0  ;col no
        mov r5, #3  ;no of ele in each row
        mov r6, #0  ;k
        mov r12, #0
    loop1:
        ;add r12, r12, #4
        mla r7, r3, r5, r6
        mov r7, r7, lsl #2
        ldr r8, [r0, r7]
        
        mla r12, r6, r5,r4
        mov r12, r12, lsl #2
        ldr r9, [r1, r12]

        mul r10, r8, r9
        add r11, r11, r10
        add r6, r6, #1
        cmp r6, #3
        bne loop1
    str r11, [r2, r12]
    mov r6, #0
    add r4, r4, #1
    cmp r4, #3
    bne loop1
    mov r6, #0
    mov r4, #0
    add r3, r3, #1
    cmp r3, #3
    bne loop1
    swi 0x011
