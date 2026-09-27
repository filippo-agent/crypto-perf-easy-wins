TEXT example.com/pq-small-arithmetic.Scale88Original(SB) /home/exedev/crypto-audit/round4/issues/pq-small-arithmetic/repro.go
  repro.go:10		0x12b6c0		d3401c01		UBFX $0, R0, $8, R1	
  repro.go:10		0x12b6c4		d3681c02		UBFIZ $24, R0, $8, R2	
  repro.go:10		0x12b6c8		cb013841		SUB R1<<14, R2, R1	
  repro.go:10		0x12b6cc		93407c21		SXTW R1, R1		
  repro.go:10		0x12b6d0		d2917462		MOVD $35747, R2		
  repro.go:10		0x12b6d4		f2b745c2		MOVK $(47662<<16), R2	
  repro.go:10		0x12b6d8		9b027c22		MUL R2, R1, R2		
  repro.go:10		0x12b6dc		9366fc42		ASR $38, R2, R2		
  repro.go:10		0x12b6e0		cb81fc40		SUB R1->63, R2, R0	
  repro.go:10		0x12b6e4		d65f03c0		RET			
  repro.go:10		0x12b6e8		00000000		?			
  repro.go:10		0x12b6ec		00000000		?			

TEXT example.com/pq-small-arithmetic.Scale88Grouped(SB) /home/exedev/crypto-audit/round4/issues/pq-small-arithmetic/repro.go
  repro.go:15		0x12b6f0		d3401c01		UBFX $0, R0, $8, R1	
  repro.go:15		0x12b6f4		d29d0002		MOVD $59392, R2		
  repro.go:15		0x12b6f8		f2a00042		MOVK $(2<<16), R2	
  repro.go:15		0x12b6fc		1b027c20		MULW R2, R1, R0		
  repro.go:15		0x12b700		d65f03c0		RET			
  repro.go:15		0x12b704		00000000		?			
  repro.go:15		0x12b708		00000000		?			
  repro.go:15		0x12b70c		00000000		?			

TEXT example.com/pq-small-arithmetic.Scale88Masked(SB) /home/exedev/crypto-audit/round4/issues/pq-small-arithmetic/repro.go
  repro.go:23		0x12b710		92401401		AND $63, R0, R1		
  repro.go:23		0x12b714		d3681402		UBFIZ $24, R0, $6, R2	
  repro.go:23		0x12b718		cb013841		SUB R1<<14, R2, R1	
  repro.go:23		0x12b71c		93407c21		SXTW R1, R1		
  repro.go:23		0x12b720		d2917462		MOVD $35747, R2		
  repro.go:23		0x12b724		f2b745c2		MOVK $(47662<<16), R2	
  repro.go:23		0x12b728		9b027c21		MUL R2, R1, R1		
  repro.go:23		0x12b72c		d366fc20		LSR $38, R1, R0		
  repro.go:23		0x12b730		d65f03c0		RET			
  repro.go:23		0x12b734		00000000		?			
  repro.go:23		0x12b738		00000000		?			
  repro.go:23		0x12b73c		00000000		?			

TEXT example.com/pq-small-arithmetic.Scale88MaskedGrouped(SB) /home/exedev/crypto-audit/round4/issues/pq-small-arithmetic/repro.go
  repro.go:28		0x12b740		92401401		AND $63, R0, R1		
  repro.go:28		0x12b744		d29d0002		MOVD $59392, R2		
  repro.go:28		0x12b748		f2a00042		MOVK $(2<<16), R2	
  repro.go:28		0x12b74c		1b027c20		MULW R2, R1, R0		
  repro.go:28		0x12b750		d65f03c0		RET			
  repro.go:28		0x12b754		00000000		?			
  repro.go:28		0x12b758		00000000		?			
  repro.go:28		0x12b75c		00000000		?			

TEXT example.com/pq-small-arithmetic.Scale88Wide(SB) /home/exedev/crypto-audit/round4/issues/pq-small-arithmetic/repro.go
  repro.go:36		0x12b760		d3401c01		UBFX $0, R0, $8, R1	
  repro.go:36		0x12b764		d3681c02		UBFIZ $24, R0, $8, R2	
  repro.go:36		0x12b768		cb013841		SUB R1<<14, R2, R1	
  repro.go:36		0x12b76c		d285d182		MOVD $11916, R2		
  repro.go:36		0x12b770		f2bd1742		MOVK $(59578<<16), R2	
  repro.go:36		0x12b774		f2d17442		MOVK $(35746<<32), R2	
  repro.go:36		0x12b778		f2f745c2		MOVK $(47662<<48), R2	
  repro.go:36		0x12b77c		9bc27c21		UMULH R2, R1, R1	
  repro.go:36		0x12b780		d346fc20		LSR $6, R1, R0		
  repro.go:36		0x12b784		d65f03c0		RET			
  repro.go:36		0x12b788		00000000		?			
  repro.go:36		0x12b78c		00000000		?			

TEXT example.com/pq-small-arithmetic.Scale32Masked(SB) /home/exedev/crypto-audit/round4/issues/pq-small-arithmetic/repro.go
  repro.go:41		0x12b790		92400c01		AND $15, R0, R1		
  repro.go:41		0x12b794		d3680c02		UBFIZ $24, R0, $4, R2	
  repro.go:41		0x12b798		cb013841		SUB R1<<14, R2, R1	
  repro.go:41		0x12b79c		d3457c20		UBFX $5, R1, $27, R0	
  repro.go:41		0x12b7a0		d65f03c0		RET			
  repro.go:41		0x12b7a4		00000000		?			
  repro.go:41		0x12b7a8		00000000		?			
  repro.go:41		0x12b7ac		00000000		?			

TEXT example.com/pq-small-arithmetic.Scale32MaskedGrouped(SB) /home/exedev/crypto-audit/round4/issues/pq-small-arithmetic/repro.go
  repro.go:46		0x12b7b0		92400c01		AND $15, R0, R1		
  repro.go:46		0x12b7b4		d36d0c02		UBFIZ $19, R0, $4, R2	
  repro.go:46		0x12b7b8		cb012440		SUB R1<<9, R2, R0	
  repro.go:46		0x12b7bc		d65f03c0		RET			

TEXT example.com/pq-small-arithmetic.BitsOriginal(SB) /home/exedev/crypto-audit/round4/issues/pq-small-arithmetic/repro.go
  repro.go:54		0x12b7c0		d3401c04		UBFX $0, R0, $8, R4	
  repro.go:54		0x12b7c4		d3461805		UBFX $6, R0, $1, R5	
  repro.go:54		0x12b7c8		d3451406		UBFX $5, R0, $1, R6	
  repro.go:54		0x12b7cc		d3441007		UBFX $4, R0, $1, R7	
  repro.go:55		0x12b7d0		d3430c08		UBFX $3, R0, $1, R8	
  repro.go:55		0x12b7d4		d3420809		UBFX $2, R0, $1, R9	
  repro.go:55		0x12b7d8		d341040a		UBFX $1, R0, $1, R10	
  repro.go:55		0x12b7dc		9240000b		AND $1, R0, R11		
  repro.go:56		0x12b7e0		8b0a016a		ADD R10, R11, R10	
  repro.go:56		0x12b7e4		d3401d40		UBFX $0, R10, $8, R0	
  repro.go:56		0x12b7e8		8b080128		ADD R8, R9, R8		
  repro.go:56		0x12b7ec		d3401d01		UBFX $0, R8, $8, R1	
  repro.go:56		0x12b7f0		8b0600e6		ADD R6, R7, R6		
  repro.go:56		0x12b7f4		d3401cc2		UBFX $0, R6, $8, R2	
  repro.go:56		0x12b7f8		8b441ca4		ADD R4>>7, R5, R4	
  repro.go:56		0x12b7fc		d3401c83		UBFX $0, R4, $8, R3	
  repro.go:56		0x12b800		d65f03c0		RET			
  repro.go:56		0x12b804		00000000		?			
  repro.go:56		0x12b808		00000000		?			
  repro.go:56		0x12b80c		00000000		?			

