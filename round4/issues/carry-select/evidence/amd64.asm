TEXT carryselect.EqTwoBorrow(SB) /home/exedev/crypto-audit/round4/issues/carry-select/repro.go
  repro.go:11		0x53d520		4889c1			MOVQ AX, CX		
  repro.go:11		0x53d523		4829d8			SUBQ BX, AX		
  repro.go:11		0x53d526		0f92c2			SETB DL			
  repro.go:11		0x53d529		0fb6c2			MOVZX DL, AX		
  repro.go:12		0x53d52c		4829cb			SUBQ CX, BX		
  repro.go:12		0x53d52f		0f92c1			SETB CL			
  repro.go:12		0x53d532		0fb6c9			MOVZX CL, CX		
  repro.go:13		0x53d535		4809c8			ORQ CX, AX		
  repro.go:13		0x53d538		4883f001		XORQ $0x1, AX		
  repro.go:13		0x53d53c		c3			RET			

TEXT carryselect.EqXorBorrow(SB) /home/exedev/crypto-audit/round4/issues/carry-select/repro.go
  repro.go:18		0x53d540		4831d8			XORQ BX, AX		
  repro.go:18		0x53d543		4883e801		SUBQ $0x1, AX		
  repro.go:18		0x53d547		0f92c1			SETB CL			
  repro.go:18		0x53d54a		0fb6c1			MOVZX CL, AX		
  repro.go:19		0x53d54d		c3			RET			

TEXT carryselect.NegBorrow(SB) /home/exedev/crypto-audit/round4/issues/carry-select/repro.go
  repro.go:24		0x53d560		4829d8			SUBQ BX, AX		
  repro.go:24		0x53d563		0f92c1			SETB CL			
  repro.go:24		0x53d566		0fb6c1			MOVZX CL, AX		
  repro.go:25		0x53d569		48f7d8			NEGQ AX			
  repro.go:25		0x53d56c		c3			RET			

TEXT carryselect.NegBorrowSub(SB) /home/exedev/crypto-audit/round4/issues/carry-select/repro.go
  repro.go:31		0x53d580		4829d8			SUBQ BX, AX		
  repro.go:32		0x53d583		b800000000		MOVL $0x0, AX		
  repro.go:32		0x53d588		4883d800		SBBQ $0x0, AX		
  repro.go:33		0x53d58c		c3			RET			

TEXT carryselect.AssignMask(SB) /home/exedev/crypto-audit/round4/issues/carry-select/repro.go
  repro.go:40		0x53d5a0		55			PUSHQ BP			
  repro.go:40		0x53d5a1		4889e5			MOVQ SP, BP			
  repro.go:40		0x53d5a4		4889442410		MOVQ AX, 0x10(SP)		
  repro.go:40		0x53d5a9		48897c2428		MOVQ DI, 0x28(SP)		
  repro.go:41		0x53d5ae		4939d8			CMPQ R8, BX			
  repro.go:41		0x53d5b1		722a			JB 0x53d5dd			
  repro.go:42		0x53d5b3		4183e101		ANDL $0x1, R9			
  repro.go:42		0x53d5b7		49f7d9			NEGQ R9				
  repro.go:43		0x53d5ba		31c9			XORL CX, CX			
  repro.go:43		0x53d5bc		eb18			JMP 0x53d5d6			
  repro.go:43		0x53d5be		488b14c8		MOVQ 0(AX)(CX*8), DX		
  repro.go:43		0x53d5c2		488b34cf		MOVQ 0(DI)(CX*8), SI		
  repro.go:43		0x53d5c6		4831d6			XORQ DX, SI			
  repro.go:43		0x53d5c9		4c21ce			ANDQ R9, SI			
  repro.go:43		0x53d5cc		4831d6			XORQ DX, SI			
  repro.go:43		0x53d5cf		488934c8		MOVQ SI, 0(AX)(CX*8)		
  repro.go:43		0x53d5d3		48ffc1			INCQ CX				
  repro.go:43		0x53d5d6		4839cb			CMPQ BX, CX			
  repro.go:43		0x53d5d9		7fe3			JG 0x53d5be			
  repro.go:44		0x53d5db		5d			POPQ BP				
  repro.go:44		0x53d5dc		c3			RET				
  repro.go:41		0x53d5dd		0f1f00			NOPL 0(AX)			
  repro.go:41		0x53d5e0		e89bdcf4ff		CALL runtime.panicBounds(SB)	
  repro.go:41		0x53d5e5		90			NOPL				

TEXT carryselect.AssignSelect(SB) /home/exedev/crypto-audit/round4/issues/carry-select/repro.go
  repro.go:47		0x53d600		55			PUSHQ BP			
  repro.go:47		0x53d601		4889e5			MOVQ SP, BP			
  repro.go:47		0x53d604		4889442410		MOVQ AX, 0x10(SP)		
  repro.go:47		0x53d609		48897c2428		MOVQ DI, 0x28(SP)		
  repro.go:48		0x53d60e		4939d8			CMPQ R8, BX			
  repro.go:48		0x53d611		7225			JB 0x53d638			
  repro.go:49		0x53d613		31c9			XORL CX, CX			
  repro.go:49		0x53d615		eb1a			JMP 0x53d631			
  repro.go:49		0x53d617		488b14cf		MOVQ 0(DI)(CX*8), DX		
  repro.go:49		0x53d61b		488b34c8		MOVQ 0(AX)(CX*8), SI		
  constant_time.go:28	0x53d61f		49f7c101000000		TESTQ $0x1, R9			
  constant_time.go:28	0x53d626		480f45f2		CMOVNE DX, SI			
  repro.go:49		0x53d62a		488934c8		MOVQ SI, 0(AX)(CX*8)		
  repro.go:49		0x53d62e		48ffc1			INCQ CX				
  repro.go:49		0x53d631		4839cb			CMPQ BX, CX			
  repro.go:49		0x53d634		7fe1			JG 0x53d617			
  repro.go:50		0x53d636		5d			POPQ BP				
  repro.go:50		0x53d637		c3			RET				
  repro.go:48		0x53d638		e843dcf4ff		CALL runtime.panicBounds(SB)	
  repro.go:48		0x53d63d		90			NOPL				

TEXT carryselect.SubLoop(SB) /home/exedev/crypto-audit/round4/issues/carry-select/repro.go
  repro.go:55		0x53d640		55			PUSHQ BP			
  repro.go:55		0x53d641		4889e5			MOVQ SP, BP			
  repro.go:55		0x53d644		4889442410		MOVQ AX, 0x10(SP)		
  repro.go:55		0x53d649		48897c2428		MOVQ DI, 0x28(SP)		
  repro.go:56		0x53d64e		4939d8			CMPQ R8, BX			
  repro.go:56		0x53d651		722b			JB 0x53d67e			
  repro.go:57		0x53d653		31c9			XORL CX, CX			
  repro.go:57		0x53d655		31d2			XORL DX, DX			
  repro.go:57		0x53d657		eb1c			JMP 0x53d675			
  repro.go:57		0x53d659		488b34d0		MOVQ 0(AX)(DX*8), SI		
  repro.go:57		0x53d65d		4c8b04d7		MOVQ 0(DI)(DX*8), R8		
  repro.go:57		0x53d661		f7d9			NEGL CX				
  repro.go:57		0x53d663		4c19c6			SBBQ R8, SI			
  repro.go:57		0x53d666		488934d0		MOVQ SI, 0(AX)(DX*8)		
  repro.go:57		0x53d66a		400f92c6		SETB SI				
  repro.go:57		0x53d66e		400fb6ce		MOVZX SI, CX			
  repro.go:57		0x53d672		48ffc2			INCQ DX				
  repro.go:57		0x53d675		4839d3			CMPQ BX, DX			
  repro.go:57		0x53d678		7fdf			JG 0x53d659			
  repro.go:58		0x53d67a		89c8			MOVL CX, AX			
  repro.go:58		0x53d67c		5d			POPQ BP				
  repro.go:58		0x53d67d		c3			RET				
  repro.go:56		0x53d67e		6690			NOPW				
  repro.go:56		0x53d680		e8fbdbf4ff		CALL runtime.panicBounds(SB)	
  repro.go:56		0x53d685		90			NOPL				

TEXT carryselect.Sub4(SB) /home/exedev/crypto-audit/round4/issues/carry-select/repro.go
  repro.go:64		0x53d6a0		488b08			MOVQ 0(AX), CX		
  repro.go:64		0x53d6a3		488b13			MOVQ 0(BX), DX		
  repro.go:64		0x53d6a6		4829d1			SUBQ DX, CX		
  repro.go:64		0x53d6a9		488908			MOVQ CX, 0(AX)		
  repro.go:65		0x53d6ac		488b4808		MOVQ 0x8(AX), CX	
  repro.go:65		0x53d6b0		488b5308		MOVQ 0x8(BX), DX	
  repro.go:65		0x53d6b4		4819d1			SBBQ DX, CX		
  repro.go:65		0x53d6b7		48894808		MOVQ CX, 0x8(AX)	
  repro.go:66		0x53d6bb		488b4810		MOVQ 0x10(AX), CX	
  repro.go:66		0x53d6bf		488b5310		MOVQ 0x10(BX), DX	
  repro.go:66		0x53d6c3		4819d1			SBBQ DX, CX		
  repro.go:66		0x53d6c6		48894810		MOVQ CX, 0x10(AX)	
  repro.go:67		0x53d6ca		488b4818		MOVQ 0x18(AX), CX	
  repro.go:67		0x53d6ce		488b5318		MOVQ 0x18(BX), DX	
  repro.go:67		0x53d6d2		4819d1			SBBQ DX, CX		
  repro.go:67		0x53d6d5		48894818		MOVQ CX, 0x18(AX)	
  repro.go:67		0x53d6d9		0f92c1			SETB CL			
  repro.go:67		0x53d6dc		0fb6c1			MOVZX CL, AX		
  repro.go:67		0x53d6df		90			NOPL			
  repro.go:68		0x53d6e0		c3			RET			

TEXT carryselect.Shift51(SB) /home/exedev/crypto-audit/round4/issues/carry-select/repro.go
  repro.go:75		0x53d700		48c1e30d		SHLQ $0xd, BX		
  repro.go:75		0x53d704		48c1e833		SHRQ $0x33, AX		
  repro.go:75		0x53d708		4809d8			ORQ BX, AX		
  repro.go:75		0x53d70b		c3			RET			

TEXT carryselect.DotSchedule(SB) /home/exedev/crypto-audit/round4/issues/carry-select/schedule.go
  schedule.go:18	0x53d720		4c8d6424e8		LEAQ -0x18(SP), R12			
  schedule.go:18	0x53d725		4d3b6610		CMPQ R12, 0x10(R14)			
  schedule.go:18	0x53d729		0f86fd010000		JBE 0x53d92c				
  schedule.go:18	0x53d72f		55			PUSHQ BP				
  schedule.go:18	0x53d730		4889e5			MOVQ SP, BP				
  schedule.go:18	0x53d733		4881ec90000000		SUBQ $0x90, SP				
  schedule.go:18	0x53d73a		488d8c24c8000000	LEAQ 0xc8(SP), CX			
  schedule.go:18	0x53d742		440f1139		MOVUPS X15, 0(CX)			
  schedule.go:18	0x53d746		440f117910		MOVUPS X15, 0x10(CX)			
  schedule.go:18	0x53d74b		440f117918		MOVUPS X15, 0x18(CX)			
  schedule.go:20	0x53d750		488b8424a0000000	MOVQ 0xa0(SP), AX			
  schedule.go:21	0x53d758		488b8c24a8000000	MOVQ 0xa8(SP), CX			
  schedule.go:21	0x53d760		488b9424b8000000	MOVQ 0xb8(SP), DX			
  schedule.go:22	0x53d768		488b9c24c0000000	MOVQ 0xc0(SP), BX			
  schedule.go:23	0x53d770		488bb424b0000000	MOVQ 0xb0(SP), SI			
  schedule.go:21	0x53d778		4889d7			MOVQ DX, DI				
  schedule.go:20	0x53d77b		4989c0			MOVQ AX, R8				
  schedule.go:6		0x53d77e		48f7e0			MULQ AX					
  schedule.go:6		0x53d781		4989c1			MOVQ AX, R9				
  schedule.go:8		0x53d784		4889d8			MOVQ BX, AX				
  schedule.go:6		0x53d787		4989d2			MOVQ DX, R10				
  schedule.go:8		0x53d78a		48f7e1			MULQ CX					
  schedule.go:8		0x53d78d		4989c3			MOVQ AX, R11				
  schedule.go:8		0x53d790		4889f0			MOVQ SI, AX				
  schedule.go:8		0x53d793		4989d4			MOVQ DX, R12				
  schedule.go:8		0x53d796		48f7e7			MULQ DI					
  schedule.go:8		0x53d799		4989c5			MOVQ AX, R13				
  schedule.go:6		0x53d79c		4889c8			MOVQ CX, AX				
  schedule.go:8		0x53d79f		4989d7			MOVQ DX, R15				
  schedule.go:6		0x53d7a2		49f7e0			MULQ R8					
  schedule.go:6		0x53d7a5		4889942480000000	MOVQ DX, 0x80(SP)			
  schedule.go:6		0x53d7ad		4889442440		MOVQ AX, 0x40(SP)			
  schedule.go:8		0x53d7b2		4889f0			MOVQ SI, AX				
  schedule.go:8		0x53d7b5		48f7e3			MULQ BX					
  schedule.go:8		0x53d7b8		4889542478		MOVQ DX, 0x78(SP)			
  schedule.go:8		0x53d7bd		4889442438		MOVQ AX, 0x38(SP)			
  schedule.go:8		0x53d7c2		4889f8			MOVQ DI, AX				
  schedule.go:8		0x53d7c5		48f7e0			MULQ AX					
  schedule.go:8		0x53d7c8		4889542470		MOVQ DX, 0x70(SP)			
  schedule.go:8		0x53d7cd		4889442430		MOVQ AX, 0x30(SP)			
  schedule.go:6		0x53d7d2		4889f0			MOVQ SI, AX				
  schedule.go:6		0x53d7d5		49f7e0			MULQ R8					
  schedule.go:6		0x53d7d8		4889542468		MOVQ DX, 0x68(SP)			
  schedule.go:6		0x53d7dd		4889442428		MOVQ AX, 0x28(SP)			
  schedule.go:8		0x53d7e2		4889c8			MOVQ CX, AX				
  schedule.go:8		0x53d7e5		48f7e0			MULQ AX					
  schedule.go:8		0x53d7e8		4889542460		MOVQ DX, 0x60(SP)			
  schedule.go:8		0x53d7ed		4889442420		MOVQ AX, 0x20(SP)			
  schedule.go:8		0x53d7f2		4889d8			MOVQ BX, AX				
  schedule.go:8		0x53d7f5		48f7e7			MULQ DI					
  schedule.go:8		0x53d7f8		4889542458		MOVQ DX, 0x58(SP)			
  schedule.go:8		0x53d7fd		4889442418		MOVQ AX, 0x18(SP)			
  schedule.go:6		0x53d802		4889f8			MOVQ DI, AX				
  schedule.go:6		0x53d805		49f7e0			MULQ R8					
  schedule.go:6		0x53d808		4889542450		MOVQ DX, 0x50(SP)			
  schedule.go:6		0x53d80d		4889442410		MOVQ AX, 0x10(SP)			
  schedule.go:8		0x53d812		4889f0			MOVQ SI, AX				
  schedule.go:8		0x53d815		48f7e1			MULQ CX					
  schedule.go:8		0x53d818		4889542448		MOVQ DX, 0x48(SP)			
  schedule.go:8		0x53d81d		4889442408		MOVQ AX, 0x8(SP)			
  schedule.go:8		0x53d822		4889d8			MOVQ BX, AX				
  schedule.go:8		0x53d825		48f7e0			MULQ AX					
  schedule.go:8		0x53d828		48890424		MOVQ AX, 0(SP)				
  schedule.go:6		0x53d82c		4889d8			MOVQ BX, AX				
  schedule.go:8		0x53d82f		4889d3			MOVQ DX, BX				
  schedule.go:6		0x53d832		49f7e0			MULQ R8					
  schedule.go:6		0x53d835		4989c0			MOVQ AX, R8				
  schedule.go:8		0x53d838		4889f8			MOVQ DI, AX				
  schedule.go:6		0x53d83b		4889d7			MOVQ DX, DI				
  schedule.go:8		0x53d83e		48f7e1			MULQ CX					
  schedule.go:8		0x53d841		4889c1			MOVQ AX, CX				
  schedule.go:8		0x53d844		4889f0			MOVQ SI, AX				
  schedule.go:8		0x53d847		4889d6			MOVQ DX, SI				
  schedule.go:8		0x53d84a		48f7e0			MULQ AX					
  schedule.go:19	0x53d84d		90			NOPL					
  schedule.go:19	0x53d84e		90			NOPL					
  schedule.go:19	0x53d84f		90			NOPL					
  schedule.go:9		0x53d850		4d01cb			ADDQ R9, R11				
  schedule.go:10	0x53d853		4d11d4			ADCQ R10, R12				
  schedule.go:9		0x53d856		4d01dd			ADDQ R11, R13				
  schedule.go:10	0x53d859		4d11e7			ADCQ R12, R15				
  schedule.go:9		0x53d85c		4c8b4c2438		MOVQ 0x38(SP), R9			
  schedule.go:9		0x53d861		4c8b542440		MOVQ 0x40(SP), R10			
  schedule.go:9		0x53d866		4d01d1			ADDQ R10, R9				
  schedule.go:10	0x53d869		4c8b542478		MOVQ 0x78(SP), R10			
  schedule.go:10	0x53d86e		4c8b9c2480000000	MOVQ 0x80(SP), R11			
  schedule.go:10	0x53d876		4d11da			ADCQ R11, R10				
  schedule.go:9		0x53d879		4c8b5c2430		MOVQ 0x30(SP), R11			
  schedule.go:9		0x53d87e		4d01cb			ADDQ R9, R11				
  schedule.go:10	0x53d881		4c8b4c2470		MOVQ 0x70(SP), R9			
  schedule.go:10	0x53d886		4d11d1			ADCQ R10, R9				
  schedule.go:24	0x53d889		4d31df			XORQ R11, R15				
  schedule.go:9		0x53d88c		4c8b542420		MOVQ 0x20(SP), R10			
  schedule.go:9		0x53d891		4c8b5c2428		MOVQ 0x28(SP), R11			
  schedule.go:9		0x53d896		4d01da			ADDQ R11, R10				
  schedule.go:10	0x53d899		4c8b5c2460		MOVQ 0x60(SP), R11			
  schedule.go:10	0x53d89e		4c8b642468		MOVQ 0x68(SP), R12			
  schedule.go:10	0x53d8a3		4d11e3			ADCQ R12, R11				
  schedule.go:9		0x53d8a6		4c8b642418		MOVQ 0x18(SP), R12			
  schedule.go:9		0x53d8ab		4d01d4			ADDQ R10, R12				
  schedule.go:10	0x53d8ae		4c8b542458		MOVQ 0x58(SP), R10			
  schedule.go:10	0x53d8b3		4d11da			ADCQ R11, R10				
  schedule.go:24	0x53d8b6		4d31e1			XORQ R12, R9				
  schedule.go:24	0x53d8b9		4c898c2488000000	MOVQ R9, 0x88(SP)			
  schedule.go:9		0x53d8c1		4c8b5c2408		MOVQ 0x8(SP), R11			
  schedule.go:9		0x53d8c6		4c8b642410		MOVQ 0x10(SP), R12			
  schedule.go:9		0x53d8cb		4d01e3			ADDQ R12, R11				
  schedule.go:10	0x53d8ce		4c8b642448		MOVQ 0x48(SP), R12			
  schedule.go:10	0x53d8d3		4c8b4c2450		MOVQ 0x50(SP), R9			
  schedule.go:10	0x53d8d8		4d11cc			ADCQ R9, R12				
  schedule.go:9		0x53d8db		4c8b0c24		MOVQ 0(SP), R9				
  schedule.go:9		0x53d8df		4d01d9			ADDQ R11, R9				
  schedule.go:10	0x53d8e2		4c11e3			ADCQ R12, BX				
  schedule.go:24	0x53d8e5		4d31ca			XORQ R9, R10				
  schedule.go:9		0x53d8e8		4c01c1			ADDQ R8, CX				
  schedule.go:10	0x53d8eb		4811fe			ADCQ DI, SI				
  schedule.go:9		0x53d8ee		4801c8			ADDQ CX, AX				
  schedule.go:10	0x53d8f1		4811f2			ADCQ SI, DX				
  schedule.go:24	0x53d8f4		4c31ea			XORQ R13, DX				
  schedule.go:24	0x53d8f7		48899424c8000000	MOVQ DX, 0xc8(SP)			
  schedule.go:24	0x53d8ff		4c89bc24d0000000	MOVQ R15, 0xd0(SP)			
  schedule.go:24	0x53d907		488b8c2488000000	MOVQ 0x88(SP), CX			
  schedule.go:24	0x53d90f		48898c24d8000000	MOVQ CX, 0xd8(SP)			
  schedule.go:24	0x53d917		4c899424e0000000	MOVQ R10, 0xe0(SP)			
  schedule.go:24	0x53d91f		4831c3			XORQ AX, BX				
  schedule.go:24	0x53d922		48899c24e8000000	MOVQ BX, 0xe8(SP)			
  schedule.go:24	0x53d92a		c9			LEAVE					
  schedule.go:24	0x53d92b		c3			RET					
  schedule.go:18	0x53d92c		e80fbdf4ff		CALL runtime.morestack_noctxt.abi0(SB)	
  schedule.go:18	0x53d931		e9eafdffff		JMP carryselect.DotSchedule(SB)		

TEXT carryselect.row(SB) /home/exedev/crypto-audit/round4/issues/carry-select/schedule.go
  schedule.go:30	0x53d940		90			NOPL			
  schedule.go:6		0x53d941		4889c2			MOVQ AX, DX		
  schedule.go:6		0x53d944		4889d8			MOVQ BX, AX		
  schedule.go:6		0x53d947		48f7e2			MULQ DX			
  schedule.go:6		0x53d94a		4889c3			MOVQ AX, BX		
  schedule.go:8		0x53d94d		4889f8			MOVQ DI, AX		
  schedule.go:6		0x53d950		4889d7			MOVQ DX, DI		
  schedule.go:8		0x53d953		48f7e1			MULQ CX			
  schedule.go:8		0x53d956		4889c1			MOVQ AX, CX		
  schedule.go:8		0x53d959		4c89c0			MOVQ R8, AX		
  schedule.go:8		0x53d95c		4989d0			MOVQ DX, R8		
  schedule.go:8		0x53d95f		48f7e6			MULQ SI			
  schedule.go:9		0x53d962		4801d9			ADDQ BX, CX		
  schedule.go:10	0x53d965		4911f8			ADCQ DI, R8		
  schedule.go:9		0x53d968		4801c8			ADDQ CX, AX		
  schedule.go:10	0x53d96b		4c11c2			ADCQ R8, DX		
  schedule.go:30	0x53d96e		4889d3			MOVQ DX, BX		
  schedule.go:30	0x53d971		c3			RET			

TEXT carryselect.DotBarrier(SB) /home/exedev/crypto-audit/round4/issues/carry-select/schedule.go
  schedule.go:33	0x53d980		493b6610		CMPQ SP, 0x10(R14)			
  schedule.go:33	0x53d984		0f869c010000		JBE 0x53db26				
  schedule.go:33	0x53d98a		55			PUSHQ BP				
  schedule.go:33	0x53d98b		4889e5			MOVQ SP, BP				
  schedule.go:33	0x53d98e		4883ec70		SUBQ $0x70, SP				
  schedule.go:33	0x53d992		488d9424a8000000	LEAQ 0xa8(SP), DX			
  schedule.go:33	0x53d99a		440f113a		MOVUPS X15, 0(DX)			
  schedule.go:33	0x53d99e		440f117a10		MOVUPS X15, 0x10(DX)			
  schedule.go:33	0x53d9a3		440f117a18		MOVUPS X15, 0x18(DX)			
  schedule.go:34	0x53d9a8		488b9c2480000000	MOVQ 0x80(SP), BX			
  schedule.go:34	0x53d9b0		488b8c2488000000	MOVQ 0x88(SP), CX			
  schedule.go:34	0x53d9b8		488bbc24a0000000	MOVQ 0xa0(SP), DI			
  schedule.go:34	0x53d9c0		488bb42490000000	MOVQ 0x90(SP), SI			
  schedule.go:34	0x53d9c8		4c8b842498000000	MOVQ 0x98(SP), R8			
  schedule.go:34	0x53d9d0		4889d8			MOVQ BX, AX				
  schedule.go:34	0x53d9d3		e868ffffff		CALL carryselect.row(SB)		
  schedule.go:34	0x53d9d8		4889442468		MOVQ AX, 0x68(SP)			
  schedule.go:34	0x53d9dd		48895c2460		MOVQ BX, 0x60(SP)			
  schedule.go:35	0x53d9e2		488b842480000000	MOVQ 0x80(SP), AX			
  schedule.go:35	0x53d9ea		488b9c2488000000	MOVQ 0x88(SP), BX			
  schedule.go:35	0x53d9f2		488b8c2490000000	MOVQ 0x90(SP), CX			
  schedule.go:35	0x53d9fa		488bbc24a0000000	MOVQ 0xa0(SP), DI			
  schedule.go:35	0x53da02		4c8b842498000000	MOVQ 0x98(SP), R8			
  schedule.go:35	0x53da0a		4c89c6			MOVQ R8, SI				
  schedule.go:35	0x53da0d		e82effffff		CALL carryselect.row(SB)		
  schedule.go:35	0x53da12		4889442458		MOVQ AX, 0x58(SP)			
  schedule.go:35	0x53da17		48895c2450		MOVQ BX, 0x50(SP)			
  schedule.go:36	0x53da1c		488b842480000000	MOVQ 0x80(SP), AX			
  schedule.go:36	0x53da24		488b9c2490000000	MOVQ 0x90(SP), BX			
  schedule.go:36	0x53da2c		488bbc2488000000	MOVQ 0x88(SP), DI			
  schedule.go:36	0x53da34		488bb42498000000	MOVQ 0x98(SP), SI			
  schedule.go:36	0x53da3c		4c8b8424a0000000	MOVQ 0xa0(SP), R8			
  schedule.go:36	0x53da44		4889f9			MOVQ DI, CX				
  schedule.go:36	0x53da47		e8f4feffff		CALL carryselect.row(SB)		
  schedule.go:36	0x53da4c		4889442448		MOVQ AX, 0x48(SP)			
  schedule.go:36	0x53da51		48895c2440		MOVQ BX, 0x40(SP)			
  schedule.go:37	0x53da56		488b842480000000	MOVQ 0x80(SP), AX			
  schedule.go:37	0x53da5e		488b9c2498000000	MOVQ 0x98(SP), BX			
  schedule.go:37	0x53da66		488b8c2488000000	MOVQ 0x88(SP), CX			
  schedule.go:37	0x53da6e		488bbc2490000000	MOVQ 0x90(SP), DI			
  schedule.go:37	0x53da76		4c8b8424a0000000	MOVQ 0xa0(SP), R8			
  schedule.go:37	0x53da7e		4c89c6			MOVQ R8, SI				
  schedule.go:37	0x53da81		e8bafeffff		CALL carryselect.row(SB)		
  schedule.go:37	0x53da86		4889442438		MOVQ AX, 0x38(SP)			
  schedule.go:37	0x53da8b		48895c2430		MOVQ BX, 0x30(SP)			
  schedule.go:38	0x53da90		488b842480000000	MOVQ 0x80(SP), AX			
  schedule.go:38	0x53da98		488b9c24a0000000	MOVQ 0xa0(SP), BX			
  schedule.go:38	0x53daa0		488b8c2488000000	MOVQ 0x88(SP), CX			
  schedule.go:38	0x53daa8		488bbc2498000000	MOVQ 0x98(SP), DI			
  schedule.go:38	0x53dab0		4c8b842490000000	MOVQ 0x90(SP), R8			
  schedule.go:38	0x53dab8		4c89c6			MOVQ R8, SI				
  schedule.go:38	0x53dabb		0f1f440000		NOPL 0(AX)(AX*1)			
  schedule.go:38	0x53dac0		e87bfeffff		CALL carryselect.row(SB)		
  schedule.go:39	0x53dac5		488b542468		MOVQ 0x68(SP), DX			
  schedule.go:39	0x53daca		4831da			XORQ BX, DX				
  schedule.go:39	0x53dacd		48899424a8000000	MOVQ DX, 0xa8(SP)			
  schedule.go:39	0x53dad5		488b542460		MOVQ 0x60(SP), DX			
  schedule.go:39	0x53dada		4c8b4c2458		MOVQ 0x58(SP), R9			
  schedule.go:39	0x53dadf		4c31ca			XORQ R9, DX				
  schedule.go:39	0x53dae2		48899424b0000000	MOVQ DX, 0xb0(SP)			
  schedule.go:39	0x53daea		488b542450		MOVQ 0x50(SP), DX			
  schedule.go:39	0x53daef		4c8b4c2448		MOVQ 0x48(SP), R9			
  schedule.go:39	0x53daf4		4c31ca			XORQ R9, DX				
  schedule.go:39	0x53daf7		48899424b8000000	MOVQ DX, 0xb8(SP)			
  schedule.go:39	0x53daff		488b542440		MOVQ 0x40(SP), DX			
  schedule.go:39	0x53db04		4c8b4c2438		MOVQ 0x38(SP), R9			
  schedule.go:39	0x53db09		4c31ca			XORQ R9, DX				
  schedule.go:39	0x53db0c		48899424c0000000	MOVQ DX, 0xc0(SP)			
  schedule.go:39	0x53db14		488b542430		MOVQ 0x30(SP), DX			
  schedule.go:39	0x53db19		4831c2			XORQ AX, DX				
  schedule.go:39	0x53db1c		48899424c8000000	MOVQ DX, 0xc8(SP)			
  schedule.go:39	0x53db24		c9			LEAVE					
  schedule.go:39	0x53db25		c3			RET					
  schedule.go:33	0x53db26		e815bbf4ff		CALL runtime.morestack_noctxt.abi0(SB)	
  schedule.go:33	0x53db2b		e950feffff		JMP carryselect.DotBarrier(SB)		

