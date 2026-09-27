TEXT example.com/hashsumreturn.barrier(SB) /home/exedev/crypto-audit/round4/issues/hash-sum-return-buffer/repro.go
  repro.go:20		0x12b6c0		b9400001		MOVWU (R0), R1		
  repro.go:20		0x12b6c4		f9403402		MOVD 104(R0), R2	
  repro.go:20		0x12b6c8		8b020021		ADD R2, R1, R1		
  repro.go:20		0x12b6cc		b9000001		MOVW R1, (R0)		
  repro.go:20		0x12b6d0		d65f03c0		RET			
  repro.go:20		0x12b6d4		00000000		?			
  repro.go:20		0x12b6d8		00000000		?			
  repro.go:20		0x12b6dc		00000000		?			

TEXT example.com/hashsumreturn.ReturnLocal(SB) /home/exedev/crypto-audit/round4/issues/hash-sum-return-buffer/repro.go
  repro.go:23		0x12b6e0		f9400b90		MOVD 16(R28), R16				
  repro.go:23		0x12b6e4		eb3063ff		CMP R16, RSP					
  repro.go:23		0x12b6e8		54000649		BLS 50(PC)					
  repro.go:23		0x12b6ec		f81e0ffe		MOVD.W R30, -32(RSP)				
  repro.go:23		0x12b6f0		f81f83fd		MOVD R29, -8(RSP)				
  repro.go:23		0x12b6f4		d10023fd		SUB $8, RSP, R29				
  repro.go:25		0x12b6f8		f90027e0		MOVD R0, 72(RSP)				
  repro.go:23		0x12b6fc		9100a3e1		ADD $40, RSP, R1				
  repro.go:23		0x12b700		a9007c3f		STP (ZR, ZR), (R1)				
  repro.go:23		0x12b704		a9017c3f		STP (ZR, ZR), 16(R1)				
  repro.go:24		0x12b708		97ffffee		CALL example.com/hashsumreturn.barrier(SB)	
  repro.go:25		0x12b70c		f94027e1		MOVD 72(RSP), R1				
  repro.go:25		0x12b710		f9403022		MOVD 96(R1), R2					
  repro.go:25		0x12b714		b5000422		CBNZ R2, 33(PC)					
  repro.go:26		0x12b718		9100a3e0		ADD $40, RSP, R0				
  repro.go:26		0x12b71c		a9007c1f		STP (ZR, ZR), (R0)				
  repro.go:26		0x12b720		a9017c1f		STP (ZR, ZR), 16(R0)				
  repro.go:27		0x12b724		b9400020		MOVWU (R1), R0					
  binary.go:187		0x12b728		5ac00800		REVW R0, R0					
  binary.go:184		0x12b72c		b9002be0		MOVW R0, 40(RSP)				
  repro.go:28		0x12b730		b9400420		MOVWU 4(R1), R0					
  binary.go:187		0x12b734		5ac00800		REVW R0, R0					
  binary.go:184		0x12b738		b9002fe0		MOVW R0, 44(RSP)				
  repro.go:29		0x12b73c		b9400820		MOVWU 8(R1), R0					
  binary.go:187		0x12b740		5ac00800		REVW R0, R0					
  binary.go:184		0x12b744		b90033e0		MOVW R0, 48(RSP)				
  repro.go:30		0x12b748		b9400c20		MOVWU 12(R1), R0				
  binary.go:187		0x12b74c		5ac00800		REVW R0, R0					
  binary.go:184		0x12b750		b90037e0		MOVW R0, 52(RSP)				
  repro.go:31		0x12b754		b9401020		MOVWU 16(R1), R0				
  binary.go:187		0x12b758		5ac00800		REVW R0, R0					
  binary.go:184		0x12b75c		b9003be0		MOVW R0, 56(RSP)				
  repro.go:32		0x12b760		b9401420		MOVWU 20(R1), R0				
  binary.go:187		0x12b764		5ac00800		REVW R0, R0					
  binary.go:184		0x12b768		b9003fe0		MOVW R0, 60(RSP)				
  repro.go:33		0x12b76c		b9401820		MOVWU 24(R1), R0				
  binary.go:187		0x12b770		5ac00800		REVW R0, R0					
  binary.go:184		0x12b774		b90043e0		MOVW R0, 64(RSP)				
  repro.go:34		0x12b778		3941c020		MOVBU 112(R1), R0				
  repro.go:34		0x12b77c		37000080		TBNZ $0, R0, 4(PC)				
  repro.go:34		0x12b780		b9401c20		MOVWU 28(R1), R0				
  binary.go:187		0x12b784		5ac00800		REVW R0, R0					
  binary.go:184		0x12b788		b90047e0		MOVW R0, 68(RSP)				
  repro.go:35		0x12b78c		f85f83fd		MOVD -8(RSP), R29				
  repro.go:35		0x12b790		f84207fe		MOVD.P 32(RSP), R30				
  repro.go:35		0x12b794		d65f03c0		RET						
  repro.go:25		0x12b798		90000a20		ADRP 1327104(PC), R0				
  repro.go:25		0x12b79c		91076000		ADD $472, R0, R0				
  repro.go:25		0x12b7a0		f0000081		ADRP 77824(PC), R1				
  repro.go:25		0x12b7a4		91360021		ADD $3456, R1, R1				
  repro.go:25		0x12b7a8		97fd8b2e		CALL runtime.gopanic(SB)			
  repro.go:25		0x12b7ac		d503201f		NOOP						
  repro.go:23		0x12b7b0		f90017e0		MOVD R0, 40(RSP)				
  repro.go:23		0x12b7b4		aa1e03e3		MOVD R30, R3					
  repro.go:23		0x12b7b8		97fd9e16		CALL runtime.morestack_noctxt.abi0(SB)		
  repro.go:23		0x12b7bc		f94017e0		MOVD 40(RSP), R0				
  repro.go:23		0x12b7c0		17ffffc8		JMP example.com/hashsumreturn.ReturnLocal(SB)	
  repro.go:23		0x12b7c4		00000000		?						
  repro.go:23		0x12b7c8		00000000		?						
  repro.go:23		0x12b7cc		00000000		?						

TEXT example.com/hashsumreturn.ReturnNamed(SB) /home/exedev/crypto-audit/round4/issues/hash-sum-return-buffer/repro.go
  repro.go:39		0x12b7d0		f9400b90		MOVD 16(R28), R16				
  repro.go:39		0x12b7d4		eb3063ff		CMP R16, RSP					
  repro.go:39		0x12b7d8		540005e9		BLS 47(PC)					
  repro.go:39		0x12b7dc		f81e0ffe		MOVD.W R30, -32(RSP)				
  repro.go:39		0x12b7e0		f81f83fd		MOVD R29, -8(RSP)				
  repro.go:39		0x12b7e4		d10023fd		SUB $8, RSP, R29				
  repro.go:41		0x12b7e8		f90027e0		MOVD R0, 72(RSP)				
  repro.go:39		0x12b7ec		9100a3e1		ADD $40, RSP, R1				
  repro.go:39		0x12b7f0		a9007c3f		STP (ZR, ZR), (R1)				
  repro.go:39		0x12b7f4		a9017c3f		STP (ZR, ZR), 16(R1)				
  repro.go:40		0x12b7f8		97ffffb2		CALL example.com/hashsumreturn.barrier(SB)	
  repro.go:41		0x12b7fc		f94027e1		MOVD 72(RSP), R1				
  repro.go:41		0x12b800		f9403022		MOVD 96(R1), R2					
  repro.go:41		0x12b804		b50003c2		CBNZ R2, 30(PC)					
  repro.go:42		0x12b808		b9400020		MOVWU (R1), R0					
  binary.go:187		0x12b80c		5ac00800		REVW R0, R0					
  binary.go:184		0x12b810		b9002be0		MOVW R0, 40(RSP)				
  repro.go:43		0x12b814		b9400420		MOVWU 4(R1), R0					
  binary.go:187		0x12b818		5ac00800		REVW R0, R0					
  binary.go:184		0x12b81c		b9002fe0		MOVW R0, 44(RSP)				
  repro.go:44		0x12b820		b9400820		MOVWU 8(R1), R0					
  binary.go:187		0x12b824		5ac00800		REVW R0, R0					
  binary.go:184		0x12b828		b90033e0		MOVW R0, 48(RSP)				
  repro.go:45		0x12b82c		b9400c20		MOVWU 12(R1), R0				
  binary.go:187		0x12b830		5ac00800		REVW R0, R0					
  binary.go:184		0x12b834		b90037e0		MOVW R0, 52(RSP)				
  repro.go:46		0x12b838		b9401020		MOVWU 16(R1), R0				
  binary.go:187		0x12b83c		5ac00800		REVW R0, R0					
  binary.go:184		0x12b840		b9003be0		MOVW R0, 56(RSP)				
  repro.go:47		0x12b844		b9401420		MOVWU 20(R1), R0				
  binary.go:187		0x12b848		5ac00800		REVW R0, R0					
  binary.go:184		0x12b84c		b9003fe0		MOVW R0, 60(RSP)				
  repro.go:48		0x12b850		b9401820		MOVWU 24(R1), R0				
  binary.go:187		0x12b854		5ac00800		REVW R0, R0					
  binary.go:184		0x12b858		b90043e0		MOVW R0, 64(RSP)				
  repro.go:49		0x12b85c		3941c020		MOVBU 112(R1), R0				
  repro.go:49		0x12b860		37000080		TBNZ $0, R0, 4(PC)				
  repro.go:49		0x12b864		b9401c20		MOVWU 28(R1), R0				
  binary.go:187		0x12b868		5ac00800		REVW R0, R0					
  binary.go:184		0x12b86c		b90047e0		MOVW R0, 68(RSP)				
  repro.go:50		0x12b870		f85f83fd		MOVD -8(RSP), R29				
  repro.go:50		0x12b874		f84207fe		MOVD.P 32(RSP), R30				
  repro.go:50		0x12b878		d65f03c0		RET						
  repro.go:41		0x12b87c		90000a20		ADRP 1327104(PC), R0				
  repro.go:41		0x12b880		91076000		ADD $472, R0, R0				
  repro.go:41		0x12b884		f0000081		ADRP 77824(PC), R1				
  repro.go:41		0x12b888		91360021		ADD $3456, R1, R1				
  repro.go:41		0x12b88c		97fd8af5		CALL runtime.gopanic(SB)			
  repro.go:41		0x12b890		d503201f		NOOP						
  repro.go:39		0x12b894		f90017e0		MOVD R0, 40(RSP)				
  repro.go:39		0x12b898		aa1e03e3		MOVD R30, R3					
  repro.go:39		0x12b89c		97fd9ddd		CALL runtime.morestack_noctxt.abi0(SB)		
  repro.go:39		0x12b8a0		f94017e0		MOVD 40(RSP), R0				
  repro.go:39		0x12b8a4		17ffffcb		JMP example.com/hashsumreturn.ReturnNamed(SB)	
  repro.go:39		0x12b8a8		00000000		?						
  repro.go:39		0x12b8ac		00000000		?						

