      .TEXT
            MOV  R1, #123       
            MOV  R0, #4
            AND R4,R1,#1
		LOOP:
            CMP R1, #0
            BEQ END
            AND R4, R1, #1
            CMP R0, #1
            BEQ FINAL
            CMP R4,#0
            BEQ EVEN
            B ODD
		
		
		EVEN:
            MOV R1,R1, LSR #1
            MOV R0,R0, LSL #1
            CMP R1,#1
            BEQ FINAL
            B LOOP
		
		
		ODD:
            ADD R3,R3,R0
            MOV R1,R1, LSR #1
            MOV R0,R0, LSL #1
            BEQ FINAL
            B LOOP
		
		FINAL:
            ADD R0,R0,R3
            SWI 0X011
      END:
            SWI 0X011