TEXT carryselect.TestEqualityAndMask(SB) /home/exedev/crypto-audit/round4/issues/carry-select/repro_test.go
  repro_test.go:12	0x53db40		4c8da424d8feffff		LEAQ 0xfffffed8(SP), R12		
  repro_test.go:12	0x53db48		4d3b6610			CMPQ R12, 0x10(R14)			
  repro_test.go:12	0x53db4c		0f86ad050000			JBE 0x53e0ff				
  repro_test.go:12	0x53db52		55				PUSHQ BP				
  repro_test.go:12	0x53db53		4889e5				MOVQ SP, BP				
  repro_test.go:12	0x53db56		4881eca0010000			SUBQ $0x1a0, SP				
  rand.go:79		0x53db5d		48898424b0010000		MOVQ AX, 0x1b0(SP)			
  repro_test.go:13	0x53db65		488d8c24f0000000		LEAQ 0xf0(SP), CX			
  repro_test.go:13	0x53db6d		440f1139			MOVUPS X15, 0(CX)			
  repro_test.go:13	0x53db71		440f117910			MOVUPS X15, 0x10(CX)			
  repro_test.go:13	0x53db76		440f117920			MOVUPS X15, 0x20(CX)			
  repro_test.go:13	0x53db7b		440f117930			MOVUPS X15, 0x30(CX)			
  repro_test.go:13	0x53db80		440f117940			MOVUPS X15, 0x40(CX)			
  repro_test.go:13	0x53db85		48c78424f800000001000000	MOVQ $0x1, 0xf8(SP)			
  repro_test.go:13	0x53db91		48c784240001000002000000	MOVQ $0x2, 0x100(SP)			
  repro_test.go:13	0x53db9d		48c78424080100000f000000	MOVQ $0xf, 0x108(SP)			
  repro_test.go:13	0x53dba9		48c784241001000010000000	MOVQ $0x10, 0x110(SP)			
  repro_test.go:13	0x53dbb5		b900000080			MOVL $-0x80000000, CX			
  repro_test.go:13	0x53dbba		48898c2418010000		MOVQ CX, 0x118(SP)			
  repro_test.go:13	0x53dbc2		48b90000000001000000		MOVQ $0x100000000, CX			
  repro_test.go:13	0x53dbcc		48898c2420010000		MOVQ CX, 0x120(SP)			
  repro_test.go:13	0x53dbd4		48b90000000000000080		MOVQ $0x8000000000000000, CX		
  repro_test.go:13	0x53dbde		48898c2428010000		MOVQ CX, 0x128(SP)			
  repro_test.go:13	0x53dbe6		48c7842430010000ffffffff	MOVQ $-0x1, 0x130(SP)			
  repro_test.go:13	0x53dbf2		48c7842438010000feffffff	MOVQ $-0x2, 0x138(SP)			
  repro_test.go:14	0x53dbfe		90				NOPL					
  rand.go:52		0x53dbff		90				NOPL					
  rand.go:56		0x53dc00		488d05697f1600			LEAQ 0x167f69(IP), AX			
  rand.go:56		0x53dc07		e81404eeff			CALL runtime.newobject(SB)		
  rand.go:56		0x53dc0c		4889842498010000		MOVQ AX, 0x198(SP)			
  rand.go:57		0x53dc14		bb01000000			MOVL $0x1, BX				
  rand.go:57		0x53dc19		e82290f9ff			CALL math/rand.(*rngSource).Seed(SB)	
  repro_test.go:14	0x53dc1e		90				NOPL					
  rand.go:79		0x53dc1f		488b0dca131900			MOVQ carryselect..typeAssert.0(SB), CX	
  rand.go:79		0x53dc26		488b11				MOVQ 0(CX), DX				
  rand.go:79		0x53dc29		8b1df1801700			MOVL 0x1780f1(IP), BX			
  rand.go:79		0x53dc2f		eb03				JMP 0x53dc34				
  rand.go:79		0x53dc31		4889f3				MOVQ SI, BX				
  rand.go:79		0x53dc34		4889de				MOVQ BX, SI				
  rand.go:79		0x53dc37		4821d3				ANDQ DX, BX				
  rand.go:79		0x53dc3a		48c1e304			SHLQ $0x4, BX				
  rand.go:79		0x53dc3e		4c8b440b08			MOVQ 0x8(BX)(CX*1), R8			
  rand.go:79		0x53dc43		4c8d0d5ebc1300			LEAQ 0x13bc5e(IP), R9			
  rand.go:79		0x53dc4a		4d39c8				CMPQ R8, R9				
  rand.go:79		0x53dc4d		7419				JE 0x53dc68				
  rand.go:79		0x53dc4f		48ffc6				INCQ SI					
  rand.go:79		0x53dc52		4d85c0				TESTQ R8, R8				
  rand.go:79		0x53dc55		75da				JNE 0x53dc31				
  rand.go:79		0x53dc57		488d0592131900			LEAQ carryselect..typeAssert.0(SB), AX	
  rand.go:79		0x53dc5e		4c89cb				MOVQ R9, BX				
  rand.go:79		0x53dc61		e8facbedff			CALL runtime.typeAssert(SB)		
  rand.go:79		0x53dc66		eb05				JMP 0x53dc6d				
  rand.go:79		0x53dc68		488b440b10			MOVQ 0x10(BX)(CX*1), AX			
  rand.go:80		0x53dc6d		488d942448010000		LEAQ 0x148(SP), DX			
  rand.go:80		0x53dc75		440f113a			MOVUPS X15, 0(DX)			
  rand.go:80		0x53dc79		440f117a10			MOVUPS X15, 0x10(DX)			
  rand.go:80		0x53dc7e		440f117a20			MOVUPS X15, 0x20(DX)			
  rand.go:80		0x53dc83		488d3586801700			LEAQ 0x178086(IP), SI			
  rand.go:80		0x53dc8a		4889b42448010000		MOVQ SI, 0x148(SP)			
  rand.go:80		0x53dc92		488bb42498010000		MOVQ 0x198(SP), SI			
  rand.go:80		0x53dc9a		4889b42450010000		MOVQ SI, 0x150(SP)			
  rand.go:80		0x53dca2		4889842458010000		MOVQ AX, 0x158(SP)			
  rand.go:80		0x53dcaa		4889b42460010000		MOVQ SI, 0x160(SP)			
  rand.go:80		0x53dcb2		31c0				XORL AX, AX				
  repro_test.go:13	0x53dcb4		488d8c24f0000000		LEAQ 0xf0(SP), CX			
  repro_test.go:13	0x53dcbc		bb0a000000			MOVL $0xa, BX				
  repro_test.go:13	0x53dcc1		be0a000000			MOVL $0xa, SI				
  repro_test.go:15	0x53dcc6		eb21				JMP 0x53dce9				
  repro_test.go:15	0x53dcc8		488944daf8			MOVQ AX, -0x8(DX)(BX*8)			
  repro_test.go:15	0x53dccd		488b842490000000		MOVQ 0x90(SP), AX			
  repro_test.go:15	0x53dcd5		48ffc0				INCQ AX					
  repro_test.go:15	0x53dcd8		4889de				MOVQ BX, SI				
  repro_test.go:15	0x53dcdb		4889cb				MOVQ CX, BX				
  repro_test.go:15	0x53dcde		4889d1				MOVQ DX, CX				
  rand.go:80		0x53dce1		488d942448010000		LEAQ 0x148(SP), DX			
  repro_test.go:15	0x53dce9		483d10270000			CMPQ AX, $0x2710			
  repro_test.go:15	0x53dcef		0f8d83000000			JGE 0x53dd78				
  repro_test.go:15	0x53dcf5		4889842490000000		MOVQ AX, 0x90(SP)			
  repro_test.go:15	0x53dcfd		48898c2440010000		MOVQ CX, 0x140(SP)			
  repro_test.go:15	0x53dd05		48899c2480000000		MOVQ BX, 0x80(SP)			
  repro_test.go:15	0x53dd0d		4889742478			MOVQ SI, 0x78(SP)			
  repro_test.go:15	0x53dd12		4889d0				MOVQ DX, AX				
  repro_test.go:15	0x53dd15		e8068cf9ff			CALL math/rand.(*Rand).Uint64(SB)	
  repro_test.go:15	0x53dd1a		488b5c2478			MOVQ 0x78(SP), BX			
  repro_test.go:15	0x53dd1f		48ffc3				INCQ BX					
  repro_test.go:15	0x53dd22		488b8c2480000000		MOVQ 0x80(SP), CX			
  repro_test.go:15	0x53dd2a		4839d9				CMPQ CX, BX				
  repro_test.go:15	0x53dd2d		720a				JB 0x53dd39				
  repro_test.go:15	0x53dd2f		488b942440010000		MOVQ 0x140(SP), DX			
  repro_test.go:15	0x53dd37		eb8f				JMP 0x53dcc8				
  repro_test.go:15	0x53dd39		48898424a8000000		MOVQ AX, 0xa8(SP)			
  repro_test.go:15	0x53dd41		488b842440010000		MOVQ 0x140(SP), AX			
  repro_test.go:15	0x53dd49		bf01000000			MOVL $0x1, DI				
  repro_test.go:15	0x53dd4e		488d35539a1500			LEAQ 0x159a53(IP), SI			
  repro_test.go:15	0x53dd55		4c8d8424b0000000		LEAQ 0xb0(SP), R8			
  repro_test.go:15	0x53dd5d		41b904000000			MOVL $0x4, R9				
  repro_test.go:15	0x53dd63		e8b86af2ff			CALL runtime.growsliceBuf(SB)		
  repro_test.go:15	0x53dd68		4889c2				MOVQ AX, DX				
  repro_test.go:15	0x53dd6b		488b8424a8000000		MOVQ 0xa8(SP), AX			
  repro_test.go:15	0x53dd73		e950ffffff			JMP 0x53dcc8				
  repro_test.go:16	0x53dd78		488d9424b0010000		LEAQ 0x1b0(SP), DX			
  repro_test.go:16	0x53dd80		4829e2				SUBQ SP, DX				
  repro_test.go:16	0x53dd83		4989c8				MOVQ CX, R8				
  repro_test.go:16	0x53dd86		4829e1				SUBQ SP, CX				
  repro_test.go:16	0x53dd89		4839d1				CMPQ CX, DX				
  repro_test.go:16	0x53dd8c		731d				JAE 0x53ddab				
  repro_test.go:16	0x53dd8e		b808000000			MOVL $0x8, AX				
  repro_test.go:16	0x53dd93		4889f1				MOVQ SI, CX				
  repro_test.go:16	0x53dd96		4889df				MOVQ BX, DI				
  repro_test.go:16	0x53dd99		4c89c3				MOVQ R8, BX				
  repro_test.go:16	0x53dd9c		0f1f4000			NOPL 0(AX)				
  repro_test.go:16	0x53dda0		e83b66f2ff			CALL runtime.moveSliceNoScan(SB)	
  repro_test.go:16	0x53dda5		4889de				MOVQ BX, SI				
  repro_test.go:16	0x53dda8		4989c0				MOVQ AX, R8				
  repro_test.go:16	0x53ddab		4c89842440010000		MOVQ R8, 0x140(SP)			
  repro_test.go:16	0x53ddb3		4889742478			MOVQ SI, 0x78(SP)			
  repro_test.go:16	0x53ddb8		31c9				XORL CX, CX				
  repro_test.go:16	0x53ddba		eb15				JMP 0x53ddd1				
  repro_test.go:16	0x53ddbc		488b742478			MOVQ 0x78(SP), SI			
  repro_test.go:16	0x53ddc1		4c8b842440010000		MOVQ 0x140(SP), R8			
  repro_test.go:16	0x53ddc9		488b8c24a0000000		MOVQ 0xa0(SP), CX			
  repro_test.go:16	0x53ddd1		4839f1				CMPQ CX, SI				
  repro_test.go:16	0x53ddd4		0f8d4b020000			JGE 0x53e025				
  repro_test.go:16	0x53ddda		498b14c8			MOVQ 0(R8)(CX*8), DX			
  repro_test.go:16	0x53ddde		4889542468			MOVQ DX, 0x68(SP)			
  repro_test.go:17	0x53dde3		488dbc24d0000000		LEAQ 0xd0(SP), DI			
  repro_test.go:17	0x53ddeb		440f113f			MOVUPS X15, 0(DI)			
  repro_test.go:17	0x53ddef		440f117f10			MOVUPS X15, 0x10(DI)			
  repro_test.go:17	0x53ddf4		48899424d0000000		MOVQ DX, 0xd0(SP)			
  repro_test.go:17	0x53ddfc		48c78424e0000000ffffffff	MOVQ $-0x1, 0xe0(SP)			
  repro_test.go:17	0x53de08		488d4101			LEAQ 0x1(CX), AX			
  repro_test.go:17	0x53de0c		48898424a0000000		MOVQ AX, 0xa0(SP)			
  repro_test.go:16	0x53de14		4889d3				MOVQ DX, BX				
  repro_test.go:17	0x53de17		31d2				XORL DX, DX				
  repro_test.go:17	0x53de19		48f7f6				DIVQ SI					
  repro_test.go:17	0x53de1c		498b14d0			MOVQ 0(R8)(DX*8), DX			
  repro_test.go:17	0x53de20		48899424e8000000		MOVQ DX, 0xe8(SP)			
  repro_test.go:17	0x53de28		31c0				XORL AX, AX				
  repro_test.go:17	0x53de2a		eb14				JMP 0x53de40				
  repro_test.go:17	0x53de2c		488b842498000000		MOVQ 0x98(SP), AX			
  repro_test.go:17	0x53de34		48ffc0				INCQ AX					
  repro_test.go:19	0x53de37		4889cb				MOVQ CX, BX				
  repro_test.go:19	0x53de3a		660f1f440000			NOPW 0(AX)(AX*1)			
  repro_test.go:17	0x53de40		4883f804			CMPQ AX, $0x4				
  repro_test.go:17	0x53de44		0f8d72ffffff			JGE 0x53ddbc				
  repro_test.go:17	0x53de4a		4889842498000000		MOVQ AX, 0x98(SP)			
  repro_test.go:17	0x53de52		488b8cc4d0000000		MOVQ 0xd0(SP)(AX*8), CX			
  repro_test.go:17	0x53de5a		48894c2458			MOVQ CX, 0x58(SP)			
  repro_test.go:19	0x53de5f		4889d8				MOVQ BX, AX				
  repro_test.go:19	0x53de62		4889cb				MOVQ CX, BX				
  repro_test.go:19	0x53de65		e8b6f6ffff			CALL carryselect.EqTwoBorrow(SB)	
  repro_test.go:18	0x53de6a		488b5c2458			MOVQ 0x58(SP), BX			
  repro_test.go:18	0x53de6f		488b4c2468			MOVQ 0x68(SP), CX			
  repro_test.go:18	0x53de74		4839cb				CMPQ BX, CX				
  repro_test.go:18	0x53de77		0f94c2				SETE DL					
  repro_test.go:19	0x53de7a		0fb6d2				MOVZX DL, DX				
  repro_test.go:19	0x53de7d		0f1f00				NOPL 0(AX)				
  repro_test.go:19	0x53de80		4839d0				CMPQ AX, DX				
  repro_test.go:19	0x53de83		7407				JE 0x53de8c				
  repro_test.go:19	0x53de85		b801000000			MOVL $0x1, AX				
  repro_test.go:19	0x53de8a		eb24				JMP 0x53deb0				
  repro_test.go:19	0x53de8c		4889542470			MOVQ DX, 0x70(SP)			
  repro_test.go:19	0x53de91		4889c8				MOVQ CX, AX				
  repro_test.go:19	0x53de94		e8a7f6ffff			CALL carryselect.EqXorBorrow(SB)	
  repro_test.go:19	0x53de99		488b4c2470			MOVQ 0x70(SP), CX			
  repro_test.go:19	0x53de9e		4839c8				CMPQ AX, CX				
  repro_test.go:19	0x53dea1		0f95c1				SETNE CL				
  repro_test.go:21	0x53dea4		488b5c2458			MOVQ 0x58(SP), BX			
  repro_test.go:19	0x53dea9		89c8				MOVL CX, AX				
  repro_test.go:21	0x53deab		488b4c2468			MOVQ 0x68(SP), CX			
  repro_test.go:19	0x53deb0		84c0				TESTL AL, AL				
  repro_test.go:19	0x53deb2		0f8486000000			JE 0x53df3e				
  repro_test.go:19	0x53deb8		488d942478010000		LEAQ 0x178(SP), DX			
  repro_test.go:19	0x53dec0		440f113a			MOVUPS X15, 0(DX)			
  repro_test.go:19	0x53dec4		440f117a10			MOVUPS X15, 0x10(DX)			
  repro_test.go:19	0x53dec9		4889c8				MOVQ CX, AX				
  repro_test.go:19	0x53decc		e88f4ff4ff			CALL runtime.convT64(SB)		
  repro_test.go:19	0x53ded1		488d0dd0981500			LEAQ 0x1598d0(IP), CX			
  repro_test.go:19	0x53ded8		48898c2478010000		MOVQ CX, 0x178(SP)			
  repro_test.go:19	0x53dee0		4889842480010000		MOVQ AX, 0x180(SP)			
  repro_test.go:19	0x53dee8		488b442458			MOVQ 0x58(SP), AX			
  repro_test.go:19	0x53deed		e86e4ff4ff			CALL runtime.convT64(SB)		
  repro_test.go:19	0x53def2		488d0daf981500			LEAQ 0x1598af(IP), CX			
  repro_test.go:19	0x53def9		48898c2488010000		MOVQ CX, 0x188(SP)			
  repro_test.go:19	0x53df01		4889842490010000		MOVQ AX, 0x190(SP)			
  repro_test.go:19	0x53df09		488b8424b0010000		MOVQ 0x1b0(SP), AX			
  repro_test.go:19	0x53df11		8400				TESTB AL, 0(AX)				
  repro_test.go:19	0x53df13		488d1d0a5d0000			LEAQ 0x5d0a(IP), BX			
  repro_test.go:19	0x53df1a		b908000000			MOVL $0x8, CX				
  repro_test.go:19	0x53df1f		488dbc2478010000		LEAQ 0x178(SP), DI			
  repro_test.go:19	0x53df27		be02000000			MOVL $0x2, SI				
  repro_test.go:19	0x53df2c		4189f0				MOVL SI, R8				
  repro_test.go:19	0x53df2f		e80c64faff			CALL testing.(*common).Fatalf(SB)	
  repro_test.go:21	0x53df34		488b4c2468			MOVQ 0x68(SP), CX			
  repro_test.go:21	0x53df39		488b5c2458			MOVQ 0x58(SP), BX			
  repro_test.go:21	0x53df3e		4889c8				MOVQ CX, AX				
  repro_test.go:21	0x53df41		e81af6ffff			CALL carryselect.NegBorrow(SB)		
  repro_test.go:18	0x53df46		488b5c2458			MOVQ 0x58(SP), BX			
  repro_test.go:18	0x53df4b		488b4c2468			MOVQ 0x68(SP), CX			
  repro_test.go:18	0x53df50		4839cb				CMPQ BX, CX				
  repro_test.go:21	0x53df53		ba00000000			MOVL $0x0, DX				
  repro_test.go:21	0x53df58		48c7c6ffffffff			MOVQ $-0x1, SI				
  repro_test.go:21	0x53df5f		480f47d6			CMOVA SI, DX				
  repro_test.go:21	0x53df63		4839d0				CMPQ AX, DX				
  repro_test.go:20	0x53df66		7407				JE 0x53df6f				
  repro_test.go:20	0x53df68		b801000000			MOVL $0x1, AX				
  repro_test.go:20	0x53df6d		eb25				JMP 0x53df94				
  repro_test.go:21	0x53df6f		4889942488000000		MOVQ DX, 0x88(SP)			
  repro_test.go:21	0x53df77		4889c8				MOVQ CX, AX				
  repro_test.go:21	0x53df7a		e801f6ffff			CALL carryselect.NegBorrowSub(SB)	
  repro_test.go:21	0x53df7f		488b8c2488000000		MOVQ 0x88(SP), CX			
  repro_test.go:21	0x53df87		4839c8				CMPQ AX, CX				
  repro_test.go:21	0x53df8a		0f95c1				SETNE CL				
  repro_test.go:21	0x53df8d		89c8				MOVL CX, AX				
  repro_test.go:19	0x53df8f		488b4c2468			MOVQ 0x68(SP), CX			
  repro_test.go:21	0x53df94		84c0				TESTL AL, AL				
  repro_test.go:21	0x53df96		0f8490feffff			JE 0x53de2c				
  repro_test.go:21	0x53df9c		488d942478010000		LEAQ 0x178(SP), DX			
  repro_test.go:21	0x53dfa4		440f113a			MOVUPS X15, 0(DX)			
  repro_test.go:21	0x53dfa8		440f117a10			MOVUPS X15, 0x10(DX)			
  repro_test.go:21	0x53dfad		4889c8				MOVQ CX, AX				
  repro_test.go:21	0x53dfb0		e8ab4ef4ff			CALL runtime.convT64(SB)		
  repro_test.go:21	0x53dfb5		488d0dec971500			LEAQ 0x1597ec(IP), CX			
  repro_test.go:21	0x53dfbc		48898c2478010000		MOVQ CX, 0x178(SP)			
  repro_test.go:21	0x53dfc4		4889842480010000		MOVQ AX, 0x180(SP)			
  repro_test.go:21	0x53dfcc		488b442458			MOVQ 0x58(SP), AX			
  repro_test.go:21	0x53dfd1		e88a4ef4ff			CALL runtime.convT64(SB)		
  repro_test.go:21	0x53dfd6		488d0dcb971500			LEAQ 0x1597cb(IP), CX			
  repro_test.go:21	0x53dfdd		48898c2488010000		MOVQ CX, 0x188(SP)			
  repro_test.go:21	0x53dfe5		4889842490010000		MOVQ AX, 0x190(SP)			
  repro_test.go:21	0x53dfed		488b8424b0010000		MOVQ 0x1b0(SP), AX			
  repro_test.go:21	0x53dff5		8400				TESTB AL, 0(AX)				
  repro_test.go:21	0x53dff7		488d1dc4650000			LEAQ 0x65c4(IP), BX			
  repro_test.go:21	0x53dffe		b90a000000			MOVL $0xa, CX				
  repro_test.go:21	0x53e003		488dbc2478010000		LEAQ 0x178(SP), DI			
  repro_test.go:21	0x53e00b		be02000000			MOVL $0x2, SI				
  repro_test.go:21	0x53e010		4189f0				MOVL SI, R8				
  repro_test.go:21	0x53e013		e82863faff			CALL testing.(*common).Fatalf(SB)	
  repro_test.go:19	0x53e018		488b4c2468			MOVQ 0x68(SP), CX			
  repro_test.go:19	0x53e01d		0f1f00				NOPL 0(AX)				
  repro_test.go:21	0x53e020		e907feffff			JMP 0x53de2c				
  repro_test.go:16	0x53e025		31c9				XORL CX, CX				
  repro_test.go:16	0x53e027		eb03				JMP 0x53e02c				
  repro_test.go:25	0x53e029		48ffc1				INCQ CX					
  repro_test.go:25	0x53e02c		4881f900010000			CMPQ CX, $0x100				
  repro_test.go:25	0x53e033		0f83c4000000			JAE 0x53e0fd				
  repro_test.go:25	0x53e039		48894c2460			MOVQ CX, 0x60(SP)			
  repro_test.go:25	0x53e03e		31c0				XORL AX, AX				
  repro_test.go:25	0x53e040		eb07				JMP 0x53e049				
  repro_test.go:25	0x53e042		488d4101			LEAQ 0x1(CX), AX			
  repro_test.go:26	0x53e046		4889d1				MOVQ DX, CX				
  repro_test.go:25	0x53e049		483d00010000			CMPQ AX, $0x100				
  repro_test.go:25	0x53e04f		73d8				JAE 0x53e029				
  repro_test.go:25	0x53e051		4889442450			MOVQ AX, 0x50(SP)			
  repro_test.go:26	0x53e056		4889c3				MOVQ AX, BX				
  repro_test.go:26	0x53e059		4889c8				MOVQ CX, AX				
  repro_test.go:26	0x53e05c		0f1f4000			NOPL 0(AX)				
  repro_test.go:26	0x53e060		e8dbf4ffff			CALL carryselect.EqXorBorrow(SB)	
  repro_test.go:26	0x53e065		488b4c2450			MOVQ 0x50(SP), CX			
  repro_test.go:26	0x53e06a		488b542460			MOVQ 0x60(SP), DX			
  repro_test.go:26	0x53e06f		4839d1				CMPQ CX, DX				
  repro_test.go:26	0x53e072		400f94c6			SETE SI					
  repro_test.go:26	0x53e076		400fb6f6			MOVZX SI, SI				
  repro_test.go:26	0x53e07a		4839f0				CMPQ AX, SI				
  repro_test.go:26	0x53e07d		74c3				JE 0x53e042				
  repro_test.go:26	0x53e07f		488d8c2478010000		LEAQ 0x178(SP), CX			
  repro_test.go:26	0x53e087		440f1139			MOVUPS X15, 0(CX)			
  repro_test.go:26	0x53e08b		440f117910			MOVUPS X15, 0x10(CX)			
  repro_test.go:26	0x53e090		4889d0				MOVQ DX, AX				
  repro_test.go:26	0x53e093		e8c84df4ff			CALL runtime.convT64(SB)		
  repro_test.go:26	0x53e098		488d0d89971500			LEAQ 0x159789(IP), CX			
  repro_test.go:26	0x53e09f		48898c2478010000		MOVQ CX, 0x178(SP)			
  repro_test.go:26	0x53e0a7		4889842480010000		MOVQ AX, 0x180(SP)			
  repro_test.go:26	0x53e0af		488b442450			MOVQ 0x50(SP), AX			
  repro_test.go:26	0x53e0b4		e8a74df4ff			CALL runtime.convT64(SB)		
  repro_test.go:26	0x53e0b9		488d0d68971500			LEAQ 0x159768(IP), CX			
  repro_test.go:26	0x53e0c0		48898c2488010000		MOVQ CX, 0x188(SP)			
  repro_test.go:26	0x53e0c8		4889842490010000		MOVQ AX, 0x190(SP)			
  repro_test.go:26	0x53e0d0		488b8424b0010000		MOVQ 0x1b0(SP), AX			
  repro_test.go:26	0x53e0d8		8400				TESTB AL, 0(AX)				
  repro_test.go:26	0x53e0da		488d9c2478010000		LEAQ 0x178(SP), BX			
  repro_test.go:26	0x53e0e2		b902000000			MOVL $0x2, CX				
  repro_test.go:26	0x53e0e7		89cf				MOVL CX, DI				
  repro_test.go:26	0x53e0e9		e85261faff			CALL testing.(*common).Fatal(SB)	
  repro_test.go:25	0x53e0ee		488b4c2450			MOVQ 0x50(SP), CX			
  repro_test.go:26	0x53e0f3		488b542460			MOVQ 0x60(SP), DX			
  repro_test.go:26	0x53e0f8		e945ffffff			JMP 0x53e042				
  repro_test.go:28	0x53e0fd		c9				LEAVE					
  repro_test.go:28	0x53e0fe		c3				RET					
  repro_test.go:12	0x53e0ff		4889442408			MOVQ AX, 0x8(SP)			
  repro_test.go:12	0x53e104		e837b5f4ff			CALL runtime.morestack_noctxt.abi0(SB)	
  repro_test.go:12	0x53e109		488b442408			MOVQ 0x8(SP), AX			
  repro_test.go:12	0x53e10e		e92dfaffff			JMP carryselect.TestEqualityAndMask(SB)	

