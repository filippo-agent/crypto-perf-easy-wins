TEXT carryselect.EqTwoBorrow(SB) /home/exedev/crypto-audit/round4/issues/carry-select/repro.go
  repro.go:11		0x1319a0		eb010002		SUBS R1, R0, R2		
  repro.go:11		0x1319a4		da1f03e2		NGC ZR, R2		
  repro.go:11		0x1319a8		cb0203e2		NEG R2, R2		
  repro.go:12		0x1319ac		eb000021		SUBS R0, R1, R1		
  repro.go:12		0x1319b0		da1f03e1		NGC ZR, R1		
  repro.go:12		0x1319b4		cb0103e1		NEG R1, R1		
  repro.go:13		0x1319b8		aa010041		ORR R1, R2, R1		
  repro.go:13		0x1319bc		d2400020		EOR $1, R1, R0		
  repro.go:13		0x1319c0		d65f03c0		RET			
  repro.go:13		0x1319c4		00000000		?			
  repro.go:13		0x1319c8		00000000		?			
  repro.go:13		0x1319cc		00000000		?			

TEXT carryselect.EqXorBorrow(SB) /home/exedev/crypto-audit/round4/issues/carry-select/repro.go
  repro.go:18		0x1319d0		ca010001		EOR R1, R0, R1		
  repro.go:18		0x1319d4		b24003e2		ORR $1, ZR, R2		
  repro.go:18		0x1319d8		eb020021		SUBS R2, R1, R1		
  repro.go:18		0x1319dc		da1f03e1		NGC ZR, R1		
  repro.go:18		0x1319e0		cb0103e0		NEG R1, R0		
  repro.go:19		0x1319e4		d65f03c0		RET			
  repro.go:19		0x1319e8		00000000		?			
  repro.go:19		0x1319ec		00000000		?			

TEXT carryselect.NegBorrow(SB) /home/exedev/crypto-audit/round4/issues/carry-select/repro.go
  repro.go:24		0x1319f0		eb010001		SUBS R1, R0, R1		
  repro.go:24		0x1319f4		da1f03e0		NGC ZR, R0		
  repro.go:25		0x1319f8		d65f03c0		RET			
  repro.go:25		0x1319fc		00000000		?			

TEXT carryselect.NegBorrowSub(SB) /home/exedev/crypto-audit/round4/issues/carry-select/repro.go
  repro.go:31		0x131a00		eb010001		SUBS R1, R0, R1		
  repro.go:32		0x131a04		aa1f03e1		MOVD ZR, R1		
  repro.go:32		0x131a08		fa010020		SBCS R1, R1, R0		
  repro.go:33		0x131a0c		d65f03c0		RET			

TEXT carryselect.AssignMask(SB) /home/exedev/crypto-audit/round4/issues/carry-select/repro.go
  repro.go:40		0x131a10		f9400b90		MOVD 16(R28), R16			
  repro.go:40		0x131a14		eb3063ff		CMP R16, RSP				
  repro.go:40		0x131a18		54000349		BLS 26(PC)				
  repro.go:40		0x131a1c		f81f0ffe		MOVD.W R30, -16(RSP)			
  repro.go:40		0x131a20		f81f83fd		MOVD R29, -8(RSP)			
  repro.go:40		0x131a24		d10023fd		SUB $8, RSP, R29			
  repro.go:40		0x131a28		f9000fe0		MOVD R0, 24(RSP)			
  repro.go:40		0x131a2c		f9001be3		MOVD R3, 48(RSP)			
  repro.go:41		0x131a30		eb0100bf		CMP R1, R5				
  repro.go:41		0x131a34		54000223		BCC 17(PC)				
  repro.go:42		0x131a38		924000c2		AND $1, R6, R2				
  repro.go:42		0x131a3c		cb0203e2		NEG R2, R2				
  repro.go:43		0x131a40		aa1f03e4		MOVD ZR, R4				
  repro.go:43		0x131a44		14000008		JMP 8(PC)				
  repro.go:43		0x131a48		f8647805		MOVD (R0)(R4<<3), R5			
  repro.go:43		0x131a4c		f8647866		MOVD (R3)(R4<<3), R6			
  repro.go:43		0x131a50		ca0600a6		EOR R6, R5, R6				
  repro.go:43		0x131a54		8a060046		AND R6, R2, R6				
  repro.go:43		0x131a58		ca0500c5		EOR R5, R6, R5				
  repro.go:43		0x131a5c		f8247805		MOVD R5, (R0)(R4<<3)			
  repro.go:43		0x131a60		91000484		ADD $1, R4, R4				
  repro.go:43		0x131a64		eb04003f		CMP R4, R1				
  repro.go:43		0x131a68		54ffff0c		BGT -8(PC)				
  repro.go:44		0x131a6c		f85f83fd		MOVD -8(RSP), R29			
  repro.go:44		0x131a70		f84107fe		MOVD.P 16(RSP), R30			
  repro.go:44		0x131a74		d65f03c0		RET					
  repro.go:41		0x131a78		97fd8e36		CALL runtime.panicBounds(SB)		
  repro.go:41		0x131a7c		d503201f		NOOP					
  repro.go:40		0x131a80		a90087e0		STP (R0, R1), 8(RSP)			
  repro.go:40		0x131a84		a9018fe2		STP (R2, R3), 24(RSP)			
  repro.go:40		0x131a88		a90297e4		STP (R4, R5), 40(RSP)			
  repro.go:40		0x131a8c		f9001fe6		MOVD R6, 56(RSP)			
  repro.go:40		0x131a90		aa1e03e3		MOVD R30, R3				
  repro.go:40		0x131a94		97fd85f7		CALL runtime.morestack_noctxt.abi0(SB)	
  repro.go:40		0x131a98		a94087e0		LDP 8(RSP), (R0, R1)			
  repro.go:40		0x131a9c		a9418fe2		LDP 24(RSP), (R2, R3)			
  repro.go:40		0x131aa0		a94297e4		LDP 40(RSP), (R4, R5)			
  repro.go:40		0x131aa4		f9401fe6		MOVD 56(RSP), R6			
  repro.go:40		0x131aa8		17ffffda		JMP carryselect.AssignMask(SB)		
  repro.go:40		0x131aac		00000000		?					

TEXT carryselect.AssignSelect(SB) /home/exedev/crypto-audit/round4/issues/carry-select/repro.go
  repro.go:47		0x131ab0		f9400b90		MOVD 16(R28), R16			
  repro.go:47		0x131ab4		eb3063ff		CMP R16, RSP				
  repro.go:47		0x131ab8		54000309		BLS 24(PC)				
  repro.go:47		0x131abc		f81f0ffe		MOVD.W R30, -16(RSP)			
  repro.go:47		0x131ac0		f81f83fd		MOVD R29, -8(RSP)			
  repro.go:47		0x131ac4		d10023fd		SUB $8, RSP, R29			
  repro.go:47		0x131ac8		f9000fe0		MOVD R0, 24(RSP)			
  repro.go:47		0x131acc		f9001be3		MOVD R3, 48(RSP)			
  repro.go:48		0x131ad0		eb0100bf		CMP R1, R5				
  repro.go:48		0x131ad4		540001e3		BCC 15(PC)				
  repro.go:49		0x131ad8		924000c2		AND $1, R6, R2				
  repro.go:49		0x131adc		aa1f03e4		MOVD ZR, R4				
  repro.go:49		0x131ae0		14000007		JMP 7(PC)				
  repro.go:49		0x131ae4		f8647865		MOVD (R3)(R4<<3), R5			
  repro.go:49		0x131ae8		f8647806		MOVD (R0)(R4<<3), R6			
  constant_time.go:28	0x131aec		f100005f		CMP $0, R2				
  constant_time.go:28	0x131af0		9a8610a5		CSEL NE, R5, R6, R5			
  repro.go:49		0x131af4		f8247805		MOVD R5, (R0)(R4<<3)			
  repro.go:49		0x131af8		91000484		ADD $1, R4, R4				
  repro.go:49		0x131afc		eb04003f		CMP R4, R1				
  repro.go:49		0x131b00		54ffff2c		BGT -7(PC)				
  repro.go:50		0x131b04		f85f83fd		MOVD -8(RSP), R29			
  repro.go:50		0x131b08		f84107fe		MOVD.P 16(RSP), R30			
  repro.go:50		0x131b0c		d65f03c0		RET					
  repro.go:48		0x131b10		97fd8e10		CALL runtime.panicBounds(SB)		
  repro.go:48		0x131b14		d503201f		NOOP					
  repro.go:47		0x131b18		a90087e0		STP (R0, R1), 8(RSP)			
  repro.go:47		0x131b1c		a9018fe2		STP (R2, R3), 24(RSP)			
  repro.go:47		0x131b20		a90297e4		STP (R4, R5), 40(RSP)			
  repro.go:47		0x131b24		f9001fe6		MOVD R6, 56(RSP)			
  repro.go:47		0x131b28		aa1e03e3		MOVD R30, R3				
  repro.go:47		0x131b2c		97fd85d1		CALL runtime.morestack_noctxt.abi0(SB)	
  repro.go:47		0x131b30		a94087e0		LDP 8(RSP), (R0, R1)			
  repro.go:47		0x131b34		a9418fe2		LDP 24(RSP), (R2, R3)			
  repro.go:47		0x131b38		a94297e4		LDP 40(RSP), (R4, R5)			
  repro.go:47		0x131b3c		f9401fe6		MOVD 56(RSP), R6			
  repro.go:47		0x131b40		17ffffdc		JMP carryselect.AssignSelect(SB)	
  repro.go:47		0x131b44		00000000		?					
  repro.go:47		0x131b48		00000000		?					
  repro.go:47		0x131b4c		00000000		?					

TEXT carryselect.SubLoop(SB) /home/exedev/crypto-audit/round4/issues/carry-select/repro.go
  repro.go:55		0x131b50		f9400b90		MOVD 16(R28), R16			
  repro.go:55		0x131b54		eb3063ff		CMP R16, RSP				
  repro.go:55		0x131b58		54000369		BLS 27(PC)				
  repro.go:55		0x131b5c		f81f0ffe		MOVD.W R30, -16(RSP)			
  repro.go:55		0x131b60		f81f83fd		MOVD R29, -8(RSP)			
  repro.go:55		0x131b64		d10023fd		SUB $8, RSP, R29			
  repro.go:55		0x131b68		f9000fe0		MOVD R0, 24(RSP)			
  repro.go:55		0x131b6c		f9001be3		MOVD R3, 48(RSP)			
  repro.go:56		0x131b70		eb0100bf		CMP R1, R5				
  repro.go:56		0x131b74		54000243		BCC 18(PC)				
  repro.go:57		0x131b78		aa1f03e2		MOVD ZR, R2				
  repro.go:57		0x131b7c		aa1f03e4		MOVD ZR, R4				
  repro.go:57		0x131b80		14000009		JMP 9(PC)				
  repro.go:57		0x131b84		f8647805		MOVD (R0)(R4<<3), R5			
  repro.go:57		0x131b88		f8647866		MOVD (R3)(R4<<3), R6			
  repro.go:57		0x131b8c		eb0203e7		NEGS R2, R7				
  repro.go:57		0x131b90		fa0600a5		SBCS R6, R5, R5				
  repro.go:57		0x131b94		f8247805		MOVD R5, (R0)(R4<<3)			
  repro.go:57		0x131b98		da1f03e5		NGC ZR, R5				
  repro.go:57		0x131b9c		cb0503e2		NEG R5, R2				
  repro.go:57		0x131ba0		91000484		ADD $1, R4, R4				
  repro.go:57		0x131ba4		eb04003f		CMP R4, R1				
  repro.go:57		0x131ba8		54fffeec		BGT -9(PC)				
  repro.go:58		0x131bac		aa0203e0		MOVD R2, R0				
  repro.go:58		0x131bb0		f85f83fd		MOVD -8(RSP), R29			
  repro.go:58		0x131bb4		f84107fe		MOVD.P 16(RSP), R30			
  repro.go:58		0x131bb8		d65f03c0		RET					
  repro.go:56		0x131bbc		97fd8de5		CALL runtime.panicBounds(SB)		
  repro.go:56		0x131bc0		d503201f		NOOP					
  repro.go:55		0x131bc4		a90087e0		STP (R0, R1), 8(RSP)			
  repro.go:55		0x131bc8		a9018fe2		STP (R2, R3), 24(RSP)			
  repro.go:55		0x131bcc		a90297e4		STP (R4, R5), 40(RSP)			
  repro.go:55		0x131bd0		aa1e03e3		MOVD R30, R3				
  repro.go:55		0x131bd4		97fd85a7		CALL runtime.morestack_noctxt.abi0(SB)	
  repro.go:55		0x131bd8		a94087e0		LDP 8(RSP), (R0, R1)			
  repro.go:55		0x131bdc		a9418fe2		LDP 24(RSP), (R2, R3)			
  repro.go:55		0x131be0		a94297e4		LDP 40(RSP), (R4, R5)			
  repro.go:55		0x131be4		17ffffdb		JMP carryselect.SubLoop(SB)		
  repro.go:55		0x131be8		00000000		?					
  repro.go:55		0x131bec		00000000		?					

TEXT carryselect.Sub4(SB) /home/exedev/crypto-audit/round4/issues/carry-select/repro.go
  repro.go:64		0x131bf0		f9400002		MOVD (R0), R2		
  repro.go:64		0x131bf4		f9400023		MOVD (R1), R3		
  repro.go:64		0x131bf8		eb030042		SUBS R3, R2, R2		
  repro.go:64		0x131bfc		f9000002		MOVD R2, (R0)		
  repro.go:65		0x131c00		f9400402		MOVD 8(R0), R2		
  repro.go:65		0x131c04		f9400423		MOVD 8(R1), R3		
  repro.go:65		0x131c08		fa030042		SBCS R3, R2, R2		
  repro.go:65		0x131c0c		f9000402		MOVD R2, 8(R0)		
  repro.go:66		0x131c10		f9400802		MOVD 16(R0), R2		
  repro.go:66		0x131c14		f9400823		MOVD 16(R1), R3		
  repro.go:66		0x131c18		fa030042		SBCS R3, R2, R2		
  repro.go:66		0x131c1c		f9000802		MOVD R2, 16(R0)		
  repro.go:67		0x131c20		f9400c02		MOVD 24(R0), R2		
  repro.go:67		0x131c24		f9400c21		MOVD 24(R1), R1		
  repro.go:67		0x131c28		fa010041		SBCS R1, R2, R1		
  repro.go:67		0x131c2c		f9000c01		MOVD R1, 24(R0)		
  repro.go:67		0x131c30		da1f03e1		NGC ZR, R1		
  repro.go:67		0x131c34		cb0103e0		NEG R1, R0		
  repro.go:68		0x131c38		d65f03c0		RET			
  repro.go:68		0x131c3c		00000000		?			

TEXT carryselect.Shift51(SB) /home/exedev/crypto-audit/round4/issues/carry-select/repro.go
  repro.go:75		0x131c40		93c0cc20		EXTR $51, R0, R1, R0	
  repro.go:75		0x131c44		d65f03c0		RET			
  repro.go:75		0x131c48		00000000		?			
  repro.go:75		0x131c4c		00000000		?			

TEXT carryselect.DotSchedule(SB) /home/exedev/crypto-audit/round4/issues/carry-select/schedule.go
  schedule.go:18	0x131c50		f81d0ffe		MOVD.W R30, -48(RSP)	
  schedule.go:18	0x131c54		f81f83fd		MOVD R29, -8(RSP)	
  schedule.go:18	0x131c58		d10023fd		SUB $8, RSP, R29	
  schedule.go:18	0x131c5c		910183e0		ADD $96, RSP, R0	
  schedule.go:18	0x131c60		a9007c1f		STP (ZR, ZR), (R0)	
  schedule.go:18	0x131c64		a9017c1f		STP (ZR, ZR), 16(R0)	
  schedule.go:18	0x131c68		f900101f		MOVD ZR, 32(R0)		
  schedule.go:20	0x131c6c		a94387e0		LDP 56(RSP), (R0, R1)	
  schedule.go:22	0x131c70		f9402fe2		MOVD 88(RSP), R2	
  schedule.go:23	0x131c74		a94493e3		LDP 72(RSP), (R3, R4)	
  schedule.go:6		0x131c78		9bc07c05		UMULH R0, R0, R5	
  schedule.go:6		0x131c7c		9b007c06		MUL R0, R0, R6		
  schedule.go:8		0x131c80		9bc17c47		UMULH R1, R2, R7	
  schedule.go:8		0x131c84		9b017c48		MUL R1, R2, R8		
  schedule.go:8		0x131c88		9bc47c69		UMULH R4, R3, R9	
  schedule.go:8		0x131c8c		9b047c6a		MUL R4, R3, R10		
  schedule.go:6		0x131c90		9b007c2b		MUL R0, R1, R11		
  schedule.go:6		0x131c94		9bc07c2c		UMULH R0, R1, R12	
  schedule.go:8		0x131c98		9b027c6d		MUL R2, R3, R13		
  schedule.go:8		0x131c9c		9bc27c6e		UMULH R2, R3, R14	
  schedule.go:8		0x131ca0		9b047c8f		MUL R4, R4, R15		
  schedule.go:8		0x131ca4		9bc47c90		UMULH R4, R4, R16	
  schedule.go:6		0x131ca8		9b007c71		MUL R0, R3, R17		
  schedule.go:6		0x131cac		9bc07c73		UMULH R0, R3, R19	
  schedule.go:8		0x131cb0		9b017c34		MUL R1, R1, R20		
  schedule.go:8		0x131cb4		9bc17c35		UMULH R1, R1, R21	
  schedule.go:8		0x131cb8		9b047c56		MUL R4, R2, R22		
  schedule.go:8		0x131cbc		9bc47c57		UMULH R4, R2, R23	
  schedule.go:6		0x131cc0		9b007c98		MUL R0, R4, R24		
  schedule.go:6		0x131cc4		9bc07c99		UMULH R0, R4, R25	
  schedule.go:6		0x131cc8		f90013f9		MOVD R25, 32(RSP)	
  schedule.go:8		0x131ccc		9b017c7a		MUL R1, R3, R26		
  schedule.go:8		0x131cd0		9bc17c79		UMULH R1, R3, R25	
  schedule.go:8		0x131cd4		f9000ff9		MOVD R25, 24(RSP)	
  schedule.go:8		0x131cd8		9b027c59		MUL R2, R2, R25		
  schedule.go:8		0x131cdc		f90007f9		MOVD R25, 8(RSP)	
  schedule.go:8		0x131ce0		9bc27c59		UMULH R2, R2, R25	
  schedule.go:8		0x131ce4		f9000bf9		MOVD R25, 16(RSP)	
  schedule.go:6		0x131ce8		9b007c59		MUL R0, R2, R25		
  schedule.go:6		0x131cec		9bc07c40		UMULH R0, R2, R0	
  schedule.go:8		0x131cf0		9b017c82		MUL R1, R4, R2		
  schedule.go:8		0x131cf4		9bc17c81		UMULH R1, R4, R1	
  schedule.go:8		0x131cf8		9b037c64		MUL R3, R3, R4		
  schedule.go:8		0x131cfc		9bc37c63		UMULH R3, R3, R3	
  schedule.go:19	0x131d00		d503201f		NOOP			
  schedule.go:19	0x131d04		d503201f		NOOP			
  schedule.go:19	0x131d08		d503201f		NOOP			
  schedule.go:21	0x131d0c		d503201f		NOOP			
  schedule.go:21	0x131d10		d503201f		NOOP			
  schedule.go:21	0x131d14		d503201f		NOOP			
  schedule.go:9		0x131d18		ab060106		ADDS R6, R8, R6		
  schedule.go:10	0x131d1c		ba0500e5		ADCS R5, R7, R5		
  schedule.go:9		0x131d20		ab060146		ADDS R6, R10, R6	
  schedule.go:10	0x131d24		ba050125		ADCS R5, R9, R5		
  schedule.go:9		0x131d28		ab0b01a7		ADDS R11, R13, R7	
  schedule.go:10	0x131d2c		ba0c01c8		ADCS R12, R14, R8	
  schedule.go:9		0x131d30		ab0701e7		ADDS R7, R15, R7	
  schedule.go:10	0x131d34		ba080208		ADCS R8, R16, R8	
  schedule.go:24	0x131d38		ca0500e5		EOR R5, R7, R5		
  schedule.go:9		0x131d3c		ab110287		ADDS R17, R20, R7	
  schedule.go:10	0x131d40		ba1302a9		ADCS R19, R21, R9	
  schedule.go:9		0x131d44		ab0702c7		ADDS R7, R22, R7	
  schedule.go:10	0x131d48		ba0902e9		ADCS R9, R23, R9	
  schedule.go:24	0x131d4c		ca0800e7		EOR R8, R7, R7		
  schedule.go:9		0x131d50		ab180348		ADDS R24, R26, R8	
  schedule.go:10	0x131d54		a941abeb		LDP 24(RSP), (R11, R10)	
  schedule.go:10	0x131d58		ba0b014a		ADCS R11, R10, R10	
  schedule.go:9		0x131d5c		f94007eb		MOVD 8(RSP), R11	
  schedule.go:9		0x131d60		ab080168		ADDS R8, R11, R8	
  schedule.go:10	0x131d64		f9400beb		MOVD 16(RSP), R11	
  schedule.go:10	0x131d68		ba0a016a		ADCS R10, R11, R10	
  schedule.go:24	0x131d6c		ca090108		EOR R9, R8, R8		
  schedule.go:9		0x131d70		ab190042		ADDS R25, R2, R2	
  schedule.go:10	0x131d74		ba000020		ADCS R0, R1, R0		
  schedule.go:9		0x131d78		ab020081		ADDS R2, R4, R1		
  schedule.go:10	0x131d7c		ba000060		ADCS R0, R3, R0		
  schedule.go:24	0x131d80		ca060000		EOR R6, R0, R0		
  schedule.go:24	0x131d84		a90617e0		STP (R0, R5), 96(RSP)	
  schedule.go:24	0x131d88		a90723e7		STP (R7, R8), 112(RSP)	
  schedule.go:24	0x131d8c		ca0a0020		EOR R10, R1, R0		
  schedule.go:24	0x131d90		f90043e0		MOVD R0, 128(RSP)	
  schedule.go:24	0x131d94		9100a3fd		ADD $40, RSP, R29	
  schedule.go:24	0x131d98		9100c3ff		ADD $48, RSP, RSP	
  schedule.go:24	0x131d9c		d65f03c0		RET			

TEXT carryselect.row(SB) /home/exedev/crypto-audit/round4/issues/carry-select/schedule.go
  schedule.go:30	0x131da0		d503201f		NOOP			
  schedule.go:6		0x131da4		9b007c26		MUL R0, R1, R6		
  schedule.go:6		0x131da8		9bc07c27		UMULH R0, R1, R7	
  schedule.go:8		0x131dac		9b027c68		MUL R2, R3, R8		
  schedule.go:8		0x131db0		9bc27c62		UMULH R2, R3, R2	
  schedule.go:8		0x131db4		9b047ca3		MUL R4, R5, R3		
  schedule.go:8		0x131db8		9bc47ca4		UMULH R4, R5, R4	
  schedule.go:9		0x131dbc		ab060105		ADDS R6, R8, R5		
  schedule.go:10	0x131dc0		ba070042		ADCS R7, R2, R2		
  schedule.go:9		0x131dc4		ab050060		ADDS R5, R3, R0		
  schedule.go:10	0x131dc8		ba020081		ADCS R2, R4, R1		
  schedule.go:30	0x131dcc		d65f03c0		RET			

TEXT carryselect.DotBarrier(SB) /home/exedev/crypto-audit/round4/issues/carry-select/schedule.go
  schedule.go:33	0x131dd0		f9400b90		MOVD 16(R28), R16			
  schedule.go:33	0x131dd4		eb3063ff		CMP R16, RSP				
  schedule.go:33	0x131dd8		540006a9		BLS 53(PC)				
  schedule.go:33	0x131ddc		f8180ffe		MOVD.W R30, -128(RSP)			
  schedule.go:33	0x131de0		f81f83fd		MOVD R29, -8(RSP)			
  schedule.go:33	0x131de4		d10023fd		SUB $8, RSP, R29			
  schedule.go:33	0x131de8		9102c3e6		ADD $176, RSP, R6			
  schedule.go:33	0x131dec		a9007cdf		STP (ZR, ZR), (R6)			
  schedule.go:33	0x131df0		a9017cdf		STP (ZR, ZR), 16(R6)			
  schedule.go:33	0x131df4		f90010df		MOVD ZR, 32(R6)				
  schedule.go:34	0x131df8		a9488be1		LDP 136(RSP), (R1, R2)			
  schedule.go:34	0x131dfc		f94057e3		MOVD 168(RSP), R3			
  schedule.go:34	0x131e00		a94997e4		LDP 152(RSP), (R4, R5)			
  schedule.go:34	0x131e04		aa0103e0		MOVD R1, R0				
  schedule.go:34	0x131e08		97ffffe6		CALL carryselect.row(SB)		
  schedule.go:34	0x131e0c		a90683e1		STP (R1, R0), 104(RSP)			
  schedule.go:35	0x131e10		a94887e0		LDP 136(RSP), (R0, R1)			
  schedule.go:35	0x131e14		a94997e2		LDP 152(RSP), (R2, R5)			
  schedule.go:35	0x131e18		f94057e3		MOVD 168(RSP), R3			
  schedule.go:35	0x131e1c		aa0503e4		MOVD R5, R4				
  schedule.go:35	0x131e20		97ffffe0		CALL carryselect.row(SB)		
  schedule.go:35	0x131e24		a90583e1		STP (R1, R0), 88(RSP)			
  schedule.go:36	0x131e28		a9488fe0		LDP 136(RSP), (R0, R3)			
  schedule.go:36	0x131e2c		a94993e1		LDP 152(RSP), (R1, R4)			
  schedule.go:36	0x131e30		f94057e5		MOVD 168(RSP), R5			
  schedule.go:36	0x131e34		aa0303e2		MOVD R3, R2				
  schedule.go:36	0x131e38		97ffffda		CALL carryselect.row(SB)		
  schedule.go:36	0x131e3c		a90483e1		STP (R1, R0), 72(RSP)			
  schedule.go:37	0x131e40		a9488be0		LDP 136(RSP), (R0, R2)			
  schedule.go:37	0x131e44		a94987e3		LDP 152(RSP), (R3, R1)			
  schedule.go:37	0x131e48		f94057e5		MOVD 168(RSP), R5			
  schedule.go:37	0x131e4c		aa0503e4		MOVD R5, R4				
  schedule.go:37	0x131e50		97ffffd4		CALL carryselect.row(SB)		
  schedule.go:37	0x131e54		a90383e1		STP (R1, R0), 56(RSP)			
  schedule.go:38	0x131e58		a9488be0		LDP 136(RSP), (R0, R2)			
  schedule.go:38	0x131e5c		f94057e1		MOVD 168(RSP), R1			
  schedule.go:38	0x131e60		a9498fe5		LDP 152(RSP), (R5, R3)			
  schedule.go:38	0x131e64		aa0503e4		MOVD R5, R4				
  schedule.go:38	0x131e68		97ffffce		CALL carryselect.row(SB)		
  schedule.go:39	0x131e6c		f9403be6		MOVD 112(RSP), R6			
  schedule.go:39	0x131e70		ca0100c6		EOR R1, R6, R6				
  schedule.go:39	0x131e74		a9461fe8		LDP 96(RSP), (R8, R7)			
  schedule.go:39	0x131e78		ca0800e7		EOR R8, R7, R7				
  schedule.go:39	0x131e7c		a90b1fe6		STP (R6, R7), 176(RSP)			
  schedule.go:39	0x131e80		a9451be7		LDP 80(RSP), (R7, R6)			
  schedule.go:39	0x131e84		ca0700c6		EOR R7, R6, R6				
  schedule.go:39	0x131e88		a9441fe8		LDP 64(RSP), (R8, R7)			
  schedule.go:39	0x131e8c		ca0800e7		EOR R8, R7, R7				
  schedule.go:39	0x131e90		a90c1fe6		STP (R6, R7), 192(RSP)			
  schedule.go:39	0x131e94		f9401fe6		MOVD 56(RSP), R6			
  schedule.go:39	0x131e98		ca0000c6		EOR R0, R6, R6				
  schedule.go:39	0x131e9c		f9006be6		MOVD R6, 208(RSP)			
  schedule.go:39	0x131ea0		f85f83fd		MOVD -8(RSP), R29			
  schedule.go:39	0x131ea4		f84807fe		MOVD.P 128(RSP), R30			
  schedule.go:39	0x131ea8		d65f03c0		RET					
  schedule.go:33	0x131eac		aa1e03e3		MOVD R30, R3				
  schedule.go:33	0x131eb0		97fd84f0		CALL runtime.morestack_noctxt.abi0(SB)	
  schedule.go:33	0x131eb4		17ffffc7		JMP carryselect.DotBarrier(SB)		
  schedule.go:33	0x131eb8		00000000		?					
  schedule.go:33	0x131ebc		00000000		?					