TEXT example.com/hashsumreturn.Into(SB) /home/exedev/crypto-audit/round4/issues/hash-sum-return-buffer/repro.go
  repro.go:57		0x12b8b0		f9400b90		MOVD 16(R28), R16				
  repro.go:57		0x12b8b4		eb3063ff		CMP R16, RSP					
  repro.go:57		0x12b8b8		540005a9		BLS 45(PC)					
  repro.go:57		0x12b8bc		f81e0ffe		MOVD.W R30, -32(RSP)				
  repro.go:57		0x12b8c0		f81f83fd		MOVD R29, -8(RSP)				
  repro.go:57		0x12b8c4		d10023fd		SUB $8, RSP, R29				
  repro.go:59		0x12b8c8		a90287e0		STP (R0, R1), 40(RSP)				
  repro.go:58		0x12b8cc		97ffff7d		CALL example.com/hashsumreturn.barrier(SB)	
  repro.go:59		0x12b8d0		f94017e1		MOVD 40(RSP), R1				
  repro.go:59		0x12b8d4		f9403022		MOVD 96(R1), R2					
  repro.go:59		0x12b8d8		b50003e2		CBNZ R2, 31(PC)					
  repro.go:60		0x12b8dc		b9400020		MOVWU (R1), R0					
  binary.go:187		0x12b8e0		5ac00800		REVW R0, R0					
  repro.go:60		0x12b8e4		f9401be2		MOVD 48(RSP), R2				
  repro.go:60		0x12b8e8		b9000040		MOVW R0, (R2)					
  repro.go:61		0x12b8ec		b9400420		MOVWU 4(R1), R0					
  binary.go:187		0x12b8f0		5ac00800		REVW R0, R0					
  binary.go:184		0x12b8f4		b9000440		MOVW R0, 4(R2)					
  repro.go:62		0x12b8f8		b9400820		MOVWU 8(R1), R0					
  binary.go:187		0x12b8fc		5ac00800		REVW R0, R0					
  binary.go:184		0x12b900		b9000840		MOVW R0, 8(R2)					
  repro.go:63		0x12b904		b9400c20		MOVWU 12(R1), R0				
  binary.go:187		0x12b908		5ac00800		REVW R0, R0					
  binary.go:184		0x12b90c		b9000c40		MOVW R0, 12(R2)					
  repro.go:64		0x12b910		b9401020		MOVWU 16(R1), R0				
  binary.go:187		0x12b914		5ac00800		REVW R0, R0					
  binary.go:184		0x12b918		b9001040		MOVW R0, 16(R2)					
  repro.go:65		0x12b91c		b9401420		MOVWU 20(R1), R0				
  binary.go:187		0x12b920		5ac00800		REVW R0, R0					
  binary.go:184		0x12b924		b9001440		MOVW R0, 20(R2)					
  repro.go:66		0x12b928		b9401820		MOVWU 24(R1), R0				
  binary.go:187		0x12b92c		5ac00800		REVW R0, R0					
  binary.go:184		0x12b930		b9001840		MOVW R0, 24(R2)					
  repro.go:67		0x12b934		3941c020		MOVBU 112(R1), R0				
  repro.go:67		0x12b938		37000080		TBNZ $0, R0, 4(PC)				
  repro.go:67		0x12b93c		b9401c20		MOVWU 28(R1), R0				
  binary.go:187		0x12b940		5ac00800		REVW R0, R0					
  binary.go:184		0x12b944		b9001c40		MOVW R0, 28(R2)					
  repro.go:68		0x12b948		f85f83fd		MOVD -8(RSP), R29				
  repro.go:68		0x12b94c		f84207fe		MOVD.P 32(RSP), R30				
  repro.go:68		0x12b950		d65f03c0		RET						
  repro.go:59		0x12b954		90000a20		ADRP 1327104(PC), R0				
  repro.go:59		0x12b958		91076000		ADD $472, R0, R0				
  repro.go:59		0x12b95c		f0000081		ADRP 77824(PC), R1				
  repro.go:59		0x12b960		91360021		ADD $3456, R1, R1				
  repro.go:59		0x12b964		97fd8abf		CALL runtime.gopanic(SB)			
  repro.go:59		0x12b968		d503201f		NOOP						
  repro.go:57		0x12b96c		a90087e0		STP (R0, R1), 8(RSP)				
  repro.go:57		0x12b970		aa1e03e3		MOVD R30, R3					
  repro.go:57		0x12b974		97fd9da7		CALL runtime.morestack_noctxt.abi0(SB)		
  repro.go:57		0x12b978		a94087e0		LDP 8(RSP), (R0, R1)				
  repro.go:57		0x12b97c		17ffffcd		JMP example.com/hashsumreturn.Into(SB)		

