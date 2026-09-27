TEXT example.com/constantappend.Append32(SB) /home/exedev/crypto-audit/round4/issues/constant-append-memmove/repro.go
  repro.go:6		0x12de10		f9400b90		MOVD 16(R28), R16				
  repro.go:6		0x12de14		eb3063ff		CMP R16, RSP					
  repro.go:6		0x12de18		54000349		BLS 26(PC)					
  repro.go:6		0x12de1c		f81c0ffe		MOVD.W R30, -64(RSP)				
  repro.go:6		0x12de20		f81f83fd		MOVD R29, -8(RSP)				
  repro.go:6		0x12de24		d10023fd		SUB $8, RSP, R29				
  repro.go:6		0x12de28		f90027e0		MOVD R0, 72(RSP)				
  repro.go:7		0x12de2c		3980007b		MOVB (R3), R27					
  repro.go:7		0x12de30		91008025		ADD $32, R1, R5					
  repro.go:7		0x12de34		eb05005f		CMP R5, R2					
  repro.go:7		0x12de38		54000162		BCS 11(PC)					
  repro.go:7		0x12de3c		f90033e3		MOVD R3, 96(RSP)				
  repro.go:7		0x12de40		f9002be1		MOVD R1, 80(RSP)				
  repro.go:7		0x12de44		aa0503e1		MOVD R5, R1					
  repro.go:7		0x12de48		b27b03e3		ORR $32, ZR, R3					
  repro.go:7		0x12de4c		b0000ae4		ADRP 1429504(PC), R4				
  repro.go:7		0x12de50		91282084		ADD $2568, R4, R4				
  repro.go:7		0x12de54		97fd8a03		CALL runtime.growslice(SB)			
  repro.go:7		0x12de58		f94033e3		MOVD 96(RSP), R3				
  repro.go:7		0x12de5c		aa0103e5		MOVD R1, R5					
  repro.go:7		0x12de60		f9402be1		MOVD 80(RSP), R1				
  repro.go:7		0x12de64		ad400460		FLDPQ (R3), (F0, F1)				
  repro.go:7		0x12de68		8b010003		ADD R1, R0, R3					
  repro.go:7		0x12de6c		ad000460		FSTPQ (F0, F1), (R3)				
  repro.go:7		0x12de70		aa0503e1		MOVD R5, R1					
  repro.go:7		0x12de74		f85f83fd		MOVD -8(RSP), R29				
  repro.go:7		0x12de78		f84407fe		MOVD.P 64(RSP), R30				
  repro.go:7		0x12de7c		d65f03c0		RET						
  repro.go:6		0x12de80		a90087e0		STP (R0, R1), 8(RSP)				
  repro.go:6		0x12de84		a9018fe2		STP (R2, R3), 24(RSP)				
  repro.go:6		0x12de88		aa1e03e3		MOVD R30, R3					
  repro.go:6		0x12de8c		97fd9485		CALL runtime.morestack_noctxt.abi0(SB)		
  repro.go:6		0x12de90		a94087e0		LDP 8(RSP), (R0, R1)				
  repro.go:6		0x12de94		a9418fe2		LDP 24(RSP), (R2, R3)				
  repro.go:6		0x12de98		17ffffde		JMP example.com/constantappend.Append32(SB)	
  repro.go:6		0x12de9c		00000000		?						

TEXT example.com/constantappend.Append28(SB) /home/exedev/crypto-audit/round4/issues/constant-append-memmove/repro.go
  repro.go:11		0x12dea0		f9400b90		MOVD 16(R28), R16				
  repro.go:11		0x12dea4		eb3063ff		CMP R16, RSP					
  repro.go:11		0x12dea8		54000389		BLS 28(PC)					
  repro.go:11		0x12deac		f81c0ffe		MOVD.W R30, -64(RSP)				
  repro.go:11		0x12deb0		f81f83fd		MOVD R29, -8(RSP)				
  repro.go:11		0x12deb4		d10023fd		SUB $8, RSP, R29				
  repro.go:11		0x12deb8		f90027e0		MOVD R0, 72(RSP)				
  repro.go:12		0x12debc		3980007b		MOVB (R3), R27					
  repro.go:12		0x12dec0		91007025		ADD $28, R1, R5					
  repro.go:12		0x12dec4		eb05005f		CMP R5, R2					
  repro.go:12		0x12dec8		54000162		BCS 11(PC)					
  repro.go:12		0x12decc		f90033e3		MOVD R3, 96(RSP)				
  repro.go:12		0x12ded0		f9002be1		MOVD R1, 80(RSP)				
  repro.go:12		0x12ded4		aa0503e1		MOVD R5, R1					
  repro.go:12		0x12ded8		b27e0be3		ORR $28, ZR, R3					
  repro.go:12		0x12dedc		b0000ae4		ADRP 1429504(PC), R4				
  repro.go:12		0x12dee0		91282084		ADD $2568, R4, R4				
  repro.go:12		0x12dee4		97fd89df		CALL runtime.growslice(SB)			
  repro.go:12		0x12dee8		f94033e3		MOVD 96(RSP), R3				
  repro.go:12		0x12deec		aa0103e5		MOVD R1, R5					
  repro.go:12		0x12def0		f9402be1		MOVD 80(RSP), R1				
  repro.go:12		0x12def4		8b010004		ADD R1, R0, R4					
  repro.go:12		0x12def8		3dc00060		FMOVQ (R3), F0					
  repro.go:12		0x12defc		3cc0c061		FMOVQ 12(R3), F1				
  repro.go:12		0x12df00		3d800080		FMOVQ F0, (R4)					
  repro.go:12		0x12df04		3c80c081		FMOVQ F1, 12(R4)				
  repro.go:12		0x12df08		aa0503e1		MOVD R5, R1					
  repro.go:12		0x12df0c		f85f83fd		MOVD -8(RSP), R29				
  repro.go:12		0x12df10		f84407fe		MOVD.P 64(RSP), R30				
  repro.go:12		0x12df14		d65f03c0		RET						
  repro.go:11		0x12df18		a90087e0		STP (R0, R1), 8(RSP)				
  repro.go:11		0x12df1c		a9018fe2		STP (R2, R3), 24(RSP)				
  repro.go:11		0x12df20		aa1e03e3		MOVD R30, R3					
  repro.go:11		0x12df24		97fd945f		CALL runtime.morestack_noctxt.abi0(SB)		
  repro.go:11		0x12df28		a94087e0		LDP 8(RSP), (R0, R1)				
  repro.go:11		0x12df2c		a9418fe2		LDP 24(RSP), (R2, R3)				
  repro.go:11		0x12df30		17ffffdc		JMP example.com/constantappend.Append28(SB)	
  repro.go:11		0x12df34		00000000		?						
  repro.go:11		0x12df38		00000000		?						
  repro.go:11		0x12df3c		00000000		?						

TEXT example.com/constantappend.Local32(SB) /home/exedev/crypto-audit/round4/issues/constant-append-memmove/repro.go
  repro.go:18		0x12df40		f9400b90		MOVD 16(R28), R16				
  repro.go:18		0x12df44		eb3063ff		CMP R16, RSP					
  repro.go:18		0x12df48		54000369		BLS 27(PC)					
  repro.go:18		0x12df4c		f81a0ffe		MOVD.W R30, -96(RSP)				
  repro.go:18		0x12df50		f81f83fd		MOVD R29, -8(RSP)				
  repro.go:18		0x12df54		d10023fd		SUB $8, RSP, R29				
  repro.go:18		0x12df58		f90037e0		MOVD R0, 104(RSP)				
  repro.go:19		0x12df5c		ad400460		FLDPQ (R3), (F0, F1)				
  repro.go:19		0x12df60		9100e3fb		ADD $56, RSP, R27				
  repro.go:19		0x12df64		ad000760		FSTPQ (F0, F1), (R27)				
  repro.go:20		0x12df68		91008025		ADD $32, R1, R5					
  repro.go:20		0x12df6c		eb05005f		CMP R5, R2					
  repro.go:20		0x12df70		54000122		BCS 9(PC)					
  repro.go:20		0x12df74		f9003be1		MOVD R1, 112(RSP)				
  repro.go:20		0x12df78		aa0503e1		MOVD R5, R1					
  repro.go:20		0x12df7c		b27b03e3		ORR $32, ZR, R3					
  repro.go:20		0x12df80		b0000ae4		ADRP 1429504(PC), R4				
  repro.go:20		0x12df84		91282084		ADD $2568, R4, R4				
  repro.go:20		0x12df88		97fd89b6		CALL runtime.growslice(SB)			
  repro.go:20		0x12df8c		aa0103e5		MOVD R1, R5					
  repro.go:20		0x12df90		f9403be1		MOVD 112(RSP), R1				
  repro.go:20		0x12df94		9100e3fb		ADD $56, RSP, R27				
  repro.go:20		0x12df98		ad400760		FLDPQ (R27), (F0, F1)				
  repro.go:20		0x12df9c		8b010003		ADD R1, R0, R3					
  repro.go:20		0x12dfa0		ad000460		FSTPQ (F0, F1), (R3)				
  repro.go:20		0x12dfa4		aa0503e1		MOVD R5, R1					
  repro.go:20		0x12dfa8		f85f83fd		MOVD -8(RSP), R29				
  repro.go:20		0x12dfac		f84607fe		MOVD.P 96(RSP), R30				
  repro.go:20		0x12dfb0		d65f03c0		RET						
  repro.go:18		0x12dfb4		a90087e0		STP (R0, R1), 8(RSP)				
  repro.go:18		0x12dfb8		a9018fe2		STP (R2, R3), 24(RSP)				
  repro.go:18		0x12dfbc		aa1e03e3		MOVD R30, R3					
  repro.go:18		0x12dfc0		97fd9438		CALL runtime.morestack_noctxt.abi0(SB)		
  repro.go:18		0x12dfc4		a94087e0		LDP 8(RSP), (R0, R1)				
  repro.go:18		0x12dfc8		a9418fe2		LDP 24(RSP), (R2, R3)				
  repro.go:18		0x12dfcc		17ffffdd		JMP example.com/constantappend.Local32(SB)	