TEXT carryselect.TestEqualityAndMask(SB) /home/exedev/crypto-audit/round4/issues/carry-select/repro_test.go
  repro_test.go:12	0x131ec0		f9400b90		MOVD 16(R28), R16			
  repro_test.go:12	0x131ec4		d10503f1		SUB $320, RSP, R17			
  repro_test.go:12	0x131ec8		eb10023f		CMP R16, R17				
  repro_test.go:12	0x131ecc		540023e9		BLS 287(PC)				
  repro_test.go:12	0x131ed0		d10703f4		SUB $448, RSP, R20			
  repro_test.go:12	0x131ed4		a93ffa9d		STP (R29, R30), -8(R20)			
  repro_test.go:12	0x131ed8		9100029f		MOVD R20, RSP				
  repro_test.go:12	0x131edc		d10023fd		SUB $8, RSP, R29			
  rand.go:79		0x131ee0		f900e7e0		MOVD R0, 456(RSP)			
  repro_test.go:13	0x131ee4		910423e1		ADD $264, RSP, R1			
  repro_test.go:13	0x131ee8		a9007c3f		STP (ZR, ZR), (R1)			
  repro_test.go:13	0x131eec		a9017c3f		STP (ZR, ZR), 16(R1)			
  repro_test.go:13	0x131ef0		a9027c3f		STP (ZR, ZR), 32(R1)			
  repro_test.go:13	0x131ef4		a9037c3f		STP (ZR, ZR), 48(R1)			
  repro_test.go:13	0x131ef8		a9047c3f		STP (ZR, ZR), 64(R1)			
  repro_test.go:13	0x131efc		b24003e1		ORR $1, ZR, R1				
  repro_test.go:13	0x131f00		b27f03e2		ORR $2, ZR, R2				
  repro_test.go:13	0x131f04		a9110be1		STP (R1, R2), 272(RSP)			
  repro_test.go:13	0x131f08		b2400fe1		ORR $15, ZR, R1				
  repro_test.go:13	0x131f0c		b27c03e2		ORR $16, ZR, R2				
  repro_test.go:13	0x131f10		a9120be1		STP (R1, R2), 288(RSP)			
  repro_test.go:13	0x131f14		d2b00001		MOVD $2147483648, R1			
  repro_test.go:13	0x131f18		d2c00022		MOVD $4294967296, R2			
  repro_test.go:13	0x131f1c		a9130be1		STP (R1, R2), 304(RSP)			
  repro_test.go:13	0x131f20		d2f00001		MOVD $-9223372036854775808, R1		
  repro_test.go:13	0x131f24		92800002		MOVD $-1, R2				
  repro_test.go:13	0x131f28		a9140be1		STP (R1, R2), 320(RSP)			
  repro_test.go:13	0x131f2c		92800021		MOVD $-2, R1				
  repro_test.go:13	0x131f30		f900abe1		MOVD R1, 336(RSP)			
  repro_test.go:14	0x131f34		d503201f		NOOP					
  rand.go:52		0x131f38		d503201f		NOOP					
  rand.go:56		0x131f3c		90000b20		ADRP 1458176(PC), R0			
  rand.go:56		0x131f40		91070000		ADD $448, R0, R0			
  rand.go:56		0x131f44		97fbe193		CALL runtime.newobject(SB)		
  rand.go:56		0x131f48		f900dbe0		MOVD R0, 432(RSP)			
  rand.go:57		0x131f4c		b24003e1		ORR $1, ZR, R1				
  rand.go:57		0x131f50		97fea15c		CALL math/rand.(*rngSource).Seed(SB)	
  repro_test.go:14	0x131f54		d503201f		NOOP					
  rand.go:79		0x131f58		b0000ca0		ADRP 1658880(PC), R0			
  rand.go:79		0x131f5c		913d4000		ADD $3920, R0, R0			
  rand.go:79		0x131f60		c8dffc01		LDAR (R0), R1				
  rand.go:79		0x131f64		f9400022		MOVD (R1), R2				
  rand.go:79		0x131f68		90000bbb		ADRP 1523712(PC), R27			
  rand.go:79		0x131f6c		b9444b63		MOVWU 1096(R27), R3			
  rand.go:79		0x131f70		14000002		JMP 2(PC)				
  rand.go:79		0x131f74		aa0403e3		MOVD R4, R3				
  rand.go:79		0x131f78		8a020064		AND R2, R3, R4				
  rand.go:79		0x131f7c		d37cec84		LSL $4, R4, R4				
  rand.go:79		0x131f80		91002084		ADD $8, R4, R4				
  rand.go:79		0x131f84		f8646825		MOVD (R1)(R4), R5			
  rand.go:79		0x131f88		8b040024		ADD R4, R1, R4				
  rand.go:79		0x131f8c		f00009a6		ADRP 1273856(PC), R6			
  rand.go:79		0x131f90		913e40c6		ADD $3984, R6, R6			
  rand.go:79		0x131f94		eb0600bf		CMP R6, R5				
  rand.go:79		0x131f98		540000c0		BEQ 6(PC)				
  rand.go:79		0x131f9c		91000464		ADD $1, R3, R4				
  rand.go:79		0x131fa0		b5fffea5		CBNZ R5, -11(PC)			
  rand.go:79		0x131fa4		aa0603e1		MOVD R6, R1				
  rand.go:79		0x131fa8		97fbd3a6		CALL runtime.typeAssert(SB)		
  rand.go:79		0x131fac		14000002		JMP 2(PC)				
  rand.go:79		0x131fb0		f9400480		MOVD 8(R4), R0				
  rand.go:80		0x131fb4		910583e4		ADD $352, RSP, R4			
  rand.go:80		0x131fb8		a9007c9f		STP (ZR, ZR), (R4)			
  rand.go:80		0x131fbc		a9017c9f		STP (ZR, ZR), 16(R4)			
  rand.go:80		0x131fc0		a9027c9f		STP (ZR, ZR), 32(R4)			
  rand.go:80		0x131fc4		90000ba5		ADRP 1523712(PC), R5			
  rand.go:80		0x131fc8		9110e0a5		ADD $1080, R5, R5			
  rand.go:80		0x131fcc		f940dbe6		MOVD 432(RSP), R6			
  rand.go:80		0x131fd0		a9161be5		STP (R5, R6), 352(RSP)			
  rand.go:80		0x131fd4		a9171be0		STP (R0, R6), 368(RSP)			
  repro_test.go:15	0x131fd8		aa1f03e0		MOVD ZR, R0				
  repro_test.go:13	0x131fdc		910423e1		ADD $264, RSP, R1			
  repro_test.go:13	0x131fe0		d2800142		MOVD $10, R2				
  repro_test.go:13	0x131fe4		d2800143		MOVD $10, R3				
  repro_test.go:15	0x131fe8		14000009		JMP 9(PC)				
  repro_test.go:15	0x131fec		d1000425		SUB $1, R1, R5				
  repro_test.go:15	0x131ff0		f8257860		MOVD R0, (R3)(R5<<3)			
  repro_test.go:15	0x131ff4		f94057e5		MOVD 168(RSP), R5			
  repro_test.go:15	0x131ff8		910004a0		ADD $1, R5, R0				
  rand.go:80		0x131ffc		910583e4		ADD $352, RSP, R4			
  repro_test.go:15	0x132000		aa0103e5		MOVD R1, R5				
  repro_test.go:15	0x132004		aa0303e1		MOVD R3, R1				
  repro_test.go:15	0x132008		aa0503e3		MOVD R5, R3				
  repro_test.go:15	0x13200c		d284e205		MOVD $10000, R5				
  repro_test.go:15	0x132010		eb05001f		CMP R5, R0				
  repro_test.go:15	0x132014		5400030a		BGE 24(PC)				
  repro_test.go:15	0x132018		f90057e0		MOVD R0, 168(RSP)			
  repro_test.go:15	0x13201c		f900afe1		MOVD R1, 344(RSP)			
  repro_test.go:15	0x132020		a9090be3		STP (R3, R2), 144(RSP)			
  repro_test.go:15	0x132024		aa0403e0		MOVD R4, R0				
  repro_test.go:15	0x132028		97fea05a		CALL math/rand.(*Rand).Uint64(SB)	
  repro_test.go:15	0x13202c		f9404be1		MOVD 144(RSP), R1			
  repro_test.go:15	0x132030		91000421		ADD $1, R1, R1				
  repro_test.go:15	0x132034		f9404fe2		MOVD 152(RSP), R2			
  repro_test.go:15	0x132038		eb01005f		CMP R1, R2				
  repro_test.go:15	0x13203c		54000063		BCC 3(PC)				
  repro_test.go:15	0x132040		f940afe3		MOVD 344(RSP), R3			
  repro_test.go:15	0x132044		17ffffea		JMP -22(PC)				
  repro_test.go:15	0x132048		f90063e0		MOVD R0, 192(RSP)			
  repro_test.go:15	0x13204c		f940afe0		MOVD 344(RSP), R0			
  repro_test.go:15	0x132050		b24003e3		ORR $1, ZR, R3				
  repro_test.go:15	0x132054		90000aa4		ADRP 1392640(PC), R4			
  repro_test.go:15	0x132058		91382084		ADD $3592, R4, R4			
  repro_test.go:15	0x13205c		910323e5		ADD $200, RSP, R5			
  repro_test.go:15	0x132060		b27e03e6		ORR $4, ZR, R6				
  repro_test.go:15	0x132064		97fcf853		CALL runtime.growsliceBuf(SB)		
  repro_test.go:15	0x132068		aa0003e3		MOVD R0, R3				
  repro_test.go:15	0x13206c		f94063e0		MOVD 192(RSP), R0			
  repro_test.go:15	0x132070		17ffffdf		JMP -33(PC)				
  repro_test.go:16	0x132074		910703e4		ADD $448, RSP, R4			
  repro_test.go:16	0x132078		910003e5		MOVD RSP, R5				
  repro_test.go:16	0x13207c		cb050084		SUB R5, R4, R4				
  repro_test.go:16	0x132080		aa0103e6		MOVD R1, R6				
  repro_test.go:16	0x132084		cb0500c6		SUB R5, R6, R6				
  repro_test.go:16	0x132088		eb0400df		CMP R4, R6				
  repro_test.go:16	0x13208c		54000102		BCS 8(PC)				
  repro_test.go:16	0x132090		b27d03e0		ORR $8, ZR, R0				
  repro_test.go:15	0x132094		aa0203e4		MOVD R2, R4				
  repro_test.go:16	0x132098		aa0303e2		MOVD R3, R2				
  repro_test.go:16	0x13209c		aa0403e3		MOVD R4, R3				
  repro_test.go:16	0x1320a0		97fcf750		CALL runtime.moveSliceNoScan(SB)	
  repro_test.go:16	0x1320a4		aa0103e3		MOVD R1, R3				
  repro_test.go:16	0x1320a8		aa0003e1		MOVD R0, R1				
  repro_test.go:16	0x1320ac		f900afe1		MOVD R1, 344(RSP)			
  repro_test.go:16	0x1320b0		f9004be3		MOVD R3, 144(RSP)			
  repro_test.go:16	0x1320b4		aa1f03e2		MOVD ZR, R2				
  repro_test.go:16	0x1320b8		14000004		JMP 4(PC)				
  repro_test.go:16	0x1320bc		f940afe1		MOVD 344(RSP), R1			
  repro_test.go:16	0x1320c0		f9404be3		MOVD 144(RSP), R3			
  repro_test.go:16	0x1320c4		f9405fe2		MOVD 184(RSP), R2			
  repro_test.go:16	0x1320c8		eb03005f		CMP R3, R2				
  repro_test.go:16	0x1320cc		54000e0a		BGE 112(PC)				
  repro_test.go:16	0x1320d0		f8627820		MOVD (R1)(R2<<3), R0			
  repro_test.go:16	0x1320d4		f90047e0		MOVD R0, 136(RSP)			
  repro_test.go:17	0x1320d8		9103a3e4		ADD $232, RSP, R4			
  repro_test.go:17	0x1320dc		a9007c9f		STP (ZR, ZR), (R4)			
  repro_test.go:17	0x1320e0		a9017c9f		STP (ZR, ZR), 16(R4)			
  repro_test.go:17	0x1320e4		f90077e0		MOVD R0, 232(RSP)			
  repro_test.go:17	0x1320e8		92800006		MOVD $-1, R6				
  repro_test.go:17	0x1320ec		f9007fe6		MOVD R6, 248(RSP)			
  repro_test.go:17	0x1320f0		91000442		ADD $1, R2, R2				
  repro_test.go:17	0x1320f4		f9005fe2		MOVD R2, 184(RSP)			
  repro_test.go:17	0x1320f8		9ac3085b		UDIV R3, R2, R27			
  repro_test.go:17	0x1320fc		9b038b67		MSUB R3, R2, R27, R7			
  repro_test.go:17	0x132100		f8677827		MOVD (R1)(R7<<3), R7			
  repro_test.go:17	0x132104		f90083e7		MOVD R7, 256(RSP)			
  repro_test.go:17	0x132108		aa1f03e7		MOVD ZR, R7				
  repro_test.go:17	0x13210c		14000005		JMP 5(PC)				
  repro_test.go:17	0x132110		f9405be3		MOVD 176(RSP), R3			
  repro_test.go:17	0x132114		91000467		ADD $1, R3, R7				
  repro_test.go:19	0x132118		aa0203e0		MOVD R2, R0				
  repro_test.go:17	0x13211c		9103a3e4		ADD $232, RSP, R4			
  repro_test.go:17	0x132120		f10010ff		CMP $4, R7				
  repro_test.go:17	0x132124		54fffcca		BGE -26(PC)				
  repro_test.go:17	0x132128		f9005be7		MOVD R7, 176(RSP)			
  repro_test.go:17	0x13212c		f8677881		MOVD (R4)(R7<<3), R1			
  repro_test.go:17	0x132130		f9003fe1		MOVD R1, 120(RSP)			
  repro_test.go:19	0x132134		97fffe1b		CALL carryselect.EqTwoBorrow(SB)	
  repro_test.go:18	0x132138		f9403fe1		MOVD 120(RSP), R1			
  repro_test.go:18	0x13213c		f94047e2		MOVD 136(RSP), R2			
  repro_test.go:18	0x132140		eb02003f		CMP R2, R1				
  repro_test.go:18	0x132144		9a9f17e3		CSET EQ, R3				
  repro_test.go:19	0x132148		eb03001f		CMP R3, R0				
  repro_test.go:19	0x13214c		54000060		BEQ 3(PC)				
  repro_test.go:19	0x132150		b24003e0		ORR $1, ZR, R0				
  repro_test.go:19	0x132154		1400000a		JMP 10(PC)				
  repro_test.go:18	0x132158		3901bfe3		MOVB R3, 111(RSP)			
  repro_test.go:19	0x13215c		aa0203e0		MOVD R2, R0				
  repro_test.go:19	0x132160		97fffe1c		CALL carryselect.EqXorBorrow(SB)	
  repro_test.go:19	0x132164		3941bfe2		MOVBU 111(RSP), R2			
  repro_test.go:19	0x132168		eb02001f		CMP R2, R0				
  repro_test.go:19	0x13216c		9a9f07e2		CSET NE, R2				
  repro_test.go:21	0x132170		f9403fe1		MOVD 120(RSP), R1			
  repro_test.go:19	0x132174		aa0203e0		MOVD R2, R0				
  repro_test.go:21	0x132178		f94047e2		MOVD 136(RSP), R2			
  repro_test.go:19	0x13217c		36000320		TBZ $0, R0, 25(PC)			
  repro_test.go:19	0x132180		910643e1		ADD $400, RSP, R1			
  repro_test.go:19	0x132184		a9007c3f		STP (ZR, ZR), (R1)			
  repro_test.go:19	0x132188		a9017c3f		STP (ZR, ZR), 16(R1)			
  repro_test.go:19	0x13218c		aa0203e0		MOVD R2, R0				
  repro_test.go:19	0x132190		97fd6b74		CALL runtime.convT64(SB)		
  repro_test.go:19	0x132194		90000aa1		ADRP 1392640(PC), R1			
  repro_test.go:19	0x132198		91382021		ADD $3592, R1, R1			
  repro_test.go:19	0x13219c		a91903e1		STP (R1, R0), 400(RSP)			
  repro_test.go:19	0x1321a0		f9403fe0		MOVD 120(RSP), R0			
  repro_test.go:19	0x1321a4		97fd6b6f		CALL runtime.convT64(SB)		
  repro_test.go:19	0x1321a8		90000aa1		ADRP 1392640(PC), R1			
  repro_test.go:19	0x1321ac		91382021		ADD $3592, R1, R1			
  repro_test.go:19	0x1321b0		a91a03e1		STP (R1, R0), 416(RSP)			
  repro_test.go:19	0x1321b4		f940e7e0		MOVD 456(RSP), R0			
  repro_test.go:19	0x1321b8		3980001b		MOVB (R0), R27				
  repro_test.go:19	0x1321bc		d0000061		ADRP 57344(PC), R1			
  repro_test.go:19	0x1321c0		912db421		ADD $2925, R1, R1			
  repro_test.go:19	0x1321c4		b27d03e2		ORR $8, ZR, R2				
  repro_test.go:19	0x1321c8		910643e3		ADD $400, RSP, R3			
  repro_test.go:19	0x1321cc		b27f03e4		ORR $2, ZR, R4				
  repro_test.go:19	0x1321d0		aa0403e5		MOVD R4, R5				
  repro_test.go:19	0x1321d4		97fecf1f		CALL testing.(*common).Fatalf(SB)	
  repro_test.go:21	0x1321d8		f9403fe1		MOVD 120(RSP), R1			
  repro_test.go:21	0x1321dc		f94047e2		MOVD 136(RSP), R2			
  repro_test.go:21	0x1321e0		aa0203e0		MOVD R2, R0				
  repro_test.go:21	0x1321e4		97fffe03		CALL carryselect.NegBorrow(SB)		
  repro_test.go:18	0x1321e8		f9403fe1		MOVD 120(RSP), R1			
  repro_test.go:18	0x1321ec		f94047e2		MOVD 136(RSP), R2			
  repro_test.go:18	0x1321f0		eb02003f		CMP R2, R1				
  repro_test.go:21	0x1321f4		da9f93e3		CSETM HI, R3				
  repro_test.go:21	0x1321f8		eb03001f		CMP R3, R0				
  repro_test.go:20	0x1321fc		54000060		BEQ 3(PC)				
  repro_test.go:20	0x132200		b24003e0		ORR $1, ZR, R0				
  repro_test.go:20	0x132204		14000009		JMP 9(PC)				
  repro_test.go:21	0x132208		f90053e3		MOVD R3, 160(RSP)			
  repro_test.go:21	0x13220c		aa0203e0		MOVD R2, R0				
  repro_test.go:21	0x132210		97fffdfc		CALL carryselect.NegBorrowSub(SB)	
  repro_test.go:21	0x132214		f94053e2		MOVD 160(RSP), R2			
  repro_test.go:21	0x132218		eb02001f		CMP R2, R0				
  repro_test.go:21	0x13221c		9a9f07e2		CSET NE, R2				
  repro_test.go:21	0x132220		aa0203e0		MOVD R2, R0				
  repro_test.go:19	0x132224		f94047e2		MOVD 136(RSP), R2			
  repro_test.go:21	0x132228		3607f740		TBZ $0, R0, -70(PC)			
  repro_test.go:21	0x13222c		910643e1		ADD $400, RSP, R1			
  repro_test.go:21	0x132230		a9007c3f		STP (ZR, ZR), (R1)			
  repro_test.go:21	0x132234		a9017c3f		STP (ZR, ZR), 16(R1)			
  repro_test.go:21	0x132238		aa0203e0		MOVD R2, R0				
  repro_test.go:21	0x13223c		97fd6b49		CALL runtime.convT64(SB)		
  repro_test.go:21	0x132240		90000aa1		ADRP 1392640(PC), R1			
  repro_test.go:21	0x132244		91382021		ADD $3592, R1, R1			
  repro_test.go:21	0x132248		a91903e1		STP (R1, R0), 400(RSP)			
  repro_test.go:21	0x13224c		f9403fe0		MOVD 120(RSP), R0			
  repro_test.go:21	0x132250		97fd6b44		CALL runtime.convT64(SB)		
  repro_test.go:21	0x132254		90000aa1		ADRP 1392640(PC), R1			
  repro_test.go:21	0x132258		91382021		ADD $3592, R1, R1			
  repro_test.go:21	0x13225c		a91a03e1		STP (R1, R0), 416(RSP)			
  repro_test.go:21	0x132260		f940e7e0		MOVD 456(RSP), R0			
  repro_test.go:21	0x132264		3980001b		MOVB (R0), R27				
  repro_test.go:21	0x132268		f0000061		ADRP 61440(PC), R1			
  repro_test.go:21	0x13226c		91175821		ADD $1494, R1, R1			
  repro_test.go:21	0x132270		d2800142		MOVD $10, R2				
  repro_test.go:21	0x132274		910643e3		ADD $400, RSP, R3			
  repro_test.go:21	0x132278		b27f03e4		ORR $2, ZR, R4				
  repro_test.go:21	0x13227c		aa0403e5		MOVD R4, R5				
  repro_test.go:21	0x132280		97fecef4		CALL testing.(*common).Fatalf(SB)	
  repro_test.go:19	0x132284		f94047e2		MOVD 136(RSP), R2			
  repro_test.go:21	0x132288		17ffffa2		JMP -94(PC)				
  repro_test.go:16	0x13228c		aa1f03e2		MOVD ZR, R2				
  repro_test.go:16	0x132290		14000002		JMP 2(PC)				
  repro_test.go:25	0x132294		91000442		ADD $1, R2, R2				
  repro_test.go:25	0x132298		f104005f		CMP $256, R2				
  repro_test.go:25	0x13229c		54000502		BCS 40(PC)				
  repro_test.go:25	0x1322a0		f90043e2		MOVD R2, 128(RSP)			
  repro_test.go:25	0x1322a4		aa1f03e0		MOVD ZR, R0				
  repro_test.go:25	0x1322a8		14000003		JMP 3(PC)				
  repro_test.go:25	0x1322ac		91000440		ADD $1, R2, R0				
  repro_test.go:26	0x1322b0		aa0303e2		MOVD R3, R2				
  repro_test.go:25	0x1322b4		f104001f		CMP $256, R0				
  repro_test.go:25	0x1322b8		54fffee2		BCS -9(PC)				
  repro_test.go:25	0x1322bc		f9003be0		MOVD R0, 112(RSP)			
  repro_test.go:26	0x1322c0		aa0003e1		MOVD R0, R1				
  repro_test.go:26	0x1322c4		aa0203e0		MOVD R2, R0				
  repro_test.go:26	0x1322c8		97fffdc2		CALL carryselect.EqXorBorrow(SB)	
  repro_test.go:26	0x1322cc		f9403be2		MOVD 112(RSP), R2			
  repro_test.go:26	0x1322d0		f94043e3		MOVD 128(RSP), R3			
  repro_test.go:26	0x1322d4		eb03005f		CMP R3, R2				
  repro_test.go:26	0x1322d8		9a9f17e4		CSET EQ, R4				
  repro_test.go:26	0x1322dc		eb04001f		CMP R4, R0				
  repro_test.go:26	0x1322e0		54fffe60		BEQ -13(PC)				
  repro_test.go:26	0x1322e4		910643e1		ADD $400, RSP, R1			
  repro_test.go:26	0x1322e8		a9007c3f		STP (ZR, ZR), (R1)			
  repro_test.go:26	0x1322ec		a9017c3f		STP (ZR, ZR), 16(R1)			
  repro_test.go:26	0x1322f0		aa0303e0		MOVD R3, R0				
  repro_test.go:26	0x1322f4		97fd6b1b		CALL runtime.convT64(SB)		
  repro_test.go:26	0x1322f8		90000aa1		ADRP 1392640(PC), R1			
  repro_test.go:26	0x1322fc		913a2021		ADD $3720, R1, R1			
  repro_test.go:26	0x132300		a91903e1		STP (R1, R0), 400(RSP)			
  repro_test.go:26	0x132304		f9403be0		MOVD 112(RSP), R0			
  repro_test.go:26	0x132308		97fd6b16		CALL runtime.convT64(SB)		
  repro_test.go:26	0x13230c		90000aa1		ADRP 1392640(PC), R1			
  repro_test.go:26	0x132310		913a2021		ADD $3720, R1, R1			
  repro_test.go:26	0x132314		a91a03e1		STP (R1, R0), 416(RSP)			
  repro_test.go:26	0x132318		f940e7e0		MOVD 456(RSP), R0			
  repro_test.go:26	0x13231c		3980001b		MOVB (R0), R27				
  repro_test.go:26	0x132320		910643e1		ADD $400, RSP, R1			
  repro_test.go:26	0x132324		b27f03e2		ORR $2, ZR, R2				
  repro_test.go:26	0x132328		aa0203e3		MOVD R2, R3				
  repro_test.go:26	0x13232c		97fece91		CALL testing.(*common).Fatal(SB)	
  repro_test.go:25	0x132330		f9403be2		MOVD 112(RSP), R2			
  repro_test.go:26	0x132334		f94043e3		MOVD 128(RSP), R3			
  repro_test.go:26	0x132338		17ffffdd		JMP -35(PC)				
  repro_test.go:28	0x13233c		a97ffbfd		LDP -8(RSP), (R29, R30)			
  repro_test.go:28	0x132340		910703ff		ADD $448, RSP, RSP			
  repro_test.go:28	0x132344		d65f03c0		RET					
  repro_test.go:12	0x132348		f90007e0		MOVD R0, 8(RSP)				
  repro_test.go:12	0x13234c		aa1e03e3		MOVD R30, R3				
  repro_test.go:12	0x132350		97fd83c8		CALL runtime.morestack_noctxt.abi0(SB)	
  repro_test.go:12	0x132354		f94007e0		MOVD 8(RSP), R0				
  repro_test.go:12	0x132358		17fffeda		JMP carryselect.TestEqualityAndMask(SB)	
  repro_test.go:12	0x13235c		00000000		?					