TEXT example.com/hashsumreturn.SumLocal(SB) /home/exedev/crypto-audit/round4/issues/hash-sum-return-buffer/repro.go
  repro.go:71		0x12b980		f9400b90		MOVD 16(R28), R16				
  repro.go:71		0x12b984		d10143f1		SUB $80, RSP, R17				
  repro.go:71		0x12b988		eb10023f		CMP R16, R17					
  repro.go:71		0x12b98c		54000809		BLS 64(PC)					
  repro.go:71		0x12b990		f8130ffe		MOVD.W R30, -208(RSP)				
  repro.go:71		0x12b994		f81f83fd		MOVD R29, -8(RSP)				
  repro.go:71		0x12b998		d10023fd		SUB $8, RSP, R29				
  repro.go:74		0x12b99c		a90e0be1		STP (R1, R2), 224(RSP)				
  repro.go:74		0x12b9a0		f9007be3		MOVD R3, 240(RSP)				
  repro.go:72		0x12b9a4		910143e1		ADD $80, RSP, R1				
  repro.go:72		0x12b9a8		ad404410		FLDPQ (R0), (F16, F17)				
  repro.go:72		0x12b9ac		ad004430		FSTPQ (F16, F17), (R1)				
  repro.go:72		0x12b9b0		ad414410		FLDPQ 32(R0), (F16, F17)			
  repro.go:72		0x12b9b4		ad014430		FSTPQ (F16, F17), 32(R1)			
  repro.go:72		0x12b9b8		ad424410		FLDPQ 64(R0), (F16, F17)			
  repro.go:72		0x12b9bc		ad024430		FSTPQ (F16, F17), 64(R1)			
  repro.go:72		0x12b9c0		3dc01810		FMOVQ 96(R0), F16				
  repro.go:72		0x12b9c4		3d801830		FMOVQ F16, 96(R1)				
  repro.go:72		0x12b9c8		f9403819		MOVD 112(R0), R25				
  repro.go:72		0x12b9cc		f9003839		MOVD R25, 112(R1)				
  repro.go:73		0x12b9d0		aa0103e0		MOVD R1, R0					
  repro.go:73		0x12b9d4		97ffff43		CALL example.com/hashsumreturn.ReturnLocal(SB)	
  repro.go:73		0x12b9d8		910023fb		ADD $8, RSP, R27				
  repro.go:73		0x12b9dc		ad400760		FLDPQ (R27), (F0, F1)				
  repro.go:73		0x12b9e0		ad0187e0		FSTPQ (F0, F1), 48(RSP)				
  repro.go:74		0x12b9e4		394303e1		MOVBU 192(RSP), R1				
  repro.go:74		0x12b9e8		360002c1		TBZ $0, R1, 22(PC)				
  repro.go:74		0x12b9ec		f94077e5		MOVD 232(RSP), R5				
  repro.go:74		0x12b9f0		910070a1		ADD $28, R5, R1					
  repro.go:74		0x12b9f4		f9407be2		MOVD 240(RSP), R2				
  repro.go:74		0x12b9f8		eb01005f		CMP R1, R2					
  repro.go:74		0x12b9fc		54000063		BCC 3(PC)					
  repro.go:74		0x12ba00		f94073e0		MOVD 224(RSP), R0				
  repro.go:74		0x12ba04		14000007		JMP 7(PC)					
  repro.go:74		0x12ba08		f94073e0		MOVD 224(RSP), R0				
  repro.go:74		0x12ba0c		b27e0be3		ORR $28, ZR, R3					
  repro.go:74		0x12ba10		90000a24		ADRP 1327104(PC), R4				
  repro.go:74		0x12ba14		91096084		ADD $600, R4, R4				
  repro.go:74		0x12ba18		97fd92fe		CALL runtime.growslice(SB)			
  repro.go:74		0x12ba1c		f94077e5		MOVD 232(RSP), R5				
  repro.go:74		0x12ba20		8b050003		ADD R5, R0, R3					
  repro.go:74		0x12ba24		3dc00fe0		FMOVQ 48(RSP), F0				
  repro.go:74		0x12ba28		3cc3c3e1		FMOVQ 60(RSP), F1				
  repro.go:74		0x12ba2c		3d800060		FMOVQ F0, (R3)					
  repro.go:74		0x12ba30		3c80c061		FMOVQ F1, 12(R3)				
  repro.go:74		0x12ba34		f85f83fd		MOVD -8(RSP), R29				
  repro.go:74		0x12ba38		f84d07fe		MOVD.P 208(RSP), R30				
  repro.go:74		0x12ba3c		d65f03c0		RET						
  repro.go:75		0x12ba40		f94077e5		MOVD 232(RSP), R5				
  repro.go:75		0x12ba44		910080a1		ADD $32, R5, R1					
  repro.go:75		0x12ba48		f9407be2		MOVD 240(RSP), R2				
  repro.go:75		0x12ba4c		eb01005f		CMP R1, R2					
  repro.go:75		0x12ba50		54000063		BCC 3(PC)					
  repro.go:75		0x12ba54		f94073e0		MOVD 224(RSP), R0				
  repro.go:75		0x12ba58		14000007		JMP 7(PC)					
  repro.go:75		0x12ba5c		f94073e0		MOVD 224(RSP), R0				
  repro.go:75		0x12ba60		b27b03e3		ORR $32, ZR, R3					
  repro.go:75		0x12ba64		90000a24		ADRP 1327104(PC), R4				
  repro.go:75		0x12ba68		91096084		ADD $600, R4, R4				
  repro.go:75		0x12ba6c		97fd92e9		CALL runtime.growslice(SB)			
  repro.go:75		0x12ba70		f94077e5		MOVD 232(RSP), R5				
  repro.go:75		0x12ba74		ad4187e0		FLDPQ 48(RSP), (F0, F1)				
  repro.go:75		0x12ba78		8b050003		ADD R5, R0, R3					
  repro.go:75		0x12ba7c		ad000460		FSTPQ (F0, F1), (R3)				
  repro.go:75		0x12ba80		f85f83fd		MOVD -8(RSP), R29				
  repro.go:75		0x12ba84		f84d07fe		MOVD.P 208(RSP), R30				
  repro.go:75		0x12ba88		d65f03c0		RET						
  repro.go:71		0x12ba8c		a90087e0		STP (R0, R1), 8(RSP)				
  repro.go:71		0x12ba90		a9018fe2		STP (R2, R3), 24(RSP)				
  repro.go:71		0x12ba94		aa1e03e3		MOVD R30, R3					
  repro.go:71		0x12ba98		97fd9d5e		CALL runtime.morestack_noctxt.abi0(SB)		
  repro.go:71		0x12ba9c		a94087e0		LDP 8(RSP), (R0, R1)				
  repro.go:71		0x12baa0		a9418fe2		LDP 24(RSP), (R2, R3)				
  repro.go:71		0x12baa4		17ffffb7		JMP example.com/hashsumreturn.SumLocal(SB)	
  repro.go:71		0x12baa8		00000000		?						
  repro.go:71		0x12baac		00000000		?						

TEXT example.com/hashsumreturn.SumInto(SB) /home/exedev/crypto-audit/round4/issues/hash-sum-return-buffer/repro.go
  repro.go:79		0x12bab0		f9400b90		MOVD 16(R28), R16				
  repro.go:79		0x12bab4		d10143f1		SUB $80, RSP, R17				
  repro.go:79		0x12bab8		eb10023f		CMP R16, R17					
  repro.go:79		0x12babc		54000809		BLS 64(PC)					
  repro.go:79		0x12bac0		f8130ffe		MOVD.W R30, -208(RSP)				
  repro.go:79		0x12bac4		f81f83fd		MOVD R29, -8(RSP)				
  repro.go:79		0x12bac8		d10023fd		SUB $8, RSP, R29				
  repro.go:83		0x12bacc		a90e8fe2		STP (R2, R3), 232(RSP)				
  repro.go:83		0x12bad0		f90073e1		MOVD R1, 224(RSP)				
  repro.go:80		0x12bad4		910143e2		ADD $80, RSP, R2				
  repro.go:80		0x12bad8		ad404410		FLDPQ (R0), (F16, F17)				
  repro.go:80		0x12badc		ad004450		FSTPQ (F16, F17), (R2)				
  repro.go:80		0x12bae0		ad414410		FLDPQ 32(R0), (F16, F17)			
  repro.go:80		0x12bae4		ad014450		FSTPQ (F16, F17), 32(R2)			
  repro.go:80		0x12bae8		ad424410		FLDPQ 64(R0), (F16, F17)			
  repro.go:80		0x12baec		ad024450		FSTPQ (F16, F17), 64(R2)			
  repro.go:80		0x12baf0		3dc01810		FMOVQ 96(R0), F16				
  repro.go:80		0x12baf4		3d801850		FMOVQ F16, 96(R2)				
  repro.go:80		0x12baf8		f9403819		MOVD 112(R0), R25				
  repro.go:80		0x12bafc		f9003859		MOVD R25, 112(R2)				
  repro.go:81		0x12bb00		9100c3e1		ADD $48, RSP, R1				
  repro.go:81		0x12bb04		a9007c3f		STP (ZR, ZR), (R1)				
  repro.go:81		0x12bb08		a9017c3f		STP (ZR, ZR), 16(R1)				
  repro.go:82		0x12bb0c		aa0203e0		MOVD R2, R0					
  repro.go:82		0x12bb10		97ffff68		CALL example.com/hashsumreturn.Into(SB)		
  repro.go:83		0x12bb14		394303e2		MOVBU 192(RSP), R2				
  repro.go:83		0x12bb18		360002c2		TBZ $0, R2, 22(PC)				
  repro.go:83		0x12bb1c		f94077e5		MOVD 232(RSP), R5				
  repro.go:83		0x12bb20		910070a1		ADD $28, R5, R1					
  repro.go:83		0x12bb24		f9407be2		MOVD 240(RSP), R2				
  repro.go:83		0x12bb28		eb01005f		CMP R1, R2					
  repro.go:83		0x12bb2c		54000063		BCC 3(PC)					
  repro.go:83		0x12bb30		f94073e0		MOVD 224(RSP), R0				
  repro.go:83		0x12bb34		14000007		JMP 7(PC)					
  repro.go:83		0x12bb38		f94073e0		MOVD 224(RSP), R0				
  repro.go:83		0x12bb3c		b27e0be3		ORR $28, ZR, R3					
  repro.go:83		0x12bb40		90000a24		ADRP 1327104(PC), R4				
  repro.go:83		0x12bb44		91096084		ADD $600, R4, R4				
  repro.go:83		0x12bb48		97fd92b2		CALL runtime.growslice(SB)			
  repro.go:83		0x12bb4c		f94077e5		MOVD 232(RSP), R5				
  repro.go:83		0x12bb50		8b0000a3		ADD R0, R5, R3					
  repro.go:83		0x12bb54		3dc00fe0		FMOVQ 48(RSP), F0				
  repro.go:83		0x12bb58		3cc3c3e1		FMOVQ 60(RSP), F1				
  repro.go:83		0x12bb5c		3d800060		FMOVQ F0, (R3)					
  repro.go:83		0x12bb60		3c80c061		FMOVQ F1, 12(R3)				
  repro.go:83		0x12bb64		f85f83fd		MOVD -8(RSP), R29				
  repro.go:83		0x12bb68		f84d07fe		MOVD.P 208(RSP), R30				
  repro.go:83		0x12bb6c		d65f03c0		RET						
  repro.go:84		0x12bb70		f94077e5		MOVD 232(RSP), R5				
  repro.go:84		0x12bb74		910080a1		ADD $32, R5, R1					
  repro.go:84		0x12bb78		f9407be2		MOVD 240(RSP), R2				
  repro.go:84		0x12bb7c		eb01005f		CMP R1, R2					
  repro.go:84		0x12bb80		54000063		BCC 3(PC)					
  repro.go:84		0x12bb84		f94073e0		MOVD 224(RSP), R0				
  repro.go:84		0x12bb88		14000007		JMP 7(PC)					
  repro.go:84		0x12bb8c		f94073e0		MOVD 224(RSP), R0				
  repro.go:84		0x12bb90		b27b03e3		ORR $32, ZR, R3					
  repro.go:84		0x12bb94		90000a24		ADRP 1327104(PC), R4				
  repro.go:84		0x12bb98		91096084		ADD $600, R4, R4				
  repro.go:84		0x12bb9c		97fd929d		CALL runtime.growslice(SB)			
  repro.go:84		0x12bba0		f94077e5		MOVD 232(RSP), R5				
  repro.go:84		0x12bba4		ad4187e0		FLDPQ 48(RSP), (F0, F1)				
  repro.go:84		0x12bba8		8b050003		ADD R5, R0, R3					
  repro.go:84		0x12bbac		ad000460		FSTPQ (F0, F1), (R3)				
  repro.go:84		0x12bbb0		f85f83fd		MOVD -8(RSP), R29				
  repro.go:84		0x12bbb4		f84d07fe		MOVD.P 208(RSP), R30				
  repro.go:84		0x12bbb8		d65f03c0		RET						
  repro.go:79		0x12bbbc		a90087e0		STP (R0, R1), 8(RSP)				
  repro.go:79		0x12bbc0		a9018fe2		STP (R2, R3), 24(RSP)				
  repro.go:79		0x12bbc4		aa1e03e3		MOVD R30, R3					
  repro.go:79		0x12bbc8		97fd9d12		CALL runtime.morestack_noctxt.abi0(SB)		
  repro.go:79		0x12bbcc		a94087e0		LDP 8(RSP), (R0, R1)				
  repro.go:79		0x12bbd0		a9418fe2		LDP 24(RSP), (R2, R3)				
  repro.go:79		0x12bbd4		17ffffb7		JMP example.com/hashsumreturn.SumInto(SB)	
  repro.go:79		0x12bbd8		00000000		?						
  repro.go:79		0x12bbdc		00000000		?						

