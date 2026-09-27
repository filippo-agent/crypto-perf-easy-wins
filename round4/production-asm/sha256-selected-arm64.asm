TEXT crypto/internal/fips140/sha256.(*Digest).Sum(SB) /home/exedev/go-crypto/src/crypto/internal/fips140/sha256/sha256.go
  sha256.go:200		0x201ee0		f9400b90		MOVD 16(R28), R16						
  sha256.go:200		0x201ee4		d10143f1		SUB $80, RSP, R17						
  sha256.go:200		0x201ee8		eb10023f		CMP R16, R17							
  sha256.go:200		0x201eec		54000849		BLS 66(PC)							
  sha256.go:200		0x201ef0		f8130ffe		MOVD.W R30, -208(RSP)						
  sha256.go:200		0x201ef4		f81f83fd		MOVD R29, -8(RSP)						
  sha256.go:200		0x201ef8		d10023fd		SUB $8, RSP, R29						
  sha256.go:206		0x201efc		f9006fe0		MOVD R0, 216(RSP)						
  sha256.go:206		0x201f00		a90e8fe2		STP (R2, R3), 232(RSP)						
  sha256.go:206		0x201f04		f90073e1		MOVD R1, 224(RSP)						
  sha256.go:201		0x201f08		97fffcf6		CALL crypto/internal/fips140.RecordApproved(SB)			
  sha256.go:203		0x201f0c		910143e0		ADD $80, RSP, R0						
  sha256.go:203		0x201f10		f9406fe1		MOVD 216(RSP), R1						
  sha256.go:203		0x201f14		ad404430		FLDPQ (R1), (F16, F17)						
  sha256.go:203		0x201f18		ad004410		FSTPQ (F16, F17), (R0)						
  sha256.go:203		0x201f1c		ad414430		FLDPQ 32(R1), (F16, F17)					
  sha256.go:203		0x201f20		ad014410		FSTPQ (F16, F17), 32(R0)					
  sha256.go:203		0x201f24		ad424430		FLDPQ 64(R1), (F16, F17)					
  sha256.go:203		0x201f28		ad024410		FSTPQ (F16, F17), 64(R0)					
  sha256.go:203		0x201f2c		3dc01830		FMOVQ 96(R1), F16						
  sha256.go:203		0x201f30		3d801810		FMOVQ F16, 96(R0)						
  sha256.go:203		0x201f34		f9403839		MOVD 112(R1), R25						
  sha256.go:203		0x201f38		f9003819		MOVD R25, 112(R0)						
  sha256.go:204		0x201f3c		9100c3e1		ADD $48, RSP, R1						
  sha256.go:204		0x201f40		a9007c3f		STP (ZR, ZR), (R1)						
  sha256.go:204		0x201f44		a9017c3f		STP (ZR, ZR), 16(R1)						
  sha256.go:205		0x201f48		94000032		CALL crypto/internal/fips140/sha256.(*Digest).checkSum(SB)	
  sha256.go:206		0x201f4c		394303e0		MOVBU 192(RSP), R0						
  sha256.go:206		0x201f50		360002c0		TBZ $0, R0, 22(PC)						
  sha256.go:207		0x201f54		f94077e5		MOVD 232(RSP), R5						
  sha256.go:207		0x201f58		910070a1		ADD $28, R5, R1							
  sha256.go:207		0x201f5c		f9407be2		MOVD 240(RSP), R2						
  sha256.go:207		0x201f60		eb01005f		CMP R1, R2							
  sha256.go:207		0x201f64		54000063		BCC 3(PC)							
  sha256.go:207		0x201f68		f94073e0		MOVD 224(RSP), R0						
  sha256.go:207		0x201f6c		14000007		JMP 7(PC)							
  sha256.go:207		0x201f70		f94073e0		MOVD 224(RSP), R0						
  sha256.go:207		0x201f74		b27e0be3		ORR $28, ZR, R3							
  sha256.go:207		0x201f78		d00011e4		ADRP 2351104(PC), R4						
  sha256.go:207		0x201f7c		911c4084		ADD $1808, R4, R4						
  sha256.go:207		0x201f80		97fa5624		CALL runtime.growslice(SB)					
  sha256.go:207		0x201f84		f94077e5		MOVD 232(RSP), R5						
  sha256.go:207		0x201f88		8b0000a3		ADD R0, R5, R3							
  sha256.go:207		0x201f8c		3dc00fe0		FMOVQ 48(RSP), F0						
  sha256.go:207		0x201f90		3cc3c3e1		FMOVQ 60(RSP), F1						
  sha256.go:207		0x201f94		3d800060		FMOVQ F0, (R3)							
  sha256.go:207		0x201f98		3c80c061		FMOVQ F1, 12(R3)						
  sha256.go:207		0x201f9c		f85f83fd		MOVD -8(RSP), R29						
  sha256.go:207		0x201fa0		f84d07fe		MOVD.P 208(RSP), R30						
  sha256.go:207		0x201fa4		d65f03c0		RET								
  sha256.go:209		0x201fa8		f94077e5		MOVD 232(RSP), R5						
  sha256.go:209		0x201fac		910080a1		ADD $32, R5, R1							
  sha256.go:209		0x201fb0		f9407be2		MOVD 240(RSP), R2						
  sha256.go:209		0x201fb4		eb01005f		CMP R1, R2							
  sha256.go:209		0x201fb8		54000063		BCC 3(PC)							
  sha256.go:209		0x201fbc		f94073e0		MOVD 224(RSP), R0						
  sha256.go:209		0x201fc0		14000007		JMP 7(PC)							
  sha256.go:209		0x201fc4		f94073e0		MOVD 224(RSP), R0						
  sha256.go:209		0x201fc8		b27b03e3		ORR $32, ZR, R3							
  sha256.go:209		0x201fcc		d00011e4		ADRP 2351104(PC), R4						
  sha256.go:209		0x201fd0		911c4084		ADD $1808, R4, R4						
  sha256.go:209		0x201fd4		97fa560f		CALL runtime.growslice(SB)					
  sha256.go:209		0x201fd8		f94077e5		MOVD 232(RSP), R5						
  sha256.go:209		0x201fdc		ad4187e0		FLDPQ 48(RSP), (F0, F1)						
  sha256.go:209		0x201fe0		8b050003		ADD R5, R0, R3							
  sha256.go:209		0x201fe4		ad000460		FSTPQ (F0, F1), (R3)						
  sha256.go:209		0x201fe8		f85f83fd		MOVD -8(RSP), R29						
  sha256.go:209		0x201fec		f84d07fe		MOVD.P 208(RSP), R30						
  sha256.go:209		0x201ff0		d65f03c0		RET								
  sha256.go:200		0x201ff4		a90087e0		STP (R0, R1), 8(RSP)						
  sha256.go:200		0x201ff8		a9018fe2		STP (R2, R3), 24(RSP)						
  sha256.go:200		0x201ffc		aa1e03e3		MOVD R30, R3							
  sha256.go:200		0x202000		97fa60f8		CALL runtime.morestack_noctxt.abi0(SB)				
  sha256.go:200		0x202004		a94087e0		LDP 8(RSP), (R0, R1)						
  sha256.go:200		0x202008		a9418fe2		LDP 24(RSP), (R2, R3)						
  sha256.go:200		0x20200c		17ffffb5		JMP crypto/internal/fips140/sha256.(*Digest).Sum(SB)		

