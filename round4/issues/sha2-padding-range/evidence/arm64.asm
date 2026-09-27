TEXT example.com/paddingrange.Branch256(SB) /home/exedev/crypto-audit/round4/issues/sha2-padding-range/repro.go
  repro.go:6		0x12b5d0		f9400b90		MOVD 16(R28), R16				
  repro.go:6		0x12b5d4		eb3063ff		CMP R16, RSP					
  repro.go:6		0x12b5d8		540004a9		BLS 37(PC)					
  repro.go:6		0x12b5dc		f81f0ffe		MOVD.W R30, -16(RSP)				
  repro.go:6		0x12b5e0		f81f83fd		MOVD R29, -8(RSP)				
  repro.go:6		0x12b5e4		d10023fd		SUB $8, RSP, R29				
  repro.go:6		0x12b5e8		910063e1		ADD $24, RSP, R1				
  repro.go:6		0x12b5ec		a9007c3f		STP (ZR, ZR), (R1)				
  repro.go:6		0x12b5f0		a9017c3f		STP (ZR, ZR), 16(R1)				
  repro.go:6		0x12b5f4		a9027c3f		STP (ZR, ZR), 32(R1)				
  repro.go:6		0x12b5f8		a9037c3f		STP (ZR, ZR), 48(R1)				
  repro.go:6		0x12b5fc		f900203f		MOVD ZR, 64(R1)					
  repro.go:8		0x12b600		92800fe2		MOVD $-128, R2					
  repro.go:8		0x12b604		390063e2		MOVB R2, 24(RSP)				
  repro.go:10		0x12b608		92401402		AND $63, R0, R2					
  repro.go:10		0x12b60c		b27d0be3		ORR $56, ZR, R3					
  repro.go:10		0x12b610		cb020063		SUB R2, R3, R3					
  repro.go:10		0x12b614		b27d0fe4		ORR $120, ZR, R4				
  repro.go:10		0x12b618		cb020084		SUB R2, R4, R4					
  repro.go:10		0x12b61c		f100e05f		CMP $56, R2					
  repro.go:11		0x12b620		9a843062		CSEL LO, R3, R4, R2				
  repro.go:11		0x12b624		91002043		ADD $8, R2, R3					
  repro.go:11		0x12b628		f101207f		CMP $72, R3					
  repro.go:10		0x12b62c		540001a8		BHI 13(PC)					
  repro.go:12		0x12b630		eb03005f		CMP R3, R2					
  repro.go:12		0x12b634		54000148		BHI 10(PC)					
  repro.go:12		0x12b638		d1012044		SUB $72, R2, R4					
  repro.go:12		0x12b63c		8a84fc42		AND R4->63, R2, R2				
  repro.go:12		0x12b640		d37df004		LSL $3, R0, R4					
  binary.go:217		0x12b644		dac00c84		REV R4, R4					
  binary.go:210		0x12b648		f8226824		MOVD R4, (R1)(R2)				
  repro.go:13		0x12b64c		aa0303e0		MOVD R3, R0					
  repro.go:13		0x12b650		f85f83fd		MOVD -8(RSP), R29				
  repro.go:13		0x12b654		f84107fe		MOVD.P 16(RSP), R30				
  repro.go:13		0x12b658		d65f03c0		RET						
  repro.go:12		0x12b65c		97fda6a5		CALL runtime.panicBounds(SB)			
  repro.go:11		0x12b660		d2800900		MOVD $72, R0					
  repro.go:11		0x12b664		97fda6a3		CALL runtime.panicBounds(SB)			
  repro.go:11		0x12b668		d503201f		NOOP						
  repro.go:6		0x12b66c		f9002be0		MOVD R0, 80(RSP)				
  repro.go:6		0x12b670		aa1e03e3		MOVD R30, R3					
  repro.go:6		0x12b674		97fd9e67		CALL runtime.morestack_noctxt.abi0(SB)		
  repro.go:6		0x12b678		f9402be0		MOVD 80(RSP), R0				
  repro.go:6		0x12b67c		17ffffd5		JMP example.com/paddingrange.Branch256(SB)	

TEXT example.com/paddingrange.Mask256(SB) /home/exedev/crypto-audit/round4/issues/sha2-padding-range/repro.go
  repro.go:17		0x12b680		910023e1		ADD $8, RSP, R1		
  repro.go:17		0x12b684		a9007c3f		STP (ZR, ZR), (R1)	
  repro.go:17		0x12b688		a9017c3f		STP (ZR, ZR), 16(R1)	
  repro.go:17		0x12b68c		a9027c3f		STP (ZR, ZR), 32(R1)	
  repro.go:17		0x12b690		a9037c3f		STP (ZR, ZR), 48(R1)	
  repro.go:17		0x12b694		f900203f		MOVD ZR, 64(R1)		
  repro.go:19		0x12b698		92800fe2		MOVD $-128, R2		
  repro.go:19		0x12b69c		390023e2		MOVB R2, 8(RSP)		
  repro.go:20		0x12b6a0		d28006e2		MOVD $55, R2		
  repro.go:20		0x12b6a4		cb000042		SUB R0, R2, R2		
  repro.go:20		0x12b6a8		92401442		AND $63, R2, R2		
  repro.go:20		0x12b6ac		91000443		ADD $1, R2, R3		
  repro.go:21		0x12b6b0		91002442		ADD $9, R2, R2		
  repro.go:22		0x12b6b4		d37df004		LSL $3, R0, R4		
  binary.go:217		0x12b6b8		dac00c84		REV R4, R4		
  binary.go:210		0x12b6bc		f8236824		MOVD R4, (R1)(R3)	
  repro.go:23		0x12b6c0		aa0203e0		MOVD R2, R0		
  repro.go:23		0x12b6c4		d65f03c0		RET			
  repro.go:23		0x12b6c8		00000000		?			
  repro.go:23		0x12b6cc		00000000		?			