TEXT example.com/constantappend.Array32(SB) /home/exedev/crypto-audit/round4/issues/constant-append-memmove/repro.go
  repro.go:26		0x12dfd0		f9400b90		MOVD 16(R28), R16				
  repro.go:26		0x12dfd4		eb3063ff		CMP R16, RSP					
  repro.go:26		0x12dfd8		54000549		BLS 42(PC)					
  repro.go:26		0x12dfdc		f81a0ffe		MOVD.W R30, -96(RSP)				
  repro.go:26		0x12dfe0		f81f83fd		MOVD R29, -8(RSP)				
  repro.go:26		0x12dfe4		d10023fd		SUB $8, RSP, R29				
  repro.go:26		0x12dfe8		f90037e0		MOVD R0, 104(RSP)				
  repro.go:27		0x12dfec		ad400460		FLDPQ (R3), (F0, F1)				
  repro.go:27		0x12dff0		9100e3fb		ADD $56, RSP, R27				
  repro.go:27		0x12dff4		ad000760		FSTPQ (F0, F1), (R27)				
  repro.go:29		0x12dff8		91008025		ADD $32, R1, R5					
  repro.go:29		0x12dffc		eb05005f		CMP R5, R2					
  repro.go:29		0x12e000		54000122		BCS 9(PC)					
  repro.go:29		0x12e004		f9003be1		MOVD R1, 112(RSP)				
  repro.go:29		0x12e008		aa0503e1		MOVD R5, R1					
  repro.go:29		0x12e00c		b27b03e3		ORR $32, ZR, R3					
  repro.go:29		0x12e010		90000ae4		ADRP 1425408(PC), R4				
  repro.go:29		0x12e014		91282084		ADD $2568, R4, R4				
  repro.go:29		0x12e018		97fd8992		CALL runtime.growslice(SB)			
  repro.go:29		0x12e01c		aa0103e5		MOVD R1, R5					
  repro.go:30		0x12e020		f9403be1		MOVD 112(RSP), R1				
  repro.go:29		0x12e024		d10080a3		SUB $32, R5, R3					
  repro.go:29		0x12e028		8b000063		ADD R0, R3, R3					
  repro.go:29		0x12e02c		a9007c7f		STP (ZR, ZR), (R3)				
  repro.go:29		0x12e030		a9017c7f		STP (ZR, ZR), 16(R3)				
  repro.go:30		0x12e034		eb05003f		CMP R5, R1					
  repro.go:30		0x12e038		54000208		BHI 16(PC)					
  repro.go:30		0x12e03c		cb0100a3		SUB R1, R5, R3					
  repro.go:30		0x12e040		cb020024		SUB R2, R1, R4					
  repro.go:30		0x12e044		8a84fc24		AND R4->63, R1, R4				
  repro.go:30		0x12e048		8b000084		ADD R0, R4, R4					
  repro.go:30		0x12e04c		f100807f		CMP $32, R3					
  repro.go:30		0x12e050		54000103		BCC 8(PC)					
  repro.go:30		0x12e054		9100e3fb		ADD $56, RSP, R27				
  repro.go:30		0x12e058		ad400760		FLDPQ (R27), (F0, F1)				
  repro.go:30		0x12e05c		ad000480		FSTPQ (F0, F1), (R4)				
  repro.go:31		0x12e060		aa0503e1		MOVD R5, R1					
  repro.go:31		0x12e064		f85f83fd		MOVD -8(RSP), R29				
  repro.go:31		0x12e068		f84607fe		MOVD.P 96(RSP), R30				
  repro.go:31		0x12e06c		d65f03c0		RET						
  repro.go:30		0x12e070		b27b03e0		ORR $32, ZR, R0					
  repro.go:30		0x12e074		97fd9c43		CALL runtime.panicBounds(SB)			
  repro.go:30		0x12e078		97fd9c42		CALL runtime.panicBounds(SB)			
  repro.go:30		0x12e07c		d503201f		NOOP						
  repro.go:26		0x12e080		a90087e0		STP (R0, R1), 8(RSP)				
  repro.go:26		0x12e084		a9018fe2		STP (R2, R3), 24(RSP)				
  repro.go:26		0x12e088		aa1e03e3		MOVD R30, R3					
  repro.go:26		0x12e08c		97fd9405		CALL runtime.morestack_noctxt.abi0(SB)		
  repro.go:26		0x12e090		a94087e0		LDP 8(RSP), (R0, R1)				
  repro.go:26		0x12e094		a9418fe2		LDP 24(RSP), (R2, R3)				
  repro.go:26		0x12e098		17ffffce		JMP example.com/constantappend.Array32(SB)	
  repro.go:26		0x12e09c		00000000		?						

TEXT example.com/constantappend.Scalar32(SB) /home/exedev/crypto-audit/round4/issues/constant-append-memmove/repro.go
  repro.go:37		0x12e0a0		f9400b90		MOVD 16(R28), R16				
  repro.go:37		0x12e0a4		eb3063ff		CMP R16, RSP					
  repro.go:37		0x12e0a8		54000349		BLS 26(PC)					
  repro.go:37		0x12e0ac		f8180ffe		MOVD.W R30, -128(RSP)				
  repro.go:37		0x12e0b0		f81f83fd		MOVD R29, -8(RSP)				
  repro.go:37		0x12e0b4		d10023fd		SUB $8, RSP, R29				
  repro.go:37		0x12e0b8		f90047e0		MOVD R0, 136(RSP)				
  repro.go:38		0x12e0bc		91008021		ADD $32, R1, R1					
  repro.go:39		0x12e0c0		a9401865		LDP (R3), (R5, R6)				
  repro.go:41		0x12e0c4		a9412067		LDP 16(R3), (R7, R8)				
  repro.go:38		0x12e0c8		eb01005f		CMP R1, R2					
  repro.go:38		0x12e0cc		54000122		BCS 9(PC)					
  repro.go:39		0x12e0d0		a90697e6		STP (R6, R5), 104(RSP)				
  repro.go:41		0x12e0d4		a9059fe8		STP (R8, R7), 88(RSP)				
  repro.go:38		0x12e0d8		b27b03e3		ORR $32, ZR, R3					
  repro.go:38		0x12e0dc		90000ae4		ADRP 1425408(PC), R4				
  repro.go:38		0x12e0e0		91282084		ADD $2568, R4, R4				
  repro.go:38		0x12e0e4		97fd895f		CALL runtime.growslice(SB)			
  repro.go:38		0x12e0e8		a94697e6		LDP 104(RSP), (R6, R5)				
  repro.go:38		0x12e0ec		a9459fe8		LDP 88(RSP), (R8, R7)				
  repro.go:38		0x12e0f0		d1008023		SUB $32, R1, R3					
  repro.go:38		0x12e0f4		f8236805		MOVD R5, (R0)(R3)				
  repro.go:38		0x12e0f8		8b030003		ADD R3, R0, R3					
  repro.go:38		0x12e0fc		a9009c66		STP (R6, R7), 8(R3)				
  repro.go:38		0x12e100		f9000c68		MOVD R8, 24(R3)					
  repro.go:38		0x12e104		f85f83fd		MOVD -8(RSP), R29				
  repro.go:38		0x12e108		f84807fe		MOVD.P 128(RSP), R30				
  repro.go:38		0x12e10c		d65f03c0		RET						
  repro.go:37		0x12e110		a90087e0		STP (R0, R1), 8(RSP)				
  repro.go:37		0x12e114		a9018fe2		STP (R2, R3), 24(RSP)				
  repro.go:37		0x12e118		aa1e03e3		MOVD R30, R3					
  repro.go:37		0x12e11c		97fd93e1		CALL runtime.morestack_noctxt.abi0(SB)		
  repro.go:37		0x12e120		a94087e0		LDP 8(RSP), (R0, R1)				
  repro.go:37		0x12e124		a9418fe2		LDP 24(RSP), (R2, R3)				
  repro.go:37		0x12e128		17ffffde		JMP example.com/constantappend.Scalar32(SB)	
  repro.go:37		0x12e12c		00000000		?						