TEXT carryselect.TestAssignOverlapAndBounds(SB) /home/exedev/crypto-audit/round4/issues/carry-select/repro_test.go
  repro_test.go:30	0x53e120		4c8da42410ffffff		LEAQ 0xffffff10(SP), R12				
  repro_test.go:30	0x53e128		4d3b6610			CMPQ R12, 0x10(R14)					
  repro_test.go:30	0x53e12c		0f8601050000			JBE 0x53e633						
  repro_test.go:30	0x53e132		55				PUSHQ BP						
  repro_test.go:30	0x53e133		4889e5				MOVQ SP, BP						
  repro_test.go:30	0x53e136		4881ec68010000			SUBQ $0x168, SP						
  repro_test.go:32	0x53e13d		4889842478010000		MOVQ AX, 0x178(SP)					
  repro_test.go:31	0x53e145		488d153c871700			LEAQ 0x17873c(IP), DX					
  repro_test.go:31	0x53e14c		4889942408010000		MOVQ DX, 0x108(SP)					
  repro_test.go:31	0x53e154		488d1535871700			LEAQ 0x178735(IP), DX					
  repro_test.go:31	0x53e15b		4889942410010000		MOVQ DX, 0x110(SP)					
  repro_test.go:31	0x53e163		31c9				XORL CX, CX						
  repro_test.go:32	0x53e165		eb1d				JMP 0x53e184						
  repro_test.go:49	0x53e167		488b842478010000		MOVQ 0x178(SP), AX					
  repro_test.go:49	0x53e16f		488b9c24e8000000		MOVQ 0xe8(SP), BX					
  repro_test.go:49	0x53e177		e884200000			CALL carryselect.TestAssignOverlapAndBounds.func1(SB)	
  repro_test.go:32	0x53e17c		488b4c2470			MOVQ 0x70(SP), CX					
  repro_test.go:32	0x53e181		48ffc1				INCQ CX							
  repro_test.go:32	0x53e184		4883f902			CMPQ CX, $0x2						
  repro_test.go:32	0x53e188		0f8d61040000			JGE 0x53e5ef						
  repro_test.go:32	0x53e18e		48894c2470			MOVQ CX, 0x70(SP)					
  repro_test.go:32	0x53e193		488b94cc08010000		MOVQ 0x108(SP)(CX*8), DX				
  repro_test.go:32	0x53e19b		48899424e8000000		MOVQ DX, 0xe8(SP)					
  repro_test.go:32	0x53e1a3		488db424b8000000		LEAQ 0xb8(SP), SI					
  repro_test.go:32	0x53e1ab		440f113e			MOVUPS X15, 0(SI)					
  repro_test.go:32	0x53e1af		440f117e10			MOVUPS X15, 0x10(SI)					
  repro_test.go:32	0x53e1b4		440f117e18			MOVUPS X15, 0x18(SI)					
  repro_test.go:32	0x53e1b9		48c78424c000000001000000	MOVQ $0x1, 0xc0(SP)					
  repro_test.go:32	0x53e1c5		48c78424c800000002000000	MOVQ $0x2, 0xc8(SP)					
  repro_test.go:32	0x53e1d1		48c78424d000000003000000	MOVQ $0x3, 0xd0(SP)					
  repro_test.go:32	0x53e1dd		48c78424d8000000ffffffff	MOVQ $-0x1, 0xd8(SP)					
  repro_test.go:32	0x53e1e9		31f6				XORL SI, SI						
  repro_test.go:32	0x53e1eb		eb03				JMP 0x53e1f0						
  repro_test.go:32	0x53e1ed		48ffc6				INCQ SI							
  repro_test.go:32	0x53e1f0		4883fe05			CMPQ SI, $0x5						
  repro_test.go:32	0x53e1f4		0f8d1b030000			JGE 0x53e515						
  repro_test.go:32	0x53e1fa		4889742468			MOVQ SI, 0x68(SP)					
  repro_test.go:32	0x53e1ff		488bbcf4b8000000		MOVQ 0xb8(SP)(SI*8), DI					
  repro_test.go:32	0x53e207		48897c2438			MOVQ DI, 0x38(SP)					
  repro_test.go:32	0x53e20c		4531c0				XORL R8, R8						
  repro_test.go:32	0x53e20f		eb0f				JMP 0x53e220						
  repro_test.go:32	0x53e211		4c8b442450			MOVQ 0x50(SP), R8					
  repro_test.go:32	0x53e216		49ffc0				INCQ R8							
  repro_test.go:32	0x53e219		488b742468			MOVQ 0x68(SP), SI					
  repro_test.go:32	0x53e21e		6690				NOPW							
  repro_test.go:32	0x53e220		4983f821			CMPQ R8, $0x21						
  repro_test.go:32	0x53e224		7fc7				JG 0x53e1ed						
  repro_test.go:32	0x53e226		4c89442450			MOVQ R8, 0x50(SP)					
  repro_test.go:35	0x53e22b		4c8d4c2478			LEAQ 0x78(SP), R9					
  repro_test.go:35	0x53e230		450f1139			MOVUPS X15, 0(R9)					
  repro_test.go:35	0x53e234		450f117910			MOVUPS X15, 0x10(R9)					
  repro_test.go:35	0x53e239		450f117920			MOVUPS X15, 0x20(R9)					
  repro_test.go:35	0x53e23e		450f117930			MOVUPS X15, 0x30(R9)					
  repro_test.go:35	0x53e243		48c784248000000028000000	MOVQ $0x28, 0x80(SP)					
  repro_test.go:35	0x53e24f		48c78424a000000001000000	MOVQ $0x1, 0xa0(SP)					
  repro_test.go:35	0x53e25b		48c78424a800000001000000	MOVQ $0x1, 0xa8(SP)					
  repro_test.go:35	0x53e267		31c0				XORL AX, AX						
  repro_test.go:35	0x53e269		eb15				JMP 0x53e280						
  repro_test.go:35	0x53e26b		4c8b8c24f8000000		MOVQ 0xf8(SP), R9					
  repro_test.go:35	0x53e273		4983c110			ADDQ $0x10, R9						
  repro_test.go:35	0x53e277		488b442460			MOVQ 0x60(SP), AX					
  repro_test.go:35	0x53e27c		48ffc0				INCQ AX							
  repro_test.go:35	0x53e27f		90				NOPL							
  repro_test.go:35	0x53e280		4883f804			CMPQ AX, $0x4						
  repro_test.go:35	0x53e284		7d8b				JGE 0x53e211						
  repro_test.go:35	0x53e286		4889442460			MOVQ AX, 0x60(SP)					
  repro_test.go:35	0x53e28b		4c898c24f8000000		MOVQ R9, 0xf8(SP)					
  repro_test.go:35	0x53e293		410f1001			MOVUPS 0(R9), X0					
  repro_test.go:35	0x53e297		0f11442440			MOVUPS X0, 0x40(SP)					
  repro_test.go:36	0x53e29c		488d0585951500			LEAQ 0x159585(IP), AX					
  repro_test.go:36	0x53e2a3		bb50000000			MOVL $0x50, BX						
  repro_test.go:36	0x53e2a8		89d9				MOVL BX, CX						
  repro_test.go:36	0x53e2aa		e8f182f4ff			CALL runtime.makeslice(SB)				
  repro_test.go:36	0x53e2af		31d2				XORL DX, DX						
  repro_test.go:36	0x53e2b1		eb11				JMP 0x53e2c4						
  repro_test.go:36	0x53e2b3		4c69c2ef1e0000			IMULQ $0x1eef, DX, R8					
  repro_test.go:36	0x53e2ba		49f7d0				NOTQ R8							
  repro_test.go:36	0x53e2bd		4c8904d0			MOVQ R8, 0(AX)(DX*8)					
  repro_test.go:36	0x53e2c1		48ffc2				INCQ DX							
  repro_test.go:36	0x53e2c4		4883fa50			CMPQ DX, $0x50						
  repro_test.go:36	0x53e2c8		7ce9				JL 0x53e2b3						
  repro_test.go:36	0x53e2ca		48898424f0000000		MOVQ AX, 0xf0(SP)					
  repro_test.go:37	0x53e2d2		31c0				XORL AX, AX						
  repro_test.go:37	0x53e2d4		bb50000000			MOVL $0x50, BX						
  repro_test.go:37	0x53e2d9		31c9				XORL CX, CX						
  repro_test.go:37	0x53e2db		89df				MOVL BX, DI						
  repro_test.go:37	0x53e2dd		488d3544951500			LEAQ 0x159544(IP), SI					
  repro_test.go:37	0x53e2e4		e89783f4ff			CALL runtime.growslice(SB)				
  repro_test.go:37	0x53e2e9		48898424e0000000		MOVQ AX, 0xe0(SP)					
  repro_test.go:37	0x53e2f1		488b9c24f0000000		MOVQ 0xf0(SP), BX					
  repro_test.go:37	0x53e2f9		b980020000			MOVL $0x280, CX						
  repro_test.go:37	0x53e2fe		6690				NOPW							
  repro_test.go:37	0x53e300		e81bd3f4ff			CALL runtime.memmove(SB)				
  repro_test.go:38	0x53e305		488b4c2440			MOVQ 0x40(SP), CX					
  repro_test.go:38	0x53e30a		4c8b442448			MOVQ 0x48(SP), R8					
  repro_test.go:39	0x53e30f		31d2				XORL DX, DX						
  repro_test.go:39	0x53e311		4c8b4c2450			MOVQ 0x50(SP), R9					
  repro_test.go:39	0x53e316		4c8b542438			MOVQ 0x38(SP), R10					
  repro_test.go:39	0x53e31b		4c8b9c24e0000000		MOVQ 0xe0(SP), R11					
  repro_test.go:39	0x53e323		eb03				JMP 0x53e328						
  repro_test.go:39	0x53e325		48ffc2				INCQ DX							
  repro_test.go:39	0x53e328		4c39ca				CMPQ DX, R9						
  repro_test.go:39	0x53e32b		7d31				JGE 0x53e35e						
  repro_test.go:39	0x53e32d		410fbae200			BTL $0x0, R10						
  repro_test.go:39	0x53e332		73f1				JAE 0x53e325						
  repro_test.go:39	0x53e334		4e8d2402			LEAQ 0(DX)(R8*1), R12					
  repro_test.go:39	0x53e338		4c8d2c0a			LEAQ 0(DX)(CX*1), R13					
  repro_test.go:39	0x53e33c		0f1f4000			NOPL 0(AX)						
  repro_test.go:39	0x53e340		4983fc50			CMPQ R12, $0x50						
  repro_test.go:39	0x53e344		0f83de020000			JAE 0x53e628						
  repro_test.go:39	0x53e34a		4f8b24e3			MOVQ 0(R11)(R12*8), R12					
  repro_test.go:39	0x53e34e		4983fd50			CMPQ R13, $0x50						
  repro_test.go:39	0x53e352		0f83c6020000			JAE 0x53e61e						
  repro_test.go:39	0x53e358		4f8924eb			MOVQ R12, 0(R11)(R13*8)					
  repro_test.go:39	0x53e35c		ebc7				JMP 0x53e325						
  repro_test.go:40	0x53e35e		4e8d2409			LEAQ 0(CX)(R9*1), R12					
  repro_test.go:40	0x53e362		4983fc50			CMPQ R12, $0x50						
  repro_test.go:40	0x53e366		0f87a8020000			JA 0x53e614						
  repro_test.go:40	0x53e36c		4c39e1				CMPQ CX, R12						
  repro_test.go:40	0x53e36f		0f879a020000			JA 0x53e60f						
  repro_test.go:40	0x53e375		4c8d61b0			LEAQ -0x50(CX), R12					
  repro_test.go:40	0x53e379		48c1e103			SHLQ $0x3, CX						
  repro_test.go:40	0x53e37d		4d89e5				MOVQ R12, R13						
  repro_test.go:40	0x53e380		49c1fc3f			SARQ $0x3f, R12						
  repro_test.go:40	0x53e384		4921cc				ANDQ CX, R12						
  repro_test.go:40	0x53e387		4f8d3c08			LEAQ 0(R8)(R9*1), R15					
  repro_test.go:40	0x53e38b		4c8b9c24f0000000		MOVQ 0xf0(SP), R11					
  repro_test.go:40	0x53e393		4d01dc				ADDQ R11, R12						
  repro_test.go:40	0x53e396		660f1f840000000000		NOPW 0(AX)(AX*1)					
  repro_test.go:40	0x53e39f		90				NOPL							
  repro_test.go:40	0x53e3a0		4983ff50			CMPQ R15, $0x50						
  repro_test.go:40	0x53e3a4		0f875b020000			JA 0x53e605						
  repro_test.go:40	0x53e3aa		4d39f8				CMPQ R8, R15						
  repro_test.go:40	0x53e3ad		0f8748020000			JA 0x53e5fb						
  repro_test.go:40	0x53e3b3		488b9424e8000000		MOVQ 0xe8(SP), DX					
  repro_test.go:40	0x53e3bb		4c8b3a				MOVQ 0(DX), R15						
  repro_test.go:40	0x53e3be		49f7dd				NEGQ R13						
  repro_test.go:40	0x53e3c1		498d40b0			LEAQ -0x50(R8), AX					
  repro_test.go:40	0x53e3c5		4889c1				MOVQ AX, CX						
  repro_test.go:40	0x53e3c8		48f7d8				NEGQ AX							
  repro_test.go:40	0x53e3cb		49c1e003			SHLQ $0x3, R8						
  repro_test.go:40	0x53e3cf		48c1f93f			SARQ $0x3f, CX						
  repro_test.go:40	0x53e3d3		4c21c1				ANDQ R8, CX						
  repro_test.go:40	0x53e3d6		4a8d3c19			LEAQ 0(CX)(R11*1), DI					
  repro_test.go:40	0x53e3da		4c89cb				MOVQ R9, BX						
  repro_test.go:40	0x53e3dd		4c89e9				MOVQ R13, CX						
  repro_test.go:40	0x53e3e0		4889de				MOVQ BX, SI						
  repro_test.go:40	0x53e3e3		4989c0				MOVQ AX, R8						
  repro_test.go:40	0x53e3e6		4d89d1				MOVQ R10, R9						
  repro_test.go:40	0x53e3e9		4c89e0				MOVQ R12, AX						
  repro_test.go:40	0x53e3ec		41ffd7				CALL R15						
  repro_test.go:41	0x53e3ef		4531d2				XORL R10, R10						
  repro_test.go:41	0x53e3f2		4c8b9c24f0000000		MOVQ 0xf0(SP), R11					
  repro_test.go:41	0x53e3fa		4c8ba424e0000000		MOVQ 0xe0(SP), R12					
  repro_test.go:41	0x53e402		eb03				JMP 0x53e407						
  repro_test.go:41	0x53e404		49ffc2				INCQ R10						
  repro_test.go:41	0x53e407		4983fa50			CMPQ R10, $0x50						
  repro_test.go:41	0x53e40b		0f8d5afeffff			JGE 0x53e26b						
  repro_test.go:41	0x53e411		4b8b14d3			MOVQ 0(R11)(R10*8), DX					
  repro_test.go:41	0x53e415		0f83d6010000			JAE 0x53e5f1						
  repro_test.go:41	0x53e41b		4b8b34d4			MOVQ 0(R12)(R10*8), SI					
  repro_test.go:41	0x53e41f		90				NOPL							
  repro_test.go:41	0x53e420		4839d6				CMPQ SI, DX						
  repro_test.go:41	0x53e423		74df				JE 0x53e404						
  repro_test.go:41	0x53e425		4c89542458			MOVQ R10, 0x58(SP)					
  repro_test.go:41	0x53e42a		488d8c2428010000		LEAQ 0x128(SP), CX					
  repro_test.go:41	0x53e432		440f1139			MOVUPS X15, 0(CX)					
  repro_test.go:41	0x53e436		440f117910			MOVUPS X15, 0x10(CX)					
  repro_test.go:41	0x53e43b		440f117920			MOVUPS X15, 0x20(CX)					
  repro_test.go:41	0x53e440		440f117930			MOVUPS X15, 0x30(CX)					
  repro_test.go:41	0x53e445		488b442438			MOVQ 0x38(SP), AX					
  repro_test.go:41	0x53e44a		e8114af4ff			CALL runtime.convT64(SB)				
  repro_test.go:41	0x53e44f		488d0dd2931500			LEAQ 0x1593d2(IP), CX					
  repro_test.go:41	0x53e456		48898c2428010000		MOVQ CX, 0x128(SP)					
  repro_test.go:41	0x53e45e		4889842430010000		MOVQ AX, 0x130(SP)					
  repro_test.go:41	0x53e466		488b442450			MOVQ 0x50(SP), AX					
  repro_test.go:41	0x53e46b		e8f049f4ff			CALL runtime.convT64(SB)				
  repro_test.go:41	0x53e470		488d0d71931500			LEAQ 0x159371(IP), CX					
  repro_test.go:41	0x53e477		48898c2438010000		MOVQ CX, 0x138(SP)					
  repro_test.go:41	0x53e47f		4889842440010000		MOVQ AX, 0x140(SP)					
  repro_test.go:41	0x53e487		488d052a5c1400			LEAQ 0x145c2a(IP), AX					
  repro_test.go:41	0x53e48e		488d5c2440			LEAQ 0x40(SP), BX					
  repro_test.go:41	0x53e493		e8e8c2edff			CALL runtime.convTnoptr(SB)				
  repro_test.go:41	0x53e498		488d0d195c1400			LEAQ 0x145c19(IP), CX					
  repro_test.go:41	0x53e49f		48898c2448010000		MOVQ CX, 0x148(SP)					
  repro_test.go:41	0x53e4a7		4889842450010000		MOVQ AX, 0x150(SP)					
  repro_test.go:41	0x53e4af		488b442458			MOVQ 0x58(SP), AX					
  repro_test.go:41	0x53e4b4		e8a749f4ff			CALL runtime.convT64(SB)				
  repro_test.go:41	0x53e4b9		488d0d28931500			LEAQ 0x159328(IP), CX					
  repro_test.go:41	0x53e4c0		48898c2458010000		MOVQ CX, 0x158(SP)					
  repro_test.go:41	0x53e4c8		4889842460010000		MOVQ AX, 0x160(SP)					
  repro_test.go:41	0x53e4d0		488b842478010000		MOVQ 0x178(SP), AX					
  repro_test.go:41	0x53e4d8		8400				TESTB AL, 0(AX)						
  repro_test.go:41	0x53e4da		488d1dcacf0000			LEAQ 0xcfca(IP), BX					
  repro_test.go:41	0x53e4e1		b921000000			MOVL $0x21, CX						
  repro_test.go:41	0x53e4e6		488dbc2428010000		LEAQ 0x128(SP), DI					
  repro_test.go:41	0x53e4ee		be04000000			MOVL $0x4, SI						
  repro_test.go:41	0x53e4f3		4189f0				MOVL SI, R8						
  repro_test.go:41	0x53e4f6		e8455efaff			CALL testing.(*common).Fatalf(SB)			
  repro_test.go:41	0x53e4fb		4c8b542458			MOVQ 0x58(SP), R10					
  repro_test.go:41	0x53e500		4c8b9c24f0000000		MOVQ 0xf0(SP), R11					
  repro_test.go:41	0x53e508		4c8ba424e0000000		MOVQ 0xe0(SP), R12					
  repro_test.go:41	0x53e510		e9effeffff			JMP 0x53e404						
  repro_test.go:45	0x53e515		b810000000			MOVL $0x10, AX						
  repro_test.go:45	0x53e51a		488d1d27a51500			LEAQ 0x15a527(IP), BX					
  repro_test.go:45	0x53e521		b901000000			MOVL $0x1, CX						
  repro_test.go:45	0x53e526		e8b51beeff			CALL runtime.mallocgcSmallNoScanSC2(SB)			
  repro_test.go:45	0x53e52b		4889842400010000		MOVQ AX, 0x100(SP)					
  repro_test.go:45	0x53e533		48c70009000000			MOVQ $0x9, 0(AX)					
  repro_test.go:45	0x53e53a		48c7400808000000		MOVQ $0x8, 0x8(AX)					
  repro_test.go:45	0x53e542		b810000000			MOVL $0x10, AX						
  repro_test.go:45	0x53e547		488d1dfaa41500			LEAQ 0x15a4fa(IP), BX					
  repro_test.go:45	0x53e54e		b901000000			MOVL $0x1, CX						
  repro_test.go:45	0x53e553		e8881beeff			CALL runtime.mallocgcSmallNoScanSC2(SB)			
  repro_test.go:45	0x53e558		48c70001000000			MOVQ $0x1, 0(AX)					
  repro_test.go:45	0x53e55f		48c7400802000000		MOVQ $0x2, 0x8(AX)					
  repro_test.go:45	0x53e567		488b9424e8000000		MOVQ 0xe8(SP), DX					
  repro_test.go:45	0x53e56f		488b32				MOVQ 0(DX), SI						
  repro_test.go:45	0x53e572		bb02000000			MOVL $0x2, BX						
  repro_test.go:45	0x53e577		89d9				MOVL BX, CX						
  repro_test.go:45	0x53e579		4889c7				MOVQ AX, DI						
  repro_test.go:45	0x53e57c		4989c8				MOVQ CX, R8						
  repro_test.go:45	0x53e57f		41b901000000			MOVL $0x1, R9						
  repro_test.go:45	0x53e585		488b842400010000		MOVQ 0x100(SP), AX					
  repro_test.go:45	0x53e58d		4989f2				MOVQ SI, R10						
  repro_test.go:45	0x53e590		31f6				XORL SI, SI						
  repro_test.go:45	0x53e592		41ffd2				CALL R10						
  repro_test.go:45	0x53e595		488b942400010000		MOVQ 0x100(SP), DX					
  repro_test.go:45	0x53e59d		48833a01			CMPQ 0(DX), $0x1					
  repro_test.go:45	0x53e5a1		750b				JNE 0x53e5ae						
  repro_test.go:45	0x53e5a3		48837a0802			CMPQ 0x8(DX), $0x2					
  repro_test.go:45	0x53e5a8		0f84b9fbffff			JE 0x53e167						
  repro_test.go:45	0x53e5ae		488d15f38f1500			LEAQ 0x158ff3(IP), DX					
  repro_test.go:45	0x53e5b5		4889942418010000		MOVQ DX, 0x118(SP)					
  repro_test.go:45	0x53e5bd		488d153c3a0100			LEAQ 0x13a3c(IP), DX					
  repro_test.go:45	0x53e5c4		4889942420010000		MOVQ DX, 0x120(SP)					
  repro_test.go:45	0x53e5cc		488b842478010000		MOVQ 0x178(SP), AX					
  repro_test.go:45	0x53e5d4		8400				TESTB AL, 0(AX)						
  repro_test.go:45	0x53e5d6		488d9c2418010000		LEAQ 0x118(SP), BX					
  repro_test.go:45	0x53e5de		b901000000			MOVL $0x1, CX						
  repro_test.go:45	0x53e5e3		89cf				MOVL CX, DI						
  repro_test.go:45	0x53e5e5		e8565cfaff			CALL testing.(*common).Fatal(SB)			
  repro_test.go:45	0x53e5ea		e978fbffff			JMP 0x53e167						
  repro_test.go:51	0x53e5ef		c9				LEAVE							
  repro_test.go:51	0x53e5f0		c3				RET							
  repro_test.go:41	0x53e5f1		b850000000			MOVL $0x50, AX						
  repro_test.go:41	0x53e5f6		e885ccf4ff			CALL runtime.panicBounds(SB)				
  repro_test.go:40	0x53e5fb		0f1f440000			NOPL 0(AX)(AX*1)					
  repro_test.go:40	0x53e600		e87bccf4ff			CALL runtime.panicBounds(SB)				
  repro_test.go:40	0x53e605		b850000000			MOVL $0x50, AX						
  repro_test.go:40	0x53e60a		e871ccf4ff			CALL runtime.panicBounds(SB)				
  repro_test.go:40	0x53e60f		e86cccf4ff			CALL runtime.panicBounds(SB)				
  repro_test.go:40	0x53e614		b850000000			MOVL $0x50, AX						
  repro_test.go:40	0x53e619		e862ccf4ff			CALL runtime.panicBounds(SB)				
  repro_test.go:39	0x53e61e		b850000000			MOVL $0x50, AX						
  repro_test.go:39	0x53e623		e858ccf4ff			CALL runtime.panicBounds(SB)				
  repro_test.go:39	0x53e628		b850000000			MOVL $0x50, AX						
  repro_test.go:39	0x53e62d		e84eccf4ff			CALL runtime.panicBounds(SB)				
  repro_test.go:39	0x53e632		90				NOPL							
  repro_test.go:30	0x53e633		4889442408			MOVQ AX, 0x8(SP)					
  repro_test.go:30	0x53e638		e803b0f4ff			CALL runtime.morestack_noctxt.abi0(SB)			
  repro_test.go:30	0x53e63d		488b442408			MOVQ 0x8(SP), AX					
  repro_test.go:30	0x53e642		e9d9faffff			JMP carryselect.TestAssignOverlapAndBounds(SB)		

TEXT carryselect.asBig(SB) /home/exedev/crypto-audit/round4/issues/carry-select/repro_test.go
  repro_test.go:53	0x53e660		493b6610		CMPQ SP, 0x10(R14)				
  repro_test.go:53	0x53e664		0f86fd000000		JBE 0x53e767					
  repro_test.go:53	0x53e66a		55			PUSHQ BP					
  repro_test.go:53	0x53e66b		4889e5			MOVQ SP, BP					
  repro_test.go:53	0x53e66e		4883ec68		SUBQ $0x68, SP					
  repro_test.go:55	0x53e672		48899c2480000000	MOVQ BX, 0x80(SP)				
  repro_test.go:55	0x53e67a		4889442478		MOVQ AX, 0x78(SP)				
  repro_test.go:54	0x53e67f		b820000000		MOVL $0x20, AX					
  repro_test.go:54	0x53e684		488d1d9d2b1600		LEAQ 0x162b9d(IP), BX				
  repro_test.go:54	0x53e68b		b901000000		MOVL $0x1, CX					
  repro_test.go:54	0x53e690		e84b09eeff		CALL runtime.mallocgcSmallScanNoHeaderSC4(SB)	
  repro_test.go:54	0x53e695		4889442440		MOVQ AX, 0x40(SP)				
  repro_test.go:55	0x53e69a		488b942480000000	MOVQ 0x80(SP), DX				
  repro_test.go:55	0x53e6a2		48ffca			DECQ DX						
  repro_test.go:55	0x53e6a5		eb62			JMP 0x53e709					
  int.go:1245		0x53e6a7		48894208		MOVQ AX, 0x8(DX)				
  repro_test.go:55	0x53e6ab		c644244800		MOVB $0x0, 0x48(SP)				
  repro_test.go:55	0x53e6b0		440f117c2450		MOVUPS X15, 0x50(SP)				
  repro_test.go:55	0x53e6b6		66440fd67c2460		MOVQ X15, 0x60(SP)				
  repro_test.go:55	0x53e6bd		488b542438		MOVQ 0x38(SP), DX				
  repro_test.go:55	0x53e6c2		488b742478		MOVQ 0x78(SP), SI				
  repro_test.go:55	0x53e6c7		488b3cd6		MOVQ 0(SI)(DX*8), DI				
  int.go:72		0x53e6cb		31c0			XORL AX, AX					
  int.go:72		0x53e6cd		31db			XORL BX, BX					
  int.go:72		0x53e6cf		89d9			MOVL BX, CX					
  int.go:72		0x53e6d1		e86a84ffff		CALL math/big.nat.setUint64(SB)			
  int.go:72		0x53e6d6		48895c2458		MOVQ BX, 0x58(SP)				
  int.go:72		0x53e6db		48894c2460		MOVQ CX, 0x60(SP)				
  int.go:72		0x53e6e0		4889442450		MOVQ AX, 0x50(SP)				
  int.go:73		0x53e6e5		c644244800		MOVB $0x0, 0x48(SP)				
  repro_test.go:55	0x53e6ea		488b442440		MOVQ 0x40(SP), AX				
  repro_test.go:55	0x53e6ef		4889c3			MOVQ AX, BX					
  repro_test.go:55	0x53e6f2		488d4c2448		LEAQ 0x48(SP), CX				
  repro_test.go:55	0x53e6f7		e8c473ffff		CALL math/big.(*Int).Add(SB)			
  repro_test.go:55	0x53e6fc		488b542438		MOVQ 0x38(SP), DX				
  repro_test.go:55	0x53e701		48ffca			DECQ DX						
  int.go:1245		0x53e704		488b442440		MOVQ 0x40(SP), AX				
  repro_test.go:55	0x53e709		4885d2			TESTQ DX, DX					
  repro_test.go:55	0x53e70c		7c57			JL 0x53e765					
  repro_test.go:55	0x53e70e		4889542438		MOVQ DX, 0x38(SP)				
  int.go:1245		0x53e713		488b7010		MOVQ 0x10(AX), SI				
  int.go:1245		0x53e717		4c8b4018		MOVQ 0x18(AX), R8				
  int.go:1245		0x53e71b		488b7808		MOVQ 0x8(AX), DI				
  int.go:1245		0x53e71f		4889f8			MOVQ DI, AX					
  int.go:1245		0x53e722		4889f3			MOVQ SI, BX					
  int.go:1245		0x53e725		4c89c1			MOVQ R8, CX					
  int.go:1245		0x53e728		41b940000000		MOVL $0x40, R9					
  int.go:1245		0x53e72e		e86d91ffff		CALL math/big.nat.lsh(SB)			
  int.go:1245		0x53e733		488b542440		MOVQ 0x40(SP), DX				
  int.go:1245		0x53e738		48895a10		MOVQ BX, 0x10(DX)				
  int.go:1245		0x53e73c		48894a18		MOVQ CX, 0x18(DX)				
  int.go:1245		0x53e740		833d59b71b0000		CMPL runtime.writeBarrier(SB), $0x0		
  int.go:1245		0x53e747		0f845affffff		JE 0x53e6a7					
  int.go:1245		0x53e74d		488b7208		MOVQ 0x8(DX), SI				
  int.go:1245		0x53e751		e88ac7f4ff		CALL runtime.gcWriteBarrier2(SB)		
  int.go:1245		0x53e756		498903			MOVQ AX, 0(R11)					
  int.go:1245		0x53e759		49897308		MOVQ SI, 0x8(R11)				
  int.go:1245		0x53e75d		0f1f00			NOPL 0(AX)					
  int.go:1245		0x53e760		e942ffffff		JMP 0x53e6a7					
  repro_test.go:56	0x53e765		c9			LEAVE						
  repro_test.go:56	0x53e766		c3			RET						
  repro_test.go:53	0x53e767		4889442408		MOVQ AX, 0x8(SP)				
  repro_test.go:53	0x53e76c		48895c2410		MOVQ BX, 0x10(SP)				
  repro_test.go:53	0x53e771		48894c2418		MOVQ CX, 0x18(SP)				
  repro_test.go:53	0x53e776		e8c5aef4ff		CALL runtime.morestack_noctxt.abi0(SB)		
  repro_test.go:53	0x53e77b		488b442408		MOVQ 0x8(SP), AX				
  repro_test.go:53	0x53e780		488b5c2410		MOVQ 0x10(SP), BX				
  repro_test.go:53	0x53e785		488b4c2418		MOVQ 0x18(SP), CX				
  repro_test.go:53	0x53e78a		e9d1feffff		JMP carryselect.asBig(SB)			