TEXT carryselect.TestAssignOverlapAndBounds(SB) /home/exedev/crypto-audit/round4/issues/carry-select/repro_test.go
  repro_test.go:30	0x132360		f9400b90		MOVD 16(R28), R16					
  repro_test.go:30	0x132364		d10403f1		SUB $256, RSP, R17					
  repro_test.go:30	0x132368		eb10023f		CMP R16, R17						
  repro_test.go:30	0x13236c		540020e9		BLS 263(PC)						
  repro_test.go:30	0x132370		d10603f4		SUB $384, RSP, R20					
  repro_test.go:30	0x132374		a93ffa9d		STP (R29, R30), -8(R20)					
  repro_test.go:30	0x132378		9100029f		MOVD R20, RSP						
  repro_test.go:30	0x13237c		d10023fd		SUB $8, RSP, R29					
  repro_test.go:32	0x132380		f900c7e0		MOVD R0, 392(RSP)					
  repro_test.go:31	0x132384		f0000b83		ADRP 1519616(PC), R3					
  repro_test.go:31	0x132388		913ec063		ADD $4016, R3, R3					
  repro_test.go:31	0x13238c		f0000b84		ADRP 1519616(PC), R4					
  repro_test.go:31	0x132390		913ee084		ADD $4024, R4, R4					
  repro_test.go:31	0x132394		a91193e3		STP (R3, R4), 280(RSP)					
  repro_test.go:32	0x132398		aa1f03e1		MOVD ZR, R1						
  repro_test.go:32	0x13239c		14000006		JMP 6(PC)						
  repro_test.go:49	0x1323a0		f940c7e0		MOVD 392(RSP), R0					
  repro_test.go:49	0x1323a4		f9407fe1		MOVD 248(RSP), R1					
  repro_test.go:49	0x1323a8		9400065a		CALL carryselect.TestAssignOverlapAndBounds.func1(SB)	
  repro_test.go:32	0x1323ac		f94043e2		MOVD 128(RSP), R2					
  repro_test.go:32	0x1323b0		91000441		ADD $1, R2, R1						
  repro_test.go:32	0x1323b4		f100083f		CMP $2, R1						
  repro_test.go:32	0x1323b8		54001c8a		BGE 228(PC)						
  repro_test.go:32	0x1323bc		f90043e1		MOVD R1, 128(RSP)					
  repro_test.go:32	0x1323c0		910463e3		ADD $280, RSP, R3					
  repro_test.go:32	0x1323c4		f8617864		MOVD (R3)(R1<<3), R4					
  repro_test.go:32	0x1323c8		f9007fe4		MOVD R4, 248(RSP)					
  repro_test.go:32	0x1323cc		910323e5		ADD $200, RSP, R5					
  repro_test.go:32	0x1323d0		a9007cbf		STP (ZR, ZR), (R5)					
  repro_test.go:32	0x1323d4		a9017cbf		STP (ZR, ZR), 16(R5)					
  repro_test.go:32	0x1323d8		f90010bf		MOVD ZR, 32(R5)						
  repro_test.go:32	0x1323dc		b24003e6		ORR $1, ZR, R6						
  repro_test.go:32	0x1323e0		b27f03e7		ORR $2, ZR, R7						
  repro_test.go:32	0x1323e4		a90d1fe6		STP (R6, R7), 208(RSP)					
  repro_test.go:32	0x1323e8		b24007e8		ORR $3, ZR, R8						
  repro_test.go:32	0x1323ec		92800009		MOVD $-1, R9						
  repro_test.go:32	0x1323f0		a90e27e8		STP (R8, R9), 224(RSP)					
  repro_test.go:32	0x1323f4		aa1f03ea		MOVD ZR, R10						
  repro_test.go:32	0x1323f8		14000002		JMP 2(PC)						
  repro_test.go:32	0x1323fc		9100054a		ADD $1, R10, R10					
  repro_test.go:32	0x132400		f100155f		CMP $5, R10						
  repro_test.go:32	0x132404		5400146a		BGE 163(PC)						
  repro_test.go:32	0x132408		f9003fea		MOVD R10, 120(RSP)					
  repro_test.go:32	0x13240c		f86a78ab		MOVD (R5)(R10<<3), R11					
  repro_test.go:32	0x132410		f90027eb		MOVD R11, 72(RSP)					
  repro_test.go:32	0x132414		aa1f03ec		MOVD ZR, R12						
  repro_test.go:32	0x132418		1400000a		JMP 10(PC)						
  repro_test.go:32	0x13241c		f94033ed		MOVD 96(RSP), R13					
  repro_test.go:32	0x132420		910005ac		ADD $1, R13, R12					
  repro_test.go:31	0x132424		910463e3		ADD $280, RSP, R3					
  repro_test.go:32	0x132428		910323e5		ADD $200, RSP, R5					
  repro_test.go:32	0x13242c		b24003e6		ORR $1, ZR, R6						
  repro_test.go:32	0x132430		b27f03e7		ORR $2, ZR, R7						
  repro_test.go:32	0x132434		b24007e8		ORR $3, ZR, R8						
  repro_test.go:32	0x132438		92800009		MOVD $-1, R9						
  repro_test.go:32	0x13243c		f9403fea		MOVD 120(RSP), R10					
  repro_test.go:32	0x132440		f100859f		CMP $33, R12						
  repro_test.go:32	0x132444		54fffdcc		BGT -18(PC)						
  repro_test.go:32	0x132448		f90033ec		MOVD R12, 96(RSP)					
  repro_test.go:35	0x13244c		910223ed		ADD $136, RSP, R13					
  repro_test.go:35	0x132450		a9007dbf		STP (ZR, ZR), (R13)					
  repro_test.go:35	0x132454		a9017dbf		STP (ZR, ZR), 16(R13)					
  repro_test.go:35	0x132458		a9027dbf		STP (ZR, ZR), 32(R13)					
  repro_test.go:35	0x13245c		a9037dbf		STP (ZR, ZR), 48(R13)					
  repro_test.go:35	0x132460		d280050e		MOVD $40, R14						
  repro_test.go:35	0x132464		f9004bee		MOVD R14, 144(RSP)					
  repro_test.go:35	0x132468		b24003ef		ORR $1, ZR, R15						
  repro_test.go:35	0x13246c		a90b3fef		STP (R15, R15), 176(RSP)				
  repro_test.go:35	0x132470		aa1f03e0		MOVD ZR, R0						
  repro_test.go:35	0x132474		14000005		JMP 5(PC)						
  repro_test.go:35	0x132478		f94087e3		MOVD 264(RSP), R3					
  repro_test.go:35	0x13247c		9100406d		ADD $16, R3, R13					
  repro_test.go:35	0x132480		f9403be3		MOVD 112(RSP), R3					
  repro_test.go:35	0x132484		91000460		ADD $1, R3, R0						
  repro_test.go:35	0x132488		f100101f		CMP $4, R0						
  repro_test.go:35	0x13248c		54fffc8a		BGE -28(PC)						
  repro_test.go:35	0x132490		f9003be0		MOVD R0, 112(RSP)					
  repro_test.go:35	0x132494		f90087ed		MOVD R13, 264(RSP)					
  repro_test.go:35	0x132498		3dc001a0		FMOVQ (R13), F0						
  repro_test.go:35	0x13249c		3d8017e0		FMOVQ F0, 80(RSP)					
  repro_test.go:36	0x1324a0		90000aa0		ADRP 1392640(PC), R0					
  repro_test.go:36	0x1324a4		913a2000		ADD $3720, R0, R0					
  repro_test.go:36	0x1324a8		d2800a01		MOVD $80, R1						
  repro_test.go:36	0x1324ac		aa0103e2		MOVD R1, R2						
  repro_test.go:36	0x1324b0		97fd78bc		CALL runtime.makeslice(SB)				
  repro_test.go:36	0x1324b4		aa1f03e3		MOVD ZR, R3						
  repro_test.go:36	0x1324b8		14000006		JMP 6(PC)						
  repro_test.go:36	0x1324bc		d283dde5		MOVD $7919, R5						
  repro_test.go:36	0x1324c0		9b037ca6		MUL R3, R5, R6						
  repro_test.go:36	0x1324c4		aa2603e6		MVN R6, R6						
  repro_test.go:36	0x1324c8		f8237806		MOVD R6, (R0)(R3<<3)					
  repro_test.go:36	0x1324cc		91000463		ADD $1, R3, R3						
  repro_test.go:36	0x1324d0		f101407f		CMP $80, R3						
  repro_test.go:36	0x1324d4		54ffff4b		BLT -6(PC)						
  repro_test.go:36	0x1324d8		f90083e0		MOVD R0, 256(RSP)					
  repro_test.go:37	0x1324dc		aa1f03e0		MOVD ZR, R0						
  repro_test.go:37	0x1324e0		d2800a01		MOVD $80, R1						
  repro_test.go:37	0x1324e4		aa1f03e2		MOVD ZR, R2						
  repro_test.go:37	0x1324e8		aa0103e3		MOVD R1, R3						
  repro_test.go:37	0x1324ec		90000aa4		ADRP 1392640(PC), R4					
  repro_test.go:37	0x1324f0		913a2084		ADD $3720, R4, R4					
  repro_test.go:37	0x1324f4		97fd78df		CALL runtime.growslice(SB)				
  repro_test.go:37	0x1324f8		f9007be0		MOVD R0, 240(RSP)					
  repro_test.go:37	0x1324fc		f94083e1		MOVD 256(RSP), R1					
  repro_test.go:37	0x132500		d2805002		MOVD $640, R2						
  repro_test.go:37	0x132504		97fd8c17		CALL runtime.memmove(SB)				
  repro_test.go:38	0x132508		a9451be5		LDP 80(RSP), (R5, R6)					
  repro_test.go:39	0x13250c		aa1f03e2		MOVD ZR, R2						
  repro_test.go:39	0x132510		f94033e7		MOVD 96(RSP), R7					
  repro_test.go:39	0x132514		f94027e8		MOVD 72(RSP), R8					
  repro_test.go:39	0x132518		f9407be9		MOVD 240(RSP), R9					
  repro_test.go:39	0x13251c		14000002		JMP 2(PC)						
  repro_test.go:39	0x132520		91000442		ADD $1, R2, R2						
  repro_test.go:39	0x132524		eb07005f		CMP R7, R2						
  repro_test.go:39	0x132528		5400016a		BGE 11(PC)						
  repro_test.go:39	0x13252c		3607ffa8		TBZ $0, R8, -3(PC)					
  repro_test.go:39	0x132530		8b06004a		ADD R6, R2, R10						
  repro_test.go:39	0x132534		8b05004b		ADD R5, R2, R11						
  repro_test.go:39	0x132538		f101415f		CMP $80, R10						
  repro_test.go:39	0x13253c		54001202		BCS 144(PC)						
  repro_test.go:39	0x132540		f86a792a		MOVD (R9)(R10<<3), R10					
  repro_test.go:39	0x132544		f101417f		CMP $80, R11						
  repro_test.go:39	0x132548		54001162		BCS 139(PC)						
  repro_test.go:39	0x13254c		f82b792a		MOVD R10, (R9)(R11<<3)					
  repro_test.go:39	0x132550		17fffff4		JMP -12(PC)						
  repro_test.go:40	0x132554		8b0500ea		ADD R5, R7, R10						
  repro_test.go:40	0x132558		f101415f		CMP $80, R10						
  repro_test.go:40	0x13255c		54001088		BHI 132(PC)						
  repro_test.go:40	0x132560		eb0a00bf		CMP R10, R5						
  repro_test.go:40	0x132564		54001028		BHI 129(PC)						
  repro_test.go:40	0x132568		d10140aa		SUB $80, R5, R10					
  repro_test.go:40	0x13256c		8a8afcaa		AND R10->63, R5, R10					
  repro_test.go:40	0x132570		8b0600eb		ADD R6, R7, R11						
  repro_test.go:40	0x132574		d2800a0c		MOVD $80, R12						
  repro_test.go:40	0x132578		cb050182		SUB R5, R12, R2						
  repro_test.go:40	0x13257c		f94083ed		MOVD 256(RSP), R13					
  repro_test.go:40	0x132580		8b0a0da0		ADD R10<<3, R13, R0					
  repro_test.go:40	0x132584		f101417f		CMP $80, R11						
  repro_test.go:40	0x132588		54000ec8		BHI 118(PC)						
  repro_test.go:40	0x13258c		eb0b00df		CMP R11, R6						
  repro_test.go:40	0x132590		54000e68		BHI 115(PC)						
  repro_test.go:40	0x132594		f9407ffa		MOVD 248(RSP), R26					
  repro_test.go:40	0x132598		f9400349		MOVD (R26), R9						
  repro_test.go:40	0x13259c		cb060185		SUB R6, R12, R5						
  repro_test.go:40	0x1325a0		d10140ca		SUB $80, R6, R10					
  repro_test.go:40	0x1325a4		8a8afcca		AND R10->63, R6, R10					
  repro_test.go:40	0x1325a8		8b0a0da3		ADD R10<<3, R13, R3					
  repro_test.go:40	0x1325ac		aa0703e1		MOVD R7, R1						
  repro_test.go:40	0x1325b0		aa0103e4		MOVD R1, R4						
  repro_test.go:40	0x1325b4		aa0803e6		MOVD R8, R6						
  repro_test.go:40	0x1325b8		d63f0120		CALL (R9)						
  repro_test.go:41	0x1325bc		aa1f03e7		MOVD ZR, R7						
  repro_test.go:41	0x1325c0		f94083e8		MOVD 256(RSP), R8					
  repro_test.go:41	0x1325c4		f9407be9		MOVD 240(RSP), R9					
  repro_test.go:41	0x1325c8		14000002		JMP 2(PC)						
  repro_test.go:41	0x1325cc		910004e7		ADD $1, R7, R7						
  repro_test.go:41	0x1325d0		f10140ff		CMP $80, R7						
  repro_test.go:41	0x1325d4		54fff52a		BGE -87(PC)						
  repro_test.go:41	0x1325d8		f8677903		MOVD (R8)(R7<<3), R3					
  repro_test.go:41	0x1325dc		54000bc2		BCS 94(PC)						
  repro_test.go:41	0x1325e0		f8677924		MOVD (R9)(R7<<3), R4					
  repro_test.go:41	0x1325e4		eb03009f		CMP R3, R4						
  repro_test.go:41	0x1325e8		54ffff20		BEQ -7(PC)						
  repro_test.go:41	0x1325ec		f90037e7		MOVD R7, 104(RSP)					
  repro_test.go:41	0x1325f0		9104e3e1		ADD $312, RSP, R1					
  repro_test.go:41	0x1325f4		a9007c3f		STP (ZR, ZR), (R1)					
  repro_test.go:41	0x1325f8		a9017c3f		STP (ZR, ZR), 16(R1)					
  repro_test.go:41	0x1325fc		a9027c3f		STP (ZR, ZR), 32(R1)					
  repro_test.go:41	0x132600		a9037c3f		STP (ZR, ZR), 48(R1)					
  repro_test.go:41	0x132604		f94027e0		MOVD 72(RSP), R0					
  repro_test.go:41	0x132608		97fd6a56		CALL runtime.convT64(SB)				
  repro_test.go:41	0x13260c		90000aa1		ADRP 1392640(PC), R1					
  repro_test.go:41	0x132610		913a2021		ADD $3720, R1, R1					
  repro_test.go:41	0x132614		a91383e1		STP (R1, R0), 312(RSP)					
  repro_test.go:41	0x132618		f94033e0		MOVD 96(RSP), R0					
  repro_test.go:41	0x13261c		97fd6a51		CALL runtime.convT64(SB)				
  repro_test.go:41	0x132620		90000aa1		ADRP 1392640(PC), R1					
  repro_test.go:41	0x132624		91392021		ADD $3656, R1, R1					
  repro_test.go:41	0x132628		a91483e1		STP (R1, R0), 328(RSP)					
  repro_test.go:41	0x13262c		b0000a00		ADRP 1314816(PC), R0					
  repro_test.go:41	0x132630		911e8000		ADD $1952, R0, R0					
  repro_test.go:41	0x132634		910143e1		ADD $80, RSP, R1					
  repro_test.go:41	0x132638		97fbd1c6		CALL runtime.convTnoptr(SB)				
  repro_test.go:41	0x13263c		b0000a01		ADRP 1314816(PC), R1					
  repro_test.go:41	0x132640		911e8021		ADD $1952, R1, R1					
  repro_test.go:41	0x132644		a91583e1		STP (R1, R0), 344(RSP)					
  repro_test.go:41	0x132648		f94037e0		MOVD 104(RSP), R0					
  repro_test.go:41	0x13264c		97fd6a45		CALL runtime.convT64(SB)				
  repro_test.go:41	0x132650		90000aa1		ADRP 1392640(PC), R1					
  repro_test.go:41	0x132654		91392021		ADD $3656, R1, R1					
  repro_test.go:41	0x132658		a91683e1		STP (R1, R0), 360(RSP)					
  repro_test.go:41	0x13265c		f940c7e0		MOVD 392(RSP), R0					
  repro_test.go:41	0x132660		3980001b		MOVB (R0), R27						
  repro_test.go:41	0x132664		d00000a1		ADRP 90112(PC), R1					
  repro_test.go:41	0x132668		91124c21		ADD $1171, R1, R1					
  repro_test.go:41	0x13266c		d2800422		MOVD $33, R2						
  repro_test.go:41	0x132670		9104e3e3		ADD $312, RSP, R3					
  repro_test.go:41	0x132674		b27e03e4		ORR $4, ZR, R4						
  repro_test.go:41	0x132678		aa0403e5		MOVD R4, R5						
  repro_test.go:41	0x13267c		97fecdf5		CALL testing.(*common).Fatalf(SB)			
  repro_test.go:41	0x132680		f94037e7		MOVD 104(RSP), R7					
  repro_test.go:41	0x132684		f94083e8		MOVD 256(RSP), R8					
  repro_test.go:41	0x132688		f9407be9		MOVD 240(RSP), R9					
  repro_test.go:41	0x13268c		17ffffd0		JMP -48(PC)						
  repro_test.go:45	0x132690		b27c03e0		ORR $16, ZR, R0						
  repro_test.go:45	0x132694		d0000aa1		ADRP 1400832(PC), R1					
  repro_test.go:45	0x132698		9102a021		ADD $168, R1, R1					
  repro_test.go:45	0x13269c		b24003e2		ORR $1, ZR, R2						
  repro_test.go:45	0x1326a0		97fbe7f8		CALL runtime.mallocgcSmallNoScanSC2(SB)			
  repro_test.go:45	0x1326a4		f9008be0		MOVD R0, 272(RSP)					
  repro_test.go:45	0x1326a8		d2800123		MOVD $9, R3						
  repro_test.go:45	0x1326ac		b27d03e4		ORR $8, ZR, R4						
  repro_test.go:45	0x1326b0		a9001003		STP (R3, R4), (R0)					
  repro_test.go:45	0x1326b4		b27c03e0		ORR $16, ZR, R0						
  repro_test.go:45	0x1326b8		d0000aa1		ADRP 1400832(PC), R1					
  repro_test.go:45	0x1326bc		9102a021		ADD $168, R1, R1					
  repro_test.go:45	0x1326c0		b24003e2		ORR $1, ZR, R2						
  repro_test.go:45	0x1326c4		97fbe7ef		CALL runtime.mallocgcSmallNoScanSC2(SB)			
  repro_test.go:45	0x1326c8		b24003e6		ORR $1, ZR, R6						
  repro_test.go:45	0x1326cc		b27f03e3		ORR $2, ZR, R3						
  repro_test.go:45	0x1326d0		a9000c06		STP (R6, R3), (R0)					
  repro_test.go:45	0x1326d4		f9407ffa		MOVD 248(RSP), R26					
  repro_test.go:45	0x1326d8		f9400343		MOVD (R26), R3						
  repro_test.go:45	0x1326dc		b27f03e1		ORR $2, ZR, R1						
  repro_test.go:45	0x1326e0		aa0103e2		MOVD R1, R2						
  repro_test.go:45	0x1326e4		aa1f03e4		MOVD ZR, R4						
  repro_test.go:45	0x1326e8		aa0103e5		MOVD R1, R5						
  repro_test.go:45	0x1326ec		aa0003e7		MOVD R0, R7						
  repro_test.go:45	0x1326f0		f9408be0		MOVD 272(RSP), R0					
  repro_test.go:45	0x1326f4		aa0303e8		MOVD R3, R8						
  repro_test.go:45	0x1326f8		aa0703e3		MOVD R7, R3						
  repro_test.go:45	0x1326fc		d63f0100		CALL (R8)						
  repro_test.go:45	0x132700		f9408be3		MOVD 272(RSP), R3					
  repro_test.go:45	0x132704		a9401063		LDP (R3), (R3, R4)					
  repro_test.go:45	0x132708		f100047f		CMP $1, R3						
  repro_test.go:45	0x13270c		54000061		BNE 3(PC)						
  repro_test.go:45	0x132710		f100089f		CMP $2, R4						
  repro_test.go:45	0x132714		54ffe460		BEQ -221(PC)						
  repro_test.go:45	0x132718		90000aa4		ADRP 1392640(PC), R4					
  repro_test.go:45	0x13271c		91302084		ADD $3080, R4, R4					
  repro_test.go:45	0x132720		900000e5		ADRP 114688(PC), R5					
  repro_test.go:45	0x132724		913b00a5		ADD $3776, R5, R5					
  repro_test.go:45	0x132728		a91297e4		STP (R4, R5), 296(RSP)					
  repro_test.go:45	0x13272c		f940c7e0		MOVD 392(RSP), R0					
  repro_test.go:45	0x132730		3980001b		MOVB (R0), R27						
  repro_test.go:45	0x132734		9104a3e1		ADD $296, RSP, R1					
  repro_test.go:45	0x132738		b24003e2		ORR $1, ZR, R2						
  repro_test.go:45	0x13273c		aa0203e3		MOVD R2, R3						
  repro_test.go:45	0x132740		97fecd8c		CALL testing.(*common).Fatal(SB)			
  repro_test.go:45	0x132744		17ffff17		JMP -233(PC)						
  repro_test.go:51	0x132748		a97ffbfd		LDP -8(RSP), (R29, R30)					
  repro_test.go:51	0x13274c		910603ff		ADD $384, RSP, RSP					
  repro_test.go:51	0x132750		d65f03c0		RET							
  repro_test.go:41	0x132754		d2800a00		MOVD $80, R0						
  repro_test.go:41	0x132758		97fd8afe		CALL runtime.panicBounds(SB)				
  repro_test.go:40	0x13275c		97fd8afd		CALL runtime.panicBounds(SB)				
  repro_test.go:40	0x132760		d2800a00		MOVD $80, R0						
  repro_test.go:40	0x132764		97fd8afb		CALL runtime.panicBounds(SB)				
  repro_test.go:40	0x132768		97fd8afa		CALL runtime.panicBounds(SB)				
  repro_test.go:40	0x13276c		d2800a00		MOVD $80, R0						
  repro_test.go:40	0x132770		97fd8af8		CALL runtime.panicBounds(SB)				
  repro_test.go:39	0x132774		d2800a00		MOVD $80, R0						
  repro_test.go:39	0x132778		97fd8af6		CALL runtime.panicBounds(SB)				
  repro_test.go:39	0x13277c		d2800a00		MOVD $80, R0						
  repro_test.go:39	0x132780		97fd8af4		CALL runtime.panicBounds(SB)				
  repro_test.go:39	0x132784		d503201f		NOOP							
  repro_test.go:30	0x132788		f90007e0		MOVD R0, 8(RSP)						
  repro_test.go:30	0x13278c		aa1e03e3		MOVD R30, R3						
  repro_test.go:30	0x132790		97fd82b8		CALL runtime.morestack_noctxt.abi0(SB)			
  repro_test.go:30	0x132794		f94007e0		MOVD 8(RSP), R0						
  repro_test.go:30	0x132798		17fffef2		JMP carryselect.TestAssignOverlapAndBounds(SB)		
  repro_test.go:30	0x13279c		00000000		?							

TEXT carryselect.asBig(SB) /home/exedev/crypto-audit/round4/issues/carry-select/repro_test.go
  repro_test.go:53	0x1327a0		f9400b90		MOVD 16(R28), R16				
  repro_test.go:53	0x1327a4		eb3063ff		CMP R16, RSP					
  repro_test.go:53	0x1327a8		54000709		BLS 56(PC)					
  repro_test.go:53	0x1327ac		f8180ffe		MOVD.W R30, -128(RSP)				
  repro_test.go:53	0x1327b0		f81f83fd		MOVD R29, -8(RSP)				
  repro_test.go:53	0x1327b4		d10023fd		SUB $8, RSP, R29				
  repro_test.go:55	0x1327b8		a90887e0		STP (R0, R1), 136(RSP)				
  repro_test.go:54	0x1327bc		b27b03e0		ORR $32, ZR, R0					
  repro_test.go:54	0x1327c0		d0000ae1		ADRP 1433600(PC), R1				
  repro_test.go:54	0x1327c4		9121e021		ADD $2168, R1, R1				
  repro_test.go:54	0x1327c8		b24003e2		ORR $1, ZR, R2					
  repro_test.go:54	0x1327cc		97fbe36d		CALL runtime.mallocgcSmallScanNoHeaderSC4(SB)	
  repro_test.go:54	0x1327d0		f9002be0		MOVD R0, 80(RSP)				
  repro_test.go:55	0x1327d4		f9404be3		MOVD 144(RSP), R3				
  repro_test.go:55	0x1327d8		d1000463		SUB $1, R3, R3					
  repro_test.go:55	0x1327dc		14000016		JMP 22(PC)					
  int.go:1245		0x1327e0		f90004e0		MOVD R0, 8(R7)					
  repro_test.go:55	0x1327e4		390163ff		MOVB ZR, 88(RSP)				
  repro_test.go:55	0x1327e8		a9067fff		STP (ZR, ZR), 96(RSP)				
  repro_test.go:55	0x1327ec		f9003bff		MOVD ZR, 112(RSP)				
  repro_test.go:55	0x1327f0		f94027e4		MOVD 72(RSP), R4				
  repro_test.go:55	0x1327f4		f94047e5		MOVD 136(RSP), R5				
  repro_test.go:55	0x1327f8		f86478a3		MOVD (R5)(R4<<3), R3				
  int.go:72		0x1327fc		aa1f03e0		MOVD ZR, R0					
  int.go:72		0x132800		aa1f03e1		MOVD ZR, R1					
  int.go:72		0x132804		aa1f03e2		MOVD ZR, R2					
  int.go:72		0x132808		97ffe8ba		CALL math/big.nat.setUint64(SB)			
  int.go:72		0x13280c		f9003be2		MOVD R2, 112(RSP)				
  int.go:72		0x132810		a90607e0		STP (R0, R1), 96(RSP)				
  int.go:73		0x132814		390163ff		MOVB ZR, 88(RSP)				
  repro_test.go:55	0x132818		f9402be0		MOVD 80(RSP), R0				
  repro_test.go:55	0x13281c		aa0003e1		MOVD R0, R1					
  repro_test.go:55	0x132820		910163e2		ADD $88, RSP, R2				
  repro_test.go:55	0x132824		97ffe523		CALL math/big.(*Int).Add(SB)			
  repro_test.go:55	0x132828		f94027e4		MOVD 72(RSP), R4				
  repro_test.go:55	0x13282c		d1000483		SUB $1, R4, R3					
  int.go:1245		0x132830		f9402be0		MOVD 80(RSP), R0				
  repro_test.go:55	0x132834		b7f80243		TBNZ $63, R3, 18(PC)				
  repro_test.go:55	0x132838		f90027e3		MOVD R3, 72(RSP)				
  int.go:1245		0x13283c		f9400c05		MOVD 24(R0), R5					
  int.go:1245		0x132840		a9409003		LDP 8(R0), (R3, R4)				
  int.go:1245		0x132844		aa0303e0		MOVD R3, R0					
  int.go:1245		0x132848		aa0403e1		MOVD R4, R1					
  int.go:1245		0x13284c		aa0503e2		MOVD R5, R2					
  int.go:1245		0x132850		b27a03e6		ORR $64, ZR, R6					
  int.go:1245		0x132854		97ffeb63		CALL math/big.nat.lsh(SB)			
  int.go:1245		0x132858		f9402be7		MOVD 80(RSP), R7				
  int.go:1245		0x13285c		a90108e1		STP (R1, R2), 16(R7)				
  int.go:1245		0x132860		d0000e3b		ADRP 1859584(PC), R27				
  int.go:1245		0x132864		b943c368		MOVWU 960(R27), R8				
  int.go:1245		0x132868		34fffbc8		CBZW R8, -34(PC)				
  int.go:1245		0x13286c		f94004e4		MOVD 8(R7), R4					
  int.go:1245		0x132870		97fd8a04		CALL runtime.gcWriteBarrier2(SB)		
  int.go:1245		0x132874		a9001320		STP (R0, R4), (R25)				
  int.go:1245		0x132878		17ffffda		JMP -38(PC)					
  repro_test.go:56	0x13287c		f85f83fd		MOVD -8(RSP), R29				
  repro_test.go:56	0x132880		f84807fe		MOVD.P 128(RSP), R30				
  repro_test.go:56	0x132884		d65f03c0		RET						
  repro_test.go:53	0x132888		a90087e0		STP (R0, R1), 8(RSP)				
  repro_test.go:53	0x13288c		f9000fe2		MOVD R2, 24(RSP)				
  repro_test.go:53	0x132890		aa1e03e3		MOVD R30, R3					
  repro_test.go:53	0x132894		97fd8277		CALL runtime.morestack_noctxt.abi0(SB)		
  repro_test.go:53	0x132898		a94087e0		LDP 8(RSP), (R0, R1)				
  repro_test.go:53	0x13289c		f9400fe2		MOVD 24(RSP), R2				
  repro_test.go:53	0x1328a0		17ffffc0		JMP carryselect.asBig(SB)			
  repro_test.go:53	0x1328a4		00000000		?						
  repro_test.go:53	0x1328a8		00000000		?						
  repro_test.go:53	0x1328ac		00000000		?						