TEXT example.com/constantappend.Copy32(SB) /home/exedev/crypto-audit/round4/issues/constant-append-memmove/repro.go
  repro.go:48		0x12e130		3980001b		MOVB (R0), R27		
  repro.go:48		0x12e134		3980003b		MOVB (R1), R27		
  repro.go:48		0x12e138		eb00003f		CMP R0, R1		
  repro.go:48		0x12e13c		54000060		BEQ 3(PC)		
  repro.go:48		0x12e140		ad400420		FLDPQ (R1), (F0, F1)	
  repro.go:48		0x12e144		ad000400		FSTPQ (F0, F1), (R0)	
  repro.go:48		0x12e148		d65f03c0		RET			
  repro.go:48		0x12e14c		00000000		?			

TEXT example.com/constantappend.TestAppends(SB) /home/exedev/crypto-audit/round4/issues/constant-append-memmove/repro_test.go
  repro_test.go:12	0x12e150		f9400b90		MOVD 16(R28), R16				
  repro_test.go:12	0x12e154		d10683f1		SUB $416, RSP, R17				
  repro_test.go:12	0x12e158		eb10023f		CMP R16, R17					
  repro_test.go:12	0x12e15c		54002489		BLS 292(PC)					
  repro_test.go:12	0x12e160		d10883f4		SUB $544, RSP, R20				
  repro_test.go:12	0x12e164		a93ffa9d		STP (R29, R30), -8(R20)				
  repro_test.go:12	0x12e168		9100029f		MOVD R20, RSP					
  repro_test.go:12	0x12e16c		d10023fd		SUB $8, RSP, R29				
  repro_test.go:18	0x12e170		f90117e0		MOVD R0, 552(RSP)				
  repro_test.go:17	0x12e174		d0000083		ADRP 73728(PC), R3				
  repro_test.go:17	0x12e178		91163863		ADD $1422, R3, R3				
  repro_test.go:17	0x12e17c		b27f07e4		ORR $6, ZR, R4					
  repro_test.go:17	0x12e180		a91313e3		STP (R3, R4), 304(RSP)				
  repro_test.go:17	0x12e184		f0000bc3		ADRP 1552384(PC), R3				
  repro_test.go:17	0x12e188		913ae063		ADD $3768, R3, R3				
  repro_test.go:17	0x12e18c		b27b03e5		ORR $32, ZR, R5					
  repro_test.go:17	0x12e190		a91417e3		STP (R3, R5), 320(RSP)				
  repro_test.go:17	0x12e194		d0000083		ADRP 73728(PC), R3				
  repro_test.go:17	0x12e198		910e3c63		ADD $911, R3, R3				
  repro_test.go:17	0x12e19c		d28000a6		MOVD $5, R6					
  repro_test.go:17	0x12e1a0		a9151be3		STP (R3, R6), 336(RSP)				
  repro_test.go:17	0x12e1a4		f0000bc3		ADRP 1552384(PC), R3				
  repro_test.go:17	0x12e1a8		913ac063		ADD $3760, R3, R3				
  repro_test.go:17	0x12e1ac		b27e0be7		ORR $28, ZR, R7					
  repro_test.go:17	0x12e1b0		a9161fe3		STP (R3, R7), 352(RSP)				
  repro_test.go:17	0x12e1b4		d0000083		ADRP 73728(PC), R3				
  repro_test.go:17	0x12e1b8		910e5063		ADD $916, R3, R3				
  repro_test.go:17	0x12e1bc		a9171be3		STP (R3, R6), 368(RSP)				
  repro_test.go:17	0x12e1c0		f0000bc3		ADRP 1552384(PC), R3				
  repro_test.go:17	0x12e1c4		913b2063		ADD $3784, R3, R3				
  repro_test.go:17	0x12e1c8		a91817e3		STP (R3, R5), 384(RSP)				
  repro_test.go:17	0x12e1cc		d0000083		ADRP 73728(PC), R3				
  repro_test.go:17	0x12e1d0		910e6463		ADD $921, R3, R3				
  repro_test.go:17	0x12e1d4		a9191be3		STP (R3, R6), 400(RSP)				
  repro_test.go:17	0x12e1d8		f0000bc3		ADRP 1552384(PC), R3				
  repro_test.go:17	0x12e1dc		913b0063		ADD $3776, R3, R3				
  repro_test.go:17	0x12e1e0		a91a17e3		STP (R3, R5), 416(RSP)				
  repro_test.go:17	0x12e1e4		d0000083		ADRP 73728(PC), R3				
  repro_test.go:17	0x12e1e8		91165063		ADD $1428, R3, R3				
  repro_test.go:17	0x12e1ec		a91b13e3		STP (R3, R4), 432(RSP)				
  repro_test.go:17	0x12e1f0		f0000bc3		ADRP 1552384(PC), R3				
  repro_test.go:17	0x12e1f4		913b4063		ADD $3792, R3, R3				
  repro_test.go:17	0x12e1f8		a91c17e3		STP (R3, R5), 448(RSP)				
  repro_test.go:18	0x12e1fc		9104c3e3		ADD $304, RSP, R3				
  repro_test.go:18	0x12e200		aa1f03e1		MOVD ZR, R1					
  repro_test.go:18	0x12e204		14000007		JMP 7(PC)					
  repro_test.go:18	0x12e208		f94097e4		MOVD 296(RSP), R4				
  repro_test.go:18	0x12e20c		91008083		ADD $32, R4, R3					
  repro_test.go:18	0x12e210		f9403fe4		MOVD 120(RSP), R4				
  repro_test.go:18	0x12e214		91000481		ADD $1, R4, R1					
  repro_test.go:18	0x12e218		b27b03e5		ORR $32, ZR, R5					
  repro_test.go:18	0x12e21c		d28000a6		MOVD $5, R6					
  repro_test.go:18	0x12e220		f100143f		CMP $5, R1					
  repro_test.go:18	0x12e224		54001c8a		BGE 228(PC)					
  repro_test.go:18	0x12e228		f9003fe1		MOVD R1, 120(RSP)				
  repro_test.go:18	0x12e22c		f90097e3		MOVD R3, 296(RSP)				
  repro_test.go:18	0x12e230		a9401c64		LDP (R3), (R4, R7)				
  repro_test.go:18	0x12e234		f9003be7		MOVD R7, 112(RSP)				
  repro_test.go:18	0x12e238		f90093e4		MOVD R4, 288(RSP)				
  repro_test.go:18	0x12e23c		a9412468		LDP 16(R3), (R8, R9)				
  repro_test.go:18	0x12e240		f90037e9		MOVD R9, 104(RSP)				
  repro_test.go:18	0x12e244		f9008fe8		MOVD R8, 280(RSP)				
  repro_test.go:19	0x12e248		910343ea		ADD $208, RSP, R10				
  repro_test.go:19	0x12e24c		a9007d5f		STP (ZR, ZR), (R10)				
  repro_test.go:19	0x12e250		a9017d5f		STP (ZR, ZR), 16(R10)				
  repro_test.go:19	0x12e254		a9027d5f		STP (ZR, ZR), 32(R10)				
  repro_test.go:19	0x12e258		f900195f		MOVD ZR, 48(R10)				
  repro_test.go:19	0x12e25c		d280022b		MOVD $17, R11					
  repro_test.go:19	0x12e260		a90dafe6		STP (R6, R11), 216(RSP)				
  repro_test.go:19	0x12e264		d280048c		MOVD $36, R12					
  repro_test.go:19	0x12e268		d28004ad		MOVD $37, R13					
  repro_test.go:19	0x12e26c		a90eb7ec		STP (R12, R13), 232(RSP)			
  repro_test.go:19	0x12e270		b27a03ee		ORR $64, ZR, R14				
  repro_test.go:19	0x12e274		b27903ef		ORR $128, ZR, R15				
  repro_test.go:19	0x12e278		a90fbfee		STP (R14, R15), 248(RSP)			
  repro_test.go:19	0x12e27c		aa1f03f0		MOVD ZR, R16					
  repro_test.go:19	0x12e280		1400000b		JMP 11(PC)					
  repro_test.go:19	0x12e284		f94033f1		MOVD 96(RSP), R17				
  repro_test.go:19	0x12e288		91000630		ADD $1, R17, R16				
  repro_test.go:19	0x12e28c		b27b03e5		ORR $32, ZR, R5					
  repro_test.go:19	0x12e290		d28000a6		MOVD $5, R6					
  repro_test.go:19	0x12e294		910343ea		ADD $208, RSP, R10				
  repro_test.go:19	0x12e298		d280022b		MOVD $17, R11					
  repro_test.go:19	0x12e29c		d280048c		MOVD $36, R12					
  repro_test.go:19	0x12e2a0		d28004ad		MOVD $37, R13					
  repro_test.go:19	0x12e2a4		b27a03ee		ORR $64, ZR, R14				
  repro_test.go:19	0x12e2a8		b27903ef		ORR $128, ZR, R15				
  repro_test.go:19	0x12e2ac		f1001e1f		CMP $7, R16					
  repro_test.go:19	0x12e2b0		5400144a		BGE 162(PC)					
  repro_test.go:19	0x12e2b4		f90033f0		MOVD R16, 96(RSP)				
  repro_test.go:19	0x12e2b8		f8707951		MOVD (R10)(R16<<3), R17				
  repro_test.go:19	0x12e2bc		f90027f1		MOVD R17, 72(RSP)				
  repro_test.go:20	0x12e2c0		910283f3		ADD $160, RSP, R19				
  repro_test.go:20	0x12e2c4		a9007e7f		STP (ZR, ZR), (R19)				
  repro_test.go:20	0x12e2c8		a9017e7f		STP (ZR, ZR), 16(R19)				
  repro_test.go:20	0x12e2cc		a9027e7f		STP (ZR, ZR), 32(R19)				
  repro_test.go:20	0x12e2d0		b24007f4		ORR $3, ZR, R20					
  repro_test.go:20	0x12e2d4		a90a9bf4		STP (R20, R6), 168(RSP)				
  repro_test.go:20	0x12e2d8		d2800175		MOVD $11, R21					
  repro_test.go:20	0x12e2dc		a90b97f5		STP (R21, R5), 184(RSP)				
  repro_test.go:20	0x12e2e0		b24017f6		ORR $63, ZR, R22				
  repro_test.go:20	0x12e2e4		f90067f6		MOVD R22, 200(RSP)				
  repro_test.go:20	0x12e2e8		aa1f03e0		MOVD ZR, R0					
  repro_test.go:20	0x12e2ec		14000004		JMP 4(PC)					
  repro_test.go:20	0x12e2f0		f9402fe3		MOVD 88(RSP), R3				
  repro_test.go:20	0x12e2f4		91000460		ADD $1, R3, R0					
  repro_test.go:20	0x12e2f8		910283f3		ADD $160, RSP, R19				
  repro_test.go:20	0x12e2fc		f100181f		CMP $6, R0					
  repro_test.go:20	0x12e300		54fffc2a		BGE -31(PC)					
  repro_test.go:20	0x12e304		f9002fe0		MOVD R0, 88(RSP)				
  repro_test.go:20	0x12e308		f8607a61		MOVD (R19)(R0<<3), R1				
  repro_test.go:20	0x12e30c		f9001fe1		MOVD R1, 56(RSP)				
  repro_test.go:21	0x12e310		90000a40		ADRP 1343488(PC), R0				
  repro_test.go:21	0x12e314		913e4000		ADD $3984, R0, R0				
  repro_test.go:21	0x12e318		97fbf09e		CALL runtime.newobject(SB)			
  repro_test.go:22	0x12e31c		aa1f03e1		MOVD ZR, R1					
  repro_test.go:22	0x12e320		f9401fe2		MOVD 56(RSP), R2				
  repro_test.go:22	0x12e324		f94027e3		MOVD 72(RSP), R3				
  repro_test.go:22	0x12e328		14000006		JMP 6(PC)					
  repro_test.go:22	0x12e32c		d28004a4		MOVD $37, R4					
  repro_test.go:22	0x12e330		9b010885		MADD R1, R2, R4, R5				
  repro_test.go:22	0x12e334		8b0300a5		ADD R3, R5, R5					
  repro_test.go:22	0x12e338		38216805		MOVB R5, (R0)(R1)				
  repro_test.go:22	0x12e33c		91000421		ADD $1, R1, R1					
  repro_test.go:22	0x12e340		f102003f		CMP $128, R1					
  repro_test.go:22	0x12e344		54ffff4b		BLT -6(PC)					
  repro_test.go:23	0x12e348		f102005f		CMP $128, R2					
  repro_test.go:23	0x12e34c		540014a8		BHI 165(PC)					
  repro_test.go:23	0x12e350		b27903e4		ORR $128, ZR, R4				
  repro_test.go:23	0x12e354		cb020085		SUB R2, R4, R5					
  repro_test.go:23	0x12e358		d1020046		SUB $128, R2, R6				
  repro_test.go:23	0x12e35c		8a86fc46		AND R6->63, R2, R6				
  repro_test.go:23	0x12e360		8b0000c1		ADD R0, R6, R1					
  repro_test.go:23	0x12e364		f10080bf		CMP $32, R5					
  repro_test.go:23	0x12e368		54001383		BCC 156(PC)					
  repro_test.go:25	0x12e36c		f100147f		CMP $5, R3					
  repro_test.go:26	0x12e370		d28000a5		MOVD $5, R5					
  repro_test.go:26	0x12e374		9a85b066		CSEL LT, R3, R5, R6				
  repro_test.go:26	0x12e378		f102007f		CMP $128, R3					
  repro_test.go:25	0x12e37c		540012a8		BHI 149(PC)					
  repro_test.go:26	0x12e380		eb0300df		CMP R3, R6					
  repro_test.go:26	0x12e384		54001248		BHI 146(PC)					
  repro_test.go:21	0x12e388		f9010be0		MOVD R0, 528(RSP)				
  repro_test.go:23	0x12e38c		f9008be1		MOVD R1, 272(RSP)				
  repro_test.go:26	0x12e390		f90023e6		MOVD R6, 64(RSP)				
  repro_test.go:27	0x12e394		f94037e7		MOVD 104(RSP), R7				
  repro_test.go:27	0x12e398		8b0700c8		ADD R7, R6, R8					
  repro_test.go:27	0x12e39c		f9002be8		MOVD R8, 80(RSP)				
  repro_test.go:27	0x12e3a0		f100811f		CMP $32, R8					
  repro_test.go:27	0x12e3a4		540000c8		BHI 6(PC)					
  repro_test.go:27	0x12e3a8		910203e9		ADD $128, RSP, R9				
  repro_test.go:27	0x12e3ac		a9007d3f		STP (ZR, ZR), (R9)				
  repro_test.go:27	0x12e3b0		a9017d3f		STP (ZR, ZR), 16(R9)				
  repro_test.go:27	0x12e3b4		910203e9		ADD $128, RSP, R9				
  repro_test.go:27	0x12e3b8		1400000f		JMP 15(PC)					
  repro_test.go:27	0x12e3bc		90000ae0		ADRP 1425408(PC), R0				
  repro_test.go:27	0x12e3c0		91282000		ADD $2568, R0, R0				
  repro_test.go:27	0x12e3c4		aa0803e1		MOVD R8, R1					
  repro_test.go:27	0x12e3c8		aa0103e2		MOVD R1, R2					
  repro_test.go:27	0x12e3cc		97fd8871		CALL runtime.makeslice(SB)			
  repro_test.go:29	0x12e3d0		f9408be1		MOVD 272(RSP), R1				
  repro_test.go:30	0x12e3d4		f94027e3		MOVD 72(RSP), R3				
  repro_test.go:30	0x12e3d8		b27903e4		ORR $128, ZR, R4				
  repro_test.go:30	0x12e3dc		d28000a5		MOVD $5, R5					
  repro_test.go:28	0x12e3e0		f94023e6		MOVD 64(RSP), R6				
  repro_test.go:29	0x12e3e4		f94037e7		MOVD 104(RSP), R7				
  repro_test.go:28	0x12e3e8		f9402be8		MOVD 80(RSP), R8				
  repro_test.go:28	0x12e3ec		aa0003e9		MOVD R0, R9					
  repro_test.go:28	0x12e3f0		f9410be0		MOVD 528(RSP), R0				
  repro_test.go:28	0x12e3f4		f90087e9		MOVD R9, 264(RSP)				
  repro_test.go:28	0x12e3f8		eb0800df		CMP R8, R6					
  repro_test.go:28	0x12e3fc		9a88b0ca		CSEL LT, R6, R8, R10				
  repro_test.go:28	0x12e400		eb09001f		CMP R9, R0					
  repro_test.go:28	0x12e404		54000061		BNE 3(PC)					
  repro_test.go:28	0x12e408		eb0800df		CMP R8, R6					
  repro_test.go:28	0x12e40c		14000011		JMP 17(PC)					
  repro_test.go:28	0x12e410		aa0003e1		MOVD R0, R1					
  repro_test.go:28	0x12e414		aa0a03e2		MOVD R10, R2					
  repro_test.go:28	0x12e418		aa0903e0		MOVD R9, R0					
  repro_test.go:28	0x12e41c		97fd9bdd		CALL runtime.memmove(SB)			
  repro_test.go:28	0x12e420		f94023e1		MOVD 64(RSP), R1				
  repro_test.go:28	0x12e424		f9402be3		MOVD 80(RSP), R3				
  repro_test.go:28	0x12e428		eb03003f		CMP R3, R1					
  repro_test.go:30	0x12e42c		f9410be0		MOVD 528(RSP), R0				
  repro_test.go:29	0x12e430		f9408be1		MOVD 272(RSP), R1				
  repro_test.go:30	0x12e434		f94027e3		MOVD 72(RSP), R3				
  repro_test.go:30	0x12e438		b27903e4		ORR $128, ZR, R4				
  repro_test.go:30	0x12e43c		d28000a5		MOVD $5, R5					
  repro_test.go:29	0x12e440		f94023e6		MOVD 64(RSP), R6				
  repro_test.go:29	0x12e444		f94037e7		MOVD 104(RSP), R7				
  repro_test.go:29	0x12e448		f9402be8		MOVD 80(RSP), R8				
  repro_test.go:29	0x12e44c		f94087e9		MOVD 264(RSP), R9				
  repro_test.go:29	0x12e450		54000bc8		BHI 94(PC)					
  repro_test.go:29	0x12e454		cb0703ea		NEG R7, R10					
  repro_test.go:29	0x12e458		8a8afcca		AND R10->63, R6, R10				
  repro_test.go:29	0x12e45c		8b0a012a		ADD R10, R9, R10				
  repro_test.go:29	0x12e460		f10080ff		CMP $32, R7					
  repro_test.go:29	0x12e464		54000ae8		BHI 87(PC)					
  repro_test.go:29	0x12e468		eb01015f		CMP R1, R10					
  repro_test.go:29	0x12e46c		540000e0		BEQ 7(PC)					
  repro_test.go:29	0x12e470		aa0a03e0		MOVD R10, R0					
  repro_test.go:29	0x12e474		aa0703e2		MOVD R7, R2					
  repro_test.go:29	0x12e478		97fd9bc6		CALL runtime.memmove(SB)			
  repro_test.go:30	0x12e47c		f9410be0		MOVD 528(RSP), R0				
  repro_test.go:30	0x12e480		f9408be1		MOVD 272(RSP), R1				
  repro_test.go:30	0x12e484		a9440fe6		LDP 64(RSP), (R6, R3)				
  repro_test.go:30	0x12e488		f9408ffa		MOVD 280(RSP), R26				
  repro_test.go:30	0x12e48c		f9400344		MOVD (R26), R4					
  repro_test.go:30	0x12e490		aa0303e2		MOVD R3, R2					
  repro_test.go:30	0x12e494		aa0103e3		MOVD R1, R3					
  repro_test.go:30	0x12e498		aa0603e1		MOVD R6, R1					
  repro_test.go:30	0x12e49c		d63f0080		CALL (R4)					
  bytes.go:23		0x12e4a0		f9402be4		MOVD 80(RSP), R4				
  bytes.go:23		0x12e4a4		eb04003f		CMP R4, R1					
  bytes.go:23		0x12e4a8		540000a1		BNE 5(PC)					
  bytes.go:23		0x12e4ac		aa0103e2		MOVD R1, R2					
  bytes.go:23		0x12e4b0		f94087e1		MOVD 264(RSP), R1				
  bytes.go:23		0x12e4b4		97fb8da7		CALL runtime.memequal(SB)			
  repro_test.go:31	0x12e4b8		3707f1c0		TBNZ $0, R0, -114(PC)				
  repro_test.go:31	0x12e4bc		910783e2		ADD $480, RSP, R2				
  repro_test.go:31	0x12e4c0		a9007c5f		STP (ZR, ZR), (R2)				
  repro_test.go:31	0x12e4c4		a9017c5f		STP (ZR, ZR), 16(R2)				
  repro_test.go:31	0x12e4c8		a9027c5f		STP (ZR, ZR), 32(R2)				
  repro_test.go:31	0x12e4cc		f94093e0		MOVD 288(RSP), R0				
  repro_test.go:31	0x12e4d0		f9403be1		MOVD 112(RSP), R1				
  repro_test.go:31	0x12e4d4		97fd7a3b		CALL runtime.convTstring(SB)			
  repro_test.go:31	0x12e4d8		90000ae2		ADRP 1425408(PC), R2				
  repro_test.go:31	0x12e4dc		91262042		ADD $2440, R2, R2				
  repro_test.go:31	0x12e4e0		a91e03e2		STP (R2, R0), 480(RSP)				
  repro_test.go:31	0x12e4e4		f94027e0		MOVD 72(RSP), R0				
  repro_test.go:31	0x12e4e8		97fd7a1a		CALL runtime.convT64(SB)			
  repro_test.go:31	0x12e4ec		90000ae2		ADRP 1425408(PC), R2				
  repro_test.go:31	0x12e4f0		912f2042		ADD $3016, R2, R2				
  repro_test.go:31	0x12e4f4		a91f03e2		STP (R2, R0), 496(RSP)				
  repro_test.go:31	0x12e4f8		f9401fe0		MOVD 56(RSP), R0				
  repro_test.go:31	0x12e4fc		97fd7a15		CALL runtime.convT64(SB)			
  repro_test.go:31	0x12e500		90000ae2		ADRP 1425408(PC), R2				
  repro_test.go:31	0x12e504		912f2042		ADD $3016, R2, R2				
  repro_test.go:31	0x12e508		910803fb		ADD $512, RSP, R27				
  repro_test.go:31	0x12e50c		a9000362		STP (R2, R0), (R27)				
  repro_test.go:31	0x12e510		f94117e0		MOVD 552(RSP), R0				
  repro_test.go:31	0x12e514		3980001b		MOVB (R0), R27					
  repro_test.go:31	0x12e518		900000a1		ADRP 81920(PC), R1				
  repro_test.go:31	0x12e51c		91332021		ADD $3272, R1, R1				
  repro_test.go:31	0x12e520		b2400fe2		ORR $15, ZR, R2					
  repro_test.go:31	0x12e524		910783e3		ADD $480, RSP, R3				
  repro_test.go:31	0x12e528		b24007e4		ORR $3, ZR, R4					
  repro_test.go:31	0x12e52c		aa0403e5		MOVD R4, R5					
  repro_test.go:31	0x12e530		97fee02c		CALL testing.(*common).Fatalf(SB)		
  repro_test.go:31	0x12e534		17ffff6f		JMP -145(PC)					
  repro_test.go:34	0x12e538		b27b03e0		ORR $32, ZR, R0					
  repro_test.go:34	0x12e53c		b0000a41		ADRP 1347584(PC), R1				
  repro_test.go:34	0x12e540		912fc021		ADD $3056, R1, R1				
  repro_test.go:34	0x12e544		b24003e2		ORR $1, ZR, R2					
  repro_test.go:34	0x12e548		97fbf976		CALL runtime.mallocgcSmallNoScanSC4(SB)		
  repro_test.go:34	0x12e54c		f9408ffa		MOVD 280(RSP), R26				
  repro_test.go:34	0x12e550		f9400343		MOVD (R26), R3					
  repro_test.go:34	0x12e554		aa1f03e1		MOVD ZR, R1					
  repro_test.go:34	0x12e558		aa1f03e2		MOVD ZR, R2					
  repro_test.go:34	0x12e55c		aa0003e4		MOVD R0, R4					
  repro_test.go:34	0x12e560		aa1f03e0		MOVD ZR, R0					
  repro_test.go:34	0x12e564		aa0303e5		MOVD R3, R5					
  repro_test.go:34	0x12e568		aa0403e3		MOVD R4, R3					
  repro_test.go:34	0x12e56c		d63f00a0		CALL (R5)					
  repro_test.go:34	0x12e570		f94037e3		MOVD 104(RSP), R3				
  repro_test.go:34	0x12e574		eb03003f		CMP R3, R1					
  repro_test.go:34	0x12e578		54ffe480		BEQ -220(PC)					
  repro_test.go:34	0x12e57c		a91d7fff		STP (ZR, ZR), 464(RSP)				
  repro_test.go:34	0x12e580		f94093e0		MOVD 288(RSP), R0				
  repro_test.go:34	0x12e584		f9403be1		MOVD 112(RSP), R1				
  repro_test.go:34	0x12e588		97fd7a0e		CALL runtime.convTstring(SB)			
  repro_test.go:34	0x12e58c		90000ae2		ADRP 1425408(PC), R2				
  repro_test.go:34	0x12e590		91262042		ADD $2440, R2, R2				
  repro_test.go:34	0x12e594		a91d03e2		STP (R2, R0), 464(RSP)				
  repro_test.go:34	0x12e598		f94117e0		MOVD 552(RSP), R0				
  repro_test.go:34	0x12e59c		3980001b		MOVB (R0), R27					
  repro_test.go:34	0x12e5a0		910743e1		ADD $464, RSP, R1				
  repro_test.go:34	0x12e5a4		b24003e2		ORR $1, ZR, R2					
  repro_test.go:34	0x12e5a8		aa0203e3		MOVD R2, R3					
  repro_test.go:34	0x12e5ac		97fedfd5		CALL testing.(*common).Fatal(SB)		
  repro_test.go:34	0x12e5b0		17ffff16		JMP -234(PC)					
  repro_test.go:36	0x12e5b4		a97ffbfd		LDP -8(RSP), (R29, R30)				
  repro_test.go:36	0x12e5b8		910883ff		ADD $544, RSP, RSP				
  repro_test.go:36	0x12e5bc		d65f03c0		RET						
  repro_test.go:29	0x12e5c0		b27b03e0		ORR $32, ZR, R0					
  repro_test.go:29	0x12e5c4		97fd9aef		CALL runtime.panicBounds(SB)			
  repro_test.go:29	0x12e5c8		97fd9aee		CALL runtime.panicBounds(SB)			
  repro_test.go:26	0x12e5cc		97fd9aed		CALL runtime.panicBounds(SB)			
  repro_test.go:26	0x12e5d0		b27903e0		ORR $128, ZR, R0				
  repro_test.go:26	0x12e5d4		97fd9aeb		CALL runtime.panicBounds(SB)			
  repro_test.go:23	0x12e5d8		b27b03e0		ORR $32, ZR, R0					
  repro_test.go:23	0x12e5dc		97fd9ae9		CALL runtime.panicBounds(SB)			
  repro_test.go:23	0x12e5e0		b27903e0		ORR $128, ZR, R0				
  repro_test.go:23	0x12e5e4		97fd9ae7		CALL runtime.panicBounds(SB)			
  repro_test.go:23	0x12e5e8		d503201f		NOOP						
  repro_test.go:12	0x12e5ec		f90007e0		MOVD R0, 8(RSP)					
  repro_test.go:12	0x12e5f0		aa1e03e3		MOVD R30, R3					
  repro_test.go:12	0x12e5f4		97fd92ab		CALL runtime.morestack_noctxt.abi0(SB)		
  repro_test.go:12	0x12e5f8		f94007e0		MOVD 8(RSP), R0					
  repro_test.go:12	0x12e5fc		17fffed5		JMP example.com/constantappend.TestAppends(SB)	