TEXT carryselect.TestCarry(SB) /home/exedev/crypto-audit/round4/issues/carry-select/repro_test.go
  repro_test.go:59	0x53e7a0		4c8da42440feffff		LEAQ 0xfffffe40(SP), R12		
  repro_test.go:59	0x53e7a8		4d3b6610			CMPQ R12, 0x10(R14)			
  repro_test.go:59	0x53e7ac		0f8659080000			JBE 0x53f00b				
  repro_test.go:59	0x53e7b2		55				PUSHQ BP				
  repro_test.go:59	0x53e7b3		4889e5				MOVQ SP, BP				
  repro_test.go:59	0x53e7b6		4881ec38020000			SUBQ $0x238, SP				
  rand.go:79		0x53e7bd		4889842448020000		MOVQ AX, 0x248(SP)			
  repro_test.go:60	0x53e7c5		90				NOPL					
  rand.go:52		0x53e7c6		90				NOPL					
  rand.go:56		0x53e7c7		488d05a2731600			LEAQ 0x1673a2(IP), AX			
  rand.go:56		0x53e7ce		e84df8edff			CALL runtime.newobject(SB)		
  rand.go:56		0x53e7d3		4889842430020000		MOVQ AX, 0x230(SP)			
  rand.go:57		0x53e7db		bb02000000			MOVL $0x2, BX				
  rand.go:57		0x53e7e0		e85b84f9ff			CALL math/rand.(*rngSource).Seed(SB)	
  repro_test.go:60	0x53e7e5		90				NOPL					
  rand.go:79		0x53e7e6		488b0d23081900			MOVQ carryselect..typeAssert.1(SB), CX	
  rand.go:79		0x53e7ed		488b11				MOVQ 0(CX), DX				
  rand.go:79		0x53e7f0		8b1d2a751700			MOVL 0x17752a(IP), BX			
  rand.go:79		0x53e7f6		eb03				JMP 0x53e7fb				
  rand.go:79		0x53e7f8		4889f3				MOVQ SI, BX				
  rand.go:79		0x53e7fb		4889de				MOVQ BX, SI				
  rand.go:79		0x53e7fe		4821d3				ANDQ DX, BX				
  rand.go:79		0x53e801		48c1e304			SHLQ $0x4, BX				
  rand.go:79		0x53e805		488b7c0b08			MOVQ 0x8(BX)(CX*1), DI			
  rand.go:79		0x53e80a		4c8d0597b01300			LEAQ 0x13b097(IP), R8			
  rand.go:79		0x53e811		4c39c7				CMPQ DI, R8				
  rand.go:79		0x53e814		7419				JE 0x53e82f				
  rand.go:79		0x53e816		48ffc6				INCQ SI					
  rand.go:79		0x53e819		4885ff				TESTQ DI, DI				
  rand.go:79		0x53e81c		75da				JNE 0x53e7f8				
  rand.go:79		0x53e81e		488d05eb071900			LEAQ carryselect..typeAssert.1(SB), AX	
  rand.go:79		0x53e825		4c89c3				MOVQ R8, BX				
  rand.go:79		0x53e828		e833c0edff			CALL runtime.typeAssert(SB)		
  rand.go:79		0x53e82d		eb05				JMP 0x53e834				
  rand.go:79		0x53e82f		488b440b10			MOVQ 0x10(BX)(CX*1), AX			
  rand.go:80		0x53e834		488d9424e8010000		LEAQ 0x1e8(SP), DX			
  rand.go:80		0x53e83c		440f113a			MOVUPS X15, 0(DX)			
  rand.go:80		0x53e840		440f117a10			MOVUPS X15, 0x10(DX)			
  rand.go:80		0x53e845		440f117a20			MOVUPS X15, 0x20(DX)			
  rand.go:80		0x53e84a		488d35bf741700			LEAQ 0x1774bf(IP), SI			
  rand.go:80		0x53e851		4889b424e8010000		MOVQ SI, 0x1e8(SP)			
  rand.go:80		0x53e859		488bb42430020000		MOVQ 0x230(SP), SI			
  rand.go:80		0x53e861		4889b424f0010000		MOVQ SI, 0x1f0(SP)			
  rand.go:80		0x53e869		48898424f8010000		MOVQ AX, 0x1f8(SP)			
  rand.go:80		0x53e871		4889b42400020000		MOVQ SI, 0x200(SP)			
  repro_test.go:61	0x53e879		31f6				XORL SI, SI				
  repro_test.go:61	0x53e87b		eb03				JMP 0x53e880				
  repro_test.go:61	0x53e87d		48ffc6				INCQ SI					
  repro_test.go:61	0x53e880		4883fe21			CMPQ SI, $0x21				
  repro_test.go:61	0x53e884		0f8f68060000			JG 0x53eef2				
  repro_test.go:61	0x53e88a		4889b42488000000		MOVQ SI, 0x88(SP)			
  repro_test.go:61	0x53e892		31c0				XORL AX, AX				
  repro_test.go:61	0x53e894		eb1b				JMP 0x53e8b1				
  repro_test.go:61	0x53e896		488b842480000000		MOVQ 0x80(SP), AX			
  repro_test.go:61	0x53e89e		48ffc0				INCQ AX					
  rand.go:80		0x53e8a1		488d9424e8010000		LEAQ 0x1e8(SP), DX			
  repro_test.go:62	0x53e8a9		488bb42488000000		MOVQ 0x88(SP), SI			
  repro_test.go:61	0x53e8b1		4883f864			CMPQ AX, $0x64				
  repro_test.go:61	0x53e8b5		7dc6				JGE 0x53e87d				
  repro_test.go:61	0x53e8b7		4889842480000000		MOVQ AX, 0x80(SP)			
  repro_test.go:61	0x53e8bf		90				NOPL					
  repro_test.go:62	0x53e8c0		4883fe04			CMPQ SI, $0x4				
  repro_test.go:62	0x53e8c4		771c				JA 0x53e8e2				
  repro_test.go:62	0x53e8c6		488dbc2418010000		LEAQ 0x118(SP), DI			
  repro_test.go:62	0x53e8ce		440f113f			MOVUPS X15, 0(DI)			
  repro_test.go:62	0x53e8d2		440f117f10			MOVUPS X15, 0x10(DI)			
  repro_test.go:62	0x53e8d7		488d8c2418010000		LEAQ 0x118(SP), CX			
  repro_test.go:62	0x53e8df		90				NOPL					
  repro_test.go:62	0x53e8e0		eb2c				JMP 0x53e90e				
  repro_test.go:62	0x53e8e2		488d05bf8e1500			LEAQ 0x158ebf(IP), AX			
  repro_test.go:62	0x53e8e9		4889f3				MOVQ SI, BX				
  repro_test.go:62	0x53e8ec		4889d9				MOVQ BX, CX				
  repro_test.go:62	0x53e8ef		e8ac7cf4ff			CALL runtime.makeslice(SB)		
  repro_test.go:62	0x53e8f4		488b8c2488000000		MOVQ 0x88(SP), CX			
  repro_test.go:62	0x53e8fc		4883f904			CMPQ CX, $0x4				
  rand.go:80		0x53e900		488d9424e8010000		LEAQ 0x1e8(SP), DX			
  repro_test.go:63	0x53e908		4889ce				MOVQ CX, SI				
  repro_test.go:62	0x53e90b		4889c1				MOVQ AX, CX				
  repro_test.go:62	0x53e90e		48898c2470010000		MOVQ CX, 0x170(SP)			
  repro_test.go:62	0x53e916		771b				JA 0x53e933				
  repro_test.go:62	0x53e918		488dbc24f8000000		LEAQ 0xf8(SP), DI			
  repro_test.go:62	0x53e920		440f113f			MOVUPS X15, 0(DI)			
  repro_test.go:62	0x53e924		440f117f10			MOVUPS X15, 0x10(DI)			
  repro_test.go:62	0x53e929		488d9c24f8000000		LEAQ 0xf8(SP), BX			
  repro_test.go:62	0x53e931		eb25				JMP 0x53e958				
  repro_test.go:62	0x53e933		488d056e8e1500			LEAQ 0x158e6e(IP), AX			
  repro_test.go:62	0x53e93a		4889f3				MOVQ SI, BX				
  repro_test.go:62	0x53e93d		4889d9				MOVQ BX, CX				
  repro_test.go:62	0x53e940		e85b7cf4ff			CALL runtime.makeslice(SB)		
  rand.go:80		0x53e945		488d9424e8010000		LEAQ 0x1e8(SP), DX			
  repro_test.go:63	0x53e94d		488bb42488000000		MOVQ 0x88(SP), SI			
  repro_test.go:62	0x53e955		4889c3				MOVQ AX, BX				
  repro_test.go:62	0x53e958		48899c2468010000		MOVQ BX, 0x168(SP)			
  repro_test.go:62	0x53e960		31ff				XORL DI, DI				
  repro_test.go:63	0x53e962		eb14				JMP 0x53e978				
  repro_test.go:63	0x53e964		488d7901			LEAQ 0x1(CX), DI			
  rand.go:80		0x53e968		488d9424e8010000		LEAQ 0x1e8(SP), DX			
  repro_test.go:63	0x53e970		488bb42488000000		MOVQ 0x88(SP), SI			
  repro_test.go:63	0x53e978		4839f7				CMPQ DI, SI				
  repro_test.go:63	0x53e97b		7d6d				JGE 0x53e9ea				
  repro_test.go:63	0x53e97d		4889bc2490000000		MOVQ DI, 0x90(SP)			
  repro_test.go:63	0x53e985		4889d0				MOVQ DX, AX				
  repro_test.go:63	0x53e988		e8937ff9ff			CALL math/rand.(*Rand).Uint64(SB)	
  repro_test.go:63	0x53e98d		488b8c2490000000		MOVQ 0x90(SP), CX			
  repro_test.go:63	0x53e995		488b942470010000		MOVQ 0x170(SP), DX			
  repro_test.go:63	0x53e99d		488904ca			MOVQ AX, 0(DX)(CX*8)			
  repro_test.go:63	0x53e9a1		488d8424e8010000		LEAQ 0x1e8(SP), AX			
  repro_test.go:63	0x53e9a9		e8727ff9ff			CALL math/rand.(*Rand).Uint64(SB)	
  repro_test.go:63	0x53e9ae		488b8c2490000000		MOVQ 0x90(SP), CX			
  repro_test.go:63	0x53e9b6		488b942468010000		MOVQ 0x168(SP), DX			
  repro_test.go:63	0x53e9be		488904ca			MOVQ AX, 0(DX)(CX*8)			
  repro_test.go:63	0x53e9c2		488b9c2480000000		MOVQ 0x80(SP), BX			
  repro_test.go:63	0x53e9ca		4885db				TESTQ BX, BX				
  repro_test.go:63	0x53e9cd		7595				JNE 0x53e964				
  repro_test.go:63	0x53e9cf		488b842470010000		MOVQ 0x170(SP), AX			
  repro_test.go:63	0x53e9d7		66440fd63cc8			MOVQ X15, 0(AX)(CX*8)			
  repro_test.go:63	0x53e9dd		48c704caffffffff		MOVQ $-0x1, 0(DX)(CX*8)			
  repro_test.go:63	0x53e9e5		e97affffff			JMP 0x53e964				
  repro_test.go:64	0x53e9ea		c68424c801000000		MOVB $0x0, 0x1c8(SP)			
  repro_test.go:64	0x53e9f2		66440fd6bc24d0010000		MOVQ X15, 0x1d0(SP)			
  repro_test.go:64	0x53e9fc		440f11bc24d8010000		MOVUPS X15, 0x1d8(SP)			
  repro_test.go:64	0x53ea05		488b842470010000		MOVQ 0x170(SP), AX			
  repro_test.go:64	0x53ea0d		4889f3				MOVQ SI, BX				
  repro_test.go:64	0x53ea10		4889d9				MOVQ BX, CX				
  repro_test.go:64	0x53ea13		e848fcffff			CALL carryselect.asBig(SB)		
  repro_test.go:64	0x53ea18		4889842428020000		MOVQ AX, 0x228(SP)			
  repro_test.go:64	0x53ea20		488b842468010000		MOVQ 0x168(SP), AX			
  repro_test.go:64	0x53ea28		488b9c2488000000		MOVQ 0x88(SP), BX			
  repro_test.go:64	0x53ea30		4889d9				MOVQ BX, CX				
  repro_test.go:64	0x53ea33		e828fcffff			CALL carryselect.asBig(SB)		
  repro_test.go:64	0x53ea38		488b9c2428020000		MOVQ 0x228(SP), BX			
  repro_test.go:64	0x53ea40		4889c1				MOVQ AX, CX				
  repro_test.go:64	0x53ea43		488d8424c8010000		LEAQ 0x1c8(SP), AX			
  repro_test.go:64	0x53ea4b		e85072ffff			CALL math/big.(*Int).Sub(SB)		
  repro_test.go:64	0x53ea50		4889842478010000		MOVQ AX, 0x178(SP)			
  int.go:49		0x53ea58		4883781000			CMPQ 0x10(AX), $0x0			
  int.go:49		0x53ea5d		7504				JNE 0x53ea63				
  int.go:49		0x53ea5f		31c9				XORL CX, CX				
  repro_test.go:64	0x53ea61		eb13				JMP 0x53ea76				
  int.go:52		0x53ea63		803800				CMPB 0(AX), $0x0			
  int.go:52		0x53ea66		7409				JE 0x53ea71				
  int.go:52		0x53ea68		48c7c1ffffffff			MOVQ $-0x1, CX				
  repro_test.go:64	0x53ea6f		eb05				JMP 0x53ea76				
  repro_test.go:64	0x53ea71		b901000000			MOVL $0x1, CX				
  repro_test.go:64	0x53ea76		48894c2438			MOVQ CX, 0x38(SP)			
  repro_test.go:65	0x53ea7b		c68424a801000000		MOVB $0x0, 0x1a8(SP)			
  repro_test.go:65	0x53ea83		66440fd6bc24b0010000		MOVQ X15, 0x1b0(SP)			
  repro_test.go:65	0x53ea8d		440f11bc24b8010000		MOVUPS X15, 0x1b8(SP)			
  repro_test.go:65	0x53ea96		4c8b8c2488000000		MOVQ 0x88(SP), R9			
  repro_test.go:65	0x53ea9e		4c89ca				MOVQ R9, DX				
  repro_test.go:65	0x53eaa1		48c1e206			SHLQ $0x6, DX				
  int.go:90		0x53eaa5		48c78424f000000001000000	MOVQ $0x1, 0xf0(SP)			
  int.go:92		0x53eab1		c684248801000000		MOVB $0x0, 0x188(SP)			
  int.go:92		0x53eab9		48c784249801000001000000	MOVQ $0x1, 0x198(SP)			
  int.go:92		0x53eac5		48c78424a001000001000000	MOVQ $0x1, 0x1a0(SP)			
  int.go:92		0x53ead1		488dbc24f0000000		LEAQ 0xf0(SP), DI			
  int.go:92		0x53ead9		4889bc2490010000		MOVQ DI, 0x190(SP)			
  int.go:1245		0x53eae1		488b8424b0010000		MOVQ 0x1b0(SP), AX			
  int.go:1245		0x53eae9		488b9c24b8010000		MOVQ 0x1b8(SP), BX			
  int.go:1245		0x53eaf1		488b8c24c0010000		MOVQ 0x1c0(SP), CX			
  int.go:1245		0x53eaf9		be01000000			MOVL $0x1, SI				
  int.go:1245		0x53eafe		4189f0				MOVL SI, R8				
  int.go:1245		0x53eb01		4989d1				MOVQ DX, R9				
  int.go:1245		0x53eb04		e8978dffff			CALL math/big.nat.lsh(SB)		
  int.go:1245		0x53eb09		48899c24b8010000		MOVQ BX, 0x1b8(SP)			
  int.go:1245		0x53eb11		48898c24c0010000		MOVQ CX, 0x1c0(SP)			
  int.go:1245		0x53eb19		48898424b0010000		MOVQ AX, 0x1b0(SP)			
  int.go:1246		0x53eb21		0fb6942488010000		MOVZX 0x188(SP), DX			
  int.go:1246		0x53eb29		889424a8010000			MOVB DL, 0x1a8(SP)			
  repro_test.go:65	0x53eb30		488b842478010000		MOVQ 0x178(SP), AX			
  repro_test.go:65	0x53eb38		4889c3				MOVQ AX, BX				
  repro_test.go:65	0x53eb3b		488d8c24a8010000		LEAQ 0x1a8(SP), CX			
  repro_test.go:65	0x53eb43		e8f875ffff			CALL math/big.(*Int).Mod(SB)		
  repro_test.go:66	0x53eb48		488bbc2488000000		MOVQ 0x88(SP), DI			
  repro_test.go:66	0x53eb50		4885ff				TESTQ DI, DI				
  repro_test.go:66	0x53eb53		7508				JNE 0x53eb5d				
  repro_test.go:66	0x53eb55		31c0				XORL AX, AX				
  repro_test.go:66	0x53eb57		31c9				XORL CX, CX				
  repro_test.go:66	0x53eb59		31db				XORL BX, BX				
  repro_test.go:66	0x53eb5b		eb1b				JMP 0x53eb78				
  repro_test.go:66	0x53eb5d		31c0				XORL AX, AX				
  repro_test.go:66	0x53eb5f		4889fb				MOVQ DI, BX				
  repro_test.go:66	0x53eb62		31c9				XORL CX, CX				
  repro_test.go:66	0x53eb64		488d353d8c1500			LEAQ 0x158c3d(IP), SI			
  repro_test.go:66	0x53eb6b		e8107bf4ff			CALL runtime.growslice(SB)		
  repro_test.go:66	0x53eb70		488bbc2488000000		MOVQ 0x88(SP), DI			
  repro_test.go:66	0x53eb78		48898c24a0000000		MOVQ CX, 0xa0(SP)			
  repro_test.go:66	0x53eb80		4889842480010000		MOVQ AX, 0x180(SP)			
  repro_test.go:66	0x53eb88		48899c2498000000		MOVQ BX, 0x98(SP)			
  repro_test.go:66	0x53eb90		4889f9				MOVQ DI, CX				
  repro_test.go:66	0x53eb93		48c1e103			SHLQ $0x3, CX				
  repro_test.go:66	0x53eb97		48898c2458010000		MOVQ CX, 0x158(SP)			
  repro_test.go:66	0x53eb9f		488b9c2470010000		MOVQ 0x170(SP), BX			
  repro_test.go:66	0x53eba7		e874caf4ff			CALL runtime.memmove(SB)		
  repro_test.go:67	0x53ebac		488b842480010000		MOVQ 0x180(SP), AX			
  repro_test.go:67	0x53ebb4		488b9c2498000000		MOVQ 0x98(SP), BX			
  repro_test.go:67	0x53ebbc		488b8c24a0000000		MOVQ 0xa0(SP), CX			
  repro_test.go:67	0x53ebc4		488bbc2468010000		MOVQ 0x168(SP), DI			
  repro_test.go:67	0x53ebcc		488bb42488000000		MOVQ 0x88(SP), SI			
  repro_test.go:67	0x53ebd4		4989f0				MOVQ SI, R8				
  repro_test.go:67	0x53ebd7		e864eaffff			CALL carryselect.SubLoop(SB)		
  repro_test.go:64	0x53ebdc		488b542438			MOVQ 0x38(SP), DX			
  repro_test.go:64	0x53ebe1		4885d2				TESTQ DX, DX				
  repro_test.go:64	0x53ebe4		0f9cc2				SETL DL					
  repro_test.go:65	0x53ebe7		0fb6d2				MOVZX DL, DX				
  repro_test.go:65	0x53ebea		48899424a8000000		MOVQ DX, 0xa8(SP)			
  repro_test.go:67	0x53ebf2		4839d0				CMPQ AX, DX				
  repro_test.go:67	0x53ebf5		7407				JE 0x53ebfe				
  repro_test.go:67	0x53ebf7		b801000000			MOVL $0x1, AX				
  repro_test.go:67	0x53ebfc		eb32				JMP 0x53ec30				
  repro_test.go:67	0x53ebfe		488b842480010000		MOVQ 0x180(SP), AX			
  repro_test.go:67	0x53ec06		488b9c2498000000		MOVQ 0x98(SP), BX			
  repro_test.go:67	0x53ec0e		488b8c24a0000000		MOVQ 0xa0(SP), CX			
  repro_test.go:67	0x53ec16		e845faffff			CALL carryselect.asBig(SB)		
  repro_test.go:67	0x53ec1b		488b9c2478010000		MOVQ 0x178(SP), BX			
  repro_test.go:67	0x53ec23		e89877ffff			CALL math/big.(*Int).Cmp(SB)		
  repro_test.go:67	0x53ec28		4885c0				TESTQ AX, AX				
  repro_test.go:67	0x53ec2b		0f95c2				SETNE DL				
  repro_test.go:67	0x53ec2e		89d0				MOVL DX, AX				
  repro_test.go:67	0x53ec30		84c0				TESTL AL, AL				
  repro_test.go:67	0x53ec32		750e				JNE 0x53ec42				
  repro_test.go:62	0x53ec34		488bbc2488000000		MOVQ 0x88(SP), DI			
  repro_test.go:62	0x53ec3c		4883ff04			CMPQ DI, $0x4				
  repro_test.go:67	0x53ec40		eb64				JMP 0x53eca6				
  repro_test.go:67	0x53ec42		440f11bc2418020000		MOVUPS X15, 0x218(SP)			
  repro_test.go:67	0x53ec4b		488b842488000000		MOVQ 0x88(SP), AX			
  repro_test.go:67	0x53ec53		e80842f4ff			CALL runtime.convT64(SB)		
  repro_test.go:67	0x53ec58		488d0d898b1500			LEAQ 0x158b89(IP), CX			
  repro_test.go:67	0x53ec5f		48898c2418020000		MOVQ CX, 0x218(SP)			
  repro_test.go:67	0x53ec67		4889842420020000		MOVQ AX, 0x220(SP)			
  repro_test.go:67	0x53ec6f		488b842448020000		MOVQ 0x248(SP), AX			
  repro_test.go:67	0x53ec77		8400				TESTB AL, 0(AX)				
  repro_test.go:67	0x53ec79		488d1db44f0000			LEAQ 0x4fb4(IP), BX			
  repro_test.go:67	0x53ec80		b908000000			MOVL $0x8, CX				
  repro_test.go:67	0x53ec85		488dbc2418020000		LEAQ 0x218(SP), DI			
  repro_test.go:67	0x53ec8d		be01000000			MOVL $0x1, SI				
  repro_test.go:67	0x53ec92		4189f0				MOVL SI, R8				
  repro_test.go:67	0x53ec95		e8a656faff			CALL testing.(*common).Fatalf(SB)	
  repro_test.go:62	0x53ec9a		488bbc2488000000		MOVQ 0x88(SP), DI			
  repro_test.go:62	0x53eca2		4883ff04			CMPQ DI, $0x4				
  repro_test.go:68	0x53eca6		0f8534010000			JNE 0x53ede0				
  repro_test.go:68	0x53ecac		488db42438010000		LEAQ 0x138(SP), SI			
  repro_test.go:68	0x53ecb4		440f113e			MOVUPS X15, 0(SI)			
  repro_test.go:68	0x53ecb8		440f117e10			MOVUPS X15, 0x10(SI)			
  repro_test.go:68	0x53ecbd		488d8424d0000000		LEAQ 0xd0(SP), AX			
  repro_test.go:68	0x53ecc5		440f1138			MOVUPS X15, 0(AX)			
  repro_test.go:68	0x53ecc9		440f117810			MOVUPS X15, 0x10(AX)			
  repro_test.go:68	0x53ecce		488d9c24b0000000		LEAQ 0xb0(SP), BX			
  repro_test.go:68	0x53ecd6		440f1036			MOVUPS 0(SI), X14			
  repro_test.go:68	0x53ecda		440f1133			MOVUPS X14, 0(BX)			
  repro_test.go:68	0x53ecde		440f107610			MOVUPS 0x10(SI), X14			
  repro_test.go:68	0x53ece3		440f117310			MOVUPS X14, 0x10(BX)			
  repro_test.go:68	0x53ece8		488bb42470010000		MOVQ 0x170(SP), SI			
  repro_test.go:68	0x53ecf0		4839c6				CMPQ SI, AX				
  repro_test.go:68	0x53ecf3		7420				JE 0x53ed15				
  repro_test.go:68	0x53ecf5		4889f3				MOVQ SI, BX				
  repro_test.go:68	0x53ecf8		b920000000			MOVL $0x20, CX				
  repro_test.go:68	0x53ecfd		0f1f00				NOPL 0(AX)				
  repro_test.go:68	0x53ed00		e81bc9f4ff			CALL runtime.memmove(SB)		
  repro_test.go:68	0x53ed05		488d8424d0000000		LEAQ 0xd0(SP), AX			
  repro_test.go:68	0x53ed0d		488d9c24b0000000		LEAQ 0xb0(SP), BX			
  repro_test.go:68	0x53ed15		4c8b842468010000		MOVQ 0x168(SP), R8			
  repro_test.go:68	0x53ed1d		0f1f00				NOPL 0(AX)				
  repro_test.go:68	0x53ed20		4939d8				CMPQ R8, BX				
  repro_test.go:68	0x53ed23		7420				JE 0x53ed45				
  repro_test.go:68	0x53ed25		4889d8				MOVQ BX, AX				
  repro_test.go:68	0x53ed28		4c89c3				MOVQ R8, BX				
  repro_test.go:68	0x53ed2b		b920000000			MOVL $0x20, CX				
  repro_test.go:68	0x53ed30		e8ebc8f4ff			CALL runtime.memmove(SB)		
  repro_test.go:68	0x53ed35		488d8424d0000000		LEAQ 0xd0(SP), AX			
  repro_test.go:68	0x53ed3d		488d9c24b0000000		LEAQ 0xb0(SP), BX			
  repro_test.go:68	0x53ed45		e856e9ffff			CALL carryselect.Sub4(SB)		
  repro_test.go:68	0x53ed4a		488b8c24a8000000		MOVQ 0xa8(SP), CX			
  repro_test.go:68	0x53ed52		4839c8				CMPQ AX, CX				
  repro_test.go:68	0x53ed55		7407				JE 0x53ed5e				
  repro_test.go:68	0x53ed57		ba01000000			MOVL $0x1, DX				
  repro_test.go:68	0x53ed5c		eb27				JMP 0x53ed85				
  repro_test.go:68	0x53ed5e		488d8424d0000000		LEAQ 0xd0(SP), AX			
  repro_test.go:68	0x53ed66		bb04000000			MOVL $0x4, BX				
  repro_test.go:68	0x53ed6b		89d9				MOVL BX, CX				
  repro_test.go:68	0x53ed6d		e8eef8ffff			CALL carryselect.asBig(SB)		
  repro_test.go:68	0x53ed72		488b9c2478010000		MOVQ 0x178(SP), BX			
  repro_test.go:68	0x53ed7a		e84176ffff			CALL math/big.(*Int).Cmp(SB)		
  repro_test.go:68	0x53ed7f		4885c0				TESTQ AX, AX				
  repro_test.go:68	0x53ed82		0f95c2				SETNE DL				
  repro_test.go:68	0x53ed85		84d2				TESTL DL, DL				
  repro_test.go:68	0x53ed87		750d				JNE 0x53ed96				
  repro_test.go:66	0x53ed89		488bbc2488000000		MOVQ 0x88(SP), DI			
  repro_test.go:66	0x53ed91		4885ff				TESTQ DI, DI				
  repro_test.go:68	0x53ed94		eb4d				JMP 0x53ede3				
  repro_test.go:68	0x53ed96		488d150b881500			LEAQ 0x15880b(IP), DX			
  repro_test.go:68	0x53ed9d		4889942418020000		MOVQ DX, 0x218(SP)			
  repro_test.go:68	0x53eda5		488d1584320100			LEAQ 0x13284(IP), DX			
  repro_test.go:68	0x53edac		4889942420020000		MOVQ DX, 0x220(SP)			
  repro_test.go:68	0x53edb4		488b842448020000		MOVQ 0x248(SP), AX			
  repro_test.go:68	0x53edbc		8400				TESTB AL, 0(AX)				
  repro_test.go:68	0x53edbe		488d9c2418020000		LEAQ 0x218(SP), BX			
  repro_test.go:68	0x53edc6		b901000000			MOVL $0x1, CX				
  repro_test.go:68	0x53edcb		89cf				MOVL CX, DI				
  repro_test.go:68	0x53edcd		e86e54faff			CALL testing.(*common).Fatal(SB)	
  repro_test.go:66	0x53edd2		488bbc2488000000		MOVQ 0x88(SP), DI			
  repro_test.go:66	0x53edda		4885ff				TESTQ DI, DI				
  repro_test.go:68	0x53eddd		eb04				JMP 0x53ede3				
  repro_test.go:68	0x53eddf		90				NOPL					
  repro_test.go:66	0x53ede0		4885ff				TESTQ DI, DI				
  repro_test.go:69	0x53ede3		7508				JNE 0x53eded				
  repro_test.go:69	0x53ede5		31c0				XORL AX, AX				
  repro_test.go:69	0x53ede7		31c9				XORL CX, CX				
  repro_test.go:69	0x53ede9		31db				XORL BX, BX				
  repro_test.go:69	0x53edeb		eb18				JMP 0x53ee05				
  repro_test.go:69	0x53eded		31c0				XORL AX, AX				
  repro_test.go:69	0x53edef		4889fb				MOVQ DI, BX				
  repro_test.go:69	0x53edf2		31c9				XORL CX, CX				
  repro_test.go:69	0x53edf4		488d35ad891500			LEAQ 0x1589ad(IP), SI			
  repro_test.go:69	0x53edfb		0f1f440000			NOPL 0(AX)(AX*1)			
  repro_test.go:69	0x53ee00		e87b78f4ff			CALL runtime.growslice(SB)		
  repro_test.go:69	0x53ee05		48898c24a0000000		MOVQ CX, 0xa0(SP)			
  repro_test.go:69	0x53ee0d		4889842480010000		MOVQ AX, 0x180(SP)			
  repro_test.go:69	0x53ee15		48899c2498000000		MOVQ BX, 0x98(SP)			
  repro_test.go:69	0x53ee1d		488b9c2470010000		MOVQ 0x170(SP), BX			
  repro_test.go:69	0x53ee25		488b8c2458010000		MOVQ 0x158(SP), CX			
  repro_test.go:69	0x53ee2d		e8eec7f4ff			CALL runtime.memmove(SB)		
  repro_test.go:69	0x53ee32		488b842480010000		MOVQ 0x180(SP), AX			
  repro_test.go:69	0x53ee3a		488b9c2498000000		MOVQ 0x98(SP), BX			
  repro_test.go:69	0x53ee42		488b8c24a0000000		MOVQ 0xa0(SP), CX			
  repro_test.go:69	0x53ee4a		4889c7				MOVQ AX, DI				
  repro_test.go:69	0x53ee4d		4889de				MOVQ BX, SI				
  repro_test.go:69	0x53ee50		4989c8				MOVQ CX, R8				
  repro_test.go:69	0x53ee53		e8e8e7ffff			CALL carryselect.SubLoop(SB)		
  repro_test.go:69	0x53ee58		4885c0				TESTQ AX, AX				
  repro_test.go:69	0x53ee5b		7407				JE 0x53ee64				
  repro_test.go:69	0x53ee5d		ba01000000			MOVL $0x1, DX				
  repro_test.go:69	0x53ee62		eb45				JMP 0x53eea9				
  repro_test.go:69	0x53ee64		488b842480010000		MOVQ 0x180(SP), AX			
  repro_test.go:69	0x53ee6c		488b9c2498000000		MOVQ 0x98(SP), BX			
  repro_test.go:69	0x53ee74		488b8c24a0000000		MOVQ 0xa0(SP), CX			
  repro_test.go:69	0x53ee7c		0f1f4000			NOPL 0(AX)				
  repro_test.go:69	0x53ee80		e8dbf7ffff			CALL carryselect.asBig(SB)		
  int.go:49		0x53ee85		4883781000			CMPQ 0x10(AX), $0x0			
  int.go:49		0x53ee8a		7504				JNE 0x53ee90				
  int.go:49		0x53ee8c		31c0				XORL AX, AX				
  repro_test.go:69	0x53ee8e		eb13				JMP 0x53eea3				
  int.go:52		0x53ee90		803800				CMPB 0(AX), $0x0			
  int.go:52		0x53ee93		7409				JE 0x53ee9e				
  int.go:52		0x53ee95		48c7c0ffffffff			MOVQ $-0x1, AX				
  repro_test.go:69	0x53ee9c		eb05				JMP 0x53eea3				
  repro_test.go:69	0x53ee9e		b801000000			MOVL $0x1, AX				
  repro_test.go:69	0x53eea3		4885c0				TESTQ AX, AX				
  repro_test.go:69	0x53eea6		0f95c2				SETNE DL				
  repro_test.go:69	0x53eea9		84d2				TESTL DL, DL				
  repro_test.go:69	0x53eeab		0f84e5f9ffff			JE 0x53e896				
  repro_test.go:69	0x53eeb1		488d15f0861500			LEAQ 0x1586f0(IP), DX			
  repro_test.go:69	0x53eeb8		4889942418020000		MOVQ DX, 0x218(SP)			
  repro_test.go:69	0x53eec0		488d1579310100			LEAQ 0x13179(IP), DX			
  repro_test.go:69	0x53eec7		4889942420020000		MOVQ DX, 0x220(SP)			
  repro_test.go:69	0x53eecf		488b842448020000		MOVQ 0x248(SP), AX			
  repro_test.go:69	0x53eed7		8400				TESTB AL, 0(AX)				
  repro_test.go:69	0x53eed9		488d9c2418020000		LEAQ 0x218(SP), BX			
  repro_test.go:69	0x53eee1		b901000000			MOVL $0x1, CX				
  repro_test.go:69	0x53eee6		89cf				MOVL CX, DI				
  repro_test.go:69	0x53eee8		e85353faff			CALL testing.(*common).Fatal(SB)	
  repro_test.go:69	0x53eeed		e9a4f9ffff			JMP 0x53e896				
  repro_test.go:72	0x53eef2		488d442460			LEAQ 0x60(SP), AX			
  repro_test.go:72	0x53eef7		440f1138			MOVUPS X15, 0(AX)			
  repro_test.go:72	0x53eefb		440f117810			MOVUPS X15, 0x10(AX)			
  repro_test.go:72	0x53ef00		488d5c2440			LEAQ 0x40(SP), BX			
  repro_test.go:72	0x53ef05		488d0dd43f0100			LEAQ 0x13fd4(IP), CX			
  repro_test.go:72	0x53ef0c		440f1031			MOVUPS 0(CX), X14			
  repro_test.go:72	0x53ef10		440f1133			MOVUPS X14, 0(BX)			
  repro_test.go:72	0x53ef14		440f107110			MOVUPS 0x10(CX), X14			
  repro_test.go:72	0x53ef19		440f117310			MOVUPS X14, 0x10(BX)			
  repro_test.go:72	0x53ef1e		6690				NOPW					
  repro_test.go:72	0x53ef20		e87be7ffff			CALL carryselect.Sub4(SB)		
  repro_test.go:72	0x53ef25		4883f801			CMPQ AX, $0x1				
  repro_test.go:72	0x53ef29		7443				JE 0x53ef6e				
  repro_test.go:72	0x53ef2b		440f11bc2418020000		MOVUPS X15, 0x218(SP)			
  repro_test.go:72	0x53ef34		e8273ff4ff			CALL runtime.convT64(SB)		
  repro_test.go:72	0x53ef39		488d0d68881500			LEAQ 0x158868(IP), CX			
  repro_test.go:72	0x53ef40		48898c2418020000		MOVQ CX, 0x218(SP)			
  repro_test.go:72	0x53ef48		4889842420020000		MOVQ AX, 0x220(SP)			
  repro_test.go:72	0x53ef50		488b842448020000		MOVQ 0x248(SP), AX			
  repro_test.go:72	0x53ef58		8400				TESTB AL, 0(AX)				
  repro_test.go:72	0x53ef5a		488d9c2418020000		LEAQ 0x218(SP), BX			
  repro_test.go:72	0x53ef62		b901000000			MOVL $0x1, CX				
  repro_test.go:72	0x53ef67		89cf				MOVL CX, DI				
  repro_test.go:72	0x53ef69		e8d252faff			CALL testing.(*common).Fatal(SB)	
  repro_test.go:73	0x53ef6e		488d8c2438010000		LEAQ 0x138(SP), CX			
  repro_test.go:73	0x53ef76		488d5c2460			LEAQ 0x60(SP), BX			
  repro_test.go:73	0x53ef7b		440f1033			MOVUPS 0(BX), X14			
  repro_test.go:73	0x53ef7f		440f1131			MOVUPS X14, 0(CX)			
  repro_test.go:73	0x53ef83		440f107310			MOVUPS 0x10(BX), X14			
  repro_test.go:73	0x53ef88		440f117110			MOVUPS X14, 0x10(CX)			
  repro_test.go:73	0x53ef8d		31c9				XORL CX, CX				
  repro_test.go:73	0x53ef8f		eb03				JMP 0x53ef94				
  repro_test.go:73	0x53ef91		48ffc1				INCQ CX					
  repro_test.go:73	0x53ef94		4883f904			CMPQ CX, $0x4				
  repro_test.go:73	0x53ef98		7d6f				JGE 0x53f009				
  repro_test.go:73	0x53ef9a		488b94cc38010000		MOVQ 0x138(SP)(CX*8), DX		
  repro_test.go:73	0x53efa2		4883faff			CMPQ DX, $-0x1				
  repro_test.go:73	0x53efa6		74e9				JE 0x53ef91				
  repro_test.go:73	0x53efa8		48898c2460010000		MOVQ CX, 0x160(SP)			
  repro_test.go:73	0x53efb0		440f11bc2418020000		MOVUPS X15, 0x218(SP)			
  repro_test.go:73	0x53efb9		488d0508561400			LEAQ 0x145608(IP), AX			
  repro_test.go:73	0x53efc0		e8bbb7edff			CALL runtime.convTnoptr(SB)		
  repro_test.go:73	0x53efc5		488d0dfc551400			LEAQ 0x1455fc(IP), CX			
  repro_test.go:73	0x53efcc		48898c2418020000		MOVQ CX, 0x218(SP)			
  repro_test.go:73	0x53efd4		4889842420020000		MOVQ AX, 0x220(SP)			
  repro_test.go:73	0x53efdc		488b842448020000		MOVQ 0x248(SP), AX			
  repro_test.go:73	0x53efe4		8400				TESTB AL, 0(AX)				
  repro_test.go:73	0x53efe6		488d9c2418020000		LEAQ 0x218(SP), BX			
  repro_test.go:73	0x53efee		b901000000			MOVL $0x1, CX				
  repro_test.go:73	0x53eff3		89cf				MOVL CX, DI				
  repro_test.go:73	0x53eff5		e84652faff			CALL testing.(*common).Fatal(SB)	
  repro_test.go:73	0x53effa		488b8c2460010000		MOVQ 0x160(SP), CX			
  repro_test.go:72	0x53f002		488d5c2460			LEAQ 0x60(SP), BX			
  repro_test.go:73	0x53f007		eb88				JMP 0x53ef91				
  repro_test.go:74	0x53f009		c9				LEAVE					
  repro_test.go:74	0x53f00a		c3				RET					
  repro_test.go:59	0x53f00b		4889442408			MOVQ AX, 0x8(SP)			
  repro_test.go:59	0x53f010		e82ba6f4ff			CALL runtime.morestack_noctxt.abi0(SB)	
  repro_test.go:59	0x53f015		488b442408			MOVQ 0x8(SP), AX			
  repro_test.go:59	0x53f01a		e981f7ffff			JMP carryselect.TestCarry(SB)		

