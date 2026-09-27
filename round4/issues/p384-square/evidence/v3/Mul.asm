TEXT example.com/p384issue.Mul(SB) /home/exedev/crypto-audit/round4/issues/p384-square/compact.go
  compact.go:7		0x5ee6c0		4c8da42470fbffff	LEAQ 0xfffffb70(SP), R12		
  compact.go:7		0x5ee6c8		4d3b6610		CMPQ R12, 0x10(R14)			
  compact.go:7		0x5ee6cc		0f8616100000		JBE 0x5ef6e8				
  compact.go:7		0x5ee6d2		55			PUSHQ BP				
  compact.go:7		0x5ee6d3		4889e5			MOVQ SP, BP				
  compact.go:7		0x5ee6d6		4881ec08050000		SUBQ $0x508, SP				
  compact.go:271	0x5ee6dd		4889842418050000	MOVQ AX, 0x518(SP)			
  compact.go:8		0x5ee6e5		488b7308		MOVQ 0x8(BX), SI			
  compact.go:9		0x5ee6e9		488b7b10		MOVQ 0x10(BX), DI			
  compact.go:10		0x5ee6ed		4c8b4318		MOVQ 0x18(BX), R8			
  compact.go:11		0x5ee6f1		4c8b4b20		MOVQ 0x20(BX), R9			
  compact.go:12		0x5ee6f5		4c8b5328		MOVQ 0x28(BX), R10			
  compact.go:12		0x5ee6f9		4c899424e8000000	MOVQ R10, 0xe8(SP)			
  compact.go:13		0x5ee701		488b1b			MOVQ 0(BX), BX				
  compact.go:14		0x5ee704		488b5108		MOVQ 0x8(CX), DX			
  compact.go:18		0x5ee708		c4629bf6db		MULXQ BX, R12, R11			
  compact.go:18		0x5ee70d		4c899c2410040000	MOVQ R11, 0x410(SP)			
  compact.go:18		0x5ee715		4c89a42460040000	MOVQ R12, 0x460(SP)			
  compact.go:14		0x5ee71d		4989d5			MOVQ DX, R13				
  compact.go:50		0x5ee720		4889f2			MOVQ SI, DX				
  compact.go:50		0x5ee723		c442fbf6fd		MULXQ R13, AX, R15			
  compact.go:50		0x5ee728		4c897c2450		MOVQ R15, 0x50(SP)			
  compact.go:50		0x5ee72d		4889442458		MOVQ AX, 0x58(SP)			
  compact.go:89		0x5ee732		4c8b7910		MOVQ 0x10(CX), R15			
  compact.go:17		0x5ee736		4c89fa			MOVQ R15, DX				
  compact.go:17		0x5ee739		c4e2a3f6c3		MULXQ BX, R11, AX			
  compact.go:17		0x5ee73e		48898424a0040000	MOVQ AX, 0x4a0(SP)			
  compact.go:17		0x5ee746		4c899c24c8040000	MOVQ R11, 0x4c8(SP)			
  compact.go:49		0x5ee74e		c4e2a3f6c6		MULXQ SI, R11, AX			
  compact.go:49		0x5ee753		4889442460		MOVQ AX, 0x60(SP)			
  compact.go:49		0x5ee758		4c895c2468		MOVQ R11, 0x68(SP)			
  compact.go:89		0x5ee75d		4889fa			MOVQ DI, DX				
  compact.go:89		0x5ee760		c4c2a3f6c7		MULXQ R15, R11, AX			
  compact.go:89		0x5ee765		4889842440040000	MOVQ AX, 0x440(SP)			
  compact.go:89		0x5ee76d		4c899c2448040000	MOVQ R11, 0x448(SP)			
  compact.go:90		0x5ee775		4c89ea			MOVQ R13, DX				
  compact.go:90		0x5ee778		c4e2a3f6c7		MULXQ DI, R11, AX			
  compact.go:90		0x5ee77d		4889842430040000	MOVQ AX, 0x430(SP)			
  compact.go:90		0x5ee785		4c899c2438040000	MOVQ R11, 0x438(SP)			
  compact.go:126	0x5ee78d		488b4128		MOVQ 0x28(CX), AX			
  compact.go:126	0x5ee791		4889842400050000	MOVQ AX, 0x500(SP)			
  compact.go:14		0x5ee799		4889c2			MOVQ AX, DX				
  compact.go:14		0x5ee79c		c4629bf6db		MULXQ BX, R12, R11			
  compact.go:14		0x5ee7a1		4c895c2440		MOVQ R11, 0x40(SP)			
  compact.go:14		0x5ee7a6		4c89a42498000000	MOVQ R12, 0x98(SP)			
  compact.go:46		0x5ee7ae		c4629bf6de		MULXQ SI, R12, R11			
  compact.go:46		0x5ee7b3		4c899c2490000000	MOVQ R11, 0x90(SP)			
  compact.go:46		0x5ee7bb		4c89a424a0000000	MOVQ R12, 0xa0(SP)			
  compact.go:86		0x5ee7c3		c4629bf6df		MULXQ DI, R12, R11			
  compact.go:86		0x5ee7c8		4c899c2478040000	MOVQ R11, 0x478(SP)			
  compact.go:86		0x5ee7d0		4c89a42480040000	MOVQ R12, 0x480(SP)			
  compact.go:126	0x5ee7d8		c4429bf6d8		MULXQ R8, R12, R11			
  compact.go:126	0x5ee7dd		4c899c2480030000	MOVQ R11, 0x380(SP)			
  compact.go:126	0x5ee7e5		4c89a42488030000	MOVQ R12, 0x388(SP)			
  compact.go:128	0x5ee7ed		4c8b5918		MOVQ 0x18(CX), R11			
  compact.go:16		0x5ee7f1		4c89da			MOVQ R11, DX				
  compact.go:16		0x5ee7f4		c462abf6e3		MULXQ BX, R10, R12			
  compact.go:16		0x5ee7f9		4c89a424d0040000	MOVQ R12, 0x4d0(SP)			
  compact.go:16		0x5ee801		4c899424d8040000	MOVQ R10, 0x4d8(SP)			
  compact.go:48		0x5ee809		c462abf6e6		MULXQ SI, R10, R12			
  compact.go:48		0x5ee80e		4c89642470		MOVQ R12, 0x70(SP)			
  compact.go:48		0x5ee813		4c89542478		MOVQ R10, 0x78(SP)			
  compact.go:88		0x5ee818		c462abf6e7		MULXQ DI, R10, R12			
  compact.go:88		0x5ee81d		4c89a42450040000	MOVQ R12, 0x450(SP)			
  compact.go:88		0x5ee825		4c89942458040000	MOVQ R10, 0x458(SP)			
  compact.go:128	0x5ee82d		4c89c2			MOVQ R8, DX				
  compact.go:128	0x5ee830		c442abf6e3		MULXQ R11, R10, R12			
  compact.go:128	0x5ee835		4c89a42460030000	MOVQ R12, 0x360(SP)			
  compact.go:128	0x5ee83d		4c89942468030000	MOVQ R10, 0x368(SP)			
  compact.go:129	0x5ee845		4c89fa			MOVQ R15, DX				
  compact.go:129	0x5ee848		c442abf6e0		MULXQ R8, R10, R12			
  compact.go:129	0x5ee84d		4c89a42450030000	MOVQ R12, 0x350(SP)			
  compact.go:129	0x5ee855		4c89942458030000	MOVQ R10, 0x358(SP)			
  compact.go:130	0x5ee85d		4c89ea			MOVQ R13, DX				
  compact.go:130	0x5ee860		c442abf6e0		MULXQ R8, R10, R12			
  compact.go:130	0x5ee865		4c89a42440030000	MOVQ R12, 0x340(SP)			
  compact.go:130	0x5ee86d		4c89942448030000	MOVQ R10, 0x348(SP)			
  compact.go:166	0x5ee875		4889c2			MOVQ AX, DX				
  compact.go:166	0x5ee878		c442abf6e1		MULXQ R9, R10, R12			
  compact.go:166	0x5ee87d		4c89a424a0020000	MOVQ R12, 0x2a0(SP)			
  compact.go:166	0x5ee885		4c899424a8020000	MOVQ R10, 0x2a8(SP)			
  compact.go:167	0x5ee88d		4c8b6120		MOVQ 0x20(CX), R12			
  compact.go:15		0x5ee891		4c89e2			MOVQ R12, DX				
  compact.go:15		0x5ee894		c462fbf6d3		MULXQ BX, AX, R10			
  compact.go:15		0x5ee899		4c899424f8040000	MOVQ R10, 0x4f8(SP)			
  compact.go:15		0x5ee8a1		4889442408		MOVQ AX, 0x8(SP)			
  compact.go:47		0x5ee8a6		c462fbf6d6		MULXQ SI, AX, R10			
  compact.go:47		0x5ee8ab		4c89942480000000	MOVQ R10, 0x80(SP)			
  compact.go:47		0x5ee8b3		4889842488000000	MOVQ AX, 0x88(SP)			
  compact.go:87		0x5ee8bb		c462fbf6d7		MULXQ DI, AX, R10			
  compact.go:87		0x5ee8c0		4c89942468040000	MOVQ R10, 0x468(SP)			
  compact.go:87		0x5ee8c8		4889842470040000	MOVQ AX, 0x470(SP)			
  compact.go:127	0x5ee8d0		c442fbf6d0		MULXQ R8, AX, R10			
  compact.go:127	0x5ee8d5		4c89942470030000	MOVQ R10, 0x370(SP)			
  compact.go:127	0x5ee8dd		4889842478030000	MOVQ AX, 0x378(SP)			
  compact.go:167	0x5ee8e5		4c89ca			MOVQ R9, DX				
  compact.go:167	0x5ee8e8		c442fbf6d4		MULXQ R12, AX, R10			
  compact.go:167	0x5ee8ed		4c89942490020000	MOVQ R10, 0x290(SP)			
  compact.go:167	0x5ee8f5		4889842498020000	MOVQ AX, 0x298(SP)			
  compact.go:168	0x5ee8fd		4c89da			MOVQ R11, DX				
  compact.go:168	0x5ee900		c442fbf6d1		MULXQ R9, AX, R10			
  compact.go:168	0x5ee905		4c89942480020000	MOVQ R10, 0x280(SP)			
  compact.go:168	0x5ee90d		4889842488020000	MOVQ AX, 0x288(SP)			
  compact.go:169	0x5ee915		4c89fa			MOVQ R15, DX				
  compact.go:169	0x5ee918		c442fbf6d1		MULXQ R9, AX, R10			
  compact.go:169	0x5ee91d		4c89942470020000	MOVQ R10, 0x270(SP)			
  compact.go:169	0x5ee925		4889842478020000	MOVQ AX, 0x278(SP)			
  compact.go:170	0x5ee92d		4c89ea			MOVQ R13, DX				
  compact.go:170	0x5ee930		c442fbf6d1		MULXQ R9, AX, R10			
  compact.go:170	0x5ee935		4c89942460020000	MOVQ R10, 0x260(SP)			
  compact.go:170	0x5ee93d		4889842468020000	MOVQ AX, 0x268(SP)			
  compact.go:171	0x5ee945		488b09			MOVQ 0(CX), CX				
  compact.go:19		0x5ee948		4889da			MOVQ BX, DX				
  compact.go:19		0x5ee94b		c4e2ebf6d9		MULXQ CX, DX, BX			
  compact.go:19		0x5ee950		48899424e0030000	MOVQ DX, 0x3e0(SP)			
  compact.go:26		0x5ee958		48ba0100000001000000	MOVQ $0x100000001, DX			
  compact.go:26		0x5ee962		4c8b9424e0030000	MOVQ 0x3e0(SP), R10			
  compact.go:26		0x5ee96a		c4c2ebf6c2		MULXQ R10, DX, AX			
  compact.go:26		0x5ee96f		4889d0			MOVQ DX, AX				
  compact.go:29		0x5ee972		48c7c2ffffffff		MOVQ $-0x1, DX				
  compact.go:29		0x5ee979		c4e2abf6d0		MULXQ AX, R10, DX			
  compact.go:28		0x5ee97e		4889942400020000	MOVQ DX, 0x200(SP)			
  compact.go:29		0x5ee986		4c899424f8010000	MOVQ R10, 0x1f8(SP)			
  compact.go:30		0x5ee98e		48c7c2feffffff		MOVQ $-0x2, DX				
  compact.go:30		0x5ee995		c4e2abf6d0		MULXQ AX, R10, DX			
  compact.go:30		0x5ee99a		4889942448010000	MOVQ DX, 0x148(SP)			
  compact.go:30		0x5ee9a2		4c899424a0010000	MOVQ R10, 0x1a0(SP)			
  compact.go:31		0x5ee9aa		48ba00000000ffffffff	MOVQ $0xffffffff00000000, DX		
  compact.go:31		0x5ee9b4		c4e2abf6d0		MULXQ AX, R10, DX			
  compact.go:31		0x5ee9b9		4889942410010000	MOVQ DX, 0x110(SP)			
  compact.go:32		0x5ee9c1		baffffffff		MOVL $-0x1, DX				
  compact.go:32		0x5ee9c6		c4e2ebf6c0		MULXQ AX, DX, AX			
  compact.go:32		0x5ee9cb		48898424f0000000	MOVQ AX, 0xf0(SP)			
  compact.go:32		0x5ee9d3		48899424f8000000	MOVQ DX, 0xf8(SP)			
  compact.go:51		0x5ee9db		4889ca			MOVQ CX, DX				
  compact.go:51		0x5ee9de		c4e2fbf6f6		MULXQ SI, AX, SI			
  compact.go:51		0x5ee9e3		4889742438		MOVQ SI, 0x38(SP)			
  compact.go:51		0x5ee9e8		4889442448		MOVQ AX, 0x48(SP)			
  compact.go:91		0x5ee9ed		c4e2fbf6ff		MULXQ DI, AX, DI			
  compact.go:91		0x5ee9f2		4889bc2420040000	MOVQ DI, 0x420(SP)			
  compact.go:91		0x5ee9fa		4889842428040000	MOVQ AX, 0x428(SP)			
  compact.go:131	0x5eea02		c442fbf6c0		MULXQ R8, AX, R8			
  compact.go:131	0x5eea07		4c89842430030000	MOVQ R8, 0x330(SP)			
  compact.go:131	0x5eea0f		4889842438030000	MOVQ AX, 0x338(SP)			
  compact.go:171	0x5eea17		c442fbf6c9		MULXQ R9, AX, R9			
  compact.go:171	0x5eea1c		4c898c2450020000	MOVQ R9, 0x250(SP)			
  compact.go:171	0x5eea24		4889842458020000	MOVQ AX, 0x258(SP)			
  compact.go:206	0x5eea2c		488b9424e8000000	MOVQ 0xe8(SP), DX			
  compact.go:206	0x5eea34		488b842400050000	MOVQ 0x500(SP), AX			
  compact.go:206	0x5eea3c		c4e2b3f6c0		MULXQ AX, R9, AX			
  compact.go:206	0x5eea41		48898424b0010000	MOVQ AX, 0x1b0(SP)			
  compact.go:206	0x5eea49		4c898c24b8010000	MOVQ R9, 0x1b8(SP)			
  compact.go:207	0x5eea51		4c89e2			MOVQ R12, DX				
  compact.go:207	0x5eea54		488b8424e8000000	MOVQ 0xe8(SP), AX			
  compact.go:207	0x5eea5c		c462ebf6e0		MULXQ AX, DX, R12			
  compact.go:207	0x5eea61		4c89a42498010000	MOVQ R12, 0x198(SP)			
  compact.go:207	0x5eea69		48899424a8010000	MOVQ DX, 0x1a8(SP)			
  compact.go:208	0x5eea71		4c89da			MOVQ R11, DX				
  compact.go:208	0x5eea74		c462ebf6d8		MULXQ AX, DX, R11			
  compact.go:208	0x5eea79		4c899c2488010000	MOVQ R11, 0x188(SP)			
  compact.go:208	0x5eea81		4889942490010000	MOVQ DX, 0x190(SP)			
  compact.go:209	0x5eea89		4c89fa			MOVQ R15, DX				
  compact.go:209	0x5eea8c		c462ebf6f8		MULXQ AX, DX, R15			
  compact.go:209	0x5eea91		4c89bc2478010000	MOVQ R15, 0x178(SP)			
  compact.go:209	0x5eea99		4889942480010000	MOVQ DX, 0x180(SP)			
  compact.go:210	0x5eeaa1		4c89ea			MOVQ R13, DX				
  compact.go:210	0x5eeaa4		c462ebf6e8		MULXQ AX, DX, R13			
  compact.go:210	0x5eeaa9		4c89ac2468010000	MOVQ R13, 0x168(SP)			
  compact.go:210	0x5eeab1		4889942470010000	MOVQ DX, 0x170(SP)			
  compact.go:211	0x5eeab9		4889ca			MOVQ CX, DX				
  compact.go:211	0x5eeabc		c4e2f3f6c0		MULXQ AX, CX, AX			
  compact.go:211	0x5eeac1		4889842458010000	MOVQ AX, 0x158(SP)			
  compact.go:211	0x5eeac9		48898c2460010000	MOVQ CX, 0x160(SP)			
  compact.go:254	0x5eead1		90			NOPL					
  compact.go:256	0x5eead2		90			NOPL					
  compact.go:258	0x5eead3		90			NOPL					
  compact.go:260	0x5eead4		90			NOPL					
  compact.go:262	0x5eead5		90			NOPL					
  compact.go:264	0x5eead6		90			NOPL					
  compact.go:20		0x5eead7		488b942460040000	MOVQ 0x460(SP), DX			
  compact.go:20		0x5eeadf		4801da			ADDQ BX, DX				
  compact.go:21		0x5eeae2		488b9c2410040000	MOVQ 0x410(SP), BX			
  compact.go:21		0x5eeaea		488b8c24c8040000	MOVQ 0x4c8(SP), CX			
  compact.go:21		0x5eeaf2		4811cb			ADCQ CX, BX				
  compact.go:22		0x5eeaf5		488b8c24a0040000	MOVQ 0x4a0(SP), CX			
  compact.go:22		0x5eeafd		4c8b8c24d8040000	MOVQ 0x4d8(SP), R9			
  compact.go:22		0x5eeb05		4c11c9			ADCQ R9, CX				
  compact.go:23		0x5eeb08		4c8b8c24d0040000	MOVQ 0x4d0(SP), R9			
  compact.go:23		0x5eeb10		4c8b642408		MOVQ 0x8(SP), R12			
  compact.go:23		0x5eeb15		4d11e1			ADCQ R12, R9				
  compact.go:24		0x5eeb18		4c8ba424f8040000	MOVQ 0x4f8(SP), R12			
  compact.go:24		0x5eeb20		4c8b9c2498000000	MOVQ 0x98(SP), R11			
  compact.go:24		0x5eeb28		4d11dc			ADCQ R11, R12				
  compact.go:25		0x5eeb2b		4c8b5c2440		MOVQ 0x40(SP), R11			
  compact.go:25		0x5eeb30		4983d300		ADCQ $0x0, R11				
  compact.go:33		0x5eeb34		4c8bbc24f0000000	MOVQ 0xf0(SP), R15			
  compact.go:33		0x5eeb3c		4d01d7			ADDQ R10, R15				
  compact.go:34		0x5eeb3f		4c8b942410010000	MOVQ 0x110(SP), R10			
  compact.go:34		0x5eeb47		4c8bac24a0010000	MOVQ 0x1a0(SP), R13			
  compact.go:34		0x5eeb4f		4d11ea			ADCQ R13, R10				
  compact.go:35		0x5eeb52		4c8bac2448010000	MOVQ 0x148(SP), R13			
  compact.go:35		0x5eeb5a		488b8424f8010000	MOVQ 0x1f8(SP), AX			
  compact.go:35		0x5eeb62		4911c5			ADCQ AX, R13				
  compact.go:36		0x5eeb65		4c8b842400020000	MOVQ 0x200(SP), R8			
  compact.go:36		0x5eeb6d		4c11c0			ADCQ R8, AX				
  compact.go:37		0x5eeb70		488bbc24f8010000	MOVQ 0x1f8(SP), DI			
  compact.go:37		0x5eeb78		4c11c7			ADCQ R8, DI				
  compact.go:38		0x5eeb7b		4983d000		ADCQ $0x0, R8				
  compact.go:38		0x5eeb7f		4c898424e0000000	MOVQ R8, 0xe0(SP)			
  compact.go:39		0x5eeb87		488bb424e0030000	MOVQ 0x3e0(SP), SI			
  compact.go:39		0x5eeb8f		4c8b8424f8000000	MOVQ 0xf8(SP), R8			
  compact.go:39		0x5eeb97		4c01c6			ADDQ R8, SI				
  compact.go:40		0x5eeb9a		4c11fa			ADCQ R15, DX				
  compact.go:40		0x5eeb9d		48899424d8000000	MOVQ DX, 0xd8(SP)			
  compact.go:41		0x5eeba5		4911da			ADCQ BX, R10				
  compact.go:41		0x5eeba8		4c899424d0000000	MOVQ R10, 0xd0(SP)			
  compact.go:42		0x5eebb0		4911cd			ADCQ CX, R13				
  compact.go:42		0x5eebb3		4c89ac24c8000000	MOVQ R13, 0xc8(SP)			
  compact.go:43		0x5eebbb		4c11c8			ADCQ R9, AX				
  compact.go:43		0x5eebbe		48898424c0000000	MOVQ AX, 0xc0(SP)			
  compact.go:44		0x5eebc6		4c11e7			ADCQ R12, DI				
  compact.go:44		0x5eebc9		4889bc24b8000000	MOVQ DI, 0xb8(SP)			
  compact.go:45		0x5eebd1		488b8c24e0000000	MOVQ 0xe0(SP), CX			
  compact.go:45		0x5eebd9		4c11d9			ADCQ R11, CX				
  compact.go:45		0x5eebdc		48898c24b0000000	MOVQ CX, 0xb0(SP)			
  compact.go:45		0x5eebe4		0f92c3			SETB BL					
  compact.go:45		0x5eebe7		0fb6db			MOVZX BL, BX				
  compact.go:45		0x5eebea		48899c24a8000000	MOVQ BX, 0xa8(SP)			
  compact.go:52		0x5eebf2		488b742438		MOVQ 0x38(SP), SI			
  compact.go:52		0x5eebf7		4c8b442458		MOVQ 0x58(SP), R8			
  compact.go:52		0x5eebfc		4c01c6			ADDQ R8, SI				
  compact.go:52		0x5eebff		4889742430		MOVQ SI, 0x30(SP)			
  compact.go:53		0x5eec04		4c8b442450		MOVQ 0x50(SP), R8			
  compact.go:53		0x5eec09		4c8b4c2468		MOVQ 0x68(SP), R9			
  compact.go:53		0x5eec0e		4d11c8			ADCQ R9, R8				
  compact.go:53		0x5eec11		4c89442428		MOVQ R8, 0x28(SP)			
  compact.go:54		0x5eec16		4c8b4c2460		MOVQ 0x60(SP), R9			
  compact.go:54		0x5eec1b		4c8b5c2478		MOVQ 0x78(SP), R11			
  compact.go:54		0x5eec20		4d11d9			ADCQ R11, R9				
  compact.go:54		0x5eec23		4c894c2420		MOVQ R9, 0x20(SP)			
  compact.go:55		0x5eec28		4c8b5c2470		MOVQ 0x70(SP), R11			
  compact.go:55		0x5eec2d		4c8ba42488000000	MOVQ 0x88(SP), R12			
  compact.go:55		0x5eec35		4d11e3			ADCQ R12, R11				
  compact.go:55		0x5eec38		4c895c2418		MOVQ R11, 0x18(SP)			
  compact.go:56		0x5eec3d		4c8ba42480000000	MOVQ 0x80(SP), R12			
  compact.go:56		0x5eec45		4c8bbc24a0000000	MOVQ 0xa0(SP), R15			
  compact.go:56		0x5eec4d		4d11fc			ADCQ R15, R12				
  compact.go:56		0x5eec50		4c89642410		MOVQ R12, 0x10(SP)			
  compact.go:57		0x5eec55		4c8bbc2490000000	MOVQ 0x90(SP), R15			
  compact.go:57		0x5eec5d		4983d700		ADCQ $0x0, R15				
  compact.go:57		0x5eec61		4c893c24		MOVQ R15, 0(SP)				
  compact.go:58		0x5eec65		488b5c2448		MOVQ 0x48(SP), BX			
  compact.go:58		0x5eec6a		4801d3			ADDQ DX, BX				
  compact.go:59		0x5eec6d		4c11d6			ADCQ R10, SI				
  compact.go:60		0x5eec70		4d11e8			ADCQ R13, R8				
  compact.go:61		0x5eec73		4911c1			ADCQ AX, R9				
  compact.go:62		0x5eec76		4911fb			ADCQ DI, R11				
  compact.go:62		0x5eec79		4c899c24f0040000	MOVQ R11, 0x4f0(SP)			
  compact.go:63		0x5eec81		4911cc			ADCQ CX, R12				
  compact.go:63		0x5eec84		4c89a424e8040000	MOVQ R12, 0x4e8(SP)			
  compact.go:64		0x5eec8c		488b8c24a8000000	MOVQ 0xa8(SP), CX			
  compact.go:64		0x5eec94		4911cf			ADCQ CX, R15				
  compact.go:64		0x5eec97		4c89bc24e0040000	MOVQ R15, 0x4e0(SP)			
  compact.go:65		0x5eec9f		4889da			MOVQ BX, DX				
  compact.go:65		0x5eeca2		48b90100000001000000	MOVQ $0x100000001, CX			
  compact.go:65		0x5eecac		c4e2c3f6c9		MULXQ CX, DI, CX			
  compact.go:66		0x5eecb1		4889fa			MOVQ DI, DX				
  compact.go:66		0x5eecb4		48c7c1ffffffff		MOVQ $-0x1, CX				
  compact.go:66		0x5eecbb		c4e2fbf6c9		MULXQ CX, AX, CX			
  compact.go:69		0x5eecc0		49c7c5feffffff		MOVQ $-0x2, R13				
  compact.go:69		0x5eecc7		c442abf6ed		MULXQ R13, R10, R13			
  compact.go:70		0x5eeccc		49bf00000000ffffffff	MOVQ $0xffffffff00000000, R15		
  compact.go:70		0x5eecd6		c4429bf6ff		MULXQ R15, R12, R15			
  compact.go:71		0x5eecdb		41bbffffffff		MOVL $-0x1, R11				
  compact.go:71		0x5eece1		c4c2c3f6d3		MULXQ R11, DI, DX			
  compact.go:72		0x5eece6		4c01e2			ADDQ R12, DX				
  compact.go:73		0x5eece9		4d11d7			ADCQ R10, R15				
  compact.go:74		0x5eecec		4911c5			ADCQ AX, R13				
  compact.go:75		0x5eecef		4989c2			MOVQ AX, R10				
  compact.go:75		0x5eecf2		4811c8			ADCQ CX, AX				
  compact.go:76		0x5eecf5		4911ca			ADCQ CX, R10				
  compact.go:77		0x5eecf8		4883d100		ADCQ $0x0, CX				
  compact.go:78		0x5eecfc		4801fb			ADDQ DI, BX				
  compact.go:79		0x5eecff		4811f2			ADCQ SI, DX				
  compact.go:79		0x5eed02		48899424c0040000	MOVQ DX, 0x4c0(SP)			
  compact.go:80		0x5eed0a		4d11c7			ADCQ R8, R15				
  compact.go:80		0x5eed0d		4c89bc24b8040000	MOVQ R15, 0x4b8(SP)			
  compact.go:81		0x5eed15		4d11cd			ADCQ R9, R13				
  compact.go:81		0x5eed18		4c89ac24b0040000	MOVQ R13, 0x4b0(SP)			
  compact.go:82		0x5eed20		488b9c24f0040000	MOVQ 0x4f0(SP), BX			
  compact.go:82		0x5eed28		4811d8			ADCQ BX, AX				
  compact.go:82		0x5eed2b		48898424a8040000	MOVQ AX, 0x4a8(SP)			
  compact.go:83		0x5eed33		488b9c24e8040000	MOVQ 0x4e8(SP), BX			
  compact.go:83		0x5eed3b		4911da			ADCQ BX, R10				
  compact.go:83		0x5eed3e		4c89942498040000	MOVQ R10, 0x498(SP)			
  compact.go:84		0x5eed46		488b9c24e0040000	MOVQ 0x4e0(SP), BX			
  compact.go:84		0x5eed4e		4811d9			ADCQ BX, CX				
  compact.go:84		0x5eed51		48898c2490040000	MOVQ CX, 0x490(SP)			
  compact.go:84		0x5eed59		0f92c3			SETB BL					
  compact.go:84		0x5eed5c		0fb6db			MOVZX BL, BX				
  compact.go:58		0x5eed5f		488b742448		MOVQ 0x48(SP), SI			
  compact.go:58		0x5eed64		488bbc24d8000000	MOVQ 0xd8(SP), DI			
  compact.go:58		0x5eed6c		4801fe			ADDQ DI, SI				
  compact.go:59		0x5eed6f		488b742430		MOVQ 0x30(SP), SI			
  compact.go:59		0x5eed74		488bbc24d0000000	MOVQ 0xd0(SP), DI			
  compact.go:59		0x5eed7c		4811fe			ADCQ DI, SI				
  compact.go:60		0x5eed7f		488b742428		MOVQ 0x28(SP), SI			
  compact.go:60		0x5eed84		488bbc24c8000000	MOVQ 0xc8(SP), DI			
  compact.go:60		0x5eed8c		4811fe			ADCQ DI, SI				
  compact.go:61		0x5eed8f		488b742420		MOVQ 0x20(SP), SI			
  compact.go:61		0x5eed94		488bbc24c0000000	MOVQ 0xc0(SP), DI			
  compact.go:61		0x5eed9c		4811fe			ADCQ DI, SI				
  compact.go:62		0x5eed9f		488b742418		MOVQ 0x18(SP), SI			
  compact.go:62		0x5eeda4		488bbc24b8000000	MOVQ 0xb8(SP), DI			
  compact.go:62		0x5eedac		4811fe			ADCQ DI, SI				
  compact.go:63		0x5eedaf		488b742410		MOVQ 0x10(SP), SI			
  compact.go:63		0x5eedb4		488bbc24b0000000	MOVQ 0xb0(SP), DI			
  compact.go:63		0x5eedbc		4811fe			ADCQ DI, SI				
  compact.go:64		0x5eedbf		488b3424		MOVQ 0(SP), SI				
  compact.go:64		0x5eedc3		488bbc24a8000000	MOVQ 0xa8(SP), DI			
  compact.go:64		0x5eedcb		4811fe			ADCQ DI, SI				
  compact.go:85		0x5eedce		4883d300		ADCQ $0x0, BX				
  compact.go:85		0x5eedd2		48899c2488040000	MOVQ BX, 0x488(SP)			
  compact.go:92		0x5eedda		488bb42420040000	MOVQ 0x420(SP), SI			
  compact.go:92		0x5eede2		488bbc2438040000	MOVQ 0x438(SP), DI			
  compact.go:92		0x5eedea		4801fe			ADDQ DI, SI				
  compact.go:92		0x5eeded		4889b42418040000	MOVQ SI, 0x418(SP)			
  compact.go:93		0x5eedf5		488bbc2430040000	MOVQ 0x430(SP), DI			
  compact.go:93		0x5eedfd		4c8b842448040000	MOVQ 0x448(SP), R8			
  compact.go:93		0x5eee05		4c11c7			ADCQ R8, DI				
  compact.go:93		0x5eee08		4889bc2408040000	MOVQ DI, 0x408(SP)			
  compact.go:94		0x5eee10		4c8b842440040000	MOVQ 0x440(SP), R8			
  compact.go:94		0x5eee18		4c8b8c2458040000	MOVQ 0x458(SP), R9			
  compact.go:94		0x5eee20		4d11c8			ADCQ R9, R8				
  compact.go:94		0x5eee23		4c89842400040000	MOVQ R8, 0x400(SP)			
  compact.go:95		0x5eee2b		4c8b8c2450040000	MOVQ 0x450(SP), R9			
  compact.go:95		0x5eee33		4c8ba42470040000	MOVQ 0x470(SP), R12			
  compact.go:95		0x5eee3b		4d11e1			ADCQ R12, R9				
  compact.go:95		0x5eee3e		4c898c24f8030000	MOVQ R9, 0x3f8(SP)			
  compact.go:96		0x5eee46		4c8ba42468040000	MOVQ 0x468(SP), R12			
  compact.go:96		0x5eee4e		4c8b9c2480040000	MOVQ 0x480(SP), R11			
  compact.go:96		0x5eee56		4d11dc			ADCQ R11, R12				
  compact.go:96		0x5eee59		4c89a424f0030000	MOVQ R12, 0x3f0(SP)			
  compact.go:97		0x5eee61		4c8b9c2478040000	MOVQ 0x478(SP), R11			
  compact.go:97		0x5eee69		4983d300		ADCQ $0x0, R11				
  compact.go:97		0x5eee6d		4c899c24e8030000	MOVQ R11, 0x3e8(SP)			
  compact.go:98		0x5eee75		488b9c2428040000	MOVQ 0x428(SP), BX			
  compact.go:98		0x5eee7d		4801d3			ADDQ DX, BX				
  compact.go:99		0x5eee80		4c11fe			ADCQ R15, SI				
  compact.go:100	0x5eee83		4c11ef			ADCQ R13, DI				
  compact.go:101	0x5eee86		4911c0			ADCQ AX, R8				
  compact.go:102	0x5eee89		4d11d1			ADCQ R10, R9				
  compact.go:102	0x5eee8c		4c898c24d8030000	MOVQ R9, 0x3d8(SP)			
  compact.go:103	0x5eee94		4911cc			ADCQ CX, R12				
  compact.go:103	0x5eee97		4c89a424d0030000	MOVQ R12, 0x3d0(SP)			
  compact.go:104	0x5eee9f		488b8c2488040000	MOVQ 0x488(SP), CX			
  compact.go:104	0x5eeea7		4911cb			ADCQ CX, R11				
  compact.go:104	0x5eeeaa		4c899c24c8030000	MOVQ R11, 0x3c8(SP)			
  compact.go:105	0x5eeeb2		4889da			MOVQ BX, DX				
  compact.go:105	0x5eeeb5		48b90100000001000000	MOVQ $0x100000001, CX			
  compact.go:105	0x5eeebf		c4e2abf6c9		MULXQ CX, R10, CX			
  compact.go:106	0x5eeec4		4c89d2			MOVQ R10, DX				
  compact.go:106	0x5eeec7		48c7c1ffffffff		MOVQ $-0x1, CX				
  compact.go:106	0x5eeece		c4e2fbf6c9		MULXQ CX, AX, CX			
  compact.go:109	0x5eeed3		49c7c5feffffff		MOVQ $-0x2, R13				
  compact.go:109	0x5eeeda		c44283f6ed		MULXQ R13, R15, R13			
  compact.go:110	0x5eeedf		49bb00000000ffffffff	MOVQ $0xffffffff00000000, R11		
  compact.go:110	0x5eeee9		c4429bf6db		MULXQ R11, R12, R11			
  compact.go:111	0x5eeeee		41b9ffffffff		MOVL $-0x1, R9				
  compact.go:111	0x5eeef4		c4c2abf6d1		MULXQ R9, R10, DX			
  compact.go:112	0x5eeef9		4c01e2			ADDQ R12, DX				
  compact.go:113	0x5eeefc		4d11fb			ADCQ R15, R11				
  compact.go:114	0x5eeeff		4911c5			ADCQ AX, R13				
  compact.go:115	0x5eef02		4989c4			MOVQ AX, R12				
  compact.go:115	0x5eef05		4811c8			ADCQ CX, AX				
  compact.go:116	0x5eef08		4911cc			ADCQ CX, R12				
  compact.go:117	0x5eef0b		4883d100		ADCQ $0x0, CX				
  compact.go:118	0x5eef0f		4c01d3			ADDQ R10, BX				
  compact.go:119	0x5eef12		4811f2			ADCQ SI, DX				
  compact.go:119	0x5eef15		48899424c0030000	MOVQ DX, 0x3c0(SP)			
  compact.go:120	0x5eef1d		4911fb			ADCQ DI, R11				
  compact.go:120	0x5eef20		4c899c24b8030000	MOVQ R11, 0x3b8(SP)			
  compact.go:121	0x5eef28		4d11c5			ADCQ R8, R13				
  compact.go:121	0x5eef2b		4c89ac24b0030000	MOVQ R13, 0x3b0(SP)			
  compact.go:122	0x5eef33		488b9c24d8030000	MOVQ 0x3d8(SP), BX			
  compact.go:122	0x5eef3b		4811d8			ADCQ BX, AX				
  compact.go:122	0x5eef3e		48898424a8030000	MOVQ AX, 0x3a8(SP)			
  compact.go:123	0x5eef46		488b9c24d0030000	MOVQ 0x3d0(SP), BX			
  compact.go:123	0x5eef4e		4911dc			ADCQ BX, R12				
  compact.go:123	0x5eef51		4c89a424a0030000	MOVQ R12, 0x3a0(SP)			
  compact.go:124	0x5eef59		488b9c24c8030000	MOVQ 0x3c8(SP), BX			
  compact.go:124	0x5eef61		4811d9			ADCQ BX, CX				
  compact.go:124	0x5eef64		48898c2498030000	MOVQ CX, 0x398(SP)			
  compact.go:124	0x5eef6c		0f92c3			SETB BL					
  compact.go:124	0x5eef6f		0fb6db			MOVZX BL, BX				
  compact.go:98		0x5eef72		488bb42428040000	MOVQ 0x428(SP), SI			
  compact.go:98		0x5eef7a		488bbc24c0040000	MOVQ 0x4c0(SP), DI			
  compact.go:98		0x5eef82		4801fe			ADDQ DI, SI				
  compact.go:99		0x5eef85		488bb42418040000	MOVQ 0x418(SP), SI			
  compact.go:99		0x5eef8d		488bbc24b8040000	MOVQ 0x4b8(SP), DI			
  compact.go:99		0x5eef95		4811fe			ADCQ DI, SI				
  compact.go:100	0x5eef98		488bb42408040000	MOVQ 0x408(SP), SI			
  compact.go:100	0x5eefa0		488bbc24b0040000	MOVQ 0x4b0(SP), DI			
  compact.go:100	0x5eefa8		4811fe			ADCQ DI, SI				
  compact.go:101	0x5eefab		488bb42400040000	MOVQ 0x400(SP), SI			
  compact.go:101	0x5eefb3		488bbc24a8040000	MOVQ 0x4a8(SP), DI			
  compact.go:101	0x5eefbb		4811fe			ADCQ DI, SI				
  compact.go:102	0x5eefbe		488bb424f8030000	MOVQ 0x3f8(SP), SI			
  compact.go:102	0x5eefc6		488bbc2498040000	MOVQ 0x498(SP), DI			
  compact.go:102	0x5eefce		4811fe			ADCQ DI, SI				
  compact.go:103	0x5eefd1		488bb424f0030000	MOVQ 0x3f0(SP), SI			
  compact.go:103	0x5eefd9		488bbc2490040000	MOVQ 0x490(SP), DI			
  compact.go:103	0x5eefe1		4811fe			ADCQ DI, SI				
  compact.go:104	0x5eefe4		488bb424e8030000	MOVQ 0x3e8(SP), SI			
  compact.go:104	0x5eefec		488bbc2488040000	MOVQ 0x488(SP), DI			
  compact.go:104	0x5eeff4		4811fe			ADCQ DI, SI				
  compact.go:125	0x5eeff7		4883d300		ADCQ $0x0, BX				
  compact.go:125	0x5eeffb		48899c2490030000	MOVQ BX, 0x390(SP)			
  compact.go:132	0x5ef003		488bb42430030000	MOVQ 0x330(SP), SI			
  compact.go:132	0x5ef00b		488bbc2448030000	MOVQ 0x348(SP), DI			
  compact.go:132	0x5ef013		4801fe			ADDQ DI, SI				
  compact.go:132	0x5ef016		4889b42428030000	MOVQ SI, 0x328(SP)			
  compact.go:133	0x5ef01e		488bbc2440030000	MOVQ 0x340(SP), DI			
  compact.go:133	0x5ef026		4c8b842458030000	MOVQ 0x358(SP), R8			
  compact.go:133	0x5ef02e		4c11c7			ADCQ R8, DI				
  compact.go:133	0x5ef031		4889bc2420030000	MOVQ DI, 0x320(SP)			
  compact.go:134	0x5ef039		4c8b842450030000	MOVQ 0x350(SP), R8			
  compact.go:134	0x5ef041		4c8b942468030000	MOVQ 0x368(SP), R10			
  compact.go:134	0x5ef049		4d11d0			ADCQ R10, R8				
  compact.go:134	0x5ef04c		4c89842418030000	MOVQ R8, 0x318(SP)			
  compact.go:135	0x5ef054		4c8b942460030000	MOVQ 0x360(SP), R10			
  compact.go:135	0x5ef05c		4c8bbc2478030000	MOVQ 0x378(SP), R15			
  compact.go:135	0x5ef064		4d11fa			ADCQ R15, R10				
  compact.go:135	0x5ef067		4c89942410030000	MOVQ R10, 0x310(SP)			
  compact.go:136	0x5ef06f		4c8bbc2470030000	MOVQ 0x370(SP), R15			
  compact.go:136	0x5ef077		4c8b8c2488030000	MOVQ 0x388(SP), R9			
  compact.go:136	0x5ef07f		4d11cf			ADCQ R9, R15				
  compact.go:136	0x5ef082		4c89bc2408030000	MOVQ R15, 0x308(SP)			
  compact.go:137	0x5ef08a		4c8b8c2480030000	MOVQ 0x380(SP), R9			
  compact.go:137	0x5ef092		4983d100		ADCQ $0x0, R9				
  compact.go:137	0x5ef096		4c898c2400030000	MOVQ R9, 0x300(SP)			
  compact.go:138	0x5ef09e		488b9c2438030000	MOVQ 0x338(SP), BX			
  compact.go:138	0x5ef0a6		4801d3			ADDQ DX, BX				
  compact.go:139	0x5ef0a9		4c11de			ADCQ R11, SI				
  compact.go:140	0x5ef0ac		4c11ef			ADCQ R13, DI				
  compact.go:141	0x5ef0af		4911c0			ADCQ AX, R8				
  compact.go:142	0x5ef0b2		4d11e2			ADCQ R12, R10				
  compact.go:142	0x5ef0b5		4c899424f8020000	MOVQ R10, 0x2f8(SP)			
  compact.go:143	0x5ef0bd		4911cf			ADCQ CX, R15				
  compact.go:143	0x5ef0c0		4c89bc24f0020000	MOVQ R15, 0x2f0(SP)			
  compact.go:144	0x5ef0c8		488b8c2490030000	MOVQ 0x390(SP), CX			
  compact.go:144	0x5ef0d0		4911c9			ADCQ CX, R9				
  compact.go:144	0x5ef0d3		4c898c24e8020000	MOVQ R9, 0x2e8(SP)			
  compact.go:145	0x5ef0db		4889da			MOVQ BX, DX				
  compact.go:145	0x5ef0de		48b90100000001000000	MOVQ $0x100000001, CX			
  compact.go:145	0x5ef0e8		c4e29bf6c9		MULXQ CX, R12, CX			
  compact.go:148	0x5ef0ed		4c89e2			MOVQ R12, DX				
  compact.go:148	0x5ef0f0		48c7c1ffffffff		MOVQ $-0x1, CX				
  compact.go:148	0x5ef0f7		c4e2fbf6c9		MULXQ CX, AX, CX			
  compact.go:149	0x5ef0fc		49c7c5feffffff		MOVQ $-0x2, R13				
  compact.go:149	0x5ef103		c442a3f6ed		MULXQ R13, R11, R13			
  compact.go:150	0x5ef108		49b900000000ffffffff	MOVQ $0xffffffff00000000, R9		
  compact.go:150	0x5ef112		c44283f6c9		MULXQ R9, R15, R9			
  compact.go:151	0x5ef117		41baffffffff		MOVL $-0x1, R10				
  compact.go:151	0x5ef11d		c4c29bf6d2		MULXQ R10, R12, DX			
  compact.go:152	0x5ef122		4c01fa			ADDQ R15, DX				
  compact.go:153	0x5ef125		4d11d9			ADCQ R11, R9				
  compact.go:154	0x5ef128		4911c5			ADCQ AX, R13				
  compact.go:155	0x5ef12b		4989cb			MOVQ CX, R11				
  compact.go:155	0x5ef12e		4811c1			ADCQ AX, CX				
  compact.go:156	0x5ef131		4c11d8			ADCQ R11, AX				
  compact.go:157	0x5ef134		4983d300		ADCQ $0x0, R11				
  compact.go:158	0x5ef138		4c01e3			ADDQ R12, BX				
  compact.go:159	0x5ef13b		4811f2			ADCQ SI, DX				
  compact.go:159	0x5ef13e		48899424e0020000	MOVQ DX, 0x2e0(SP)			
  compact.go:160	0x5ef146		4911f9			ADCQ DI, R9				
  compact.go:160	0x5ef149		4c898c24d8020000	MOVQ R9, 0x2d8(SP)			
  compact.go:161	0x5ef151		4d11c5			ADCQ R8, R13				
  compact.go:161	0x5ef154		4c89ac24d0020000	MOVQ R13, 0x2d0(SP)			
  compact.go:162	0x5ef15c		488b9c24f8020000	MOVQ 0x2f8(SP), BX			
  compact.go:162	0x5ef164		4811d9			ADCQ BX, CX				
  compact.go:162	0x5ef167		48898c24c8020000	MOVQ CX, 0x2c8(SP)			
  compact.go:163	0x5ef16f		488b9c24f0020000	MOVQ 0x2f0(SP), BX			
  compact.go:163	0x5ef177		4811d8			ADCQ BX, AX				
  compact.go:163	0x5ef17a		48898424c0020000	MOVQ AX, 0x2c0(SP)			
  compact.go:164	0x5ef182		488b9c24e8020000	MOVQ 0x2e8(SP), BX			
  compact.go:164	0x5ef18a		4911db			ADCQ BX, R11				
  compact.go:164	0x5ef18d		4c899c24b8020000	MOVQ R11, 0x2b8(SP)			
  compact.go:164	0x5ef195		0f92c3			SETB BL					
  compact.go:164	0x5ef198		0fb6db			MOVZX BL, BX				
  compact.go:138	0x5ef19b		488bb42438030000	MOVQ 0x338(SP), SI			
  compact.go:138	0x5ef1a3		488bbc24c0030000	MOVQ 0x3c0(SP), DI			
  compact.go:138	0x5ef1ab		4801fe			ADDQ DI, SI				
  compact.go:139	0x5ef1ae		488bb42428030000	MOVQ 0x328(SP), SI			
  compact.go:139	0x5ef1b6		488bbc24b8030000	MOVQ 0x3b8(SP), DI			
  compact.go:139	0x5ef1be		4811fe			ADCQ DI, SI				
  compact.go:140	0x5ef1c1		488bb42420030000	MOVQ 0x320(SP), SI			
  compact.go:140	0x5ef1c9		488bbc24b0030000	MOVQ 0x3b0(SP), DI			
  compact.go:140	0x5ef1d1		4811fe			ADCQ DI, SI				
  compact.go:141	0x5ef1d4		488bb42418030000	MOVQ 0x318(SP), SI			
  compact.go:141	0x5ef1dc		488bbc24a8030000	MOVQ 0x3a8(SP), DI			
  compact.go:141	0x5ef1e4		4811fe			ADCQ DI, SI				
  compact.go:142	0x5ef1e7		488bb42410030000	MOVQ 0x310(SP), SI			
  compact.go:142	0x5ef1ef		488bbc24a0030000	MOVQ 0x3a0(SP), DI			
  compact.go:142	0x5ef1f7		4811fe			ADCQ DI, SI				
  compact.go:143	0x5ef1fa		488bb42408030000	MOVQ 0x308(SP), SI			
  compact.go:143	0x5ef202		488bbc2498030000	MOVQ 0x398(SP), DI			
  compact.go:143	0x5ef20a		4811fe			ADCQ DI, SI				
  compact.go:144	0x5ef20d		488bb42400030000	MOVQ 0x300(SP), SI			
  compact.go:144	0x5ef215		488bbc2490030000	MOVQ 0x390(SP), DI			
  compact.go:144	0x5ef21d		4811fe			ADCQ DI, SI				
  compact.go:165	0x5ef220		4883d300		ADCQ $0x0, BX				
  compact.go:165	0x5ef224		48899c24b0020000	MOVQ BX, 0x2b0(SP)			
  compact.go:172	0x5ef22c		488bb42450020000	MOVQ 0x250(SP), SI			
  compact.go:172	0x5ef234		488bbc2468020000	MOVQ 0x268(SP), DI			
  compact.go:172	0x5ef23c		4801fe			ADDQ DI, SI				
  compact.go:172	0x5ef23f		4889b42448020000	MOVQ SI, 0x248(SP)			
  compact.go:173	0x5ef247		488bbc2460020000	MOVQ 0x260(SP), DI			
  compact.go:173	0x5ef24f		4c8b842478020000	MOVQ 0x278(SP), R8			
  compact.go:173	0x5ef257		4c11c7			ADCQ R8, DI				
  compact.go:173	0x5ef25a		4889bc2440020000	MOVQ DI, 0x240(SP)			
  compact.go:174	0x5ef262		4c8b842470020000	MOVQ 0x270(SP), R8			
  compact.go:174	0x5ef26a		4c8ba42488020000	MOVQ 0x288(SP), R12			
  compact.go:174	0x5ef272		4d11e0			ADCQ R12, R8				
  compact.go:174	0x5ef275		4c89842438020000	MOVQ R8, 0x238(SP)			
  compact.go:175	0x5ef27d		4c8ba42480020000	MOVQ 0x280(SP), R12			
  compact.go:175	0x5ef285		4c8bbc2498020000	MOVQ 0x298(SP), R15			
  compact.go:175	0x5ef28d		4d11fc			ADCQ R15, R12				
  compact.go:175	0x5ef290		4c89a42430020000	MOVQ R12, 0x230(SP)			
  compact.go:176	0x5ef298		4c8bbc2490020000	MOVQ 0x290(SP), R15			
  compact.go:176	0x5ef2a0		4c8b9424a8020000	MOVQ 0x2a8(SP), R10			
  compact.go:176	0x5ef2a8		4d11d7			ADCQ R10, R15				
  compact.go:176	0x5ef2ab		4c89bc2428020000	MOVQ R15, 0x228(SP)			
  compact.go:177	0x5ef2b3		4c8b9424a0020000	MOVQ 0x2a0(SP), R10			
  compact.go:177	0x5ef2bb		4983d200		ADCQ $0x0, R10				
  compact.go:177	0x5ef2bf		4c89942420020000	MOVQ R10, 0x220(SP)			
  compact.go:178	0x5ef2c7		488b9c2458020000	MOVQ 0x258(SP), BX			
  compact.go:178	0x5ef2cf		4801d3			ADDQ DX, BX				
  compact.go:179	0x5ef2d2		4c11ce			ADCQ R9, SI				
  compact.go:180	0x5ef2d5		4c11ef			ADCQ R13, DI				
  compact.go:181	0x5ef2d8		4911c8			ADCQ CX, R8				
  compact.go:182	0x5ef2db		4911c4			ADCQ AX, R12				
  compact.go:182	0x5ef2de		4c89a42418020000	MOVQ R12, 0x218(SP)			
  compact.go:183	0x5ef2e6		4d11df			ADCQ R11, R15				
  compact.go:183	0x5ef2e9		4c89bc2410020000	MOVQ R15, 0x210(SP)			
  compact.go:184	0x5ef2f1		4c8b9c24b0020000	MOVQ 0x2b0(SP), R11			
  compact.go:184	0x5ef2f9		4d11da			ADCQ R11, R10				
  compact.go:184	0x5ef2fc		4c89942408020000	MOVQ R10, 0x208(SP)			
  compact.go:185	0x5ef304		4889da			MOVQ BX, DX				
  compact.go:185	0x5ef307		49bb0100000001000000	MOVQ $0x100000001, R11			
  compact.go:185	0x5ef311		c442fbf6db		MULXQ R11, AX, R11			
  compact.go:188	0x5ef316		4889c2			MOVQ AX, DX				
  compact.go:188	0x5ef319		49c7c3ffffffff		MOVQ $-0x1, R11				
  compact.go:188	0x5ef320		c442f3f6db		MULXQ R11, CX, R11			
  compact.go:189	0x5ef325		49c7c5feffffff		MOVQ $-0x2, R13				
  compact.go:189	0x5ef32c		c442b3f6ed		MULXQ R13, R9, R13			
  compact.go:190	0x5ef331		49ba00000000ffffffff	MOVQ $0xffffffff00000000, R10		
  compact.go:190	0x5ef33b		c44283f6d2		MULXQ R10, R15, R10			
  compact.go:191	0x5ef340		41bcffffffff		MOVL $-0x1, R12				
  compact.go:191	0x5ef346		c4c2fbf6d4		MULXQ R12, AX, DX			
  compact.go:192	0x5ef34b		4c01fa			ADDQ R15, DX				
  compact.go:193	0x5ef34e		4d11ca			ADCQ R9, R10				
  compact.go:194	0x5ef351		4911cd			ADCQ CX, R13				
  compact.go:195	0x5ef354		4989c9			MOVQ CX, R9				
  compact.go:195	0x5ef357		4c11d9			ADCQ R11, CX				
  compact.go:196	0x5ef35a		4d11d9			ADCQ R11, R9				
  compact.go:197	0x5ef35d		4983d300		ADCQ $0x0, R11				
  compact.go:198	0x5ef361		4801c3			ADDQ AX, BX				
  compact.go:199	0x5ef364		4811f2			ADCQ SI, DX				
  compact.go:199	0x5ef367		48899424f0010000	MOVQ DX, 0x1f0(SP)			
  compact.go:200	0x5ef36f		4911fa			ADCQ DI, R10				
  compact.go:200	0x5ef372		4c899424e8010000	MOVQ R10, 0x1e8(SP)			
  compact.go:201	0x5ef37a		4d11c5			ADCQ R8, R13				
  compact.go:201	0x5ef37d		4c89ac24e0010000	MOVQ R13, 0x1e0(SP)			
  compact.go:202	0x5ef385		488b842418020000	MOVQ 0x218(SP), AX			
  compact.go:202	0x5ef38d		4811c1			ADCQ AX, CX				
  compact.go:202	0x5ef390		48898c24d8010000	MOVQ CX, 0x1d8(SP)			
  compact.go:203	0x5ef398		488b842410020000	MOVQ 0x210(SP), AX			
  compact.go:203	0x5ef3a0		4911c1			ADCQ AX, R9				
  compact.go:203	0x5ef3a3		4c898c24d0010000	MOVQ R9, 0x1d0(SP)			
  compact.go:204	0x5ef3ab		488b842408020000	MOVQ 0x208(SP), AX			
  compact.go:204	0x5ef3b3		4911c3			ADCQ AX, R11				
  compact.go:204	0x5ef3b6		4c899c24c8010000	MOVQ R11, 0x1c8(SP)			
  compact.go:204	0x5ef3be		0f92c0			SETB AL					
  compact.go:204	0x5ef3c1		0fb6c0			MOVZX AL, AX				
  compact.go:178	0x5ef3c4		488b9c2458020000	MOVQ 0x258(SP), BX			
  compact.go:178	0x5ef3cc		488bb424e0020000	MOVQ 0x2e0(SP), SI			
  compact.go:178	0x5ef3d4		4801f3			ADDQ SI, BX				
  compact.go:179	0x5ef3d7		488b9c2448020000	MOVQ 0x248(SP), BX			
  compact.go:179	0x5ef3df		488bb424d8020000	MOVQ 0x2d8(SP), SI			
  compact.go:179	0x5ef3e7		4811f3			ADCQ SI, BX				
  compact.go:180	0x5ef3ea		488b9c2440020000	MOVQ 0x240(SP), BX			
  compact.go:180	0x5ef3f2		488bb424d0020000	MOVQ 0x2d0(SP), SI			
  compact.go:180	0x5ef3fa		4811f3			ADCQ SI, BX				
  compact.go:181	0x5ef3fd		488b9c2438020000	MOVQ 0x238(SP), BX			
  compact.go:181	0x5ef405		488bb424c8020000	MOVQ 0x2c8(SP), SI			
  compact.go:181	0x5ef40d		4811f3			ADCQ SI, BX				
  compact.go:182	0x5ef410		488b9c2430020000	MOVQ 0x230(SP), BX			
  compact.go:182	0x5ef418		488bb424c0020000	MOVQ 0x2c0(SP), SI			
  compact.go:182	0x5ef420		4811f3			ADCQ SI, BX				
  compact.go:183	0x5ef423		488b9c2428020000	MOVQ 0x228(SP), BX			
  compact.go:183	0x5ef42b		488bb424b8020000	MOVQ 0x2b8(SP), SI			
  compact.go:183	0x5ef433		4811f3			ADCQ SI, BX				
  compact.go:184	0x5ef436		488b9c2420020000	MOVQ 0x220(SP), BX			
  compact.go:184	0x5ef43e		488bb424b0020000	MOVQ 0x2b0(SP), SI			
  compact.go:184	0x5ef446		4811f3			ADCQ SI, BX				
  compact.go:205	0x5ef449		4883d000		ADCQ $0x0, AX				
  compact.go:205	0x5ef44d		48898424c0010000	MOVQ AX, 0x1c0(SP)			
  compact.go:212	0x5ef455		488b9c2458010000	MOVQ 0x158(SP), BX			
  compact.go:212	0x5ef45d		488bb42470010000	MOVQ 0x170(SP), SI			
  compact.go:212	0x5ef465		4801f3			ADDQ SI, BX				
  compact.go:212	0x5ef468		48899c2450010000	MOVQ BX, 0x150(SP)			
  compact.go:213	0x5ef470		488bb42468010000	MOVQ 0x168(SP), SI			
  compact.go:213	0x5ef478		488bbc2480010000	MOVQ 0x180(SP), DI			
  compact.go:213	0x5ef480		4811fe			ADCQ DI, SI				
  compact.go:213	0x5ef483		4889b42440010000	MOVQ SI, 0x140(SP)			
  compact.go:214	0x5ef48b		488bbc2478010000	MOVQ 0x178(SP), DI			
  compact.go:214	0x5ef493		4c8b842490010000	MOVQ 0x190(SP), R8			
  compact.go:214	0x5ef49b		4c11c7			ADCQ R8, DI				
  compact.go:214	0x5ef49e		4889bc2438010000	MOVQ DI, 0x138(SP)			
  compact.go:215	0x5ef4a6		4c8b842488010000	MOVQ 0x188(SP), R8			
  compact.go:215	0x5ef4ae		4c8bbc24a8010000	MOVQ 0x1a8(SP), R15			
  compact.go:215	0x5ef4b6		4d11f8			ADCQ R15, R8				
  compact.go:215	0x5ef4b9		4c89842430010000	MOVQ R8, 0x130(SP)			
  compact.go:216	0x5ef4c1		4c8bbc2498010000	MOVQ 0x198(SP), R15			
  compact.go:216	0x5ef4c9		4c8ba424b8010000	MOVQ 0x1b8(SP), R12			
  compact.go:216	0x5ef4d1		4d11e7			ADCQ R12, R15				
  compact.go:216	0x5ef4d4		4c89bc2428010000	MOVQ R15, 0x128(SP)			
  compact.go:217	0x5ef4dc		4c8ba424b0010000	MOVQ 0x1b0(SP), R12			
  compact.go:217	0x5ef4e4		4983d400		ADCQ $0x0, R12				
  compact.go:217	0x5ef4e8		4c89a42420010000	MOVQ R12, 0x120(SP)			
  compact.go:218	0x5ef4f0		488b842460010000	MOVQ 0x160(SP), AX			
  compact.go:218	0x5ef4f8		4801d0			ADDQ DX, AX				
  compact.go:219	0x5ef4fb		4c11d3			ADCQ R10, BX				
  compact.go:220	0x5ef4fe		4c11ee			ADCQ R13, SI				
  compact.go:221	0x5ef501		4811cf			ADCQ CX, DI				
  compact.go:222	0x5ef504		4d11c8			ADCQ R9, R8				
  compact.go:222	0x5ef507		4c89842418010000	MOVQ R8, 0x118(SP)			
  compact.go:223	0x5ef50f		4d11df			ADCQ R11, R15				
  compact.go:223	0x5ef512		4c89bc2408010000	MOVQ R15, 0x108(SP)			
  compact.go:224	0x5ef51a		4c8b9c24c0010000	MOVQ 0x1c0(SP), R11			
  compact.go:224	0x5ef522		4d11dc			ADCQ R11, R12				
  compact.go:224	0x5ef525		4c89a42400010000	MOVQ R12, 0x100(SP)			
  compact.go:225	0x5ef52d		4889c2			MOVQ AX, DX				
  compact.go:225	0x5ef530		49bb0100000001000000	MOVQ $0x100000001, R11			
  compact.go:225	0x5ef53a		c442b3f6db		MULXQ R11, R9, R11			
  compact.go:226	0x5ef53f		4c89ca			MOVQ R9, DX				
  compact.go:226	0x5ef542		49c7c3ffffffff		MOVQ $-0x1, R11				
  compact.go:226	0x5ef549		c442f3f6db		MULXQ R11, CX, R11			
  compact.go:229	0x5ef54e		49c7c5feffffff		MOVQ $-0x2, R13				
  compact.go:229	0x5ef555		c442abf6ed		MULXQ R13, R10, R13			
  compact.go:230	0x5ef55a		49bc00000000ffffffff	MOVQ $0xffffffff00000000, R12		
  compact.go:230	0x5ef564		c44283f6e4		MULXQ R12, R15, R12			
  compact.go:231	0x5ef569		41b8ffffffff		MOVL $-0x1, R8				
  compact.go:231	0x5ef56f		c442ebf6c8		MULXQ R8, DX, R9			
  compact.go:232	0x5ef574		4d01f9			ADDQ R15, R9				
  compact.go:233	0x5ef577		4d11d4			ADCQ R10, R12				
  compact.go:234	0x5ef57a		4911cd			ADCQ CX, R13				
  compact.go:235	0x5ef57d		4989ca			MOVQ CX, R10				
  compact.go:235	0x5ef580		4c11d9			ADCQ R11, CX				
  compact.go:236	0x5ef583		4d11da			ADCQ R11, R10				
  compact.go:237	0x5ef586		4983d300		ADCQ $0x0, R11				
  compact.go:238	0x5ef58a		4801d0			ADDQ DX, AX				
  compact.go:239	0x5ef58d		4911d9			ADCQ BX, R9				
  compact.go:240	0x5ef590		4911f4			ADCQ SI, R12				
  compact.go:241	0x5ef593		4911fd			ADCQ DI, R13				
  compact.go:242	0x5ef596		488b842418010000	MOVQ 0x118(SP), AX			
  compact.go:242	0x5ef59e		4811c1			ADCQ AX, CX				
  compact.go:243	0x5ef5a1		488b842408010000	MOVQ 0x108(SP), AX			
  compact.go:243	0x5ef5a9		4911c2			ADCQ AX, R10				
  compact.go:244	0x5ef5ac		488b842400010000	MOVQ 0x100(SP), AX			
  compact.go:244	0x5ef5b4		4911c3			ADCQ AX, R11				
  compact.go:244	0x5ef5b7		0f92c0			SETB AL					
  compact.go:244	0x5ef5ba		0fb6c0			MOVZX AL, AX				
  compact.go:218	0x5ef5bd		488b9c2460010000	MOVQ 0x160(SP), BX			
  compact.go:218	0x5ef5c5		488bb424f0010000	MOVQ 0x1f0(SP), SI			
  compact.go:218	0x5ef5cd		4801f3			ADDQ SI, BX				
  compact.go:219	0x5ef5d0		488b9c2450010000	MOVQ 0x150(SP), BX			
  compact.go:219	0x5ef5d8		488bb424e8010000	MOVQ 0x1e8(SP), SI			
  compact.go:219	0x5ef5e0		4811f3			ADCQ SI, BX				
  compact.go:220	0x5ef5e3		488b9c2440010000	MOVQ 0x140(SP), BX			
  compact.go:220	0x5ef5eb		488bb424e0010000	MOVQ 0x1e0(SP), SI			
  compact.go:220	0x5ef5f3		4811f3			ADCQ SI, BX				
  compact.go:221	0x5ef5f6		488b9c2438010000	MOVQ 0x138(SP), BX			
  compact.go:221	0x5ef5fe		488bb424d8010000	MOVQ 0x1d8(SP), SI			
  compact.go:221	0x5ef606		4811f3			ADCQ SI, BX				
  compact.go:222	0x5ef609		488b9c2430010000	MOVQ 0x130(SP), BX			
  compact.go:222	0x5ef611		488bb424d0010000	MOVQ 0x1d0(SP), SI			
  compact.go:222	0x5ef619		4811f3			ADCQ SI, BX				
  compact.go:223	0x5ef61c		488b9c2428010000	MOVQ 0x128(SP), BX			
  compact.go:223	0x5ef624		488bb424c8010000	MOVQ 0x1c8(SP), SI			
  compact.go:223	0x5ef62c		4811f3			ADCQ SI, BX				
  compact.go:224	0x5ef62f		488b9c2420010000	MOVQ 0x120(SP), BX			
  compact.go:224	0x5ef637		488bb424c0010000	MOVQ 0x1c0(SP), SI			
  compact.go:224	0x5ef63f		4811f3			ADCQ SI, BX				
  compact.go:245	0x5ef642		4883d000		ADCQ $0x0, AX				
  compact.go:246	0x5ef646		4c89cb			MOVQ R9, BX				
  compact.go:246	0x5ef649		4d29c1			SUBQ R8, R9				
  compact.go:247	0x5ef64c		48be00000000ffffffff	MOVQ $0xffffffff00000000, SI		
  compact.go:247	0x5ef656		4c89e7			MOVQ R12, DI				
  compact.go:247	0x5ef659		4919f4			SBBQ SI, R12				
  compact.go:248	0x5ef65c		4c89ee			MOVQ R13, SI				
  compact.go:248	0x5ef65f		4983ddfe		SBBQ $-0x2, R13				
  compact.go:249	0x5ef663		4989c8			MOVQ CX, R8				
  compact.go:249	0x5ef666		4883d9ff		SBBQ $-0x1, CX				
  compact.go:250	0x5ef66a		4d89d7			MOVQ R10, R15				
  compact.go:250	0x5ef66d		4983daff		SBBQ $-0x1, R10				
  compact.go:251	0x5ef671		4c89da			MOVQ R11, DX				
  compact.go:251	0x5ef674		4983dbff		SBBQ $-0x1, R11				
  compact.go:252	0x5ef678		4883d800		SBBQ $0x0, AX				
  compact.go:252	0x5ef67c		0f92c0			SETB AL					
  compact.go:252	0x5ef67f		0fb6c0			MOVZX AL, AX				
  common.go:7		0x5ef682		48f7d8			NEGQ AX					
  common.go:8		0x5ef685		4821c3			ANDQ AX, BX				
  common.go:8		0x5ef688		c442f8f2c9		ANDNQ R9, AX, R9			
  common.go:8		0x5ef68d		4c09cb			ORQ R9, BX				
  compact.go:265	0x5ef690		4c8b8c2418050000	MOVQ 0x518(SP), R9			
  compact.go:265	0x5ef698		498919			MOVQ BX, 0(R9)				
  common.go:8		0x5ef69b		4821c7			ANDQ AX, DI				
  common.go:8		0x5ef69e		c4c2f8f2dc		ANDNQ R12, AX, BX			
  common.go:8		0x5ef6a3		4809df			ORQ BX, DI				
  compact.go:266	0x5ef6a6		49897908		MOVQ DI, 0x8(R9)			
  common.go:8		0x5ef6aa		4821c6			ANDQ AX, SI				
  common.go:8		0x5ef6ad		c4c2f8f2dd		ANDNQ R13, AX, BX			
  common.go:8		0x5ef6b2		4809de			ORQ BX, SI				
  compact.go:267	0x5ef6b5		49897110		MOVQ SI, 0x10(R9)			
  common.go:8		0x5ef6b9		4921c0			ANDQ AX, R8				
  common.go:8		0x5ef6bc		c4e2f8f2c9		ANDNQ CX, AX, CX			
  common.go:8		0x5ef6c1		4c09c1			ORQ R8, CX				
  compact.go:268	0x5ef6c4		49894918		MOVQ CX, 0x18(R9)			
  common.go:8		0x5ef6c8		4921c7			ANDQ AX, R15				
  common.go:8		0x5ef6cb		c4c2f8f2ca		ANDNQ R10, AX, CX			
  common.go:8		0x5ef6d0		4909cf			ORQ CX, R15				
  compact.go:269	0x5ef6d3		4d897920		MOVQ R15, 0x20(R9)			
  common.go:8		0x5ef6d7		4821c2			ANDQ AX, DX				
  common.go:8		0x5ef6da		c4c2f8f2c3		ANDNQ R11, AX, AX			
  common.go:8		0x5ef6df		4809c2			ORQ AX, DX				
  compact.go:270	0x5ef6e2		49895128		MOVQ DX, 0x28(R9)			
  compact.go:271	0x5ef6e6		c9			LEAVE					
  compact.go:271	0x5ef6e7		c3			RET					
  compact.go:7		0x5ef6e8		4889442408		MOVQ AX, 0x8(SP)			
  compact.go:7		0x5ef6ed		48895c2410		MOVQ BX, 0x10(SP)			
  compact.go:7		0x5ef6f2		48894c2418		MOVQ CX, 0x18(SP)			
  compact.go:7		0x5ef6f7		e824b4e9ff		CALL runtime.morestack_noctxt.abi0(SB)	
  compact.go:7		0x5ef6fc		488b442408		MOVQ 0x8(SP), AX			
  compact.go:7		0x5ef701		488b5c2410		MOVQ 0x10(SP), BX			
  compact.go:7		0x5ef706		488b4c2418		MOVQ 0x18(SP), CX			
  compact.go:7		0x5ef70b		e9b0efffff		JMP example.com/p384issue.Mul(SB)	