TEXT carryselect.TestCarry(SB) /home/exedev/crypto-audit/round4/issues/carry-select/repro_test.go
  repro_test.go:59	0x1328b0		f9400b90		MOVD 16(R28), R16			
  repro_test.go:59	0x1328b4		d10743f1		SUB $464, RSP, R17			
  repro_test.go:59	0x1328b8		eb10023f		CMP R16, R17				
  repro_test.go:59	0x1328bc		540032c9		BLS 406(PC)				
  repro_test.go:59	0x1328c0		d10943f4		SUB $592, RSP, R20			
  repro_test.go:59	0x1328c4		a93ffa9d		STP (R29, R30), -8(R20)			
  repro_test.go:59	0x1328c8		9100029f		MOVD R20, RSP				
  repro_test.go:59	0x1328cc		d10023fd		SUB $8, RSP, R29			
  rand.go:79		0x1328d0		f9012fe0		MOVD R0, 600(RSP)			
  repro_test.go:60	0x1328d4		d503201f		NOOP					
  rand.go:52		0x1328d8		d503201f		NOOP					
  rand.go:56		0x1328dc		f0000b00		ADRP 1454080(PC), R0			
  rand.go:56		0x1328e0		91070000		ADD $448, R0, R0			
  rand.go:56		0x1328e4		97fbdf2b		CALL runtime.newobject(SB)		
  rand.go:56		0x1328e8		f90123e0		MOVD R0, 576(RSP)			
  rand.go:57		0x1328ec		b27f03e1		ORR $2, ZR, R1				
  rand.go:57		0x1328f0		97fe9ef4		CALL math/rand.(*rngSource).Seed(SB)	
  repro_test.go:60	0x1328f4		d503201f		NOOP					
  rand.go:79		0x1328f8		90000ca0		ADRP 1654784(PC), R0			
  rand.go:79		0x1328fc		913dc000		ADD $3952, R0, R0			
  rand.go:79		0x132900		c8dffc01		LDAR (R0), R1				
  rand.go:79		0x132904		f9400022		MOVD (R1), R2				
  rand.go:79		0x132908		f0000b9b		ADRP 1519616(PC), R27			
  rand.go:79		0x13290c		b9444b63		MOVWU 1096(R27), R3			
  rand.go:79		0x132910		8a020064		AND R2, R3, R4				
  rand.go:79		0x132914		d37cec84		LSL $4, R4, R4				
  rand.go:79		0x132918		91002084		ADD $8, R4, R4				
  rand.go:79		0x13291c		f8646825		MOVD (R1)(R4), R5			
  rand.go:79		0x132920		8b040024		ADD R4, R1, R4				
  rand.go:79		0x132924		d00009a6		ADRP 1269760(PC), R6			
  rand.go:79		0x132928		913e40c6		ADD $3984, R6, R6			
  rand.go:79		0x13292c		eb0600bf		CMP R6, R5				
  rand.go:79		0x132930		540000c0		BEQ 6(PC)				
  rand.go:79		0x132934		91000463		ADD $1, R3, R3				
  rand.go:79		0x132938		b5fffec5		CBNZ R5, -10(PC)			
  rand.go:79		0x13293c		aa0603e1		MOVD R6, R1				
  rand.go:79		0x132940		97fbd140		CALL runtime.typeAssert(SB)		
  rand.go:79		0x132944		14000002		JMP 2(PC)				
  rand.go:79		0x132948		f9400480		MOVD 8(R4), R0				
  rand.go:80		0x13294c		9107e3e3		ADD $504, RSP, R3			
  rand.go:80		0x132950		a9007c7f		STP (ZR, ZR), (R3)			
  rand.go:80		0x132954		a9017c7f		STP (ZR, ZR), 16(R3)			
  rand.go:80		0x132958		a9027c7f		STP (ZR, ZR), 32(R3)			
  rand.go:80		0x13295c		f0000b84		ADRP 1519616(PC), R4			
  rand.go:80		0x132960		9110e084		ADD $1080, R4, R4			
  rand.go:80		0x132964		f94123e5		MOVD 576(RSP), R5			
  rand.go:80		0x132968		a91f97e4		STP (R4, R5), 504(RSP)			
  rand.go:80		0x13296c		910823fb		ADD $520, RSP, R27			
  rand.go:80		0x132970		a9001760		STP (R0, R5), (R27)			
  repro_test.go:61	0x132974		aa1f03e4		MOVD ZR, R4				
  repro_test.go:61	0x132978		14000002		JMP 2(PC)				
  repro_test.go:61	0x13297c		91000484		ADD $1, R4, R4				
  repro_test.go:61	0x132980		f100849f		CMP $33, R4				
  repro_test.go:61	0x132984		5400252c		BGT 297(PC)				
  repro_test.go:61	0x132988		f9004fe4		MOVD R4, 152(RSP)			
  repro_test.go:61	0x13298c		aa1f03e0		MOVD ZR, R0				
  repro_test.go:61	0x132990		14000005		JMP 5(PC)				
  repro_test.go:61	0x132994		f9404be5		MOVD 144(RSP), R5			
  repro_test.go:61	0x132998		910004a0		ADD $1, R5, R0				
  rand.go:80		0x13299c		9107e3e3		ADD $504, RSP, R3			
  repro_test.go:62	0x1329a0		f9404fe4		MOVD 152(RSP), R4			
  repro_test.go:61	0x1329a4		f101901f		CMP $100, R0				
  repro_test.go:61	0x1329a8		54fffeaa		BGE -11(PC)				
  repro_test.go:61	0x1329ac		f9004be0		MOVD R0, 144(RSP)			
  repro_test.go:62	0x1329b0		f100109f		CMP $4, R4				
  repro_test.go:62	0x1329b4		540000c8		BHI 6(PC)				
  repro_test.go:62	0x1329b8		9104a3e5		ADD $296, RSP, R5			
  repro_test.go:62	0x1329bc		a9007cbf		STP (ZR, ZR), (R5)			
  repro_test.go:62	0x1329c0		a9017cbf		STP (ZR, ZR), 16(R5)			
  repro_test.go:62	0x1329c4		9104a3e1		ADD $296, RSP, R1			
  repro_test.go:62	0x1329c8		1400000b		JMP 11(PC)				
  repro_test.go:62	0x1329cc		90000aa0		ADRP 1392640(PC), R0			
  repro_test.go:62	0x1329d0		91382000		ADD $3592, R0, R0			
  repro_test.go:62	0x1329d4		aa0403e1		MOVD R4, R1				
  repro_test.go:62	0x1329d8		aa0103e2		MOVD R1, R2				
  repro_test.go:62	0x1329dc		97fd7771		CALL runtime.makeslice(SB)		
  repro_test.go:62	0x1329e0		f9404fe2		MOVD 152(RSP), R2			
  repro_test.go:62	0x1329e4		f100105f		CMP $4, R2				
  rand.go:80		0x1329e8		9107e3e3		ADD $504, RSP, R3			
  repro_test.go:63	0x1329ec		aa0203e4		MOVD R2, R4				
  repro_test.go:62	0x1329f0		aa0003e1		MOVD R0, R1				
  repro_test.go:62	0x1329f4		f900c3e1		MOVD R1, 384(RSP)			
  repro_test.go:62	0x1329f8		540000c8		BHI 6(PC)				
  repro_test.go:62	0x1329fc		910423e5		ADD $264, RSP, R5			
  repro_test.go:62	0x132a00		a9007cbf		STP (ZR, ZR), (R5)			
  repro_test.go:62	0x132a04		a9017cbf		STP (ZR, ZR), 16(R5)			
  repro_test.go:62	0x132a08		910423e2		ADD $264, RSP, R2			
  repro_test.go:62	0x132a0c		14000009		JMP 9(PC)				
  repro_test.go:62	0x132a10		90000aa0		ADRP 1392640(PC), R0			
  repro_test.go:62	0x132a14		91382000		ADD $3592, R0, R0			
  repro_test.go:62	0x132a18		aa0403e1		MOVD R4, R1				
  repro_test.go:62	0x132a1c		aa0103e2		MOVD R1, R2				
  repro_test.go:62	0x132a20		97fd7760		CALL runtime.makeslice(SB)		
  rand.go:80		0x132a24		9107e3e3		ADD $504, RSP, R3			
  repro_test.go:63	0x132a28		f9404fe4		MOVD 152(RSP), R4			
  repro_test.go:62	0x132a2c		aa0003e2		MOVD R0, R2				
  repro_test.go:62	0x132a30		f900bfe2		MOVD R2, 376(RSP)			
  repro_test.go:63	0x132a34		aa1f03e5		MOVD ZR, R5				
  repro_test.go:63	0x132a38		14000004		JMP 4(PC)				
  repro_test.go:63	0x132a3c		91000425		ADD $1, R1, R5				
  rand.go:80		0x132a40		9107e3e3		ADD $504, RSP, R3			
  repro_test.go:63	0x132a44		f9404fe4		MOVD 152(RSP), R4			
  repro_test.go:63	0x132a48		eb0400bf		CMP R4, R5				
  repro_test.go:63	0x132a4c		5400026a		BGE 19(PC)				
  repro_test.go:63	0x132a50		f90053e5		MOVD R5, 160(RSP)			
  repro_test.go:63	0x132a54		aa0303e0		MOVD R3, R0				
  repro_test.go:63	0x132a58		97fe9dce		CALL math/rand.(*Rand).Uint64(SB)	
  repro_test.go:63	0x132a5c		f94053e1		MOVD 160(RSP), R1			
  repro_test.go:63	0x132a60		f940c3e2		MOVD 384(RSP), R2			
  repro_test.go:63	0x132a64		f8217840		MOVD R0, (R2)(R1<<3)			
  repro_test.go:63	0x132a68		9107e3e0		ADD $504, RSP, R0			
  repro_test.go:63	0x132a6c		97fe9dc9		CALL math/rand.(*Rand).Uint64(SB)	
  repro_test.go:63	0x132a70		f94053e1		MOVD 160(RSP), R1			
  repro_test.go:63	0x132a74		f940bfe2		MOVD 376(RSP), R2			
  repro_test.go:63	0x132a78		f8217840		MOVD R0, (R2)(R1<<3)			
  repro_test.go:63	0x132a7c		f9404be0		MOVD 144(RSP), R0			
  repro_test.go:63	0x132a80		b5fffde0		CBNZ R0, -17(PC)			
  repro_test.go:63	0x132a84		f940c3e3		MOVD 384(RSP), R3			
  repro_test.go:63	0x132a88		f821787f		MOVD ZR, (R3)(R1<<3)			
  repro_test.go:63	0x132a8c		92800004		MOVD $-1, R4				
  repro_test.go:63	0x132a90		f8217844		MOVD R4, (R2)(R1<<3)			
  repro_test.go:63	0x132a94		17ffffea		JMP -22(PC)				
  repro_test.go:64	0x132a98		390763ff		MOVB ZR, 472(RSP)			
  repro_test.go:64	0x132a9c		a91e7fff		STP (ZR, ZR), 480(RSP)			
  repro_test.go:64	0x132aa0		f900fbff		MOVD ZR, 496(RSP)			
  repro_test.go:64	0x132aa4		f940c3e0		MOVD 384(RSP), R0			
  repro_test.go:64	0x132aa8		aa0403e1		MOVD R4, R1				
  repro_test.go:64	0x132aac		aa0103e2		MOVD R1, R2				
  repro_test.go:64	0x132ab0		97ffff3c		CALL carryselect.asBig(SB)		
  repro_test.go:64	0x132ab4		f9011fe0		MOVD R0, 568(RSP)			
  repro_test.go:64	0x132ab8		f940bfe0		MOVD 376(RSP), R0			
  repro_test.go:64	0x132abc		f9404fe1		MOVD 152(RSP), R1			
  repro_test.go:64	0x132ac0		aa0103e2		MOVD R1, R2				
  repro_test.go:64	0x132ac4		97ffff37		CALL carryselect.asBig(SB)		
  repro_test.go:64	0x132ac8		f9411fe1		MOVD 568(RSP), R1			
  repro_test.go:64	0x132acc		aa0003e2		MOVD R0, R2				
  repro_test.go:64	0x132ad0		910763e0		ADD $472, RSP, R0			
  repro_test.go:64	0x132ad4		97ffe4db		CALL math/big.(*Int).Sub(SB)		
  repro_test.go:64	0x132ad8		f900c7e0		MOVD R0, 392(RSP)			
  int.go:49		0x132adc		f9400803		MOVD 16(R0), R3				
  int.go:49		0x132ae0		b5000063		CBNZ R3, 3(PC)				
  repro_test.go:64	0x132ae4		aa1f03e1		MOVD ZR, R1				
  repro_test.go:64	0x132ae8		14000006		JMP 6(PC)				
  int.go:52		0x132aec		39400007		MOVBU (R0), R7				
  int.go:52		0x132af0		36000067		TBZ $0, R7, 3(PC)			
  int.go:52		0x132af4		92800001		MOVD $-1, R1				
  repro_test.go:64	0x132af8		14000002		JMP 2(PC)				
  repro_test.go:64	0x132afc		b24003e1		ORR $1, ZR, R1				
  repro_test.go:64	0x132b00		f90027e1		MOVD R1, 72(RSP)			
  repro_test.go:65	0x132b04		3906e3ff		MOVB ZR, 440(RSP)			
  repro_test.go:65	0x132b08		a91c7fff		STP (ZR, ZR), 448(RSP)			
  repro_test.go:65	0x132b0c		f900ebff		MOVD ZR, 464(RSP)			
  repro_test.go:65	0x132b10		f9404fe7		MOVD 152(RSP), R7			
  repro_test.go:65	0x132b14		d37ae4e6		LSL $6, R7, R6				
  int.go:90		0x132b18		b24003e7		ORR $1, ZR, R7				
  int.go:90		0x132b1c		f90083e7		MOVD R7, 256(RSP)			
  int.go:92		0x132b20		390663ff		MOVB ZR, 408(RSP)			
  int.go:92		0x132b24		b24003e5		ORR $1, ZR, R5				
  int.go:92		0x132b28		f900d7e5		MOVD R5, 424(RSP)			
  int.go:92		0x132b2c		f900dbe5		MOVD R5, 432(RSP)			
  int.go:92		0x132b30		910403e3		ADD $256, RSP, R3			
  int.go:92		0x132b34		f900d3e3		MOVD R3, 416(RSP)			
  int.go:1245		0x132b38		a95c07e0		LDP 448(RSP), (R0, R1)			
  int.go:1245		0x132b3c		f940ebe2		MOVD 464(RSP), R2			
  int.go:1245		0x132b40		aa0503e4		MOVD R5, R4				
  int.go:1245		0x132b44		97ffeaa7		CALL math/big.nat.lsh(SB)		
  int.go:1245		0x132b48		a91c8be1		STP (R1, R2), 456(RSP)			
  int.go:1245		0x132b4c		f900e3e0		MOVD R0, 448(RSP)			
  int.go:1246		0x132b50		394663e7		MOVBU 408(RSP), R7			
  int.go:1246		0x132b54		3906e3e7		MOVB R7, 440(RSP)			
  repro_test.go:65	0x132b58		f940c7e0		MOVD 392(RSP), R0			
  repro_test.go:65	0x132b5c		aa0003e1		MOVD R0, R1				
  repro_test.go:65	0x132b60		9106e3e2		ADD $440, RSP, R2			
  repro_test.go:65	0x132b64		97ffe5a3		CALL math/big.(*Int).Mod(SB)		
  repro_test.go:66	0x132b68		f9404fe0		MOVD 152(RSP), R0			
  repro_test.go:66	0x132b6c		b50000a0		CBNZ R0, 5(PC)				
  repro_test.go:66	0x132b70		aa1f03e1		MOVD ZR, R1				
  repro_test.go:66	0x132b74		aa1f03e2		MOVD ZR, R2				
  repro_test.go:66	0x132b78		aa1f03e3		MOVD ZR, R3				
  repro_test.go:66	0x132b7c		1400000b		JMP 11(PC)				
  repro_test.go:66	0x132b80		aa0003e1		MOVD R0, R1				
  repro_test.go:66	0x132b84		aa1f03e2		MOVD ZR, R2				
  repro_test.go:66	0x132b88		aa0103e3		MOVD R1, R3				
  repro_test.go:66	0x132b8c		90000aa4		ADRP 1392640(PC), R4			
  repro_test.go:66	0x132b90		91382084		ADD $3592, R4, R4			
  repro_test.go:66	0x132b94		aa1f03e0		MOVD ZR, R0				
  repro_test.go:66	0x132b98		97fd7736		CALL runtime.growslice(SB)		
  repro_test.go:66	0x132b9c		aa0103e3		MOVD R1, R3				
  repro_test.go:66	0x132ba0		aa0003e1		MOVD R0, R1				
  repro_test.go:66	0x132ba4		f9404fe0		MOVD 152(RSP), R0			
  repro_test.go:66	0x132ba8		a90a8be3		STP (R3, R2), 168(RSP)			
  repro_test.go:66	0x132bac		f900cbe1		MOVD R1, 400(RSP)			
  repro_test.go:64	0x132bb0		f94027e3		MOVD 72(RSP), R3			
  repro_test.go:64	0x132bb4		d37ffc63		LSR $63, R3, R3				
  repro_test.go:65	0x132bb8		d3401c63		UBFX $0, R3, $8, R3			
  repro_test.go:65	0x132bbc		f9005fe3		MOVD R3, 184(RSP)			
  repro_test.go:66	0x132bc0		d37df002		LSL $3, R0, R2				
  repro_test.go:66	0x132bc4		f900b7e2		MOVD R2, 360(RSP)			
  repro_test.go:66	0x132bc8		aa0103e0		MOVD R1, R0				
  repro_test.go:66	0x132bcc		f940c3e1		MOVD 384(RSP), R1			
  repro_test.go:66	0x132bd0		97fd8a64		CALL runtime.memmove(SB)		
  repro_test.go:67	0x132bd4		f940cbe0		MOVD 400(RSP), R0			
  repro_test.go:67	0x132bd8		a94a8be1		LDP 168(RSP), (R1, R2)			
  repro_test.go:67	0x132bdc		f940bfe3		MOVD 376(RSP), R3			
  repro_test.go:67	0x132be0		f9404fe4		MOVD 152(RSP), R4			
  repro_test.go:67	0x132be4		aa0403e5		MOVD R4, R5				
  repro_test.go:67	0x132be8		97fffbda		CALL carryselect.SubLoop(SB)		
  repro_test.go:67	0x132bec		f9405fe3		MOVD 184(RSP), R3			
  repro_test.go:67	0x132bf0		eb03001f		CMP R3, R0				
  repro_test.go:67	0x132bf4		540000a0		BEQ 5(PC)				
  repro_test.go:62	0x132bf8		f9404fe1		MOVD 152(RSP), R1			
  repro_test.go:62	0x132bfc		f100103f		CMP $4, R1				
  repro_test.go:62	0x132c00		b24003e0		ORR $1, ZR, R0				
  repro_test.go:67	0x132c04		1400000b		JMP 11(PC)				
  repro_test.go:67	0x132c08		f940cbe0		MOVD 400(RSP), R0			
  repro_test.go:67	0x132c0c		a94a8be1		LDP 168(RSP), (R1, R2)			
  repro_test.go:67	0x132c10		97fffee4		CALL carryselect.asBig(SB)		
  repro_test.go:67	0x132c14		f940c7e1		MOVD 392(RSP), R1			
  repro_test.go:67	0x132c18		97ffe5f2		CALL math/big.(*Int).Cmp(SB)		
  repro_test.go:67	0x132c1c		f100001f		CMP $0, R0				
  repro_test.go:67	0x132c20		9a9f07e3		CSET NE, R3				
  repro_test.go:62	0x132c24		f9404fe1		MOVD 152(RSP), R1			
  repro_test.go:62	0x132c28		f100103f		CMP $4, R1				
  repro_test.go:67	0x132c2c		aa0303e0		MOVD R3, R0				
  repro_test.go:67	0x132c30		360002a0		TBZ $0, R0, 21(PC)			
  repro_test.go:67	0x132c34		9108a3fb		ADD $552, RSP, R27			
  repro_test.go:67	0x132c38		a9007f7f		STP (ZR, ZR), (R27)			
  repro_test.go:67	0x132c3c		aa0103e0		MOVD R1, R0				
  repro_test.go:67	0x132c40		97fd68c8		CALL runtime.convT64(SB)		
  repro_test.go:67	0x132c44		90000aa1		ADRP 1392640(PC), R1			
  repro_test.go:67	0x132c48		91392021		ADD $3656, R1, R1			
  repro_test.go:67	0x132c4c		9108a3fb		ADD $552, RSP, R27			
  repro_test.go:67	0x132c50		a9000361		STP (R1, R0), (R27)			
  repro_test.go:67	0x132c54		f9412fe0		MOVD 600(RSP), R0			
  repro_test.go:67	0x132c58		3980001b		MOVB (R0), R27				
  repro_test.go:67	0x132c5c		d0000061		ADRP 57344(PC), R1			
  repro_test.go:67	0x132c60		912df421		ADD $2941, R1, R1			
  repro_test.go:67	0x132c64		b27d03e2		ORR $8, ZR, R2				
  repro_test.go:67	0x132c68		9108a3e3		ADD $552, RSP, R3			
  repro_test.go:67	0x132c6c		b24003e4		ORR $1, ZR, R4				
  repro_test.go:67	0x132c70		aa0403e5		MOVD R4, R5				
  repro_test.go:67	0x132c74		97fecc77		CALL testing.(*common).Fatalf(SB)	
  repro_test.go:62	0x132c78		f9404fe3		MOVD 152(RSP), R3			
  repro_test.go:62	0x132c7c		f100107f		CMP $4, R3				
  repro_test.go:69	0x132c80		aa0303e1		MOVD R3, R1				
  repro_test.go:68	0x132c84		54000641		BNE 50(PC)				
  repro_test.go:68	0x132c88		910523e2		ADD $328, RSP, R2			
  repro_test.go:68	0x132c8c		a9007c5f		STP (ZR, ZR), (R2)			
  repro_test.go:68	0x132c90		a9017c5f		STP (ZR, ZR), 16(R2)			
  repro_test.go:68	0x132c94		910383e0		ADD $224, RSP, R0			
  repro_test.go:68	0x132c98		a9007c1f		STP (ZR, ZR), (R0)			
  repro_test.go:68	0x132c9c		a9017c1f		STP (ZR, ZR), 16(R0)			
  repro_test.go:68	0x132ca0		910523fb		ADD $328, RSP, R27			
  repro_test.go:68	0x132ca4		ad400760		FLDPQ (R27), (F0, F1)			
  repro_test.go:68	0x132ca8		ad0607e0		FSTPQ (F0, F1), 192(RSP)		
  repro_test.go:68	0x132cac		f940c3e2		MOVD 384(RSP), R2			
  repro_test.go:68	0x132cb0		eb00005f		CMP R0, R2				
  repro_test.go:68	0x132cb4		54000060		BEQ 3(PC)				
  repro_test.go:68	0x132cb8		ad400440		FLDPQ (R2), (F0, F1)			
  repro_test.go:68	0x132cbc		ad0707e0		FSTPQ (F0, F1), 224(RSP)		
  repro_test.go:68	0x132cc0		f940bfe4		MOVD 376(RSP), R4			
  repro_test.go:68	0x132cc4		910303e5		ADD $192, RSP, R5			
  repro_test.go:68	0x132cc8		eb05009f		CMP R5, R4				
  repro_test.go:68	0x132ccc		54000060		BEQ 3(PC)				
  repro_test.go:68	0x132cd0		ad400480		FLDPQ (R4), (F0, F1)			
  repro_test.go:68	0x132cd4		ad0607e0		FSTPQ (F0, F1), 192(RSP)		
  repro_test.go:68	0x132cd8		aa0503e1		MOVD R5, R1				
  repro_test.go:68	0x132cdc		97fffbc5		CALL carryselect.Sub4(SB)		
  repro_test.go:68	0x132ce0		f9405fe2		MOVD 184(RSP), R2			
  repro_test.go:68	0x132ce4		eb02001f		CMP R2, R0				
  repro_test.go:68	0x132ce8		54000060		BEQ 3(PC)				
  repro_test.go:68	0x132cec		b24003e3		ORR $1, ZR, R3				
  repro_test.go:68	0x132cf0		14000009		JMP 9(PC)				
  repro_test.go:68	0x132cf4		910383e0		ADD $224, RSP, R0			
  repro_test.go:68	0x132cf8		b27e03e1		ORR $4, ZR, R1				
  repro_test.go:68	0x132cfc		aa0103e2		MOVD R1, R2				
  repro_test.go:68	0x132d00		97fffea8		CALL carryselect.asBig(SB)		
  repro_test.go:68	0x132d04		f940c7e1		MOVD 392(RSP), R1			
  repro_test.go:68	0x132d08		97ffe5b6		CALL math/big.(*Int).Cmp(SB)		
  repro_test.go:68	0x132d0c		f100001f		CMP $0, R0				
  repro_test.go:68	0x132d10		9a9f07e3		CSET NE, R3				
  repro_test.go:68	0x132d14		360001a3		TBZ $0, R3, 13(PC)			
  repro_test.go:68	0x132d18		90000aa4		ADRP 1392640(PC), R4			
  repro_test.go:68	0x132d1c		91302084		ADD $3080, R4, R4			
  repro_test.go:68	0x132d20		900000e5		ADRP 114688(PC), R5			
  repro_test.go:68	0x132d24		913bc0a5		ADD $3824, R5, R5			
  repro_test.go:68	0x132d28		9108a3fb		ADD $552, RSP, R27			
  repro_test.go:68	0x132d2c		a9001764		STP (R4, R5), (R27)			
  repro_test.go:68	0x132d30		f9412fe0		MOVD 600(RSP), R0			
  repro_test.go:68	0x132d34		3980001b		MOVB (R0), R27				
  repro_test.go:68	0x132d38		9108a3e1		ADD $552, RSP, R1			
  repro_test.go:68	0x132d3c		b24003e2		ORR $1, ZR, R2				
  repro_test.go:68	0x132d40		aa0203e3		MOVD R2, R3				
  repro_test.go:68	0x132d44		97fecc0b		CALL testing.(*common).Fatal(SB)	
  repro_test.go:69	0x132d48		f9404fe1		MOVD 152(RSP), R1			
  repro_test.go:69	0x132d4c		b50000a1		CBNZ R1, 5(PC)				
  repro_test.go:69	0x132d50		aa1f03e0		MOVD ZR, R0				
  repro_test.go:69	0x132d54		aa1f03e2		MOVD ZR, R2				
  repro_test.go:69	0x132d58		aa1f03e3		MOVD ZR, R3				
  repro_test.go:69	0x132d5c		14000009		JMP 9(PC)				
  repro_test.go:69	0x132d60		aa1f03e0		MOVD ZR, R0				
  repro_test.go:69	0x132d64		aa1f03e2		MOVD ZR, R2				
  repro_test.go:69	0x132d68		aa0103e3		MOVD R1, R3				
  repro_test.go:69	0x132d6c		90000aa4		ADRP 1392640(PC), R4			
  repro_test.go:69	0x132d70		91382084		ADD $3592, R4, R4			
  repro_test.go:69	0x132d74		97fd76bf		CALL runtime.growslice(SB)		
  repro_test.go:69	0x132d78		aa0203e3		MOVD R2, R3				
  repro_test.go:69	0x132d7c		aa0103e2		MOVD R1, R2				
  repro_test.go:69	0x132d80		a90a8fe2		STP (R2, R3), 168(RSP)			
  repro_test.go:69	0x132d84		f900cbe0		MOVD R0, 400(RSP)			
  repro_test.go:69	0x132d88		f940c3e1		MOVD 384(RSP), R1			
  repro_test.go:69	0x132d8c		f940b7e2		MOVD 360(RSP), R2			
  repro_test.go:69	0x132d90		97fd89f4		CALL runtime.memmove(SB)		
  repro_test.go:69	0x132d94		f940cbe0		MOVD 400(RSP), R0			
  repro_test.go:69	0x132d98		a94a8be1		LDP 168(RSP), (R1, R2)			
  repro_test.go:69	0x132d9c		aa0003e3		MOVD R0, R3				
  repro_test.go:69	0x132da0		aa0103e4		MOVD R1, R4				
  repro_test.go:69	0x132da4		aa0203e5		MOVD R2, R5				
  repro_test.go:69	0x132da8		97fffb6a		CALL carryselect.SubLoop(SB)		
  repro_test.go:69	0x132dac		b4000060		CBZ R0, 3(PC)				
  repro_test.go:69	0x132db0		b24003e4		ORR $1, ZR, R4				
  repro_test.go:69	0x132db4		1400000f		JMP 15(PC)				
  repro_test.go:69	0x132db8		f940cbe0		MOVD 400(RSP), R0			
  repro_test.go:69	0x132dbc		a94a8be1		LDP 168(RSP), (R1, R2)			
  repro_test.go:69	0x132dc0		97fffe78		CALL carryselect.asBig(SB)		
  int.go:49		0x132dc4		f9400803		MOVD 16(R0), R3				
  int.go:49		0x132dc8		b5000063		CBNZ R3, 3(PC)				
  repro_test.go:69	0x132dcc		aa1f03e0		MOVD ZR, R0				
  repro_test.go:69	0x132dd0		14000006		JMP 6(PC)				
  int.go:52		0x132dd4		39400004		MOVBU (R0), R4				
  int.go:52		0x132dd8		36000064		TBZ $0, R4, 3(PC)			
  int.go:52		0x132ddc		92800000		MOVD $-1, R0				
  repro_test.go:69	0x132de0		14000002		JMP 2(PC)				
  repro_test.go:69	0x132de4		b24003e0		ORR $1, ZR, R0				
  repro_test.go:69	0x132de8		f100001f		CMP $0, R0				
  repro_test.go:69	0x132dec		9a9f07e4		CSET NE, R4				
  repro_test.go:69	0x132df0		3607dd24		TBZ $0, R4, -279(PC)			
  repro_test.go:69	0x132df4		90000aa4		ADRP 1392640(PC), R4			
  repro_test.go:69	0x132df8		91302084		ADD $3080, R4, R4			
  repro_test.go:69	0x132dfc		900000e5		ADRP 114688(PC), R5			
  repro_test.go:69	0x132e00		913c00a5		ADD $3840, R5, R5			
  repro_test.go:69	0x132e04		9108a3fb		ADD $552, RSP, R27			
  repro_test.go:69	0x132e08		a9001764		STP (R4, R5), (R27)			
  repro_test.go:69	0x132e0c		f9412fe0		MOVD 600(RSP), R0			
  repro_test.go:69	0x132e10		3980001b		MOVB (R0), R27				
  repro_test.go:69	0x132e14		9108a3e1		ADD $552, RSP, R1			
  repro_test.go:69	0x132e18		b24003e2		ORR $1, ZR, R2				
  repro_test.go:69	0x132e1c		aa0203e3		MOVD R2, R3				
  repro_test.go:69	0x132e20		97fecbd4		CALL testing.(*common).Fatal(SB)	
  repro_test.go:69	0x132e24		17fffedc		JMP -292(PC)				
  repro_test.go:72	0x132e28		9101c3e0		ADD $112, RSP, R0			
  repro_test.go:72	0x132e2c		a9007c1f		STP (ZR, ZR), (R0)			
  repro_test.go:72	0x132e30		a9017c1f		STP (ZR, ZR), 16(R0)			
  repro_test.go:72	0x132e34		b00000fb		ADRP 118784(PC), R27			
  repro_test.go:72	0x132e38		9136837b		ADD $3488, R27, R27			
  repro_test.go:72	0x132e3c		ad400760		FLDPQ (R27), (F0, F1)			
  repro_test.go:72	0x132e40		ad0287e0		FSTPQ (F0, F1), 80(RSP)			
  repro_test.go:72	0x132e44		910143e1		ADD $80, RSP, R1			
  repro_test.go:72	0x132e48		97fffb6a		CALL carryselect.Sub4(SB)		
  repro_test.go:72	0x132e4c		f100041f		CMP $1, R0				
  repro_test.go:72	0x132e50		540001c0		BEQ 14(PC)				
  repro_test.go:72	0x132e54		9108a3fb		ADD $552, RSP, R27			
  repro_test.go:72	0x132e58		a9007f7f		STP (ZR, ZR), (R27)			
  repro_test.go:72	0x132e5c		97fd6841		CALL runtime.convT64(SB)		
  repro_test.go:72	0x132e60		90000aa1		ADRP 1392640(PC), R1			
  repro_test.go:72	0x132e64		91382021		ADD $3592, R1, R1			
  repro_test.go:72	0x132e68		9108a3fb		ADD $552, RSP, R27			
  repro_test.go:72	0x132e6c		a9000361		STP (R1, R0), (R27)			
  repro_test.go:72	0x132e70		f9412fe0		MOVD 600(RSP), R0			
  repro_test.go:72	0x132e74		3980001b		MOVB (R0), R27				
  repro_test.go:72	0x132e78		9108a3e1		ADD $552, RSP, R1			
  repro_test.go:72	0x132e7c		b24003e2		ORR $1, ZR, R2				
  repro_test.go:72	0x132e80		aa0203e3		MOVD R2, R3				
  repro_test.go:72	0x132e84		97fecbbb		CALL testing.(*common).Fatal(SB)	
  repro_test.go:73	0x132e88		ad4387e0		FLDPQ 112(RSP), (F0, F1)		
  repro_test.go:73	0x132e8c		910523fb		ADD $328, RSP, R27			
  repro_test.go:73	0x132e90		ad000760		FSTPQ (F0, F1), (R27)			
  repro_test.go:73	0x132e94		aa1f03e2		MOVD ZR, R2				
  repro_test.go:73	0x132e98		14000002		JMP 2(PC)				
  repro_test.go:73	0x132e9c		91000442		ADD $1, R2, R2				
  repro_test.go:73	0x132ea0		f100105f		CMP $4, R2				
  repro_test.go:73	0x132ea4		5400032a		BGE 25(PC)				
  repro_test.go:73	0x132ea8		910523e3		ADD $328, RSP, R3			
  repro_test.go:73	0x132eac		f8627864		MOVD (R3)(R2<<3), R4			
  repro_test.go:73	0x132eb0		b100049f		CMN $1, R4				
  repro_test.go:73	0x132eb4		54ffff40		BEQ -6(PC)				
  repro_test.go:73	0x132eb8		f900bbe2		MOVD R2, 368(RSP)			
  repro_test.go:73	0x132ebc		9108a3fb		ADD $552, RSP, R27			
  repro_test.go:73	0x132ec0		a9007f7f		STP (ZR, ZR), (R27)			
  repro_test.go:73	0x132ec4		b0000a00		ADRP 1314816(PC), R0			
  repro_test.go:73	0x132ec8		9131a000		ADD $3176, R0, R0			
  repro_test.go:73	0x132ecc		9101c3e1		ADD $112, RSP, R1			
  repro_test.go:73	0x132ed0		97fbcfa0		CALL runtime.convTnoptr(SB)		
  repro_test.go:73	0x132ed4		b0000a02		ADRP 1314816(PC), R2			
  repro_test.go:73	0x132ed8		9131a042		ADD $3176, R2, R2			
  repro_test.go:73	0x132edc		9108a3fb		ADD $552, RSP, R27			
  repro_test.go:73	0x132ee0		a9000362		STP (R2, R0), (R27)			
  repro_test.go:73	0x132ee4		f9412fe0		MOVD 600(RSP), R0			
  repro_test.go:73	0x132ee8		3980001b		MOVB (R0), R27				
  repro_test.go:73	0x132eec		9108a3e1		ADD $552, RSP, R1			
  repro_test.go:73	0x132ef0		b24003e2		ORR $1, ZR, R2				
  repro_test.go:73	0x132ef4		aa0203e3		MOVD R2, R3				
  repro_test.go:73	0x132ef8		97fecb9e		CALL testing.(*common).Fatal(SB)	
  repro_test.go:73	0x132efc		f940bbe2		MOVD 368(RSP), R2			
  repro_test.go:73	0x132f00		910523e3		ADD $328, RSP, R3			
  repro_test.go:73	0x132f04		17ffffe6		JMP -26(PC)				
  repro_test.go:74	0x132f08		a97ffbfd		LDP -8(RSP), (R29, R30)			
  repro_test.go:74	0x132f0c		910943ff		ADD $592, RSP, RSP			
  repro_test.go:74	0x132f10		d65f03c0		RET					
  repro_test.go:59	0x132f14		f90007e0		MOVD R0, 8(RSP)				
  repro_test.go:59	0x132f18		aa1e03e3		MOVD R30, R3				
  repro_test.go:59	0x132f1c		97fd80d5		CALL runtime.morestack_noctxt.abi0(SB)	
  repro_test.go:59	0x132f20		f94007e0		MOVD 8(RSP), R0				
  repro_test.go:59	0x132f24		17fffe63		JMP carryselect.TestCarry(SB)		
  repro_test.go:59	0x132f28		00000000		?					
  repro_test.go:59	0x132f2c		00000000		?					