TEXT carryselect.BenchmarkEq(SB) /home/exedev/crypto-audit/round4/issues/carry-select/repro_test.go
  repro_test.go:76	0x53f020		493b6610		CMPQ SP, 0x10(R14)				
  repro_test.go:76	0x53f024		0f8613010000		JBE 0x53f13d					
  repro_test.go:76	0x53f02a		55			PUSHQ BP					
  repro_test.go:76	0x53f02b		4889e5			MOVQ SP, BP					
  repro_test.go:76	0x53f02e		4883ec78		SUBQ $0x78, SP					
  repro_test.go:77	0x53f032		4889842488000000	MOVQ AX, 0x88(SP)				
  repro_test.go:77	0x53f03a		48c744243809000000	MOVQ $0x9, 0x38(SP)				
  repro_test.go:77	0x53f043		488d15a64f0000		LEAQ 0x4fa6(IP), DX				
  repro_test.go:77	0x53f04a		4889542430		MOVQ DX, 0x30(SP)				
  repro_test.go:77	0x53f04f		488d1552781700		LEAQ 0x177852(IP), DX				
  repro_test.go:77	0x53f056		4889542440		MOVQ DX, 0x40(SP)				
  repro_test.go:77	0x53f05b		48c744245009000000	MOVQ $0x9, 0x50(SP)				
  repro_test.go:77	0x53f064		488d158e4f0000		LEAQ 0x4f8e(IP), DX				
  repro_test.go:77	0x53f06b		4889542448		MOVQ DX, 0x48(SP)				
  repro_test.go:77	0x53f070		488d1539781700		LEAQ 0x177839(IP), DX				
  repro_test.go:77	0x53f077		4889542458		MOVQ DX, 0x58(SP)				
  repro_test.go:77	0x53f07c		488d542430		LEAQ 0x30(SP), DX				
  repro_test.go:77	0x53f081		31c9			XORL CX, CX					
  repro_test.go:77	0x53f083		eb29			JMP 0x53f0ae					
  repro_test.go:78	0x53f085		48895808		MOVQ BX, 0x8(AX)				
  repro_test.go:78	0x53f089		48895018		MOVQ DX, 0x18(AX)				
  repro_test.go:78	0x53f08d		4889c7			MOVQ AX, DI					
  repro_test.go:78	0x53f090		488b842488000000	MOVQ 0x88(SP), AX				
  repro_test.go:78	0x53f098		e883cdf9ff		CALL testing.(*B).Run(SB)			
  repro_test.go:77	0x53f09d		488b542470		MOVQ 0x70(SP), DX				
  repro_test.go:77	0x53f0a2		4883c218		ADDQ $0x18, DX					
  repro_test.go:77	0x53f0a6		488b4c2428		MOVQ 0x28(SP), CX				
  repro_test.go:77	0x53f0ab		48ffc1			INCQ CX						
  repro_test.go:77	0x53f0ae		4883f902		CMPQ CX, $0x2					
  repro_test.go:77	0x53f0b2		0f8d83000000		JGE 0x53f13b					
  repro_test.go:77	0x53f0b8		48894c2428		MOVQ CX, 0x28(SP)				
  repro_test.go:77	0x53f0bd		4889542470		MOVQ DX, 0x70(SP)				
  repro_test.go:77	0x53f0c2		488b7208		MOVQ 0x8(DX), SI				
  repro_test.go:77	0x53f0c6		4889742420		MOVQ SI, 0x20(SP)				
  repro_test.go:77	0x53f0cb		488b32			MOVQ 0(DX), SI					
  repro_test.go:77	0x53f0ce		4889742468		MOVQ SI, 0x68(SP)				
  repro_test.go:77	0x53f0d3		488b5210		MOVQ 0x10(DX), DX				
  repro_test.go:77	0x53f0d7		4889542460		MOVQ DX, 0x60(SP)				
  repro_test.go:78	0x53f0dc		b820000000		MOVL $0x20, AX					
  repro_test.go:78	0x53f0e1		488d1de8ec1500		LEAQ 0x15ece8(IP), BX				
  repro_test.go:78	0x53f0e8		b901000000		MOVL $0x1, CX					
  repro_test.go:78	0x53f0ed		e8eefeedff		CALL runtime.mallocgcSmallScanNoHeaderSC4(SB)	
  repro_test.go:78	0x53f0f2		488d1507130000		LEAQ carryselect.BenchmarkEq.func1(SB), DX	
  repro_test.go:78	0x53f0f9		488910			MOVQ DX, 0(AX)					
  repro_test.go:78	0x53f0fc		488b4c2420		MOVQ 0x20(SP), CX				
  repro_test.go:78	0x53f101		48894810		MOVQ CX, 0x10(AX)				
  repro_test.go:78	0x53f105		833d94ad1b0000		CMPL runtime.writeBarrier(SB), $0x0		
  repro_test.go:78	0x53f10c		7512			JNE 0x53f120					
  repro_test.go:78	0x53f10e		488b542460		MOVQ 0x60(SP), DX				
  repro_test.go:78	0x53f113		488b5c2468		MOVQ 0x68(SP), BX				
  repro_test.go:78	0x53f118		e968ffffff		JMP 0x53f085					
  repro_test.go:78	0x53f11d		0f1f00			NOPL 0(AX)					
  repro_test.go:78	0x53f120		e8bbbdf4ff		CALL runtime.gcWriteBarrier2(SB)		
  repro_test.go:78	0x53f125		488b5c2468		MOVQ 0x68(SP), BX				
  repro_test.go:78	0x53f12a		49891b			MOVQ BX, 0(R11)					
  repro_test.go:78	0x53f12d		488b542460		MOVQ 0x60(SP), DX				
  repro_test.go:78	0x53f132		49895308		MOVQ DX, 0x8(R11)				
  repro_test.go:78	0x53f136		e94affffff		JMP 0x53f085					
  repro_test.go:80	0x53f13b		c9			LEAVE						
  repro_test.go:80	0x53f13c		c3			RET						
  repro_test.go:76	0x53f13d		4889442408		MOVQ AX, 0x8(SP)				
  repro_test.go:76	0x53f142		e8f9a4f4ff		CALL runtime.morestack_noctxt.abi0(SB)		
  repro_test.go:76	0x53f147		488b442408		MOVQ 0x8(SP), AX				
  repro_test.go:76	0x53f14c		e9cffeffff		JMP carryselect.BenchmarkEq(SB)			

TEXT carryselect.BenchmarkAssign(SB) /home/exedev/crypto-audit/round4/issues/carry-select/repro_test.go
  repro_test.go:81	0x53f160		493b6610		CMPQ SP, 0x10(R14)				
  repro_test.go:81	0x53f164		0f8613010000		JBE 0x53f27d					
  repro_test.go:81	0x53f16a		55			PUSHQ BP					
  repro_test.go:81	0x53f16b		4889e5			MOVQ SP, BP					
  repro_test.go:81	0x53f16e		4883ec78		SUBQ $0x78, SP					
  repro_test.go:82	0x53f172		4889842488000000	MOVQ AX, 0x88(SP)				
  repro_test.go:82	0x53f17a		48c744243804000000	MOVQ $0x4, 0x38(SP)				
  repro_test.go:82	0x53f183		488d157b400000		LEAQ 0x407b(IP), DX				
  repro_test.go:82	0x53f18a		4889542430		MOVQ DX, 0x30(SP)				
  repro_test.go:82	0x53f18f		488d15f2761700		LEAQ 0x1776f2(IP), DX				
  repro_test.go:82	0x53f196		4889542440		MOVQ DX, 0x40(SP)				
  repro_test.go:82	0x53f19b		48c744245006000000	MOVQ $0x6, 0x50(SP)				
  repro_test.go:82	0x53f1a4		488d1513440000		LEAQ 0x4413(IP), DX				
  repro_test.go:82	0x53f1ab		4889542448		MOVQ DX, 0x48(SP)				
  repro_test.go:82	0x53f1b0		488d15d9761700		LEAQ 0x1776d9(IP), DX				
  repro_test.go:82	0x53f1b7		4889542458		MOVQ DX, 0x58(SP)				
  repro_test.go:82	0x53f1bc		488d542430		LEAQ 0x30(SP), DX				
  repro_test.go:82	0x53f1c1		31c9			XORL CX, CX					
  repro_test.go:82	0x53f1c3		eb29			JMP 0x53f1ee					
  repro_test.go:83	0x53f1c5		48895808		MOVQ BX, 0x8(AX)				
  repro_test.go:83	0x53f1c9		48895018		MOVQ DX, 0x18(AX)				
  repro_test.go:83	0x53f1cd		4889c7			MOVQ AX, DI					
  repro_test.go:83	0x53f1d0		488b842488000000	MOVQ 0x88(SP), AX				
  repro_test.go:83	0x53f1d8		e843ccf9ff		CALL testing.(*B).Run(SB)			
  repro_test.go:82	0x53f1dd		488b542470		MOVQ 0x70(SP), DX				
  repro_test.go:82	0x53f1e2		4883c218		ADDQ $0x18, DX					
  repro_test.go:82	0x53f1e6		488b4c2428		MOVQ 0x28(SP), CX				
  repro_test.go:82	0x53f1eb		48ffc1			INCQ CX						
  repro_test.go:82	0x53f1ee		4883f902		CMPQ CX, $0x2					
  repro_test.go:82	0x53f1f2		0f8d83000000		JGE 0x53f27b					
  repro_test.go:82	0x53f1f8		48894c2428		MOVQ CX, 0x28(SP)				
  repro_test.go:82	0x53f1fd		4889542470		MOVQ DX, 0x70(SP)				
  repro_test.go:82	0x53f202		488b7208		MOVQ 0x8(DX), SI				
  repro_test.go:82	0x53f206		4889742420		MOVQ SI, 0x20(SP)				
  repro_test.go:82	0x53f20b		488b32			MOVQ 0(DX), SI					
  repro_test.go:82	0x53f20e		4889742468		MOVQ SI, 0x68(SP)				
  repro_test.go:82	0x53f213		488b5210		MOVQ 0x10(DX), DX				
  repro_test.go:82	0x53f217		4889542460		MOVQ DX, 0x60(SP)				
  repro_test.go:83	0x53f21c		b820000000		MOVL $0x20, AX					
  repro_test.go:83	0x53f221		488d1d28eb1500		LEAQ 0x15eb28(IP), BX				
  repro_test.go:83	0x53f228		b901000000		MOVL $0x1, CX					
  repro_test.go:83	0x53f22d		e8aefdedff		CALL runtime.mallocgcSmallScanNoHeaderSC4(SB)	
  repro_test.go:83	0x53f232		488d1567120000		LEAQ carryselect.BenchmarkAssign.func1(SB), DX	
  repro_test.go:83	0x53f239		488910			MOVQ DX, 0(AX)					
  repro_test.go:83	0x53f23c		488b4c2420		MOVQ 0x20(SP), CX				
  repro_test.go:83	0x53f241		48894810		MOVQ CX, 0x10(AX)				
  repro_test.go:83	0x53f245		833d54ac1b0000		CMPL runtime.writeBarrier(SB), $0x0		
  repro_test.go:83	0x53f24c		7512			JNE 0x53f260					
  repro_test.go:83	0x53f24e		488b542460		MOVQ 0x60(SP), DX				
  repro_test.go:83	0x53f253		488b5c2468		MOVQ 0x68(SP), BX				
  repro_test.go:83	0x53f258		e968ffffff		JMP 0x53f1c5					
  repro_test.go:83	0x53f25d		0f1f00			NOPL 0(AX)					
  repro_test.go:83	0x53f260		e87bbcf4ff		CALL runtime.gcWriteBarrier2(SB)		
  repro_test.go:83	0x53f265		488b5c2468		MOVQ 0x68(SP), BX				
  repro_test.go:83	0x53f26a		49891b			MOVQ BX, 0(R11)					
  repro_test.go:83	0x53f26d		488b542460		MOVQ 0x60(SP), DX				
  repro_test.go:83	0x53f272		49895308		MOVQ DX, 0x8(R11)				
  repro_test.go:83	0x53f276		e94affffff		JMP 0x53f1c5					
  repro_test.go:85	0x53f27b		c9			LEAVE						
  repro_test.go:85	0x53f27c		c3			RET						
  repro_test.go:81	0x53f27d		4889442408		MOVQ AX, 0x8(SP)				
  repro_test.go:81	0x53f282		e8b9a3f4ff		CALL runtime.morestack_noctxt.abi0(SB)		
  repro_test.go:81	0x53f287		488b442408		MOVQ 0x8(SP), AX				
  repro_test.go:81	0x53f28c		e9cffeffff		JMP carryselect.BenchmarkAssign(SB)		

TEXT carryselect.BenchmarkNegBorrow(SB) /home/exedev/crypto-audit/round4/issues/carry-select/repro_test.go
  repro_test.go:86	0x53f2a0		493b6610		CMPQ SP, 0x10(R14)					
  repro_test.go:86	0x53f2a4		0f8613010000		JBE 0x53f3bd						
  repro_test.go:86	0x53f2aa		55			PUSHQ BP						
  repro_test.go:86	0x53f2ab		4889e5			MOVQ SP, BP						
  repro_test.go:86	0x53f2ae		4883ec78		SUBQ $0x78, SP						
  repro_test.go:87	0x53f2b2		4889842488000000	MOVQ AX, 0x88(SP)					
  repro_test.go:87	0x53f2ba		48c744243803000000	MOVQ $0x3, 0x38(SP)					
  repro_test.go:87	0x53f2c3		488d15373e0000		LEAQ 0x3e37(IP), DX					
  repro_test.go:87	0x53f2ca		4889542430		MOVQ DX, 0x30(SP)					
  repro_test.go:87	0x53f2cf		488d15e2751700		LEAQ 0x1775e2(IP), DX					
  repro_test.go:87	0x53f2d6		4889542440		MOVQ DX, 0x40(SP)					
  repro_test.go:87	0x53f2db		48c744245003000000	MOVQ $0x3, 0x50(SP)					
  repro_test.go:87	0x53f2e4		488d15193e0000		LEAQ 0x3e19(IP), DX					
  repro_test.go:87	0x53f2eb		4889542448		MOVQ DX, 0x48(SP)					
  repro_test.go:87	0x53f2f0		488d15c9751700		LEAQ 0x1775c9(IP), DX					
  repro_test.go:87	0x53f2f7		4889542458		MOVQ DX, 0x58(SP)					
  repro_test.go:87	0x53f2fc		488d542430		LEAQ 0x30(SP), DX					
  repro_test.go:87	0x53f301		31c9			XORL CX, CX						
  repro_test.go:87	0x53f303		eb29			JMP 0x53f32e						
  repro_test.go:88	0x53f305		48895808		MOVQ BX, 0x8(AX)					
  repro_test.go:88	0x53f309		48895018		MOVQ DX, 0x18(AX)					
  repro_test.go:88	0x53f30d		4889c7			MOVQ AX, DI						
  repro_test.go:88	0x53f310		488b842488000000	MOVQ 0x88(SP), AX					
  repro_test.go:88	0x53f318		e803cbf9ff		CALL testing.(*B).Run(SB)				
  repro_test.go:87	0x53f31d		488b542470		MOVQ 0x70(SP), DX					
  repro_test.go:87	0x53f322		4883c218		ADDQ $0x18, DX						
  repro_test.go:87	0x53f326		488b4c2428		MOVQ 0x28(SP), CX					
  repro_test.go:87	0x53f32b		48ffc1			INCQ CX							
  repro_test.go:87	0x53f32e		4883f902		CMPQ CX, $0x2						
  repro_test.go:87	0x53f332		0f8d83000000		JGE 0x53f3bb						
  repro_test.go:87	0x53f338		48894c2428		MOVQ CX, 0x28(SP)					
  repro_test.go:87	0x53f33d		4889542470		MOVQ DX, 0x70(SP)					
  repro_test.go:87	0x53f342		488b7208		MOVQ 0x8(DX), SI					
  repro_test.go:87	0x53f346		4889742420		MOVQ SI, 0x20(SP)					
  repro_test.go:87	0x53f34b		488b32			MOVQ 0(DX), SI						
  repro_test.go:87	0x53f34e		4889742468		MOVQ SI, 0x68(SP)					
  repro_test.go:87	0x53f353		488b5210		MOVQ 0x10(DX), DX					
  repro_test.go:87	0x53f357		4889542460		MOVQ DX, 0x60(SP)					
  repro_test.go:88	0x53f35c		b820000000		MOVL $0x20, AX						
  repro_test.go:88	0x53f361		488d1de8ea1500		LEAQ 0x15eae8(IP), BX					
  repro_test.go:88	0x53f368		b901000000		MOVL $0x1, CX						
  repro_test.go:88	0x53f36d		e86efcedff		CALL runtime.mallocgcSmallScanNoHeaderSC4(SB)		
  repro_test.go:88	0x53f372		488d1527120000		LEAQ carryselect.BenchmarkNegBorrow.func1(SB), DX	
  repro_test.go:88	0x53f379		488910			MOVQ DX, 0(AX)						
  repro_test.go:88	0x53f37c		488b4c2420		MOVQ 0x20(SP), CX					
  repro_test.go:88	0x53f381		48894810		MOVQ CX, 0x10(AX)					
  repro_test.go:88	0x53f385		833d14ab1b0000		CMPL runtime.writeBarrier(SB), $0x0			
  repro_test.go:88	0x53f38c		7512			JNE 0x53f3a0						
  repro_test.go:88	0x53f38e		488b542460		MOVQ 0x60(SP), DX					
  repro_test.go:88	0x53f393		488b5c2468		MOVQ 0x68(SP), BX					
  repro_test.go:88	0x53f398		e968ffffff		JMP 0x53f305						
  repro_test.go:88	0x53f39d		0f1f00			NOPL 0(AX)						
  repro_test.go:88	0x53f3a0		e83bbbf4ff		CALL runtime.gcWriteBarrier2(SB)			
  repro_test.go:88	0x53f3a5		488b5c2468		MOVQ 0x68(SP), BX					
  repro_test.go:88	0x53f3aa		49891b			MOVQ BX, 0(R11)						
  repro_test.go:88	0x53f3ad		488b542460		MOVQ 0x60(SP), DX					
  repro_test.go:88	0x53f3b2		49895308		MOVQ DX, 0x8(R11)					
  repro_test.go:88	0x53f3b6		e94affffff		JMP 0x53f305						
  repro_test.go:90	0x53f3bb		c9			LEAVE							
  repro_test.go:90	0x53f3bc		c3			RET							
  repro_test.go:86	0x53f3bd		4889442408		MOVQ AX, 0x8(SP)					
  repro_test.go:86	0x53f3c2		e879a2f4ff		CALL runtime.morestack_noctxt.abi0(SB)			
  repro_test.go:86	0x53f3c7		488b442408		MOVQ 0x8(SP), AX					
  repro_test.go:86	0x53f3cc		e9cffeffff		JMP carryselect.BenchmarkNegBorrow(SB)			