TEXT example.com/pq-small-arithmetic.BitsWide(SB) /home/exedev/crypto-audit/round4/issues/pq-small-arithmetic/repro.go
  repro.go:61		0x12b810		d3401c04		UBFX $0, R0, $8, R4	
  repro.go:62		0x12b814		d3461885		UBFX $6, R4, $1, R5	
  repro.go:62		0x12b818		d3451486		UBFX $5, R4, $1, R6	
  repro.go:62		0x12b81c		d3441087		UBFX $4, R4, $1, R7	
  repro.go:63		0x12b820		d3430c88		UBFX $3, R4, $1, R8	
  repro.go:63		0x12b824		d3420889		UBFX $2, R4, $1, R9	
  repro.go:63		0x12b828		d341048a		UBFX $1, R4, $1, R10	
  repro.go:63		0x12b82c		9240000b		AND $1, R0, R11		
  repro.go:64		0x12b830		8b0a0160		ADD R10, R11, R0	
  repro.go:64		0x12b834		8b080121		ADD R8, R9, R1		
  repro.go:64		0x12b838		8b0600e2		ADD R6, R7, R2		
  repro.go:64		0x12b83c		8b441ca3		ADD R4>>7, R5, R3	
  repro.go:64		0x12b840		d65f03c0		RET			
  repro.go:64		0x12b844		00000000		?			
  repro.go:64		0x12b848		00000000		?			
  repro.go:64		0x12b84c		00000000		?			

TEXT example.com/pq-small-arithmetic.BitPairOriginal(SB) /home/exedev/crypto-audit/round4/issues/pq-small-arithmetic/repro.go
  repro.go:68		0x12b850		92400001		AND $1, R0, R1		
  repro.go:68		0x12b854		d3410402		UBFX $1, R0, $1, R2	
  repro.go:68		0x12b858		8b020021		ADD R2, R1, R1		
  repro.go:68		0x12b85c		d3401c20		UBFX $0, R1, $8, R0	
  repro.go:68		0x12b860		d65f03c0		RET			
  repro.go:68		0x12b864		00000000		?			
  repro.go:68		0x12b868		00000000		?			
  repro.go:68		0x12b86c		00000000		?			

TEXT example.com/pq-small-arithmetic.BitPairWide(SB) /home/exedev/crypto-audit/round4/issues/pq-small-arithmetic/repro.go
  repro.go:71		0x12b870		92400001		AND $1, R0, R1		
  repro.go:71		0x12b874		d3410402		UBFX $1, R0, $1, R2	
  repro.go:71		0x12b878		8b020020		ADD R2, R1, R0		
  repro.go:71		0x12b87c		d65f03c0		RET			

TEXT example.com/pq-small-arithmetic.Sub16Original(SB) /home/exedev/crypto-audit/round4/issues/pq-small-arithmetic/subtraction.go
  subtraction.go:9	0x12b880		cb010001		SUB R1, R0, R1		
  subtraction.go:9	0x12b884		91340421		ADD $3329, R1, R1	
  subtraction.go:10	0x12b888		d3403c21		UBFX $0, R1, $16, R1	
  subtraction.go:10	0x12b88c		d1340422		SUB $3329, R1, R2	
  constant_time.go:51	0x12b890		d503201f		NOOP			
  constant_time.go:35	0x12b894		f134003f		CMP $3328, R1		
  constant_time.go:28	0x12b898		9a82d020		CSEL LE, R1, R2, R0	
  subtraction.go:10	0x12b89c		d65f03c0		RET			

TEXT example.com/pq-small-arithmetic.Sub16Direct(SB) /home/exedev/crypto-audit/round4/issues/pq-small-arithmetic/subtraction.go
  subtraction.go:17	0x12b8a0		d3403c02		UBFX $0, R0, $16, R2	
  subtraction.go:18	0x12b8a4		d3403c21		UBFX $0, R1, $16, R1	
  subtraction.go:17	0x12b8a8		cb010043		SUB R1, R2, R3		
  subtraction.go:18	0x12b8ac		91340464		ADD $3329, R3, R4	
  constant_time.go:51	0x12b8b0		d503201f		NOOP			
  constant_time.go:35	0x12b8b4		eb02003f		CMP R2, R1		
  constant_time.go:28	0x12b8b8		9a84d060		CSEL LE, R3, R4, R0	
  subtraction.go:18	0x12b8bc		d65f03c0		RET			

TEXT example.com/pq-small-arithmetic.Sub16Guarded(SB) /home/exedev/crypto-audit/round4/issues/pq-small-arithmetic/subtraction.go
  subtraction.go:26	0x12b8c0		d3403c02		UBFX $0, R0, $16, R2	
  subtraction.go:26	0x12b8c4		7134045f		CMPW $3329, R2		
  subtraction.go:26	0x12b8c8		54000082		BCS 4(PC)		
  subtraction.go:26	0x12b8cc		d3403c22		UBFX $0, R1, $16, R2	
  subtraction.go:26	0x12b8d0		7134045f		CMPW $3329, R2		
  subtraction.go:26	0x12b8d4		54000063		BCC 3(PC)		
  subtraction.go:27	0x12b8d8		aa1f03e0		MOVD ZR, R0		
  subtraction.go:27	0x12b8dc		d65f03c0		RET			
  subtraction.go:29	0x12b8e0		cb010001		SUB R1, R0, R1		
  subtraction.go:29	0x12b8e4		91340421		ADD $3329, R1, R1	
  subtraction.go:30	0x12b8e8		d3403c21		UBFX $0, R1, $16, R1	
  subtraction.go:30	0x12b8ec		d1340422		SUB $3329, R1, R2	
  constant_time.go:51	0x12b8f0		d503201f		NOOP			
  constant_time.go:35	0x12b8f4		f134003f		CMP $3328, R1		
  constant_time.go:28	0x12b8f8		9a82d020		CSEL LE, R1, R2, R0	
  subtraction.go:30	0x12b8fc		d65f03c0		RET			

TEXT example.com/pq-small-arithmetic.Sub16Masked(SB) /home/exedev/crypto-audit/round4/issues/pq-small-arithmetic/subtraction.go
  subtraction.go:37	0x12b900		92402802		AND $2047, R0, R2	
  subtraction.go:38	0x12b904		92402821		AND $2047, R1, R1	
  subtraction.go:39	0x12b908		cb010041		SUB R1, R2, R1		
  subtraction.go:39	0x12b90c		91340421		ADD $3329, R1, R1	
  subtraction.go:40	0x12b910		d3403c21		UBFX $0, R1, $16, R1	
  subtraction.go:40	0x12b914		d1340422		SUB $3329, R1, R2	
  constant_time.go:51	0x12b918		d503201f		NOOP			
  constant_time.go:35	0x12b91c		f134003f		CMP $3328, R1		
  constant_time.go:28	0x12b920		9a82d020		CSEL LE, R1, R2, R0	
  subtraction.go:40	0x12b924		d65f03c0		RET			
  subtraction.go:40	0x12b928		00000000		?			
  subtraction.go:40	0x12b92c		00000000		?			