TEXT carryselect.BenchmarkEq(SB) /home/exedev/crypto-audit/round4/issues/carry-select/repro_test.go
  repro_test.go:76	0x132f30		f9400b90		MOVD 16(R28), R16				
  repro_test.go:76	0x132f34		d10043f1		SUB $16, RSP, R17				
  repro_test.go:76	0x132f38		eb10023f		CMP R16, R17					
  repro_test.go:76	0x132f3c		54000789		BLS 60(PC)					
  repro_test.go:76	0x132f40		f8170ffe		MOVD.W R30, -144(RSP)				
  repro_test.go:76	0x132f44		f81f83fd		MOVD R29, -8(RSP)				
  repro_test.go:76	0x132f48		d10023fd		SUB $8, RSP, R29				
  repro_test.go:77	0x132f4c		f9004fe0		MOVD R0, 152(RSP)				
  repro_test.go:77	0x132f50		f0000063		ADRP 61440(PC), R3				
  repro_test.go:77	0x132f54		9100a463		ADD $41, R3, R3					
  repro_test.go:77	0x132f58		d2800124		MOVD $9, R4					
  repro_test.go:77	0x132f5c		a90413e3		STP (R3, R4), 64(RSP)				
  repro_test.go:77	0x132f60		f0000b83		ADRP 1519616(PC), R3				
  repro_test.go:77	0x132f64		913f4063		ADD $4048, R3, R3				
  repro_test.go:77	0x132f68		f0000065		ADRP 61440(PC), R5				
  repro_test.go:77	0x132f6c		9100c8a5		ADD $50, R5, R5					
  repro_test.go:77	0x132f70		a90517e3		STP (R3, R5), 80(RSP)				
  repro_test.go:77	0x132f74		f0000b83		ADRP 1519616(PC), R3				
  repro_test.go:77	0x132f78		913f6063		ADD $4056, R3, R3				
  repro_test.go:77	0x132f7c		a9060fe4		STP (R4, R3), 96(RSP)				
  repro_test.go:77	0x132f80		910103e3		ADD $64, RSP, R3				
  repro_test.go:77	0x132f84		aa1f03e1		MOVD ZR, R1					
  repro_test.go:77	0x132f88		1400000a		JMP 10(PC)					
  repro_test.go:78	0x132f8c		f9000401		MOVD R1, 8(R0)					
  repro_test.go:78	0x132f90		f9000c04		MOVD R4, 24(R0)					
  repro_test.go:78	0x132f94		aa0003e3		MOVD R0, R3					
  repro_test.go:78	0x132f98		f9404fe0		MOVD 152(RSP), R0				
  repro_test.go:78	0x132f9c		97feb029		CALL testing.(*B).Run(SB)			
  repro_test.go:77	0x132fa0		f94043e4		MOVD 128(RSP), R4				
  repro_test.go:77	0x132fa4		91006083		ADD $24, R4, R3					
  repro_test.go:77	0x132fa8		f9401fe4		MOVD 56(RSP), R4				
  repro_test.go:77	0x132fac		91000481		ADD $1, R4, R1					
  repro_test.go:77	0x132fb0		f100083f		CMP $2, R1					
  repro_test.go:77	0x132fb4		5400036a		BGE 27(PC)					
  repro_test.go:77	0x132fb8		f9001fe1		MOVD R1, 56(RSP)				
  repro_test.go:77	0x132fbc		f90043e3		MOVD R3, 128(RSP)				
  repro_test.go:77	0x132fc0		a9401464		LDP (R3), (R4, R5)				
  repro_test.go:77	0x132fc4		f9001be5		MOVD R5, 48(RSP)				
  repro_test.go:77	0x132fc8		f9003fe4		MOVD R4, 120(RSP)				
  repro_test.go:77	0x132fcc		f9400863		MOVD 16(R3), R3					
  repro_test.go:77	0x132fd0		f9003be3		MOVD R3, 112(RSP)				
  repro_test.go:78	0x132fd4		b27b03e0		ORR $32, ZR, R0					
  repro_test.go:78	0x132fd8		f0000ac1		ADRP 1421312(PC), R1				
  repro_test.go:78	0x132fdc		91108021		ADD $1056, R1, R1				
  repro_test.go:78	0x132fe0		b24003e2		ORR $1, ZR, R2					
  repro_test.go:78	0x132fe4		97fbe167		CALL runtime.mallocgcSmallScanNoHeaderSC4(SB)	
  repro_test.go:78	0x132fe8		b0000003		ADRP 4096(PC), R3				
  repro_test.go:78	0x132fec		913c0063		ADD $3840, R3, R3				
  repro_test.go:78	0x132ff0		f9000003		MOVD R3, (R0)					
  repro_test.go:78	0x132ff4		f9401be2		MOVD 48(RSP), R2				
  repro_test.go:78	0x132ff8		f9000802		MOVD R2, 16(R0)					
  repro_test.go:78	0x132ffc		d0000e3b		ADRP 1859584(PC), R27				
  repro_test.go:78	0x133000		b943c363		MOVWU 960(R27), R3				
  repro_test.go:78	0x133004		35000063		CBNZW R3, 3(PC)					
  repro_test.go:78	0x133008		a94707e4		LDP 112(RSP), (R4, R1)				
  repro_test.go:78	0x13300c		17ffffe0		JMP -32(PC)					
  repro_test.go:78	0x133010		97fd881c		CALL runtime.gcWriteBarrier2(SB)		
  repro_test.go:78	0x133014		a94707e4		LDP 112(RSP), (R4, R1)				
  repro_test.go:78	0x133018		a9001321		STP (R1, R4), (R25)				
  repro_test.go:78	0x13301c		17ffffdc		JMP -36(PC)					
  repro_test.go:80	0x133020		f85f83fd		MOVD -8(RSP), R29				
  repro_test.go:80	0x133024		f84907fe		MOVD.P 144(RSP), R30				
  repro_test.go:80	0x133028		d65f03c0		RET						
  repro_test.go:76	0x13302c		f90007e0		MOVD R0, 8(RSP)					
  repro_test.go:76	0x133030		aa1e03e3		MOVD R30, R3					
  repro_test.go:76	0x133034		97fd808f		CALL runtime.morestack_noctxt.abi0(SB)		
  repro_test.go:76	0x133038		f94007e0		MOVD 8(RSP), R0					
  repro_test.go:76	0x13303c		17ffffbd		JMP carryselect.BenchmarkEq(SB)			

TEXT carryselect.BenchmarkAssign(SB) /home/exedev/crypto-audit/round4/issues/carry-select/repro_test.go
  repro_test.go:81	0x133040		f9400b90		MOVD 16(R28), R16				
  repro_test.go:81	0x133044		d10043f1		SUB $16, RSP, R17				
  repro_test.go:81	0x133048		eb10023f		CMP R16, R17					
  repro_test.go:81	0x13304c		540007a9		BLS 61(PC)					
  repro_test.go:81	0x133050		f8170ffe		MOVD.W R30, -144(RSP)				
  repro_test.go:81	0x133054		f81f83fd		MOVD R29, -8(RSP)				
  repro_test.go:81	0x133058		d10023fd		SUB $8, RSP, R29				
  repro_test.go:82	0x13305c		f9004fe0		MOVD R0, 152(RSP)				
  repro_test.go:82	0x133060		b0000063		ADRP 53248(PC), R3				
  repro_test.go:82	0x133064		9107d863		ADD $502, R3, R3				
  repro_test.go:82	0x133068		b27e03e4		ORR $4, ZR, R4					
  repro_test.go:82	0x13306c		a90413e3		STP (R3, R4), 64(RSP)				
  repro_test.go:82	0x133070		d0000b83		ADRP 1515520(PC), R3				
  repro_test.go:82	0x133074		913ec063		ADD $4016, R3, R3				
  repro_test.go:82	0x133078		b0000064		ADRP 53248(PC), R4				
  repro_test.go:82	0x13307c		91167c84		ADD $1439, R4, R4				
  repro_test.go:82	0x133080		a90513e3		STP (R3, R4), 80(RSP)				
  repro_test.go:82	0x133084		b27f07e3		ORR $6, ZR, R3					
  repro_test.go:82	0x133088		d0000b84		ADRP 1515520(PC), R4				
  repro_test.go:82	0x13308c		913ee084		ADD $4024, R4, R4				
  repro_test.go:82	0x133090		a90613e3		STP (R3, R4), 96(RSP)				
  repro_test.go:82	0x133094		910103e3		ADD $64, RSP, R3				
  repro_test.go:82	0x133098		aa1f03e1		MOVD ZR, R1					
  repro_test.go:82	0x13309c		1400000a		JMP 10(PC)					
  repro_test.go:83	0x1330a0		f9000401		MOVD R1, 8(R0)					
  repro_test.go:83	0x1330a4		f9000c04		MOVD R4, 24(R0)					
  repro_test.go:83	0x1330a8		aa0003e3		MOVD R0, R3					
  repro_test.go:83	0x1330ac		f9404fe0		MOVD 152(RSP), R0				
  repro_test.go:83	0x1330b0		97feafe4		CALL testing.(*B).Run(SB)			
  repro_test.go:82	0x1330b4		f94043e4		MOVD 128(RSP), R4				
  repro_test.go:82	0x1330b8		91006083		ADD $24, R4, R3					
  repro_test.go:82	0x1330bc		f9401fe4		MOVD 56(RSP), R4				
  repro_test.go:82	0x1330c0		91000481		ADD $1, R4, R1					
  repro_test.go:82	0x1330c4		f100083f		CMP $2, R1					
  repro_test.go:82	0x1330c8		5400036a		BGE 27(PC)					
  repro_test.go:82	0x1330cc		f9001fe1		MOVD R1, 56(RSP)				
  repro_test.go:82	0x1330d0		f90043e3		MOVD R3, 128(RSP)				
  repro_test.go:82	0x1330d4		a9401464		LDP (R3), (R4, R5)				
  repro_test.go:82	0x1330d8		f9001be5		MOVD R5, 48(RSP)				
  repro_test.go:82	0x1330dc		f9003fe4		MOVD R4, 120(RSP)				
  repro_test.go:82	0x1330e0		f9400863		MOVD 16(R3), R3					
  repro_test.go:82	0x1330e4		f9003be3		MOVD R3, 112(RSP)				
  repro_test.go:83	0x1330e8		b27b03e0		ORR $32, ZR, R0					
  repro_test.go:83	0x1330ec		d0000ac1		ADRP 1417216(PC), R1				
  repro_test.go:83	0x1330f0		910e8021		ADD $928, R1, R1				
  repro_test.go:83	0x1330f4		b24003e2		ORR $1, ZR, R2					
  repro_test.go:83	0x1330f8		97fbe122		CALL runtime.mallocgcSmallScanNoHeaderSC4(SB)	
  repro_test.go:83	0x1330fc		90000003		ADRP 0(PC), R3					
  repro_test.go:83	0x133100		913e8063		ADD $4000, R3, R3				
  repro_test.go:83	0x133104		f9000003		MOVD R3, (R0)					
  repro_test.go:83	0x133108		f9401be2		MOVD 48(RSP), R2				
  repro_test.go:83	0x13310c		f9000802		MOVD R2, 16(R0)					
  repro_test.go:83	0x133110		b0000e3b		ADRP 1855488(PC), R27				
  repro_test.go:83	0x133114		b943c363		MOVWU 960(R27), R3				
  repro_test.go:83	0x133118		35000063		CBNZW R3, 3(PC)					
  repro_test.go:83	0x13311c		a94707e4		LDP 112(RSP), (R4, R1)				
  repro_test.go:83	0x133120		17ffffe0		JMP -32(PC)					
  repro_test.go:83	0x133124		97fd87d7		CALL runtime.gcWriteBarrier2(SB)		
  repro_test.go:83	0x133128		a94707e4		LDP 112(RSP), (R4, R1)				
  repro_test.go:83	0x13312c		a9001321		STP (R1, R4), (R25)				
  repro_test.go:83	0x133130		17ffffdc		JMP -36(PC)					
  repro_test.go:85	0x133134		f85f83fd		MOVD -8(RSP), R29				
  repro_test.go:85	0x133138		f84907fe		MOVD.P 144(RSP), R30				
  repro_test.go:85	0x13313c		d65f03c0		RET						
  repro_test.go:81	0x133140		f90007e0		MOVD R0, 8(RSP)					
  repro_test.go:81	0x133144		aa1e03e3		MOVD R30, R3					
  repro_test.go:81	0x133148		97fd804a		CALL runtime.morestack_noctxt.abi0(SB)		
  repro_test.go:81	0x13314c		f94007e0		MOVD 8(RSP), R0					
  repro_test.go:81	0x133150		17ffffbc		JMP carryselect.BenchmarkAssign(SB)		
  repro_test.go:81	0x133154		00000000		?						
  repro_test.go:81	0x133158		00000000		?						
  repro_test.go:81	0x13315c		00000000		?						

TEXT carryselect.BenchmarkNegBorrow(SB) /home/exedev/crypto-audit/round4/issues/carry-select/repro_test.go
  repro_test.go:86	0x133160		f9400b90		MOVD 16(R28), R16				
  repro_test.go:86	0x133164		d10043f1		SUB $16, RSP, R17				
  repro_test.go:86	0x133168		eb10023f		CMP R16, R17					
  repro_test.go:86	0x13316c		54000789		BLS 60(PC)					
  repro_test.go:86	0x133170		f8170ffe		MOVD.W R30, -144(RSP)				
  repro_test.go:86	0x133174		f81f83fd		MOVD R29, -8(RSP)				
  repro_test.go:86	0x133178		d10023fd		SUB $8, RSP, R29				
  repro_test.go:87	0x13317c		f9004fe0		MOVD R0, 152(RSP)				
  repro_test.go:87	0x133180		b0000063		ADRP 53248(PC), R3				
  repro_test.go:87	0x133184		91040463		ADD $257, R3, R3				
  repro_test.go:87	0x133188		b24007e4		ORR $3, ZR, R4					
  repro_test.go:87	0x13318c		a90413e3		STP (R3, R4), 64(RSP)				
  repro_test.go:87	0x133190		d0000b83		ADRP 1515520(PC), R3				
  repro_test.go:87	0x133194		913f8063		ADD $4064, R3, R3				
  repro_test.go:87	0x133198		b0000065		ADRP 53248(PC), R5				
  repro_test.go:87	0x13319c		910410a5		ADD $260, R5, R5				
  repro_test.go:87	0x1331a0		a90517e3		STP (R3, R5), 80(RSP)				
  repro_test.go:87	0x1331a4		d0000b83		ADRP 1515520(PC), R3				
  repro_test.go:87	0x1331a8		913fa063		ADD $4072, R3, R3				
  repro_test.go:87	0x1331ac		a9060fe4		STP (R4, R3), 96(RSP)				
  repro_test.go:87	0x1331b0		910103e3		ADD $64, RSP, R3				
  repro_test.go:87	0x1331b4		aa1f03e1		MOVD ZR, R1					
  repro_test.go:87	0x1331b8		1400000a		JMP 10(PC)					
  repro_test.go:88	0x1331bc		f9000401		MOVD R1, 8(R0)					
  repro_test.go:88	0x1331c0		f9000c04		MOVD R4, 24(R0)					
  repro_test.go:88	0x1331c4		aa0003e3		MOVD R0, R3					
  repro_test.go:88	0x1331c8		f9404fe0		MOVD 152(RSP), R0				
  repro_test.go:88	0x1331cc		97feaf9d		CALL testing.(*B).Run(SB)			
  repro_test.go:87	0x1331d0		f94043e4		MOVD 128(RSP), R4				
  repro_test.go:87	0x1331d4		91006083		ADD $24, R4, R3					
  repro_test.go:87	0x1331d8		f9401fe4		MOVD 56(RSP), R4				
  repro_test.go:87	0x1331dc		91000481		ADD $1, R4, R1					
  repro_test.go:87	0x1331e0		f100083f		CMP $2, R1					
  repro_test.go:87	0x1331e4		5400036a		BGE 27(PC)					
  repro_test.go:87	0x1331e8		f9001fe1		MOVD R1, 56(RSP)				
  repro_test.go:87	0x1331ec		f90043e3		MOVD R3, 128(RSP)				
  repro_test.go:87	0x1331f0		a9401464		LDP (R3), (R4, R5)				
  repro_test.go:87	0x1331f4		f9001be5		MOVD R5, 48(RSP)				
  repro_test.go:87	0x1331f8		f9003fe4		MOVD R4, 120(RSP)				
  repro_test.go:87	0x1331fc		f9400863		MOVD 16(R3), R3					
  repro_test.go:87	0x133200		f9003be3		MOVD R3, 112(RSP)				
  repro_test.go:88	0x133204		b27b03e0		ORR $32, ZR, R0					
  repro_test.go:88	0x133208		d0000ac1		ADRP 1417216(PC), R1				
  repro_test.go:88	0x13320c		91128021		ADD $1184, R1, R1				
  repro_test.go:88	0x133210		b24003e2		ORR $1, ZR, R2					
  repro_test.go:88	0x133214		97fbe0db		CALL runtime.mallocgcSmallScanNoHeaderSC4(SB)	
  repro_test.go:88	0x133218		b0000003		ADRP 4096(PC), R3				
  repro_test.go:88	0x13321c		91028063		ADD $160, R3, R3				
  repro_test.go:88	0x133220		f9000003		MOVD R3, (R0)					
  repro_test.go:88	0x133224		f9401be2		MOVD 48(RSP), R2				
  repro_test.go:88	0x133228		f9000802		MOVD R2, 16(R0)					
  repro_test.go:88	0x13322c		b0000e3b		ADRP 1855488(PC), R27				
  repro_test.go:88	0x133230		b943c363		MOVWU 960(R27), R3				
  repro_test.go:88	0x133234		35000063		CBNZW R3, 3(PC)					
  repro_test.go:88	0x133238		a94707e4		LDP 112(RSP), (R4, R1)				
  repro_test.go:88	0x13323c		17ffffe0		JMP -32(PC)					
  repro_test.go:88	0x133240		97fd8790		CALL runtime.gcWriteBarrier2(SB)		
  repro_test.go:88	0x133244		a94707e4		LDP 112(RSP), (R4, R1)				
  repro_test.go:88	0x133248		a9001321		STP (R1, R4), (R25)				
  repro_test.go:88	0x13324c		17ffffdc		JMP -36(PC)					
  repro_test.go:90	0x133250		f85f83fd		MOVD -8(RSP), R29				
  repro_test.go:90	0x133254		f84907fe		MOVD.P 144(RSP), R30				
  repro_test.go:90	0x133258		d65f03c0		RET						
  repro_test.go:86	0x13325c		f90007e0		MOVD R0, 8(RSP)					
  repro_test.go:86	0x133260		aa1e03e3		MOVD R30, R3					
  repro_test.go:86	0x133264		97fd8003		CALL runtime.morestack_noctxt.abi0(SB)		
  repro_test.go:86	0x133268		f94007e0		MOVD 8(RSP), R0					
  repro_test.go:86	0x13326c		17ffffbd		JMP carryselect.BenchmarkNegBorrow(SB)		