TEXT carryselect.TestDotSchedule(SB) /home/exedev/crypto-audit/round4/issues/carry-select/repro_test.go
  repro_test.go:92	0x53f3e0		4c8da42448fbffff		LEAQ 0xfffffb48(SP), R12			
  repro_test.go:92	0x53f3e8		4d3b6610			CMPQ R12, 0x10(R14)				
  repro_test.go:92	0x53f3ec		0f863f090000			JBE 0x53fd31					
  repro_test.go:92	0x53f3f2		55				PUSHQ BP					
  repro_test.go:92	0x53f3f3		4889e5				MOVQ SP, BP					
  repro_test.go:92	0x53f3f6		4881ec30050000			SUBQ $0x530, SP					
  rand.go:79		0x53f3fd		4889842440050000		MOVQ AX, 0x540(SP)				
  repro_test.go:93	0x53f405		90				NOPL						
  rand.go:52		0x53f406		90				NOPL						
  rand.go:56		0x53f407		488d0562671600			LEAQ 0x166762(IP), AX				
  rand.go:56		0x53f40e		e80decedff			CALL runtime.newobject(SB)			
  rand.go:56		0x53f413		4889842428050000		MOVQ AX, 0x528(SP)				
  rand.go:57		0x53f41b		bb03000000			MOVL $0x3, BX					
  rand.go:57		0x53f420		e81b78f9ff			CALL math/rand.(*rngSource).Seed(SB)		
  repro_test.go:93	0x53f425		90				NOPL						
  rand.go:79		0x53f426		488b0d03fc1800			MOVQ carryselect..typeAssert.2(SB), CX		
  rand.go:79		0x53f42d		488b11				MOVQ 0(CX), DX					
  rand.go:79		0x53f430		8b1dea681700			MOVL 0x1768ea(IP), BX				
  rand.go:79		0x53f436		eb03				JMP 0x53f43b					
  rand.go:79		0x53f438		4c89d3				MOVQ R10, BX					
  rand.go:79		0x53f43b		4989da				MOVQ BX, R10					
  rand.go:79		0x53f43e		4821d3				ANDQ DX, BX					
  rand.go:79		0x53f441		48c1e304			SHLQ $0x4, BX					
  rand.go:79		0x53f445		4c8b5c0b08			MOVQ 0x8(BX)(CX*1), R11				
  rand.go:79		0x53f44a		4c8d2557a41300			LEAQ 0x13a457(IP), R12				
  rand.go:79		0x53f451		4d39e3				CMPQ R11, R12					
  rand.go:79		0x53f454		7419				JE 0x53f46f					
  rand.go:79		0x53f456		49ffc2				INCQ R10					
  rand.go:79		0x53f459		4d85db				TESTQ R11, R11					
  rand.go:79		0x53f45c		75da				JNE 0x53f438					
  rand.go:79		0x53f45e		488d05cbfb1800			LEAQ carryselect..typeAssert.2(SB), AX		
  rand.go:79		0x53f465		4c89e3				MOVQ R12, BX					
  rand.go:79		0x53f468		e8f3b3edff			CALL runtime.typeAssert(SB)			
  rand.go:79		0x53f46d		eb05				JMP 0x53f474					
  rand.go:79		0x53f46f		488b440b10			MOVQ 0x10(BX)(CX*1), AX				
  rand.go:80		0x53f474		488d942470040000		LEAQ 0x470(SP), DX				
  rand.go:80		0x53f47c		440f113a			MOVUPS X15, 0(DX)				
  rand.go:80		0x53f480		440f117a10			MOVUPS X15, 0x10(DX)				
  rand.go:80		0x53f485		440f117a20			MOVUPS X15, 0x20(DX)				
  rand.go:80		0x53f48a		488d157f681700			LEAQ 0x17687f(IP), DX				
  rand.go:80		0x53f491		4889942470040000		MOVQ DX, 0x470(SP)				
  rand.go:80		0x53f499		488b942428050000		MOVQ 0x528(SP), DX				
  rand.go:80		0x53f4a1		4889942478040000		MOVQ DX, 0x478(SP)				
  rand.go:80		0x53f4a9		4889842480040000		MOVQ AX, 0x480(SP)				
  rand.go:80		0x53f4b1		4889942488040000		MOVQ DX, 0x488(SP)				
  repro_test.go:94	0x53f4b9		488d942498000000		LEAQ 0x98(SP), DX				
  repro_test.go:94	0x53f4c1		4c8d1550810100			LEAQ 0x18150(IP), R10				
  repro_test.go:94	0x53f4c8		41bb03000000			MOVL $0x3, R11					
  repro_test.go:94	0x53f4ce		450f1032			MOVUPS 0(R10), X14				
  repro_test.go:94	0x53f4d2		440f1132			MOVUPS X14, 0(DX)				
  repro_test.go:94	0x53f4d6		450f107210			MOVUPS 0x10(R10), X14				
  repro_test.go:94	0x53f4db		440f117210			MOVUPS X14, 0x10(DX)				
  repro_test.go:94	0x53f4e0		450f107220			MOVUPS 0x20(R10), X14				
  repro_test.go:94	0x53f4e5		440f117220			MOVUPS X14, 0x20(DX)				
  repro_test.go:94	0x53f4ea		450f107230			MOVUPS 0x30(R10), X14				
  repro_test.go:94	0x53f4ef		440f117230			MOVUPS X14, 0x30(DX)				
  repro_test.go:94	0x53f4f4		4983c240			ADDQ $0x40, R10					
  repro_test.go:94	0x53f4f8		4883c240			ADDQ $0x40, DX					
  repro_test.go:94	0x53f4fc		0f1f4000			NOPL 0(AX)					
  repro_test.go:94	0x53f500		41ffcb				DECL R11					
  repro_test.go:94	0x53f503		75c9				JNE 0x53f4ce					
  repro_test.go:94	0x53f505		450f1032			MOVUPS 0(R10), X14				
  repro_test.go:94	0x53f509		440f1132			MOVUPS X14, 0(DX)				
  repro_test.go:94	0x53f50d		450f107210			MOVUPS 0x10(R10), X14				
  repro_test.go:94	0x53f512		440f117210			MOVUPS X14, 0x10(DX)				
  repro_test.go:94	0x53f517		450f107220			MOVUPS 0x20(R10), X14				
  repro_test.go:94	0x53f51c		440f117220			MOVUPS X14, 0x20(DX)				
  repro_test.go:95	0x53f521		c684245004000000		MOVB $0x0, 0x450(SP)				
  repro_test.go:95	0x53f529		66440fd6bc2458040000		MOVQ X15, 0x458(SP)				
  repro_test.go:95	0x53f533		440f11bc2460040000		MOVUPS X15, 0x460(SP)				
  repro_test.go:95	0x53f53c		c684243004000000		MOVB $0x0, 0x430(SP)				
  repro_test.go:95	0x53f544		66440fd6bc2438040000		MOVQ X15, 0x438(SP)				
  repro_test.go:95	0x53f54e		440f11bc2440040000		MOVUPS X15, 0x440(SP)				
  int.go:90		0x53f557		48c784240002000001000000	MOVQ $0x1, 0x200(SP)				
  int.go:92		0x53f563		c684241004000000		MOVB $0x0, 0x410(SP)				
  int.go:92		0x53f56b		48c784242004000001000000	MOVQ $0x1, 0x420(SP)				
  int.go:92		0x53f577		48c784242804000001000000	MOVQ $0x1, 0x428(SP)				
  int.go:92		0x53f583		488dbc2400020000		LEAQ 0x200(SP), DI				
  int.go:92		0x53f58b		4889bc2418040000		MOVQ DI, 0x418(SP)				
  int.go:1245		0x53f593		488b842438040000		MOVQ 0x438(SP), AX				
  int.go:1245		0x53f59b		488b9c2440040000		MOVQ 0x440(SP), BX				
  int.go:1245		0x53f5a3		488b8c2448040000		MOVQ 0x448(SP), CX				
  int.go:1245		0x53f5ab		be01000000			MOVL $0x1, SI					
  int.go:1245		0x53f5b0		4189f0				MOVL SI, R8					
  int.go:1245		0x53f5b3		41b980000000			MOVL $0x80, R9					
  int.go:1245		0x53f5b9		e8e282ffff			CALL math/big.nat.lsh(SB)			
  int.go:1245		0x53f5be		48899c2440040000		MOVQ BX, 0x440(SP)				
  int.go:1245		0x53f5c6		48898c2448040000		MOVQ CX, 0x448(SP)				
  int.go:1245		0x53f5ce		4889842438040000		MOVQ AX, 0x438(SP)				
  int.go:1246		0x53f5d6		0fb6942410040000		MOVZX 0x410(SP), DX				
  int.go:1246		0x53f5de		88942430040000			MOVB DL, 0x430(SP)				
  int.go:90		0x53f5e5		48c78424f801000001000000	MOVQ $0x1, 0x1f8(SP)				
  int.go:92		0x53f5f1		c68424f003000000		MOVB $0x0, 0x3f0(SP)				
  int.go:92		0x53f5f9		48c784240004000001000000	MOVQ $0x1, 0x400(SP)				
  int.go:92		0x53f605		48c784240804000001000000	MOVQ $0x1, 0x408(SP)				
  int.go:92		0x53f611		488d9424f8010000		LEAQ 0x1f8(SP), DX				
  int.go:92		0x53f619		48899424f8030000		MOVQ DX, 0x3f8(SP)				
  repro_test.go:95	0x53f621		488d842450040000		LEAQ 0x450(SP), AX				
  repro_test.go:95	0x53f629		488d9c2430040000		LEAQ 0x430(SP), BX				
  repro_test.go:95	0x53f631		488d8c24f0030000		LEAQ 0x3f0(SP), CX				
  repro_test.go:95	0x53f639		e86266ffff			CALL math/big.(*Int).Sub(SB)			
  repro_test.go:95	0x53f63e		48898424a8030000		MOVQ AX, 0x3a8(SP)				
  repro_test.go:95	0x53f646		31c9				XORL CX, CX					
  repro_test.go:96	0x53f648		eb16				JMP 0x53f660					
  repro_test.go:96	0x53f64a		488b8c2490000000		MOVQ 0x90(SP), CX				
  repro_test.go:96	0x53f652		48ffc1				INCQ CX						
  repro_test.go:96	0x53f655		660f1f840000000000		NOPW 0(AX)(AX*1)				
  repro_test.go:96	0x53f65e		6690				NOPW						
  repro_test.go:96	0x53f660		4881f9e8030000			CMPQ CX, $0x3e8					
  repro_test.go:96	0x53f667		0f8db2060000			JGE 0x53fd1f					
  repro_test.go:96	0x53f66d		48898c2490000000		MOVQ CX, 0x90(SP)				
  repro_test.go:97	0x53f675		488d9424d0010000		LEAQ 0x1d0(SP), DX				
  repro_test.go:97	0x53f67d		440f113a			MOVUPS X15, 0(DX)				
  repro_test.go:97	0x53f681		440f117a10			MOVUPS X15, 0x10(DX)				
  repro_test.go:97	0x53f686		440f117a18			MOVUPS X15, 0x18(DX)				
  repro_test.go:97	0x53f68b		31c0				XORL AX, AX					
  repro_test.go:97	0x53f68d		eb04				JMP 0x53f693					
  repro_test.go:97	0x53f68f		488d4101			LEAQ 0x1(CX), AX				
  repro_test.go:97	0x53f693		4883f805			CMPQ AX, $0x5					
  repro_test.go:97	0x53f697		7d40				JGE 0x53f6d9					
  repro_test.go:97	0x53f699		48898424c8010000		MOVQ AX, 0x1c8(SP)				
  repro_test.go:97	0x53f6a1		488d842470040000		LEAQ 0x470(SP), AX				
  repro_test.go:97	0x53f6a9		e87272f9ff			CALL math/rand.(*Rand).Uint64(SB)		
  repro_test.go:97	0x53f6ae		488b8c24c8010000		MOVQ 0x1c8(SP), CX				
  repro_test.go:97	0x53f6b6		488984ccd0010000		MOVQ AX, 0x1d0(SP)(CX*8)			
  repro_test.go:97	0x53f6be		488b942490000000		MOVQ 0x90(SP), DX				
  repro_test.go:97	0x53f6c6		4885d2				TESTQ DX, DX					
  repro_test.go:97	0x53f6c9		75c4				JNE 0x53f68f					
  repro_test.go:97	0x53f6cb		48c784ccd0010000ffffffff	MOVQ $-0x1, 0x1d0(SP)(CX*8)			
  repro_test.go:97	0x53f6d7		ebb6				JMP 0x53f68f					
  repro_test.go:98	0x53f6d9		488d942480030000		LEAQ 0x380(SP), DX				
  repro_test.go:98	0x53f6e1		440f113a			MOVUPS X15, 0(DX)				
  repro_test.go:98	0x53f6e5		440f117a10			MOVUPS X15, 0x10(DX)				
  repro_test.go:98	0x53f6ea		440f117a18			MOVUPS X15, 0x18(DX)				
  repro_test.go:99	0x53f6ef		488d942458020000		LEAQ 0x258(SP), DX				
  repro_test.go:99	0x53f6f7		488db42498000000		LEAQ 0x98(SP), SI				
  repro_test.go:99	0x53f6ff		bf03000000			MOVL $0x3, DI					
  repro_test.go:99	0x53f704		440f1036			MOVUPS 0(SI), X14				
  repro_test.go:99	0x53f708		440f1132			MOVUPS X14, 0(DX)				
  repro_test.go:99	0x53f70c		440f107610			MOVUPS 0x10(SI), X14				
  repro_test.go:99	0x53f711		440f117210			MOVUPS X14, 0x10(DX)				
  repro_test.go:99	0x53f716		440f107620			MOVUPS 0x20(SI), X14				
  repro_test.go:99	0x53f71b		440f117220			MOVUPS X14, 0x20(DX)				
  repro_test.go:99	0x53f720		440f107630			MOVUPS 0x30(SI), X14				
  repro_test.go:99	0x53f725		440f117230			MOVUPS X14, 0x30(DX)				
  repro_test.go:99	0x53f72a		4883c640			ADDQ $0x40, SI					
  repro_test.go:99	0x53f72e		4883c240			ADDQ $0x40, DX					
  repro_test.go:99	0x53f732		ffcf				DECL DI						
  repro_test.go:99	0x53f734		75ce				JNE 0x53f704					
  repro_test.go:99	0x53f736		440f1036			MOVUPS 0(SI), X14				
  repro_test.go:99	0x53f73a		440f1132			MOVUPS X14, 0(DX)				
  repro_test.go:99	0x53f73e		440f107610			MOVUPS 0x10(SI), X14				
  repro_test.go:99	0x53f743		440f117210			MOVUPS X14, 0x10(DX)				
  repro_test.go:99	0x53f748		440f107620			MOVUPS 0x20(SI), X14				
  repro_test.go:99	0x53f74d		440f117220			MOVUPS X14, 0x20(DX)				
  repro_test.go:99	0x53f752		488d942458020000		LEAQ 0x258(SP), DX				
  repro_test.go:99	0x53f75a		31c0				XORL AX, AX					
  repro_test.go:99	0x53f75c		eb42				JMP 0x53f7a0					
  repro_test.go:99	0x53f75e		488b842468030000		MOVQ 0x368(SP), AX				
  repro_test.go:99	0x53f766		4889c3				MOVQ AX, BX					
  repro_test.go:99	0x53f769		488b8c24a8030000		MOVQ 0x3a8(SP), CX				
  repro_test.go:99	0x53f771		e84a6effff			CALL math/big.(*Int).And(SB)			
  repro_test.go:99	0x53f776		488b9424c0010000		MOVQ 0x1c0(SP), DX				
  repro_test.go:99	0x53f77e		488984d480030000		MOVQ AX, 0x380(SP)(DX*8)			
  repro_test.go:99	0x53f786		488bb424c0040000		MOVQ 0x4c0(SP), SI				
  repro_test.go:99	0x53f78e		4883c630			ADDQ $0x30, SI					
  repro_test.go:99	0x53f792		488d4201			LEAQ 0x1(DX), AX				
  repro_test.go:99	0x53f796		4889f2				MOVQ SI, DX					
  repro_test.go:99	0x53f799		0f1f8000000000			NOPL 0(AX)					
  repro_test.go:99	0x53f7a0		4883f805			CMPQ AX, $0x5					
  repro_test.go:99	0x53f7a4		0f8da5010000			JGE 0x53f94f					
  repro_test.go:99	0x53f7aa		48898424c0010000		MOVQ AX, 0x1c0(SP)				
  repro_test.go:99	0x53f7b2		48899424c0040000		MOVQ DX, 0x4c0(SP)				
  repro_test.go:99	0x53f7ba		488db42488010000		LEAQ 0x188(SP), SI				
  repro_test.go:99	0x53f7c2		440f1032			MOVUPS 0(DX), X14				
  repro_test.go:99	0x53f7c6		440f1136			MOVUPS X14, 0(SI)				
  repro_test.go:99	0x53f7ca		440f107210			MOVUPS 0x10(DX), X14				
  repro_test.go:99	0x53f7cf		440f117610			MOVUPS X14, 0x10(SI)				
  repro_test.go:99	0x53f7d4		440f107220			MOVUPS 0x20(DX), X14				
  repro_test.go:99	0x53f7d9		440f117620			MOVUPS X14, 0x20(SI)				
  repro_test.go:99	0x53f7de		b820000000			MOVL $0x20, AX					
  repro_test.go:99	0x53f7e3		488d1d3e1a1600			LEAQ 0x161a3e(IP), BX				
  repro_test.go:99	0x53f7ea		b901000000			MOVL $0x1, CX					
  repro_test.go:99	0x53f7ef		e8ecf7edff			CALL runtime.mallocgcSmallScanNoHeaderSC4(SB)	
  repro_test.go:99	0x53f7f4		4889842468030000		MOVQ AX, 0x368(SP)				
  repro_test.go:99	0x53f7fc		31c9				XORL CX, CX					
  repro_test.go:99	0x53f7fe		6690				NOPW						
  repro_test.go:99	0x53f800		eb7e				JMP 0x53f880					
  repro_test.go:99	0x53f802		488bbcf4d0010000		MOVQ 0x1d0(SP)(SI*8), DI			
  int.go:72		0x53f80a		31c0				XORL AX, AX					
  int.go:72		0x53f80c		31db				XORL BX, BX					
  int.go:72		0x53f80e		89d9				MOVL BX, CX					
  int.go:72		0x53f810		e82b73ffff			CALL math/big.nat.setUint64(SB)			
  int.go:72		0x53f815		48899c2418050000		MOVQ BX, 0x518(SP)				
  int.go:72		0x53f81d		48898c2420050000		MOVQ CX, 0x520(SP)				
  int.go:72		0x53f825		4889842410050000		MOVQ AX, 0x510(SP)				
  int.go:73		0x53f82d		c684240805000000		MOVB $0x0, 0x508(SP)				
  int.go:185		0x53f835		488d8424d0030000		LEAQ 0x3d0(SP), AX				
  int.go:185		0x53f83d		31db				XORL BX, BX					
  int.go:185		0x53f83f		488d8c24b0030000		LEAQ 0x3b0(SP), CX				
  int.go:185		0x53f847		488dbc2408050000		LEAQ 0x508(SP), DI				
  int.go:185		0x53f84f		e82c66ffff			CALL math/big.(*Int).mul(SB)			
  repro_test.go:99	0x53f854		488b842468030000		MOVQ 0x368(SP), AX				
  repro_test.go:99	0x53f85c		4889c3				MOVQ AX, BX					
  repro_test.go:99	0x53f85f		488d8c24d0030000		LEAQ 0x3d0(SP), CX				
  repro_test.go:99	0x53f867		e85462ffff			CALL math/big.(*Int).Add(SB)			
  repro_test.go:99	0x53f86c		488b8c24b8010000		MOVQ 0x1b8(SP), CX				
  repro_test.go:99	0x53f874		4883c102			ADDQ $0x2, CX					
  repro_test.go:99	0x53f878		0f1f840000000000		NOPL 0(AX)(AX*1)				
  repro_test.go:99	0x53f880		4883f906			CMPQ CX, $0x6					
  repro_test.go:99	0x53f884		0f8dd4feffff			JGE 0x53f75e					
  repro_test.go:99	0x53f88a		c68424d003000000		MOVB $0x0, 0x3d0(SP)				
  repro_test.go:99	0x53f892		66440fd6bc24d8030000		MOVQ X15, 0x3d8(SP)				
  repro_test.go:99	0x53f89c		440f11bc24e0030000		MOVUPS X15, 0x3e0(SP)				
  repro_test.go:99	0x53f8a5		c68424b003000000		MOVB $0x0, 0x3b0(SP)				
  repro_test.go:99	0x53f8ad		66440fd6bc24b8030000		MOVQ X15, 0x3b8(SP)				
  repro_test.go:99	0x53f8b7		440f11bc24c0030000		MOVUPS X15, 0x3c0(SP)				
  repro_test.go:99	0x53f8c0		488b94cc88010000		MOVQ 0x188(SP)(CX*8), DX			
  repro_test.go:99	0x53f8c8		4883fa05			CMPQ DX, $0x5					
  repro_test.go:99	0x53f8cc		0f8359040000			JAE 0x53fd2b					
  repro_test.go:99	0x53f8d2		48898c24b8010000		MOVQ CX, 0x1b8(SP)				
  repro_test.go:99	0x53f8da		488bbcd4d0010000		MOVQ 0x1d0(SP)(DX*8), DI			
  int.go:72		0x53f8e2		31c0				XORL AX, AX					
  int.go:72		0x53f8e4		31db				XORL BX, BX					
  int.go:72		0x53f8e6		89d9				MOVL BX, CX					
  int.go:72		0x53f8e8		e85372ffff			CALL math/big.nat.setUint64(SB)			
  int.go:72		0x53f8ed		48899c24c0030000		MOVQ BX, 0x3c0(SP)				
  int.go:72		0x53f8f5		48898c24c8030000		MOVQ CX, 0x3c8(SP)				
  int.go:72		0x53f8fd		48898424b8030000		MOVQ AX, 0x3b8(SP)				
  int.go:73		0x53f905		c68424b003000000		MOVB $0x0, 0x3b0(SP)				
  repro_test.go:99	0x53f90d		c684240805000000		MOVB $0x0, 0x508(SP)				
  repro_test.go:99	0x53f915		66440fd6bc2410050000		MOVQ X15, 0x510(SP)				
  repro_test.go:99	0x53f91f		440f11bc2418050000		MOVUPS X15, 0x518(SP)				
  repro_test.go:99	0x53f928		488b9424b8010000		MOVQ 0x1b8(SP), DX				
  repro_test.go:99	0x53f930		488bb4d490010000		MOVQ 0x190(SP)(DX*8), SI			
  repro_test.go:99	0x53f938		0f1f840000000000		NOPL 0(AX)(AX*1)				
  repro_test.go:99	0x53f940		4883fe05			CMPQ SI, $0x5					
  repro_test.go:99	0x53f944		0f82b8feffff			JB 0x53f802					
  repro_test.go:99	0x53f94a		e9d7030000			JMP 0x53fd26					
  repro_test.go:100	0x53f94f		488d542468			LEAQ 0x68(SP), DX				
  repro_test.go:100	0x53f954		440f113a			MOVUPS X15, 0(DX)				
  repro_test.go:100	0x53f958		440f117a10			MOVUPS X15, 0x10(DX)				
  repro_test.go:100	0x53f95d		440f117a18			MOVUPS X15, 0x18(DX)				
  repro_test.go:100	0x53f962		31c0				XORL AX, AX					
  repro_test.go:100	0x53f964		eb1b				JMP 0x53f981					
  repro_test.go:100	0x53f966		488bb42450030000		MOVQ 0x350(SP), SI				
  repro_test.go:100	0x53f96e		4831d6				XORQ DX, SI					
  repro_test.go:100	0x53f971		488b842458030000		MOVQ 0x358(SP), AX				
  repro_test.go:100	0x53f979		488974c468			MOVQ SI, 0x68(SP)(AX*8)				
  repro_test.go:100	0x53f97e		48ffc0				INCQ AX						
  repro_test.go:100	0x53f981		4883f805			CMPQ AX, $0x5					
  repro_test.go:100	0x53f985		0f8d3a020000			JGE 0x53fbc5					
  repro_test.go:100	0x53f98b		488b94c480030000		MOVQ 0x380(SP)(AX*8), DX			
  int.go:524		0x53f993		48837a1000			CMPQ 0x10(DX), $0x0				
  int.go:501		0x53f998		7504				JNE 0x53f99e					
  int.go:501		0x53f99a		31d2				XORL DX, DX					
  int.go:524		0x53f99c		eb07				JMP 0x53f9a5					
  int.go:524		0x53f99e		488b5208			MOVQ 0x8(DX), DX				
  int.go:504		0x53f9a2		488b12				MOVQ 0(DX), DX					
  repro_test.go:100	0x53f9a5		c68424e804000000		MOVB $0x0, 0x4e8(SP)				
  repro_test.go:100	0x53f9ad		66440fd6bc24f0040000		MOVQ X15, 0x4f0(SP)				
  repro_test.go:100	0x53f9b7		440f11bc24f8040000		MOVUPS X15, 0x4f8(SP)				
  repro_test.go:100	0x53f9c0		c68424c804000000		MOVB $0x0, 0x4c8(SP)				
  repro_test.go:100	0x53f9c8		66440fd6bc24d0040000		MOVQ X15, 0x4d0(SP)				
  repro_test.go:100	0x53f9d2		440f11bc24d8040000		MOVUPS X15, 0x4d8(SP)				
  repro_test.go:100	0x53f9db		488d7004			LEAQ 0x4(AX), SI				
  repro_test.go:100	0x53f9df		4889c1				MOVQ AX, CX					
  repro_test.go:100	0x53f9e2		48b8cdcccccccccccccc		MOVQ $0xcccccccccccccccd, AX			
  repro_test.go:100	0x53f9ec		4889d3				MOVQ DX, BX					
  repro_test.go:100	0x53f9ef		48f7e6				MULQ SI						
  repro_test.go:100	0x53f9f2		48c1ea02			SHRQ $0x2, DX					
  repro_test.go:100	0x53f9f6		4885d2				TESTQ DX, DX					
  repro_test.go:100	0x53f9f9		ba00000000			MOVL $0x0, DX					
  repro_test.go:100	0x53f9fe		be05000000			MOVL $0x5, SI					
  repro_test.go:100	0x53fa03		480f45d6			CMOVNE SI, DX					
  repro_test.go:100	0x53fa07		4889cf				MOVQ CX, DI					
  repro_test.go:100	0x53fa0a		4829d1				SUBQ DX, CX					
  repro_test.go:100	0x53fa0d		488d5104			LEAQ 0x4(CX), DX				
  repro_test.go:100	0x53fa11		4883fa05			CMPQ DX, $0x5					
  repro_test.go:100	0x53fa15		0f8306030000			JAE 0x53fd21					
  repro_test.go:100	0x53fa1b		4889bc2458030000		MOVQ DI, 0x358(SP)				
  repro_test.go:100	0x53fa23		48899c2450030000		MOVQ BX, 0x350(SP)				
  repro_test.go:100	0x53fa2b		488b94cca0030000		MOVQ 0x3a0(SP)(CX*8), DX			
  int.go:97		0x53fa33		4c8d8424c8040000		LEAQ 0x4c8(SP), R8				
  int.go:97		0x53fa3b		0f1f440000			NOPL 0(AX)(AX*1)				
  int.go:97		0x53fa40		4c39c2				CMPQ DX, R8					
  int.go:97		0x53fa43		0f8448010000			JE 0x53fb91					
  repro_test.go:100	0x53fa49		4889942478030000		MOVQ DX, 0x378(SP)				
  int.go:98		0x53fa51		488b4a10			MOVQ 0x10(DX), CX				
  int.go:98		0x53fa55		4c8b4a08			MOVQ 0x8(DX), R9				
  nat.go:57		0x53fa59		4885c9				TESTQ CX, CX					
  nat.go:57		0x53fa5c		750d				JNE 0x53fa6b					
  nat.go:57		0x53fa5e		31c0				XORL AX, AX					
  nat.go:57		0x53fa60		4531d2				XORL R10, R10					
  nat.go:57		0x53fa63		4531db				XORL R11, R11					
  nat.go:92		0x53fa66		e9a0000000			JMP 0x53fb0b					
  int.go:98		0x53fa6b		48894c2460			MOVQ CX, 0x60(SP)				
  int.go:98		0x53fa70		4c898c2470030000		MOVQ R9, 0x370(SP)				
  nat.go:60		0x53fa78		4883f901			CMPQ CX, $0x1					
  nat.go:60		0x53fa7c		7545				JNE 0x53fac3					
  nat.go:62		0x53fa7e		488d05e3841500			LEAQ 0x1584e3(IP), AX				
  nat.go:62		0x53fa85		bb01000000			MOVL $0x1, BX					
  nat.go:62		0x53fa8a		89d9				MOVL BX, CX					
  nat.go:62		0x53fa8c		e80f6bf4ff			CALL runtime.makeslice(SB)			
  nat.go:93		0x53fa91		488b4c2460			MOVQ 0x60(SP), CX				
  int.go:99		0x53fa96		488b942478030000		MOVQ 0x378(SP), DX				
  int.go:99		0x53fa9e		be05000000			MOVL $0x5, SI					
  repro_test.go:100	0x53faa3		4c8d8424c8040000		LEAQ 0x4c8(SP), R8				
  nat.go:93		0x53faab		4c8b8c2470030000		MOVQ 0x370(SP), R9				
  nat.go:92		0x53fab3		4989c2				MOVQ AX, R10					
  nat.go:92		0x53fab6		41bb01000000			MOVL $0x1, R11					
  nat.go:92		0x53fabc		b801000000			MOVL $0x1, AX					
  nat.go:92		0x53fac1		eb48				JMP 0x53fb0b					
  nat.go:67		0x53fac3		488d5104			LEAQ 0x4(CX), DX				
  nat.go:67		0x53fac7		4889542450			MOVQ DX, 0x50(SP)				
  nat.go:67		0x53facc		488d0595841500			LEAQ 0x158495(IP), AX				
  nat.go:67		0x53fad3		4889cb				MOVQ CX, BX					
  nat.go:67		0x53fad6		4889d1				MOVQ DX, CX					
  nat.go:67		0x53fad9		e8c26af4ff			CALL runtime.makeslice(SB)			
  nat.go:93		0x53fade		488b4c2460			MOVQ 0x60(SP), CX				
  int.go:99		0x53fae3		488b942478030000		MOVQ 0x378(SP), DX				
  int.go:99		0x53faeb		be05000000			MOVL $0x5, SI					
  repro_test.go:100	0x53faf0		4c8d8424c8040000		LEAQ 0x4c8(SP), R8				
  nat.go:93		0x53faf8		4c8b8c2470030000		MOVQ 0x370(SP), R9				
  nat.go:92		0x53fb00		4989c2				MOVQ AX, R10					
  nat.go:92		0x53fb03		4c8b5c2450			MOVQ 0x50(SP), R11				
  nat.go:92		0x53fb08		4889c8				MOVQ CX, AX					
  nat.go:93		0x53fb0b		4839c8				CMPQ AX, CX					
  nat.go:93		0x53fb0e		4989c4				MOVQ AX, R12					
  nat.go:93		0x53fb11		480f4fc1			CMOVG CX, AX					
  nat.go:93		0x53fb15		4d39ca				CMPQ R10, R9					
  nat.go:93		0x53fb18		7455				JE 0x53fb6f					
  nat.go:92		0x53fb1a		4c895c2458			MOVQ R11, 0x58(SP)				
  nat.go:92		0x53fb1f		4c89a42448030000		MOVQ R12, 0x348(SP)				
  nat.go:92		0x53fb27		4c89942460030000		MOVQ R10, 0x360(SP)				
  nat.go:93		0x53fb2f		48c1e003			SHLQ $0x3, AX					
  nat.go:93		0x53fb33		4c89cb				MOVQ R9, BX					
  nat.go:93		0x53fb36		4889c1				MOVQ AX, CX					
  nat.go:93		0x53fb39		4c89d0				MOVQ R10, AX					
  nat.go:93		0x53fb3c		0f1f4000			NOPL 0(AX)					
  nat.go:93		0x53fb40		e8dbbaf4ff			CALL runtime.memmove(SB)			
  int.go:99		0x53fb45		488b942478030000		MOVQ 0x378(SP), DX				
  int.go:99		0x53fb4d		be05000000			MOVL $0x5, SI					
  repro_test.go:100	0x53fb52		4c8d8424c8040000		LEAQ 0x4c8(SP), R8				
  int.go:98		0x53fb5a		4c8b942460030000		MOVQ 0x360(SP), R10				
  int.go:98		0x53fb62		4c8b5c2458			MOVQ 0x58(SP), R11				
  int.go:98		0x53fb67		4c8ba42448030000		MOVQ 0x348(SP), R12				
  int.go:98		0x53fb6f		4c89a424d8040000		MOVQ R12, 0x4d8(SP)				
  int.go:98		0x53fb77		4c899c24e0040000		MOVQ R11, 0x4e0(SP)				
  int.go:98		0x53fb7f		4c899424d0040000		MOVQ R10, 0x4d0(SP)				
  int.go:99		0x53fb87		0fb612				MOVZX 0(DX), DX					
  int.go:99		0x53fb8a		889424c8040000			MOVB DL, 0x4c8(SP)				
  repro_test.go:100	0x53fb91		488d8424e8040000		LEAQ 0x4e8(SP), AX				
  repro_test.go:100	0x53fb99		4c89c3				MOVQ R8, BX					
  repro_test.go:100	0x53fb9c		b940000000			MOVL $0x40, CX					
  repro_test.go:100	0x53fba1		e8ba68ffff			CALL math/big.(*Int).Rsh(SB)			
  int.go:524		0x53fba6		4883781000			CMPQ 0x10(AX), $0x0				
  int.go:501		0x53fbab		7507				JNE 0x53fbb4					
  int.go:501		0x53fbad		31d2				XORL DX, DX					
  int.go:524		0x53fbaf		e9b2fdffff			JMP 0x53f966					
  int.go:524		0x53fbb4		488b5008			MOVQ 0x8(AX), DX				
  int.go:504		0x53fbb8		488b12				MOVQ 0(DX), DX					
  int.go:504		0x53fbbb		0f1f440000			NOPL 0(AX)(AX*1)				
  int.go:524		0x53fbc0		e9a1fdffff			JMP 0x53f966					
  repro_test.go:101	0x53fbc5		4889e0				MOVQ SP, AX					
  repro_test.go:101	0x53fbc8		488d8c24d0010000		LEAQ 0x1d0(SP), CX				
  repro_test.go:101	0x53fbd0		440f1031			MOVUPS 0(CX), X14				
  repro_test.go:101	0x53fbd4		440f1130			MOVUPS X14, 0(AX)				
  repro_test.go:101	0x53fbd8		440f107110			MOVUPS 0x10(CX), X14				
  repro_test.go:101	0x53fbdd		440f117010			MOVUPS X14, 0x10(AX)				
  repro_test.go:101	0x53fbe2		440f107118			MOVUPS 0x18(CX), X14				
  repro_test.go:101	0x53fbe7		440f117018			MOVUPS X14, 0x18(AX)				
  repro_test.go:101	0x53fbec		e82fdbffff			CALL carryselect.DotSchedule(SB)		
  repro_test.go:101	0x53fbf1		488d842430020000		LEAQ 0x230(SP), AX				
  repro_test.go:101	0x53fbf9		488d4c2428			LEAQ 0x28(SP), CX				
  repro_test.go:101	0x53fbfe		440f1031			MOVUPS 0(CX), X14				
  repro_test.go:101	0x53fc02		440f1130			MOVUPS X14, 0(AX)				
  repro_test.go:101	0x53fc06		440f107110			MOVUPS 0x10(CX), X14				
  repro_test.go:101	0x53fc0b		440f117010			MOVUPS X14, 0x10(AX)				
  repro_test.go:101	0x53fc10		440f107118			MOVUPS 0x18(CX), X14				
  repro_test.go:101	0x53fc15		440f117018			MOVUPS X14, 0x18(AX)				
  repro_test.go:101	0x53fc1a		488d5c2468			LEAQ 0x68(SP), BX				
  repro_test.go:101	0x53fc1f		b928000000			MOVL $0x28, CX					
  repro_test.go:101	0x53fc24		e81730ecff			CALL runtime.memequal(SB)			
  repro_test.go:101	0x53fc29		84c0				TESTL AL, AL					
  repro_test.go:101	0x53fc2b		7507				JNE 0x53fc34					
  repro_test.go:101	0x53fc2d		b801000000			MOVL $0x1, AX					
  repro_test.go:101	0x53fc32		eb6c				JMP 0x53fca0					
  repro_test.go:101	0x53fc34		4889e0				MOVQ SP, AX					
  repro_test.go:101	0x53fc37		488d8c24d0010000		LEAQ 0x1d0(SP), CX				
  repro_test.go:101	0x53fc3f		440f1031			MOVUPS 0(CX), X14				
  repro_test.go:101	0x53fc43		440f1130			MOVUPS X14, 0(AX)				
  repro_test.go:101	0x53fc47		440f107110			MOVUPS 0x10(CX), X14				
  repro_test.go:101	0x53fc4c		440f117010			MOVUPS X14, 0x10(AX)				
  repro_test.go:101	0x53fc51		440f107118			MOVUPS 0x18(CX), X14				
  repro_test.go:101	0x53fc56		440f117018			MOVUPS X14, 0x18(AX)				
  repro_test.go:101	0x53fc5b		0f1f440000			NOPL 0(AX)(AX*1)				
  repro_test.go:101	0x53fc60		e81bddffff			CALL carryselect.DotBarrier(SB)			
  repro_test.go:101	0x53fc65		488d842408020000		LEAQ 0x208(SP), AX				
  repro_test.go:101	0x53fc6d		488d4c2428			LEAQ 0x28(SP), CX				
  repro_test.go:101	0x53fc72		440f1031			MOVUPS 0(CX), X14				
  repro_test.go:101	0x53fc76		440f1130			MOVUPS X14, 0(AX)				
  repro_test.go:101	0x53fc7a		440f107110			MOVUPS 0x10(CX), X14				
  repro_test.go:101	0x53fc7f		440f117010			MOVUPS X14, 0x10(AX)				
  repro_test.go:101	0x53fc84		440f107118			MOVUPS 0x18(CX), X14				
  repro_test.go:101	0x53fc89		440f117018			MOVUPS X14, 0x18(AX)				
  repro_test.go:101	0x53fc8e		488d5c2468			LEAQ 0x68(SP), BX				
  repro_test.go:101	0x53fc93		b928000000			MOVL $0x28, CX					
  repro_test.go:101	0x53fc98		e8a32fecff			CALL runtime.memequal(SB)			
  repro_test.go:101	0x53fc9d		83f001				XORL $0x1, AX					
  repro_test.go:101	0x53fca0		84c0				TESTL AL, AL					
  repro_test.go:101	0x53fca2		0f84a2f9ffff			JE 0x53f64a					
  repro_test.go:101	0x53fca8		488d8c24a0040000		LEAQ 0x4a0(SP), CX				
  repro_test.go:101	0x53fcb0		440f1139			MOVUPS X15, 0(CX)				
  repro_test.go:101	0x53fcb4		440f117910			MOVUPS X15, 0x10(CX)				
  repro_test.go:101	0x53fcb9		488d0de8781500			LEAQ 0x1578e8(IP), CX				
  repro_test.go:101	0x53fcc0		48898c24a0040000		MOVQ CX, 0x4a0(SP)				
  repro_test.go:101	0x53fcc8		488d0d81230100			LEAQ 0x12381(IP), CX				
  repro_test.go:101	0x53fccf		48898c24a8040000		MOVQ CX, 0x4a8(SP)				
  repro_test.go:101	0x53fcd7		488b842490000000		MOVQ 0x90(SP), AX				
  repro_test.go:101	0x53fcdf		90				NOPL						
  repro_test.go:101	0x53fce0		e87b31f4ff			CALL runtime.convT64(SB)			
  repro_test.go:101	0x53fce5		488d0dfc7a1500			LEAQ 0x157afc(IP), CX				
  repro_test.go:101	0x53fcec		48898c24b0040000		MOVQ CX, 0x4b0(SP)				
  repro_test.go:101	0x53fcf4		48898424b8040000		MOVQ AX, 0x4b8(SP)				
  repro_test.go:101	0x53fcfc		488b842440050000		MOVQ 0x540(SP), AX				
  repro_test.go:101	0x53fd04		8400				TESTB AL, 0(AX)					
  repro_test.go:101	0x53fd06		488d9c24a0040000		LEAQ 0x4a0(SP), BX				
  repro_test.go:101	0x53fd0e		b902000000			MOVL $0x2, CX					
  repro_test.go:101	0x53fd13		89cf				MOVL CX, DI					
  repro_test.go:101	0x53fd15		e82645faff			CALL testing.(*common).Fatal(SB)		
  repro_test.go:101	0x53fd1a		e92bf9ffff			JMP 0x53f64a					
  repro_test.go:103	0x53fd1f		c9				LEAVE						
  repro_test.go:103	0x53fd20		c3				RET						
  repro_test.go:100	0x53fd21		e85ab5f4ff			CALL runtime.panicBounds(SB)			
  repro_test.go:99	0x53fd26		e855b5f4ff			CALL runtime.panicBounds(SB)			
  repro_test.go:99	0x53fd2b		e850b5f4ff			CALL runtime.panicBounds(SB)			
  repro_test.go:99	0x53fd30		90				NOPL						
  repro_test.go:92	0x53fd31		4889442408			MOVQ AX, 0x8(SP)				
  repro_test.go:92	0x53fd36		e80599f4ff			CALL runtime.morestack_noctxt.abi0(SB)		
  repro_test.go:92	0x53fd3b		488b442408			MOVQ 0x8(SP), AX				
  repro_test.go:92	0x53fd40		e99bf6ffff			JMP carryselect.TestDotSchedule(SB)		