TEXT example.com/pq-small-arithmetic.TestScale(SB) /home/exedev/crypto-audit/round4/issues/pq-small-arithmetic/repro_test.go
  repro_test.go:5	0x12b930		f9400b90		MOVD 16(R28), R16						
  repro_test.go:5	0x12b934		eb3063ff		CMP R16, RSP							
  repro_test.go:5	0x12b938		54000f29		BLS 121(PC)							
  repro_test.go:5	0x12b93c		f8190ffe		MOVD.W R30, -112(RSP)						
  repro_test.go:5	0x12b940		f81f83fd		MOVD R29, -8(RSP)						
  repro_test.go:5	0x12b944		d10023fd		SUB $8, RSP, R29						
  repro_test.go:6	0x12b948		f9003fe0		MOVD R0, 120(RSP)						
  repro_test.go:6	0x12b94c		aa1f03e1		MOVD ZR, R1							
  repro_test.go:6	0x12b950		14000003		JMP 3(PC)							
  repro_test.go:6	0x12b954		f94027e0		MOVD 72(RSP), R0						
  repro_test.go:6	0x12b958		91000401		ADD $1, R0, R1							
  repro_test.go:6	0x12b95c		f104003f		CMP $256, R1							
  repro_test.go:6	0x12b960		54000b2a		BGE 89(PC)							
  repro_test.go:6	0x12b964		f90027e1		MOVD R1, 72(RSP)						
  repro_test.go:8	0x12b968		f100ac3f		CMP $43, R1							
  repro_test.go:8	0x12b96c		5400036c		BGT 27(PC)							
  repro_test.go:8	0x12b970		aa0103e0		MOVD R1, R0							
  repro_test.go:8	0x12b974		97ffff53		CALL example.com/pq-small-arithmetic.Scale88Original(SB)	
  repro_test.go:8	0x12b978		b90047e0		MOVW R0, 68(RSP)						
  repro_test.go:8	0x12b97c		f94027e0		MOVD 72(RSP), R0						
  repro_test.go:8	0x12b980		97ffff5c		CALL example.com/pq-small-arithmetic.Scale88Grouped(SB)		
  repro_test.go:8	0x12b984		b98047e1		MOVW 68(RSP), R1						
  repro_test.go:8	0x12b988		6b01001f		CMPW R1, R0							
  repro_test.go:8	0x12b98c		54000061		BNE 3(PC)							
  repro_test.go:11	0x12b990		f94027e1		MOVD 72(RSP), R1						
  repro_test.go:8	0x12b994		14000011		JMP 17(PC)							
  repro_test.go:9	0x12b998		a905ffff		STP (ZR, ZR), 88(RSP)						
  repro_test.go:9	0x12b99c		f94027e0		MOVD 72(RSP), R0						
  repro_test.go:9	0x12b9a0		97fd84d8		CALL runtime.convT64(SB)					
  repro_test.go:9	0x12b9a4		90000a21		ADRP 1327104(PC), R1						
  repro_test.go:9	0x12b9a8		9122e021		ADD $2232, R1, R1						
  repro_test.go:9	0x12b9ac		a90583e1		STP (R1, R0), 88(RSP)						
  repro_test.go:9	0x12b9b0		f9403fe0		MOVD 120(RSP), R0						
  repro_test.go:9	0x12b9b4		3980001b		MOVB (R0), R27							
  repro_test.go:9	0x12b9b8		f0000041		ADRP 45056(PC), R1						
  repro_test.go:9	0x12b9bc		91150021		ADD $1344, R1, R1						
  repro_test.go:9	0x12b9c0		d2800362		MOVD $27, R2							
  repro_test.go:9	0x12b9c4		910163e3		ADD $88, RSP, R3						
  repro_test.go:9	0x12b9c8		b24003e4		ORR $1, ZR, R4							
  repro_test.go:9	0x12b9cc		aa0403e5		MOVD R4, R5							
  repro_test.go:9	0x12b9d0		97fee7e0		CALL testing.(*common).Fatalf(SB)				
  repro_test.go:11	0x12b9d4		f94027e1		MOVD 72(RSP), R1						
  repro_test.go:11	0x12b9d8		aa0103e0		MOVD R1, R0							
  repro_test.go:11	0x12b9dc		97ffff4d		CALL example.com/pq-small-arithmetic.Scale88Masked(SB)		
  repro_test.go:11	0x12b9e0		b90047e0		MOVW R0, 68(RSP)						
  repro_test.go:11	0x12b9e4		f94027e0		MOVD 72(RSP), R0						
  repro_test.go:11	0x12b9e8		97ffff56		CALL example.com/pq-small-arithmetic.Scale88MaskedGrouped(SB)	
  repro_test.go:11	0x12b9ec		b98047e1		MOVW 68(RSP), R1						
  repro_test.go:11	0x12b9f0		6b01001f		CMPW R1, R0							
  repro_test.go:11	0x12b9f4		54000060		BEQ 3(PC)							
  repro_test.go:11	0x12b9f8		b24003e1		ORR $1, ZR, R1							
  repro_test.go:11	0x12b9fc		14000009		JMP 9(PC)							
  repro_test.go:11	0x12ba00		f94027e0		MOVD 72(RSP), R0						
  repro_test.go:11	0x12ba04		97ffff63		CALL example.com/pq-small-arithmetic.Scale32Masked(SB)		
  repro_test.go:11	0x12ba08		b90047e0		MOVW R0, 68(RSP)						
  repro_test.go:11	0x12ba0c		f94027e0		MOVD 72(RSP), R0						
  repro_test.go:11	0x12ba10		97ffff68		CALL example.com/pq-small-arithmetic.Scale32MaskedGrouped(SB)	
  repro_test.go:11	0x12ba14		b98047e1		MOVW 68(RSP), R1						
  repro_test.go:11	0x12ba18		6b01001f		CMPW R1, R0							
  repro_test.go:11	0x12ba1c		9a9f07e1		CSET NE, R1							
  repro_test.go:11	0x12ba20		36000201		TBZ $0, R1, 16(PC)						
  repro_test.go:12	0x12ba24		a905ffff		STP (ZR, ZR), 88(RSP)						
  repro_test.go:12	0x12ba28		f94027e0		MOVD 72(RSP), R0						
  repro_test.go:12	0x12ba2c		97fd84b5		CALL runtime.convT64(SB)					
  repro_test.go:12	0x12ba30		90000a21		ADRP 1327104(PC), R1						
  repro_test.go:12	0x12ba34		9122e021		ADD $2232, R1, R1						
  repro_test.go:12	0x12ba38		a90583e1		STP (R1, R0), 88(RSP)						
  repro_test.go:12	0x12ba3c		f9403fe0		MOVD 120(RSP), R0						
  repro_test.go:12	0x12ba40		3980001b		MOVB (R0), R27							
  repro_test.go:12	0x12ba44		f0000021		ADRP 28672(PC), R1						
  repro_test.go:12	0x12ba48		91323421		ADD $3213, R1, R1						
  repro_test.go:12	0x12ba4c		b2400fe2		ORR $15, ZR, R2							
  repro_test.go:12	0x12ba50		910163e3		ADD $88, RSP, R3						
  repro_test.go:12	0x12ba54		b24003e4		ORR $1, ZR, R4							
  repro_test.go:12	0x12ba58		aa0403e5		MOVD R4, R5							
  repro_test.go:12	0x12ba5c		97fee7bd		CALL testing.(*common).Fatalf(SB)				
  repro_test.go:14	0x12ba60		f94027e0		MOVD 72(RSP), R0						
  repro_test.go:14	0x12ba64		97ffff3f		CALL example.com/pq-small-arithmetic.Scale88Wide(SB)		
  repro_test.go:14	0x12ba68		f9002be0		MOVD R0, 80(RSP)						
  repro_test.go:14	0x12ba6c		f94027e0		MOVD 72(RSP), R0						
  repro_test.go:14	0x12ba70		97ffff20		CALL example.com/pq-small-arithmetic.Scale88Grouped(SB)		
  repro_test.go:14	0x12ba74		93407c01		SXTW R0, R1							
  repro_test.go:14	0x12ba78		f9402be2		MOVD 80(RSP), R2						
  repro_test.go:14	0x12ba7c		eb01005f		CMP R1, R2							
  repro_test.go:14	0x12ba80		54fff6a0		BEQ -75(PC)							
  repro_test.go:15	0x12ba84		a905ffff		STP (ZR, ZR), 88(RSP)						
  repro_test.go:15	0x12ba88		f94027e0		MOVD 72(RSP), R0						
  repro_test.go:15	0x12ba8c		97fd849d		CALL runtime.convT64(SB)					
  repro_test.go:15	0x12ba90		90000a21		ADRP 1327104(PC), R1						
  repro_test.go:15	0x12ba94		9122e021		ADD $2232, R1, R1						
  repro_test.go:15	0x12ba98		a90583e1		STP (R1, R0), 88(RSP)						
  repro_test.go:15	0x12ba9c		f9403fe0		MOVD 120(RSP), R0						
  repro_test.go:15	0x12baa0		3980001b		MOVB (R0), R27							
  repro_test.go:15	0x12baa4		f0000021		ADRP 28672(PC), R1						
  repro_test.go:15	0x12baa8		910b9421		ADD $741, R1, R1						
  repro_test.go:15	0x12baac		d28001a2		MOVD $13, R2							
  repro_test.go:15	0x12bab0		910163e3		ADD $88, RSP, R3						
  repro_test.go:15	0x12bab4		b24003e4		ORR $1, ZR, R4							
  repro_test.go:15	0x12bab8		aa0403e5		MOVD R4, R5							
  repro_test.go:15	0x12babc		97fee7a5		CALL testing.(*common).Fatalf(SB)				
  repro_test.go:15	0x12bac0		17ffffa5		JMP -91(PC)							
  repro_test.go:18	0x12bac4		92800000		MOVD $-1, R0							
  repro_test.go:18	0x12bac8		97fffefe		CALL example.com/pq-small-arithmetic.Scale88Original(SB)	
  repro_test.go:18	0x12bacc		b90047e0		MOVW R0, 68(RSP)						
  repro_test.go:18	0x12bad0		92800000		MOVD $-1, R0							
  repro_test.go:18	0x12bad4		97ffff07		CALL example.com/pq-small-arithmetic.Scale88Grouped(SB)		
  repro_test.go:18	0x12bad8		b98047e1		MOVW 68(RSP), R1						
  repro_test.go:18	0x12badc		6b01001f		CMPW R1, R0							
  repro_test.go:18	0x12bae0		54000181		BNE 12(PC)							
  repro_test.go:19	0x12bae4		90000a24		ADRP 1327104(PC), R4						
  repro_test.go:19	0x12bae8		9119e084		ADD $1656, R4, R4						
  repro_test.go:19	0x12baec		f0000085		ADRP 77824(PC), R5						
  repro_test.go:19	0x12baf0		913a00a5		ADD $3712, R5, R5						
  repro_test.go:19	0x12baf4		a90597e4		STP (R4, R5), 88(RSP)						
  repro_test.go:19	0x12baf8		f9403fe0		MOVD 120(RSP), R0						
  repro_test.go:19	0x12bafc		3980001b		MOVB (R0), R27							
  repro_test.go:19	0x12bb00		910163e1		ADD $88, RSP, R1						
  repro_test.go:19	0x12bb04		b24003e2		ORR $1, ZR, R2							
  repro_test.go:19	0x12bb08		aa0203e3		MOVD R2, R3							
  repro_test.go:19	0x12bb0c		97fee759		CALL testing.(*common).Fatal(SB)				
  repro_test.go:21	0x12bb10		f85f83fd		MOVD -8(RSP), R29						
  repro_test.go:21	0x12bb14		f84707fe		MOVD.P 112(RSP), R30						
  repro_test.go:21	0x12bb18		d65f03c0		RET								
  repro_test.go:5	0x12bb1c		f90007e0		MOVD R0, 8(RSP)							
  repro_test.go:5	0x12bb20		aa1e03e3		MOVD R30, R3							
  repro_test.go:5	0x12bb24		97fd9d3b		CALL runtime.morestack_noctxt.abi0(SB)				
  repro_test.go:5	0x12bb28		f94007e0		MOVD 8(RSP), R0							
  repro_test.go:5	0x12bb2c		17ffff81		JMP example.com/pq-small-arithmetic.TestScale(SB)		