TEXT carryselect.TestDotSchedule(SB) /home/exedev/crypto-audit/round4/issues/carry-select/repro_test.go
  repro_test.go:92	0x133270		f9400b90		MOVD 16(R28), R16				
  repro_test.go:92	0x133274		d11343f1		SUB $1232, RSP, R17				
  repro_test.go:92	0x133278		eb10023f		CMP R16, R17					
  repro_test.go:92	0x13327c		540035c9		BLS 430(PC)					
  repro_test.go:92	0x133280		d11543f4		SUB $1360, RSP, R20				
  repro_test.go:92	0x133284		a93ffa9d		STP (R29, R30), -8(R20)				
  repro_test.go:92	0x133288		9100029f		MOVD R20, RSP					
  repro_test.go:92	0x13328c		d10023fd		SUB $8, RSP, R29				
  rand.go:79		0x133290		f902afe0		MOVD R0, 1368(RSP)				
  repro_test.go:93	0x133294		d503201f		NOOP						
  rand.go:52		0x133298		d503201f		NOOP						
  rand.go:56		0x13329c		d0000b00		ADRP 1449984(PC), R0				
  rand.go:56		0x1332a0		91070000		ADD $448, R0, R0				
  rand.go:56		0x1332a4		97fbdcbb		CALL runtime.newobject(SB)			
  rand.go:56		0x1332a8		f902a3e0		MOVD R0, 1344(RSP)				
  rand.go:57		0x1332ac		b24007e1		ORR $3, ZR, R1					
  rand.go:57		0x1332b0		97fe9c84		CALL math/rand.(*rngSource).Seed(SB)		
  repro_test.go:93	0x1332b4		d503201f		NOOP						
  rand.go:79		0x1332b8		f0000c80		ADRP 1650688(PC), R0				
  rand.go:79		0x1332bc		913e4000		ADD $3984, R0, R0				
  rand.go:79		0x1332c0		c8dffc01		LDAR (R0), R1					
  rand.go:79		0x1332c4		f9400022		MOVD (R1), R2					
  rand.go:79		0x1332c8		d0000b9b		ADRP 1515520(PC), R27				
  rand.go:79		0x1332cc		b9444b63		MOVWU 1096(R27), R3				
  rand.go:79		0x1332d0		14000002		JMP 2(PC)					
  rand.go:79		0x1332d4		aa0703e3		MOVD R7, R3					
  rand.go:79		0x1332d8		8a020067		AND R2, R3, R7					
  rand.go:79		0x1332dc		d37cece7		LSL $4, R7, R7					
  rand.go:79		0x1332e0		910020e7		ADD $8, R7, R7					
  rand.go:79		0x1332e4		f8676828		MOVD (R1)(R7), R8				
  rand.go:79		0x1332e8		8b070027		ADD R7, R1, R7					
  rand.go:79		0x1332ec		b00009a9		ADRP 1265664(PC), R9				
  rand.go:79		0x1332f0		913e4129		ADD $3984, R9, R9				
  rand.go:79		0x1332f4		eb09011f		CMP R9, R8					
  rand.go:79		0x1332f8		540000c0		BEQ 6(PC)					
  rand.go:79		0x1332fc		91000467		ADD $1, R3, R7					
  rand.go:79		0x133300		b5fffea8		CBNZ R8, -11(PC)				
  rand.go:79		0x133304		aa0903e1		MOVD R9, R1					
  rand.go:79		0x133308		97fbcece		CALL runtime.typeAssert(SB)			
  rand.go:79		0x13330c		14000002		JMP 2(PC)					
  rand.go:79		0x133310		f94004e0		MOVD 8(R7), R0					
  rand.go:80		0x133314		911223e7		ADD $1160, RSP, R7				
  rand.go:80		0x133318		a9007cff		STP (ZR, ZR), (R7)				
  rand.go:80		0x13331c		a9017cff		STP (ZR, ZR), 16(R7)				
  rand.go:80		0x133320		a9027cff		STP (ZR, ZR), 32(R7)				
  rand.go:80		0x133324		d0000b87		ADRP 1515520(PC), R7				
  rand.go:80		0x133328		9110e0e7		ADD $1080, R7, R7				
  rand.go:80		0x13332c		f942a3e8		MOVD 1344(RSP), R8				
  rand.go:80		0x133330		911223fb		ADD $1160, RSP, R27				
  rand.go:80		0x133334		a9002367		STP (R7, R8), (R27)				
  rand.go:80		0x133338		911263fb		ADD $1176, RSP, R27				
  rand.go:80		0x13333c		a9002360		STP (R0, R8), (R27)				
  repro_test.go:94	0x133340		9102e3e7		ADD $184, RSP, R7				
  repro_test.go:94	0x133344		d00000e8		ADRP 122880(PC), R8				
  repro_test.go:94	0x133348		91056108		ADD $344, R8, R8				
  repro_test.go:94	0x13334c		b24007f8		ORR $3, ZR, R24					
  repro_test.go:94	0x133350		acc14510		FLDPQ.P 32(R8), (F16, F17)			
  repro_test.go:94	0x133354		ac8144f0		FSTPQ.P (F16, F17), 32(R7)			
  repro_test.go:94	0x133358		acc14510		FLDPQ.P 32(R8), (F16, F17)			
  repro_test.go:94	0x13335c		ac8144f0		FSTPQ.P (F16, F17), 32(R7)			
  repro_test.go:94	0x133360		d1000718		SUB $1, R24, R24				
  repro_test.go:94	0x133364		b5ffff78		CBNZ R24, -5(PC)				
  repro_test.go:94	0x133368		ad404510		FLDPQ (R8), (F16, F17)				
  repro_test.go:94	0x13336c		ad0044f0		FSTPQ (F16, F17), (R7)				
  repro_test.go:94	0x133370		3dc00910		FMOVQ 32(R8), F16				
  repro_test.go:94	0x133374		3d8008f0		FMOVQ F16, 32(R7)				
  repro_test.go:95	0x133378		3911a3ff		MOVB ZR, 1128(RSP)				
  repro_test.go:95	0x13337c		9111c3fb		ADD $1136, RSP, R27				
  repro_test.go:95	0x133380		a9007f7f		STP (ZR, ZR), (R27)				
  repro_test.go:95	0x133384		f90243ff		MOVD ZR, 1152(RSP)				
  repro_test.go:95	0x133388		391123ff		MOVB ZR, 1096(RSP)				
  repro_test.go:95	0x13338c		911143fb		ADD $1104, RSP, R27				
  repro_test.go:95	0x133390		a9007f7f		STP (ZR, ZR), (R27)				
  repro_test.go:95	0x133394		f90233ff		MOVD ZR, 1120(RSP)				
  int.go:90		0x133398		b24003e7		ORR $1, ZR, R7					
  int.go:90		0x13339c		f90117e7		MOVD R7, 552(RSP)				
  int.go:92		0x1333a0		3910a3ff		MOVB ZR, 1064(RSP)				
  int.go:92		0x1333a4		b24003e5		ORR $1, ZR, R5					
  int.go:92		0x1333a8		f9021fe5		MOVD R5, 1080(RSP)				
  int.go:92		0x1333ac		f90223e5		MOVD R5, 1088(RSP)				
  int.go:92		0x1333b0		9108a3e3		ADD $552, RSP, R3				
  int.go:92		0x1333b4		f9021be3		MOVD R3, 1072(RSP)				
  int.go:1245		0x1333b8		911143fb		ADD $1104, RSP, R27				
  int.go:1245		0x1333bc		a9400760		LDP (R27), (R0, R1)				
  int.go:1245		0x1333c0		f94233e2		MOVD 1120(RSP), R2				
  int.go:1245		0x1333c4		aa0503e4		MOVD R5, R4					
  int.go:1245		0x1333c8		b27903e6		ORR $128, ZR, R6				
  int.go:1245		0x1333cc		97ffe885		CALL math/big.nat.lsh(SB)			
  int.go:1245		0x1333d0		f9022fe1		MOVD R1, 1112(RSP)				
  int.go:1245		0x1333d4		f90233e2		MOVD R2, 1120(RSP)				
  int.go:1245		0x1333d8		f9022be0		MOVD R0, 1104(RSP)				
  int.go:1246		0x1333dc		3950a3e7		MOVBU 1064(RSP), R7				
  int.go:1246		0x1333e0		391123e7		MOVB R7, 1096(RSP)				
  int.go:90		0x1333e4		b24003e7		ORR $1, ZR, R7					
  int.go:90		0x1333e8		f90113e7		MOVD R7, 544(RSP)				
  int.go:92		0x1333ec		391023ff		MOVB ZR, 1032(RSP)				
  int.go:92		0x1333f0		b24003e7		ORR $1, ZR, R7					
  int.go:92		0x1333f4		f9020fe7		MOVD R7, 1048(RSP)				
  int.go:92		0x1333f8		f90213e7		MOVD R7, 1056(RSP)				
  int.go:92		0x1333fc		910883e7		ADD $544, RSP, R7				
  int.go:92		0x133400		f9020be7		MOVD R7, 1040(RSP)				
  repro_test.go:95	0x133404		9111a3e0		ADD $1128, RSP, R0				
  repro_test.go:95	0x133408		911123e1		ADD $1096, RSP, R1				
  repro_test.go:95	0x13340c		911023e2		ADD $1032, RSP, R2				
  repro_test.go:95	0x133410		97ffe28c		CALL math/big.(*Int).Sub(SB)			
  repro_test.go:95	0x133414		f901e3e0		MOVD R0, 960(RSP)				
  repro_test.go:96	0x133418		aa1f03e1		MOVD ZR, R1					
  repro_test.go:96	0x13341c		14000003		JMP 3(PC)					
  repro_test.go:96	0x133420		f9405be3		MOVD 176(RSP), R3				
  repro_test.go:96	0x133424		91000461		ADD $1, R3, R1					
  repro_test.go:96	0x133428		f10fa03f		CMP $1000, R1					
  repro_test.go:96	0x13342c		5400276a		BGE 315(PC)					
  repro_test.go:96	0x133430		f9005be1		MOVD R1, 176(RSP)				
  repro_test.go:97	0x133434		9107e3e3		ADD $504, RSP, R3				
  repro_test.go:97	0x133438		a9007c7f		STP (ZR, ZR), (R3)				
  repro_test.go:97	0x13343c		a9017c7f		STP (ZR, ZR), 16(R3)				
  repro_test.go:97	0x133440		f900107f		MOVD ZR, 32(R3)					
  repro_test.go:97	0x133444		aa1f03e0		MOVD ZR, R0					
  repro_test.go:97	0x133448		14000003		JMP 3(PC)					
  repro_test.go:97	0x13344c		91000423		ADD $1, R1, R3					
  repro_test.go:97	0x133450		aa0303e0		MOVD R3, R0					
  repro_test.go:97	0x133454		f100141f		CMP $5, R0					
  repro_test.go:97	0x133458		5400018a		BGE 12(PC)					
  repro_test.go:97	0x13345c		f900fbe0		MOVD R0, 496(RSP)				
  repro_test.go:97	0x133460		911223e0		ADD $1160, RSP, R0				
  repro_test.go:97	0x133464		97fe9b4b		CALL math/rand.(*Rand).Uint64(SB)		
  repro_test.go:97	0x133468		f940fbe1		MOVD 496(RSP), R1				
  repro_test.go:97	0x13346c		9107e3e2		ADD $504, RSP, R2				
  repro_test.go:97	0x133470		f8217840		MOVD R0, (R2)(R1<<3)				
  repro_test.go:97	0x133474		f9405be0		MOVD 176(RSP), R0				
  repro_test.go:97	0x133478		b5fffea0		CBNZ R0, -11(PC)				
  repro_test.go:97	0x13347c		92800003		MOVD $-1, R3					
  repro_test.go:97	0x133480		f8217843		MOVD R3, (R2)(R1<<3)				
  repro_test.go:97	0x133484		17fffff2		JMP -14(PC)					
  repro_test.go:98	0x133488		910e63e3		ADD $920, RSP, R3				
  repro_test.go:98	0x13348c		a9007c7f		STP (ZR, ZR), (R3)				
  repro_test.go:98	0x133490		a9017c7f		STP (ZR, ZR), 16(R3)				
  repro_test.go:98	0x133494		f900107f		MOVD ZR, 32(R3)					
  repro_test.go:99	0x133498		910a03e4		ADD $640, RSP, R4				
  repro_test.go:99	0x13349c		9102e3e5		ADD $184, RSP, R5				
  repro_test.go:99	0x1334a0		b24007f8		ORR $3, ZR, R24					
  repro_test.go:99	0x1334a4		acc144b0		FLDPQ.P 32(R5), (F16, F17)			
  repro_test.go:99	0x1334a8		ac814490		FSTPQ.P (F16, F17), 32(R4)			
  repro_test.go:99	0x1334ac		acc144b0		FLDPQ.P 32(R5), (F16, F17)			
  repro_test.go:99	0x1334b0		ac814490		FSTPQ.P (F16, F17), 32(R4)			
  repro_test.go:99	0x1334b4		d1000718		SUB $1, R24, R24				
  repro_test.go:99	0x1334b8		b5ffff78		CBNZ R24, -5(PC)				
  repro_test.go:99	0x1334bc		ad4044b0		FLDPQ (R5), (F16, F17)				
  repro_test.go:99	0x1334c0		ad004490		FSTPQ (F16, F17), (R4)				
  repro_test.go:99	0x1334c4		3dc008b0		FMOVQ 32(R5), F16				
  repro_test.go:99	0x1334c8		3d800890		FMOVQ F16, 32(R4)				
  repro_test.go:99	0x1334cc		910a03e4		ADD $640, RSP, R4				
  repro_test.go:99	0x1334d0		aa1f03e0		MOVD ZR, R0					
  repro_test.go:99	0x1334d4		1400000c		JMP 12(PC)					
  repro_test.go:99	0x1334d8		f941c3e0		MOVD 896(RSP), R0				
  repro_test.go:99	0x1334dc		aa0003e1		MOVD R0, R1					
  repro_test.go:99	0x1334e0		f941e3e2		MOVD 960(RSP), R2				
  repro_test.go:99	0x1334e4		97ffe43b		CALL math/big.(*Int).And(SB)			
  repro_test.go:99	0x1334e8		f940f7e3		MOVD 488(RSP), R3				
  repro_test.go:99	0x1334ec		910e63e4		ADD $920, RSP, R4				
  repro_test.go:99	0x1334f0		f8237880		MOVD R0, (R4)(R3<<3)				
  repro_test.go:99	0x1334f4		f9426fe5		MOVD 1240(RSP), R5				
  repro_test.go:99	0x1334f8		9100c0a5		ADD $48, R5, R5					
  repro_test.go:99	0x1334fc		91000460		ADD $1, R3, R0					
  repro_test.go:99	0x133500		aa0503e4		MOVD R5, R4					
  repro_test.go:99	0x133504		f100141f		CMP $5, R0					
  repro_test.go:99	0x133508		5400096a		BGE 75(PC)					
  repro_test.go:99	0x13350c		f900f7e0		MOVD R0, 488(RSP)				
  repro_test.go:99	0x133510		f9026fe4		MOVD R4, 1240(RSP)				
  repro_test.go:99	0x133514		ad400480		FLDPQ (R4), (F0, F1)				
  repro_test.go:99	0x133518		3dc00882		FMOVQ 32(R4), F2				
  repro_test.go:99	0x13351c		9106a3fb		ADD $424, RSP, R27				
  repro_test.go:99	0x133520		ad000760		FSTPQ (F0, F1), (R27)				
  repro_test.go:99	0x133524		910723fb		ADD $456, RSP, R27				
  repro_test.go:99	0x133528		3d800362		FMOVQ F2, (R27)					
  repro_test.go:99	0x13352c		b27b03e0		ORR $32, ZR, R0					
  repro_test.go:99	0x133530		b0000ae1		ADRP 1429504(PC), R1				
  repro_test.go:99	0x133534		9121e021		ADD $2168, R1, R1				
  repro_test.go:99	0x133538		b24003e2		ORR $1, ZR, R2					
  repro_test.go:99	0x13353c		97fbe011		CALL runtime.mallocgcSmallScanNoHeaderSC4(SB)	
  repro_test.go:99	0x133540		f901c3e0		MOVD R0, 896(RSP)				
  repro_test.go:99	0x133544		aa1f03e1		MOVD ZR, R1					
  repro_test.go:99	0x133548		14000016		JMP 22(PC)					
  repro_test.go:99	0x13354c		9107e3e5		ADD $504, RSP, R5				
  repro_test.go:99	0x133550		f86478a3		MOVD (R5)(R4<<3), R3				
  int.go:72		0x133554		aa1f03e0		MOVD ZR, R0					
  int.go:72		0x133558		aa1f03e1		MOVD ZR, R1					
  int.go:72		0x13355c		aa1f03e2		MOVD ZR, R2					
  int.go:72		0x133560		97ffe564		CALL math/big.nat.setUint64(SB)			
  int.go:72		0x133564		f9029fe2		MOVD R2, 1336(RSP)				
  int.go:72		0x133568		9114a3fb		ADD $1320, RSP, R27				
  int.go:72		0x13356c		a9000760		STP (R0, R1), (R27)				
  int.go:73		0x133570		391483ff		MOVB ZR, 1312(RSP)				
  int.go:185		0x133574		910fa3e0		ADD $1000, RSP, R0				
  int.go:185		0x133578		aa1f03e1		MOVD ZR, R1					
  int.go:185		0x13357c		910f23e2		ADD $968, RSP, R2				
  int.go:185		0x133580		911483e3		ADD $1312, RSP, R3				
  int.go:185		0x133584		97ffe293		CALL math/big.(*Int).mul(SB)			
  repro_test.go:99	0x133588		f941c3e0		MOVD 896(RSP), R0				
  repro_test.go:99	0x13358c		aa0003e1		MOVD R0, R1					
  repro_test.go:99	0x133590		910fa3e2		ADD $1000, RSP, R2				
  repro_test.go:99	0x133594		97ffe1c7		CALL math/big.(*Int).Add(SB)			
  repro_test.go:99	0x133598		f940efe4		MOVD 472(RSP), R4				
  repro_test.go:99	0x13359c		91000881		ADD $2, R4, R1					
  repro_test.go:99	0x1335a0		f100183f		CMP $6, R1					
  repro_test.go:99	0x1335a4		54fff9aa		BGE -51(PC)					
  repro_test.go:99	0x1335a8		390fa3ff		MOVB ZR, 1000(RSP)				
  repro_test.go:99	0x1335ac		910fc3fb		ADD $1008, RSP, R27				
  repro_test.go:99	0x1335b0		a9007f7f		STP (ZR, ZR), (R27)				
  repro_test.go:99	0x1335b4		f90203ff		MOVD ZR, 1024(RSP)				
  repro_test.go:99	0x1335b8		390f23ff		MOVB ZR, 968(RSP)				
  repro_test.go:99	0x1335bc		910f43fb		ADD $976, RSP, R27				
  repro_test.go:99	0x1335c0		a9007f7f		STP (ZR, ZR), (R27)				
  repro_test.go:99	0x1335c4		f901f3ff		MOVD ZR, 992(RSP)				
  repro_test.go:99	0x1335c8		9106a3e4		ADD $424, RSP, R4				
  repro_test.go:99	0x1335cc		f8617885		MOVD (R4)(R1<<3), R5				
  repro_test.go:99	0x1335d0		f10014bf		CMP $5, R5					
  repro_test.go:99	0x1335d4		54001ac2		BCS 214(PC)					
  repro_test.go:99	0x1335d8		f900efe1		MOVD R1, 472(RSP)				
  repro_test.go:99	0x1335dc		9107e3e4		ADD $504, RSP, R4				
  repro_test.go:99	0x1335e0		f8657883		MOVD (R4)(R5<<3), R3				
  repro_test.go:99	0x1335e4		91000424		ADD $1, R1, R4					
  repro_test.go:99	0x1335e8		f901bbe4		MOVD R4, 880(RSP)				
  int.go:72		0x1335ec		aa1f03e0		MOVD ZR, R0					
  int.go:72		0x1335f0		aa1f03e1		MOVD ZR, R1					
  int.go:72		0x1335f4		aa1f03e2		MOVD ZR, R2					
  int.go:72		0x1335f8		97ffe53e		CALL math/big.nat.setUint64(SB)			
  int.go:72		0x1335fc		f901f3e2		MOVD R2, 992(RSP)				
  int.go:72		0x133600		910f43fb		ADD $976, RSP, R27				
  int.go:72		0x133604		a9000760		STP (R0, R1), (R27)				
  int.go:73		0x133608		390f23ff		MOVB ZR, 968(RSP)				
  repro_test.go:99	0x13360c		391483ff		MOVB ZR, 1312(RSP)				
  repro_test.go:99	0x133610		9114a3fb		ADD $1320, RSP, R27				
  repro_test.go:99	0x133614		a9007f7f		STP (ZR, ZR), (R27)				
  repro_test.go:99	0x133618		f9029fff		MOVD ZR, 1336(RSP)				
  repro_test.go:99	0x13361c		f941bbe4		MOVD 880(RSP), R4				
  repro_test.go:99	0x133620		9106a3e5		ADD $424, RSP, R5				
  repro_test.go:99	0x133624		f86478a4		MOVD (R5)(R4<<3), R4				
  repro_test.go:99	0x133628		f100149f		CMP $5, R4					
  repro_test.go:99	0x13362c		54fff903		BCC -56(PC)					
  repro_test.go:99	0x133630		140000be		JMP 190(PC)					
  repro_test.go:100	0x133634		910223e3		ADD $136, RSP, R3				
  repro_test.go:100	0x133638		a9007c7f		STP (ZR, ZR), (R3)				
  repro_test.go:100	0x13363c		a9017c7f		STP (ZR, ZR), 16(R3)				
  repro_test.go:100	0x133640		f900107f		MOVD ZR, 32(R3)					
  repro_test.go:100	0x133644		aa1f03e0		MOVD ZR, R0					
  repro_test.go:100	0x133648		14000007		JMP 7(PC)					
  repro_test.go:100	0x13364c		f94037e4		MOVD 104(RSP), R4				
  repro_test.go:100	0x133650		ca030083		EOR R3, R4, R3					
  repro_test.go:100	0x133654		f940f3e4		MOVD 480(RSP), R4				
  repro_test.go:100	0x133658		910223e5		ADD $136, RSP, R5				
  repro_test.go:100	0x13365c		f82478a3		MOVD R3, (R5)(R4<<3)				
  repro_test.go:100	0x133660		91000480		ADD $1, R4, R0					
  repro_test.go:100	0x133664		f100141f		CMP $5, R0					
  repro_test.go:100	0x133668		54000e4a		BGE 114(PC)					
  repro_test.go:100	0x13366c		910e63e3		ADD $920, RSP, R3				
  repro_test.go:100	0x133670		f8607864		MOVD (R3)(R0<<3), R4				
  int.go:524		0x133674		a9409484		LDP 8(R4), (R4, R5)				
  int.go:501		0x133678		b5000065		CBNZ R5, 3(PC)					
  repro_test.go:100	0x13367c		aa1f03e4		MOVD ZR, R4					
  int.go:524		0x133680		14000002		JMP 2(PC)					
  int.go:504		0x133684		f9400084		MOVD (R4), R4					
  repro_test.go:100	0x133688		391403ff		MOVB ZR, 1280(RSP)				
  repro_test.go:100	0x13368c		911423fb		ADD $1288, RSP, R27				
  repro_test.go:100	0x133690		a9007f7f		STP (ZR, ZR), (R27)				
  repro_test.go:100	0x133694		f9028fff		MOVD ZR, 1304(RSP)				
  repro_test.go:100	0x133698		391383ff		MOVB ZR, 1248(RSP)				
  repro_test.go:100	0x13369c		9113a3fb		ADD $1256, RSP, R27				
  repro_test.go:100	0x1336a0		a9007f7f		STP (ZR, ZR), (R27)				
  repro_test.go:100	0x1336a4		f9027fff		MOVD ZR, 1272(RSP)				
  repro_test.go:100	0x1336a8		91001005		ADD $4, R0, R5					
  repro_test.go:100	0x1336ac		b202e7e6		MOVD $-3689348814741910324, R6			
  repro_test.go:100	0x1336b0		f29999a6		MOVK $52429, R6					
  repro_test.go:100	0x1336b4		9bc67ca5		UMULH R6, R5, R5				
  repro_test.go:100	0x1336b8		d342fca5		LSR $2, R5, R5					
  repro_test.go:100	0x1336bc		f10000bf		CMP $0, R5					
  repro_test.go:100	0x1336c0		9a9f07e5		CSET NE, R5					
  repro_test.go:100	0x1336c4		720000bf		TSTW $1, R5					
  repro_test.go:100	0x1336c8		d28000a5		MOVD $5, R5					
  repro_test.go:100	0x1336cc		9a9f10a7		CSEL NE, R5, ZR, R7				
  repro_test.go:100	0x1336d0		cb070007		SUB R7, R0, R7					
  repro_test.go:100	0x1336d4		910010e7		ADD $4, R7, R7					
  repro_test.go:100	0x1336d8		f10014ff		CMP $5, R7					
  repro_test.go:100	0x1336dc		54001242		BCS 146(PC)					
  repro_test.go:100	0x1336e0		f900f3e0		MOVD R0, 480(RSP)				
  repro_test.go:100	0x1336e4		f90037e4		MOVD R4, 104(RSP)				
  repro_test.go:100	0x1336e8		f8677867		MOVD (R3)(R7<<3), R7				
  int.go:97		0x1336ec		911383e1		ADD $1248, RSP, R1				
  int.go:97		0x1336f0		eb0100ff		CMP R1, R7					
  int.go:97		0x1336f4		540008c0		BEQ 70(PC)					
  repro_test.go:100	0x1336f8		f901cbe7		MOVD R7, 912(RSP)				
  int.go:98		0x1336fc		a940a4e8		LDP 8(R7), (R8, R9)				
  nat.go:57		0x133700		b50000a9		CBNZ R9, 5(PC)					
  nat.go:92		0x133704		aa1f03e2		MOVD ZR, R2					
  nat.go:92		0x133708		aa1f03ea		MOVD ZR, R10					
  nat.go:92		0x13370c		aa1f03eb		MOVD ZR, R11					
  nat.go:92		0x133710		14000027		JMP 39(PC)					
  int.go:98		0x133714		f90043e9		MOVD R9, 128(RSP)				
  int.go:98		0x133718		f901c7e8		MOVD R8, 904(RSP)				
  nat.go:60		0x13371c		f100053f		CMP $1, R9					
  nat.go:60		0x133720		54000241		BNE 18(PC)					
  nat.go:62		0x133724		90000aa0		ADRP 1392640(PC), R0				
  nat.go:62		0x133728		91172000		ADD $1480, R0, R0				
  nat.go:62		0x13372c		b24003e1		ORR $1, ZR, R1					
  nat.go:62		0x133730		aa0103e2		MOVD R1, R2					
  nat.go:62		0x133734		97fd741b		CALL runtime.makeslice(SB)			
  repro_test.go:100	0x133738		911383e1		ADD $1248, RSP, R1				
  repro_test.go:98	0x13373c		910e63e3		ADD $920, RSP, R3				
  repro_test.go:98	0x133740		d28000a5		MOVD $5, R5					
  repro_test.go:100	0x133744		b202e7e6		MOVD $-3689348814741910324, R6			
  repro_test.go:100	0x133748		f29999a6		MOVK $52429, R6					
  int.go:99		0x13374c		f941cbe7		MOVD 912(RSP), R7				
  nat.go:93		0x133750		f941c7e8		MOVD 904(RSP), R8				
  nat.go:93		0x133754		f94043e9		MOVD 128(RSP), R9				
  nat.go:93		0x133758		b24003e2		ORR $1, ZR, R2					
  nat.go:92		0x13375c		aa0003ea		MOVD R0, R10					
  nat.go:92		0x133760		b24003eb		ORR $1, ZR, R11					
  nat.go:92		0x133764		14000012		JMP 18(PC)					
  nat.go:67		0x133768		91001122		ADD $4, R9, R2					
  nat.go:67		0x13376c		f90033e2		MOVD R2, 96(RSP)				
  nat.go:67		0x133770		90000aa0		ADRP 1392640(PC), R0				
  nat.go:67		0x133774		91172000		ADD $1480, R0, R0				
  nat.go:67		0x133778		aa0903e1		MOVD R9, R1					
  nat.go:67		0x13377c		97fd7409		CALL runtime.makeslice(SB)			
  repro_test.go:100	0x133780		911383e1		ADD $1248, RSP, R1				
  repro_test.go:98	0x133784		910e63e3		ADD $920, RSP, R3				
  repro_test.go:98	0x133788		d28000a5		MOVD $5, R5					
  repro_test.go:100	0x13378c		b202e7e6		MOVD $-3689348814741910324, R6			
  repro_test.go:100	0x133790		f29999a6		MOVK $52429, R6					
  int.go:99		0x133794		f941cbe7		MOVD 912(RSP), R7				
  nat.go:93		0x133798		f941c7e8		MOVD 904(RSP), R8				
  nat.go:93		0x13379c		f94043e9		MOVD 128(RSP), R9				
  nat.go:92		0x1337a0		aa0903e2		MOVD R9, R2					
  nat.go:92		0x1337a4		aa0003ea		MOVD R0, R10					
  nat.go:92		0x1337a8		f94033eb		MOVD 96(RSP), R11				
  nat.go:93		0x1337ac		eb09005f		CMP R9, R2					
  nat.go:93		0x1337b0		9a82c129		CSEL GT, R9, R2, R9				
  nat.go:93		0x1337b4		eb08015f		CMP R8, R10					
  nat.go:93		0x1337b8		54000200		BEQ 16(PC)					
  nat.go:92		0x1337bc		a9072fe2		STP (R2, R11), 112(RSP)				
  nat.go:92		0x1337c0		f901bfea		MOVD R10, 888(RSP)				
  nat.go:93		0x1337c4		d37df122		LSL $3, R9, R2					
  nat.go:93		0x1337c8		aa0a03e0		MOVD R10, R0					
  nat.go:93		0x1337cc		aa0803e1		MOVD R8, R1					
  nat.go:93		0x1337d0		97fd8764		CALL runtime.memmove(SB)			
  repro_test.go:100	0x1337d4		911383e1		ADD $1248, RSP, R1				
  int.go:98		0x1337d8		f9403be2		MOVD 112(RSP), R2				
  repro_test.go:98	0x1337dc		910e63e3		ADD $920, RSP, R3				
  repro_test.go:98	0x1337e0		d28000a5		MOVD $5, R5					
  repro_test.go:100	0x1337e4		b202e7e6		MOVD $-3689348814741910324, R6			
  repro_test.go:100	0x1337e8		f29999a6		MOVK $52429, R6					
  int.go:99		0x1337ec		f941cbe7		MOVD 912(RSP), R7				
  int.go:98		0x1337f0		f941bfea		MOVD 888(RSP), R10				
  int.go:98		0x1337f4		f9403feb		MOVD 120(RSP), R11				
  int.go:98		0x1337f8		f9027feb		MOVD R11, 1272(RSP)				
  int.go:98		0x1337fc		9113a3fb		ADD $1256, RSP, R27				
  int.go:98		0x133800		a9000b6a		STP (R10, R2), (R27)				
  int.go:99		0x133804		394000e7		MOVBU (R7), R7					
  int.go:99		0x133808		391383e7		MOVB R7, 1248(RSP)				
  repro_test.go:100	0x13380c		911403e0		ADD $1280, RSP, R0				
  repro_test.go:100	0x133810		b27a03e2		ORR $64, ZR, R2					
  repro_test.go:100	0x133814		97ffe31b		CALL math/big.(*Int).Rsh(SB)			
  int.go:524		0x133818		a9409003		LDP 8(R0), (R3, R4)				
  int.go:501		0x13381c		b5000064		CBNZ R4, 3(PC)					
  repro_test.go:100	0x133820		aa1f03e3		MOVD ZR, R3					
  int.go:524		0x133824		17ffff8a		JMP -118(PC)					
  int.go:504		0x133828		f9400063		MOVD (R3), R3					
  int.go:524		0x13382c		17ffff88		JMP -120(PC)					
  repro_test.go:101	0x133830		9107e3fb		ADD $504, RSP, R27				
  repro_test.go:101	0x133834		ad400760		FLDPQ (R27), (F0, F1)				
  repro_test.go:101	0x133838		f9410fe0		MOVD 536(RSP), R0				
  repro_test.go:101	0x13383c		910023fb		ADD $8, RSP, R27				
  repro_test.go:101	0x133840		ad000760		FSTPQ (F0, F1), (R27)				
  repro_test.go:101	0x133844		f90017e0		MOVD R0, 40(RSP)				
  repro_test.go:101	0x133848		97fff902		CALL carryselect.DotSchedule(SB)		
  repro_test.go:101	0x13384c		ad4187e0		FLDPQ 48(RSP), (F0, F1)				
  repro_test.go:101	0x133850		f9402be0		MOVD 80(RSP), R0				
  repro_test.go:101	0x133854		910963fb		ADD $600, RSP, R27				
  repro_test.go:101	0x133858		ad000760		FSTPQ (F0, F1), (R27)				
  repro_test.go:101	0x13385c		f9013fe0		MOVD R0, 632(RSP)				
  repro_test.go:101	0x133860		910223e0		ADD $136, RSP, R0				
  repro_test.go:101	0x133864		910963e1		ADD $600, RSP, R1				
  repro_test.go:101	0x133868		d2800502		MOVD $40, R2					
  repro_test.go:101	0x13386c		97fb78b9		CALL runtime.memequal(SB)			
  repro_test.go:101	0x133870		37000060		TBNZ $0, R0, 3(PC)				
  repro_test.go:101	0x133874		b24003e0		ORR $1, ZR, R0					
  repro_test.go:101	0x133878		14000011		JMP 17(PC)					
  repro_test.go:101	0x13387c		9107e3fb		ADD $504, RSP, R27				
  repro_test.go:101	0x133880		ad400760		FLDPQ (R27), (F0, F1)				
  repro_test.go:101	0x133884		f9410fe0		MOVD 536(RSP), R0				
  repro_test.go:101	0x133888		910023fb		ADD $8, RSP, R27				
  repro_test.go:101	0x13388c		ad000760		FSTPQ (F0, F1), (R27)				
  repro_test.go:101	0x133890		f90017e0		MOVD R0, 40(RSP)				
  repro_test.go:101	0x133894		97fff94f		CALL carryselect.DotBarrier(SB)			
  repro_test.go:101	0x133898		ad4187e0		FLDPQ 48(RSP), (F0, F1)				
  repro_test.go:101	0x13389c		f9402be0		MOVD 80(RSP), R0				
  repro_test.go:101	0x1338a0		ad1187e0		FSTPQ (F0, F1), 560(RSP)			
  repro_test.go:101	0x1338a4		f9012be0		MOVD R0, 592(RSP)				
  repro_test.go:101	0x1338a8		910223e0		ADD $136, RSP, R0				
  repro_test.go:101	0x1338ac		9108c3e1		ADD $560, RSP, R1				
  repro_test.go:101	0x1338b0		d2800502		MOVD $40, R2					
  repro_test.go:101	0x1338b4		97fb78a7		CALL runtime.memequal(SB)			
  repro_test.go:101	0x1338b8		d2400000		EOR $1, R0, R0					
  repro_test.go:101	0x1338bc		3607db20		TBZ $0, R0, -295(PC)				
  repro_test.go:101	0x1338c0		9112e3e1		ADD $1208, RSP, R1				
  repro_test.go:101	0x1338c4		a9007c3f		STP (ZR, ZR), (R1)				
  repro_test.go:101	0x1338c8		a9017c3f		STP (ZR, ZR), 16(R1)				
  repro_test.go:101	0x1338cc		f0000a81		ADRP 1388544(PC), R1				
  repro_test.go:101	0x1338d0		91302021		ADD $3080, R1, R1				
  repro_test.go:101	0x1338d4		f00000c2		ADRP 110592(PC), R2				
  repro_test.go:101	0x1338d8		913c4042		ADD $3856, R2, R2				
  repro_test.go:101	0x1338dc		9112e3fb		ADD $1208, RSP, R27				
  repro_test.go:101	0x1338e0		a9000b61		STP (R1, R2), (R27)				
  repro_test.go:101	0x1338e4		f9405be0		MOVD 176(RSP), R0				
  repro_test.go:101	0x1338e8		97fd659e		CALL runtime.convT64(SB)			
  repro_test.go:101	0x1338ec		f0000a81		ADRP 1388544(PC), R1				
  repro_test.go:101	0x1338f0		91392021		ADD $3656, R1, R1				
  repro_test.go:101	0x1338f4		911323fb		ADD $1224, RSP, R27				
  repro_test.go:101	0x1338f8		a9000361		STP (R1, R0), (R27)				
  repro_test.go:101	0x1338fc		f942afe0		MOVD 1368(RSP), R0				
  repro_test.go:101	0x133900		3980001b		MOVB (R0), R27					
  repro_test.go:101	0x133904		9112e3e1		ADD $1208, RSP, R1				
  repro_test.go:101	0x133908		b27f03e2		ORR $2, ZR, R2					
  repro_test.go:101	0x13390c		aa0203e3		MOVD R2, R3					
  repro_test.go:101	0x133910		97fec918		CALL testing.(*common).Fatal(SB)		
  repro_test.go:101	0x133914		17fffec3		JMP -317(PC)					
  repro_test.go:103	0x133918		a97ffbfd		LDP -8(RSP), (R29, R30)				
  repro_test.go:103	0x13391c		911543ff		ADD $1360, RSP, RSP				
  repro_test.go:103	0x133920		d65f03c0		RET						
  repro_test.go:100	0x133924		97fd868b		CALL runtime.panicBounds(SB)			
  repro_test.go:99	0x133928		97fd868a		CALL runtime.panicBounds(SB)			
  repro_test.go:99	0x13392c		97fd8689		CALL runtime.panicBounds(SB)			
  repro_test.go:99	0x133930		d503201f		NOOP						
  repro_test.go:92	0x133934		f90007e0		MOVD R0, 8(RSP)					
  repro_test.go:92	0x133938		aa1e03e3		MOVD R30, R3					
  repro_test.go:92	0x13393c		97fd7e4d		CALL runtime.morestack_noctxt.abi0(SB)		
  repro_test.go:92	0x133940		f94007e0		MOVD 8(RSP), R0					
  repro_test.go:92	0x133944		17fffe4b		JMP carryselect.TestDotSchedule(SB)		
  repro_test.go:92	0x133948		00000000		?						
  repro_test.go:92	0x13394c		00000000		?						