TEXT example.com/hashsumreturn.SumNamed(SB) /home/exedev/crypto-audit/round4/issues/hash-sum-return-buffer/repro.go
  repro.go:90		0x12bbe0		f9400b90		MOVD 16(R28), R16				
  repro.go:90		0x12bbe4		d10143f1		SUB $80, RSP, R17				
  repro.go:90		0x12bbe8		eb10023f		CMP R16, R17					
  repro.go:90		0x12bbec		54000809		BLS 64(PC)					
  repro.go:90		0x12bbf0		f8130ffe		MOVD.W R30, -208(RSP)				
  repro.go:90		0x12bbf4		f81f83fd		MOVD R29, -8(RSP)				
  repro.go:90		0x12bbf8		d10023fd		SUB $8, RSP, R29				
  repro.go:93		0x12bbfc		a90e0be1		STP (R1, R2), 224(RSP)				
  repro.go:93		0x12bc00		f9007be3		MOVD R3, 240(RSP)				
  repro.go:91		0x12bc04		910143e1		ADD $80, RSP, R1				
  repro.go:91		0x12bc08		ad404410		FLDPQ (R0), (F16, F17)				
  repro.go:91		0x12bc0c		ad004430		FSTPQ (F16, F17), (R1)				
  repro.go:91		0x12bc10		ad414410		FLDPQ 32(R0), (F16, F17)			
  repro.go:91		0x12bc14		ad014430		FSTPQ (F16, F17), 32(R1)			
  repro.go:91		0x12bc18		ad424410		FLDPQ 64(R0), (F16, F17)			
  repro.go:91		0x12bc1c		ad024430		FSTPQ (F16, F17), 64(R1)			
  repro.go:91		0x12bc20		3dc01810		FMOVQ 96(R0), F16				
  repro.go:91		0x12bc24		3d801830		FMOVQ F16, 96(R1)				
  repro.go:91		0x12bc28		f9403819		MOVD 112(R0), R25				
  repro.go:91		0x12bc2c		f9003839		MOVD R25, 112(R1)				
  repro.go:92		0x12bc30		aa0103e0		MOVD R1, R0					
  repro.go:92		0x12bc34		97fffee7		CALL example.com/hashsumreturn.ReturnNamed(SB)	
  repro.go:92		0x12bc38		910023fb		ADD $8, RSP, R27				
  repro.go:92		0x12bc3c		ad400760		FLDPQ (R27), (F0, F1)				
  repro.go:92		0x12bc40		ad0187e0		FSTPQ (F0, F1), 48(RSP)				
  repro.go:93		0x12bc44		394303e1		MOVBU 192(RSP), R1				
  repro.go:93		0x12bc48		360002c1		TBZ $0, R1, 22(PC)				
  repro.go:93		0x12bc4c		f94077e5		MOVD 232(RSP), R5				
  repro.go:93		0x12bc50		910070a1		ADD $28, R5, R1					
  repro.go:93		0x12bc54		f9407be2		MOVD 240(RSP), R2				
  repro.go:93		0x12bc58		eb01005f		CMP R1, R2					
  repro.go:93		0x12bc5c		54000063		BCC 3(PC)					
  repro.go:93		0x12bc60		f94073e0		MOVD 224(RSP), R0				
  repro.go:93		0x12bc64		14000007		JMP 7(PC)					
  repro.go:93		0x12bc68		f94073e0		MOVD 224(RSP), R0				
  repro.go:93		0x12bc6c		b27e0be3		ORR $28, ZR, R3					
  repro.go:93		0x12bc70		90000a24		ADRP 1327104(PC), R4				
  repro.go:93		0x12bc74		91096084		ADD $600, R4, R4				
  repro.go:93		0x12bc78		97fd9266		CALL runtime.growslice(SB)			
  repro.go:93		0x12bc7c		f94077e5		MOVD 232(RSP), R5				
  repro.go:93		0x12bc80		8b050003		ADD R5, R0, R3					
  repro.go:93		0x12bc84		3dc00fe0		FMOVQ 48(RSP), F0				
  repro.go:93		0x12bc88		3cc3c3e1		FMOVQ 60(RSP), F1				
  repro.go:93		0x12bc8c		3d800060		FMOVQ F0, (R3)					
  repro.go:93		0x12bc90		3c80c061		FMOVQ F1, 12(R3)				
  repro.go:93		0x12bc94		f85f83fd		MOVD -8(RSP), R29				
  repro.go:93		0x12bc98		f84d07fe		MOVD.P 208(RSP), R30				
  repro.go:93		0x12bc9c		d65f03c0		RET						
  repro.go:94		0x12bca0		f94077e5		MOVD 232(RSP), R5				
  repro.go:94		0x12bca4		910080a1		ADD $32, R5, R1					
  repro.go:94		0x12bca8		f9407be2		MOVD 240(RSP), R2				
  repro.go:94		0x12bcac		eb01005f		CMP R1, R2					
  repro.go:94		0x12bcb0		54000063		BCC 3(PC)					
  repro.go:94		0x12bcb4		f94073e0		MOVD 224(RSP), R0				
  repro.go:94		0x12bcb8		14000007		JMP 7(PC)					
  repro.go:94		0x12bcbc		f94073e0		MOVD 224(RSP), R0				
  repro.go:94		0x12bcc0		b27b03e3		ORR $32, ZR, R3					
  repro.go:94		0x12bcc4		90000a24		ADRP 1327104(PC), R4				
  repro.go:94		0x12bcc8		91096084		ADD $600, R4, R4				
  repro.go:94		0x12bccc		97fd9251		CALL runtime.growslice(SB)			
  repro.go:94		0x12bcd0		f94077e5		MOVD 232(RSP), R5				
  repro.go:94		0x12bcd4		ad4187e0		FLDPQ 48(RSP), (F0, F1)				
  repro.go:94		0x12bcd8		8b050003		ADD R5, R0, R3					
  repro.go:94		0x12bcdc		ad000460		FSTPQ (F0, F1), (R3)				
  repro.go:94		0x12bce0		f85f83fd		MOVD -8(RSP), R29				
  repro.go:94		0x12bce4		f84d07fe		MOVD.P 208(RSP), R30				
  repro.go:94		0x12bce8		d65f03c0		RET						
  repro.go:90		0x12bcec		a90087e0		STP (R0, R1), 8(RSP)				
  repro.go:90		0x12bcf0		a9018fe2		STP (R2, R3), 24(RSP)				
  repro.go:90		0x12bcf4		aa1e03e3		MOVD R30, R3					
  repro.go:90		0x12bcf8		97fd9cc6		CALL runtime.morestack_noctxt.abi0(SB)		
  repro.go:90		0x12bcfc		a94087e0		LDP 8(RSP), (R0, R1)				
  repro.go:90		0x12bd00		a9418fe2		LDP 24(RSP), (R2, R3)				
  repro.go:90		0x12bd04		17ffffb7		JMP example.com/hashsumreturn.SumNamed(SB)	
  repro.go:90		0x12bd08		00000000		?						
  repro.go:90		0x12bd0c		00000000		?						