TEXT example.com/paddingrange.Branch512(SB) /home/exedev/crypto-audit/round4/issues/sha2-padding-range/repro.go
  repro.go:27		0x12b6d0		f9400b90		MOVD 16(R28), R16				
  repro.go:27		0x12b6d4		eb3063ff		CMP R16, RSP					
  repro.go:27		0x12b6d8		54000549		BLS 42(PC)					
  repro.go:27		0x12b6dc		f81f0ffe		MOVD.W R30, -16(RSP)				
  repro.go:27		0x12b6e0		f81f83fd		MOVD R29, -8(RSP)				
  repro.go:27		0x12b6e4		d10023fd		SUB $8, RSP, R29				
  repro.go:27		0x12b6e8		910063e1		ADD $24, RSP, R1				
  repro.go:27		0x12b6ec		a9007c3f		STP (ZR, ZR), (R1)				
  repro.go:27		0x12b6f0		a9017c3f		STP (ZR, ZR), 16(R1)				
  repro.go:27		0x12b6f4		a9027c3f		STP (ZR, ZR), 32(R1)				
  repro.go:27		0x12b6f8		a9037c3f		STP (ZR, ZR), 48(R1)				
  repro.go:27		0x12b6fc		a9047c3f		STP (ZR, ZR), 64(R1)				
  repro.go:27		0x12b700		a9057c3f		STP (ZR, ZR), 80(R1)				
  repro.go:27		0x12b704		a9067c3f		STP (ZR, ZR), 96(R1)				
  repro.go:27		0x12b708		a9077c3f		STP (ZR, ZR), 112(R1)				
  repro.go:27		0x12b70c		a9087c3f		STP (ZR, ZR), 128(R1)				
  repro.go:29		0x12b710		92800fe2		MOVD $-128, R2					
  repro.go:29		0x12b714		390063e2		MOVB R2, 24(RSP)				
  repro.go:31		0x12b718		92401802		AND $127, R0, R2				
  repro.go:31		0x12b71c		b27c0be3		ORR $112, ZR, R3				
  repro.go:31		0x12b720		cb020063		SUB R2, R3, R3					
  repro.go:31		0x12b724		b27c0fe4		ORR $240, ZR, R4				
  repro.go:31		0x12b728		cb020084		SUB R2, R4, R4					
  repro.go:31		0x12b72c		f101c05f		CMP $112, R2					
  repro.go:32		0x12b730		9a843062		CSEL LO, R3, R4, R2				
  repro.go:32		0x12b734		91004043		ADD $16, R2, R3					
  repro.go:32		0x12b738		f102407f		CMP $144, R3					
  repro.go:31		0x12b73c		540001c8		BHI 14(PC)					
  repro.go:33		0x12b740		91002044		ADD $8, R2, R4					
  repro.go:33		0x12b744		eb03009f		CMP R3, R4					
  repro.go:33		0x12b748		54000148		BHI 10(PC)					
  repro.go:33		0x12b74c		d1022042		SUB $136, R2, R2				
  repro.go:33		0x12b750		8a82fc82		AND R2->63, R4, R2				
  repro.go:33		0x12b754		d37df004		LSL $3, R0, R4					
  binary.go:217		0x12b758		dac00c84		REV R4, R4					
  binary.go:210		0x12b75c		f8226824		MOVD R4, (R1)(R2)				
  repro.go:34		0x12b760		aa0303e0		MOVD R3, R0					
  repro.go:34		0x12b764		f85f83fd		MOVD -8(RSP), R29				
  repro.go:34		0x12b768		f84107fe		MOVD.P 16(RSP), R30				
  repro.go:34		0x12b76c		d65f03c0		RET						
  repro.go:33		0x12b770		97fda660		CALL runtime.panicBounds(SB)			
  repro.go:32		0x12b774		d2801200		MOVD $144, R0					
  repro.go:32		0x12b778		97fda65e		CALL runtime.panicBounds(SB)			
  repro.go:32		0x12b77c		d503201f		NOOP						
  repro.go:27		0x12b780		f9004fe0		MOVD R0, 152(RSP)				
  repro.go:27		0x12b784		aa1e03e3		MOVD R30, R3					
  repro.go:27		0x12b788		97fd9e22		CALL runtime.morestack_noctxt.abi0(SB)		
  repro.go:27		0x12b78c		f9404fe0		MOVD 152(RSP), R0				
  repro.go:27		0x12b790		17ffffd0		JMP example.com/paddingrange.Branch512(SB)	
  repro.go:27		0x12b794		00000000		?						
  repro.go:27		0x12b798		00000000		?						
  repro.go:27		0x12b79c		00000000		?						

TEXT example.com/paddingrange.Mask512(SB) /home/exedev/crypto-audit/round4/issues/sha2-padding-range/repro.go
  repro.go:38		0x12b7a0		910023e1		ADD $8, RSP, R1		
  repro.go:38		0x12b7a4		a9007c3f		STP (ZR, ZR), (R1)	
  repro.go:38		0x12b7a8		a9017c3f		STP (ZR, ZR), 16(R1)	
  repro.go:38		0x12b7ac		a9027c3f		STP (ZR, ZR), 32(R1)	
  repro.go:38		0x12b7b0		a9037c3f		STP (ZR, ZR), 48(R1)	
  repro.go:38		0x12b7b4		a9047c3f		STP (ZR, ZR), 64(R1)	
  repro.go:38		0x12b7b8		a9057c3f		STP (ZR, ZR), 80(R1)	
  repro.go:38		0x12b7bc		a9067c3f		STP (ZR, ZR), 96(R1)	
  repro.go:38		0x12b7c0		a9077c3f		STP (ZR, ZR), 112(R1)	
  repro.go:38		0x12b7c4		a9087c3f		STP (ZR, ZR), 128(R1)	
  repro.go:40		0x12b7c8		92800fe2		MOVD $-128, R2		
  repro.go:40		0x12b7cc		390023e2		MOVB R2, 8(RSP)		
  repro.go:41		0x12b7d0		d2800de2		MOVD $111, R2		
  repro.go:41		0x12b7d4		cb000042		SUB R0, R2, R2		
  repro.go:41		0x12b7d8		92401842		AND $127, R2, R2	
  repro.go:42		0x12b7dc		91004443		ADD $17, R2, R3		
  repro.go:43		0x12b7e0		91002442		ADD $9, R2, R2		
  repro.go:43		0x12b7e4		d37df004		LSL $3, R0, R4		
  binary.go:217		0x12b7e8		dac00c84		REV R4, R4		
  binary.go:210		0x12b7ec		f8226824		MOVD R4, (R1)(R2)	
  repro.go:44		0x12b7f0		aa0303e0		MOVD R3, R0		
  repro.go:44		0x12b7f4		d65f03c0		RET			
  repro.go:44		0x12b7f8		00000000		?			
  repro.go:44		0x12b7fc		00000000		?			