TEXT carryselect.BenchmarkDot(SB) /home/exedev/crypto-audit/round4/issues/carry-select/repro_test.go
  repro_test.go:104	0x53fd60		493b6610		CMPQ SP, 0x10(R14)				
  repro_test.go:104	0x53fd64		0f8613010000		JBE 0x53fe7d					
  repro_test.go:104	0x53fd6a		55			PUSHQ BP					
  repro_test.go:104	0x53fd6b		4889e5			MOVQ SP, BP					
  repro_test.go:104	0x53fd6e		4883ec78		SUBQ $0x78, SP					
  repro_test.go:105	0x53fd72		4889842488000000	MOVQ AX, 0x88(SP)				
  repro_test.go:105	0x53fd7a		48c744243808000000	MOVQ $0x8, 0x38(SP)				
  repro_test.go:105	0x53fd83		488d15b23e0000		LEAQ 0x3eb2(IP), DX				
  repro_test.go:105	0x53fd8a		4889542430		MOVQ DX, 0x30(SP)				
  repro_test.go:105	0x53fd8f		488d150a6b1700		LEAQ 0x176b0a(IP), DX				
  repro_test.go:105	0x53fd96		4889542440		MOVQ DX, 0x40(SP)				
  repro_test.go:105	0x53fd9b		48c744245007000000	MOVQ $0x7, 0x50(SP)				
  repro_test.go:105	0x53fda4		488d15c03a0000		LEAQ 0x3ac0(IP), DX				
  repro_test.go:105	0x53fdab		4889542448		MOVQ DX, 0x48(SP)				
  repro_test.go:105	0x53fdb0		488d15e16a1700		LEAQ 0x176ae1(IP), DX				
  repro_test.go:105	0x53fdb7		4889542458		MOVQ DX, 0x58(SP)				
  repro_test.go:105	0x53fdbc		488d542430		LEAQ 0x30(SP), DX				
  repro_test.go:105	0x53fdc1		31c9			XORL CX, CX					
  repro_test.go:105	0x53fdc3		eb29			JMP 0x53fdee					
  repro_test.go:106	0x53fdc5		48895808		MOVQ BX, 0x8(AX)				
  repro_test.go:106	0x53fdc9		48895018		MOVQ DX, 0x18(AX)				
  repro_test.go:106	0x53fdcd		4889c7			MOVQ AX, DI					
  repro_test.go:106	0x53fdd0		488b842488000000	MOVQ 0x88(SP), AX				
  repro_test.go:106	0x53fdd8		e843c0f9ff		CALL testing.(*B).Run(SB)			
  repro_test.go:105	0x53fddd		488b542470		MOVQ 0x70(SP), DX				
  repro_test.go:105	0x53fde2		4883c218		ADDQ $0x18, DX					
  repro_test.go:105	0x53fde6		488b4c2428		MOVQ 0x28(SP), CX				
  repro_test.go:105	0x53fdeb		48ffc1			INCQ CX						
  repro_test.go:105	0x53fdee		4883f902		CMPQ CX, $0x2					
  repro_test.go:105	0x53fdf2		0f8d83000000		JGE 0x53fe7b					
  repro_test.go:105	0x53fdf8		48894c2428		MOVQ CX, 0x28(SP)				
  repro_test.go:105	0x53fdfd		4889542470		MOVQ DX, 0x70(SP)				
  repro_test.go:105	0x53fe02		488b7208		MOVQ 0x8(DX), SI				
  repro_test.go:105	0x53fe06		4889742420		MOVQ SI, 0x20(SP)				
  repro_test.go:105	0x53fe0b		488b32			MOVQ 0(DX), SI					
  repro_test.go:105	0x53fe0e		4889742468		MOVQ SI, 0x68(SP)				
  repro_test.go:105	0x53fe13		488b5210		MOVQ 0x10(DX), DX				
  repro_test.go:105	0x53fe17		4889542460		MOVQ DX, 0x60(SP)				
  repro_test.go:106	0x53fe1c		b820000000		MOVL $0x20, AX					
  repro_test.go:106	0x53fe21		488d1da8de1500		LEAQ 0x15dea8(IP), BX				
  repro_test.go:106	0x53fe28		b901000000		MOVL $0x1, CX					
  repro_test.go:106	0x53fe2d		e8aef1edff		CALL runtime.mallocgcSmallScanNoHeaderSC4(SB)	
  repro_test.go:106	0x53fe32		488d15e7070000		LEAQ carryselect.BenchmarkDot.func1(SB), DX	
  repro_test.go:106	0x53fe39		488910			MOVQ DX, 0(AX)					
  repro_test.go:106	0x53fe3c		488b4c2420		MOVQ 0x20(SP), CX				
  repro_test.go:106	0x53fe41		48894810		MOVQ CX, 0x10(AX)				
  repro_test.go:106	0x53fe45		833d54a01b0000		CMPL runtime.writeBarrier(SB), $0x0		
  repro_test.go:106	0x53fe4c		7512			JNE 0x53fe60					
  repro_test.go:106	0x53fe4e		488b542460		MOVQ 0x60(SP), DX				
  repro_test.go:106	0x53fe53		488b5c2468		MOVQ 0x68(SP), BX				
  repro_test.go:106	0x53fe58		e968ffffff		JMP 0x53fdc5					
  repro_test.go:106	0x53fe5d		0f1f00			NOPL 0(AX)					
  repro_test.go:106	0x53fe60		e87bb0f4ff		CALL runtime.gcWriteBarrier2(SB)		
  repro_test.go:106	0x53fe65		488b5c2468		MOVQ 0x68(SP), BX				
  repro_test.go:106	0x53fe6a		49891b			MOVQ BX, 0(R11)					
  repro_test.go:106	0x53fe6d		488b542460		MOVQ 0x60(SP), DX				
  repro_test.go:106	0x53fe72		49895308		MOVQ DX, 0x8(R11)				
  repro_test.go:106	0x53fe76		e94affffff		JMP 0x53fdc5					
  repro_test.go:108	0x53fe7b		c9			LEAVE						
  repro_test.go:108	0x53fe7c		c3			RET						
  repro_test.go:104	0x53fe7d		4889442408		MOVQ AX, 0x8(SP)				
  repro_test.go:104	0x53fe82		e8b997f4ff		CALL runtime.morestack_noctxt.abi0(SB)		
  repro_test.go:104	0x53fe87		488b442408		MOVQ 0x8(SP), AX				
  repro_test.go:104	0x53fe8c		e9cffeffff		JMP carryselect.BenchmarkDot(SB)		

TEXT carryselect.TestShift51(SB) /home/exedev/crypto-audit/round4/issues/carry-select/repro_test.go
  repro_test.go:110	0x53fea0		4c8da42460ffffff	LEAQ 0xffffff60(SP), R12		
  repro_test.go:110	0x53fea8		4d3b6610		CMPQ R12, 0x10(R14)			
  repro_test.go:110	0x53feac		0f8620030000		JBE 0x5401d2				
  repro_test.go:110	0x53feb2		55			PUSHQ BP				
  repro_test.go:110	0x53feb3		4889e5			MOVQ SP, BP				
  repro_test.go:110	0x53feb6		4881ec18010000		SUBQ $0x118, SP				
  rand.go:79		0x53febd		4889842428010000	MOVQ AX, 0x128(SP)			
  repro_test.go:111	0x53fec5		90			NOPL					
  rand.go:52		0x53fec6		90			NOPL					
  rand.go:56		0x53fec7		488d05a25c1600		LEAQ 0x165ca2(IP), AX			
  rand.go:56		0x53fece		e84de1edff		CALL runtime.newobject(SB)		
  rand.go:56		0x53fed3		4889842410010000	MOVQ AX, 0x110(SP)			
  rand.go:57		0x53fedb		bb04000000		MOVL $0x4, BX				
  rand.go:57		0x53fee0		e85b6df9ff		CALL math/rand.(*rngSource).Seed(SB)	
  repro_test.go:111	0x53fee5		90			NOPL					
  rand.go:79		0x53fee6		488b0d63f11800		MOVQ carryselect..typeAssert.3(SB), CX	
  rand.go:79		0x53feed		488b11			MOVQ 0(CX), DX				
  rand.go:79		0x53fef0		8b1d2a5e1700		MOVL 0x175e2a(IP), BX			
  rand.go:79		0x53fef6		eb03			JMP 0x53fefb				
  rand.go:79		0x53fef8		4889f3			MOVQ SI, BX				
  rand.go:79		0x53fefb		4889de			MOVQ BX, SI				
  rand.go:79		0x53fefe		4821d3			ANDQ DX, BX				
  rand.go:79		0x53ff01		48c1e304		SHLQ $0x4, BX				
  rand.go:79		0x53ff05		488b7c0b08		MOVQ 0x8(BX)(CX*1), DI			
  rand.go:79		0x53ff0a		4c8d0597991300		LEAQ 0x139997(IP), R8			
  rand.go:79		0x53ff11		4c39c7			CMPQ DI, R8				
  rand.go:79		0x53ff14		7419			JE 0x53ff2f				
  rand.go:79		0x53ff16		48ffc6			INCQ SI					
  rand.go:79		0x53ff19		4885ff			TESTQ DI, DI				
  rand.go:79		0x53ff1c		75da			JNE 0x53fef8				
  rand.go:79		0x53ff1e		488d052bf11800		LEAQ carryselect..typeAssert.3(SB), AX	
  rand.go:79		0x53ff25		4c89c3			MOVQ R8, BX				
  rand.go:79		0x53ff28		e833a9edff		CALL runtime.typeAssert(SB)		
  rand.go:79		0x53ff2d		eb05			JMP 0x53ff34				
  rand.go:79		0x53ff2f		488b440b10		MOVQ 0x10(BX)(CX*1), AX			
  rand.go:80		0x53ff34		488d8c24b0000000	LEAQ 0xb0(SP), CX			
  rand.go:80		0x53ff3c		440f1139		MOVUPS X15, 0(CX)			
  rand.go:80		0x53ff40		440f117910		MOVUPS X15, 0x10(CX)			
  rand.go:80		0x53ff45		440f117920		MOVUPS X15, 0x20(CX)			
  rand.go:80		0x53ff4a		488d15bf5d1700		LEAQ 0x175dbf(IP), DX			
  rand.go:80		0x53ff51		48899424b0000000	MOVQ DX, 0xb0(SP)			
  rand.go:80		0x53ff59		488b942410010000	MOVQ 0x110(SP), DX			
  rand.go:80		0x53ff61		48899424b8000000	MOVQ DX, 0xb8(SP)			
  rand.go:80		0x53ff69		48898424c0000000	MOVQ AX, 0xc0(SP)			
  rand.go:80		0x53ff71		48899424c8000000	MOVQ DX, 0xc8(SP)			
  rand.go:80		0x53ff79		31c0			XORL AX, AX				
  repro_test.go:112	0x53ff7b		eb10			JMP 0x53ff8d				
  repro_test.go:112	0x53ff7d		488b442440		MOVQ 0x40(SP), AX			
  repro_test.go:112	0x53ff82		48ffc0			INCQ AX					
  rand.go:80		0x53ff85		488d8c24b0000000	LEAQ 0xb0(SP), CX			
  repro_test.go:112	0x53ff8d		483d10270000		CMPQ AX, $0x2710			
  repro_test.go:112	0x53ff93		0f8d37020000		JGE 0x5401d0				
  repro_test.go:112	0x53ff99		4889442440		MOVQ AX, 0x40(SP)			
  repro_test.go:113	0x53ff9e		4889c8			MOVQ CX, AX				
  repro_test.go:113	0x53ffa1		e87a69f9ff		CALL math/rand.(*Rand).Uint64(SB)	
  repro_test.go:113	0x53ffa6		4889442438		MOVQ AX, 0x38(SP)			
  repro_test.go:113	0x53ffab		488d8424b0000000	LEAQ 0xb0(SP), AX			
  repro_test.go:113	0x53ffb3		e86869f9ff		CALL math/rand.(*Rand).Uint64(SB)	
  repro_test.go:115	0x53ffb8		c684249000000000	MOVB $0x0, 0x90(SP)			
  repro_test.go:115	0x53ffc0		66440fd6bc2498000000	MOVQ X15, 0x98(SP)			
  repro_test.go:115	0x53ffca		440f11bc24a0000000	MOVUPS X15, 0xa0(SP)			
  repro_test.go:115	0x53ffd3		c644247000		MOVB $0x0, 0x70(SP)			
  repro_test.go:115	0x53ffd8		66440fd67c2478		MOVQ X15, 0x78(SP)			
  repro_test.go:115	0x53ffdf		440f11bc2480000000	MOVUPS X15, 0x80(SP)			
  repro_test.go:114	0x53ffe8		488b4c2440		MOVQ 0x40(SP), CX			
  repro_test.go:114	0x53ffed		4885c9			TESTQ CX, CX				
  repro_test.go:115	0x53fff0		48c7c1ffffffff		MOVQ $-0x1, CX				
  repro_test.go:115	0x53fff7		480f44c1		CMOVE CX, AX				
  repro_test.go:115	0x53fffb		4889442448		MOVQ AX, 0x48(SP)			
  int.go:72		0x540000		31db			XORL BX, BX				
  int.go:72		0x540002		89d9			MOVL BX, CX				
  int.go:72		0x540004		4889c7			MOVQ AX, DI				
  int.go:72		0x540007		31c0			XORL AX, AX				
  int.go:72		0x540009		e8326bffff		CALL math/big.nat.setUint64(SB)		
  int.go:72		0x54000e		48899c2480000000	MOVQ BX, 0x80(SP)			
  int.go:72		0x540016		48898c2488000000	MOVQ CX, 0x88(SP)			
  int.go:72		0x54001e		4889442478		MOVQ AX, 0x78(SP)			
  int.go:73		0x540023		c644247000		MOVB $0x0, 0x70(SP)			
  repro_test.go:114	0x540028		488b542440		MOVQ 0x40(SP), DX			
  repro_test.go:114	0x54002d		4885d2			TESTQ DX, DX				
  repro_test.go:115	0x540030		488b542438		MOVQ 0x38(SP), DX			
  repro_test.go:115	0x540035		48c7c6ffffffff		MOVQ $-0x1, SI				
  repro_test.go:115	0x54003c		480f44d6		CMOVE SI, DX				
  repro_test.go:115	0x540040		4889542438		MOVQ DX, 0x38(SP)			
  int.go:1245		0x540045		488b942498000000	MOVQ 0x98(SP), DX			
  int.go:1245		0x54004d		488bb424a0000000	MOVQ 0xa0(SP), SI			
  int.go:1245		0x540055		488bbc24a8000000	MOVQ 0xa8(SP), DI			
  int.go:1245		0x54005d		4989c8			MOVQ CX, R8				
  int.go:1245		0x540060		41b940000000		MOVL $0x40, R9				
  int.go:1245		0x540066		4889f9			MOVQ DI, CX				
  int.go:1245		0x540069		4889c7			MOVQ AX, DI				
  int.go:1245		0x54006c		4889d0			MOVQ DX, AX				
  int.go:72		0x54006f		4889da			MOVQ BX, DX				
  int.go:1245		0x540072		4889f3			MOVQ SI, BX				
  int.go:1245		0x540075		4889d6			MOVQ DX, SI				
  int.go:1245		0x540078		e82378ffff		CALL math/big.nat.lsh(SB)		
  int.go:1245		0x54007d		48899c24a0000000	MOVQ BX, 0xa0(SP)			
  int.go:1245		0x540085		48898c24a8000000	MOVQ CX, 0xa8(SP)			
  int.go:1245		0x54008d		4889842498000000	MOVQ AX, 0x98(SP)			
  int.go:1246		0x540095		0fb64c2470		MOVZX 0x70(SP), CX			
  int.go:1246		0x54009a		888c2490000000		MOVB CL, 0x90(SP)			
  repro_test.go:116	0x5400a1		c644245000		MOVB $0x0, 0x50(SP)			
  repro_test.go:116	0x5400a6		66440fd67c2458		MOVQ X15, 0x58(SP)			
  repro_test.go:116	0x5400ad		440f117c2460		MOVUPS X15, 0x60(SP)			
  int.go:72		0x5400b3		31c0			XORL AX, AX				
  int.go:72		0x5400b5		31db			XORL BX, BX				
  int.go:72		0x5400b7		89d9			MOVL BX, CX				
  int.go:72		0x5400b9		488b7c2438		MOVQ 0x38(SP), DI			
  int.go:72		0x5400be		6690			NOPW					
  int.go:72		0x5400c0		e87b6affff		CALL math/big.nat.setUint64(SB)		
  int.go:72		0x5400c5		48895c2460		MOVQ BX, 0x60(SP)			
  int.go:72		0x5400ca		48894c2468		MOVQ CX, 0x68(SP)			
  int.go:72		0x5400cf		4889442458		MOVQ AX, 0x58(SP)			
  int.go:73		0x5400d4		c644245000		MOVB $0x0, 0x50(SP)			
  repro_test.go:116	0x5400d9		488d842490000000	LEAQ 0x90(SP), AX			
  repro_test.go:116	0x5400e1		4889c3			MOVQ AX, BX				
  repro_test.go:116	0x5400e4		488d4c2450		LEAQ 0x50(SP), CX			
  repro_test.go:116	0x5400e9		e87267ffff		CALL math/big.(*Int).Or(SB)		
  repro_test.go:116	0x5400ee		488d842490000000	LEAQ 0x90(SP), AX			
  repro_test.go:116	0x5400f6		4889c3			MOVQ AX, BX				
  repro_test.go:116	0x5400f9		b933000000		MOVL $0x33, CX				
  repro_test.go:116	0x5400fe		6690			NOPW					
  repro_test.go:116	0x540100		e85b63ffff		CALL math/big.(*Int).Rsh(SB)		
  repro_test.go:117	0x540105		488b442438		MOVQ 0x38(SP), AX			
  repro_test.go:117	0x54010a		488b5c2448		MOVQ 0x48(SP), BX			
  repro_test.go:117	0x54010f		e8ecd5ffff		CALL carryselect.Shift51(SB)		
  int.go:524		0x540114		4883bc24a000000000	CMPQ 0xa0(SP), $0x0			
  repro_test.go:114	0x54011d		7504			JNE 0x540123				
  repro_test.go:114	0x54011f		31c9			XORL CX, CX				
  int.go:524		0x540121		eb0b			JMP 0x54012e				
  int.go:524		0x540123		488b8c2498000000	MOVQ 0x98(SP), CX			
  int.go:504		0x54012b		488b09			MOVQ 0(CX), CX				
  repro_test.go:117	0x54012e		4839c8			CMPQ AX, CX				
  repro_test.go:117	0x540131		0f8446feffff		JE 0x53ff7d				
  repro_test.go:117	0x540137		488d8c24e0000000	LEAQ 0xe0(SP), CX			
  repro_test.go:117	0x54013f		440f1139		MOVUPS X15, 0(CX)			
  repro_test.go:117	0x540143		440f117910		MOVUPS X15, 0x10(CX)			
  repro_test.go:117	0x540148		440f117920		MOVUPS X15, 0x20(CX)			
  repro_test.go:117	0x54014d		488d0d54741500		LEAQ 0x157454(IP), CX			
  repro_test.go:117	0x540154		48898c24e0000000	MOVQ CX, 0xe0(SP)			
  repro_test.go:117	0x54015c		488d0dfd1e0100		LEAQ 0x11efd(IP), CX			
  repro_test.go:117	0x540163		48898c24e8000000	MOVQ CX, 0xe8(SP)			
  repro_test.go:117	0x54016b		488b442438		MOVQ 0x38(SP), AX			
  repro_test.go:117	0x540170		e8eb2cf4ff		CALL runtime.convT64(SB)		
  repro_test.go:117	0x540175		488d0d2c761500		LEAQ 0x15762c(IP), CX			
  repro_test.go:117	0x54017c		48898c24f0000000	MOVQ CX, 0xf0(SP)			
  repro_test.go:117	0x540184		48898424f8000000	MOVQ AX, 0xf8(SP)			
  repro_test.go:117	0x54018c		488b442448		MOVQ 0x48(SP), AX			
  repro_test.go:117	0x540191		e8ca2cf4ff		CALL runtime.convT64(SB)		
  repro_test.go:117	0x540196		488d0d0b761500		LEAQ 0x15760b(IP), CX			
  repro_test.go:117	0x54019d		48898c2400010000	MOVQ CX, 0x100(SP)			
  repro_test.go:117	0x5401a5		4889842408010000	MOVQ AX, 0x108(SP)			
  repro_test.go:117	0x5401ad		488b842428010000	MOVQ 0x128(SP), AX			
  repro_test.go:117	0x5401b5		8400			TESTB AL, 0(AX)				
  repro_test.go:117	0x5401b7		488d9c24e0000000	LEAQ 0xe0(SP), BX			
  repro_test.go:117	0x5401bf		b903000000		MOVL $0x3, CX				
  repro_test.go:117	0x5401c4		89cf			MOVL CX, DI				
  repro_test.go:117	0x5401c6		e87540faff		CALL testing.(*common).Fatal(SB)	
  repro_test.go:117	0x5401cb		e9adfdffff		JMP 0x53ff7d				
  repro_test.go:119	0x5401d0		c9			LEAVE					
  repro_test.go:119	0x5401d1		c3			RET					
  repro_test.go:110	0x5401d2		4889442408		MOVQ AX, 0x8(SP)			
  repro_test.go:110	0x5401d7		e86494f4ff		CALL runtime.morestack_noctxt.abi0(SB)	
  repro_test.go:110	0x5401dc		488b442408		MOVQ 0x8(SP), AX			
  repro_test.go:110	0x5401e1		e9bafcffff		JMP carryselect.TestShift51(SB)		