TEXT carryselect.BenchmarkDot(SB) /home/exedev/crypto-audit/round4/issues/carry-select/repro_test.go
  repro_test.go:104	0x133950		f9400b90		MOVD 16(R28), R16				
  repro_test.go:104	0x133954		d10043f1		SUB $16, RSP, R17				
  repro_test.go:104	0x133958		eb10023f		CMP R16, R17					
  repro_test.go:104	0x13395c		540007a9		BLS 61(PC)					
  repro_test.go:104	0x133960		f8170ffe		MOVD.W R30, -144(RSP)				
  repro_test.go:104	0x133964		f81f83fd		MOVD R29, -8(RSP)				
  repro_test.go:104	0x133968		d10023fd		SUB $8, RSP, R29				
  repro_test.go:105	0x13396c		f9004fe0		MOVD R0, 152(RSP)				
  repro_test.go:105	0x133970		b0000063		ADRP 53248(PC), R3				
  repro_test.go:105	0x133974		912e1463		ADD $2949, R3, R3				
  repro_test.go:105	0x133978		b27d03e4		ORR $8, ZR, R4					
  repro_test.go:105	0x13397c		a90413e3		STP (R3, R4), 64(RSP)				
  repro_test.go:105	0x133980		d0000b83		ADRP 1515520(PC), R3				
  repro_test.go:105	0x133984		913f2063		ADD $4040, R3, R3				
  repro_test.go:105	0x133988		b0000064		ADRP 53248(PC), R4				
  repro_test.go:105	0x13398c		91210084		ADD $2112, R4, R4				
  repro_test.go:105	0x133990		a90513e3		STP (R3, R4), 80(RSP)				
  repro_test.go:105	0x133994		b2400be3		ORR $7, ZR, R3					
  repro_test.go:105	0x133998		d0000b84		ADRP 1515520(PC), R4				
  repro_test.go:105	0x13399c		913f0084		ADD $4032, R4, R4				
  repro_test.go:105	0x1339a0		a90613e3		STP (R3, R4), 96(RSP)				
  repro_test.go:105	0x1339a4		910103e3		ADD $64, RSP, R3				
  repro_test.go:105	0x1339a8		aa1f03e1		MOVD ZR, R1					
  repro_test.go:105	0x1339ac		1400000a		JMP 10(PC)					
  repro_test.go:106	0x1339b0		f9000401		MOVD R1, 8(R0)					
  repro_test.go:106	0x1339b4		f9000c04		MOVD R4, 24(R0)					
  repro_test.go:106	0x1339b8		aa0003e3		MOVD R0, R3					
  repro_test.go:106	0x1339bc		f9404fe0		MOVD 152(RSP), R0				
  repro_test.go:106	0x1339c0		97feada0		CALL testing.(*B).Run(SB)			
  repro_test.go:105	0x1339c4		f94043e4		MOVD 128(RSP), R4				
  repro_test.go:105	0x1339c8		91006083		ADD $24, R4, R3					
  repro_test.go:105	0x1339cc		f9401fe4		MOVD 56(RSP), R4				
  repro_test.go:105	0x1339d0		91000481		ADD $1, R4, R1					
  repro_test.go:105	0x1339d4		f100083f		CMP $2, R1					
  repro_test.go:105	0x1339d8		5400036a		BGE 27(PC)					
  repro_test.go:105	0x1339dc		f9001fe1		MOVD R1, 56(RSP)				
  repro_test.go:105	0x1339e0		f90043e3		MOVD R3, 128(RSP)				
  repro_test.go:105	0x1339e4		a9401464		LDP (R3), (R4, R5)				
  repro_test.go:105	0x1339e8		f9001be5		MOVD R5, 48(RSP)				
  repro_test.go:105	0x1339ec		f9003fe4		MOVD R4, 120(RSP)				
  repro_test.go:105	0x1339f0		f9400863		MOVD 16(R3), R3					
  repro_test.go:105	0x1339f4		f9003be3		MOVD R3, 112(RSP)				
  repro_test.go:106	0x1339f8		b27b03e0		ORR $32, ZR, R0					
  repro_test.go:106	0x1339fc		d0000ac1		ADRP 1417216(PC), R1				
  repro_test.go:106	0x133a00		910c8021		ADD $800, R1, R1				
  repro_test.go:106	0x133a04		b24003e2		ORR $1, ZR, R2					
  repro_test.go:106	0x133a08		97fbdede		CALL runtime.mallocgcSmallScanNoHeaderSC4(SB)	
  repro_test.go:106	0x133a0c		b0000003		ADRP 4096(PC), R3				
  repro_test.go:106	0x133a10		91050063		ADD $320, R3, R3				
  repro_test.go:106	0x133a14		f9000003		MOVD R3, (R0)					
  repro_test.go:106	0x133a18		f9401be2		MOVD 48(RSP), R2				
  repro_test.go:106	0x133a1c		f9000802		MOVD R2, 16(R0)					
  repro_test.go:106	0x133a20		b0000e3b		ADRP 1855488(PC), R27				
  repro_test.go:106	0x133a24		b943c363		MOVWU 960(R27), R3				
  repro_test.go:106	0x133a28		35000063		CBNZW R3, 3(PC)					
  repro_test.go:106	0x133a2c		a94707e4		LDP 112(RSP), (R4, R1)				
  repro_test.go:106	0x133a30		17ffffe0		JMP -32(PC)					
  repro_test.go:106	0x133a34		97fd8593		CALL runtime.gcWriteBarrier2(SB)		
  repro_test.go:106	0x133a38		a94707e4		LDP 112(RSP), (R4, R1)				
  repro_test.go:106	0x133a3c		a9001321		STP (R1, R4), (R25)				
  repro_test.go:106	0x133a40		17ffffdc		JMP -36(PC)					
  repro_test.go:108	0x133a44		f85f83fd		MOVD -8(RSP), R29				
  repro_test.go:108	0x133a48		f84907fe		MOVD.P 144(RSP), R30				
  repro_test.go:108	0x133a4c		d65f03c0		RET						
  repro_test.go:104	0x133a50		f90007e0		MOVD R0, 8(RSP)					
  repro_test.go:104	0x133a54		aa1e03e3		MOVD R30, R3					
  repro_test.go:104	0x133a58		97fd7e06		CALL runtime.morestack_noctxt.abi0(SB)		
  repro_test.go:104	0x133a5c		f94007e0		MOVD 8(RSP), R0					
  repro_test.go:104	0x133a60		17ffffbc		JMP carryselect.BenchmarkDot(SB)		
  repro_test.go:104	0x133a64		00000000		?						
  repro_test.go:104	0x133a68		00000000		?						
  repro_test.go:104	0x133a6c		00000000		?						

TEXT carryselect.TestShift51(SB) /home/exedev/crypto-audit/round4/issues/carry-select/repro_test.go
  repro_test.go:110	0x133a70		f9400b90		MOVD 16(R28), R16			
  repro_test.go:110	0x133a74		d102c3f1		SUB $176, RSP, R17			
  repro_test.go:110	0x133a78		eb10023f		CMP R16, R17				
  repro_test.go:110	0x133a7c		540013c9		BLS 158(PC)				
  repro_test.go:110	0x133a80		d104c3f4		SUB $304, RSP, R20			
  repro_test.go:110	0x133a84		a93ffa9d		STP (R29, R30), -8(R20)			
  repro_test.go:110	0x133a88		9100029f		MOVD R20, RSP				
  repro_test.go:110	0x133a8c		d10023fd		SUB $8, RSP, R29			
  rand.go:79		0x133a90		f9009fe0		MOVD R0, 312(RSP)			
  repro_test.go:111	0x133a94		d503201f		NOOP					
  rand.go:52		0x133a98		d503201f		NOOP					
  rand.go:56		0x133a9c		d0000b00		ADRP 1449984(PC), R0			
  rand.go:56		0x133aa0		91070000		ADD $448, R0, R0			
  rand.go:56		0x133aa4		97fbdabb		CALL runtime.newobject(SB)		
  rand.go:56		0x133aa8		f90093e0		MOVD R0, 288(RSP)			
  rand.go:57		0x133aac		b27e03e1		ORR $4, ZR, R1				
  rand.go:57		0x133ab0		97fe9a84		CALL math/rand.(*rngSource).Seed(SB)	
  repro_test.go:111	0x133ab4		d503201f		NOOP					
  rand.go:79		0x133ab8		f0000c80		ADRP 1650688(PC), R0			
  rand.go:79		0x133abc		913ec000		ADD $4016, R0, R0			
  rand.go:79		0x133ac0		c8dffc01		LDAR (R0), R1				
  rand.go:79		0x133ac4		f9400022		MOVD (R1), R2				
  rand.go:79		0x133ac8		d0000b9b		ADRP 1515520(PC), R27			
  rand.go:79		0x133acc		b9444b63		MOVWU 1096(R27), R3			
  rand.go:79		0x133ad0		8a020064		AND R2, R3, R4				
  rand.go:79		0x133ad4		d37cec84		LSL $4, R4, R4				
  rand.go:79		0x133ad8		91002084		ADD $8, R4, R4				
  rand.go:79		0x133adc		f8646825		MOVD (R1)(R4), R5			
  rand.go:79		0x133ae0		8b040024		ADD R4, R1, R4				
  rand.go:79		0x133ae4		b00009a6		ADRP 1265664(PC), R6			
  rand.go:79		0x133ae8		913e40c6		ADD $3984, R6, R6			
  rand.go:79		0x133aec		eb0600bf		CMP R6, R5				
  rand.go:79		0x133af0		540000c0		BEQ 6(PC)				
  rand.go:79		0x133af4		91000463		ADD $1, R3, R3				
  rand.go:79		0x133af8		b5fffec5		CBNZ R5, -10(PC)			
  rand.go:79		0x133afc		aa0603e1		MOVD R6, R1				
  rand.go:79		0x133b00		97fbccd0		CALL runtime.typeAssert(SB)		
  rand.go:79		0x133b04		14000002		JMP 2(PC)				
  rand.go:79		0x133b08		f9400480		MOVD 8(R4), R0				
  rand.go:80		0x133b0c		910303e1		ADD $192, RSP, R1			
  rand.go:80		0x133b10		a9007c3f		STP (ZR, ZR), (R1)			
  rand.go:80		0x133b14		a9017c3f		STP (ZR, ZR), 16(R1)			
  rand.go:80		0x133b18		a9027c3f		STP (ZR, ZR), 32(R1)			
  rand.go:80		0x133b1c		d0000b82		ADRP 1515520(PC), R2			
  rand.go:80		0x133b20		9110e042		ADD $1080, R2, R2			
  rand.go:80		0x133b24		f94093e3		MOVD 288(RSP), R3			
  rand.go:80		0x133b28		a90c0fe2		STP (R2, R3), 192(RSP)			
  rand.go:80		0x133b2c		a90d0fe0		STP (R0, R3), 208(RSP)			
  repro_test.go:112	0x133b30		aa1f03e0		MOVD ZR, R0				
  repro_test.go:112	0x133b34		14000004		JMP 4(PC)				
  repro_test.go:112	0x133b38		f9402be2		MOVD 80(RSP), R2			
  repro_test.go:112	0x133b3c		91000440		ADD $1, R2, R0				
  rand.go:80		0x133b40		910303e1		ADD $192, RSP, R1			
  repro_test.go:112	0x133b44		d284e202		MOVD $10000, R2				
  repro_test.go:112	0x133b48		eb02001f		CMP R2, R0				
  repro_test.go:112	0x133b4c		54000cea		BGE 103(PC)				
  repro_test.go:112	0x133b50		f9002be0		MOVD R0, 80(RSP)			
  repro_test.go:113	0x133b54		aa0103e0		MOVD R1, R0				
  repro_test.go:113	0x133b58		97fe998e		CALL math/rand.(*Rand).Uint64(SB)	
  repro_test.go:113	0x133b5c		f90027e0		MOVD R0, 72(RSP)			
  repro_test.go:113	0x133b60		910303e0		ADD $192, RSP, R0			
  repro_test.go:113	0x133b64		97fe998b		CALL math/rand.(*Rand).Uint64(SB)	
  repro_test.go:115	0x133b68		390283ff		MOVB ZR, 160(RSP)			
  repro_test.go:115	0x133b6c		a90affff		STP (ZR, ZR), 168(RSP)			
  repro_test.go:115	0x133b70		f9005fff		MOVD ZR, 184(RSP)			
  repro_test.go:115	0x133b74		390203ff		MOVB ZR, 128(RSP)			
  repro_test.go:115	0x133b78		a908ffff		STP (ZR, ZR), 136(RSP)			
  repro_test.go:115	0x133b7c		f9004fff		MOVD ZR, 152(RSP)			
  repro_test.go:114	0x133b80		f9402be1		MOVD 80(RSP), R1			
  repro_test.go:114	0x133b84		f100003f		CMP $0, R1				
  repro_test.go:115	0x133b88		92800001		MOVD $-1, R1				
  repro_test.go:115	0x133b8c		9a800023		CSEL EQ, R1, R0, R3			
  repro_test.go:115	0x133b90		f9002fe3		MOVD R3, 88(RSP)			
  int.go:72		0x133b94		aa1f03e0		MOVD ZR, R0				
  int.go:72		0x133b98		aa1f03e1		MOVD ZR, R1				
  int.go:72		0x133b9c		aa1f03e2		MOVD ZR, R2				
  int.go:72		0x133ba0		97ffe3d4		CALL math/big.nat.setUint64(SB)		
  int.go:72		0x133ba4		f9004fe2		MOVD R2, 152(RSP)			
  int.go:72		0x133ba8		a90887e0		STP (R0, R1), 136(RSP)			
  int.go:73		0x133bac		390203ff		MOVB ZR, 128(RSP)			
  repro_test.go:114	0x133bb0		f9402be3		MOVD 80(RSP), R3			
  repro_test.go:114	0x133bb4		f100007f		CMP $0, R3				
  repro_test.go:115	0x133bb8		92800003		MOVD $-1, R3				
  repro_test.go:115	0x133bbc		f94027e4		MOVD 72(RSP), R4			
  repro_test.go:115	0x133bc0		9a840063		CSEL EQ, R3, R4, R3			
  repro_test.go:115	0x133bc4		f90027e3		MOVD R3, 72(RSP)			
  int.go:1245		0x133bc8		a94a93e3		LDP 168(RSP), (R3, R4)			
  int.go:1245		0x133bcc		f9405fe5		MOVD 184(RSP), R5			
  int.go:1245		0x133bd0		b27a03e6		ORR $64, ZR, R6				
  int.go:72		0x133bd4		aa0003e7		MOVD R0, R7				
  int.go:1245		0x133bd8		aa0303e0		MOVD R3, R0				
  int.go:72		0x133bdc		aa0103e8		MOVD R1, R8				
  int.go:1245		0x133be0		aa0403e1		MOVD R4, R1				
  int.go:72		0x133be4		aa0203e9		MOVD R2, R9				
  int.go:1245		0x133be8		aa0503e2		MOVD R5, R2				
  int.go:1245		0x133bec		aa0703e3		MOVD R7, R3				
  int.go:1245		0x133bf0		aa0803e4		MOVD R8, R4				
  int.go:1245		0x133bf4		aa0903e5		MOVD R9, R5				
  int.go:1245		0x133bf8		97ffe67a		CALL math/big.nat.lsh(SB)		
  int.go:1245		0x133bfc		f9005fe2		MOVD R2, 184(RSP)			
  int.go:1245		0x133c00		a90a87e0		STP (R0, R1), 168(RSP)			
  int.go:1246		0x133c04		394203e1		MOVBU 128(RSP), R1			
  int.go:1246		0x133c08		390283e1		MOVB R1, 160(RSP)			
  repro_test.go:116	0x133c0c		390183ff		MOVB ZR, 96(RSP)			
  repro_test.go:116	0x133c10		a906ffff		STP (ZR, ZR), 104(RSP)			
  repro_test.go:116	0x133c14		f9003fff		MOVD ZR, 120(RSP)			
  int.go:72		0x133c18		aa1f03e0		MOVD ZR, R0				
  int.go:72		0x133c1c		aa1f03e1		MOVD ZR, R1				
  int.go:72		0x133c20		aa1f03e2		MOVD ZR, R2				
  int.go:72		0x133c24		f94027e3		MOVD 72(RSP), R3			
  int.go:72		0x133c28		97ffe3b2		CALL math/big.nat.setUint64(SB)		
  int.go:72		0x133c2c		f9003fe2		MOVD R2, 120(RSP)			
  int.go:72		0x133c30		a90687e0		STP (R0, R1), 104(RSP)			
  int.go:73		0x133c34		390183ff		MOVB ZR, 96(RSP)			
  repro_test.go:116	0x133c38		910283e0		ADD $160, RSP, R0			
  repro_test.go:116	0x133c3c		aa0003e1		MOVD R0, R1				
  repro_test.go:116	0x133c40		910183e2		ADD $96, RSP, R2			
  repro_test.go:116	0x133c44		97ffe2ff		CALL math/big.(*Int).Or(SB)		
  repro_test.go:116	0x133c48		910283e0		ADD $160, RSP, R0			
  repro_test.go:116	0x133c4c		aa0003e1		MOVD R0, R1				
  repro_test.go:116	0x133c50		d2800662		MOVD $51, R2				
  repro_test.go:116	0x133c54		97ffe20b		CALL math/big.(*Int).Rsh(SB)		
  repro_test.go:117	0x133c58		f94027e0		MOVD 72(RSP), R0			
  repro_test.go:117	0x133c5c		f9402fe1		MOVD 88(RSP), R1			
  repro_test.go:117	0x133c60		97fff7f8		CALL carryselect.Shift51(SB)		
  int.go:524		0x133c64		a94a8be1		LDP 168(RSP), (R1, R2)			
  repro_test.go:114	0x133c68		b5000062		CBNZ R2, 3(PC)				
  repro_test.go:117	0x133c6c		aa1f03e1		MOVD ZR, R1				
  int.go:524		0x133c70		14000002		JMP 2(PC)				
  int.go:504		0x133c74		f9400021		MOVD (R1), R1				
  repro_test.go:117	0x133c78		eb01001f		CMP R1, R0				
  repro_test.go:117	0x133c7c		54fff5e0		BEQ -81(PC)				
  repro_test.go:117	0x133c80		9103c3e1		ADD $240, RSP, R1			
  repro_test.go:117	0x133c84		a9007c3f		STP (ZR, ZR), (R1)			
  repro_test.go:117	0x133c88		a9017c3f		STP (ZR, ZR), 16(R1)			
  repro_test.go:117	0x133c8c		a9027c3f		STP (ZR, ZR), 32(R1)			
  repro_test.go:117	0x133c90		f0000a81		ADRP 1388544(PC), R1			
  repro_test.go:117	0x133c94		91302021		ADD $3080, R1, R1			
  repro_test.go:117	0x133c98		f00000c2		ADRP 110592(PC), R2			
  repro_test.go:117	0x133c9c		913c8042		ADD $3872, R2, R2			
  repro_test.go:117	0x133ca0		a90f0be1		STP (R1, R2), 240(RSP)			
  repro_test.go:117	0x133ca4		f94027e0		MOVD 72(RSP), R0			
  repro_test.go:117	0x133ca8		97fd64ae		CALL runtime.convT64(SB)		
  repro_test.go:117	0x133cac		f0000a81		ADRP 1388544(PC), R1			
  repro_test.go:117	0x133cb0		91382021		ADD $3592, R1, R1			
  repro_test.go:117	0x133cb4		a91003e1		STP (R1, R0), 256(RSP)			
  repro_test.go:117	0x133cb8		f9402fe0		MOVD 88(RSP), R0			
  repro_test.go:117	0x133cbc		97fd64a9		CALL runtime.convT64(SB)		
  repro_test.go:117	0x133cc0		f0000a81		ADRP 1388544(PC), R1			
  repro_test.go:117	0x133cc4		91382021		ADD $3592, R1, R1			
  repro_test.go:117	0x133cc8		a91103e1		STP (R1, R0), 272(RSP)			
  repro_test.go:117	0x133ccc		f9409fe0		MOVD 312(RSP), R0			
  repro_test.go:117	0x133cd0		3980001b		MOVB (R0), R27				
  repro_test.go:117	0x133cd4		9103c3e1		ADD $240, RSP, R1			
  repro_test.go:117	0x133cd8		b24007e2		ORR $3, ZR, R2				
  repro_test.go:117	0x133cdc		aa0203e3		MOVD R2, R3				
  repro_test.go:117	0x133ce0		97fec824		CALL testing.(*common).Fatal(SB)	
  repro_test.go:117	0x133ce4		17ffff95		JMP -107(PC)				
  repro_test.go:119	0x133ce8		a97ffbfd		LDP -8(RSP), (R29, R30)			
  repro_test.go:119	0x133cec		9104c3ff		ADD $304, RSP, RSP			
  repro_test.go:119	0x133cf0		d65f03c0		RET					
  repro_test.go:110	0x133cf4		f90007e0		MOVD R0, 8(RSP)				
  repro_test.go:110	0x133cf8		aa1e03e3		MOVD R30, R3				
  repro_test.go:110	0x133cfc		97fd7d5d		CALL runtime.morestack_noctxt.abi0(SB)	
  repro_test.go:110	0x133d00		f94007e0		MOVD 8(RSP), R0				
  repro_test.go:110	0x133d04		17ffff5b		JMP carryselect.TestShift51(SB)		
  repro_test.go:110	0x133d08		00000000		?					
  repro_test.go:110	0x133d0c		00000000		?					