TEXT example.com/pq-small-arithmetic.TestBits(SB) /home/exedev/crypto-audit/round4/issues/pq-small-arithmetic/repro_test.go
  repro_test.go:23	0x12bb30		f9400b90		MOVD 16(R28), R16						
  repro_test.go:23	0x12bb34		eb3063ff		CMP R16, RSP							
  repro_test.go:23	0x12bb38		54000e29		BLS 113(PC)							
  repro_test.go:23	0x12bb3c		f81a0ffe		MOVD.W R30, -96(RSP)						
  repro_test.go:23	0x12bb40		f81f83fd		MOVD R29, -8(RSP)						
  repro_test.go:23	0x12bb44		d10023fd		SUB $8, RSP, R29						
  repro_test.go:24	0x12bb48		f90037e0		MOVD R0, 104(RSP)						
  repro_test.go:24	0x12bb4c		aa1f03e1		MOVD ZR, R1							
  repro_test.go:24	0x12bb50		14000003		JMP 3(PC)							
  repro_test.go:24	0x12bb54		f94023e0		MOVD 64(RSP), R0						
  repro_test.go:24	0x12bb58		91000401		ADD $1, R0, R1							
  repro_test.go:24	0x12bb5c		f104003f		CMP $256, R1							
  repro_test.go:24	0x12bb60		54000c8a		BGE 100(PC)							
  repro_test.go:25	0x12bb64		f9001fff		MOVD ZR, 56(RSP)						
  repro_test.go:26	0x12bb68		aa1f03e2		MOVD ZR, R2							
  repro_test.go:26	0x12bb6c		14000009		JMP 9(PC)							
  repro_test.go:27	0x12bb70		d341fc43		LSR $1, R2, R3							
  repro_test.go:27	0x12bb74		9100e3e4		ADD $56, RSP, R4						
  repro_test.go:27	0x12bb78		78637885		MOVHU (R4)(R3<<1), R5						
  repro_test.go:27	0x12bb7c		9ac22426		LSR R2, R1, R6							
  repro_test.go:27	0x12bb80		924000c6		AND $1, R6, R6							
  repro_test.go:27	0x12bb84		8b0600a5		ADD R6, R5, R5							
  repro_test.go:27	0x12bb88		78237885		MOVH R5, (R4)(R3<<1)						
  repro_test.go:26	0x12bb8c		91000442		ADD $1, R2, R2							
  repro_test.go:26	0x12bb90		f100205f		CMP $8, R2							
  repro_test.go:26	0x12bb94		54fffeeb		BLT -9(PC)							
  repro_test.go:24	0x12bb98		f90023e1		MOVD R1, 64(RSP)						
  repro_test.go:29	0x12bb9c		aa0103e0		MOVD R1, R0							
  repro_test.go:29	0x12bba0		97ffff08		CALL example.com/pq-small-arithmetic.BitsOriginal(SB)		
  repro_test.go:30	0x12bba4		d3403c04		UBFX $0, R0, $16, R4						
  repro_test.go:30	0x12bba8		d3403c21		UBFX $0, R1, $16, R1						
  repro_test.go:30	0x12bbac		aa014081		ORR R1<<16, R4, R1						
  repro_test.go:30	0x12bbb0		d3403c42		UBFX $0, R2, $16, R2						
  repro_test.go:30	0x12bbb4		aa028021		ORR R2<<32, R1, R1						
  repro_test.go:30	0x12bbb8		d3403c62		UBFX $0, R3, $16, R2						
  repro_test.go:30	0x12bbbc		aa02c021		ORR R2<<48, R1, R1						
  repro_test.go:30	0x12bbc0		f9401fe2		MOVD 56(RSP), R2						
  repro_test.go:30	0x12bbc4		eb01005f		CMP R1, R2							
  repro_test.go:30	0x12bbc8		54000200		BEQ 16(PC)							
  repro_test.go:31	0x12bbcc		a904ffff		STP (ZR, ZR), 72(RSP)						
  repro_test.go:31	0x12bbd0		f94023e0		MOVD 64(RSP), R0						
  repro_test.go:31	0x12bbd4		97fd844b		CALL runtime.convT64(SB)					
  repro_test.go:31	0x12bbd8		90000a21		ADRP 1327104(PC), R1						
  repro_test.go:31	0x12bbdc		9122e021		ADD $2232, R1, R1						
  repro_test.go:31	0x12bbe0		a90483e1		STP (R1, R0), 72(RSP)						
  repro_test.go:31	0x12bbe4		f94037e0		MOVD 104(RSP), R0						
  repro_test.go:31	0x12bbe8		3980001b		MOVB (R0), R27							
  repro_test.go:31	0x12bbec		90000041		ADRP 32768(PC), R1						
  repro_test.go:31	0x12bbf0		91036821		ADD $218, R1, R1						
  repro_test.go:31	0x12bbf4		b27c03e2		ORR $16, ZR, R2							
  repro_test.go:31	0x12bbf8		910123e3		ADD $72, RSP, R3						
  repro_test.go:31	0x12bbfc		b24003e4		ORR $1, ZR, R4							
  repro_test.go:31	0x12bc00		aa0403e5		MOVD R4, R5							
  repro_test.go:31	0x12bc04		97fee753		CALL testing.(*common).Fatalf(SB)				
  repro_test.go:33	0x12bc08		f94023e0		MOVD 64(RSP), R0						
  repro_test.go:33	0x12bc0c		97ffff01		CALL example.com/pq-small-arithmetic.BitsWide(SB)		
  repro_test.go:34	0x12bc10		d3403c04		UBFX $0, R0, $16, R4						
  repro_test.go:34	0x12bc14		d3403c21		UBFX $0, R1, $16, R1						
  repro_test.go:34	0x12bc18		aa014081		ORR R1<<16, R4, R1						
  repro_test.go:34	0x12bc1c		d3403c42		UBFX $0, R2, $16, R2						
  repro_test.go:34	0x12bc20		aa028021		ORR R2<<32, R1, R1						
  repro_test.go:34	0x12bc24		d3403c62		UBFX $0, R3, $16, R2						
  repro_test.go:34	0x12bc28		aa02c021		ORR R2<<48, R1, R1						
  repro_test.go:34	0x12bc2c		f9401fe2		MOVD 56(RSP), R2						
  repro_test.go:34	0x12bc30		eb01005f		CMP R1, R2							
  repro_test.go:34	0x12bc34		54000200		BEQ 16(PC)							
  repro_test.go:35	0x12bc38		a904ffff		STP (ZR, ZR), 72(RSP)						
  repro_test.go:35	0x12bc3c		f94023e0		MOVD 64(RSP), R0						
  repro_test.go:35	0x12bc40		97fd8430		CALL runtime.convT64(SB)					
  repro_test.go:35	0x12bc44		90000a21		ADRP 1327104(PC), R1						
  repro_test.go:35	0x12bc48		9122e021		ADD $2232, R1, R1						
  repro_test.go:35	0x12bc4c		a90483e1		STP (R1, R0), 72(RSP)						
  repro_test.go:35	0x12bc50		f94037e0		MOVD 104(RSP), R0						
  repro_test.go:35	0x12bc54		3980001b		MOVB (R0), R27							
  repro_test.go:35	0x12bc58		d0000021		ADRP 24576(PC), R1						
  repro_test.go:35	0x12bc5c		91388021		ADD $3616, R1, R1						
  repro_test.go:35	0x12bc60		b27e07e2		ORR $12, ZR, R2							
  repro_test.go:35	0x12bc64		910123e3		ADD $72, RSP, R3						
  repro_test.go:35	0x12bc68		b24003e4		ORR $1, ZR, R4							
  repro_test.go:35	0x12bc6c		aa0403e5		MOVD R4, R5							
  repro_test.go:35	0x12bc70		97fee738		CALL testing.(*common).Fatalf(SB)				
  repro_test.go:37	0x12bc74		f94023e0		MOVD 64(RSP), R0						
  repro_test.go:37	0x12bc78		97fffef6		CALL example.com/pq-small-arithmetic.BitPairOriginal(SB)	
  repro_test.go:37	0x12bc7c		d3403c01		UBFX $0, R0, $16, R1						
  repro_test.go:37	0x12bc80		794073e2		MOVHU 56(RSP), R2						
  repro_test.go:37	0x12bc84		6b01005f		CMPW R1, R2							
  repro_test.go:37	0x12bc88		54000060		BEQ 3(PC)							
  repro_test.go:37	0x12bc8c		b24003e1		ORR $1, ZR, R1							
  repro_test.go:37	0x12bc90		14000007		JMP 7(PC)							
  repro_test.go:37	0x12bc94		f94023e0		MOVD 64(RSP), R0						
  repro_test.go:37	0x12bc98		97fffef6		CALL example.com/pq-small-arithmetic.BitPairWide(SB)		
  repro_test.go:37	0x12bc9c		d3403c01		UBFX $0, R0, $16, R1						
  repro_test.go:37	0x12bca0		794073e2		MOVHU 56(RSP), R2						
  repro_test.go:37	0x12bca4		6b02003f		CMPW R2, R1							
  repro_test.go:37	0x12bca8		9a9f07e1		CSET NE, R1							
  repro_test.go:37	0x12bcac		3607f541		TBZ $0, R1, -86(PC)						
  repro_test.go:38	0x12bcb0		a904ffff		STP (ZR, ZR), 72(RSP)						
  repro_test.go:38	0x12bcb4		f94023e0		MOVD 64(RSP), R0						
  repro_test.go:38	0x12bcb8		97fd8412		CALL runtime.convT64(SB)					
  repro_test.go:38	0x12bcbc		90000a21		ADRP 1327104(PC), R1						
  repro_test.go:38	0x12bcc0		9122e021		ADD $2232, R1, R1						
  repro_test.go:38	0x12bcc4		a90483e1		STP (R1, R0), 72(RSP)						
  repro_test.go:38	0x12bcc8		f94037e0		MOVD 104(RSP), R0						
  repro_test.go:38	0x12bccc		3980001b		MOVB (R0), R27							
  repro_test.go:38	0x12bcd0		b0000021		ADRP 20480(PC), R1						
  repro_test.go:38	0x12bcd4		91207c21		ADD $2079, R1, R1						
  repro_test.go:38	0x12bcd8		b2400be2		ORR $7, ZR, R2							
  repro_test.go:38	0x12bcdc		910123e3		ADD $72, RSP, R3						
  repro_test.go:38	0x12bce0		b24003e4		ORR $1, ZR, R4							
  repro_test.go:38	0x12bce4		aa0403e5		MOVD R4, R5							
  repro_test.go:38	0x12bce8		97fee71a		CALL testing.(*common).Fatalf(SB)				
  repro_test.go:38	0x12bcec		17ffff9a		JMP -102(PC)							
  repro_test.go:41	0x12bcf0		f85f83fd		MOVD -8(RSP), R29						
  repro_test.go:41	0x12bcf4		f84607fe		MOVD.P 96(RSP), R30						
  repro_test.go:41	0x12bcf8		d65f03c0		RET								
  repro_test.go:23	0x12bcfc		f90007e0		MOVD R0, 8(RSP)							
  repro_test.go:23	0x12bd00		aa1e03e3		MOVD R30, R3							
  repro_test.go:23	0x12bd04		97fd9cc3		CALL runtime.morestack_noctxt.abi0(SB)				
  repro_test.go:23	0x12bd08		f94007e0		MOVD 8(RSP), R0							
  repro_test.go:23	0x12bd0c		17ffff89		JMP example.com/pq-small-arithmetic.TestBits(SB)		