TEXT example.com/constantappend.TestCopyOverlap(SB) /home/exedev/crypto-audit/round4/issues/constant-append-memmove/repro_test.go
  repro_test.go:38	0x12e600		f9400b90		MOVD 16(R28), R16					
  repro_test.go:38	0x12e604		d10343f1		SUB $208, RSP, R17					
  repro_test.go:38	0x12e608		eb10023f		CMP R16, R17						
  repro_test.go:38	0x12e60c		54000ea9		BLS 117(PC)						
  repro_test.go:38	0x12e610		d10543f4		SUB $336, RSP, R20					
  repro_test.go:38	0x12e614		a93ffa9d		STP (R29, R30), -8(R20)					
  repro_test.go:38	0x12e618		9100029f		MOVD R20, RSP						
  repro_test.go:38	0x12e61c		d10023fd		SUB $8, RSP, R29					
  repro_test.go:39	0x12e620		f900afe0		MOVD R0, 344(RSP)					
  repro_test.go:39	0x12e624		910403e2		ADD $256, RSP, R2					
  repro_test.go:39	0x12e628		a9007c5f		STP (ZR, ZR), (R2)					
  repro_test.go:39	0x12e62c		a9017c5f		STP (ZR, ZR), 16(R2)					
  repro_test.go:39	0x12e630		a9027c5f		STP (ZR, ZR), 32(R2)					
  repro_test.go:39	0x12e634		f900185f		MOVD ZR, 48(R2)						
  repro_test.go:39	0x12e638		928003c3		MOVD $-31, R3						
  repro_test.go:39	0x12e63c		928001e4		MOVD $-16, R4						
  repro_test.go:39	0x12e640		a91013e3		STP (R3, R4), 256(RSP)					
  repro_test.go:39	0x12e644		92800003		MOVD $-1, R3						
  repro_test.go:39	0x12e648		f9008be3		MOVD R3, 272(RSP)					
  repro_test.go:39	0x12e64c		b24003e3		ORR $1, ZR, R3						
  repro_test.go:39	0x12e650		b27c03e4		ORR $16, ZR, R4						
  repro_test.go:39	0x12e654		a91213e3		STP (R3, R4), 288(RSP)					
  repro_test.go:39	0x12e658		b24013e3		ORR $31, ZR, R3						
  repro_test.go:39	0x12e65c		f9009be3		MOVD R3, 304(RSP)					
  repro_test.go:39	0x12e660		aa1f03e1		MOVD ZR, R1						
  repro_test.go:39	0x12e664		14000004		JMP 4(PC)						
  repro_test.go:39	0x12e668		f9407fe3		MOVD 248(RSP), R3					
  repro_test.go:39	0x12e66c		91000461		ADD $1, R3, R1						
  repro_test.go:39	0x12e670		910403e2		ADD $256, RSP, R2					
  repro_test.go:39	0x12e674		f1001c3f		CMP $7, R1						
  repro_test.go:39	0x12e678		540009ea		BGE 79(PC)						
  repro_test.go:39	0x12e67c		f8617843		MOVD (R2)(R1<<3), R3					
  repro_test.go:40	0x12e680		910123e4		ADD $72, RSP, R4					
  repro_test.go:40	0x12e684		a9007c9f		STP (ZR, ZR), (R4)					
  repro_test.go:40	0x12e688		a9017c9f		STP (ZR, ZR), 16(R4)					
  repro_test.go:40	0x12e68c		a9027c9f		STP (ZR, ZR), 32(R4)					
  repro_test.go:40	0x12e690		a9037c9f		STP (ZR, ZR), 48(R4)					
  repro_test.go:40	0x12e694		a9047c9f		STP (ZR, ZR), 64(R4)					
  repro_test.go:40	0x12e698		a9057c9f		STP (ZR, ZR), 80(R4)					
  repro_test.go:40	0x12e69c		a9067c9f		STP (ZR, ZR), 96(R4)					
  repro_test.go:40	0x12e6a0		a9077c9f		STP (ZR, ZR), 112(R4)					
  repro_test.go:41	0x12e6a4		aa1f03e5		MOVD ZR, R5						
  repro_test.go:41	0x12e6a8		14000006		JMP 6(PC)						
  repro_test.go:41	0x12e6ac		d2800566		MOVD $43, R6						
  repro_test.go:41	0x12e6b0		9b057cc7		MUL R5, R6, R7						
  repro_test.go:41	0x12e6b4		91001ce7		ADD $7, R7, R7						
  repro_test.go:41	0x12e6b8		38256887		MOVB R7, (R4)(R5)					
  repro_test.go:41	0x12e6bc		910004a5		ADD $1, R5, R5						
  repro_test.go:41	0x12e6c0		f10200bf		CMP $128, R5						
  repro_test.go:41	0x12e6c4		54ffff4b		BLT -6(PC)						
  repro_test.go:42	0x12e6c8		9101e3fb		ADD $120, RSP, R27					
  repro_test.go:42	0x12e6cc		ad400760		FLDPQ (R27), (F0, F1)					
  repro_test.go:42	0x12e6d0		9100a3fb		ADD $40, RSP, R27					
  repro_test.go:42	0x12e6d4		ad000760		FSTPQ (F0, F1), (R27)					
  repro_test.go:43	0x12e6d8		9100c065		ADD $48, R3, R5						
  repro_test.go:43	0x12e6dc		f10200bf		CMP $128, R5						
  repro_test.go:43	0x12e6e0		540007a8		BHI 61(PC)						
  repro_test.go:43	0x12e6e4		d2800a06		MOVD $80, R6						
  repro_test.go:43	0x12e6e8		cb0300c7		SUB R3, R6, R7						
  repro_test.go:43	0x12e6ec		d1014068		SUB $80, R3, R8						
  repro_test.go:43	0x12e6f0		8a88fca8		AND R8->63, R5, R8					
  repro_test.go:43	0x12e6f4		8b040100		ADD R4, R8, R0						
  repro_test.go:43	0x12e6f8		f10080ff		CMP $32, R7						
  repro_test.go:43	0x12e6fc		54000683		BCC 52(PC)						
  repro_test.go:39	0x12e700		f9007fe1		MOVD R1, 248(RSP)					
  repro_test.go:39	0x12e704		a90e97e3		STP (R3, R5), 232(RSP)					
  repro_test.go:43	0x12e708		9101e3e1		ADD $120, RSP, R1					
  repro_test.go:43	0x12e70c		97fffe89		CALL example.com/constantappend.Copy32(SB)		
  repro_test.go:44	0x12e710		f94077e0		MOVD 232(RSP), R0					
  repro_test.go:44	0x12e714		91014002		ADD $80, R0, R2						
  repro_test.go:44	0x12e718		f102005f		CMP $128, R2						
  repro_test.go:44	0x12e71c		54000548		BHI 42(PC)						
  repro_test.go:44	0x12e720		f9407be3		MOVD 240(RSP), R3					
  repro_test.go:44	0x12e724		eb03005f		CMP R3, R2						
  repro_test.go:44	0x12e728		540004c3		BCC 38(PC)						
  repro_test.go:44	0x12e72c		910123e2		ADD $72, RSP, R2					
  repro_test.go:44	0x12e730		8b020062		ADD R2, R3, R2						
  repro_test.go:44	0x12e734		ad400440		FLDPQ (R2), (F0, F1)					
  repro_test.go:44	0x12e738		a9409043		LDP 8(R2), (R3, R4)					
  repro_test.go:44	0x12e73c		f9400c42		MOVD 24(R2), R2						
  repro_test.go:44	0x12e740		910323fb		ADD $200, RSP, R27					
  repro_test.go:44	0x12e744		ad000760		FSTPQ (F0, F1), (R27)					
  repro_test.go:44	0x12e748		a9429be5		LDP 40(RSP), (R5, R6)					
  repro_test.go:44	0x12e74c		a943a3e7		LDP 56(RSP), (R7, R8)					
  repro_test.go:44	0x12e750		f94067e9		MOVD 200(RSP), R9					
  repro_test.go:44	0x12e754		eb02011f		CMP R2, R8						
  repro_test.go:44	0x12e758		9a9f17e2		CSET EQ, R2						
  repro_test.go:44	0x12e75c		eb07009f		CMP R7, R4						
  repro_test.go:44	0x12e760		9a9f17e4		CSET EQ, R4						
  repro_test.go:44	0x12e764		8a020082		AND R2, R4, R2						
  repro_test.go:44	0x12e768		eb06007f		CMP R6, R3						
  repro_test.go:44	0x12e76c		9a9f17e3		CSET EQ, R3						
  repro_test.go:44	0x12e770		eb05013f		CMP R5, R9						
  repro_test.go:44	0x12e774		9a9f17e4		CSET EQ, R4						
  repro_test.go:44	0x12e778		8a030083		AND R3, R4, R3						
  repro_test.go:44	0x12e77c		8a020062		AND R2, R3, R2						
  repro_test.go:44	0x12e780		3707f742		TBNZ $0, R2, -70(PC)					
  repro_test.go:44	0x12e784		a913ffff		STP (ZR, ZR), 312(RSP)					
  repro_test.go:44	0x12e788		97fd7972		CALL runtime.convT64(SB)				
  repro_test.go:44	0x12e78c		90000ae1		ADRP 1425408(PC), R1					
  repro_test.go:44	0x12e790		912f2021		ADD $3016, R1, R1					
  repro_test.go:44	0x12e794		a91383e1		STP (R1, R0), 312(RSP)					
  repro_test.go:44	0x12e798		f940afe0		MOVD 344(RSP), R0					
  repro_test.go:44	0x12e79c		3980001b		MOVB (R0), R27						
  repro_test.go:44	0x12e7a0		9104e3e1		ADD $312, RSP, R1					
  repro_test.go:44	0x12e7a4		b24003e2		ORR $1, ZR, R2						
  repro_test.go:44	0x12e7a8		aa0203e3		MOVD R2, R3						
  repro_test.go:44	0x12e7ac		97fedf55		CALL testing.(*common).Fatal(SB)			
  repro_test.go:44	0x12e7b0		17ffffae		JMP -82(PC)						
  repro_test.go:46	0x12e7b4		a97ffbfd		LDP -8(RSP), (R29, R30)					
  repro_test.go:46	0x12e7b8		910543ff		ADD $336, RSP, RSP					
  repro_test.go:46	0x12e7bc		d65f03c0		RET							
  repro_test.go:44	0x12e7c0		97fd9a70		CALL runtime.panicBounds(SB)				
  repro_test.go:44	0x12e7c4		b27903e0		ORR $128, ZR, R0					
  repro_test.go:44	0x12e7c8		97fd9a6e		CALL runtime.panicBounds(SB)				
  repro_test.go:43	0x12e7cc		b27b03e0		ORR $32, ZR, R0						
  repro_test.go:43	0x12e7d0		97fd9a6c		CALL runtime.panicBounds(SB)				
  repro_test.go:43	0x12e7d4		b27903e0		ORR $128, ZR, R0					
  repro_test.go:43	0x12e7d8		97fd9a6a		CALL runtime.panicBounds(SB)				
  repro_test.go:43	0x12e7dc		d503201f		NOOP							
  repro_test.go:38	0x12e7e0		f90007e0		MOVD R0, 8(RSP)						
  repro_test.go:38	0x12e7e4		aa1e03e3		MOVD R30, R3						
  repro_test.go:38	0x12e7e8		97fd922e		CALL runtime.morestack_noctxt.abi0(SB)			
  repro_test.go:38	0x12e7ec		f94007e0		MOVD 8(RSP), R0						
  repro_test.go:38	0x12e7f0		17ffff84		JMP example.com/constantappend.TestCopyOverlap(SB)	
  repro_test.go:38	0x12e7f4		00000000		?							
  repro_test.go:38	0x12e7f8		00000000		?							
  repro_test.go:38	0x12e7fc		00000000		?							