TEXT carryselect.TestAssignOverlapAndBounds.func1(SB) /home/exedev/crypto-audit/round4/issues/carry-select/repro_test.go
  repro_test.go:46	0x133d10		f9400b90		MOVD 16(R28), R16					
  repro_test.go:46	0x133d14		d10043f1		SUB $16, RSP, R17					
  repro_test.go:46	0x133d18		eb10023f		CMP R16, R17						
  repro_test.go:46	0x133d1c		54000729		BLS 57(PC)						
  repro_test.go:46	0x133d20		f8170ffe		MOVD.W R30, -144(RSP)					
  repro_test.go:46	0x133d24		f81f83fd		MOVD R29, -8(RSP)					
  repro_test.go:46	0x133d28		d10023fd		SUB $8, RSP, R29					
  repro_test.go:46	0x133d2c		f90043ff		MOVD ZR, 128(RSP)					
  repro_test.go:49	0x133d30		a90987e0		STP (R0, R1), 152(RSP)					
  repro_test.go:46	0x133d34		39013fff		MOVB ZR, 79(RSP)					
  repro_test.go:47	0x133d38		b27c03e0		ORR $16, ZR, R0						
  repro_test.go:47	0x133d3c		b0000aa1		ADRP 1396736(PC), R1					
  repro_test.go:47	0x133d40		9102a021		ADD $168, R1, R1					
  repro_test.go:47	0x133d44		b24003e2		ORR $1, ZR, R2						
  repro_test.go:47	0x133d48		97fbe24e		CALL runtime.mallocgcSmallNoScanSC2(SB)			
  repro_test.go:47	0x133d4c		f9003fe0		MOVD R0, 120(RSP)					
  repro_test.go:47	0x133d50		b2400be3		ORR $7, ZR, R3						
  repro_test.go:47	0x133d54		b27d03e4		ORR $8, ZR, R4						
  repro_test.go:47	0x133d58		a9001003		STP (R3, R4), (R0)					
  repro_test.go:47	0x133d5c		90000003		ADRP 0(PC), R3						
  repro_test.go:47	0x133d60		91388063		ADD $3616, R3, R3					
  repro_test.go:47	0x133d64		f9404fe4		MOVD 152(RSP), R4					
  repro_test.go:47	0x133d68		a90513e3		STP (R3, R4), 80(RSP)					
  repro_test.go:47	0x133d6c		b27f03e3		ORR $2, ZR, R3						
  repro_test.go:47	0x133d70		f9003be3		MOVD R3, 112(RSP)					
  repro_test.go:47	0x133d74		a9060fe0		STP (R0, R3), 96(RSP)					
  repro_test.go:47	0x133d78		910143e3		ADD $80, RSP, R3					
  repro_test.go:47	0x133d7c		f90043e3		MOVD R3, 128(RSP)					
  repro_test.go:47	0x133d80		b24003e3		ORR $1, ZR, R3						
  repro_test.go:47	0x133d84		39013fe3		MOVB R3, 79(RSP)					
  repro_test.go:48	0x133d88		b27d03e0		ORR $8, ZR, R0						
  repro_test.go:48	0x133d8c		b0000aa1		ADRP 1396736(PC), R1					
  repro_test.go:48	0x133d90		91018021		ADD $96, R1, R1						
  repro_test.go:48	0x133d94		b24003e2		ORR $1, ZR, R2						
  repro_test.go:48	0x133d98		97fbe182		CALL runtime.mallocgcTinySC2(SB)			
  repro_test.go:48	0x133d9c		b24003e3		ORR $1, ZR, R3						
  repro_test.go:48	0x133da0		f9000003		MOVD R3, (R0)						
  repro_test.go:48	0x133da4		f94053fa		MOVD 160(RSP), R26					
  repro_test.go:48	0x133da8		f9400343		MOVD (R26), R3						
  repro_test.go:48	0x133dac		b27f03e1		ORR $2, ZR, R1						
  repro_test.go:48	0x133db0		aa0103e2		MOVD R1, R2						
  repro_test.go:48	0x133db4		b24003e4		ORR $1, ZR, R4						
  repro_test.go:48	0x133db8		aa0403e5		MOVD R4, R5						
  repro_test.go:48	0x133dbc		aa1f03e6		MOVD ZR, R6						
  repro_test.go:48	0x133dc0		aa0003e7		MOVD R0, R7						
  repro_test.go:48	0x133dc4		f9403fe0		MOVD 120(RSP), R0					
  repro_test.go:48	0x133dc8		aa0303e8		MOVD R3, R8						
  repro_test.go:48	0x133dcc		aa0703e3		MOVD R7, R3						
  repro_test.go:48	0x133dd0		d63f0100		CALL (R8)						
  repro_test.go:49	0x133dd4		39013fff		MOVB ZR, 79(RSP)					
  repro_test.go:49	0x133dd8		f94043fa		MOVD 128(RSP), R26					
  repro_test.go:49	0x133ddc		f9400343		MOVD (R26), R3						
  repro_test.go:49	0x133de0		d63f0060		CALL (R3)						
  repro_test.go:49	0x133de4		f85f83fd		MOVD -8(RSP), R29					
  repro_test.go:49	0x133de8		f84907fe		MOVD.P 144(RSP), R30					
  repro_test.go:49	0x133dec		d65f03c0		RET							
  repro_test.go:49	0x133df0		97fc8484		CALL runtime.deferreturn(SB)				
  repro_test.go:49	0x133df4		f85f83fd		MOVD -8(RSP), R29					
  repro_test.go:49	0x133df8		f84907fe		MOVD.P 144(RSP), R30					
  repro_test.go:49	0x133dfc		d65f03c0		RET							
  repro_test.go:46	0x133e00		a90087e0		STP (R0, R1), 8(RSP)					
  repro_test.go:46	0x133e04		aa1e03e3		MOVD R30, R3						
  repro_test.go:46	0x133e08		97fd7d1a		CALL runtime.morestack_noctxt.abi0(SB)			
  repro_test.go:46	0x133e0c		a94087e0		LDP 8(RSP), (R0, R1)					
  repro_test.go:46	0x133e10		17ffffc0		JMP carryselect.TestAssignOverlapAndBounds.func1(SB)	
  repro_test.go:46	0x133e14		00000000		?							
  repro_test.go:46	0x133e18		00000000		?							
  repro_test.go:46	0x133e1c		00000000		?							

TEXT carryselect.TestAssignOverlapAndBounds.func1.1(SB) /home/exedev/crypto-audit/round4/issues/carry-select/repro_test.go
  repro_test.go:47	0x133e20		f9400b90		MOVD 16(R28), R16					
  repro_test.go:47	0x133e24		eb3063ff		CMP R16, RSP						
  repro_test.go:47	0x133e28		54000629		BLS 49(PC)						
  repro_test.go:47	0x133e2c		f81a0ffe		MOVD.W R30, -96(RSP)					
  repro_test.go:47	0x133e30		f81f83fd		MOVD R29, -8(RSP)					
  repro_test.go:47	0x133e34		d10023fd		SUB $8, RSP, R29					
  repro_test.go:47	0x133e38		a9408740		LDP 8(R26), (R0, R1)					
  repro_test.go:47	0x133e3c		a90383e1		STP (R1, R0), 56(RSP)					
  repro_test.go:47	0x133e40		f9400f40		MOVD 24(R26), R0					
  repro_test.go:47	0x133e44		f9001be0		MOVD R0, 48(RSP)					
  repro_test.go:47	0x133e48		97fc86d6		CALL runtime.gorecover(SB)				
  repro_test.go:47	0x133e4c		b5000180		CBNZ R0, 12(PC)						
  repro_test.go:47	0x133e50		f0000a84		ADRP 1388544(PC), R4					
  repro_test.go:47	0x133e54		91302084		ADD $3080, R4, R4					
  repro_test.go:47	0x133e58		f00000c5		ADRP 110592(PC), R5					
  repro_test.go:47	0x133e5c		913b40a5		ADD $3792, R5, R5					
  repro_test.go:47	0x133e60		a90497e4		STP (R4, R5), 72(RSP)					
  repro_test.go:47	0x133e64		f94023e0		MOVD 64(RSP), R0					
  repro_test.go:47	0x133e68		3980001b		MOVB (R0), R27						
  repro_test.go:47	0x133e6c		910123e1		ADD $72, RSP, R1					
  repro_test.go:47	0x133e70		b24003e2		ORR $1, ZR, R2						
  repro_test.go:47	0x133e74		aa0203e3		MOVD R2, R3						
  repro_test.go:47	0x133e78		97fec74a		CALL testing.(*common).Error(SB)			
  repro_test.go:47	0x133e7c		f9401be0		MOVD 48(RSP), R0					
  repro_test.go:47	0x133e80		b4000320		CBZ R0, 25(PC)						
  repro_test.go:47	0x133e84		f9401fe4		MOVD 56(RSP), R4					
  repro_test.go:47	0x133e88		f9400085		MOVD (R4), R5						
  repro_test.go:47	0x133e8c		f1001cbf		CMP $7, R5						
  repro_test.go:47	0x133e90		540000c1		BNE 6(PC)						
  repro_test.go:47	0x133e94		f100041f		CMP $1, R0						
  repro_test.go:47	0x133e98		54000249		BLS 18(PC)						
  repro_test.go:47	0x133e9c		f9400484		MOVD 8(R4), R4						
  repro_test.go:47	0x133ea0		f100209f		CMP $8, R4						
  repro_test.go:47	0x133ea4		54000180		BEQ 12(PC)						
  repro_test.go:47	0x133ea8		f0000a84		ADRP 1388544(PC), R4					
  repro_test.go:47	0x133eac		91302084		ADD $3080, R4, R4					
  repro_test.go:47	0x133eb0		f00000c5		ADRP 110592(PC), R5					
  repro_test.go:47	0x133eb4		913b80a5		ADD $3808, R5, R5					
  repro_test.go:47	0x133eb8		a90497e4		STP (R4, R5), 72(RSP)					
  repro_test.go:47	0x133ebc		f94023e0		MOVD 64(RSP), R0					
  repro_test.go:47	0x133ec0		3980001b		MOVB (R0), R27						
  repro_test.go:47	0x133ec4		910123e1		ADD $72, RSP, R1					
  repro_test.go:47	0x133ec8		b24003e2		ORR $1, ZR, R2						
  repro_test.go:47	0x133ecc		aa0203e3		MOVD R2, R3						
  repro_test.go:47	0x133ed0		97fec734		CALL testing.(*common).Error(SB)			
  repro_test.go:47	0x133ed4		f85f83fd		MOVD -8(RSP), R29					
  repro_test.go:47	0x133ed8		f84607fe		MOVD.P 96(RSP), R30					
  repro_test.go:47	0x133edc		d65f03c0		RET							
  repro_test.go:47	0x133ee0		97fd851c		CALL runtime.panicBounds(SB)				
  repro_test.go:47	0x133ee4		97fd851b		CALL runtime.panicBounds(SB)				
  repro_test.go:47	0x133ee8		d503201f		NOOP							
  repro_test.go:47	0x133eec		aa1e03e3		MOVD R30, R3						
  repro_test.go:47	0x133ef0		97fd7cc0		CALL runtime.morestack.abi0(SB)				
  repro_test.go:47	0x133ef4		17ffffcb		JMP carryselect.TestAssignOverlapAndBounds.func1.1(SB)	
  repro_test.go:47	0x133ef8		00000000		?							
  repro_test.go:47	0x133efc		00000000		?							

TEXT carryselect.BenchmarkEq.func1(SB) /home/exedev/crypto-audit/round4/issues/carry-select/repro_test.go
  repro_test.go:78	0x133f00		f9400b90		MOVD 16(R28), R16			
  repro_test.go:78	0x133f04		eb3063ff		CMP R16, RSP				
  repro_test.go:78	0x133f08		540003e9		BLS 31(PC)				
  repro_test.go:78	0x133f0c		f81c0ffe		MOVD.W R30, -64(RSP)			
  repro_test.go:78	0x133f10		f81f83fd		MOVD R29, -8(RSP)			
  repro_test.go:78	0x133f14		d10023fd		SUB $8, RSP, R29			
  repro_test.go:78	0x133f18		f90027e0		MOVD R0, 72(RSP)			
  repro_test.go:78	0x133f1c		f9400f5a		MOVD 24(R26), R26			
  repro_test.go:78	0x133f20		f9001bfa		MOVD R26, 48(RSP)			
  repro_test.go:78	0x133f24		aa1f03e1		MOVD ZR, R1				
  repro_test.go:78	0x133f28		aa1f03e2		MOVD ZR, R2				
  repro_test.go:78	0x133f2c		1400000e		JMP 14(PC)				
  repro_test.go:78	0x133f30		a90207e2		STP (R2, R1), 32(RSP)			
  repro_test.go:78	0x133f34		f9400342		MOVD (R26), R2				
  repro_test.go:78	0x133f38		92400023		AND $1, R1, R3				
  repro_test.go:78	0x133f3c		ca030023		EOR R3, R1, R3				
  repro_test.go:78	0x133f40		aa0103e0		MOVD R1, R0				
  repro_test.go:78	0x133f44		aa0303e1		MOVD R3, R1				
  repro_test.go:78	0x133f48		d63f0040		CALL (R2)				
  repro_test.go:78	0x133f4c		f94013e2		MOVD 32(RSP), R2			
  repro_test.go:78	0x133f50		8b000042		ADD R0, R2, R2				
  repro_test.go:78	0x133f54		f94017e3		MOVD 40(RSP), R3			
  repro_test.go:78	0x133f58		91000461		ADD $1, R3, R1				
  repro_test.go:78	0x133f5c		f94027e0		MOVD 72(RSP), R0			
  repro_test.go:78	0x133f60		f9401bfa		MOVD 48(RSP), R26			
  repro_test.go:78	0x133f64		f9410803		MOVD 528(R0), R3			
  repro_test.go:78	0x133f68		eb03003f		CMP R3, R1				
  repro_test.go:78	0x133f6c		54fffe2b		BLT -15(PC)				
  repro_test.go:78	0x133f70		b0000e3b		ADRP 1855488(PC), R27			
  repro_test.go:78	0x133f74		f9008f62		MOVD R2, 280(R27)			
  repro_test.go:78	0x133f78		f85f83fd		MOVD -8(RSP), R29			
  repro_test.go:78	0x133f7c		f84407fe		MOVD.P 64(RSP), R30			
  repro_test.go:78	0x133f80		d65f03c0		RET					
  repro_test.go:78	0x133f84		f90007e0		MOVD R0, 8(RSP)				
  repro_test.go:78	0x133f88		aa1e03e3		MOVD R30, R3				
  repro_test.go:78	0x133f8c		97fd7c99		CALL runtime.morestack.abi0(SB)		
  repro_test.go:78	0x133f90		f94007e0		MOVD 8(RSP), R0				
  repro_test.go:78	0x133f94		17ffffdb		JMP carryselect.BenchmarkEq.func1(SB)	
  repro_test.go:78	0x133f98		00000000		?					
  repro_test.go:78	0x133f9c		00000000		?					

TEXT carryselect.BenchmarkAssign.func1(SB) /home/exedev/crypto-audit/round4/issues/carry-select/repro_test.go
  repro_test.go:83	0x133fa0		f9400b90		MOVD 16(R28), R16				
  repro_test.go:83	0x133fa4		eb3063ff		CMP R16, RSP					
  repro_test.go:83	0x133fa8		540006c9		BLS 54(PC)					
  repro_test.go:83	0x133fac		f8190ffe		MOVD.W R30, -112(RSP)				
  repro_test.go:83	0x133fb0		f81f83fd		MOVD R29, -8(RSP)				
  repro_test.go:83	0x133fb4		d10023fd		SUB $8, RSP, R29				
  repro_test.go:83	0x133fb8		f9003fe0		MOVD R0, 120(RSP)				
  repro_test.go:83	0x133fbc		f9400f43		MOVD 24(R26), R3				
  repro_test.go:83	0x133fc0		f90033e3		MOVD R3, 96(RSP)				
  repro_test.go:83	0x133fc4		f0000a80		ADRP 1388544(PC), R0				
  repro_test.go:83	0x133fc8		913a2000		ADD $3720, R0, R0				
  repro_test.go:83	0x133fcc		b27c03e1		ORR $16, ZR, R1					
  repro_test.go:83	0x133fd0		aa0103e2		MOVD R1, R2					
  repro_test.go:83	0x133fd4		97fd71f3		CALL runtime.makeslice(SB)			
  repro_test.go:83	0x133fd8		f9002fe0		MOVD R0, 88(RSP)				
  repro_test.go:83	0x133fdc		f0000a80		ADRP 1388544(PC), R0				
  repro_test.go:83	0x133fe0		913a2000		ADD $3720, R0, R0				
  repro_test.go:83	0x133fe4		b27c03e1		ORR $16, ZR, R1					
  repro_test.go:83	0x133fe8		aa0103e2		MOVD R1, R2					
  repro_test.go:83	0x133fec		97fd71ed		CALL runtime.makeslice(SB)			
  repro_test.go:83	0x133ff0		aa1f03e3		MOVD ZR, R3					
  repro_test.go:83	0x133ff4		14000004		JMP 4(PC)					
  repro_test.go:83	0x133ff8		aa2303e1		MVN R3, R1					
  repro_test.go:83	0x133ffc		f8237801		MOVD R1, (R0)(R3<<3)				
  repro_test.go:83	0x134000		91000463		ADD $1, R3, R3					
  repro_test.go:83	0x134004		f100407f		CMP $16, R3					
  repro_test.go:83	0x134008		54ffff8b		BLT -4(PC)					
  repro_test.go:83	0x13400c		f9002be0		MOVD R0, 80(RSP)				
  repro_test.go:83	0x134010		f9403fe0		MOVD 120(RSP), R0				
  repro_test.go:83	0x134014		97fea40b		CALL testing.(*B).ResetTimer(SB)		
  repro_test.go:83	0x134018		aa1f03e0		MOVD ZR, R0					
  repro_test.go:83	0x13401c		1400000e		JMP 14(PC)					
  repro_test.go:83	0x134020		f90027e0		MOVD R0, 72(RSP)				
  repro_test.go:83	0x134024		f94033fa		MOVD 96(RSP), R26				
  repro_test.go:83	0x134028		f9400347		MOVD (R26), R7					
  repro_test.go:83	0x13402c		92400006		AND $1, R0, R6					
  repro_test.go:83	0x134030		f9402fe0		MOVD 88(RSP), R0				
  repro_test.go:83	0x134034		b27c03e1		ORR $16, ZR, R1					
  repro_test.go:83	0x134038		aa0103e2		MOVD R1, R2					
  repro_test.go:83	0x13403c		f9402be3		MOVD 80(RSP), R3				
  repro_test.go:83	0x134040		aa0103e4		MOVD R1, R4					
  repro_test.go:83	0x134044		aa0103e5		MOVD R1, R5					
  repro_test.go:83	0x134048		d63f00e0		CALL (R7)					
  repro_test.go:83	0x13404c		f94027e7		MOVD 72(RSP), R7				
  repro_test.go:83	0x134050		910004e0		ADD $1, R7, R0					
  repro_test.go:83	0x134054		f9403fe7		MOVD 120(RSP), R7				
  repro_test.go:83	0x134058		f94108e8		MOVD 528(R7), R8				
  repro_test.go:83	0x13405c		eb08001f		CMP R8, R0					
  repro_test.go:83	0x134060		54fffe0b		BLT -16(PC)					
  repro_test.go:83	0x134064		f9402fe0		MOVD 88(RSP), R0				
  repro_test.go:83	0x134068		f9400000		MOVD (R0), R0					
  repro_test.go:83	0x13406c		90000e3b		ADRP 1851392(PC), R27				
  repro_test.go:83	0x134070		f9008f60		MOVD R0, 280(R27)				
  repro_test.go:83	0x134074		f85f83fd		MOVD -8(RSP), R29				
  repro_test.go:83	0x134078		f84707fe		MOVD.P 112(RSP), R30				
  repro_test.go:83	0x13407c		d65f03c0		RET						
  repro_test.go:83	0x134080		f90007e0		MOVD R0, 8(RSP)					
  repro_test.go:83	0x134084		aa1e03e3		MOVD R30, R3					
  repro_test.go:83	0x134088		97fd7c5a		CALL runtime.morestack.abi0(SB)			
  repro_test.go:83	0x13408c		f94007e0		MOVD 8(RSP), R0					
  repro_test.go:83	0x134090		17ffffc4		JMP carryselect.BenchmarkAssign.func1(SB)	
  repro_test.go:83	0x134094		00000000		?						
  repro_test.go:83	0x134098		00000000		?						
  repro_test.go:83	0x13409c		00000000		?						

TEXT carryselect.BenchmarkNegBorrow.func1(SB) /home/exedev/crypto-audit/round4/issues/carry-select/repro_test.go
  repro_test.go:88	0x1340a0		f9400b90		MOVD 16(R28), R16				
  repro_test.go:88	0x1340a4		eb3063ff		CMP R16, RSP					
  repro_test.go:88	0x1340a8		540003c9		BLS 30(PC)					
  repro_test.go:88	0x1340ac		f81c0ffe		MOVD.W R30, -64(RSP)				
  repro_test.go:88	0x1340b0		f81f83fd		MOVD R29, -8(RSP)				
  repro_test.go:88	0x1340b4		d10023fd		SUB $8, RSP, R29				
  repro_test.go:88	0x1340b8		f90027e0		MOVD R0, 72(RSP)				
  repro_test.go:88	0x1340bc		f9400f5a		MOVD 24(R26), R26				
  repro_test.go:88	0x1340c0		f9001bfa		MOVD R26, 48(RSP)				
  repro_test.go:88	0x1340c4		aa1f03e1		MOVD ZR, R1					
  repro_test.go:88	0x1340c8		aa1f03e2		MOVD ZR, R2					
  repro_test.go:88	0x1340cc		1400000d		JMP 13(PC)					
  repro_test.go:88	0x1340d0		a90207e2		STP (R2, R1), 32(RSP)				
  repro_test.go:88	0x1340d4		f9400342		MOVD (R26), R2					
  repro_test.go:88	0x1340d8		d2400023		EOR $1, R1, R3					
  repro_test.go:88	0x1340dc		aa0103e0		MOVD R1, R0					
  repro_test.go:88	0x1340e0		aa0303e1		MOVD R3, R1					
  repro_test.go:88	0x1340e4		d63f0040		CALL (R2)					
  repro_test.go:88	0x1340e8		f94013e2		MOVD 32(RSP), R2				
  repro_test.go:88	0x1340ec		ca000042		EOR R0, R2, R2					
  repro_test.go:88	0x1340f0		f94017e3		MOVD 40(RSP), R3				
  repro_test.go:88	0x1340f4		91000461		ADD $1, R3, R1					
  repro_test.go:88	0x1340f8		f94027e0		MOVD 72(RSP), R0				
  repro_test.go:88	0x1340fc		f9401bfa		MOVD 48(RSP), R26				
  repro_test.go:88	0x134100		f9410803		MOVD 528(R0), R3				
  repro_test.go:88	0x134104		eb03003f		CMP R3, R1					
  repro_test.go:88	0x134108		54fffe4b		BLT -14(PC)					
  repro_test.go:88	0x13410c		90000e3b		ADRP 1851392(PC), R27				
  repro_test.go:88	0x134110		f9008f62		MOVD R2, 280(R27)				
  repro_test.go:88	0x134114		f85f83fd		MOVD -8(RSP), R29				
  repro_test.go:88	0x134118		f84407fe		MOVD.P 64(RSP), R30				
  repro_test.go:88	0x13411c		d65f03c0		RET						
  repro_test.go:88	0x134120		f90007e0		MOVD R0, 8(RSP)					
  repro_test.go:88	0x134124		aa1e03e3		MOVD R30, R3					
  repro_test.go:88	0x134128		97fd7c32		CALL runtime.morestack.abi0(SB)			
  repro_test.go:88	0x13412c		f94007e0		MOVD 8(RSP), R0					
  repro_test.go:88	0x134130		17ffffdc		JMP carryselect.BenchmarkNegBorrow.func1(SB)	
  repro_test.go:88	0x134134		00000000		?						
  repro_test.go:88	0x134138		00000000		?						
  repro_test.go:88	0x13413c		00000000		?						

TEXT carryselect.BenchmarkDot.func1(SB) /home/exedev/crypto-audit/round4/issues/carry-select/repro_test.go
  repro_test.go:106	0x134140		f9400b90		MOVD 16(R28), R16			
  repro_test.go:106	0x134144		d10083f1		SUB $32, RSP, R17			
  repro_test.go:106	0x134148		eb10023f		CMP R16, R17				
  repro_test.go:106	0x13414c		54000569		BLS 43(PC)				
  repro_test.go:106	0x134150		f8160ffe		MOVD.W R30, -160(RSP)			
  repro_test.go:106	0x134154		f81f83fd		MOVD R29, -8(RSP)			
  repro_test.go:106	0x134158		d10023fd		SUB $8, RSP, R29			
  repro_test.go:106	0x13415c		f90057e0		MOVD R0, 168(RSP)			
  repro_test.go:106	0x134160		f9400f5a		MOVD 24(R26), R26			
  repro_test.go:106	0x134164		f9004bfa		MOVD R26, 144(RSP)			
  repro_test.go:106	0x134168		f00000db		ADRP 110592(PC), R27			
  repro_test.go:106	0x13416c		913f237b		ADD $4040, R27, R27			
  repro_test.go:106	0x134170		ad400760		FLDPQ (R27), (F0, F1)			
  repro_test.go:106	0x134174		9101a3fb		ADD $104, RSP, R27			
  repro_test.go:106	0x134178		ad000760		FSTPQ (F0, F1), (R27)			
  repro_test.go:106	0x13417c		d28000a1		MOVD $5, R1				
  repro_test.go:106	0x134180		f90047e1		MOVD R1, 136(RSP)			
  repro_test.go:106	0x134184		aa1f03e1		MOVD ZR, R1				
  repro_test.go:106	0x134188		14000013		JMP 19(PC)				
  repro_test.go:106	0x13418c		f90033e1		MOVD R1, 96(RSP)			
  repro_test.go:106	0x134190		9101a3fb		ADD $104, RSP, R27			
  repro_test.go:106	0x134194		ad400760		FLDPQ (R27), (F0, F1)			
  repro_test.go:106	0x134198		f9400340		MOVD (R26), R0				
  repro_test.go:106	0x13419c		f94047e1		MOVD 136(RSP), R1			
  repro_test.go:106	0x1341a0		910023fb		ADD $8, RSP, R27			
  repro_test.go:106	0x1341a4		ad000760		FSTPQ (F0, F1), (R27)			
  repro_test.go:106	0x1341a8		f90017e1		MOVD R1, 40(RSP)			
  repro_test.go:106	0x1341ac		d63f0000		CALL (R0)				
  repro_test.go:106	0x1341b0		ad4187e0		FLDPQ 48(RSP), (F0, F1)			
  repro_test.go:106	0x1341b4		f9402be0		MOVD 80(RSP), R0			
  repro_test.go:106	0x1341b8		9101a3fb		ADD $104, RSP, R27			
  repro_test.go:106	0x1341bc		ad000760		FSTPQ (F0, F1), (R27)			
  repro_test.go:106	0x1341c0		f90047e0		MOVD R0, 136(RSP)			
  repro_test.go:106	0x1341c4		f94033e0		MOVD 96(RSP), R0			
  repro_test.go:106	0x1341c8		91000401		ADD $1, R0, R1				
  repro_test.go:106	0x1341cc		f94057e0		MOVD 168(RSP), R0			
  repro_test.go:106	0x1341d0		f9404bfa		MOVD 144(RSP), R26			
  repro_test.go:106	0x1341d4		f9410802		MOVD 528(R0), R2			
  repro_test.go:106	0x1341d8		eb02003f		CMP R2, R1				
  repro_test.go:106	0x1341dc		54fffd8b		BLT -20(PC)				
  repro_test.go:106	0x1341e0		f94037e0		MOVD 104(RSP), R0			
  repro_test.go:106	0x1341e4		90000e3b		ADRP 1851392(PC), R27			
  repro_test.go:106	0x1341e8		f9008f60		MOVD R0, 280(R27)			
  repro_test.go:106	0x1341ec		f85f83fd		MOVD -8(RSP), R29			
  repro_test.go:106	0x1341f0		f84a07fe		MOVD.P 160(RSP), R30			
  repro_test.go:106	0x1341f4		d65f03c0		RET					
  repro_test.go:106	0x1341f8		f90007e0		MOVD R0, 8(RSP)				
  repro_test.go:106	0x1341fc		aa1e03e3		MOVD R30, R3				
  repro_test.go:106	0x134200		97fd7bfc		CALL runtime.morestack.abi0(SB)		
  repro_test.go:106	0x134204		f94007e0		MOVD 8(RSP), R0				
  repro_test.go:106	0x134208		17ffffce		JMP carryselect.BenchmarkDot.func1(SB)	
  repro_test.go:106	0x13420c		00000000		?					