TEXT example.com/pq-small-arithmetic.BenchmarkBitsOriginal(SB) /home/exedev/crypto-audit/round4/issues/pq-small-arithmetic/repro_test.go
  repro_test.go:45	0x12bd10		f9400b90		MOVD 16(R28), R16						
  repro_test.go:45	0x12bd14		eb3063ff		CMP R16, RSP							
  repro_test.go:45	0x12bd18		54000389		BLS 28(PC)							
  repro_test.go:45	0x12bd1c		f81d0ffe		MOVD.W R30, -48(RSP)						
  repro_test.go:45	0x12bd20		f81f83fd		MOVD R29, -8(RSP)						
  repro_test.go:45	0x12bd24		d10023fd		SUB $8, RSP, R29						
  repro_test.go:47	0x12bd28		f9001fe0		MOVD R0, 56(RSP)						
  repro_test.go:47	0x12bd2c		aa1f03e1		MOVD ZR, R1							
  repro_test.go:47	0x12bd30		aa1f03e2		MOVD ZR, R2							
  repro_test.go:47	0x12bd34		1400000d		JMP 13(PC)							
  repro_test.go:47	0x12bd38		f90013e1		MOVD R1, 32(RSP)						
  repro_test.go:47	0x12bd3c		79003fe2		MOVH R2, 30(RSP)						
  repro_test.go:48	0x12bd40		aa0103e0		MOVD R1, R0							
  repro_test.go:48	0x12bd44		97fffe9f		CALL example.com/pq-small-arithmetic.BitsOriginal(SB)		
  repro_test.go:49	0x12bd48		8b000021		ADD R0, R1, R1							
  repro_test.go:49	0x12bd4c		8b010041		ADD R1, R2, R1							
  repro_test.go:49	0x12bd50		8b010061		ADD R1, R3, R1							
  repro_test.go:49	0x12bd54		79403fe2		MOVHU 30(RSP), R2						
  repro_test.go:49	0x12bd58		8b010042		ADD R1, R2, R2							
  repro_test.go:47	0x12bd5c		f94013e1		MOVD 32(RSP), R1						
  repro_test.go:47	0x12bd60		91000421		ADD $1, R1, R1							
  repro_test.go:47	0x12bd64		f9401fe0		MOVD 56(RSP), R0						
  repro_test.go:47	0x12bd68		f9410803		MOVD 528(R0), R3						
  repro_test.go:47	0x12bd6c		eb03003f		CMP R3, R1							
  repro_test.go:47	0x12bd70		54fffe4b		BLT -14(PC)							
  repro_test.go:51	0x12bd74		90000d7b		ADRP 1753088(PC), R27						
  repro_test.go:51	0x12bd78		791e5b62		MOVH R2, 3884(R27)						
  repro_test.go:52	0x12bd7c		f85f83fd		MOVD -8(RSP), R29						
  repro_test.go:52	0x12bd80		f84307fe		MOVD.P 48(RSP), R30						
  repro_test.go:52	0x12bd84		d65f03c0		RET								
  repro_test.go:45	0x12bd88		f90007e0		MOVD R0, 8(RSP)							
  repro_test.go:45	0x12bd8c		aa1e03e3		MOVD R30, R3							
  repro_test.go:45	0x12bd90		97fd9ca0		CALL runtime.morestack_noctxt.abi0(SB)				
  repro_test.go:45	0x12bd94		f94007e0		MOVD 8(RSP), R0							
  repro_test.go:45	0x12bd98		17ffffde		JMP example.com/pq-small-arithmetic.BenchmarkBitsOriginal(SB)	
  repro_test.go:45	0x12bd9c		00000000		?								