TEXT crypto/internal/fips140/sha256.(*Digest).checkSum(SB) /home/exedev/go-crypto/src/crypto/internal/fips140/sha256/sha256.go
  sha256.go:212		0x202010		f9400b90		MOVD 16(R28), R16						
  sha256.go:212		0x202014		eb3063ff		CMP R16, RSP							
  sha256.go:212		0x202018		54000b09		BLS 88(PC)							
  sha256.go:212		0x20201c		f8180ffe		MOVD.W R30, -128(RSP)						
  sha256.go:212		0x202020		f81f83fd		MOVD R29, -8(RSP)						
  sha256.go:212		0x202024		d10023fd		SUB $8, RSP, R29						
  sha256.go:213		0x202028		f9403404		MOVD 104(R0), R4						
  sha256.go:215		0x20202c		9100c3e5		ADD $48, RSP, R5						
  sha256.go:215		0x202030		a9007cbf		STP (ZR, ZR), (R5)						
  sha256.go:215		0x202034		a9017cbf		STP (ZR, ZR), 16(R5)						
  sha256.go:215		0x202038		a9027cbf		STP (ZR, ZR), 32(R5)						
  sha256.go:215		0x20203c		a9037cbf		STP (ZR, ZR), 48(R5)						
  sha256.go:215		0x202040		f90020bf		MOVD ZR, 64(R5)							
  sha256.go:216		0x202044		92800fe6		MOVD $-128, R6							
  sha256.go:216		0x202048		3900c3e6		MOVB R6, 48(RSP)						
  sha256.go:218		0x20204c		92401486		AND $63, R4, R6							
  sha256.go:219		0x202050		b27d0be7		ORR $56, ZR, R7							
  sha256.go:219		0x202054		cb0600e7		SUB R6, R7, R7							
  sha256.go:221		0x202058		b27d0fe8		ORR $120, ZR, R8						
  sha256.go:221		0x20205c		cb060108		SUB R6, R8, R8							
  sha256.go:218		0x202060		f100e0df		CMP $56, R6							
  sha256.go:225		0x202064		9a8830e6		CSEL LO, R7, R8, R6						
  sha256.go:226		0x202068		910020c2		ADD $8, R6, R2							
  sha256.go:226		0x20206c		f101205f		CMP $72, R2							
  sha256.go:218		0x202070		540007e8		BHI 63(PC)							
  sha256.go:227		0x202074		eb0200df		CMP R2, R6							
  sha256.go:227		0x202078		54000788		BHI 60(PC)							
  sha256.go:218		0x20207c		a90887e0		STP (R0, R1), 136(RSP)						
  sha256.go:225		0x202080		d37df084		LSL $3, R4, R4							
  sha256.go:227		0x202084		d10120c7		SUB $72, R6, R7							
  sha256.go:227		0x202088		8a87fcc6		AND R7->63, R6, R6						
  byteorder.go:135	0x20208c		dac00c84		REV R4, R4							
  byteorder.go:34	0x202090		d503201f		NOOP								
  byteorder.go:128	0x202094		f82668a4		MOVD R4, (R5)(R6)						
  sha256.go:228		0x202098		aa0503e1		MOVD R5, R1							
  sha256.go:228		0x20209c		d2800903		MOVD $72, R3							
  sha256.go:228		0x2020a0		97ffff00		CALL crypto/internal/fips140/sha256.(*Digest).Write(SB)		
  sha256.go:230		0x2020a4		f94047e4		MOVD 136(RSP), R4						
  sha256.go:230		0x2020a8		f9403085		MOVD 96(R4), R5							
  sha256.go:230		0x2020ac		b50004e5		CBNZ R5, 39(PC)							
  sha256.go:234		0x2020b0		b9400080		MOVWU (R4), R0							
  byteorder.go:108	0x2020b4		5ac00800		REVW R0, R0							
  byteorder.go:30	0x2020b8		d503201f		NOOP								
  sha256.go:234		0x2020bc		f9404be1		MOVD 144(RSP), R1						
  sha256.go:234		0x2020c0		b9000020		MOVW R0, (R1)							
  sha256.go:235		0x2020c4		b9400480		MOVWU 4(R4), R0							
  byteorder.go:108	0x2020c8		5ac00800		REVW R0, R0							
  byteorder.go:30	0x2020cc		d503201f		NOOP								
  byteorder.go:105	0x2020d0		b9000420		MOVW R0, 4(R1)							
  sha256.go:236		0x2020d4		b9400880		MOVWU 8(R4), R0							
  byteorder.go:108	0x2020d8		5ac00800		REVW R0, R0							
  byteorder.go:30	0x2020dc		d503201f		NOOP								
  byteorder.go:105	0x2020e0		b9000820		MOVW R0, 8(R1)							
  sha256.go:237		0x2020e4		b9400c80		MOVWU 12(R4), R0						
  byteorder.go:108	0x2020e8		5ac00800		REVW R0, R0							
  byteorder.go:30	0x2020ec		d503201f		NOOP								
  byteorder.go:105	0x2020f0		b9000c20		MOVW R0, 12(R1)							
  sha256.go:238		0x2020f4		b9401080		MOVWU 16(R4), R0						
  byteorder.go:108	0x2020f8		5ac00800		REVW R0, R0							
  byteorder.go:30	0x2020fc		d503201f		NOOP								
  byteorder.go:105	0x202100		b9001020		MOVW R0, 16(R1)							
  sha256.go:239		0x202104		b9401480		MOVWU 20(R4), R0						
  byteorder.go:108	0x202108		5ac00800		REVW R0, R0							
  byteorder.go:30	0x20210c		d503201f		NOOP								
  byteorder.go:105	0x202110		b9001420		MOVW R0, 20(R1)							
  sha256.go:240		0x202114		b9401880		MOVWU 24(R4), R0						
  byteorder.go:108	0x202118		5ac00800		REVW R0, R0							
  byteorder.go:30	0x20211c		d503201f		NOOP								
  byteorder.go:105	0x202120		b9001820		MOVW R0, 24(R1)							
  sha256.go:241		0x202124		3941c080		MOVBU 112(R4), R0						
  sha256.go:241		0x202128		370000a0		TBNZ $0, R0, 5(PC)						
  sha256.go:242		0x20212c		b9401c80		MOVWU 28(R4), R0						
  byteorder.go:108	0x202130		5ac00800		REVW R0, R0							
  byteorder.go:30	0x202134		d503201f		NOOP								
  byteorder.go:105	0x202138		b9001c20		MOVW R0, 28(R1)							
  sha256.go:245		0x20213c		f85f83fd		MOVD -8(RSP), R29						
  sha256.go:245		0x202140		f84807fe		MOVD.P 128(RSP), R30						
  sha256.go:245		0x202144		d65f03c0		RET								
  sha256.go:231		0x202148		f0000060		ADRP 61440(PC), R0						
  sha256.go:231		0x20214c		91207400		ADD $2077, R0, R0						
  sha256.go:231		0x202150		d2800121		MOVD $9, R1							
  sha256.go:231		0x202154		97fa43ab		CALL runtime.convTstring(SB)					
  sha256.go:231		0x202158		aa0003e1		MOVD R0, R1							
  sha256.go:231		0x20215c		b00011e0		ADRP 2347008(PC), R0						
  sha256.go:231		0x202160		911a4000		ADD $1680, R0, R0						
  sha256.go:231		0x202164		97fa4bef		CALL runtime.gopanic(SB)					
  sha256.go:227		0x202168		97fa68d6		CALL runtime.panicBounds(SB)					
  sha256.go:226		0x20216c		d2800900		MOVD $72, R0							
  sha256.go:226		0x202170		97fa68d4		CALL runtime.panicBounds(SB)					
  sha256.go:226		0x202174		d503201f		NOOP								
  sha256.go:212		0x202178		a90087e0		STP (R0, R1), 8(RSP)						
  sha256.go:212		0x20217c		aa1e03e3		MOVD R30, R3							
  sha256.go:212		0x202180		97fa6098		CALL runtime.morestack_noctxt.abi0(SB)				
  sha256.go:212		0x202184		a94087e0		LDP 8(RSP), (R0, R1)						
  sha256.go:212		0x202188		17ffffa2		JMP crypto/internal/fips140/sha256.(*Digest).checkSum(SB)	
  sha256.go:212		0x20218c		00000000		?								
