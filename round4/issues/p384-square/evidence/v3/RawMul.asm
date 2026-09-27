TEXT example.com/p384issue.RawMul(SB) /home/exedev/crypto-audit/round4/issues/p384-square/raw.go
  raw.go:9		0x5f05a0		4c8da42470fbffff	LEAQ 0xfffffb70(SP), R12		
  raw.go:9		0x5f05a8		4d3b6610		CMPQ R12, 0x10(R14)			
  raw.go:9		0x5f05ac		0f8616100000		JBE 0x5f15c8				
  raw.go:9		0x5f05b2		55			PUSHQ BP				
  raw.go:9		0x5f05b3		4889e5			MOVQ SP, BP				
  raw.go:9		0x5f05b6		4881ec08050000		SUBQ $0x508, SP				
  raw.go:704		0x5f05bd		4889842418050000	MOVQ AX, 0x518(SP)			
  raw.go:10		0x5f05c5		488b7308		MOVQ 0x8(BX), SI			
  raw.go:11		0x5f05c9		488b7b10		MOVQ 0x10(BX), DI			
  raw.go:12		0x5f05cd		4c8b4318		MOVQ 0x18(BX), R8			
  raw.go:13		0x5f05d1		4c8b4b20		MOVQ 0x20(BX), R9			
  raw.go:14		0x5f05d5		4c8b5328		MOVQ 0x28(BX), R10			
  raw.go:14		0x5f05d9		4c899424e8000000	MOVQ R10, 0xe8(SP)			
  raw.go:15		0x5f05e1		488b1b			MOVQ 0(BX), BX				
  raw.go:18		0x5f05e4		488b5108		MOVQ 0x8(CX), DX			
  raw.go:30		0x5f05e8		c4629bf6db		MULXQ BX, R12, R11			
  raw.go:30		0x5f05ed		4c899c2410040000	MOVQ R11, 0x410(SP)			
  raw.go:30		0x5f05f5		4c89a42460040000	MOVQ R12, 0x460(SP)			
  raw.go:18		0x5f05fd		4989d5			MOVQ DX, R13				
  raw.go:120		0x5f0600		4889f2			MOVQ SI, DX				
  raw.go:120		0x5f0603		c442fbf6fd		MULXQ R13, AX, R15			
  raw.go:120		0x5f0608		4c897c2450		MOVQ R15, 0x50(SP)			
  raw.go:120		0x5f060d		4889442458		MOVQ AX, 0x58(SP)			
  raw.go:229		0x5f0612		4c8b7910		MOVQ 0x10(CX), R15			
  raw.go:27		0x5f0616		4c89fa			MOVQ R15, DX				
  raw.go:27		0x5f0619		c4e2a3f6c3		MULXQ BX, R11, AX			
  raw.go:27		0x5f061e		48898424a0040000	MOVQ AX, 0x4a0(SP)			
  raw.go:27		0x5f0626		4c899c24c8040000	MOVQ R11, 0x4c8(SP)			
  raw.go:117		0x5f062e		c4e2a3f6c6		MULXQ SI, R11, AX			
  raw.go:117		0x5f0633		4889442460		MOVQ AX, 0x60(SP)			
  raw.go:117		0x5f0638		4c895c2468		MOVQ R11, 0x68(SP)			
  raw.go:229		0x5f063d		4889fa			MOVQ DI, DX				
  raw.go:229		0x5f0640		c4c2a3f6c7		MULXQ R15, R11, AX			
  raw.go:229		0x5f0645		4889842440040000	MOVQ AX, 0x440(SP)			
  raw.go:229		0x5f064d		4c899c2448040000	MOVQ R11, 0x448(SP)			
  raw.go:232		0x5f0655		4c89ea			MOVQ R13, DX				
  raw.go:232		0x5f0658		c4e2a3f6c7		MULXQ DI, R11, AX			
  raw.go:232		0x5f065d		4889842430040000	MOVQ AX, 0x430(SP)			
  raw.go:232		0x5f0665		4c899c2438040000	MOVQ R11, 0x438(SP)			
  raw.go:332		0x5f066d		488b4128		MOVQ 0x28(CX), AX			
  raw.go:332		0x5f0671		4889842400050000	MOVQ AX, 0x500(SP)			
  raw.go:18		0x5f0679		4889c2			MOVQ AX, DX				
  raw.go:18		0x5f067c		c4629bf6db		MULXQ BX, R12, R11			
  raw.go:18		0x5f0681		4c895c2440		MOVQ R11, 0x40(SP)			
  raw.go:18		0x5f0686		4c89a42498000000	MOVQ R12, 0x98(SP)			
  raw.go:108		0x5f068e		c4629bf6de		MULXQ SI, R12, R11			
  raw.go:108		0x5f0693		4c899c2490000000	MOVQ R11, 0x90(SP)			
  raw.go:108		0x5f069b		4c89a424a0000000	MOVQ R12, 0xa0(SP)			
  raw.go:220		0x5f06a3		c4629bf6df		MULXQ DI, R12, R11			
  raw.go:220		0x5f06a8		4c899c2478040000	MOVQ R11, 0x478(SP)			
  raw.go:220		0x5f06b0		4c89a42480040000	MOVQ R12, 0x480(SP)			
  raw.go:332		0x5f06b8		c4429bf6d8		MULXQ R8, R12, R11			
  raw.go:332		0x5f06bd		4c899c2480030000	MOVQ R11, 0x380(SP)			
  raw.go:332		0x5f06c5		4c89a42488030000	MOVQ R12, 0x388(SP)			
  raw.go:338		0x5f06cd		4c8b5918		MOVQ 0x18(CX), R11			
  raw.go:24		0x5f06d1		4c89da			MOVQ R11, DX				
  raw.go:24		0x5f06d4		c462abf6e3		MULXQ BX, R10, R12			
  raw.go:24		0x5f06d9		4c89a424d0040000	MOVQ R12, 0x4d0(SP)			
  raw.go:24		0x5f06e1		4c899424d8040000	MOVQ R10, 0x4d8(SP)			
  raw.go:114		0x5f06e9		c462abf6e6		MULXQ SI, R10, R12			
  raw.go:114		0x5f06ee		4c89642470		MOVQ R12, 0x70(SP)			
  raw.go:114		0x5f06f3		4c89542478		MOVQ R10, 0x78(SP)			
  raw.go:226		0x5f06f8		c462abf6e7		MULXQ DI, R10, R12			
  raw.go:226		0x5f06fd		4c89a42450040000	MOVQ R12, 0x450(SP)			
  raw.go:226		0x5f0705		4c89942458040000	MOVQ R10, 0x458(SP)			
  raw.go:338		0x5f070d		4c89c2			MOVQ R8, DX				
  raw.go:338		0x5f0710		c442abf6e3		MULXQ R11, R10, R12			
  raw.go:338		0x5f0715		4c89a42460030000	MOVQ R12, 0x360(SP)			
  raw.go:338		0x5f071d		4c89942468030000	MOVQ R10, 0x368(SP)			
  raw.go:341		0x5f0725		4c89fa			MOVQ R15, DX				
  raw.go:341		0x5f0728		c442abf6e0		MULXQ R8, R10, R12			
  raw.go:341		0x5f072d		4c89a42450030000	MOVQ R12, 0x350(SP)			
  raw.go:341		0x5f0735		4c89942458030000	MOVQ R10, 0x358(SP)			
  raw.go:344		0x5f073d		4c89ea			MOVQ R13, DX				
  raw.go:344		0x5f0740		c442abf6e0		MULXQ R8, R10, R12			
  raw.go:344		0x5f0745		4c89a42440030000	MOVQ R12, 0x340(SP)			
  raw.go:344		0x5f074d		4c89942448030000	MOVQ R10, 0x348(SP)			
  raw.go:444		0x5f0755		4889c2			MOVQ AX, DX				
  raw.go:444		0x5f0758		c442abf6e1		MULXQ R9, R10, R12			
  raw.go:444		0x5f075d		4c89a424a0020000	MOVQ R12, 0x2a0(SP)			
  raw.go:444		0x5f0765		4c899424a8020000	MOVQ R10, 0x2a8(SP)			
  raw.go:447		0x5f076d		4c8b6120		MOVQ 0x20(CX), R12			
  raw.go:21		0x5f0771		4c89e2			MOVQ R12, DX				
  raw.go:21		0x5f0774		c462fbf6d3		MULXQ BX, AX, R10			
  raw.go:21		0x5f0779		4c899424f8040000	MOVQ R10, 0x4f8(SP)			
  raw.go:21		0x5f0781		4889442408		MOVQ AX, 0x8(SP)			
  raw.go:111		0x5f0786		c462fbf6d6		MULXQ SI, AX, R10			
  raw.go:111		0x5f078b		4c89942480000000	MOVQ R10, 0x80(SP)			
  raw.go:111		0x5f0793		4889842488000000	MOVQ AX, 0x88(SP)			
  raw.go:223		0x5f079b		c462fbf6d7		MULXQ DI, AX, R10			
  raw.go:223		0x5f07a0		4c89942468040000	MOVQ R10, 0x468(SP)			
  raw.go:223		0x5f07a8		4889842470040000	MOVQ AX, 0x470(SP)			
  raw.go:335		0x5f07b0		c442fbf6d0		MULXQ R8, AX, R10			
  raw.go:335		0x5f07b5		4c89942470030000	MOVQ R10, 0x370(SP)			
  raw.go:335		0x5f07bd		4889842478030000	MOVQ AX, 0x378(SP)			
  raw.go:447		0x5f07c5		4c89ca			MOVQ R9, DX				
  raw.go:447		0x5f07c8		c442fbf6d4		MULXQ R12, AX, R10			
  raw.go:447		0x5f07cd		4c89942490020000	MOVQ R10, 0x290(SP)			
  raw.go:447		0x5f07d5		4889842498020000	MOVQ AX, 0x298(SP)			
  raw.go:450		0x5f07dd		4c89da			MOVQ R11, DX				
  raw.go:450		0x5f07e0		c442fbf6d1		MULXQ R9, AX, R10			
  raw.go:450		0x5f07e5		4c89942480020000	MOVQ R10, 0x280(SP)			
  raw.go:450		0x5f07ed		4889842488020000	MOVQ AX, 0x288(SP)			
  raw.go:453		0x5f07f5		4c89fa			MOVQ R15, DX				
  raw.go:453		0x5f07f8		c442fbf6d1		MULXQ R9, AX, R10			
  raw.go:453		0x5f07fd		4c89942470020000	MOVQ R10, 0x270(SP)			
  raw.go:453		0x5f0805		4889842478020000	MOVQ AX, 0x278(SP)			
  raw.go:456		0x5f080d		4c89ea			MOVQ R13, DX				
  raw.go:456		0x5f0810		c442fbf6d1		MULXQ R9, AX, R10			
  raw.go:456		0x5f0815		4c89942460020000	MOVQ R10, 0x260(SP)			
  raw.go:456		0x5f081d		4889842468020000	MOVQ AX, 0x268(SP)			
  raw.go:459		0x5f0825		488b09			MOVQ 0(CX), CX				
  raw.go:33		0x5f0828		4889da			MOVQ BX, DX				
  raw.go:33		0x5f082b		c4e2ebf6d9		MULXQ CX, DX, BX			
  raw.go:33		0x5f0830		48899424e0030000	MOVQ DX, 0x3e0(SP)			
  raw.go:51		0x5f0838		48ba0100000001000000	MOVQ $0x100000001, DX			
  raw.go:51		0x5f0842		4c8b9424e0030000	MOVQ 0x3e0(SP), R10			
  raw.go:51		0x5f084a		c4c2ebf6c2		MULXQ R10, DX, AX			
  raw.go:51		0x5f084f		4889d0			MOVQ DX, AX				
  raw.go:60		0x5f0852		48c7c2ffffffff		MOVQ $-0x1, DX				
  raw.go:60		0x5f0859		c4e2abf6d0		MULXQ AX, R10, DX			
  raw.go:57		0x5f085e		4889942400020000	MOVQ DX, 0x200(SP)			
  raw.go:60		0x5f0866		4c899424f8010000	MOVQ R10, 0x1f8(SP)			
  raw.go:63		0x5f086e		48c7c2feffffff		MOVQ $-0x2, DX				
  raw.go:63		0x5f0875		c4e2abf6d0		MULXQ AX, R10, DX			
  raw.go:63		0x5f087a		4889942448010000	MOVQ DX, 0x148(SP)			
  raw.go:63		0x5f0882		4c899424a0010000	MOVQ R10, 0x1a0(SP)			
  raw.go:66		0x5f088a		48ba00000000ffffffff	MOVQ $0xffffffff00000000, DX		
  raw.go:66		0x5f0894		c4e2abf6d0		MULXQ AX, R10, DX			
  raw.go:66		0x5f0899		4889942410010000	MOVQ DX, 0x110(SP)			
  raw.go:69		0x5f08a1		baffffffff		MOVL $-0x1, DX				
  raw.go:69		0x5f08a6		c4e2ebf6c0		MULXQ AX, DX, AX			
  raw.go:69		0x5f08ab		48898424f0000000	MOVQ AX, 0xf0(SP)			
  raw.go:69		0x5f08b3		48899424f8000000	MOVQ DX, 0xf8(SP)			
  raw.go:123		0x5f08bb		4889ca			MOVQ CX, DX				
  raw.go:123		0x5f08be		c4e2fbf6f6		MULXQ SI, AX, SI			
  raw.go:123		0x5f08c3		4889742438		MOVQ SI, 0x38(SP)			
  raw.go:123		0x5f08c8		4889442448		MOVQ AX, 0x48(SP)			
  raw.go:235		0x5f08cd		c4e2fbf6ff		MULXQ DI, AX, DI			
  raw.go:235		0x5f08d2		4889bc2420040000	MOVQ DI, 0x420(SP)			
  raw.go:235		0x5f08da		4889842428040000	MOVQ AX, 0x428(SP)			
  raw.go:347		0x5f08e2		c442fbf6c0		MULXQ R8, AX, R8			
  raw.go:347		0x5f08e7		4c89842430030000	MOVQ R8, 0x330(SP)			
  raw.go:347		0x5f08ef		4889842438030000	MOVQ AX, 0x338(SP)			
  raw.go:459		0x5f08f7		c442fbf6c9		MULXQ R9, AX, R9			
  raw.go:459		0x5f08fc		4c898c2450020000	MOVQ R9, 0x250(SP)			
  raw.go:459		0x5f0904		4889842458020000	MOVQ AX, 0x258(SP)			
  raw.go:556		0x5f090c		488b9424e8000000	MOVQ 0xe8(SP), DX			
  raw.go:556		0x5f0914		488b842400050000	MOVQ 0x500(SP), AX			
  raw.go:556		0x5f091c		c4e2b3f6c0		MULXQ AX, R9, AX			
  raw.go:556		0x5f0921		48898424b0010000	MOVQ AX, 0x1b0(SP)			
  raw.go:556		0x5f0929		4c898c24b8010000	MOVQ R9, 0x1b8(SP)			
  raw.go:559		0x5f0931		4c89e2			MOVQ R12, DX				
  raw.go:559		0x5f0934		488b8424e8000000	MOVQ 0xe8(SP), AX			
  raw.go:559		0x5f093c		c462ebf6e0		MULXQ AX, DX, R12			
  raw.go:559		0x5f0941		4c89a42498010000	MOVQ R12, 0x198(SP)			
  raw.go:559		0x5f0949		48899424a8010000	MOVQ DX, 0x1a8(SP)			
  raw.go:562		0x5f0951		4c89da			MOVQ R11, DX				
  raw.go:562		0x5f0954		c462ebf6d8		MULXQ AX, DX, R11			
  raw.go:562		0x5f0959		4c899c2488010000	MOVQ R11, 0x188(SP)			
  raw.go:562		0x5f0961		4889942490010000	MOVQ DX, 0x190(SP)			
  raw.go:565		0x5f0969		4c89fa			MOVQ R15, DX				
  raw.go:565		0x5f096c		c462ebf6f8		MULXQ AX, DX, R15			
  raw.go:565		0x5f0971		4c89bc2478010000	MOVQ R15, 0x178(SP)			
  raw.go:565		0x5f0979		4889942480010000	MOVQ DX, 0x180(SP)			
  raw.go:568		0x5f0981		4c89ea			MOVQ R13, DX				
  raw.go:568		0x5f0984		c462ebf6e8		MULXQ AX, DX, R13			
  raw.go:568		0x5f0989		4c89ac2468010000	MOVQ R13, 0x168(SP)			
  raw.go:568		0x5f0991		4889942470010000	MOVQ DX, 0x170(SP)			
  raw.go:571		0x5f0999		4889ca			MOVQ CX, DX				
  raw.go:571		0x5f099c		c4e2f3f6c0		MULXQ AX, CX, AX			
  raw.go:571		0x5f09a1		4889842458010000	MOVQ AX, 0x158(SP)			
  raw.go:571		0x5f09a9		48898c2460010000	MOVQ CX, 0x160(SP)			
  raw.go:687		0x5f09b1		90			NOPL					
  raw.go:689		0x5f09b2		90			NOPL					
  raw.go:691		0x5f09b3		90			NOPL					
  raw.go:693		0x5f09b4		90			NOPL					
  raw.go:695		0x5f09b5		90			NOPL					
  raw.go:697		0x5f09b6		90			NOPL					
  raw.go:36		0x5f09b7		488b942460040000	MOVQ 0x460(SP), DX			
  raw.go:36		0x5f09bf		4801da			ADDQ BX, DX				
  raw.go:39		0x5f09c2		488b9c2410040000	MOVQ 0x410(SP), BX			
  raw.go:39		0x5f09ca		488b8c24c8040000	MOVQ 0x4c8(SP), CX			
  raw.go:39		0x5f09d2		4811cb			ADCQ CX, BX				
  raw.go:42		0x5f09d5		488b8c24a0040000	MOVQ 0x4a0(SP), CX			
  raw.go:42		0x5f09dd		4c8b8c24d8040000	MOVQ 0x4d8(SP), R9			
  raw.go:42		0x5f09e5		4c11c9			ADCQ R9, CX				
  raw.go:45		0x5f09e8		4c8b8c24d0040000	MOVQ 0x4d0(SP), R9			
  raw.go:45		0x5f09f0		4c8b642408		MOVQ 0x8(SP), R12			
  raw.go:45		0x5f09f5		4d11e1			ADCQ R12, R9				
  raw.go:48		0x5f09f8		4c8ba424f8040000	MOVQ 0x4f8(SP), R12			
  raw.go:48		0x5f0a00		4c8b9c2498000000	MOVQ 0x98(SP), R11			
  raw.go:48		0x5f0a08		4d11dc			ADCQ R11, R12				
  raw.go:49		0x5f0a0b		4c8b5c2440		MOVQ 0x40(SP), R11			
  raw.go:49		0x5f0a10		4983d300		ADCQ $0x0, R11				
  raw.go:72		0x5f0a14		4c8bbc24f0000000	MOVQ 0xf0(SP), R15			
  raw.go:72		0x5f0a1c		4d01d7			ADDQ R10, R15				
  raw.go:75		0x5f0a1f		4c8b942410010000	MOVQ 0x110(SP), R10			
  raw.go:75		0x5f0a27		4c8bac24a0010000	MOVQ 0x1a0(SP), R13			
  raw.go:75		0x5f0a2f		4d11ea			ADCQ R13, R10				
  raw.go:78		0x5f0a32		4c8bac2448010000	MOVQ 0x148(SP), R13			
  raw.go:78		0x5f0a3a		488b8424f8010000	MOVQ 0x1f8(SP), AX			
  raw.go:78		0x5f0a42		4911c5			ADCQ AX, R13				
  raw.go:81		0x5f0a45		4c8b842400020000	MOVQ 0x200(SP), R8			
  raw.go:81		0x5f0a4d		4c11c0			ADCQ R8, AX				
  raw.go:84		0x5f0a50		488bbc24f8010000	MOVQ 0x1f8(SP), DI			
  raw.go:84		0x5f0a58		4c11c7			ADCQ R8, DI				
  raw.go:85		0x5f0a5b		4983d000		ADCQ $0x0, R8				
  raw.go:85		0x5f0a5f		4c898424e0000000	MOVQ R8, 0xe0(SP)			
  raw.go:87		0x5f0a67		488bb424e0030000	MOVQ 0x3e0(SP), SI			
  raw.go:87		0x5f0a6f		4c8b8424f8000000	MOVQ 0xf8(SP), R8			
  raw.go:87		0x5f0a77		4c01c6			ADDQ R8, SI				
  raw.go:90		0x5f0a7a		4c11fa			ADCQ R15, DX				
  raw.go:90		0x5f0a7d		48899424d8000000	MOVQ DX, 0xd8(SP)			
  raw.go:93		0x5f0a85		4911da			ADCQ BX, R10				
  raw.go:93		0x5f0a88		4c899424d0000000	MOVQ R10, 0xd0(SP)			
  raw.go:96		0x5f0a90		4911cd			ADCQ CX, R13				
  raw.go:96		0x5f0a93		4c89ac24c8000000	MOVQ R13, 0xc8(SP)			
  raw.go:99		0x5f0a9b		4c11c8			ADCQ R9, AX				
  raw.go:99		0x5f0a9e		48898424c0000000	MOVQ AX, 0xc0(SP)			
  raw.go:102		0x5f0aa6		4c11e7			ADCQ R12, DI				
  raw.go:102		0x5f0aa9		4889bc24b8000000	MOVQ DI, 0xb8(SP)			
  raw.go:105		0x5f0ab1		488b8c24e0000000	MOVQ 0xe0(SP), CX			
  raw.go:105		0x5f0ab9		4c11d9			ADCQ R11, CX				
  raw.go:105		0x5f0abc		48898c24b0000000	MOVQ CX, 0xb0(SP)			
  raw.go:105		0x5f0ac4		0f92c3			SETB BL					
  raw.go:105		0x5f0ac7		0fb6db			MOVZX BL, BX				
  raw.go:105		0x5f0aca		48899c24a8000000	MOVQ BX, 0xa8(SP)			
  raw.go:126		0x5f0ad2		488b742438		MOVQ 0x38(SP), SI			
  raw.go:126		0x5f0ad7		4c8b442458		MOVQ 0x58(SP), R8			
  raw.go:126		0x5f0adc		4c01c6			ADDQ R8, SI				
  raw.go:126		0x5f0adf		4889742430		MOVQ SI, 0x30(SP)			
  raw.go:129		0x5f0ae4		4c8b442450		MOVQ 0x50(SP), R8			
  raw.go:129		0x5f0ae9		4c8b4c2468		MOVQ 0x68(SP), R9			
  raw.go:129		0x5f0aee		4d11c8			ADCQ R9, R8				
  raw.go:129		0x5f0af1		4c89442428		MOVQ R8, 0x28(SP)			
  raw.go:132		0x5f0af6		4c8b4c2460		MOVQ 0x60(SP), R9			
  raw.go:132		0x5f0afb		4c8b5c2478		MOVQ 0x78(SP), R11			
  raw.go:132		0x5f0b00		4d11d9			ADCQ R11, R9				
  raw.go:132		0x5f0b03		4c894c2420		MOVQ R9, 0x20(SP)			
  raw.go:135		0x5f0b08		4c8b5c2470		MOVQ 0x70(SP), R11			
  raw.go:135		0x5f0b0d		4c8ba42488000000	MOVQ 0x88(SP), R12			
  raw.go:135		0x5f0b15		4d11e3			ADCQ R12, R11				
  raw.go:135		0x5f0b18		4c895c2418		MOVQ R11, 0x18(SP)			
  raw.go:138		0x5f0b1d		4c8ba42480000000	MOVQ 0x80(SP), R12			
  raw.go:138		0x5f0b25		4c8bbc24a0000000	MOVQ 0xa0(SP), R15			
  raw.go:138		0x5f0b2d		4d11fc			ADCQ R15, R12				
  raw.go:138		0x5f0b30		4c89642410		MOVQ R12, 0x10(SP)			
  raw.go:139		0x5f0b35		4c8bbc2490000000	MOVQ 0x90(SP), R15			
  raw.go:139		0x5f0b3d		4983d700		ADCQ $0x0, R15				
  raw.go:139		0x5f0b41		4c893c24		MOVQ R15, 0(SP)				
  raw.go:142		0x5f0b45		488b5c2448		MOVQ 0x48(SP), BX			
  raw.go:142		0x5f0b4a		4801d3			ADDQ DX, BX				
  raw.go:145		0x5f0b4d		4c11d6			ADCQ R10, SI				
  raw.go:148		0x5f0b50		4d11e8			ADCQ R13, R8				
  raw.go:151		0x5f0b53		4911c1			ADCQ AX, R9				
  raw.go:154		0x5f0b56		4911fb			ADCQ DI, R11				
  raw.go:154		0x5f0b59		4c899c24f0040000	MOVQ R11, 0x4f0(SP)			
  raw.go:157		0x5f0b61		4911cc			ADCQ CX, R12				
  raw.go:157		0x5f0b64		4c89a424e8040000	MOVQ R12, 0x4e8(SP)			
  raw.go:160		0x5f0b6c		488b8c24a8000000	MOVQ 0xa8(SP), CX			
  raw.go:160		0x5f0b74		4911cf			ADCQ CX, R15				
  raw.go:160		0x5f0b77		4c89bc24e0040000	MOVQ R15, 0x4e0(SP)			
  raw.go:162		0x5f0b7f		4889da			MOVQ BX, DX				
  raw.go:162		0x5f0b82		48b90100000001000000	MOVQ $0x100000001, CX			
  raw.go:162		0x5f0b8c		c4e2c3f6c9		MULXQ CX, DI, CX			
  raw.go:165		0x5f0b91		4889fa			MOVQ DI, DX				
  raw.go:165		0x5f0b94		48c7c1ffffffff		MOVQ $-0x1, CX				
  raw.go:165		0x5f0b9b		c4e2fbf6c9		MULXQ CX, AX, CX			
  raw.go:174		0x5f0ba0		49c7c5feffffff		MOVQ $-0x2, R13				
  raw.go:174		0x5f0ba7		c442abf6ed		MULXQ R13, R10, R13			
  raw.go:177		0x5f0bac		49bf00000000ffffffff	MOVQ $0xffffffff00000000, R15		
  raw.go:177		0x5f0bb6		c4429bf6ff		MULXQ R15, R12, R15			
  raw.go:180		0x5f0bbb		41bbffffffff		MOVL $-0x1, R11				
  raw.go:180		0x5f0bc1		c4c2c3f6d3		MULXQ R11, DI, DX			
  raw.go:183		0x5f0bc6		4c01e2			ADDQ R12, DX				
  raw.go:186		0x5f0bc9		4d11d7			ADCQ R10, R15				
  raw.go:189		0x5f0bcc		4911c5			ADCQ AX, R13				
  raw.go:192		0x5f0bcf		4989c2			MOVQ AX, R10				
  raw.go:192		0x5f0bd2		4811c8			ADCQ CX, AX				
  raw.go:195		0x5f0bd5		4911ca			ADCQ CX, R10				
  raw.go:196		0x5f0bd8		4883d100		ADCQ $0x0, CX				
  raw.go:198		0x5f0bdc		4801fb			ADDQ DI, BX				
  raw.go:201		0x5f0bdf		4811f2			ADCQ SI, DX				
  raw.go:201		0x5f0be2		48899424c0040000	MOVQ DX, 0x4c0(SP)			
  raw.go:204		0x5f0bea		4d11c7			ADCQ R8, R15				
  raw.go:204		0x5f0bed		4c89bc24b8040000	MOVQ R15, 0x4b8(SP)			
  raw.go:207		0x5f0bf5		4d11cd			ADCQ R9, R13				
  raw.go:207		0x5f0bf8		4c89ac24b0040000	MOVQ R13, 0x4b0(SP)			
  raw.go:210		0x5f0c00		488b9c24f0040000	MOVQ 0x4f0(SP), BX			
  raw.go:210		0x5f0c08		4811d8			ADCQ BX, AX				
  raw.go:210		0x5f0c0b		48898424a8040000	MOVQ AX, 0x4a8(SP)			
  raw.go:213		0x5f0c13		488b9c24e8040000	MOVQ 0x4e8(SP), BX			
  raw.go:213		0x5f0c1b		4911da			ADCQ BX, R10				
  raw.go:213		0x5f0c1e		4c89942498040000	MOVQ R10, 0x498(SP)			
  raw.go:216		0x5f0c26		488b9c24e0040000	MOVQ 0x4e0(SP), BX			
  raw.go:216		0x5f0c2e		4811d9			ADCQ BX, CX				
  raw.go:216		0x5f0c31		48898c2490040000	MOVQ CX, 0x490(SP)			
  raw.go:216		0x5f0c39		0f92c3			SETB BL					
  raw.go:216		0x5f0c3c		0fb6db			MOVZX BL, BX				
  raw.go:142		0x5f0c3f		488b742448		MOVQ 0x48(SP), SI			
  raw.go:142		0x5f0c44		488bbc24d8000000	MOVQ 0xd8(SP), DI			
  raw.go:142		0x5f0c4c		4801fe			ADDQ DI, SI				
  raw.go:145		0x5f0c4f		488b742430		MOVQ 0x30(SP), SI			
  raw.go:145		0x5f0c54		488bbc24d0000000	MOVQ 0xd0(SP), DI			
  raw.go:145		0x5f0c5c		4811fe			ADCQ DI, SI				
  raw.go:148		0x5f0c5f		488b742428		MOVQ 0x28(SP), SI			
  raw.go:148		0x5f0c64		488bbc24c8000000	MOVQ 0xc8(SP), DI			
  raw.go:148		0x5f0c6c		4811fe			ADCQ DI, SI				
  raw.go:151		0x5f0c6f		488b742420		MOVQ 0x20(SP), SI			
  raw.go:151		0x5f0c74		488bbc24c0000000	MOVQ 0xc0(SP), DI			
  raw.go:151		0x5f0c7c		4811fe			ADCQ DI, SI				
  raw.go:154		0x5f0c7f		488b742418		MOVQ 0x18(SP), SI			
  raw.go:154		0x5f0c84		488bbc24b8000000	MOVQ 0xb8(SP), DI			
  raw.go:154		0x5f0c8c		4811fe			ADCQ DI, SI				
  raw.go:157		0x5f0c8f		488b742410		MOVQ 0x10(SP), SI			
  raw.go:157		0x5f0c94		488bbc24b0000000	MOVQ 0xb0(SP), DI			
  raw.go:157		0x5f0c9c		4811fe			ADCQ DI, SI				
  raw.go:160		0x5f0c9f		488b3424		MOVQ 0(SP), SI				
  raw.go:160		0x5f0ca3		488bbc24a8000000	MOVQ 0xa8(SP), DI			
  raw.go:160		0x5f0cab		4811fe			ADCQ DI, SI				
  raw.go:217		0x5f0cae		4883d300		ADCQ $0x0, BX				
  raw.go:217		0x5f0cb2		48899c2488040000	MOVQ BX, 0x488(SP)			
  raw.go:238		0x5f0cba		488bb42420040000	MOVQ 0x420(SP), SI			
  raw.go:238		0x5f0cc2		488bbc2438040000	MOVQ 0x438(SP), DI			
  raw.go:238		0x5f0cca		4801fe			ADDQ DI, SI				
  raw.go:238		0x5f0ccd		4889b42418040000	MOVQ SI, 0x418(SP)			
  raw.go:241		0x5f0cd5		488bbc2430040000	MOVQ 0x430(SP), DI			
  raw.go:241		0x5f0cdd		4c8b842448040000	MOVQ 0x448(SP), R8			
  raw.go:241		0x5f0ce5		4c11c7			ADCQ R8, DI				
  raw.go:241		0x5f0ce8		4889bc2408040000	MOVQ DI, 0x408(SP)			
  raw.go:244		0x5f0cf0		4c8b842440040000	MOVQ 0x440(SP), R8			
  raw.go:244		0x5f0cf8		4c8b8c2458040000	MOVQ 0x458(SP), R9			
  raw.go:244		0x5f0d00		4d11c8			ADCQ R9, R8				
  raw.go:244		0x5f0d03		4c89842400040000	MOVQ R8, 0x400(SP)			
  raw.go:247		0x5f0d0b		4c8b8c2450040000	MOVQ 0x450(SP), R9			
  raw.go:247		0x5f0d13		4c8ba42470040000	MOVQ 0x470(SP), R12			
  raw.go:247		0x5f0d1b		4d11e1			ADCQ R12, R9				
  raw.go:247		0x5f0d1e		4c898c24f8030000	MOVQ R9, 0x3f8(SP)			
  raw.go:250		0x5f0d26		4c8ba42468040000	MOVQ 0x468(SP), R12			
  raw.go:250		0x5f0d2e		4c8b9c2480040000	MOVQ 0x480(SP), R11			
  raw.go:250		0x5f0d36		4d11dc			ADCQ R11, R12				
  raw.go:250		0x5f0d39		4c89a424f0030000	MOVQ R12, 0x3f0(SP)			
  raw.go:251		0x5f0d41		4c8b9c2478040000	MOVQ 0x478(SP), R11			
  raw.go:251		0x5f0d49		4983d300		ADCQ $0x0, R11				
  raw.go:251		0x5f0d4d		4c899c24e8030000	MOVQ R11, 0x3e8(SP)			
  raw.go:254		0x5f0d55		488b9c2428040000	MOVQ 0x428(SP), BX			
  raw.go:254		0x5f0d5d		4801d3			ADDQ DX, BX				
  raw.go:257		0x5f0d60		4c11fe			ADCQ R15, SI				
  raw.go:260		0x5f0d63		4c11ef			ADCQ R13, DI				
  raw.go:263		0x5f0d66		4911c0			ADCQ AX, R8				
  raw.go:266		0x5f0d69		4d11d1			ADCQ R10, R9				
  raw.go:266		0x5f0d6c		4c898c24d8030000	MOVQ R9, 0x3d8(SP)			
  raw.go:269		0x5f0d74		4911cc			ADCQ CX, R12				
  raw.go:269		0x5f0d77		4c89a424d0030000	MOVQ R12, 0x3d0(SP)			
  raw.go:272		0x5f0d7f		488b8c2488040000	MOVQ 0x488(SP), CX			
  raw.go:272		0x5f0d87		4911cb			ADCQ CX, R11				
  raw.go:272		0x5f0d8a		4c899c24c8030000	MOVQ R11, 0x3c8(SP)			
  raw.go:274		0x5f0d92		4889da			MOVQ BX, DX				
  raw.go:274		0x5f0d95		48b90100000001000000	MOVQ $0x100000001, CX			
  raw.go:274		0x5f0d9f		c4e2abf6c9		MULXQ CX, R10, CX			
  raw.go:277		0x5f0da4		4c89d2			MOVQ R10, DX				
  raw.go:277		0x5f0da7		48c7c1ffffffff		MOVQ $-0x1, CX				
  raw.go:277		0x5f0dae		c4e2fbf6c9		MULXQ CX, AX, CX			
  raw.go:286		0x5f0db3		49c7c5feffffff		MOVQ $-0x2, R13				
  raw.go:286		0x5f0dba		c44283f6ed		MULXQ R13, R15, R13			
  raw.go:289		0x5f0dbf		49bb00000000ffffffff	MOVQ $0xffffffff00000000, R11		
  raw.go:289		0x5f0dc9		c4429bf6db		MULXQ R11, R12, R11			
  raw.go:292		0x5f0dce		41b9ffffffff		MOVL $-0x1, R9				
  raw.go:292		0x5f0dd4		c4c2abf6d1		MULXQ R9, R10, DX			
  raw.go:295		0x5f0dd9		4c01e2			ADDQ R12, DX				
  raw.go:298		0x5f0ddc		4d11fb			ADCQ R15, R11				
  raw.go:301		0x5f0ddf		4911c5			ADCQ AX, R13				
  raw.go:304		0x5f0de2		4989c4			MOVQ AX, R12				
  raw.go:304		0x5f0de5		4811c8			ADCQ CX, AX				
  raw.go:307		0x5f0de8		4911cc			ADCQ CX, R12				
  raw.go:308		0x5f0deb		4883d100		ADCQ $0x0, CX				
  raw.go:310		0x5f0def		4c01d3			ADDQ R10, BX				
  raw.go:313		0x5f0df2		4811f2			ADCQ SI, DX				
  raw.go:313		0x5f0df5		48899424c0030000	MOVQ DX, 0x3c0(SP)			
  raw.go:316		0x5f0dfd		4911fb			ADCQ DI, R11				
  raw.go:316		0x5f0e00		4c899c24b8030000	MOVQ R11, 0x3b8(SP)			
  raw.go:319		0x5f0e08		4d11c5			ADCQ R8, R13				
  raw.go:319		0x5f0e0b		4c89ac24b0030000	MOVQ R13, 0x3b0(SP)			
  raw.go:322		0x5f0e13		488b9c24d8030000	MOVQ 0x3d8(SP), BX			
  raw.go:322		0x5f0e1b		4811d8			ADCQ BX, AX				
  raw.go:322		0x5f0e1e		48898424a8030000	MOVQ AX, 0x3a8(SP)			
  raw.go:325		0x5f0e26		488b9c24d0030000	MOVQ 0x3d0(SP), BX			
  raw.go:325		0x5f0e2e		4911dc			ADCQ BX, R12				
  raw.go:325		0x5f0e31		4c89a424a0030000	MOVQ R12, 0x3a0(SP)			
  raw.go:328		0x5f0e39		488b9c24c8030000	MOVQ 0x3c8(SP), BX			
  raw.go:328		0x5f0e41		4811d9			ADCQ BX, CX				
  raw.go:328		0x5f0e44		48898c2498030000	MOVQ CX, 0x398(SP)			
  raw.go:328		0x5f0e4c		0f92c3			SETB BL					
  raw.go:328		0x5f0e4f		0fb6db			MOVZX BL, BX				
  raw.go:254		0x5f0e52		488bb42428040000	MOVQ 0x428(SP), SI			
  raw.go:254		0x5f0e5a		488bbc24c0040000	MOVQ 0x4c0(SP), DI			
  raw.go:254		0x5f0e62		4801fe			ADDQ DI, SI				
  raw.go:257		0x5f0e65		488bb42418040000	MOVQ 0x418(SP), SI			
  raw.go:257		0x5f0e6d		488bbc24b8040000	MOVQ 0x4b8(SP), DI			
  raw.go:257		0x5f0e75		4811fe			ADCQ DI, SI				
  raw.go:260		0x5f0e78		488bb42408040000	MOVQ 0x408(SP), SI			
  raw.go:260		0x5f0e80		488bbc24b0040000	MOVQ 0x4b0(SP), DI			
  raw.go:260		0x5f0e88		4811fe			ADCQ DI, SI				
  raw.go:263		0x5f0e8b		488bb42400040000	MOVQ 0x400(SP), SI			
  raw.go:263		0x5f0e93		488bbc24a8040000	MOVQ 0x4a8(SP), DI			
  raw.go:263		0x5f0e9b		4811fe			ADCQ DI, SI				
  raw.go:266		0x5f0e9e		488bb424f8030000	MOVQ 0x3f8(SP), SI			
  raw.go:266		0x5f0ea6		488bbc2498040000	MOVQ 0x498(SP), DI			
  raw.go:266		0x5f0eae		4811fe			ADCQ DI, SI				
  raw.go:269		0x5f0eb1		488bb424f0030000	MOVQ 0x3f0(SP), SI			
  raw.go:269		0x5f0eb9		488bbc2490040000	MOVQ 0x490(SP), DI			
  raw.go:269		0x5f0ec1		4811fe			ADCQ DI, SI				
  raw.go:272		0x5f0ec4		488bb424e8030000	MOVQ 0x3e8(SP), SI			
  raw.go:272		0x5f0ecc		488bbc2488040000	MOVQ 0x488(SP), DI			
  raw.go:272		0x5f0ed4		4811fe			ADCQ DI, SI				
  raw.go:329		0x5f0ed7		4883d300		ADCQ $0x0, BX				
  raw.go:329		0x5f0edb		48899c2490030000	MOVQ BX, 0x390(SP)			
  raw.go:350		0x5f0ee3		488bb42430030000	MOVQ 0x330(SP), SI			
  raw.go:350		0x5f0eeb		488bbc2448030000	MOVQ 0x348(SP), DI			
  raw.go:350		0x5f0ef3		4801fe			ADDQ DI, SI				
  raw.go:350		0x5f0ef6		4889b42428030000	MOVQ SI, 0x328(SP)			
  raw.go:353		0x5f0efe		488bbc2440030000	MOVQ 0x340(SP), DI			
  raw.go:353		0x5f0f06		4c8b842458030000	MOVQ 0x358(SP), R8			
  raw.go:353		0x5f0f0e		4c11c7			ADCQ R8, DI				
  raw.go:353		0x5f0f11		4889bc2420030000	MOVQ DI, 0x320(SP)			
  raw.go:356		0x5f0f19		4c8b842450030000	MOVQ 0x350(SP), R8			
  raw.go:356		0x5f0f21		4c8b942468030000	MOVQ 0x368(SP), R10			
  raw.go:356		0x5f0f29		4d11d0			ADCQ R10, R8				
  raw.go:356		0x5f0f2c		4c89842418030000	MOVQ R8, 0x318(SP)			
  raw.go:359		0x5f0f34		4c8b942460030000	MOVQ 0x360(SP), R10			
  raw.go:359		0x5f0f3c		4c8bbc2478030000	MOVQ 0x378(SP), R15			
  raw.go:359		0x5f0f44		4d11fa			ADCQ R15, R10				
  raw.go:359		0x5f0f47		4c89942410030000	MOVQ R10, 0x310(SP)			
  raw.go:362		0x5f0f4f		4c8bbc2470030000	MOVQ 0x370(SP), R15			
  raw.go:362		0x5f0f57		4c8b8c2488030000	MOVQ 0x388(SP), R9			
  raw.go:362		0x5f0f5f		4d11cf			ADCQ R9, R15				
  raw.go:362		0x5f0f62		4c89bc2408030000	MOVQ R15, 0x308(SP)			
  raw.go:363		0x5f0f6a		4c8b8c2480030000	MOVQ 0x380(SP), R9			
  raw.go:363		0x5f0f72		4983d100		ADCQ $0x0, R9				
  raw.go:363		0x5f0f76		4c898c2400030000	MOVQ R9, 0x300(SP)			
  raw.go:366		0x5f0f7e		488b9c2438030000	MOVQ 0x338(SP), BX			
  raw.go:366		0x5f0f86		4801d3			ADDQ DX, BX				
  raw.go:369		0x5f0f89		4c11de			ADCQ R11, SI				
  raw.go:372		0x5f0f8c		4c11ef			ADCQ R13, DI				
  raw.go:375		0x5f0f8f		4911c0			ADCQ AX, R8				
  raw.go:378		0x5f0f92		4d11e2			ADCQ R12, R10				
  raw.go:378		0x5f0f95		4c899424f8020000	MOVQ R10, 0x2f8(SP)			
  raw.go:381		0x5f0f9d		4911cf			ADCQ CX, R15				
  raw.go:381		0x5f0fa0		4c89bc24f0020000	MOVQ R15, 0x2f0(SP)			
  raw.go:384		0x5f0fa8		488b8c2490030000	MOVQ 0x390(SP), CX			
  raw.go:384		0x5f0fb0		4911c9			ADCQ CX, R9				
  raw.go:384		0x5f0fb3		4c898c24e8020000	MOVQ R9, 0x2e8(SP)			
  raw.go:386		0x5f0fbb		4889da			MOVQ BX, DX				
  raw.go:386		0x5f0fbe		48b90100000001000000	MOVQ $0x100000001, CX			
  raw.go:386		0x5f0fc8		c4e29bf6c9		MULXQ CX, R12, CX			
  raw.go:395		0x5f0fcd		4c89e2			MOVQ R12, DX				
  raw.go:395		0x5f0fd0		48c7c1ffffffff		MOVQ $-0x1, CX				
  raw.go:395		0x5f0fd7		c4e2fbf6c9		MULXQ CX, AX, CX			
  raw.go:398		0x5f0fdc		49c7c5feffffff		MOVQ $-0x2, R13				
  raw.go:398		0x5f0fe3		c442a3f6ed		MULXQ R13, R11, R13			
  raw.go:401		0x5f0fe8		49b900000000ffffffff	MOVQ $0xffffffff00000000, R9		
  raw.go:401		0x5f0ff2		c44283f6c9		MULXQ R9, R15, R9			
  raw.go:404		0x5f0ff7		41baffffffff		MOVL $-0x1, R10				
  raw.go:404		0x5f0ffd		c4c29bf6d2		MULXQ R10, R12, DX			
  raw.go:407		0x5f1002		4c01fa			ADDQ R15, DX				
  raw.go:410		0x5f1005		4d11d9			ADCQ R11, R9				
  raw.go:413		0x5f1008		4911c5			ADCQ AX, R13				
  raw.go:416		0x5f100b		4989cb			MOVQ CX, R11				
  raw.go:416		0x5f100e		4811c1			ADCQ AX, CX				
  raw.go:419		0x5f1011		4c11d8			ADCQ R11, AX				
  raw.go:420		0x5f1014		4983d300		ADCQ $0x0, R11				
  raw.go:422		0x5f1018		4c01e3			ADDQ R12, BX				
  raw.go:425		0x5f101b		4811f2			ADCQ SI, DX				
  raw.go:425		0x5f101e		48899424e0020000	MOVQ DX, 0x2e0(SP)			
  raw.go:428		0x5f1026		4911f9			ADCQ DI, R9				
  raw.go:428		0x5f1029		4c898c24d8020000	MOVQ R9, 0x2d8(SP)			
  raw.go:431		0x5f1031		4d11c5			ADCQ R8, R13				
  raw.go:431		0x5f1034		4c89ac24d0020000	MOVQ R13, 0x2d0(SP)			
  raw.go:434		0x5f103c		488b9c24f8020000	MOVQ 0x2f8(SP), BX			
  raw.go:434		0x5f1044		4811d9			ADCQ BX, CX				
  raw.go:434		0x5f1047		48898c24c8020000	MOVQ CX, 0x2c8(SP)			
  raw.go:437		0x5f104f		488b9c24f0020000	MOVQ 0x2f0(SP), BX			
  raw.go:437		0x5f1057		4811d8			ADCQ BX, AX				
  raw.go:437		0x5f105a		48898424c0020000	MOVQ AX, 0x2c0(SP)			
  raw.go:440		0x5f1062		488b9c24e8020000	MOVQ 0x2e8(SP), BX			
  raw.go:440		0x5f106a		4911db			ADCQ BX, R11				
  raw.go:440		0x5f106d		4c899c24b8020000	MOVQ R11, 0x2b8(SP)			
  raw.go:440		0x5f1075		0f92c3			SETB BL					
  raw.go:440		0x5f1078		0fb6db			MOVZX BL, BX				
  raw.go:366		0x5f107b		488bb42438030000	MOVQ 0x338(SP), SI			
  raw.go:366		0x5f1083		488bbc24c0030000	MOVQ 0x3c0(SP), DI			
  raw.go:366		0x5f108b		4801fe			ADDQ DI, SI				
  raw.go:369		0x5f108e		488bb42428030000	MOVQ 0x328(SP), SI			
  raw.go:369		0x5f1096		488bbc24b8030000	MOVQ 0x3b8(SP), DI			
  raw.go:369		0x5f109e		4811fe			ADCQ DI, SI				
  raw.go:372		0x5f10a1		488bb42420030000	MOVQ 0x320(SP), SI			
  raw.go:372		0x5f10a9		488bbc24b0030000	MOVQ 0x3b0(SP), DI			
  raw.go:372		0x5f10b1		4811fe			ADCQ DI, SI				
  raw.go:375		0x5f10b4		488bb42418030000	MOVQ 0x318(SP), SI			
  raw.go:375		0x5f10bc		488bbc24a8030000	MOVQ 0x3a8(SP), DI			
  raw.go:375		0x5f10c4		4811fe			ADCQ DI, SI				
  raw.go:378		0x5f10c7		488bb42410030000	MOVQ 0x310(SP), SI			
  raw.go:378		0x5f10cf		488bbc24a0030000	MOVQ 0x3a0(SP), DI			
  raw.go:378		0x5f10d7		4811fe			ADCQ DI, SI				
  raw.go:381		0x5f10da		488bb42408030000	MOVQ 0x308(SP), SI			
  raw.go:381		0x5f10e2		488bbc2498030000	MOVQ 0x398(SP), DI			
  raw.go:381		0x5f10ea		4811fe			ADCQ DI, SI				
  raw.go:384		0x5f10ed		488bb42400030000	MOVQ 0x300(SP), SI			
  raw.go:384		0x5f10f5		488bbc2490030000	MOVQ 0x390(SP), DI			
  raw.go:384		0x5f10fd		4811fe			ADCQ DI, SI				
  raw.go:441		0x5f1100		4883d300		ADCQ $0x0, BX				
  raw.go:441		0x5f1104		48899c24b0020000	MOVQ BX, 0x2b0(SP)			
  raw.go:462		0x5f110c		488bb42450020000	MOVQ 0x250(SP), SI			
  raw.go:462		0x5f1114		488bbc2468020000	MOVQ 0x268(SP), DI			
  raw.go:462		0x5f111c		4801fe			ADDQ DI, SI				
  raw.go:462		0x5f111f		4889b42448020000	MOVQ SI, 0x248(SP)			
  raw.go:465		0x5f1127		488bbc2460020000	MOVQ 0x260(SP), DI			
  raw.go:465		0x5f112f		4c8b842478020000	MOVQ 0x278(SP), R8			
  raw.go:465		0x5f1137		4c11c7			ADCQ R8, DI				
  raw.go:465		0x5f113a		4889bc2440020000	MOVQ DI, 0x240(SP)			
  raw.go:468		0x5f1142		4c8b842470020000	MOVQ 0x270(SP), R8			
  raw.go:468		0x5f114a		4c8ba42488020000	MOVQ 0x288(SP), R12			
  raw.go:468		0x5f1152		4d11e0			ADCQ R12, R8				
  raw.go:468		0x5f1155		4c89842438020000	MOVQ R8, 0x238(SP)			
  raw.go:471		0x5f115d		4c8ba42480020000	MOVQ 0x280(SP), R12			
  raw.go:471		0x5f1165		4c8bbc2498020000	MOVQ 0x298(SP), R15			
  raw.go:471		0x5f116d		4d11fc			ADCQ R15, R12				
  raw.go:471		0x5f1170		4c89a42430020000	MOVQ R12, 0x230(SP)			
  raw.go:474		0x5f1178		4c8bbc2490020000	MOVQ 0x290(SP), R15			
  raw.go:474		0x5f1180		4c8b9424a8020000	MOVQ 0x2a8(SP), R10			
  raw.go:474		0x5f1188		4d11d7			ADCQ R10, R15				
  raw.go:474		0x5f118b		4c89bc2428020000	MOVQ R15, 0x228(SP)			
  raw.go:475		0x5f1193		4c8b9424a0020000	MOVQ 0x2a0(SP), R10			
  raw.go:475		0x5f119b		4983d200		ADCQ $0x0, R10				
  raw.go:475		0x5f119f		4c89942420020000	MOVQ R10, 0x220(SP)			
  raw.go:478		0x5f11a7		488b9c2458020000	MOVQ 0x258(SP), BX			
  raw.go:478		0x5f11af		4801d3			ADDQ DX, BX				
  raw.go:481		0x5f11b2		4c11ce			ADCQ R9, SI				
  raw.go:484		0x5f11b5		4c11ef			ADCQ R13, DI				
  raw.go:487		0x5f11b8		4911c8			ADCQ CX, R8				
  raw.go:490		0x5f11bb		4911c4			ADCQ AX, R12				
  raw.go:490		0x5f11be		4c89a42418020000	MOVQ R12, 0x218(SP)			
  raw.go:493		0x5f11c6		4d11df			ADCQ R11, R15				
  raw.go:493		0x5f11c9		4c89bc2410020000	MOVQ R15, 0x210(SP)			
  raw.go:496		0x5f11d1		4c8b9c24b0020000	MOVQ 0x2b0(SP), R11			
  raw.go:496		0x5f11d9		4d11da			ADCQ R11, R10				
  raw.go:496		0x5f11dc		4c89942408020000	MOVQ R10, 0x208(SP)			
  raw.go:498		0x5f11e4		4889da			MOVQ BX, DX				
  raw.go:498		0x5f11e7		49bb0100000001000000	MOVQ $0x100000001, R11			
  raw.go:498		0x5f11f1		c442fbf6db		MULXQ R11, AX, R11			
  raw.go:507		0x5f11f6		4889c2			MOVQ AX, DX				
  raw.go:507		0x5f11f9		49c7c3ffffffff		MOVQ $-0x1, R11				
  raw.go:507		0x5f1200		c442f3f6db		MULXQ R11, CX, R11			
  raw.go:510		0x5f1205		49c7c5feffffff		MOVQ $-0x2, R13				
  raw.go:510		0x5f120c		c442b3f6ed		MULXQ R13, R9, R13			
  raw.go:513		0x5f1211		49ba00000000ffffffff	MOVQ $0xffffffff00000000, R10		
  raw.go:513		0x5f121b		c44283f6d2		MULXQ R10, R15, R10			
  raw.go:516		0x5f1220		41bcffffffff		MOVL $-0x1, R12				
  raw.go:516		0x5f1226		c4c2fbf6d4		MULXQ R12, AX, DX			
  raw.go:519		0x5f122b		4c01fa			ADDQ R15, DX				
  raw.go:522		0x5f122e		4d11ca			ADCQ R9, R10				
  raw.go:525		0x5f1231		4911cd			ADCQ CX, R13				
  raw.go:528		0x5f1234		4989c9			MOVQ CX, R9				
  raw.go:528		0x5f1237		4c11d9			ADCQ R11, CX				
  raw.go:531		0x5f123a		4d11d9			ADCQ R11, R9				
  raw.go:532		0x5f123d		4983d300		ADCQ $0x0, R11				
  raw.go:534		0x5f1241		4801c3			ADDQ AX, BX				
  raw.go:537		0x5f1244		4811f2			ADCQ SI, DX				
  raw.go:537		0x5f1247		48899424f0010000	MOVQ DX, 0x1f0(SP)			
  raw.go:540		0x5f124f		4911fa			ADCQ DI, R10				
  raw.go:540		0x5f1252		4c899424e8010000	MOVQ R10, 0x1e8(SP)			
  raw.go:543		0x5f125a		4d11c5			ADCQ R8, R13				
  raw.go:543		0x5f125d		4c89ac24e0010000	MOVQ R13, 0x1e0(SP)			
  raw.go:546		0x5f1265		488b842418020000	MOVQ 0x218(SP), AX			
  raw.go:546		0x5f126d		4811c1			ADCQ AX, CX				
  raw.go:546		0x5f1270		48898c24d8010000	MOVQ CX, 0x1d8(SP)			
  raw.go:549		0x5f1278		488b842410020000	MOVQ 0x210(SP), AX			
  raw.go:549		0x5f1280		4911c1			ADCQ AX, R9				
  raw.go:549		0x5f1283		4c898c24d0010000	MOVQ R9, 0x1d0(SP)			
  raw.go:552		0x5f128b		488b842408020000	MOVQ 0x208(SP), AX			
  raw.go:552		0x5f1293		4911c3			ADCQ AX, R11				
  raw.go:552		0x5f1296		4c899c24c8010000	MOVQ R11, 0x1c8(SP)			
  raw.go:552		0x5f129e		0f92c0			SETB AL					
  raw.go:552		0x5f12a1		0fb6c0			MOVZX AL, AX				
  raw.go:478		0x5f12a4		488b9c2458020000	MOVQ 0x258(SP), BX			
  raw.go:478		0x5f12ac		488bb424e0020000	MOVQ 0x2e0(SP), SI			
  raw.go:478		0x5f12b4		4801f3			ADDQ SI, BX				
  raw.go:481		0x5f12b7		488b9c2448020000	MOVQ 0x248(SP), BX			
  raw.go:481		0x5f12bf		488bb424d8020000	MOVQ 0x2d8(SP), SI			
  raw.go:481		0x5f12c7		4811f3			ADCQ SI, BX				
  raw.go:484		0x5f12ca		488b9c2440020000	MOVQ 0x240(SP), BX			
  raw.go:484		0x5f12d2		488bb424d0020000	MOVQ 0x2d0(SP), SI			
  raw.go:484		0x5f12da		4811f3			ADCQ SI, BX				
  raw.go:487		0x5f12dd		488b9c2438020000	MOVQ 0x238(SP), BX			
  raw.go:487		0x5f12e5		488bb424c8020000	MOVQ 0x2c8(SP), SI			
  raw.go:487		0x5f12ed		4811f3			ADCQ SI, BX				
  raw.go:490		0x5f12f0		488b9c2430020000	MOVQ 0x230(SP), BX			
  raw.go:490		0x5f12f8		488bb424c0020000	MOVQ 0x2c0(SP), SI			
  raw.go:490		0x5f1300		4811f3			ADCQ SI, BX				
  raw.go:493		0x5f1303		488b9c2428020000	MOVQ 0x228(SP), BX			
  raw.go:493		0x5f130b		488bb424b8020000	MOVQ 0x2b8(SP), SI			
  raw.go:493		0x5f1313		4811f3			ADCQ SI, BX				
  raw.go:496		0x5f1316		488b9c2420020000	MOVQ 0x220(SP), BX			
  raw.go:496		0x5f131e		488bb424b0020000	MOVQ 0x2b0(SP), SI			
  raw.go:496		0x5f1326		4811f3			ADCQ SI, BX				
  raw.go:553		0x5f1329		4883d000		ADCQ $0x0, AX				
  raw.go:553		0x5f132d		48898424c0010000	MOVQ AX, 0x1c0(SP)			
  raw.go:574		0x5f1335		488b9c2458010000	MOVQ 0x158(SP), BX			
  raw.go:574		0x5f133d		488bb42470010000	MOVQ 0x170(SP), SI			
  raw.go:574		0x5f1345		4801f3			ADDQ SI, BX				
  raw.go:574		0x5f1348		48899c2450010000	MOVQ BX, 0x150(SP)			
  raw.go:577		0x5f1350		488bb42468010000	MOVQ 0x168(SP), SI			
  raw.go:577		0x5f1358		488bbc2480010000	MOVQ 0x180(SP), DI			
  raw.go:577		0x5f1360		4811fe			ADCQ DI, SI				
  raw.go:577		0x5f1363		4889b42440010000	MOVQ SI, 0x140(SP)			
  raw.go:580		0x5f136b		488bbc2478010000	MOVQ 0x178(SP), DI			
  raw.go:580		0x5f1373		4c8b842490010000	MOVQ 0x190(SP), R8			
  raw.go:580		0x5f137b		4c11c7			ADCQ R8, DI				
  raw.go:580		0x5f137e		4889bc2438010000	MOVQ DI, 0x138(SP)			
  raw.go:583		0x5f1386		4c8b842488010000	MOVQ 0x188(SP), R8			
  raw.go:583		0x5f138e		4c8bbc24a8010000	MOVQ 0x1a8(SP), R15			
  raw.go:583		0x5f1396		4d11f8			ADCQ R15, R8				
  raw.go:583		0x5f1399		4c89842430010000	MOVQ R8, 0x130(SP)			
  raw.go:586		0x5f13a1		4c8bbc2498010000	MOVQ 0x198(SP), R15			
  raw.go:586		0x5f13a9		4c8ba424b8010000	MOVQ 0x1b8(SP), R12			
  raw.go:586		0x5f13b1		4d11e7			ADCQ R12, R15				
  raw.go:586		0x5f13b4		4c89bc2428010000	MOVQ R15, 0x128(SP)			
  raw.go:587		0x5f13bc		4c8ba424b0010000	MOVQ 0x1b0(SP), R12			
  raw.go:587		0x5f13c4		4983d400		ADCQ $0x0, R12				
  raw.go:587		0x5f13c8		4c89a42420010000	MOVQ R12, 0x120(SP)			
  raw.go:590		0x5f13d0		488b842460010000	MOVQ 0x160(SP), AX			
  raw.go:590		0x5f13d8		4801d0			ADDQ DX, AX				
  raw.go:593		0x5f13db		4c11d3			ADCQ R10, BX				
  raw.go:596		0x5f13de		4c11ee			ADCQ R13, SI				
  raw.go:599		0x5f13e1		4811cf			ADCQ CX, DI				
  raw.go:602		0x5f13e4		4d11c8			ADCQ R9, R8				
  raw.go:602		0x5f13e7		4c89842418010000	MOVQ R8, 0x118(SP)			
  raw.go:605		0x5f13ef		4d11df			ADCQ R11, R15				
  raw.go:605		0x5f13f2		4c89bc2408010000	MOVQ R15, 0x108(SP)			
  raw.go:608		0x5f13fa		4c8b9c24c0010000	MOVQ 0x1c0(SP), R11			
  raw.go:608		0x5f1402		4d11dc			ADCQ R11, R12				
  raw.go:608		0x5f1405		4c89a42400010000	MOVQ R12, 0x100(SP)			
  raw.go:610		0x5f140d		4889c2			MOVQ AX, DX				
  raw.go:610		0x5f1410		49bb0100000001000000	MOVQ $0x100000001, R11			
  raw.go:610		0x5f141a		c442b3f6db		MULXQ R11, R9, R11			
  raw.go:613		0x5f141f		4c89ca			MOVQ R9, DX				
  raw.go:613		0x5f1422		49c7c3ffffffff		MOVQ $-0x1, R11				
  raw.go:613		0x5f1429		c442f3f6db		MULXQ R11, CX, R11			
  raw.go:622		0x5f142e		49c7c5feffffff		MOVQ $-0x2, R13				
  raw.go:622		0x5f1435		c442abf6ed		MULXQ R13, R10, R13			
  raw.go:625		0x5f143a		49bc00000000ffffffff	MOVQ $0xffffffff00000000, R12		
  raw.go:625		0x5f1444		c44283f6e4		MULXQ R12, R15, R12			
  raw.go:628		0x5f1449		41b8ffffffff		MOVL $-0x1, R8				
  raw.go:628		0x5f144f		c442ebf6c8		MULXQ R8, DX, R9			
  raw.go:631		0x5f1454		4d01f9			ADDQ R15, R9				
  raw.go:634		0x5f1457		4d11d4			ADCQ R10, R12				
  raw.go:637		0x5f145a		4911cd			ADCQ CX, R13				
  raw.go:640		0x5f145d		4989ca			MOVQ CX, R10				
  raw.go:640		0x5f1460		4c11d9			ADCQ R11, CX				
  raw.go:643		0x5f1463		4d11da			ADCQ R11, R10				
  raw.go:644		0x5f1466		4983d300		ADCQ $0x0, R11				
  raw.go:646		0x5f146a		4801d0			ADDQ DX, AX				
  raw.go:649		0x5f146d		4911d9			ADCQ BX, R9				
  raw.go:652		0x5f1470		4911f4			ADCQ SI, R12				
  raw.go:655		0x5f1473		4911fd			ADCQ DI, R13				
  raw.go:658		0x5f1476		488b842418010000	MOVQ 0x118(SP), AX			
  raw.go:658		0x5f147e		4811c1			ADCQ AX, CX				
  raw.go:661		0x5f1481		488b842408010000	MOVQ 0x108(SP), AX			
  raw.go:661		0x5f1489		4911c2			ADCQ AX, R10				
  raw.go:664		0x5f148c		488b842400010000	MOVQ 0x100(SP), AX			
  raw.go:664		0x5f1494		4911c3			ADCQ AX, R11				
  raw.go:664		0x5f1497		0f92c0			SETB AL					
  raw.go:664		0x5f149a		0fb6c0			MOVZX AL, AX				
  raw.go:590		0x5f149d		488b9c2460010000	MOVQ 0x160(SP), BX			
  raw.go:590		0x5f14a5		488bb424f0010000	MOVQ 0x1f0(SP), SI			
  raw.go:590		0x5f14ad		4801f3			ADDQ SI, BX				
  raw.go:593		0x5f14b0		488b9c2450010000	MOVQ 0x150(SP), BX			
  raw.go:593		0x5f14b8		488bb424e8010000	MOVQ 0x1e8(SP), SI			
  raw.go:593		0x5f14c0		4811f3			ADCQ SI, BX				
  raw.go:596		0x5f14c3		488b9c2440010000	MOVQ 0x140(SP), BX			
  raw.go:596		0x5f14cb		488bb424e0010000	MOVQ 0x1e0(SP), SI			
  raw.go:596		0x5f14d3		4811f3			ADCQ SI, BX				
  raw.go:599		0x5f14d6		488b9c2438010000	MOVQ 0x138(SP), BX			
  raw.go:599		0x5f14de		488bb424d8010000	MOVQ 0x1d8(SP), SI			
  raw.go:599		0x5f14e6		4811f3			ADCQ SI, BX				
  raw.go:602		0x5f14e9		488b9c2430010000	MOVQ 0x130(SP), BX			
  raw.go:602		0x5f14f1		488bb424d0010000	MOVQ 0x1d0(SP), SI			
  raw.go:602		0x5f14f9		4811f3			ADCQ SI, BX				
  raw.go:605		0x5f14fc		488b9c2428010000	MOVQ 0x128(SP), BX			
  raw.go:605		0x5f1504		488bb424c8010000	MOVQ 0x1c8(SP), SI			
  raw.go:605		0x5f150c		4811f3			ADCQ SI, BX				
  raw.go:608		0x5f150f		488b9c2420010000	MOVQ 0x120(SP), BX			
  raw.go:608		0x5f1517		488bb424c0010000	MOVQ 0x1c0(SP), SI			
  raw.go:608		0x5f151f		4811f3			ADCQ SI, BX				
  raw.go:665		0x5f1522		4883d000		ADCQ $0x0, AX				
  raw.go:668		0x5f1526		4c89cb			MOVQ R9, BX				
  raw.go:668		0x5f1529		4d29c1			SUBQ R8, R9				
  raw.go:671		0x5f152c		48be00000000ffffffff	MOVQ $0xffffffff00000000, SI		
  raw.go:671		0x5f1536		4c89e7			MOVQ R12, DI				
  raw.go:671		0x5f1539		4919f4			SBBQ SI, R12				
  raw.go:674		0x5f153c		4c89ee			MOVQ R13, SI				
  raw.go:674		0x5f153f		4983ddfe		SBBQ $-0x2, R13				
  raw.go:677		0x5f1543		4989c8			MOVQ CX, R8				
  raw.go:677		0x5f1546		4883d9ff		SBBQ $-0x1, CX				
  raw.go:680		0x5f154a		4d89d7			MOVQ R10, R15				
  raw.go:680		0x5f154d		4983daff		SBBQ $-0x1, R10				
  raw.go:683		0x5f1551		4c89da			MOVQ R11, DX				
  raw.go:683		0x5f1554		4983dbff		SBBQ $-0x1, R11				
  raw.go:685		0x5f1558		4883d800		SBBQ $0x0, AX				
  raw.go:685		0x5f155c		0f92c0			SETB AL					
  raw.go:685		0x5f155f		0fb6c0			MOVZX AL, AX				
  common.go:7		0x5f1562		48f7d8			NEGQ AX					
  common.go:8		0x5f1565		4821c3			ANDQ AX, BX				
  common.go:8		0x5f1568		c442f8f2c9		ANDNQ R9, AX, R9			
  common.go:8		0x5f156d		4c09cb			ORQ R9, BX				
  raw.go:698		0x5f1570		4c8b8c2418050000	MOVQ 0x518(SP), R9			
  raw.go:698		0x5f1578		498919			MOVQ BX, 0(R9)				
  common.go:8		0x5f157b		4821c7			ANDQ AX, DI				
  common.go:8		0x5f157e		c4c2f8f2dc		ANDNQ R12, AX, BX			
  common.go:8		0x5f1583		4809df			ORQ BX, DI				
  raw.go:699		0x5f1586		49897908		MOVQ DI, 0x8(R9)			
  common.go:8		0x5f158a		4821c6			ANDQ AX, SI				
  common.go:8		0x5f158d		c4c2f8f2dd		ANDNQ R13, AX, BX			
  common.go:8		0x5f1592		4809de			ORQ BX, SI				
  raw.go:700		0x5f1595		49897110		MOVQ SI, 0x10(R9)			
  common.go:8		0x5f1599		4921c0			ANDQ AX, R8				
  common.go:8		0x5f159c		c4e2f8f2c9		ANDNQ CX, AX, CX			
  common.go:8		0x5f15a1		4c09c1			ORQ R8, CX				
  raw.go:701		0x5f15a4		49894918		MOVQ CX, 0x18(R9)			
  common.go:8		0x5f15a8		4921c7			ANDQ AX, R15				
  common.go:8		0x5f15ab		c4c2f8f2ca		ANDNQ R10, AX, CX			
  common.go:8		0x5f15b0		4909cf			ORQ CX, R15				
  raw.go:702		0x5f15b3		4d897920		MOVQ R15, 0x20(R9)			
  common.go:8		0x5f15b7		4821c2			ANDQ AX, DX				
  common.go:8		0x5f15ba		c4c2f8f2c3		ANDNQ R11, AX, AX			
  common.go:8		0x5f15bf		4809c2			ORQ AX, DX				
  raw.go:703		0x5f15c2		49895128		MOVQ DX, 0x28(R9)			
  raw.go:704		0x5f15c6		c9			LEAVE					
  raw.go:704		0x5f15c7		c3			RET					
  raw.go:9		0x5f15c8		4889442408		MOVQ AX, 0x8(SP)			
  raw.go:9		0x5f15cd		48895c2410		MOVQ BX, 0x10(SP)			
  raw.go:9		0x5f15d2		48894c2418		MOVQ CX, 0x18(SP)			
  raw.go:9		0x5f15d7		e84495e9ff		CALL runtime.morestack_noctxt.abi0(SB)	
  raw.go:9		0x5f15dc		488b442408		MOVQ 0x8(SP), AX			
  raw.go:9		0x5f15e1		488b5c2410		MOVQ 0x10(SP), BX			
  raw.go:9		0x5f15e6		488b4c2418		MOVQ 0x18(SP), CX			
  raw.go:9		0x5f15eb		e9b0efffff		JMP example.com/p384issue.RawMul(SB)	