TEXT example.com/pq-small-arithmetic.BenchmarkBitsWide(SB) /home/exedev/crypto-audit/round4/issues/pq-small-arithmetic/repro_test.go
  repro_test.go:54	0x12bda0		f9400b90		MOVD 16(R28), R16						
  repro_test.go:54	0x12bda4		eb3063ff		CMP R16, RSP							
  repro_test.go:54	0x12bda8		54000389		BLS 28(PC)							
  repro_test.go:54	0x12bdac		f81d0ffe		MOVD.W R30, -48(RSP)						
  repro_test.go:54	0x12bdb0		f81f83fd		MOVD R29, -8(RSP)						
  repro_test.go:54	0x12bdb4		d10023fd		SUB $8, RSP, R29						
  repro_test.go:56	0x12bdb8		f9001fe0		MOVD R0, 56(RSP)						
  repro_test.go:56	0x12bdbc		aa1f03e1		MOVD ZR, R1							
  repro_test.go:56	0x12bdc0		aa1f03e2		MOVD ZR, R2							
  repro_test.go:56	0x12bdc4		1400000d		JMP 13(PC)							
  repro_test.go:56	0x12bdc8		f90013e1		MOVD R1, 32(RSP)						
  repro_test.go:56	0x12bdcc		79003fe2		MOVH R2, 30(RSP)						
  repro_test.go:57	0x12bdd0		aa0103e0		MOVD R1, R0							
  repro_test.go:57	0x12bdd4		97fffe8f		CALL example.com/pq-small-arithmetic.BitsWide(SB)		
  repro_test.go:58	0x12bdd8		8b000021		ADD R0, R1, R1							
  repro_test.go:58	0x12bddc		8b010041		ADD R1, R2, R1							
  repro_test.go:58	0x12bde0		8b010061		ADD R1, R3, R1							
  repro_test.go:58	0x12bde4		79403fe2		MOVHU 30(RSP), R2						
  repro_test.go:58	0x12bde8		8b010042		ADD R1, R2, R2							
  repro_test.go:56	0x12bdec		f94013e1		MOVD 32(RSP), R1						
  repro_test.go:56	0x12bdf0		91000421		ADD $1, R1, R1							
  repro_test.go:56	0x12bdf4		f9401fe0		MOVD 56(RSP), R0						
  repro_test.go:56	0x12bdf8		f9410803		MOVD 528(R0), R3						
  repro_test.go:56	0x12bdfc		eb03003f		CMP R3, R1							
  repro_test.go:56	0x12be00		54fffe4b		BLT -14(PC)							
  repro_test.go:60	0x12be04		90000d7b		ADRP 1753088(PC), R27						
  repro_test.go:60	0x12be08		791e5b62		MOVH R2, 3884(R27)						
  repro_test.go:61	0x12be0c		f85f83fd		MOVD -8(RSP), R29						
  repro_test.go:61	0x12be10		f84307fe		MOVD.P 48(RSP), R30						
  repro_test.go:61	0x12be14		d65f03c0		RET								
  repro_test.go:54	0x12be18		f90007e0		MOVD R0, 8(RSP)							
  repro_test.go:54	0x12be1c		aa1e03e3		MOVD R30, R3							
  repro_test.go:54	0x12be20		97fd9c7c		CALL runtime.morestack_noctxt.abi0(SB)				
  repro_test.go:54	0x12be24		f94007e0		MOVD 8(RSP), R0							
  repro_test.go:54	0x12be28		17ffffde		JMP example.com/pq-small-arithmetic.BenchmarkBitsWide(SB)	
  repro_test.go:54	0x12be2c		00000000		?								