TEXT example.com/constantappend.BenchmarkPublicWarmHMAC(SB) /home/exedev/crypto-audit/round4/issues/constant-append-memmove/repro_test.go
  repro_test.go:51	0x12e800		f9400b90		MOVD 16(R28), R16						
  repro_test.go:51	0x12e804		eb3063ff		CMP R16, RSP							
  repro_test.go:51	0x12e808		54000d09		BLS 104(PC)							
  repro_test.go:51	0x12e80c		f8190ffe		MOVD.W R30, -112(RSP)						
  repro_test.go:51	0x12e810		f81f83fd		MOVD R29, -8(RSP)						
  repro_test.go:51	0x12e814		d10023fd		SUB $8, RSP, R29						
  repro_test.go:53	0x12e818		f9003fe0		MOVD R0, 120(RSP)						
  repro_test.go:52	0x12e81c		90000ae0		ADRP 1425408(PC), R0						
  repro_test.go:52	0x12e820		91282000		ADD $2568, R0, R0						
  repro_test.go:52	0x12e824		b27b03e1		ORR $32, ZR, R1							
  repro_test.go:52	0x12e828		aa0103e2		MOVD R1, R2							
  repro_test.go:52	0x12e82c		97fd8759		CALL runtime.makeslice(SB)					
  repro_test.go:52	0x12e830		f90033e0		MOVD R0, 96(RSP)						
  repro_test.go:52	0x12e834		90000ae0		ADRP 1425408(PC), R0						
  repro_test.go:52	0x12e838		91282000		ADD $2568, R0, R0						
  repro_test.go:52	0x12e83c		b27b03e1		ORR $32, ZR, R1							
  repro_test.go:52	0x12e840		aa0103e2		MOVD R1, R2							
  repro_test.go:52	0x12e844		97fd8753		CALL runtime.makeslice(SB)					
  repro_test.go:53	0x12e848		aa1f03e3		MOVD ZR, R3							
  repro_test.go:53	0x12e84c		f94033e4		MOVD 96(RSP), R4						
  repro_test.go:53	0x12e850		14000009		JMP 9(PC)							
  repro_test.go:53	0x12e854		8b031065		ADD R3<<4, R3, R5						
  repro_test.go:53	0x12e858		910014a5		ADD $5, R5, R5							
  repro_test.go:53	0x12e85c		38236885		MOVB R5, (R4)(R3)						
  repro_test.go:53	0x12e860		d28003a5		MOVD $29, R5							
  repro_test.go:53	0x12e864		9b037ca6		MUL R3, R5, R6							
  repro_test.go:53	0x12e868		91001cc6		ADD $7, R6, R6							
  repro_test.go:53	0x12e86c		38236806		MOVB R6, (R0)(R3)						
  repro_test.go:53	0x12e870		91000463		ADD $1, R3, R3							
  repro_test.go:53	0x12e874		f100807f		CMP $32, R3							
  repro_test.go:53	0x12e878		54fffeeb		BLT -9(PC)							
  repro_test.go:52	0x12e87c		f90033e0		MOVD R0, 96(RSP)						
  repro_test.go:54	0x12e880		f0000bc0		ADRP 1552384(PC), R0						
  repro_test.go:54	0x12e884		913aa000		ADD $3752, R0, R0						
  repro_test.go:54	0x12e888		aa0403e1		MOVD R4, R1							
  repro_test.go:54	0x12e88c		b27b03e2		ORR $32, ZR, R2							
  repro_test.go:54	0x12e890		aa0203e3		MOVD R2, R3							
  repro_test.go:54	0x12e894		97fffcd7		CALL crypto/hmac.New(SB)					
  repro_test.go:54	0x12e898		f90023e0		MOVD R0, 64(RSP)						
  repro_test.go:54	0x12e89c		f9002be1		MOVD R1, 80(RSP)						
  repro_test.go:55	0x12e8a0		f9401004		MOVD 32(R0), R4							
  repro_test.go:55	0x12e8a4		aa0103e0		MOVD R1, R0							
  repro_test.go:55	0x12e8a8		d63f0080		CALL (R4)							
  repro_test.go:56	0x12e8ac		90000ae0		ADRP 1425408(PC), R0						
  repro_test.go:56	0x12e8b0		91282000		ADD $2568, R0, R0						
  repro_test.go:56	0x12e8b4		aa1f03e1		MOVD ZR, R1							
  repro_test.go:56	0x12e8b8		b27b03e2		ORR $32, ZR, R2							
  repro_test.go:56	0x12e8bc		97fd8735		CALL runtime.makeslice(SB)					
  repro_test.go:56	0x12e8c0		f9002fe0		MOVD R0, 88(RSP)						
  repro_test.go:57	0x12e8c4		d503201f		NOOP								
  benchmark.go:193	0x12e8c8		b24003e4		ORR $1, ZR, R4							
  benchmark.go:193	0x12e8cc		f9403fe0		MOVD 120(RSP), R0						
  benchmark.go:193	0x12e8d0		39094804		MOVB R4, 594(R0)						
  repro_test.go:58	0x12e8d4		97febbbf		CALL testing.(*B).ResetTimer(SB)				
  repro_test.go:59	0x12e8d8		aa1f03e0		MOVD ZR, R0							
  repro_test.go:59	0x12e8dc		f9402fe1		MOVD 88(RSP), R1						
  repro_test.go:59	0x12e8e0		b27b03e2		ORR $32, ZR, R2							
  repro_test.go:59	0x12e8e4		aa1f03e3		MOVD ZR, R3							
  repro_test.go:59	0x12e8e8		1400001d		JMP 29(PC)							
  repro_test.go:59	0x12e8ec		a90303e2		STP (R2, R0), 48(RSP)						
  repro_test.go:59	0x12e8f0		f90027e1		MOVD R1, 72(RSP)						
  repro_test.go:60	0x12e8f4		f94023e1		MOVD 64(RSP), R1						
  repro_test.go:60	0x12e8f8		f9401021		MOVD 32(R1), R1							
  repro_test.go:60	0x12e8fc		f9402be0		MOVD 80(RSP), R0						
  repro_test.go:60	0x12e900		d63f0020		CALL (R1)							
  repro_test.go:61	0x12e904		f94023e1		MOVD 64(RSP), R1						
  repro_test.go:61	0x12e908		f9401c21		MOVD 56(R1), R1							
  repro_test.go:61	0x12e90c		f9402be0		MOVD 80(RSP), R0						
  repro_test.go:61	0x12e910		b27b03e2		ORR $32, ZR, R2							
  repro_test.go:61	0x12e914		aa0203e3		MOVD R2, R3							
  repro_test.go:61	0x12e918		aa0103e4		MOVD R1, R4							
  repro_test.go:61	0x12e91c		f94033e1		MOVD 96(RSP), R1						
  repro_test.go:61	0x12e920		d63f0080		CALL (R4)							
  repro_test.go:62	0x12e924		f94023e1		MOVD 64(RSP), R1						
  repro_test.go:62	0x12e928		f9401821		MOVD 48(R1), R1							
  repro_test.go:62	0x12e92c		f9402be0		MOVD 80(RSP), R0						
  repro_test.go:62	0x12e930		aa1f03e2		MOVD ZR, R2							
  repro_test.go:62	0x12e934		f9401be3		MOVD 48(RSP), R3						
  repro_test.go:62	0x12e938		aa0103e4		MOVD R1, R4							
  repro_test.go:62	0x12e93c		f94027e1		MOVD 72(RSP), R1						
  repro_test.go:62	0x12e940		d63f0080		CALL (R4)							
  repro_test.go:59	0x12e944		f9401fe3		MOVD 56(RSP), R3						
  repro_test.go:59	0x12e948		91000463		ADD $1, R3, R3							
  repro_test.go:59	0x12e94c		aa0003e4		MOVD R0, R4							
  repro_test.go:59	0x12e950		aa0303e0		MOVD R3, R0							
  repro_test.go:59	0x12e954		aa0103e3		MOVD R1, R3							
  repro_test.go:59	0x12e958		aa0403e1		MOVD R4, R1							
  repro_test.go:59	0x12e95c		f9403fe4		MOVD 120(RSP), R4						
  repro_test.go:59	0x12e960		f9410885		MOVD 528(R4), R5						
  repro_test.go:59	0x12e964		eb05001f		CMP R5, R0							
  repro_test.go:59	0x12e968		54fffc2b		BLT -31(PC)							
  repro_test.go:64	0x12e96c		b0000d3b		ADRP 1724416(PC), R27						
  repro_test.go:64	0x12e970		912aa37b		ADD $2728, R27, R27						
  repro_test.go:64	0x12e974		a9000b63		STP (R3, R2), (R27)						
  repro_test.go:64	0x12e978		90000e7b		ADRP 1884160(PC), R27						
  repro_test.go:64	0x12e97c		b94d3360		MOVWU 3376(R27), R0						
  repro_test.go:64	0x12e980		340000a0		CBZW R0, 5(PC)							
  repro_test.go:64	0x12e984		b0000d3b		ADRP 1724416(PC), R27						
  repro_test.go:64	0x12e988		f9455360		MOVD 2720(R27), R0						
  repro_test.go:64	0x12e98c		97fd9949		CALL runtime.gcWriteBarrier2(SB)				
  repro_test.go:64	0x12e990		a9000321		STP (R1, R0), (R25)						
  repro_test.go:64	0x12e994		b0000d3b		ADRP 1724416(PC), R27						
  repro_test.go:64	0x12e998		f9055361		MOVD R1, 2720(R27)						
  repro_test.go:65	0x12e99c		f85f83fd		MOVD -8(RSP), R29						
  repro_test.go:65	0x12e9a0		f84707fe		MOVD.P 112(RSP), R30						
  repro_test.go:65	0x12e9a4		d65f03c0		RET								
  repro_test.go:51	0x12e9a8		f90007e0		MOVD R0, 8(RSP)							
  repro_test.go:51	0x12e9ac		aa1e03e3		MOVD R30, R3							
  repro_test.go:51	0x12e9b0		97fd91bc		CALL runtime.morestack_noctxt.abi0(SB)				
  repro_test.go:51	0x12e9b4		f94007e0		MOVD 8(RSP), R0							
  repro_test.go:51	0x12e9b8		17ffff92		JMP example.com/constantappend.BenchmarkPublicWarmHMAC(SB)	
  repro_test.go:51	0x12e9bc		00000000		?								