TEXT example.com/paddingrange.TestPadding(SB) /home/exedev/crypto-audit/round4/issues/sha2-padding-range/repro_test.go
  repro_test.go:5	0x12b800		f9400b90		MOVD 16(R28), R16				
  repro_test.go:5	0x12b804		d10bc3f1		SUB $752, RSP, R17				
  repro_test.go:5	0x12b808		eb10023f		CMP R16, R17					
  repro_test.go:5	0x12b80c		54002f29		BLS 377(PC)					
  repro_test.go:5	0x12b810		d10dc3f4		SUB $880, RSP, R20				
  repro_test.go:5	0x12b814		a93ffa9d		STP (R29, R30), -8(R20)				
  repro_test.go:5	0x12b818		9100029f		MOVD R20, RSP					
  repro_test.go:5	0x12b81c		d10023fd		SUB $8, RSP, R29				
  repro_test.go:7	0x12b820		f901bfe0		MOVD R0, 888(RSP)				
  repro_test.go:7	0x12b824		910ba3e3		ADD $744, RSP, R3				
  repro_test.go:7	0x12b828		a9007c7f		STP (ZR, ZR), (R3)				
  repro_test.go:7	0x12b82c		a9017c7f		STP (ZR, ZR), 16(R3)				
  repro_test.go:7	0x12b830		f900107f		MOVD ZR, 32(R3)					
  repro_test.go:7	0x12b834		b27603e4		ORR $1024, ZR, R4				
  repro_test.go:7	0x12b838		d2c00025		MOVD $4294967296, R5				
  repro_test.go:7	0x12b83c		910bc3fb		ADD $752, RSP, R27				
  repro_test.go:7	0x12b840		a9001764		STP (R4, R5), (R27)				
  repro_test.go:7	0x12b844		d2f00004		MOVD $-9223372036854775808, R4			
  repro_test.go:7	0x12b848		92807fe5		MOVD $-1024, R5					
  repro_test.go:7	0x12b84c		910c03fb		ADD $768, RSP, R27				
  repro_test.go:7	0x12b850		a9001764		STP (R4, R5), (R27)				
  repro_test.go:7	0x12b854		aa1f03e4		MOVD ZR, R4					
  repro_test.go:7	0x12b858		14000002		JMP 2(PC)					
  repro_test.go:7	0x12b85c		91000484		ADD $1, R4, R4					
  repro_test.go:7	0x12b860		f100149f		CMP $5, R4					
  repro_test.go:7	0x12b864		54001cca		BGE 230(PC)					
  repro_test.go:7	0x12b868		f9015be4		MOVD R4, 688(RSP)				
  repro_test.go:7	0x12b86c		f8647865		MOVD (R3)(R4<<3), R5				
  repro_test.go:7	0x12b870		f9014be5		MOVD R5, 656(RSP)				
  repro_test.go:8	0x12b874		aa1f03e6		MOVD ZR, R6					
  repro_test.go:8	0x12b878		14000002		JMP 2(PC)					
  repro_test.go:8	0x12b87c		910004c6		ADD $1, R6, R6					
  repro_test.go:8	0x12b880		f11000df		CMP $1024, R6					
  repro_test.go:8	0x12b884		54fffec2		BCS -10(PC)					
  repro_test.go:8	0x12b888		f9012fe6		MOVD R6, 600(RSP)				
  repro_test.go:12	0x12b88c		b27a03e7		ORR $64, ZR, R7					
  repro_test.go:12	0x12b890		b27903e8		ORR $128, ZR, R8				
  repro_test.go:12	0x12b894		910b63fb		ADD $728, RSP, R27				
  repro_test.go:12	0x12b898		a9002367		STP (R7, R8), (R27)				
  repro_test.go:9	0x12b89c		8b0500c9		ADD R5, R6, R9					
  repro_test.go:9	0x12b8a0		f90133e9		MOVD R9, 608(RSP)				
  repro_test.go:12	0x12b8a4		aa1f03ea		MOVD ZR, R10					
  repro_test.go:12	0x12b8a8		14000009		JMP 9(PC)					
  repro_test.go:12	0x12b8ac		f94157eb		MOVD 680(RSP), R11				
  repro_test.go:12	0x12b8b0		9100056a		ADD $1, R11, R10				
  repro_test.go:7	0x12b8b4		910ba3e3		ADD $744, RSP, R3				
  repro_test.go:7	0x12b8b8		f9415be4		MOVD 688(RSP), R4				
  repro_test.go:9	0x12b8bc		f9414be5		MOVD 656(RSP), R5				
  repro_test.go:8	0x12b8c0		f9412fe6		MOVD 600(RSP), R6				
  repro_test.go:8	0x12b8c4		b27a03e7		ORR $64, ZR, R7					
  repro_test.go:8	0x12b8c8		b27903e8		ORR $128, ZR, R8				
  repro_test.go:12	0x12b8cc		f100095f		CMP $2, R10					
  repro_test.go:12	0x12b8d0		54fffd6a		BGE -21(PC)					
  repro_test.go:12	0x12b8d4		910b63eb		ADD $728, RSP, R11				
  repro_test.go:12	0x12b8d8		f86a796c		MOVD (R11)(R10<<3), R12				
  repro_test.go:14	0x12b8dc		cb4c0d8d		SUB R12>>3, R12, R13				
  repro_test.go:16	0x12b8e0		b24003ee		ORR $1, ZR, R14					
  repro_test.go:16	0x12b8e4		14000002		JMP 2(PC)					
  repro_test.go:16	0x12b8e8		910005ce		ADD $1, R14, R14				
  repro_test.go:16	0x12b8ec		8b0901cf		ADD R9, R14, R15				
  repro_test.go:16	0x12b8f0		b40027cc		CBZ R12, 318(PC)				
  repro_test.go:16	0x12b8f4		9acc09f0		UDIV R12, R15, R16				
  repro_test.go:16	0x12b8f8		9b0cbe0f		MSUB R12, R15, R16, R15				
  repro_test.go:16	0x12b8fc		eb0f01bf		CMP R15, R13					
  repro_test.go:16	0x12b900		54ffff41		BNE -6(PC)					
  repro_test.go:12	0x12b904		f90157ea		MOVD R10, 680(RSP)				
  repro_test.go:12	0x12b908		f90147ec		MOVD R12, 648(RSP)				
  repro_test.go:16	0x12b90c		f9012bee		MOVD R14, 592(RSP)				
  repro_test.go:17	0x12b910		8b4c0d82		ADD R12>>3, R12, R2				
  repro_test.go:17	0x12b914		f90153e2		MOVD R2, 672(RSP)				
  repro_test.go:17	0x12b918		f100805f		CMP $32, R2					
  repro_test.go:17	0x12b91c		540000c8		BHI 6(PC)					
  repro_test.go:17	0x12b920		910ae3ed		ADD $696, RSP, R13				
  repro_test.go:17	0x12b924		a9007dbf		STP (ZR, ZR), (R13)				
  repro_test.go:17	0x12b928		a9017dbf		STP (ZR, ZR), 16(R13)				
  repro_test.go:17	0x12b92c		910ae3e1		ADD $696, RSP, R1				
  repro_test.go:17	0x12b930		1400000e		JMP 14(PC)					
  repro_test.go:17	0x12b934		f0000a00		ADRP 1323008(PC), R0				
  repro_test.go:17	0x12b938		912e6000		ADD $2968, R0, R0				
  repro_test.go:17	0x12b93c		aa0203e1		MOVD R2, R1					
  repro_test.go:17	0x12b940		97fd9300		CALL runtime.makeslice(SB)			
  repro_test.go:18	0x12b944		f94153e2		MOVD 672(RSP), R2				
  repro_test.go:7	0x12b948		910ba3e3		ADD $744, RSP, R3				
  repro_test.go:7	0x12b94c		b27a03e7		ORR $64, ZR, R7					
  repro_test.go:7	0x12b950		b27903e8		ORR $128, ZR, R8				
  repro_test.go:19	0x12b954		f94133e9		MOVD 608(RSP), R9				
  repro_test.go:12	0x12b958		910b63eb		ADD $728, RSP, R11				
  repro_test.go:19	0x12b95c		f94147ec		MOVD 648(RSP), R12				
  repro_test.go:19	0x12b960		f9412bee		MOVD 592(RSP), R14				
  repro_test.go:18	0x12b964		aa0003e1		MOVD R0, R1					
  repro_test.go:18	0x12b968		b40023e2		CBZ R2, 287(PC)					
  repro_test.go:18	0x12b96c		92800fed		MOVD $-128, R13					
  repro_test.go:18	0x12b970		3900002d		MOVB R13, (R1)					
  repro_test.go:19	0x12b974		d37df12f		LSL $3, R9, R15					
  repro_test.go:19	0x12b978		aa1f03f0		MOVD ZR, R16					
  repro_test.go:19	0x12b97c		14000003		JMP 3(PC)					
  repro_test.go:19	0x12b980		38316834		MOVB R20, (R1)(R17)				
  repro_test.go:19	0x12b984		91000610		ADD $1, R16, R16				
  repro_test.go:19	0x12b988		f100221f		CMP $8, R16					
  repro_test.go:19	0x12b98c		54000142		BCS 10(PC)					
  repro_test.go:19	0x12b990		8b4c0dd1		ADD R12>>3, R14, R17				
  repro_test.go:19	0x12b994		8b110211		ADD R17, R16, R17				
  repro_test.go:19	0x12b998		d1002231		SUB $8, R17, R17				
  repro_test.go:19	0x12b99c		b27d0bf3		ORR $56, ZR, R19				
  repro_test.go:19	0x12b9a0		cb100e74		SUB R16<<3, R19, R20				
  repro_test.go:19	0x12b9a4		9ad425f4		LSR R20, R15, R20				
  repro_test.go:19	0x12b9a8		eb11005f		CMP R17, R2					
  repro_test.go:19	0x12b9ac		54fffea8		BHI -11(PC)					
  repro_test.go:19	0x12b9b0		1400010b		JMP 267(PC)					
  repro_test.go:18	0x12b9b4		f9018be1		MOVD R1, 784(RSP)				
  repro_test.go:20	0x12b9b8		f101019f		CMP $64, R12					
  repro_test.go:20	0x12b9bc		54000121		BNE 9(PC)					
  repro_test.go:21	0x12b9c0		d0000b0f		ADRP 1449984(PC), R15				
  repro_test.go:21	0x12b9c4		9117a1ef		ADD $1512, R15, R15				
  repro_test.go:21	0x12b9c8		d0000b10		ADRP 1449984(PC), R16				
  repro_test.go:21	0x12b9cc		9117e210		ADD $1528, R16, R16				
  repro_test.go:21	0x12b9d0		910ca3fb		ADD $808, RSP, R27				
  repro_test.go:21	0x12b9d4		a900436f		STP (R15, R16), (R27)				
  repro_test.go:21	0x12b9d8		aa1f03f1		MOVD ZR, R17					
  repro_test.go:21	0x12b9dc		1400008f		JMP 143(PC)					
  repro_test.go:27	0x12b9e0		d0000b0f		ADRP 1449984(PC), R15				
  repro_test.go:27	0x12b9e4		9117c1ef		ADD $1520, R15, R15				
  repro_test.go:27	0x12b9e8		d0000b10		ADRP 1449984(PC), R16				
  repro_test.go:27	0x12b9ec		91180210		ADD $1536, R16, R16				
  repro_test.go:27	0x12b9f0		910c63fb		ADD $792, RSP, R27				
  repro_test.go:27	0x12b9f4		a900436f		STP (R15, R16), (R27)				
  repro_test.go:27	0x12b9f8		aa1f03f1		MOVD ZR, R17					
  repro_test.go:27	0x12b9fc		14000004		JMP 4(PC)					
  repro_test.go:27	0x12ba00		f9414fe5		MOVD 664(RSP), R5				
  repro_test.go:27	0x12ba04		910004b1		ADD $1, R5, R17					
  repro_test.go:28	0x12ba08		f94133e9		MOVD 608(RSP), R9				
  repro_test.go:27	0x12ba0c		f1000a3f		CMP $2, R17					
  repro_test.go:27	0x12ba10		54fff4ea		BGE -89(PC)					
  repro_test.go:27	0x12ba14		f9014ff1		MOVD R17, 664(RSP)				
  repro_test.go:27	0x12ba18		910c63e1		ADD $792, RSP, R1				
  repro_test.go:27	0x12ba1c		f871783a		MOVD (R1)(R17<<3), R26				
  repro_test.go:28	0x12ba20		f9400341		MOVD (R26), R1					
  repro_test.go:28	0x12ba24		aa0903e0		MOVD R9, R0					
  repro_test.go:28	0x12ba28		d63f0020		CALL (R1)					
  repro_test.go:28	0x12ba2c		9105e3e1		ADD $376, RSP, R1				
  repro_test.go:28	0x12ba30		910023e2		ADD $8, RSP, R2					
  repro_test.go:28	0x12ba34		ad404450		FLDPQ (R2), (F16, F17)				
  repro_test.go:28	0x12ba38		ad004430		FSTPQ (F16, F17), (R1)				
  repro_test.go:28	0x12ba3c		ad414450		FLDPQ 32(R2), (F16, F17)			
  repro_test.go:28	0x12ba40		ad014430		FSTPQ (F16, F17), 32(R1)			
  repro_test.go:28	0x12ba44		ad424450		FLDPQ 64(R2), (F16, F17)			
  repro_test.go:28	0x12ba48		ad024430		FSTPQ (F16, F17), 64(R1)			
  repro_test.go:28	0x12ba4c		ad434450		FLDPQ 96(R2), (F16, F17)			
  repro_test.go:28	0x12ba50		ad034430		FSTPQ (F16, F17), 96(R1)			
  repro_test.go:28	0x12ba54		3dc02050		FMOVQ 128(R2), F16				
  repro_test.go:28	0x12ba58		3d802030		FMOVQ F16, 128(R1)				
  repro_test.go:28	0x12ba5c		910283e2		ADD $160, RSP, R2				
  repro_test.go:28	0x12ba60		ad404430		FLDPQ (R1), (F16, F17)				
  repro_test.go:28	0x12ba64		ad004450		FSTPQ (F16, F17), (R2)				
  repro_test.go:28	0x12ba68		ad414430		FLDPQ 32(R1), (F16, F17)			
  repro_test.go:28	0x12ba6c		ad014450		FSTPQ (F16, F17), 32(R2)			
  repro_test.go:28	0x12ba70		ad424430		FLDPQ 64(R1), (F16, F17)			
  repro_test.go:28	0x12ba74		ad024450		FSTPQ (F16, F17), 64(R2)			
  repro_test.go:28	0x12ba78		ad434430		FLDPQ 96(R1), (F16, F17)			
  repro_test.go:28	0x12ba7c		ad034450		FSTPQ (F16, F17), 96(R2)			
  repro_test.go:28	0x12ba80		3dc02030		FMOVQ 128(R1), F16				
  repro_test.go:28	0x12ba84		3d802050		FMOVQ F16, 128(R2)				
  repro_test.go:29	0x12ba88		f9412be3		MOVD 592(RSP), R3				
  repro_test.go:29	0x12ba8c		f94147e4		MOVD 648(RSP), R4				
  repro_test.go:29	0x12ba90		8b440c65		ADD R4>>3, R3, R5				
  repro_test.go:29	0x12ba94		eb05001f		CMP R5, R0					
  repro_test.go:29	0x12ba98		54000400		BEQ 32(PC)					
  repro_test.go:28	0x12ba9c		f90137e0		MOVD R0, 616(RSP)				
  repro_test.go:29	0x12baa0		910ce3e1		ADD $824, RSP, R1				
  repro_test.go:29	0x12baa4		a9007c3f		STP (ZR, ZR), (R1)				
  repro_test.go:29	0x12baa8		a9017c3f		STP (ZR, ZR), 16(R1)				
  repro_test.go:29	0x12baac		a9027c3f		STP (ZR, ZR), 32(R1)				
  repro_test.go:29	0x12bab0		f94133e0		MOVD 608(RSP), R0				
  repro_test.go:29	0x12bab4		97fd8493		CALL runtime.convT64(SB)			
  repro_test.go:29	0x12bab8		f0000a01		ADRP 1323008(PC), R1				
  repro_test.go:29	0x12babc		91346021		ADD $3352, R1, R1				
  repro_test.go:29	0x12bac0		910ce3fb		ADD $824, RSP, R27				
  repro_test.go:29	0x12bac4		a9000361		STP (R1, R0), (R27)				
  repro_test.go:29	0x12bac8		f94147e0		MOVD 648(RSP), R0				
  repro_test.go:29	0x12bacc		97fd848d		CALL runtime.convT64(SB)			
  repro_test.go:29	0x12bad0		f0000a01		ADRP 1323008(PC), R1				
  repro_test.go:29	0x12bad4		91346021		ADD $3352, R1, R1				
  repro_test.go:29	0x12bad8		910d23fb		ADD $840, RSP, R27				
  repro_test.go:29	0x12badc		a9000361		STP (R1, R0), (R27)				
  repro_test.go:29	0x12bae0		f94137e0		MOVD 616(RSP), R0				
  repro_test.go:29	0x12bae4		97fd8487		CALL runtime.convT64(SB)			
  repro_test.go:29	0x12bae8		f0000a01		ADRP 1323008(PC), R1				
  repro_test.go:29	0x12baec		91346021		ADD $3352, R1, R1				
  repro_test.go:29	0x12baf0		910d63fb		ADD $856, RSP, R27				
  repro_test.go:29	0x12baf4		a9000361		STP (R1, R0), (R27)				
  repro_test.go:29	0x12baf8		f941bfe0		MOVD 888(RSP), R0				
  repro_test.go:29	0x12bafc		3980001b		MOVB (R0), R27					
  repro_test.go:29	0x12bb00		910ce3e1		ADD $824, RSP, R1				
  repro_test.go:29	0x12bb04		b24007e2		ORR $3, ZR, R2					
  repro_test.go:29	0x12bb08		aa0203e3		MOVD R2, R3					
  repro_test.go:29	0x12bb0c		97fee759		CALL testing.(*common).Fatal(SB)		
  repro_test.go:28	0x12bb10		9105e3e1		ADD $376, RSP, R1				
  repro_test.go:28	0x12bb14		910283e2		ADD $160, RSP, R2				
  repro_test.go:30	0x12bb18		ad404450		FLDPQ (R2), (F16, F17)				
  repro_test.go:30	0x12bb1c		ad004430		FSTPQ (F16, F17), (R1)				
  repro_test.go:30	0x12bb20		ad414450		FLDPQ 32(R2), (F16, F17)			
  repro_test.go:30	0x12bb24		ad014430		FSTPQ (F16, F17), 32(R1)			
  repro_test.go:30	0x12bb28		ad424450		FLDPQ 64(R2), (F16, F17)			
  repro_test.go:30	0x12bb2c		ad024430		FSTPQ (F16, F17), 64(R1)			
  repro_test.go:30	0x12bb30		ad434450		FLDPQ 96(R2), (F16, F17)			
  repro_test.go:30	0x12bb34		ad034430		FSTPQ (F16, F17), 96(R1)			
  repro_test.go:30	0x12bb38		3dc02050		FMOVQ 128(R2), F16				
  repro_test.go:30	0x12bb3c		3d802030		FMOVQ F16, 128(R1)				
  repro_test.go:30	0x12bb40		aa1f03e5		MOVD ZR, R5					
  repro_test.go:30	0x12bb44		f94153e6		MOVD 672(RSP), R6				
  repro_test.go:30	0x12bb48		f9418be7		MOVD 784(RSP), R7				
  repro_test.go:30	0x12bb4c		14000002		JMP 2(PC)					
  repro_test.go:30	0x12bb50		910004a5		ADD $1, R5, R5					
  repro_test.go:30	0x12bb54		f10240bf		CMP $144, R5					
  repro_test.go:30	0x12bb58		54fff54a		BGE -86(PC)					
  repro_test.go:30	0x12bb5c		38656828		MOVBU (R1)(R5), R8				
  repro_test.go:30	0x12bb60		eb0600bf		CMP R6, R5					
  repro_test.go:30	0x12bb64		54000522		BCS 41(PC)					
  repro_test.go:30	0x12bb68		386568e9		MOVBU (R7)(R5), R9				
  repro_test.go:30	0x12bb6c		6b09011f		CMPW R9, R8					
  repro_test.go:30	0x12bb70		54ffff00		BEQ -8(PC)					
  repro_test.go:30	0x12bb74		f9013fe5		MOVD R5, 632(RSP)				
  repro_test.go:30	0x12bb78		910ce3e1		ADD $824, RSP, R1				
  repro_test.go:30	0x12bb7c		a9007c3f		STP (ZR, ZR), (R1)				
  repro_test.go:30	0x12bb80		a9017c3f		STP (ZR, ZR), 16(R1)				
  repro_test.go:30	0x12bb84		a9027c3f		STP (ZR, ZR), 32(R1)				
  repro_test.go:30	0x12bb88		f94133e0		MOVD 608(RSP), R0				
  repro_test.go:30	0x12bb8c		97fd845d		CALL runtime.convT64(SB)			
  repro_test.go:30	0x12bb90		f0000a01		ADRP 1323008(PC), R1				
  repro_test.go:30	0x12bb94		91346021		ADD $3352, R1, R1				
  repro_test.go:30	0x12bb98		910ce3fb		ADD $824, RSP, R27				
  repro_test.go:30	0x12bb9c		a9000361		STP (R1, R0), (R27)				
  repro_test.go:30	0x12bba0		f94147e0		MOVD 648(RSP), R0				
  repro_test.go:30	0x12bba4		97fd8457		CALL runtime.convT64(SB)			
  repro_test.go:30	0x12bba8		f0000a01		ADRP 1323008(PC), R1				
  repro_test.go:30	0x12bbac		91346021		ADD $3352, R1, R1				
  repro_test.go:30	0x12bbb0		910d23fb		ADD $840, RSP, R27				
  repro_test.go:30	0x12bbb4		a9000361		STP (R1, R0), (R27)				
  repro_test.go:30	0x12bbb8		f9413fe0		MOVD 632(RSP), R0				
  repro_test.go:30	0x12bbbc		97fd8451		CALL runtime.convT64(SB)			
  repro_test.go:30	0x12bbc0		f0000a01		ADRP 1323008(PC), R1				
  repro_test.go:30	0x12bbc4		91356021		ADD $3416, R1, R1				
  repro_test.go:30	0x12bbc8		910d63fb		ADD $856, RSP, R27				
  repro_test.go:30	0x12bbcc		a9000361		STP (R1, R0), (R27)				
  repro_test.go:30	0x12bbd0		f941bfe0		MOVD 888(RSP), R0				
  repro_test.go:30	0x12bbd4		3980001b		MOVB (R0), R27					
  repro_test.go:30	0x12bbd8		910ce3e1		ADD $824, RSP, R1				
  repro_test.go:30	0x12bbdc		b24007e2		ORR $3, ZR, R2					
  repro_test.go:30	0x12bbe0		aa0203e3		MOVD R2, R3					
  repro_test.go:30	0x12bbe4		97fee723		CALL testing.(*common).Fatal(SB)		
  repro_test.go:28	0x12bbe8		9105e3e1		ADD $376, RSP, R1				
  repro_test.go:30	0x12bbec		f9413fe5		MOVD 632(RSP), R5				
  repro_test.go:30	0x12bbf0		f94153e6		MOVD 672(RSP), R6				
  repro_test.go:30	0x12bbf4		f9418be7		MOVD 784(RSP), R7				
  repro_test.go:30	0x12bbf8		17ffffd6		JMP -42(PC)					
  repro_test.go:36	0x12bbfc		a97ffbfd		LDP -8(RSP), (R29, R30)				
  repro_test.go:36	0x12bc00		910dc3ff		ADD $880, RSP, RSP				
  repro_test.go:36	0x12bc04		d65f03c0		RET						
  repro_test.go:30	0x12bc08		97fda53a		CALL runtime.panicBounds(SB)			
  repro_test.go:21	0x12bc0c		f9414fe5		MOVD 664(RSP), R5				
  repro_test.go:21	0x12bc10		910004b1		ADD $1, R5, R17					
  repro_test.go:22	0x12bc14		f94133e9		MOVD 608(RSP), R9				
  repro_test.go:21	0x12bc18		f1000a3f		CMP $2, R17					
  repro_test.go:21	0x12bc1c		54ffe48a		BGE -220(PC)					
  repro_test.go:21	0x12bc20		f9014ff1		MOVD R17, 664(RSP)				
  repro_test.go:21	0x12bc24		910ca3e1		ADD $808, RSP, R1				
  repro_test.go:21	0x12bc28		f871783a		MOVD (R1)(R17<<3), R26				
  repro_test.go:22	0x12bc2c		f9400341		MOVD (R26), R1					
  repro_test.go:22	0x12bc30		aa0903e0		MOVD R9, R0					
  repro_test.go:22	0x12bc34		d63f0020		CALL (R1)					
  repro_test.go:22	0x12bc38		910823e1		ADD $520, RSP, R1				
  repro_test.go:22	0x12bc3c		910023e2		ADD $8, RSP, R2					
  repro_test.go:22	0x12bc40		ad404450		FLDPQ (R2), (F16, F17)				
  repro_test.go:22	0x12bc44		ad004430		FSTPQ (F16, F17), (R1)				
  repro_test.go:22	0x12bc48		ad414450		FLDPQ 32(R2), (F16, F17)			
  repro_test.go:22	0x12bc4c		ad014430		FSTPQ (F16, F17), 32(R1)			
  repro_test.go:22	0x12bc50		f9402059		MOVD 64(R2), R25				
  repro_test.go:22	0x12bc54		f9002039		MOVD R25, 64(R1)				
  repro_test.go:22	0x12bc58		9104c3e2		ADD $304, RSP, R2				
  repro_test.go:22	0x12bc5c		ad404430		FLDPQ (R1), (F16, F17)				
  repro_test.go:22	0x12bc60		ad004450		FSTPQ (F16, F17), (R2)				
  repro_test.go:22	0x12bc64		ad414430		FLDPQ 32(R1), (F16, F17)			
  repro_test.go:22	0x12bc68		ad014450		FSTPQ (F16, F17), 32(R2)			
  repro_test.go:22	0x12bc6c		f9402039		MOVD 64(R1), R25				
  repro_test.go:22	0x12bc70		f9002059		MOVD R25, 64(R2)				
  repro_test.go:23	0x12bc74		f9412be3		MOVD 592(RSP), R3				
  repro_test.go:23	0x12bc78		f94147e4		MOVD 648(RSP), R4				
  repro_test.go:23	0x12bc7c		8b440c65		ADD R4>>3, R3, R5				
  repro_test.go:23	0x12bc80		eb05001f		CMP R5, R0					
  repro_test.go:23	0x12bc84		54000400		BEQ 32(PC)					
  repro_test.go:22	0x12bc88		f9013be0		MOVD R0, 624(RSP)				
  repro_test.go:23	0x12bc8c		910ce3e1		ADD $824, RSP, R1				
  repro_test.go:23	0x12bc90		a9007c3f		STP (ZR, ZR), (R1)				
  repro_test.go:23	0x12bc94		a9017c3f		STP (ZR, ZR), 16(R1)				
  repro_test.go:23	0x12bc98		a9027c3f		STP (ZR, ZR), 32(R1)				
  repro_test.go:23	0x12bc9c		f94133e0		MOVD 608(RSP), R0				
  repro_test.go:23	0x12bca0		97fd8418		CALL runtime.convT64(SB)			
  repro_test.go:23	0x12bca4		f0000a01		ADRP 1323008(PC), R1				
  repro_test.go:23	0x12bca8		91346021		ADD $3352, R1, R1				
  repro_test.go:23	0x12bcac		910ce3fb		ADD $824, RSP, R27				
  repro_test.go:23	0x12bcb0		a9000361		STP (R1, R0), (R27)				
  repro_test.go:23	0x12bcb4		b27a03e0		ORR $64, ZR, R0					
  repro_test.go:23	0x12bcb8		97fd8412		CALL runtime.convT64(SB)			
  repro_test.go:23	0x12bcbc		f0000a01		ADRP 1323008(PC), R1				
  repro_test.go:23	0x12bcc0		91346021		ADD $3352, R1, R1				
  repro_test.go:23	0x12bcc4		910d23fb		ADD $840, RSP, R27				
  repro_test.go:23	0x12bcc8		a9000361		STP (R1, R0), (R27)				
  repro_test.go:23	0x12bccc		f9413be0		MOVD 624(RSP), R0				
  repro_test.go:23	0x12bcd0		97fd840c		CALL runtime.convT64(SB)			
  repro_test.go:23	0x12bcd4		f0000a01		ADRP 1323008(PC), R1				
  repro_test.go:23	0x12bcd8		91346021		ADD $3352, R1, R1				
  repro_test.go:23	0x12bcdc		910d63fb		ADD $856, RSP, R27				
  repro_test.go:23	0x12bce0		a9000361		STP (R1, R0), (R27)				
  repro_test.go:23	0x12bce4		f941bfe0		MOVD 888(RSP), R0				
  repro_test.go:23	0x12bce8		3980001b		MOVB (R0), R27					
  repro_test.go:23	0x12bcec		910ce3e1		ADD $824, RSP, R1				
  repro_test.go:23	0x12bcf0		b24007e2		ORR $3, ZR, R2					
  repro_test.go:23	0x12bcf4		aa0203e3		MOVD R2, R3					
  repro_test.go:23	0x12bcf8		97fee6de		CALL testing.(*common).Fatal(SB)		
  repro_test.go:22	0x12bcfc		910823e1		ADD $520, RSP, R1				
  repro_test.go:22	0x12bd00		9104c3e2		ADD $304, RSP, R2				
  repro_test.go:24	0x12bd04		ad404450		FLDPQ (R2), (F16, F17)				
  repro_test.go:24	0x12bd08		ad004430		FSTPQ (F16, F17), (R1)				
  repro_test.go:24	0x12bd0c		ad414450		FLDPQ 32(R2), (F16, F17)			
  repro_test.go:24	0x12bd10		ad014430		FSTPQ (F16, F17), 32(R1)			
  repro_test.go:24	0x12bd14		f9402059		MOVD 64(R2), R25				
  repro_test.go:24	0x12bd18		f9002039		MOVD R25, 64(R1)				
  repro_test.go:24	0x12bd1c		aa1f03e5		MOVD ZR, R5					
  repro_test.go:24	0x12bd20		f94153e6		MOVD 672(RSP), R6				
  repro_test.go:24	0x12bd24		f9418be7		MOVD 784(RSP), R7				
  repro_test.go:24	0x12bd28		14000002		JMP 2(PC)					
  repro_test.go:24	0x12bd2c		910004a5		ADD $1, R5, R5					
  repro_test.go:24	0x12bd30		f10120bf		CMP $72, R5					
  repro_test.go:24	0x12bd34		54fff6ca		BGE -74(PC)					
  repro_test.go:24	0x12bd38		38656828		MOVBU (R1)(R5), R8				
  repro_test.go:24	0x12bd3c		eb0600bf		CMP R6, R5					
  repro_test.go:24	0x12bd40		540004c2		BCS 38(PC)					
  repro_test.go:24	0x12bd44		386568e9		MOVBU (R7)(R5), R9				
  repro_test.go:24	0x12bd48		6b09011f		CMPW R9, R8					
  repro_test.go:24	0x12bd4c		54ffff00		BEQ -8(PC)					
  repro_test.go:24	0x12bd50		f90143e5		MOVD R5, 640(RSP)				
  repro_test.go:24	0x12bd54		910ce3e1		ADD $824, RSP, R1				
  repro_test.go:24	0x12bd58		a9007c3f		STP (ZR, ZR), (R1)				
  repro_test.go:24	0x12bd5c		a9017c3f		STP (ZR, ZR), 16(R1)				
  repro_test.go:24	0x12bd60		a9027c3f		STP (ZR, ZR), 32(R1)				
  repro_test.go:24	0x12bd64		f94133e0		MOVD 608(RSP), R0				
  repro_test.go:24	0x12bd68		97fd83e6		CALL runtime.convT64(SB)			
  repro_test.go:24	0x12bd6c		f0000a01		ADRP 1323008(PC), R1				
  repro_test.go:24	0x12bd70		91346021		ADD $3352, R1, R1				
  repro_test.go:24	0x12bd74		910ce3fb		ADD $824, RSP, R27				
  repro_test.go:24	0x12bd78		a9000361		STP (R1, R0), (R27)				
  repro_test.go:24	0x12bd7c		b27a03e0		ORR $64, ZR, R0					
  repro_test.go:24	0x12bd80		97fd83e0		CALL runtime.convT64(SB)			
  repro_test.go:24	0x12bd84		f0000a01		ADRP 1323008(PC), R1				
  repro_test.go:24	0x12bd88		91346021		ADD $3352, R1, R1				
  repro_test.go:24	0x12bd8c		910d23fb		ADD $840, RSP, R27				
  repro_test.go:24	0x12bd90		a9000361		STP (R1, R0), (R27)				
  repro_test.go:24	0x12bd94		f94143e0		MOVD 640(RSP), R0				
  repro_test.go:24	0x12bd98		97fd83da		CALL runtime.convT64(SB)			
  repro_test.go:24	0x12bd9c		f0000a01		ADRP 1323008(PC), R1				
  repro_test.go:24	0x12bda0		91356021		ADD $3416, R1, R1				
  repro_test.go:24	0x12bda4		910d63fb		ADD $856, RSP, R27				
  repro_test.go:24	0x12bda8		a9000361		STP (R1, R0), (R27)				
  repro_test.go:24	0x12bdac		f941bfe0		MOVD 888(RSP), R0				
  repro_test.go:24	0x12bdb0		3980001b		MOVB (R0), R27					
  repro_test.go:24	0x12bdb4		910ce3e1		ADD $824, RSP, R1				
  repro_test.go:24	0x12bdb8		b24007e2		ORR $3, ZR, R2					
  repro_test.go:24	0x12bdbc		aa0203e3		MOVD R2, R3					
  repro_test.go:24	0x12bdc0		97fee6ac		CALL testing.(*common).Fatal(SB)		
  repro_test.go:22	0x12bdc4		910823e1		ADD $520, RSP, R1				
  repro_test.go:24	0x12bdc8		f94143e5		MOVD 640(RSP), R5				
  repro_test.go:24	0x12bdcc		f94153e6		MOVD 672(RSP), R6				
  repro_test.go:24	0x12bdd0		f9418be7		MOVD 784(RSP), R7				
  repro_test.go:24	0x12bdd4		17ffffd6		JMP -42(PC)					
  repro_test.go:24	0x12bdd8		97fda4c6		CALL runtime.panicBounds(SB)			
  repro_test.go:19	0x12bddc		aa1103e0		MOVD R17, R0					
  repro_test.go:19	0x12bde0		97fda4c4		CALL runtime.panicBounds(SB)			
  repro_test.go:18	0x12bde4		97fda4c3		CALL runtime.panicBounds(SB)			
  repro_test.go:16	0x12bde8		97fca29a		CALL runtime.panicdivide(SB)			
  repro_test.go:16	0x12bdec		d503201f		NOOP						
  repro_test.go:5	0x12bdf0		f90007e0		MOVD R0, 8(RSP)					
  repro_test.go:5	0x12bdf4		aa1e03e3		MOVD R30, R3					
  repro_test.go:5	0x12bdf8		97fd9c86		CALL runtime.morestack_noctxt.abi0(SB)		
  repro_test.go:5	0x12bdfc		f94007e0		MOVD 8(RSP), R0					
  repro_test.go:5	0x12be00		17fffe80		JMP example.com/paddingrange.TestPadding(SB)	
  repro_test.go:5	0x12be04		00000000		?						
  repro_test.go:5	0x12be08		00000000		?						
  repro_test.go:5	0x12be0c		00000000		?						