TEXT example.com/pq-small-arithmetic.TestSub16(SB) /home/exedev/crypto-audit/round4/issues/pq-small-arithmetic/subtraction_test.go
  subtraction_test.go:5		0x12be30		f9400b90		MOVD 16(R28), R16					
  subtraction_test.go:5		0x12be34		d10043f1		SUB $16, RSP, R17					
  subtraction_test.go:5		0x12be38		eb10023f		CMP R16, R17						
  subtraction_test.go:5		0x12be3c		54001649		BLS 178(PC)						
  subtraction_test.go:5		0x12be40		f8170ffe		MOVD.W R30, -144(RSP)					
  subtraction_test.go:5		0x12be44		f81f83fd		MOVD R29, -8(RSP)					
  subtraction_test.go:5		0x12be48		d10023fd		SUB $8, RSP, R29					
  subtraction_test.go:6		0x12be4c		f9004fe0		MOVD R0, 152(RSP)					
  subtraction_test.go:6		0x12be50		aa1f03e2		MOVD ZR, R2						
  subtraction_test.go:6		0x12be54		14000002		JMP 2(PC)						
  subtraction_test.go:6		0x12be58		91000442		ADD $1, R2, R2						
  subtraction_test.go:6		0x12be5c		f134045f		CMP $3329, R2						
  subtraction_test.go:6		0x12be60		5400100a		BGE 128(PC)						
  subtraction_test.go:6		0x12be64		f90027e2		MOVD R2, 72(RSP)					
  subtraction_test.go:12	0x12be68		92402843		AND $2047, R2, R3					
  subtraction_test.go:12	0x12be6c		f9002be3		MOVD R3, 80(RSP)					
  subtraction_test.go:7		0x12be70		aa1f03e1		MOVD ZR, R1						
  subtraction_test.go:7		0x12be74		14000003		JMP 3(PC)						
  subtraction_test.go:7		0x12be78		91000441		ADD $1, R2, R1						
  subtraction_test.go:9		0x12be7c		f94027e2		MOVD 72(RSP), R2					
  subtraction_test.go:7		0x12be80		f134043f		CMP $3329, R1						
  subtraction_test.go:7		0x12be84		54fffeaa		BGE -11(PC)						
  subtraction_test.go:7		0x12be88		f90023e1		MOVD R1, 64(RSP)					
  subtraction_test.go:9		0x12be8c		aa0203e0		MOVD R2, R0						
  subtraction_test.go:9		0x12be90		97fffe7c		CALL example.com/pq-small-arithmetic.Sub16Original(SB)	
  subtraction_test.go:8		0x12be94		a9440be1		LDP 64(RSP), (R1, R2)					
  subtraction_test.go:8		0x12be98		cb010043		SUB R1, R2, R3						
  subtraction_test.go:8		0x12be9c		91340463		ADD $3329, R3, R3					
  subtraction_test.go:8		0x12bea0		d294e5e4		MOVD $42799, R4						
  subtraction_test.go:8		0x12bea4		f2abb044		MOVK $(23938<<16), R4					
  subtraction_test.go:8		0x12bea8		f2d76804		MOVK $(47936<<32), R4					
  subtraction_test.go:8		0x12beac		f2f3afa4		MOVK $(40317<<48), R4					
  subtraction_test.go:8		0x12beb0		9bc47c63		UMULH R4, R3, R3					
  subtraction_test.go:8		0x12beb4		d34bfc63		LSR $11, R3, R3						
  subtraction_test.go:9		0x12beb8		d3403c04		UBFX $0, R0, $16, R4					
  subtraction_test.go:8		0x12bebc		f100007f		CMP $0, R3						
  subtraction_test.go:8		0x12bec0		9a9f07e3		CSET NE, R3						
  subtraction_test.go:8		0x12bec4		7200007f		TSTW $1, R3						
  subtraction_test.go:8		0x12bec8		d281a023		MOVD $3329, R3						
  subtraction_test.go:8		0x12becc		9a9f1063		CSEL NE, R3, ZR, R3					
  subtraction_test.go:8		0x12bed0		8b030023		ADD R3, R1, R3						
  subtraction_test.go:8		0x12bed4		cb030043		SUB R3, R2, R3						
  subtraction_test.go:8		0x12bed8		91340463		ADD $3329, R3, R3					
  subtraction_test.go:9		0x12bedc		d3403c63		UBFX $0, R3, $16, R3					
  subtraction_test.go:9		0x12bee0		6b04007f		CMPW R4, R3						
  subtraction_test.go:9		0x12bee4		54000060		BEQ 3(PC)						
  subtraction_test.go:9		0x12bee8		b24003e0		ORR $1, ZR, R0						
  subtraction_test.go:9		0x12beec		14000014		JMP 20(PC)						
  subtraction_test.go:9		0x12bef0		b9003fe3		MOVW R3, 60(RSP)					
  subtraction_test.go:9		0x12bef4		aa0203e0		MOVD R2, R0						
  subtraction_test.go:9		0x12bef8		97fffe6a		CALL example.com/pq-small-arithmetic.Sub16Direct(SB)	
  subtraction_test.go:9		0x12befc		d3403c02		UBFX $0, R0, $16, R2					
  subtraction_test.go:9		0x12bf00		b9403fe3		MOVWU 60(RSP), R3					
  subtraction_test.go:9		0x12bf04		6b02007f		CMPW R2, R3						
  subtraction_test.go:9		0x12bf08		54000080		BEQ 4(PC)						
  subtraction_test.go:13	0x12bf0c		a9440be1		LDP 64(RSP), (R1, R2)					
  subtraction_test.go:13	0x12bf10		b24003e0		ORR $1, ZR, R0						
  subtraction_test.go:9		0x12bf14		1400000a		JMP 10(PC)						
  subtraction_test.go:9		0x12bf18		a94403e1		LDP 64(RSP), (R1, R0)					
  subtraction_test.go:9		0x12bf1c		97fffe69		CALL example.com/pq-small-arithmetic.Sub16Guarded(SB)	
  subtraction_test.go:9		0x12bf20		d3403c02		UBFX $0, R0, $16, R2					
  subtraction_test.go:9		0x12bf24		b9403fe3		MOVWU 60(RSP), R3					
  subtraction_test.go:9		0x12bf28		6b03005f		CMPW R3, R2						
  subtraction_test.go:9		0x12bf2c		9a9f07e2		CSET NE, R2						
  subtraction_test.go:13	0x12bf30		f94023e1		MOVD 64(RSP), R1					
  subtraction_test.go:9		0x12bf34		aa0203e0		MOVD R2, R0						
  subtraction_test.go:13	0x12bf38		f94027e2		MOVD 72(RSP), R2					
  subtraction_test.go:9		0x12bf3c		36000300		TBZ $0, R0, 24(PC)					
  subtraction_test.go:10	0x12bf40		910163e1		ADD $88, RSP, R1					
  subtraction_test.go:10	0x12bf44		a9007c3f		STP (ZR, ZR), (R1)					
  subtraction_test.go:10	0x12bf48		a9017c3f		STP (ZR, ZR), 16(R1)					
  subtraction_test.go:10	0x12bf4c		aa0203e0		MOVD R2, R0						
  subtraction_test.go:10	0x12bf50		97fd836c		CALL runtime.convT64(SB)				
  subtraction_test.go:10	0x12bf54		90000a21		ADRP 1327104(PC), R1					
  subtraction_test.go:10	0x12bf58		9122e021		ADD $2232, R1, R1					
  subtraction_test.go:10	0x12bf5c		a90583e1		STP (R1, R0), 88(RSP)					
  subtraction_test.go:10	0x12bf60		f94023e0		MOVD 64(RSP), R0					
  subtraction_test.go:10	0x12bf64		97fd8367		CALL runtime.convT64(SB)				
  subtraction_test.go:10	0x12bf68		90000a21		ADRP 1327104(PC), R1					
  subtraction_test.go:10	0x12bf6c		9122e021		ADD $2232, R1, R1					
  subtraction_test.go:10	0x12bf70		a90683e1		STP (R1, R0), 104(RSP)					
  subtraction_test.go:10	0x12bf74		f9404fe0		MOVD 152(RSP), R0					
  subtraction_test.go:10	0x12bf78		3980001b		MOVB (R0), R27						
  subtraction_test.go:10	0x12bf7c		b0000021		ADRP 20480(PC), R1					
  subtraction_test.go:10	0x12bf80		913fe421		ADD $4089, R1, R1					
  subtraction_test.go:10	0x12bf84		d2800122		MOVD $9, R2						
  subtraction_test.go:10	0x12bf88		910163e3		ADD $88, RSP, R3					
  subtraction_test.go:10	0x12bf8c		b27f03e4		ORR $2, ZR, R4						
  subtraction_test.go:10	0x12bf90		aa0403e5		MOVD R4, R5						
  subtraction_test.go:10	0x12bf94		97fee66f		CALL testing.(*common).Fatalf(SB)			
  subtraction_test.go:13	0x12bf98		a9440be1		LDP 64(RSP), (R1, R2)					
  subtraction_test.go:13	0x12bf9c		aa0203e0		MOVD R2, R0						
  subtraction_test.go:13	0x12bfa0		97fffe58		CALL example.com/pq-small-arithmetic.Sub16Masked(SB)	
  subtraction_test.go:12	0x12bfa4		f94023e2		MOVD 64(RSP), R2					
  subtraction_test.go:12	0x12bfa8		92402843		AND $2047, R2, R3					
  subtraction_test.go:12	0x12bfac		f9402be4		MOVD 80(RSP), R4					
  subtraction_test.go:12	0x12bfb0		cb030085		SUB R3, R4, R5						
  subtraction_test.go:12	0x12bfb4		913404a5		ADD $3329, R5, R5					
  subtraction_test.go:12	0x12bfb8		d294e5e6		MOVD $42799, R6						
  subtraction_test.go:12	0x12bfbc		f2abb046		MOVK $(23938<<16), R6					
  subtraction_test.go:12	0x12bfc0		f2d76806		MOVK $(47936<<32), R6					
  subtraction_test.go:12	0x12bfc4		f2f3afa6		MOVK $(40317<<48), R6					
  subtraction_test.go:12	0x12bfc8		9bc67ca5		UMULH R6, R5, R5					
  subtraction_test.go:12	0x12bfcc		d34bfca5		LSR $11, R5, R5						
  subtraction_test.go:13	0x12bfd0		d3403c06		UBFX $0, R0, $16, R6					
  subtraction_test.go:12	0x12bfd4		f10000bf		CMP $0, R5						
  subtraction_test.go:12	0x12bfd8		9a9f07e5		CSET NE, R5						
  subtraction_test.go:12	0x12bfdc		720000bf		TSTW $1, R5						
  subtraction_test.go:12	0x12bfe0		d281a025		MOVD $3329, R5						
  subtraction_test.go:12	0x12bfe4		9a9f10a5		CSEL NE, R5, ZR, R5					
  subtraction_test.go:12	0x12bfe8		8b050063		ADD R5, R3, R3						
  subtraction_test.go:12	0x12bfec		cb030083		SUB R3, R4, R3						
  subtraction_test.go:12	0x12bff0		91340463		ADD $3329, R3, R3					
  subtraction_test.go:13	0x12bff4		d3403c63		UBFX $0, R3, $16, R3					
  subtraction_test.go:13	0x12bff8		6b0300df		CMPW R3, R6						
  subtraction_test.go:13	0x12bffc		54fff3e0		BEQ -97(PC)						
  subtraction_test.go:14	0x12c000		910163e1		ADD $88, RSP, R1					
  subtraction_test.go:14	0x12c004		a9007c3f		STP (ZR, ZR), (R1)					
  subtraction_test.go:14	0x12c008		a9017c3f		STP (ZR, ZR), 16(R1)					
  subtraction_test.go:14	0x12c00c		f94027e0		MOVD 72(RSP), R0					
  subtraction_test.go:14	0x12c010		97fd833c		CALL runtime.convT64(SB)				
  subtraction_test.go:14	0x12c014		f0000a01		ADRP 1323008(PC), R1					
  subtraction_test.go:14	0x12c018		9122e021		ADD $2232, R1, R1					
  subtraction_test.go:14	0x12c01c		a90583e1		STP (R1, R0), 88(RSP)					
  subtraction_test.go:14	0x12c020		f94023e0		MOVD 64(RSP), R0					
  subtraction_test.go:14	0x12c024		97fd8337		CALL runtime.convT64(SB)				
  subtraction_test.go:14	0x12c028		f0000a01		ADRP 1323008(PC), R1					
  subtraction_test.go:14	0x12c02c		9122e021		ADD $2232, R1, R1					
  subtraction_test.go:14	0x12c030		a90683e1		STP (R1, R0), 104(RSP)					
  subtraction_test.go:14	0x12c034		f9404fe0		MOVD 152(RSP), R0					
  subtraction_test.go:14	0x12c038		3980001b		MOVB (R0), R27						
  subtraction_test.go:14	0x12c03c		f0000021		ADRP 28672(PC), R1					
  subtraction_test.go:14	0x12c040		9103a821		ADD $234, R1, R1					
  subtraction_test.go:14	0x12c044		b27c03e2		ORR $16, ZR, R2						
  subtraction_test.go:14	0x12c048		910163e3		ADD $88, RSP, R3					
  subtraction_test.go:14	0x12c04c		b27f03e4		ORR $2, ZR, R4						
  subtraction_test.go:14	0x12c050		aa0403e5		MOVD R4, R5						
  subtraction_test.go:14	0x12c054		97fee63f		CALL testing.(*common).Fatalf(SB)			
  subtraction_test.go:7		0x12c058		f94023e2		MOVD 64(RSP), R2					
  subtraction_test.go:14	0x12c05c		17ffff87		JMP -121(PC)						
  subtraction_test.go:18	0x12c060		92800000		MOVD $-1, R0						
  subtraction_test.go:18	0x12c064		aa1f03e1		MOVD ZR, R1						
  subtraction_test.go:18	0x12c068		97fffe06		CALL example.com/pq-small-arithmetic.Sub16Original(SB)	
  subtraction_test.go:18	0x12c06c		790077e0		MOVH R0, 58(RSP)					
  subtraction_test.go:18	0x12c070		92800000		MOVD $-1, R0						
  subtraction_test.go:18	0x12c074		aa1f03e1		MOVD ZR, R1						
  subtraction_test.go:18	0x12c078		97fffe0a		CALL example.com/pq-small-arithmetic.Sub16Direct(SB)	
  subtraction_test.go:18	0x12c07c		d3403c02		UBFX $0, R0, $16, R2					
  subtraction_test.go:18	0x12c080		794077e3		MOVHU 58(RSP), R3					
  subtraction_test.go:18	0x12c084		6b02007f		CMPW R2, R3						
  subtraction_test.go:18	0x12c088		54000181		BNE 12(PC)						
  subtraction_test.go:19	0x12c08c		f0000a04		ADRP 1323008(PC), R4					
  subtraction_test.go:19	0x12c090		9119e084		ADD $1656, R4, R4					
  subtraction_test.go:19	0x12c094		d0000085		ADRP 73728(PC), R5					
  subtraction_test.go:19	0x12c098		913a40a5		ADD $3728, R5, R5					
  subtraction_test.go:19	0x12c09c		a90797e4		STP (R4, R5), 120(RSP)					
  subtraction_test.go:19	0x12c0a0		f9404fe0		MOVD 152(RSP), R0					
  subtraction_test.go:19	0x12c0a4		3980001b		MOVB (R0), R27						
  subtraction_test.go:19	0x12c0a8		9101e3e1		ADD $120, RSP, R1					
  subtraction_test.go:19	0x12c0ac		b24003e2		ORR $1, ZR, R2						
  subtraction_test.go:19	0x12c0b0		aa0203e3		MOVD R2, R3						
  subtraction_test.go:19	0x12c0b4		97fee5ef		CALL testing.(*common).Fatal(SB)			
  subtraction_test.go:21	0x12c0b8		92800000		MOVD $-1, R0						
  subtraction_test.go:21	0x12c0bc		aa1f03e1		MOVD ZR, R1						
  subtraction_test.go:21	0x12c0c0		97fffe00		CALL example.com/pq-small-arithmetic.Sub16Guarded(SB)	
  subtraction_test.go:21	0x12c0c4		d3403c02		UBFX $0, R0, $16, R2					
  subtraction_test.go:21	0x12c0c8		34000182		CBZW R2, 12(PC)						
  subtraction_test.go:22	0x12c0cc		f0000a04		ADRP 1323008(PC), R4					
  subtraction_test.go:22	0x12c0d0		9119e084		ADD $1656, R4, R4					
  subtraction_test.go:22	0x12c0d4		d0000085		ADRP 73728(PC), R5					
  subtraction_test.go:22	0x12c0d8		913a80a5		ADD $3744, R5, R5					
  subtraction_test.go:22	0x12c0dc		a90797e4		STP (R4, R5), 120(RSP)					
  subtraction_test.go:22	0x12c0e0		f9404fe0		MOVD 152(RSP), R0					
  subtraction_test.go:22	0x12c0e4		3980001b		MOVB (R0), R27						
  subtraction_test.go:22	0x12c0e8		9101e3e1		ADD $120, RSP, R1					
  subtraction_test.go:22	0x12c0ec		b24003e2		ORR $1, ZR, R2						
  subtraction_test.go:22	0x12c0f0		aa0203e3		MOVD R2, R3						
  subtraction_test.go:22	0x12c0f4		97fee5df		CALL testing.(*common).Fatal(SB)			
  subtraction_test.go:24	0x12c0f8		f85f83fd		MOVD -8(RSP), R29					
  subtraction_test.go:24	0x12c0fc		f84907fe		MOVD.P 144(RSP), R30					
  subtraction_test.go:24	0x12c100		d65f03c0		RET							
  subtraction_test.go:5		0x12c104		f90007e0		MOVD R0, 8(RSP)						
  subtraction_test.go:5		0x12c108		aa1e03e3		MOVD R30, R3						
  subtraction_test.go:5		0x12c10c		97fd9bc1		CALL runtime.morestack_noctxt.abi0(SB)			
  subtraction_test.go:5		0x12c110		f94007e0		MOVD 8(RSP), R0						
  subtraction_test.go:5		0x12c114		17ffff47		JMP example.com/pq-small-arithmetic.TestSub16(SB)	
  subtraction_test.go:5		0x12c118		00000000		?							
  subtraction_test.go:5		0x12c11c		00000000		?							
