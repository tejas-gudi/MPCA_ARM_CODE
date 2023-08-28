.DATA
	A: .WORD 10
.TEXT
	LDR R2, =A
	MOV R1, #5
	SWP R1, R1, [R2]