TEXT example.com/hashsumreturn.TestReturnAndSnapshot(SB) /home/exedev/crypto-audit/round4/issues/hash-sum-return-buffer/repro_test.go
  repro_test.go:19	0x12bd10		f9400b90		MOVD 16(R28), R16					
  repro_test.go:19	0x12bd14		d10903f1		SUB $576, RSP, R17					
  repro_test.go:19	0x12bd18		eb10023f		CMP R16, R17						
  repro_test.go:19	0x12bd1c		54002d69		BLS 363(PC)						
  repro_test.go:19	0x12bd20		d10b03f4		SUB $704, RSP, R20					
  repro_test.go:19	0x12bd24		a93ffa9d		STP (R29, R30), -8(R20)					
  repro_test.go:19	0x12bd28		9100029f		MOVD R20, RSP						
  repro_test.go:19	0x12bd2c		d10023fd		SUB $8, RSP, R29					
  repro_test.go:20	0x12bd30		f90167e0		MOVD R0, 712(RSP)					
  repro_test.go:20	0x12bd34		aa1f03e1		MOVD ZR, R1						
  repro_test.go:20	0x12bd38		14000003		JMP 3(PC)						
  repro_test.go:20	0x12bd3c		f940a3e2		MOVD 320(RSP), R2					
  repro_test.go:20	0x12bd40		91000441		ADD $1, R2, R1						
  repro_test.go:20	0x12bd44		f104043f		CMP $257, R1						
  repro_test.go:20	0x12bd48		54002b4a		BGE 346(PC)						
  repro_test.go:20	0x12bd4c		f900a3e1		MOVD R1, 320(RSP)					
  repro_test.go:21	0x12bd50		d0000aa0		ADRP 1400832(PC), R0					
  repro_test.go:21	0x12bd54		91120000		ADD $1152, R0, R0					
  repro_test.go:21	0x12bd58		97fbfa0e		CALL runtime.newobject(SB)				
  repro_test.go:21	0x12bd5c		a9007c1f		STP (ZR, ZR), (R0)					
  repro_test.go:21	0x12bd60		a9017c1f		STP (ZR, ZR), 16(R0)					
  repro_test.go:21	0x12bd64		a9027c1f		STP (ZR, ZR), 32(R0)					
  repro_test.go:21	0x12bd68		a9037c1f		STP (ZR, ZR), 48(R0)					
  repro_test.go:21	0x12bd6c		a9047c1f		STP (ZR, ZR), 64(R0)					
  repro_test.go:21	0x12bd70		a9057c1f		STP (ZR, ZR), 80(R0)					
  repro_test.go:21	0x12bd74		a9067c1f		STP (ZR, ZR), 96(R0)					
  repro_test.go:21	0x12bd78		f900381f		MOVD ZR, 112(R0)					
  repro_test.go:21	0x12bd7c		f940a3e1		MOVD 320(RSP), R1					
  repro_test.go:21	0x12bd80		d28cf122		MOVD $26505, R2						
  repro_test.go:21	0x12bd84		f2a468a2		MOVK $(9029<<16), R2					
  repro_test.go:21	0x12bd88		f2c00022		MOVK $(1<<32), R2					
  repro_test.go:21	0x12bd8c		9b027c22		MUL R2, R1, R2						
  repro_test.go:21	0x12bd90		f9003402		MOVD R2, 104(R0)					
  repro_test.go:22	0x12bd94		9290c8c2		MOVD $-34375, R2					
  repro_test.go:22	0x12bd98		f2b3c6e2		MOVK $(40503<<16), R2					
  repro_test.go:22	0x12bd9c		1b017c42		MULW R1, R2, R2						
  repro_test.go:21	0x12bda0		f240003f		TST $1, R1						
  repro_test.go:21	0x12bda4		9a9f17e3		CSET EQ, R3						
  repro_test.go:21	0x12bda8		3901c003		MOVB R3, 112(R0)					
  repro_test.go:22	0x12bdac		aa1f03e3		MOVD ZR, R3						
  repro_test.go:22	0x12bdb0		14000006		JMP 6(PC)						
  repro_test.go:22	0x12bdb4		9288ace4		MOVD $-17768, R4					
  repro_test.go:22	0x12bdb8		f2bfdb84		MOVK $(65244<<16), R4					
  repro_test.go:22	0x12bdbc		1b040865		MADDW R4, R2, R3, R5					
  repro_test.go:22	0x12bdc0		b8237805		MOVW R5, (R0)(R3<<2)					
  repro_test.go:22	0x12bdc4		91000463		ADD $1, R3, R3						
  repro_test.go:22	0x12bdc8		f100207f		CMP $8, R3						
  repro_test.go:22	0x12bdcc		54ffff4b		BLT -6(PC)						
  repro_test.go:22	0x12bdd0		aa1f03e2		MOVD ZR, R2						
  repro_test.go:22	0x12bdd4		14000005		JMP 5(PC)						
  repro_test.go:23	0x12bdd8		91008003		ADD $32, R0, R3						
  repro_test.go:23	0x12bddc		8b010044		ADD R1, R2, R4						
  repro_test.go:23	0x12bde0		38226864		MOVB R4, (R3)(R2)					
  repro_test.go:23	0x12bde4		91000442		ADD $1, R2, R2						
  repro_test.go:23	0x12bde8		f101005f		CMP $64, R2						
  repro_test.go:23	0x12bdec		54ffff6b		BLT -5(PC)						
  repro_test.go:24	0x12bdf0		910703e2		ADD $448, RSP, R2					
  repro_test.go:24	0x12bdf4		ad404410		FLDPQ (R0), (F16, F17)					
  repro_test.go:24	0x12bdf8		ad004450		FSTPQ (F16, F17), (R2)					
  repro_test.go:24	0x12bdfc		ad414410		FLDPQ 32(R0), (F16, F17)				
  repro_test.go:24	0x12be00		ad014450		FSTPQ (F16, F17), 32(R2)				
  repro_test.go:24	0x12be04		ad424410		FLDPQ 64(R0), (F16, F17)				
  repro_test.go:24	0x12be08		ad024450		FSTPQ (F16, F17), 64(R2)				
  repro_test.go:24	0x12be0c		3dc01810		FMOVQ 96(R0), F16					
  repro_test.go:24	0x12be10		3d801850		FMOVQ F16, 96(R2)					
  repro_test.go:24	0x12be14		f9403819		MOVD 112(R0), R25					
  repro_test.go:24	0x12be18		f9003859		MOVD R25, 112(R2)					
  repro_test.go:24	0x12be1c		91016be2		ADD $90, RSP, R2					
  repro_test.go:24	0x12be20		a9007c5f		STP (ZR, ZR), (R2)					
  repro_test.go:24	0x12be24		a9017c5f		STP (ZR, ZR), 16(R2)					
  repro_test.go:10	0x12be28		b941c3e3		MOVWU 448(RSP), R3					
  repro_test.go:10	0x12be2c		f94117e4		MOVD 552(RSP), R4					
  repro_test.go:10	0x12be30		8b040063		ADD R4, R3, R3						
  repro_test.go:10	0x12be34		b901c3e3		MOVW R3, 448(RSP)					
  repro_test.go:12	0x12be38		3948c3e3		MOVBU 560(RSP), R3					
  repro_test.go:13	0x12be3c		7200007f		TSTW $1, R3						
  repro_test.go:13	0x12be40		b2400be3		ORR $7, ZR, R3						
  repro_test.go:13	0x12be44		b27d03e4		ORR $8, ZR, R4						
  repro_test.go:13	0x12be48		9a841063		CSEL NE, R3, R4, R3					
  repro_test.go:12	0x12be4c		aa1f03e4		MOVD ZR, R4						
  repro_test.go:12	0x12be50		14000002		JMP 2(PC)						
  repro_test.go:13	0x12be54		91000484		ADD $1, R4, R4						
  repro_test.go:13	0x12be58		eb03009f		CMP R3, R4						
  repro_test.go:13	0x12be5c		540001ca		BGE 14(PC)						
  repro_test.go:14	0x12be60		aa1f03e5		MOVD ZR, R5						
  repro_test.go:14	0x12be64		14000009		JMP 9(PC)						
  repro_test.go:14	0x12be68		8b0408a6		ADD R4<<2, R5, R6					
  repro_test.go:14	0x12be6c		910703e7		ADD $448, RSP, R7					
  repro_test.go:14	0x12be70		b86478e7		MOVWU (R7)(R4<<2), R7					
  repro_test.go:14	0x12be74		b27d07e8		ORR $24, ZR, R8						
  repro_test.go:14	0x12be78		cb050d09		SUB R5<<3, R8, R9					
  repro_test.go:14	0x12be7c		9ac924e7		LSR R9, R7, R7						
  repro_test.go:14	0x12be80		38266847		MOVB R7, (R2)(R6)					
  repro_test.go:14	0x12be84		910004a5		ADD $1, R5, R5						
  repro_test.go:14	0x12be88		f10010bf		CMP $4, R5						
  repro_test.go:14	0x12be8c		54fffeeb		BLT -9(PC)						
  repro_test.go:14	0x12be90		17fffff1		JMP -15(PC)						
  repro_test.go:21	0x12be94		f9015be0		MOVD R0, 688(RSP)					
  repro_test.go:24	0x12be98		91016bfb		ADD $90, RSP, R27					
  repro_test.go:24	0x12be9c		ad400760		FLDPQ (R27), (F0, F1)					
  repro_test.go:24	0x12bea0		9100ebfb		ADD $58, RSP, R27					
  repro_test.go:24	0x12bea4		ad000760		FSTPQ (F0, F1), (R27)					
  repro_test.go:25	0x12bea8		d0000b02		ADRP 1449984(PC), R2					
  repro_test.go:25	0x12beac		91360042		ADD $3456, R2, R2					
  repro_test.go:25	0x12beb0		d0000b03		ADRP 1449984(PC), R3					
  repro_test.go:25	0x12beb4		91362063		ADD $3464, R3, R3					
  repro_test.go:25	0x12beb8		910a43fb		ADD $656, RSP, R27					
  repro_test.go:25	0x12bebc		a9000f62		STP (R2, R3), (R27)					
  repro_test.go:25	0x12bec0		aa1f03e2		MOVD ZR, R2						
  repro_test.go:25	0x12bec4		14000003		JMP 3(PC)						
  repro_test.go:25	0x12bec8		f94127e3		MOVD 584(RSP), R3					
  repro_test.go:25	0x12becc		91000462		ADD $1, R3, R2						
  repro_test.go:25	0x12bed0		f100085f		CMP $2, R2						
  repro_test.go:25	0x12bed4		540007ea		BGE 63(PC)						
  repro_test.go:25	0x12bed8		f90127e2		MOVD R2, 584(RSP)					
  repro_test.go:25	0x12bedc		910a43e1		ADD $656, RSP, R1					
  repro_test.go:25	0x12bee0		f8627821		MOVD (R1)(R2<<3), R1					
  repro_test.go:25	0x12bee4		f9013be1		MOVD R1, 624(RSP)					
  repro_test.go:26	0x12bee8		d0000aa0		ADRP 1400832(PC), R0					
  repro_test.go:26	0x12beec		91120000		ADD $1152, R0, R0					
  repro_test.go:26	0x12bef0		97fbf9a8		CALL runtime.newobject(SB)				
  repro_test.go:26	0x12bef4		f9415be1		MOVD 688(RSP), R1					
  repro_test.go:26	0x12bef8		ad404430		FLDPQ (R1), (F16, F17)					
  repro_test.go:26	0x12befc		ad004410		FSTPQ (F16, F17), (R0)					
  repro_test.go:26	0x12bf00		ad414430		FLDPQ 32(R1), (F16, F17)				
  repro_test.go:26	0x12bf04		ad014410		FSTPQ (F16, F17), 32(R0)				
  repro_test.go:26	0x12bf08		ad424430		FLDPQ 64(R1), (F16, F17)				
  repro_test.go:26	0x12bf0c		ad024410		FSTPQ (F16, F17), 64(R0)				
  repro_test.go:26	0x12bf10		3dc01830		FMOVQ 96(R1), F16					
  repro_test.go:26	0x12bf14		3d801810		FMOVQ F16, 96(R0)					
  repro_test.go:26	0x12bf18		f9403839		MOVD 112(R1), R25					
  repro_test.go:26	0x12bf1c		f9003819		MOVD R25, 112(R0)					
  repro_test.go:27	0x12bf20		f9413bfa		MOVD 624(RSP), R26					
  repro_test.go:27	0x12bf24		f9400341		MOVD (R26), R1						
  repro_test.go:27	0x12bf28		d63f0020		CALL (R1)						
  repro_test.go:27	0x12bf2c		910023fb		ADD $8, RSP, R27					
  repro_test.go:27	0x12bf30		ad400760		FLDPQ (R27), (F0, F1)					
  repro_test.go:27	0x12bf34		a9410be1		LDP 16(RSP), (R1, R2)					
  repro_test.go:27	0x12bf38		f94013e3		MOVD 32(RSP), R3					
  repro_test.go:27	0x12bf3c		91026bfb		ADD $154, RSP, R27					
  repro_test.go:27	0x12bf40		ad000760		FSTPQ (F0, F1), (R27)					
  repro_test.go:27	0x12bf44		9100ebfb		ADD $58, RSP, R27					
  repro_test.go:27	0x12bf48		a9401764		LDP (R27), (R4, R5)					
  repro_test.go:27	0x12bf4c		91012bfb		ADD $74, RSP, R27					
  repro_test.go:27	0x12bf50		a9401f66		LDP (R27), (R6, R7)					
  repro_test.go:27	0x12bf54		f849a3e8		MOVD 154(RSP), R8					
  repro_test.go:27	0x12bf58		eb0200df		CMP R2, R6						
  repro_test.go:27	0x12bf5c		9a9f17e2		CSET EQ, R2						
  repro_test.go:27	0x12bf60		eb07007f		CMP R7, R3						
  repro_test.go:27	0x12bf64		9a9f17e3		CSET EQ, R3						
  repro_test.go:27	0x12bf68		8a030042		AND R3, R2, R2						
  repro_test.go:27	0x12bf6c		eb04011f		CMP R4, R8						
  repro_test.go:27	0x12bf70		9a9f17e3		CSET EQ, R3						
  repro_test.go:27	0x12bf74		eb0100bf		CMP R1, R5						
  repro_test.go:27	0x12bf78		9a9f17e1		CSET EQ, R1						
  repro_test.go:27	0x12bf7c		8a010061		AND R1, R3, R1						
  repro_test.go:27	0x12bf80		8a010041		AND R1, R2, R1						
  repro_test.go:27	0x12bf84		3707fa21		TBNZ $0, R1, -47(PC)					
  repro_test.go:27	0x12bf88		910a83fb		ADD $672, RSP, R27					
  repro_test.go:27	0x12bf8c		a9007f7f		STP (ZR, ZR), (R27)					
  repro_test.go:27	0x12bf90		f940a3e0		MOVD 320(RSP), R0					
  repro_test.go:27	0x12bf94		97fd835b		CALL runtime.convT64(SB)				
  repro_test.go:27	0x12bf98		90000a21		ADRP 1327104(PC), R1					
  repro_test.go:27	0x12bf9c		91106021		ADD $1048, R1, R1					
  repro_test.go:27	0x12bfa0		910a83fb		ADD $672, RSP, R27					
  repro_test.go:27	0x12bfa4		a9000361		STP (R1, R0), (R27)					
  repro_test.go:27	0x12bfa8		f94167e0		MOVD 712(RSP), R0					
  repro_test.go:27	0x12bfac		3980001b		MOVB (R0), R27						
  repro_test.go:27	0x12bfb0		d0000021		ADRP 24576(PC), R1					
  repro_test.go:27	0x12bfb4		91266021		ADD $2456, R1, R1					
  repro_test.go:27	0x12bfb8		d2800162		MOVD $11, R2						
  repro_test.go:27	0x12bfbc		910a83e3		ADD $672, RSP, R3					
  repro_test.go:27	0x12bfc0		b24003e4		ORR $1, ZR, R4						
  repro_test.go:27	0x12bfc4		aa0403e5		MOVD R4, R5						
  repro_test.go:27	0x12bfc8		97fee662		CALL testing.(*common).Fatalf(SB)			
  repro_test.go:27	0x12bfcc		17ffffbf		JMP -65(PC)						
  repro_test.go:29	0x12bfd0		910523e0		ADD $328, RSP, R0					
  repro_test.go:29	0x12bfd4		f9415be2		MOVD 688(RSP), R2					
  repro_test.go:29	0x12bfd8		ad404450		FLDPQ (R2), (F16, F17)					
  repro_test.go:29	0x12bfdc		ad004410		FSTPQ (F16, F17), (R0)					
  repro_test.go:29	0x12bfe0		ad414450		FLDPQ 32(R2), (F16, F17)				
  repro_test.go:29	0x12bfe4		ad014410		FSTPQ (F16, F17), 32(R0)				
  repro_test.go:29	0x12bfe8		ad424450		FLDPQ 64(R2), (F16, F17)				
  repro_test.go:29	0x12bfec		ad024410		FSTPQ (F16, F17), 64(R0)				
  repro_test.go:29	0x12bff0		3dc01850		FMOVQ 96(R2), F16					
  repro_test.go:29	0x12bff4		3d801810		FMOVQ F16, 96(R0)					
  repro_test.go:29	0x12bff8		f9403859		MOVD 112(R2), R25					
  repro_test.go:29	0x12bffc		f9003819		MOVD R25, 112(R0)					
  repro_test.go:30	0x12c000		9101ebe1		ADD $122, RSP, R1					
  repro_test.go:30	0x12c004		a9007c3f		STP (ZR, ZR), (R1)					
  repro_test.go:30	0x12c008		a9017c3f		STP (ZR, ZR), 16(R1)					
  repro_test.go:31	0x12c00c		97fffe29		CALL example.com/hashsumreturn.Into(SB)			
  repro_test.go:32	0x12c010		9101ebfb		ADD $122, RSP, R27					
  repro_test.go:32	0x12c014		a9400f62		LDP (R27), (R2, R3)					
  repro_test.go:32	0x12c018		9100ebfb		ADD $58, RSP, R27					
  repro_test.go:32	0x12c01c		a9401764		LDP (R27), (R4, R5)					
  repro_test.go:32	0x12c020		91022bfb		ADD $138, RSP, R27					
  repro_test.go:32	0x12c024		a9401f66		LDP (R27), (R6, R7)					
  repro_test.go:32	0x12c028		91012bfb		ADD $74, RSP, R27					
  repro_test.go:32	0x12c02c		a9402768		LDP (R27), (R8, R9)					
  repro_test.go:32	0x12c030		eb05007f		CMP R5, R3						
  repro_test.go:32	0x12c034		9a9f17e3		CSET EQ, R3						
  repro_test.go:32	0x12c038		eb0900ff		CMP R9, R7						
  repro_test.go:32	0x12c03c		9a9f17e5		CSET EQ, R5						
  repro_test.go:32	0x12c040		eb0800df		CMP R8, R6						
  repro_test.go:32	0x12c044		9a9f17e6		CSET EQ, R6						
  repro_test.go:32	0x12c048		8a0500c5		AND R5, R6, R5						
  repro_test.go:32	0x12c04c		eb04005f		CMP R4, R2						
  repro_test.go:32	0x12c050		9a9f17e2		CSET EQ, R2						
  repro_test.go:32	0x12c054		8a030042		AND R3, R2, R2						
  repro_test.go:32	0x12c058		8a050042		AND R5, R2, R2						
  repro_test.go:32	0x12c05c		37000242		TBNZ $0, R2, 18(PC)					
  repro_test.go:32	0x12c060		910a83fb		ADD $672, RSP, R27					
  repro_test.go:32	0x12c064		a9007f7f		STP (ZR, ZR), (R27)					
  repro_test.go:32	0x12c068		f940a3e0		MOVD 320(RSP), R0					
  repro_test.go:32	0x12c06c		97fd8325		CALL runtime.convT64(SB)				
  repro_test.go:32	0x12c070		f0000a01		ADRP 1323008(PC), R1					
  repro_test.go:32	0x12c074		91106021		ADD $1048, R1, R1					
  repro_test.go:32	0x12c078		910a83fb		ADD $672, RSP, R27					
  repro_test.go:32	0x12c07c		a9000361		STP (R1, R0), (R27)					
  repro_test.go:32	0x12c080		f94167e0		MOVD 712(RSP), R0					
  repro_test.go:32	0x12c084		3980001b		MOVB (R0), R27						
  repro_test.go:32	0x12c088		90000021		ADRP 16384(PC), R1					
  repro_test.go:32	0x12c08c		913f6421		ADD $4057, R1, R1					
  repro_test.go:32	0x12c090		d2800122		MOVD $9, R2						
  repro_test.go:32	0x12c094		910a83e3		ADD $672, RSP, R3					
  repro_test.go:32	0x12c098		b24003e4		ORR $1, ZR, R4						
  repro_test.go:32	0x12c09c		aa0403e5		MOVD R4, R5						
  repro_test.go:32	0x12c0a0		97fee62c		CALL testing.(*common).Fatalf(SB)			
  repro_test.go:34	0x12c0a4		f9415be3		MOVD 688(RSP), R3					
  repro_test.go:34	0x12c0a8		3941c064		MOVBU 112(R3), R4					
  repro_test.go:35	0x12c0ac		b0000b05		ADRP 1445888(PC), R5					
  repro_test.go:35	0x12c0b0		913660a5		ADD $3480, R5, R5					
  repro_test.go:35	0x12c0b4		b0000b06		ADRP 1445888(PC), R6					
  repro_test.go:35	0x12c0b8		913680c6		ADD $3488, R6, R6					
  repro_test.go:35	0x12c0bc		9109e3fb		ADD $632, RSP, R27					
  repro_test.go:35	0x12c0c0		a9001b65		STP (R5, R6), (R27)					
  repro_test.go:35	0x12c0c4		b0000b05		ADRP 1445888(PC), R5					
  repro_test.go:35	0x12c0c8		913640a5		ADD $3472, R5, R5					
  repro_test.go:35	0x12c0cc		f90147e5		MOVD R5, 648(RSP)					
  repro_test.go:35	0x12c0d0		7200009f		TSTW $1, R4						
  repro_test.go:35	0x12c0d4		b27e0be4		ORR $28, ZR, R4						
  repro_test.go:35	0x12c0d8		b27b03e5		ORR $32, ZR, R5						
  repro_test.go:35	0x12c0dc		9a851084		CSEL NE, R4, R5, R4					
  repro_test.go:35	0x12c0e0		f9009fe4		MOVD R4, 312(RSP)					
  repro_test.go:34	0x12c0e4		aa1f03e6		MOVD ZR, R6						
  repro_test.go:34	0x12c0e8		14000004		JMP 4(PC)						
  repro_test.go:35	0x12c0ec		f94127e7		MOVD 584(RSP), R7					
  repro_test.go:35	0x12c0f0		910004e6		ADD $1, R7, R6						
  repro_test.go:35	0x12c0f4		b27b03e5		ORR $32, ZR, R5						
  repro_test.go:35	0x12c0f8		f1000cdf		CMP $3, R6						
  repro_test.go:35	0x12c0fc		54ffe20a		BGE -240(PC)						
  repro_test.go:35	0x12c100		f90127e6		MOVD R6, 584(RSP)					
  repro_test.go:35	0x12c104		9109e3e7		ADD $632, RSP, R7					
  repro_test.go:35	0x12c108		f86678e8		MOVD (R7)(R6<<3), R8					
  repro_test.go:35	0x12c10c		f90137e8		MOVD R8, 616(RSP)					
  repro_test.go:36	0x12c110		b24007e1		ORR $3, ZR, R1						
  repro_test.go:36	0x12c114		910943fb		ADD $592, RSP, R27					
  repro_test.go:36	0x12c118		a9001761		STP (R1, R5), (R27)					
  repro_test.go:36	0x12c11c		b27a03e9		ORR $64, ZR, R9						
  repro_test.go:36	0x12c120		f90133e9		MOVD R9, 608(RSP)					
  repro_test.go:36	0x12c124		aa1f03e0		MOVD ZR, R0						
  repro_test.go:36	0x12c128		14000004		JMP 4(PC)						
  repro_test.go:36	0x12c12c		f94123e3		MOVD 576(RSP), R3					
  repro_test.go:36	0x12c130		91000460		ADD $1, R3, R0						
  repro_test.go:36	0x12c134		b24007e1		ORR $3, ZR, R1						
  repro_test.go:36	0x12c138		f1000c1f		CMP $3, R0						
  repro_test.go:36	0x12c13c		54fffd8a		BGE -20(PC)						
  repro_test.go:36	0x12c140		f90123e0		MOVD R0, 576(RSP)					
  repro_test.go:36	0x12c144		910943e3		ADD $592, RSP, R3					
  repro_test.go:36	0x12c148		f8607862		MOVD (R3)(R0<<3), R2					
  repro_test.go:36	0x12c14c		f9011fe2		MOVD R2, 568(RSP)					
  repro_test.go:37	0x12c150		f0000a00		ADRP 1323008(PC), R0					
  repro_test.go:37	0x12c154		91096000		ADD $600, R0, R0					
  repro_test.go:37	0x12c158		97fd90fa		CALL runtime.makeslice(SB)				
  repro_test.go:38	0x12c15c		b27e03e3		ORR $4, ZR, R3						
  repro_test.go:38	0x12c160		3902f7e3		MOVB R3, 189(RSP)					
  repro_test.go:38	0x12c164		d280c0a4		MOVD $1541, R4						
  repro_test.go:38	0x12c168		79017fe4		MOVH R4, 190(RSP)					
  repro_test.go:38	0x12c16c		9102f7e5		ADD $189, RSP, R5					
  repro_test.go:38	0x12c170		eb05001f		CMP R5, R0						
  repro_test.go:38	0x12c174		54000060		BEQ 3(PC)						
  repro_test.go:38	0x12c178		39000003		MOVB R3, (R0)						
  repro_test.go:38	0x12c17c		78001004		MOVH R4, 1(R0)						
  repro_test.go:39	0x12c180		910303e4		ADD $192, RSP, R4					
  repro_test.go:39	0x12c184		f9415be5		MOVD 688(RSP), R5					
  repro_test.go:39	0x12c188		ad4044b0		FLDPQ (R5), (F16, F17)					
  repro_test.go:39	0x12c18c		ad004490		FSTPQ (F16, F17), (R4)					
  repro_test.go:39	0x12c190		ad4144b0		FLDPQ 32(R5), (F16, F17)				
  repro_test.go:39	0x12c194		ad014490		FSTPQ (F16, F17), 32(R4)				
  repro_test.go:39	0x12c198		ad4244b0		FLDPQ 64(R5), (F16, F17)				
  repro_test.go:39	0x12c19c		ad024490		FSTPQ (F16, F17), 64(R4)				
  repro_test.go:39	0x12c1a0		3dc018b0		FMOVQ 96(R5), F16					
  repro_test.go:39	0x12c1a4		3d801890		FMOVQ F16, 96(R4)					
  repro_test.go:39	0x12c1a8		f94038b9		MOVD 112(R5), R25					
  repro_test.go:39	0x12c1ac		f9003899		MOVD R25, 112(R4)					
  repro_test.go:40	0x12c1b0		f94137fa		MOVD 616(RSP), R26					
  repro_test.go:40	0x12c1b4		f9400344		MOVD (R26), R4						
  repro_test.go:40	0x12c1b8		aa0003e1		MOVD R0, R1						
  repro_test.go:40	0x12c1bc		b24007e2		ORR $3, ZR, R2						
  repro_test.go:40	0x12c1c0		f9411fe3		MOVD 568(RSP), R3					
  repro_test.go:40	0x12c1c4		aa0503e0		MOVD R5, R0						
  repro_test.go:40	0x12c1c8		d63f0080		CALL (R4)						
  repro_test.go:41	0x12c1cc		f1000c5f		CMP $3, R2						
  repro_test.go:41	0x12c1d0		54000783		BCC 60(PC)						
  repro_test.go:41	0x12c1d4		b27e03e4		ORR $4, ZR, R4						
  repro_test.go:41	0x12c1d8		3902ebe4		MOVB R4, 186(RSP)					
  repro_test.go:41	0x12c1dc		d280c0a4		MOVD $1541, R4						
  repro_test.go:41	0x12c1e0		780bb3e4		MOVH R4, 187(RSP)					
  bytes.go:23		0x12c1e4		798177e4		MOVH 186(RSP), R4					
  bytes.go:23		0x12c1e8		39800805		MOVB 2(R0), R5						
  bytes.go:23		0x12c1ec		d3403c84		UBFX $0, R4, $16, R4					
  bytes.go:23		0x12c1f0		d3401ca5		UBFX $0, R5, $8, R5					
  bytes.go:23		0x12c1f4		79800006		MOVH (R0), R6						
  bytes.go:23		0x12c1f8		d3403cc6		UBFX $0, R6, $16, R6					
  bytes.go:23		0x12c1fc		6b06009f		CMPW R6, R4						
  bytes.go:23		0x12c200		9a9f17e4		CSET EQ, R4						
  bytes.go:23		0x12c204		710018bf		CMPW $6, R5						
  bytes.go:23		0x12c208		9a9f17e5		CSET EQ, R5						
  bytes.go:23		0x12c20c		8a050084		AND R5, R4, R4						
  repro_test.go:41	0x12c210		36000324		TBZ $0, R4, 25(PC)					
  repro_test.go:41	0x12c214		f1000c3f		CMP $3, R1						
  repro_test.go:41	0x12c218		54000523		BCC 41(PC)						
  repro_test.go:41	0x12c21c		d1000c24		SUB $3, R1, R4						
  repro_test.go:41	0x12c220		d1000c45		SUB $3, R2, R5						
  repro_test.go:41	0x12c224		cb0503e5		NEG R5, R5						
  repro_test.go:41	0x12c228		937ffca5		ASR $63, R5, R5						
  repro_test.go:41	0x12c22c		924004a5		AND $3, R5, R5						
  repro_test.go:41	0x12c230		8b050000		ADD R5, R0, R0						
  bytes.go:23		0x12c234		f9409fe5		MOVD 312(RSP), R5					
  bytes.go:23		0x12c238		eb0400bf		CMP R4, R5						
  bytes.go:23		0x12c23c		54000060		BEQ 3(PC)						
  bytes.go:23		0x12c240		b24003e2		ORR $1, ZR, R2						
  bytes.go:23		0x12c244		1400000d		JMP 13(PC)						
  bytes.go:23		0x12c248		9100ebe1		ADD $58, RSP, R1					
  bytes.go:23		0x12c24c		aa0403e2		MOVD R4, R2						
  bytes.go:23		0x12c250		97fb9640		CALL runtime.memequal(SB)				
  repro_test.go:41	0x12c254		37000060		TBNZ $0, R0, 3(PC)					
  repro_test.go:41	0x12c258		b24003e2		ORR $1, ZR, R2						
  repro_test.go:41	0x12c25c		14000007		JMP 7(PC)						
  repro_test.go:41	0x12c260		f9415be0		MOVD 688(RSP), R0					
  repro_test.go:41	0x12c264		910303e1		ADD $192, RSP, R1					
  repro_test.go:41	0x12c268		9400001e		CALL type:.eq.M113(SB)					
  repro_test.go:41	0x12c26c		d2400002		EOR $1, R0, R2						
  repro_test.go:41	0x12c270		14000002		JMP 2(PC)						
  repro_test.go:41	0x12c274		b24003e2		ORR $1, ZR, R2						
  repro_test.go:41	0x12c278		3607f5a2		TBZ $0, R2, -83(PC)					
  repro_test.go:41	0x12c27c		f0000a04		ADRP 1323008(PC), R4					
  repro_test.go:41	0x12c280		91076084		ADD $472, R4, R4					
  repro_test.go:41	0x12c284		d0000085		ADRP 73728(PC), R5					
  repro_test.go:41	0x12c288		913640a5		ADD $3472, R5, R5					
  repro_test.go:41	0x12c28c		910a83fb		ADD $672, RSP, R27					
  repro_test.go:41	0x12c290		a9001764		STP (R4, R5), (R27)					
  repro_test.go:41	0x12c294		f94167e0		MOVD 712(RSP), R0					
  repro_test.go:41	0x12c298		3980001b		MOVB (R0), R27						
  repro_test.go:41	0x12c29c		910a83e1		ADD $672, RSP, R1					
  repro_test.go:41	0x12c2a0		b24003e2		ORR $1, ZR, R2						
  repro_test.go:41	0x12c2a4		aa0203e3		MOVD R2, R3						
  repro_test.go:41	0x12c2a8		97fee572		CALL testing.(*common).Fatal(SB)			
  repro_test.go:41	0x12c2ac		17ffffa0		JMP -96(PC)						
  repro_test.go:45	0x12c2b0		a97ffbfd		LDP -8(RSP), (R29, R30)					
  repro_test.go:45	0x12c2b4		910b03ff		ADD $704, RSP, RSP					
  repro_test.go:45	0x12c2b8		d65f03c0		RET							
  repro_test.go:41	0x12c2bc		97fda38d		CALL runtime.panicBounds(SB)				
  repro_test.go:41	0x12c2c0		97fda38c		CALL runtime.panicBounds(SB)				
  repro_test.go:41	0x12c2c4		d503201f		NOOP							
  repro_test.go:19	0x12c2c8		f90007e0		MOVD R0, 8(RSP)						
  repro_test.go:19	0x12c2cc		aa1e03e3		MOVD R30, R3						
  repro_test.go:19	0x12c2d0		97fd9b50		CALL runtime.morestack_noctxt.abi0(SB)			
  repro_test.go:19	0x12c2d4		f94007e0		MOVD 8(RSP), R0						
  repro_test.go:19	0x12c2d8		17fffe8e		JMP example.com/hashsumreturn.TestReturnAndSnapshot(SB)	
  repro_test.go:19	0x12c2dc		00000000		?							