TEXT carryselect.TestAssignOverlapAndBounds.func1(SB) /home/exedev/crypto-audit/round4/issues/carry-select/repro_test.go
  repro_test.go:46	0x540200		493b6610		CMPQ SP, 0x10(R14)						
  repro_test.go:46	0x540204		0f86f1000000		JBE 0x5402fb							
  repro_test.go:46	0x54020a		55			PUSHQ BP							
  repro_test.go:46	0x54020b		4889e5			MOVQ SP, BP							
  repro_test.go:46	0x54020e		4883ec78		SUBQ $0x78, SP							
  repro_test.go:46	0x540212		66440fd67c2470		MOVQ X15, 0x70(SP)						
  repro_test.go:49	0x540219		4889842488000000	MOVQ AX, 0x88(SP)						
  repro_test.go:49	0x540221		48899c2490000000	MOVQ BX, 0x90(SP)						
  repro_test.go:46	0x540229		c644243f00		MOVB $0x0, 0x3f(SP)						
  repro_test.go:47	0x54022e		b810000000		MOVL $0x10, AX							
  repro_test.go:47	0x540233		488d1d0e881500		LEAQ 0x15880e(IP), BX						
  repro_test.go:47	0x54023a		b901000000		MOVL $0x1, CX							
  repro_test.go:47	0x54023f		90			NOPL								
  repro_test.go:47	0x540240		e89bfeedff		CALL runtime.mallocgcSmallNoScanSC2(SB)				
  repro_test.go:47	0x540245		4889442468		MOVQ AX, 0x68(SP)						
  repro_test.go:47	0x54024a		48c70007000000		MOVQ $0x7, 0(AX)						
  repro_test.go:47	0x540251		48c7400808000000	MOVQ $0x8, 0x8(AX)						
  repro_test.go:47	0x540259		488d15c0000000		LEAQ carryselect.TestAssignOverlapAndBounds.func1.1(SB), DX	
  repro_test.go:47	0x540260		4889542440		MOVQ DX, 0x40(SP)						
  repro_test.go:47	0x540265		488b942488000000	MOVQ 0x88(SP), DX						
  repro_test.go:47	0x54026d		4889542448		MOVQ DX, 0x48(SP)						
  repro_test.go:47	0x540272		48c744245802000000	MOVQ $0x2, 0x58(SP)						
  repro_test.go:47	0x54027b		48c744246002000000	MOVQ $0x2, 0x60(SP)						
  repro_test.go:47	0x540284		4889442450		MOVQ AX, 0x50(SP)						
  repro_test.go:47	0x540289		488d542440		LEAQ 0x40(SP), DX						
  repro_test.go:47	0x54028e		4889542470		MOVQ DX, 0x70(SP)						
  repro_test.go:47	0x540293		c644243f01		MOVB $0x1, 0x3f(SP)						
  repro_test.go:48	0x540298		b808000000		MOVL $0x8, AX							
  repro_test.go:48	0x54029d		488d1d5c871500		LEAQ 0x15875c(IP), BX						
  repro_test.go:48	0x5402a4		b901000000		MOVL $0x1, CX							
  repro_test.go:48	0x5402a9		e872fbedff		CALL runtime.mallocgcTinySC2(SB)				
  repro_test.go:48	0x5402ae		48c70001000000		MOVQ $0x1, 0(AX)						
  repro_test.go:48	0x5402b5		488b942490000000	MOVQ 0x90(SP), DX						
  repro_test.go:48	0x5402bd		488b32			MOVQ 0(DX), SI							
  repro_test.go:48	0x5402c0		bb02000000		MOVL $0x2, BX							
  repro_test.go:48	0x5402c5		89d9			MOVL BX, CX							
  repro_test.go:48	0x5402c7		4889c7			MOVQ AX, DI							
  repro_test.go:48	0x5402ca		41b801000000		MOVL $0x1, R8							
  repro_test.go:48	0x5402d0		4531c9			XORL R9, R9							
  repro_test.go:48	0x5402d3		488b442468		MOVQ 0x68(SP), AX						
  repro_test.go:48	0x5402d8		4989f2			MOVQ SI, R10							
  repro_test.go:48	0x5402db		4489c6			MOVL R8, SI							
  repro_test.go:48	0x5402de		6690			NOPW								
  repro_test.go:48	0x5402e0		41ffd2			CALL R10							
  repro_test.go:49	0x5402e3		c644243f00		MOVB $0x0, 0x3f(SP)						
  repro_test.go:49	0x5402e8		488b542470		MOVQ 0x70(SP), DX						
  repro_test.go:49	0x5402ed		488b32			MOVQ 0(DX), SI							
  repro_test.go:49	0x5402f0		ffd6			CALL SI								
  repro_test.go:49	0x5402f2		c9			LEAVE								
  repro_test.go:49	0x5402f3		c3			RET								
  repro_test.go:49	0x5402f4		e82793f0ff		CALL runtime.deferreturn(SB)					
  repro_test.go:49	0x5402f9		c9			LEAVE								
  repro_test.go:49	0x5402fa		c3			RET								
  repro_test.go:46	0x5402fb		4889442408		MOVQ AX, 0x8(SP)						
  repro_test.go:46	0x540300		48895c2410		MOVQ BX, 0x10(SP)						
  repro_test.go:46	0x540305		e83693f4ff		CALL runtime.morestack_noctxt.abi0(SB)				
  repro_test.go:46	0x54030a		488b442408		MOVQ 0x8(SP), AX						
  repro_test.go:46	0x54030f		488b5c2410		MOVQ 0x10(SP), BX						
  repro_test.go:46	0x540314		e9e7feffff		JMP carryselect.TestAssignOverlapAndBounds.func1(SB)		

TEXT carryselect.TestAssignOverlapAndBounds.func1.1(SB) /home/exedev/crypto-audit/round4/issues/carry-select/repro_test.go
  repro_test.go:47	0x540320		493b6610		CMPQ SP, 0x10(R14)					
  repro_test.go:47	0x540324		0f86c1000000		JBE 0x5403eb						
  repro_test.go:47	0x54032a		55			PUSHQ BP						
  repro_test.go:47	0x54032b		4889e5			MOVQ SP, BP						
  repro_test.go:47	0x54032e		4883ec48		SUBQ $0x48, SP						
  repro_test.go:47	0x540332		488b4218		MOVQ 0x18(DX), AX					
  repro_test.go:47	0x540336		4889442420		MOVQ AX, 0x20(SP)					
  repro_test.go:47	0x54033b		488b4210		MOVQ 0x10(DX), AX					
  repro_test.go:47	0x54033f		4889442428		MOVQ AX, 0x28(SP)					
  repro_test.go:47	0x540344		488b4208		MOVQ 0x8(DX), AX					
  repro_test.go:47	0x540348		4889442430		MOVQ AX, 0x30(SP)					
  repro_test.go:47	0x54034d		e86e9cf0ff		CALL runtime.gorecover(SB)				
  repro_test.go:47	0x540352		4885c0			TESTQ AX, AX						
  repro_test.go:47	0x540355		7530			JNE 0x540387						
  repro_test.go:47	0x540357		488d154a721500		LEAQ 0x15724a(IP), DX					
  repro_test.go:47	0x54035e		4889542438		MOVQ DX, 0x38(SP)					
  repro_test.go:47	0x540363		488d15a61c0100		LEAQ 0x11ca6(IP), DX					
  repro_test.go:47	0x54036a		4889542440		MOVQ DX, 0x40(SP)					
  repro_test.go:47	0x54036f		488b442430		MOVQ 0x30(SP), AX					
  repro_test.go:47	0x540374		8400			TESTB AL, 0(AX)						
  repro_test.go:47	0x540376		488d5c2438		LEAQ 0x38(SP), BX					
  repro_test.go:47	0x54037b		b901000000		MOVL $0x1, CX						
  repro_test.go:47	0x540380		89cf			MOVL CX, DI						
  repro_test.go:47	0x540382		e8993cfaff		CALL testing.(*common).Error(SB)			
  repro_test.go:47	0x540387		488b542420		MOVQ 0x20(SP), DX					
  repro_test.go:47	0x54038c		4885d2			TESTQ DX, DX						
  repro_test.go:47	0x54038f		7654			JBE 0x5403e5						
  repro_test.go:47	0x540391		488b742428		MOVQ 0x28(SP), SI					
  repro_test.go:47	0x540396		48833e07		CMPQ 0(SI), $0x7					
  repro_test.go:47	0x54039a		7511			JNE 0x5403ad						
  repro_test.go:47	0x54039c		0f1f4000		NOPL 0(AX)						
  repro_test.go:47	0x5403a0		4883fa01		CMPQ DX, $0x1						
  repro_test.go:47	0x5403a4		7639			JBE 0x5403df						
  repro_test.go:47	0x5403a6		48837e0808		CMPQ 0x8(SI), $0x8					
  repro_test.go:47	0x5403ab		7430			JE 0x5403dd						
  repro_test.go:47	0x5403ad		488d15f4711500		LEAQ 0x1571f4(IP), DX					
  repro_test.go:47	0x5403b4		4889542438		MOVQ DX, 0x38(SP)					
  repro_test.go:47	0x5403b9		488d15601c0100		LEAQ 0x11c60(IP), DX					
  repro_test.go:47	0x5403c0		4889542440		MOVQ DX, 0x40(SP)					
  repro_test.go:47	0x5403c5		488b442430		MOVQ 0x30(SP), AX					
  repro_test.go:47	0x5403ca		8400			TESTB AL, 0(AX)						
  repro_test.go:47	0x5403cc		488d5c2438		LEAQ 0x38(SP), BX					
  repro_test.go:47	0x5403d1		b901000000		MOVL $0x1, CX						
  repro_test.go:47	0x5403d6		89cf			MOVL CX, DI						
  repro_test.go:47	0x5403d8		e8433cfaff		CALL testing.(*common).Error(SB)			
  repro_test.go:47	0x5403dd		c9			LEAVE							
  repro_test.go:47	0x5403de		c3			RET							
  repro_test.go:47	0x5403df		90			NOPL							
  repro_test.go:47	0x5403e0		e89baef4ff		CALL runtime.panicBounds(SB)				
  repro_test.go:47	0x5403e5		e896aef4ff		CALL runtime.panicBounds(SB)				
  repro_test.go:47	0x5403ea		90			NOPL							
  repro_test.go:47	0x5403eb		e8b091f4ff		CALL runtime.morestack.abi0(SB)				
  repro_test.go:47	0x5403f0		e92bffffff		JMP carryselect.TestAssignOverlapAndBounds.func1.1(SB)	

TEXT carryselect.BenchmarkEq.func1(SB) /home/exedev/crypto-audit/round4/issues/carry-select/repro_test.go
  repro_test.go:78	0x540400		493b6610		CMPQ SP, 0x10(R14)			
  repro_test.go:78	0x540404		766c			JBE 0x540472				
  repro_test.go:78	0x540406		55			PUSHQ BP				
  repro_test.go:78	0x540407		4889e5			MOVQ SP, BP				
  repro_test.go:78	0x54040a		4883ec28		SUBQ $0x28, SP				
  repro_test.go:78	0x54040e		4889442438		MOVQ AX, 0x38(SP)			
  repro_test.go:78	0x540413		488b5218		MOVQ 0x18(DX), DX			
  repro_test.go:78	0x540417		4889542420		MOVQ DX, 0x20(SP)			
  repro_test.go:78	0x54041c		31c9			XORL CX, CX				
  repro_test.go:78	0x54041e		31db			XORL BX, BX				
  repro_test.go:78	0x540420		eb3e			JMP 0x540460				
  repro_test.go:78	0x540422		48894c2418		MOVQ CX, 0x18(SP)			
  repro_test.go:78	0x540427		48895c2410		MOVQ BX, 0x10(SP)			
  repro_test.go:78	0x54042c		488b32			MOVQ 0(DX), SI				
  repro_test.go:78	0x54042f		4889cb			MOVQ CX, BX				
  repro_test.go:78	0x540432		83e301			ANDL $0x1, BX				
  repro_test.go:78	0x540435		4831cb			XORQ CX, BX				
  repro_test.go:78	0x540438		4889c8			MOVQ CX, AX				
  repro_test.go:78	0x54043b		ffd6			CALL SI					
  repro_test.go:78	0x54043d		488b4c2410		MOVQ 0x10(SP), CX			
  repro_test.go:78	0x540442		488d1c01		LEAQ 0(CX)(AX*1), BX			
  repro_test.go:78	0x540446		488b4c2418		MOVQ 0x18(SP), CX			
  repro_test.go:78	0x54044b		48ffc1			INCQ CX					
  repro_test.go:78	0x54044e		488b442438		MOVQ 0x38(SP), AX			
  repro_test.go:78	0x540453		488b542420		MOVQ 0x20(SP), DX			
  repro_test.go:78	0x540458		0f1f840000000000	NOPL 0(AX)(AX*1)			
  repro_test.go:78	0x540460		48398810020000		CMPQ 0x210(AX), CX			
  repro_test.go:78	0x540467		7fb9			JG 0x540422				
  repro_test.go:78	0x540469		48891d98971b00		MOVQ BX, carryselect.sink(SB)		
  repro_test.go:78	0x540470		c9			LEAVE					
  repro_test.go:78	0x540471		c3			RET					
  repro_test.go:78	0x540472		4889442408		MOVQ AX, 0x8(SP)			
  repro_test.go:78	0x540477		e82491f4ff		CALL runtime.morestack.abi0(SB)		
  repro_test.go:78	0x54047c		488b442408		MOVQ 0x8(SP), AX			
  repro_test.go:78	0x540481		e97affffff		JMP carryselect.BenchmarkEq.func1(SB)	

TEXT carryselect.BenchmarkAssign.func1(SB) /home/exedev/crypto-audit/round4/issues/carry-select/repro_test.go
  repro_test.go:83	0x5404a0		493b6610		CMPQ SP, 0x10(R14)				
  repro_test.go:83	0x5404a4		0f86c4000000		JBE 0x54056e					
  repro_test.go:83	0x5404aa		55			PUSHQ BP					
  repro_test.go:83	0x5404ab		4889e5			MOVQ SP, BP					
  repro_test.go:83	0x5404ae		4883ec58		SUBQ $0x58, SP					
  repro_test.go:83	0x5404b2		4889442468		MOVQ AX, 0x68(SP)				
  repro_test.go:83	0x5404b7		488b5218		MOVQ 0x18(DX), DX				
  repro_test.go:83	0x5404bb		4889542450		MOVQ DX, 0x50(SP)				
  repro_test.go:83	0x5404c0		488d0561731500		LEAQ 0x157361(IP), AX				
  repro_test.go:83	0x5404c7		bb10000000		MOVL $0x10, BX					
  repro_test.go:83	0x5404cc		89d9			MOVL BX, CX					
  repro_test.go:83	0x5404ce		e8cd60f4ff		CALL runtime.makeslice(SB)			
  repro_test.go:83	0x5404d3		4889442448		MOVQ AX, 0x48(SP)				
  repro_test.go:83	0x5404d8		488d0549731500		LEAQ 0x157349(IP), AX				
  repro_test.go:83	0x5404df		bb10000000		MOVL $0x10, BX					
  repro_test.go:83	0x5404e4		89d9			MOVL BX, CX					
  repro_test.go:83	0x5404e6		e8b560f4ff		CALL runtime.makeslice(SB)			
  repro_test.go:83	0x5404eb		31d2			XORL DX, DX					
  repro_test.go:83	0x5404ed		eb11			JMP 0x540500					
  repro_test.go:83	0x5404ef		4889d1			MOVQ DX, CX					
  repro_test.go:83	0x5404f2		48f7d1			NOTQ CX						
  repro_test.go:83	0x5404f5		48890cd0		MOVQ CX, 0(AX)(DX*8)				
  repro_test.go:83	0x5404f9		48ffc2			INCQ DX						
  repro_test.go:83	0x5404fc		0f1f4000		NOPL 0(AX)					
  repro_test.go:83	0x540500		4883fa10		CMPQ DX, $0x10					
  repro_test.go:83	0x540504		7ce9			JL 0x5404ef					
  repro_test.go:83	0x540506		4889442440		MOVQ AX, 0x40(SP)				
  repro_test.go:83	0x54050b		488b442468		MOVQ 0x68(SP), AX				
  repro_test.go:83	0x540510		e80b92f9ff		CALL testing.(*B).ResetTimer(SB)		
  repro_test.go:83	0x540515		31c0			XORL AX, AX					
  repro_test.go:83	0x540517		eb36			JMP 0x54054f					
  repro_test.go:83	0x540519		4889442438		MOVQ AX, 0x38(SP)				
  repro_test.go:83	0x54051e		488b542450		MOVQ 0x50(SP), DX				
  repro_test.go:83	0x540523		4c8b12			MOVQ 0(DX), R10					
  repro_test.go:83	0x540526		4989c1			MOVQ AX, R9					
  repro_test.go:83	0x540529		4183e101		ANDL $0x1, R9					
  repro_test.go:83	0x54052d		488b442448		MOVQ 0x48(SP), AX				
  repro_test.go:83	0x540532		bb10000000		MOVL $0x10, BX					
  repro_test.go:83	0x540537		89d9			MOVL BX, CX					
  repro_test.go:83	0x540539		488b7c2440		MOVQ 0x40(SP), DI				
  repro_test.go:83	0x54053e		4889ce			MOVQ CX, SI					
  repro_test.go:83	0x540541		4989c8			MOVQ CX, R8					
  repro_test.go:83	0x540544		41ffd2			CALL R10					
  repro_test.go:83	0x540547		488b442438		MOVQ 0x38(SP), AX				
  repro_test.go:83	0x54054c		48ffc0			INCQ AX						
  repro_test.go:83	0x54054f		4c8b542468		MOVQ 0x68(SP), R10				
  repro_test.go:83	0x540554		49398210020000		CMPQ 0x210(R10), AX				
  repro_test.go:83	0x54055b		7fbc			JG 0x540519					
  repro_test.go:83	0x54055d		488b442448		MOVQ 0x48(SP), AX				
  repro_test.go:83	0x540562		488b00			MOVQ 0(AX), AX					
  repro_test.go:83	0x540565		4889059c961b00		MOVQ AX, carryselect.sink(SB)			
  repro_test.go:83	0x54056c		c9			LEAVE						
  repro_test.go:83	0x54056d		c3			RET						
  repro_test.go:83	0x54056e		4889442408		MOVQ AX, 0x8(SP)				
  repro_test.go:83	0x540573		e82890f4ff		CALL runtime.morestack.abi0(SB)			
  repro_test.go:83	0x540578		488b442408		MOVQ 0x8(SP), AX				
  repro_test.go:83	0x54057d		0f1f00			NOPL 0(AX)					
  repro_test.go:83	0x540580		e91bffffff		JMP carryselect.BenchmarkAssign.func1(SB)	

TEXT carryselect.BenchmarkNegBorrow.func1(SB) /home/exedev/crypto-audit/round4/issues/carry-select/repro_test.go
  repro_test.go:88	0x5405a0		493b6610		CMPQ SP, 0x10(R14)				
  repro_test.go:88	0x5405a4		7661			JBE 0x540607					
  repro_test.go:88	0x5405a6		55			PUSHQ BP					
  repro_test.go:88	0x5405a7		4889e5			MOVQ SP, BP					
  repro_test.go:88	0x5405aa		4883ec28		SUBQ $0x28, SP					
  repro_test.go:88	0x5405ae		4889442438		MOVQ AX, 0x38(SP)				
  repro_test.go:88	0x5405b3		488b5218		MOVQ 0x18(DX), DX				
  repro_test.go:88	0x5405b7		4889542420		MOVQ DX, 0x20(SP)				
  repro_test.go:88	0x5405bc		31c9			XORL CX, CX					
  repro_test.go:88	0x5405be		31db			XORL BX, BX					
  repro_test.go:88	0x5405c0		eb33			JMP 0x5405f5					
  repro_test.go:88	0x5405c2		48894c2418		MOVQ CX, 0x18(SP)				
  repro_test.go:88	0x5405c7		48895c2410		MOVQ BX, 0x10(SP)				
  repro_test.go:88	0x5405cc		488b32			MOVQ 0(DX), SI					
  repro_test.go:88	0x5405cf		4889cb			MOVQ CX, BX					
  repro_test.go:88	0x5405d2		4883f301		XORQ $0x1, BX					
  repro_test.go:88	0x5405d6		4889c8			MOVQ CX, AX					
  repro_test.go:88	0x5405d9		ffd6			CALL SI						
  repro_test.go:88	0x5405db		488b5c2410		MOVQ 0x10(SP), BX				
  repro_test.go:88	0x5405e0		4831c3			XORQ AX, BX					
  repro_test.go:88	0x5405e3		488b4c2418		MOVQ 0x18(SP), CX				
  repro_test.go:88	0x5405e8		48ffc1			INCQ CX						
  repro_test.go:88	0x5405eb		488b442438		MOVQ 0x38(SP), AX				
  repro_test.go:88	0x5405f0		488b542420		MOVQ 0x20(SP), DX				
  repro_test.go:88	0x5405f5		48398810020000		CMPQ 0x210(AX), CX				
  repro_test.go:88	0x5405fc		7fc4			JG 0x5405c2					
  repro_test.go:88	0x5405fe		48891d03961b00		MOVQ BX, carryselect.sink(SB)			
  repro_test.go:88	0x540605		c9			LEAVE						
  repro_test.go:88	0x540606		c3			RET						
  repro_test.go:88	0x540607		4889442408		MOVQ AX, 0x8(SP)				
  repro_test.go:88	0x54060c		e88f8ff4ff		CALL runtime.morestack.abi0(SB)			
  repro_test.go:88	0x540611		488b442408		MOVQ 0x8(SP), AX				
  repro_test.go:88	0x540616		eb88			JMP carryselect.BenchmarkNegBorrow.func1(SB)	

TEXT carryselect.BenchmarkDot.func1(SB) /home/exedev/crypto-audit/round4/issues/carry-select/repro_test.go
  repro_test.go:106	0x540620		4c8d6424f0		LEAQ -0x10(SP), R12			
  repro_test.go:106	0x540625		4d3b6610		CMPQ R12, 0x10(R14)			
  repro_test.go:106	0x540629		0f86c9000000		JBE 0x5406f8				
  repro_test.go:106	0x54062f		55			PUSHQ BP				
  repro_test.go:106	0x540630		4889e5			MOVQ SP, BP				
  repro_test.go:106	0x540633		4881ec88000000		SUBQ $0x88, SP				
  repro_test.go:106	0x54063a		4889842498000000	MOVQ AX, 0x98(SP)			
  repro_test.go:106	0x540642		488b5218		MOVQ 0x18(DX), DX			
  repro_test.go:106	0x540646		4889942480000000	MOVQ DX, 0x80(SP)			
  repro_test.go:106	0x54064e		488d4c2458		LEAQ 0x58(SP), CX			
  repro_test.go:106	0x540653		488d1d6e2a0100		LEAQ 0x12a6e(IP), BX			
  repro_test.go:106	0x54065a		440f1033		MOVUPS 0(BX), X14			
  repro_test.go:106	0x54065e		440f1131		MOVUPS X14, 0(CX)			
  repro_test.go:106	0x540662		440f107310		MOVUPS 0x10(BX), X14			
  repro_test.go:106	0x540667		440f117110		MOVUPS X14, 0x10(CX)			
  repro_test.go:106	0x54066c		440f107318		MOVUPS 0x18(BX), X14			
  repro_test.go:106	0x540671		440f117118		MOVUPS X14, 0x18(CX)			
  repro_test.go:106	0x540676		31db			XORL BX, BX				
  repro_test.go:106	0x540678		eb67			JMP 0x5406e1				
  repro_test.go:106	0x54067a		48895c2450		MOVQ BX, 0x50(SP)			
  repro_test.go:106	0x54067f		488b02			MOVQ 0(DX), AX				
  repro_test.go:106	0x540682		4889e3			MOVQ SP, BX				
  repro_test.go:106	0x540685		440f1031		MOVUPS 0(CX), X14			
  repro_test.go:106	0x540689		440f1133		MOVUPS X14, 0(BX)			
  repro_test.go:106	0x54068d		440f107110		MOVUPS 0x10(CX), X14			
  repro_test.go:106	0x540692		440f117310		MOVUPS X14, 0x10(BX)			
  repro_test.go:106	0x540697		440f107118		MOVUPS 0x18(CX), X14			
  repro_test.go:106	0x54069c		440f117318		MOVUPS X14, 0x18(BX)			
  repro_test.go:106	0x5406a1		ffd0			CALL AX					
  repro_test.go:106	0x5406a3		488d4c2458		LEAQ 0x58(SP), CX			
  repro_test.go:106	0x5406a8		488d442428		LEAQ 0x28(SP), AX			
  repro_test.go:106	0x5406ad		440f1030		MOVUPS 0(AX), X14			
  repro_test.go:106	0x5406b1		440f1131		MOVUPS X14, 0(CX)			
  repro_test.go:106	0x5406b5		440f107010		MOVUPS 0x10(AX), X14			
  repro_test.go:106	0x5406ba		440f117110		MOVUPS X14, 0x10(CX)			
  repro_test.go:106	0x5406bf		440f107018		MOVUPS 0x18(AX), X14			
  repro_test.go:106	0x5406c4		440f117118		MOVUPS X14, 0x18(CX)			
  repro_test.go:106	0x5406c9		488b5c2450		MOVQ 0x50(SP), BX			
  repro_test.go:106	0x5406ce		48ffc3			INCQ BX					
  repro_test.go:106	0x5406d1		488b842498000000	MOVQ 0x98(SP), AX			
  repro_test.go:106	0x5406d9		488b942480000000	MOVQ 0x80(SP), DX			
  repro_test.go:106	0x5406e1		48399810020000		CMPQ 0x210(AX), BX			
  repro_test.go:106	0x5406e8		7f90			JG 0x54067a				
  repro_test.go:106	0x5406ea		488b442458		MOVQ 0x58(SP), AX			
  repro_test.go:106	0x5406ef		48890512951b00		MOVQ AX, carryselect.sink(SB)		
  repro_test.go:106	0x5406f6		c9			LEAVE					
  repro_test.go:106	0x5406f7		c3			RET					
  repro_test.go:106	0x5406f8		4889442408		MOVQ AX, 0x8(SP)			
  repro_test.go:106	0x5406fd		0f1f00			NOPL 0(AX)				
  repro_test.go:106	0x540700		e89b8ef4ff		CALL runtime.morestack.abi0(SB)		
  repro_test.go:106	0x540705		488b442408		MOVQ 0x8(SP), AX			
  repro_test.go:106	0x54070a		e911ffffff		JMP carryselect.BenchmarkDot.func1(SB)	
