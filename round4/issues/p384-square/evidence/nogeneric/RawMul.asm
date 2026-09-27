TEXT example.com/p384issue.RawMul(SB) /home/exedev/crypto-audit/round4/issues/p384-square/raw.go
  raw.go:9		0x5f3360		4c8da424a8faffff	LEAQ 0xfffffaa8(SP), R12		
  raw.go:9		0x5f3368		4d3b6610		CMPQ R12, 0x10(R14)			
  raw.go:9		0x5f336c		0f86cf110000		JBE 0x5f4541				
  raw.go:9		0x5f3372		55			PUSHQ BP				
  raw.go:9		0x5f3373		4889e5			MOVQ SP, BP				
  raw.go:9		0x5f3376		4881ecd0050000		SUBQ $0x5d0, SP				
  raw.go:704		0x5f337d		48898424e0050000	MOVQ AX, 0x5e0(SP)			
  raw.go:10		0x5f3385		488b5308		MOVQ 0x8(BX), DX			
  raw.go:11		0x5f3389		488b7310		MOVQ 0x10(BX), SI			
  raw.go:12		0x5f338d		488b7b18		MOVQ 0x18(BX), DI			
  raw.go:13		0x5f3391		4c8b4320		MOVQ 0x20(BX), R8			
  raw.go:14		0x5f3395		4c8b4b28		MOVQ 0x28(BX), R9			
  raw.go:15		0x5f3399		488b1b			MOVQ 0(BX), BX				
  raw.go:18		0x5f339c		4c8b5120		MOVQ 0x20(CX), R10			
  raw.go:21		0x5f33a0		4889d8			MOVQ BX, AX				
  raw.go:10		0x5f33a3		4989d4			MOVQ DX, R12				
  raw.go:21		0x5f33a6		49f7e2			MULQ R10				
  raw.go:21		0x5f33a9		48899424b8050000	MOVQ DX, 0x5b8(SP)			
  raw.go:21		0x5f33b1		4889442408		MOVQ AX, 0x8(SP)			
  raw.go:24		0x5f33b6		4c8b6918		MOVQ 0x18(CX), R13			
  raw.go:24		0x5f33ba		4889d8			MOVQ BX, AX				
  raw.go:24		0x5f33bd		49f7e5			MULQ R13				
  raw.go:24		0x5f33c0		4889942468050000	MOVQ DX, 0x568(SP)			
  raw.go:24		0x5f33c8		4889842490050000	MOVQ AX, 0x590(SP)			
  raw.go:27		0x5f33d0		4c8b5910		MOVQ 0x10(CX), R11			
  raw.go:27		0x5f33d4		4889d8			MOVQ BX, AX				
  raw.go:27		0x5f33d7		49f7e3			MULQ R11				
  raw.go:27		0x5f33da		4889942438050000	MOVQ DX, 0x538(SP)			
  raw.go:27		0x5f33e2		4889842460050000	MOVQ AX, 0x560(SP)			
  raw.go:30		0x5f33ea		4c8b7908		MOVQ 0x8(CX), R15			
  raw.go:30		0x5f33ee		4889d8			MOVQ BX, AX				
  raw.go:30		0x5f33f1		49f7e7			MULQ R15				
  raw.go:30		0x5f33f4		48899424a8040000	MOVQ DX, 0x4a8(SP)			
  raw.go:30		0x5f33fc		48898424f8040000	MOVQ AX, 0x4f8(SP)			
  raw.go:33		0x5f3404		488b11			MOVQ 0(CX), DX				
  raw.go:33		0x5f3407		48899424c8050000	MOVQ DX, 0x5c8(SP)			
  raw.go:33		0x5f340f		4889d8			MOVQ BX, AX				
  raw.go:33		0x5f3412		48f7e2			MULQ DX					
  raw.go:33		0x5f3415		4889842478040000	MOVQ AX, 0x478(SP)			
  raw.go:33		0x5f341d		4889942470040000	MOVQ DX, 0x470(SP)			
  raw.go:51		0x5f3425		48b80100000001000000	MOVQ $0x100000001, AX			
  raw.go:51		0x5f342f		488b942478040000	MOVQ 0x478(SP), DX			
  raw.go:51		0x5f3437		48f7e2			MULQ DX					
  raw.go:51		0x5f343a		48898424e0020000	MOVQ AX, 0x2e0(SP)			
  raw.go:51		0x5f3442		4889c2			MOVQ AX, DX				
  raw.go:60		0x5f3445		48c7c0ffffffff		MOVQ $-0x1, AX				
  raw.go:60		0x5f344c		48f7e2			MULQ DX					
  raw.go:54		0x5f344f		4889842458020000	MOVQ AX, 0x258(SP)			
  raw.go:54		0x5f3457		4889942440020000	MOVQ DX, 0x240(SP)			
  raw.go:63		0x5f345f		48c7c0feffffff		MOVQ $-0x2, AX				
  raw.go:63		0x5f3466		488b9424e0020000	MOVQ 0x2e0(SP), DX			
  raw.go:63		0x5f346e		48f7e2			MULQ DX					
  raw.go:63		0x5f3471		4889942450010000	MOVQ DX, 0x150(SP)			
  raw.go:63		0x5f3479		48898424a8010000	MOVQ AX, 0x1a8(SP)			
  raw.go:66		0x5f3481		48b800000000ffffffff	MOVQ $0xffffffff00000000, AX		
  raw.go:66		0x5f348b		488b9424e0020000	MOVQ 0x2e0(SP), DX			
  raw.go:66		0x5f3493		48f7e2			MULQ DX					
  raw.go:66		0x5f3496		4889942418010000	MOVQ DX, 0x118(SP)			
  raw.go:66		0x5f349e		4889842420010000	MOVQ AX, 0x120(SP)			
  raw.go:69		0x5f34a6		b8ffffffff		MOVL $-0x1, AX				
  raw.go:69		0x5f34ab		488b9424e0020000	MOVQ 0x2e0(SP), DX			
  raw.go:69		0x5f34b3		48f7e2			MULQ DX					
  raw.go:69		0x5f34b6		48898424f8000000	MOVQ AX, 0xf8(SP)			
  raw.go:108		0x5f34be		488b4928		MOVQ 0x28(CX), CX			
  raw.go:18		0x5f34c2		4889d8			MOVQ BX, AX				
  raw.go:69		0x5f34c5		4889d3			MOVQ DX, BX				
  raw.go:18		0x5f34c8		48f7e1			MULQ CX					
  raw.go:18		0x5f34cb		4889542440		MOVQ DX, 0x40(SP)			
  raw.go:18		0x5f34d0		4889842498000000	MOVQ AX, 0x98(SP)			
  raw.go:108		0x5f34d8		4c89e0			MOVQ R12, AX				
  raw.go:108		0x5f34db		48f7e1			MULQ CX					
  raw.go:108		0x5f34de		4889942490000000	MOVQ DX, 0x90(SP)			
  raw.go:108		0x5f34e6		48898424a0000000	MOVQ AX, 0xa0(SP)			
  raw.go:111		0x5f34ee		4c89e0			MOVQ R12, AX				
  raw.go:111		0x5f34f1		49f7e2			MULQ R10				
  raw.go:111		0x5f34f4		4889942480000000	MOVQ DX, 0x80(SP)			
  raw.go:111		0x5f34fc		4889842488000000	MOVQ AX, 0x88(SP)			
  raw.go:114		0x5f3504		4c89e0			MOVQ R12, AX				
  raw.go:114		0x5f3507		49f7e5			MULQ R13				
  raw.go:114		0x5f350a		4889542470		MOVQ DX, 0x70(SP)			
  raw.go:114		0x5f350f		4889442478		MOVQ AX, 0x78(SP)			
  raw.go:117		0x5f3514		4c89e0			MOVQ R12, AX				
  raw.go:117		0x5f3517		49f7e3			MULQ R11				
  raw.go:117		0x5f351a		4889542460		MOVQ DX, 0x60(SP)			
  raw.go:117		0x5f351f		4889442468		MOVQ AX, 0x68(SP)			
  raw.go:120		0x5f3524		4c89e0			MOVQ R12, AX				
  raw.go:120		0x5f3527		49f7e7			MULQ R15				
  raw.go:120		0x5f352a		4889542450		MOVQ DX, 0x50(SP)			
  raw.go:120		0x5f352f		4889442458		MOVQ AX, 0x58(SP)			
  raw.go:123		0x5f3534		4c89e0			MOVQ R12, AX				
  raw.go:123		0x5f3537		488b9424c8050000	MOVQ 0x5c8(SP), DX			
  raw.go:33		0x5f353f		4989d4			MOVQ DX, R12				
  raw.go:123		0x5f3542		48f7e2			MULQ DX					
  raw.go:123		0x5f3545		4889542438		MOVQ DX, 0x38(SP)			
  raw.go:123		0x5f354a		4889442448		MOVQ AX, 0x48(SP)			
  raw.go:220		0x5f354f		4889f0			MOVQ SI, AX				
  raw.go:220		0x5f3552		48f7e1			MULQ CX					
  raw.go:220		0x5f3555		4889942410050000	MOVQ DX, 0x510(SP)			
  raw.go:220		0x5f355d		4889842418050000	MOVQ AX, 0x518(SP)			
  raw.go:223		0x5f3565		4889f0			MOVQ SI, AX				
  raw.go:223		0x5f3568		49f7e2			MULQ R10				
  raw.go:223		0x5f356b		4889942400050000	MOVQ DX, 0x500(SP)			
  raw.go:223		0x5f3573		4889842408050000	MOVQ AX, 0x508(SP)			
  raw.go:226		0x5f357b		4889f0			MOVQ SI, AX				
  raw.go:226		0x5f357e		49f7e5			MULQ R13				
  raw.go:226		0x5f3581		48899424e8040000	MOVQ DX, 0x4e8(SP)			
  raw.go:226		0x5f3589		48898424f0040000	MOVQ AX, 0x4f0(SP)			
  raw.go:229		0x5f3591		4889f0			MOVQ SI, AX				
  raw.go:229		0x5f3594		49f7e3			MULQ R11				
  raw.go:229		0x5f3597		48899424d8040000	MOVQ DX, 0x4d8(SP)			
  raw.go:229		0x5f359f		48898424e0040000	MOVQ AX, 0x4e0(SP)			
  raw.go:232		0x5f35a7		4889f0			MOVQ SI, AX				
  raw.go:232		0x5f35aa		49f7e7			MULQ R15				
  raw.go:232		0x5f35ad		48899424c8040000	MOVQ DX, 0x4c8(SP)			
  raw.go:232		0x5f35b5		48898424d0040000	MOVQ AX, 0x4d0(SP)			
  raw.go:235		0x5f35bd		4889f0			MOVQ SI, AX				
  raw.go:235		0x5f35c0		49f7e4			MULQ R12				
  raw.go:235		0x5f35c3		48899424b8040000	MOVQ DX, 0x4b8(SP)			
  raw.go:235		0x5f35cb		48898424c0040000	MOVQ AX, 0x4c0(SP)			
  raw.go:332		0x5f35d3		4889f8			MOVQ DI, AX				
  raw.go:332		0x5f35d6		48f7e1			MULQ CX					
  raw.go:332		0x5f35d9		48899424e8030000	MOVQ DX, 0x3e8(SP)			
  raw.go:332		0x5f35e1		48898424f0030000	MOVQ AX, 0x3f0(SP)			
  raw.go:335		0x5f35e9		4889f8			MOVQ DI, AX				
  raw.go:335		0x5f35ec		49f7e2			MULQ R10				
  raw.go:335		0x5f35ef		48899424d8030000	MOVQ DX, 0x3d8(SP)			
  raw.go:335		0x5f35f7		48898424e0030000	MOVQ AX, 0x3e0(SP)			
  raw.go:338		0x5f35ff		4889f8			MOVQ DI, AX				
  raw.go:338		0x5f3602		49f7e5			MULQ R13				
  raw.go:338		0x5f3605		48899424c8030000	MOVQ DX, 0x3c8(SP)			
  raw.go:338		0x5f360d		48898424d0030000	MOVQ AX, 0x3d0(SP)			
  raw.go:341		0x5f3615		4889f8			MOVQ DI, AX				
  raw.go:341		0x5f3618		49f7e3			MULQ R11				
  raw.go:341		0x5f361b		48899424b8030000	MOVQ DX, 0x3b8(SP)			
  raw.go:341		0x5f3623		48898424c0030000	MOVQ AX, 0x3c0(SP)			
  raw.go:344		0x5f362b		4889f8			MOVQ DI, AX				
  raw.go:344		0x5f362e		49f7e7			MULQ R15				
  raw.go:344		0x5f3631		48899424a8030000	MOVQ DX, 0x3a8(SP)			
  raw.go:344		0x5f3639		48898424b0030000	MOVQ AX, 0x3b0(SP)			
  raw.go:347		0x5f3641		4889f8			MOVQ DI, AX				
  raw.go:347		0x5f3644		49f7e4			MULQ R12				
  raw.go:347		0x5f3647		4889942498030000	MOVQ DX, 0x398(SP)			
  raw.go:347		0x5f364f		48898424a0030000	MOVQ AX, 0x3a0(SP)			
  raw.go:444		0x5f3657		4c89c0			MOVQ R8, AX				
  raw.go:444		0x5f365a		48f7e1			MULQ CX					
  raw.go:444		0x5f365d		48899424d0020000	MOVQ DX, 0x2d0(SP)			
  raw.go:444		0x5f3665		48898424d8020000	MOVQ AX, 0x2d8(SP)			
  raw.go:447		0x5f366d		4c89c0			MOVQ R8, AX				
  raw.go:447		0x5f3670		49f7e2			MULQ R10				
  raw.go:447		0x5f3673		48899424c0020000	MOVQ DX, 0x2c0(SP)			
  raw.go:447		0x5f367b		48898424c8020000	MOVQ AX, 0x2c8(SP)			
  raw.go:450		0x5f3683		4c89c0			MOVQ R8, AX				
  raw.go:450		0x5f3686		49f7e5			MULQ R13				
  raw.go:450		0x5f3689		48899424b0020000	MOVQ DX, 0x2b0(SP)			
  raw.go:450		0x5f3691		48898424b8020000	MOVQ AX, 0x2b8(SP)			
  raw.go:453		0x5f3699		4c89c0			MOVQ R8, AX				
  raw.go:453		0x5f369c		49f7e3			MULQ R11				
  raw.go:453		0x5f369f		48899424a0020000	MOVQ DX, 0x2a0(SP)			
  raw.go:453		0x5f36a7		48898424a8020000	MOVQ AX, 0x2a8(SP)			
  raw.go:456		0x5f36af		4c89c0			MOVQ R8, AX				
  raw.go:456		0x5f36b2		49f7e7			MULQ R15				
  raw.go:456		0x5f36b5		4889942490020000	MOVQ DX, 0x290(SP)			
  raw.go:456		0x5f36bd		4889842498020000	MOVQ AX, 0x298(SP)			
  raw.go:459		0x5f36c5		4c89c0			MOVQ R8, AX				
  raw.go:459		0x5f36c8		49f7e4			MULQ R12				
  raw.go:459		0x5f36cb		4889942480020000	MOVQ DX, 0x280(SP)			
  raw.go:459		0x5f36d3		4889842488020000	MOVQ AX, 0x288(SP)			
  raw.go:556		0x5f36db		4c89c8			MOVQ R9, AX				
  raw.go:556		0x5f36de		48f7e1			MULQ CX					
  raw.go:556		0x5f36e1		48899424b8010000	MOVQ DX, 0x1b8(SP)			
  raw.go:556		0x5f36e9		48898424c0010000	MOVQ AX, 0x1c0(SP)			
  raw.go:559		0x5f36f1		4c89c8			MOVQ R9, AX				
  raw.go:559		0x5f36f4		49f7e2			MULQ R10				
  raw.go:559		0x5f36f7		48899424a0010000	MOVQ DX, 0x1a0(SP)			
  raw.go:559		0x5f36ff		48898424b0010000	MOVQ AX, 0x1b0(SP)			
  raw.go:562		0x5f3707		4c89c8			MOVQ R9, AX				
  raw.go:562		0x5f370a		49f7e5			MULQ R13				
  raw.go:562		0x5f370d		4889942490010000	MOVQ DX, 0x190(SP)			
  raw.go:562		0x5f3715		4889842498010000	MOVQ AX, 0x198(SP)			
  raw.go:565		0x5f371d		4c89c8			MOVQ R9, AX				
  raw.go:565		0x5f3720		49f7e3			MULQ R11				
  raw.go:565		0x5f3723		4889942480010000	MOVQ DX, 0x180(SP)			
  raw.go:565		0x5f372b		4889842488010000	MOVQ AX, 0x188(SP)			
  raw.go:568		0x5f3733		4c89c8			MOVQ R9, AX				
  raw.go:568		0x5f3736		49f7e7			MULQ R15				
  raw.go:568		0x5f3739		4889942470010000	MOVQ DX, 0x170(SP)			
  raw.go:568		0x5f3741		4889842478010000	MOVQ AX, 0x178(SP)			
  raw.go:571		0x5f3749		4c89c8			MOVQ R9, AX				
  raw.go:571		0x5f374c		49f7e4			MULQ R12				
  raw.go:571		0x5f374f		4889942460010000	MOVQ DX, 0x160(SP)			
  raw.go:571		0x5f3757		4889842468010000	MOVQ AX, 0x168(SP)			
  raw.go:687		0x5f375f		90			NOPL					
  raw.go:689		0x5f3760		90			NOPL					
  raw.go:691		0x5f3761		90			NOPL					
  raw.go:693		0x5f3762		90			NOPL					
  raw.go:695		0x5f3763		90			NOPL					
  raw.go:697		0x5f3764		90			NOPL					
  raw.go:36		0x5f3765		4c8ba42470040000	MOVQ 0x470(SP), R12			
  raw.go:36		0x5f376d		488b8c24f8040000	MOVQ 0x4f8(SP), CX			
  raw.go:36		0x5f3775		4901cc			ADDQ CX, R12				
  raw.go:39		0x5f3778		488b8c24a8040000	MOVQ 0x4a8(SP), CX			
  raw.go:39		0x5f3780		4c8b942460050000	MOVQ 0x560(SP), R10			
  raw.go:39		0x5f3788		4c11d1			ADCQ R10, CX				
  raw.go:42		0x5f378b		4c8b942438050000	MOVQ 0x538(SP), R10			
  raw.go:42		0x5f3793		4c8bac2490050000	MOVQ 0x590(SP), R13			
  raw.go:42		0x5f379b		4d11ea			ADCQ R13, R10				
  raw.go:45		0x5f379e		4c8bac2468050000	MOVQ 0x568(SP), R13			
  raw.go:45		0x5f37a6		4c8b4c2408		MOVQ 0x8(SP), R9			
  raw.go:45		0x5f37ab		4d11cd			ADCQ R9, R13				
  raw.go:48		0x5f37ae		4c8b8c24b8050000	MOVQ 0x5b8(SP), R9			
  raw.go:48		0x5f37b6		4c8b9c2498000000	MOVQ 0x98(SP), R11			
  raw.go:48		0x5f37be		4d11d9			ADCQ R11, R9				
  raw.go:49		0x5f37c1		4c8b5c2440		MOVQ 0x40(SP), R11			
  raw.go:49		0x5f37c6		4983d300		ADCQ $0x0, R11				
  raw.go:49		0x5f37ca		4c899c2410030000	MOVQ R11, 0x310(SP)			
  raw.go:72		0x5f37d2		488b942420010000	MOVQ 0x120(SP), DX			
  raw.go:72		0x5f37da		4801d3			ADDQ DX, BX				
  raw.go:75		0x5f37dd		488b942418010000	MOVQ 0x118(SP), DX			
  raw.go:75		0x5f37e5		4c8bbc24a8010000	MOVQ 0x1a8(SP), R15			
  raw.go:75		0x5f37ed		4c11fa			ADCQ R15, DX				
  raw.go:78		0x5f37f0		4c8bbc2450010000	MOVQ 0x150(SP), R15			
  raw.go:78		0x5f37f8		4c8b842458020000	MOVQ 0x258(SP), R8			
  raw.go:78		0x5f3800		4d11c7			ADCQ R8, R15				
  raw.go:81		0x5f3803		488bbc2440020000	MOVQ 0x240(SP), DI			
  raw.go:81		0x5f380b		4c11c7			ADCQ R8, DI				
  raw.go:84		0x5f380e		488bb42440020000	MOVQ 0x240(SP), SI			
  raw.go:84		0x5f3816		4911f0			ADCQ SI, R8				
  raw.go:85		0x5f3819		4883d600		ADCQ $0x0, SI				
  raw.go:85		0x5f381d		4889b424e0000000	MOVQ SI, 0xe0(SP)			
  raw.go:87		0x5f3825		488bb42478040000	MOVQ 0x478(SP), SI			
  raw.go:87		0x5f382d		4c8b9c24f8000000	MOVQ 0xf8(SP), R11			
  raw.go:87		0x5f3835		4c01de			ADDQ R11, SI				
  raw.go:90		0x5f3838		4c11e3			ADCQ R12, BX				
  raw.go:90		0x5f383b		48899c24d8000000	MOVQ BX, 0xd8(SP)			
  raw.go:93		0x5f3843		4811ca			ADCQ CX, DX				
  raw.go:93		0x5f3846		48899424d0000000	MOVQ DX, 0xd0(SP)			
  raw.go:96		0x5f384e		4d11d7			ADCQ R10, R15				
  raw.go:96		0x5f3851		4c89bc24c8000000	MOVQ R15, 0xc8(SP)			
  raw.go:99		0x5f3859		4c11ef			ADCQ R13, DI				
  raw.go:99		0x5f385c		4889bc24c0000000	MOVQ DI, 0xc0(SP)			
  raw.go:102		0x5f3864		4d11c8			ADCQ R9, R8				
  raw.go:102		0x5f3867		4c898424b8000000	MOVQ R8, 0xb8(SP)			
  raw.go:105		0x5f386f		488b8c24e0000000	MOVQ 0xe0(SP), CX			
  raw.go:105		0x5f3877		488bb42410030000	MOVQ 0x310(SP), SI			
  raw.go:105		0x5f387f		4811f1			ADCQ SI, CX				
  raw.go:105		0x5f3882		48898c24b0000000	MOVQ CX, 0xb0(SP)			
  raw.go:105		0x5f388a		400f92c6		SETB SI					
  raw.go:105		0x5f388e		400fb6f6		MOVZX SI, SI				
  raw.go:105		0x5f3892		4889b424a8000000	MOVQ SI, 0xa8(SP)			
  raw.go:126		0x5f389a		4c8b4c2438		MOVQ 0x38(SP), R9			
  raw.go:126		0x5f389f		4c8b542458		MOVQ 0x58(SP), R10			
  raw.go:126		0x5f38a4		4d01d1			ADDQ R10, R9				
  raw.go:126		0x5f38a7		4c894c2430		MOVQ R9, 0x30(SP)			
  raw.go:129		0x5f38ac		4c8b542450		MOVQ 0x50(SP), R10			
  raw.go:129		0x5f38b1		4c8b5c2468		MOVQ 0x68(SP), R11			
  raw.go:129		0x5f38b6		4d11da			ADCQ R11, R10				
  raw.go:129		0x5f38b9		4c89542428		MOVQ R10, 0x28(SP)			
  raw.go:132		0x5f38be		4c8b5c2460		MOVQ 0x60(SP), R11			
  raw.go:132		0x5f38c3		4c8b642478		MOVQ 0x78(SP), R12			
  raw.go:132		0x5f38c8		4d11e3			ADCQ R12, R11				
  raw.go:132		0x5f38cb		4c895c2420		MOVQ R11, 0x20(SP)			
  raw.go:135		0x5f38d0		4c8b642470		MOVQ 0x70(SP), R12			
  raw.go:135		0x5f38d5		4c8bac2488000000	MOVQ 0x88(SP), R13			
  raw.go:135		0x5f38dd		4d11ec			ADCQ R13, R12				
  raw.go:135		0x5f38e0		4c89642418		MOVQ R12, 0x18(SP)			
  raw.go:138		0x5f38e5		4c8bac2480000000	MOVQ 0x80(SP), R13			
  raw.go:138		0x5f38ed		488bb424a0000000	MOVQ 0xa0(SP), SI			
  raw.go:138		0x5f38f5		4911f5			ADCQ SI, R13				
  raw.go:138		0x5f38f8		4c896c2410		MOVQ R13, 0x10(SP)			
  raw.go:139		0x5f38fd		488bb42490000000	MOVQ 0x90(SP), SI			
  raw.go:139		0x5f3905		4883d600		ADCQ $0x0, SI				
  raw.go:139		0x5f3909		48893424		MOVQ SI, 0(SP)				
  raw.go:142		0x5f390d		488b742448		MOVQ 0x48(SP), SI			
  raw.go:142		0x5f3912		4801de			ADDQ BX, SI				
  raw.go:145		0x5f3915		4911d1			ADCQ DX, R9				
  raw.go:148		0x5f3918		4d11fa			ADCQ R15, R10				
  raw.go:151		0x5f391b		4911fb			ADCQ DI, R11				
  raw.go:154		0x5f391e		4d11c4			ADCQ R8, R12				
  raw.go:157		0x5f3921		4911cd			ADCQ CX, R13				
  raw.go:160		0x5f3924		488b0c24		MOVQ 0(SP), CX				
  raw.go:160		0x5f3928		4c8b8424a8000000	MOVQ 0xa8(SP), R8			
  raw.go:160		0x5f3930		4c11c1			ADCQ R8, CX				
  raw.go:160		0x5f3933		48898c24b0050000	MOVQ CX, 0x5b0(SP)			
  raw.go:162		0x5f393b		4889f0			MOVQ SI, AX				
  raw.go:162		0x5f393e		49b80100000001000000	MOVQ $0x100000001, R8			
  raw.go:162		0x5f3948		49f7e0			MULQ R8					
  raw.go:162		0x5f394b		48898424a8050000	MOVQ AX, 0x5a8(SP)			
  raw.go:165		0x5f3953		48c7c2ffffffff		MOVQ $-0x1, DX				
  raw.go:165		0x5f395a		48f7e2			MULQ DX					
  raw.go:165		0x5f395d		4889942498050000	MOVQ DX, 0x598(SP)			
  raw.go:165		0x5f3965		48898424a0050000	MOVQ AX, 0x5a0(SP)			
  raw.go:174		0x5f396d		488b8424a8050000	MOVQ 0x5a8(SP), AX			
  raw.go:174		0x5f3975		49c7c0feffffff		MOVQ $-0x2, R8				
  raw.go:174		0x5f397c		49f7e0			MULQ R8					
  raw.go:174		0x5f397f		4889942480050000	MOVQ DX, 0x580(SP)			
  raw.go:174		0x5f3987		4889842488050000	MOVQ AX, 0x588(SP)			
  raw.go:177		0x5f398f		488b8424a8050000	MOVQ 0x5a8(SP), AX			
  raw.go:177		0x5f3997		49b800000000ffffffff	MOVQ $0xffffffff00000000, R8		
  raw.go:177		0x5f39a1		49f7e0			MULQ R8					
  raw.go:177		0x5f39a4		4889942470050000	MOVQ DX, 0x570(SP)			
  raw.go:177		0x5f39ac		4889842478050000	MOVQ AX, 0x578(SP)			
  raw.go:180		0x5f39b4		488b8424a8050000	MOVQ 0x5a8(SP), AX			
  raw.go:180		0x5f39bc		41b8ffffffff		MOVL $-0x1, R8				
  raw.go:180		0x5f39c2		49f7e0			MULQ R8					
  raw.go:183		0x5f39c5		4c8b842478050000	MOVQ 0x578(SP), R8			
  raw.go:183		0x5f39cd		4c01c2			ADDQ R8, DX				
  raw.go:186		0x5f39d0		4c8b842470050000	MOVQ 0x570(SP), R8			
  raw.go:186		0x5f39d8		488bbc2488050000	MOVQ 0x588(SP), DI			
  raw.go:186		0x5f39e0		4911f8			ADCQ DI, R8				
  raw.go:189		0x5f39e3		488bbc2480050000	MOVQ 0x580(SP), DI			
  raw.go:189		0x5f39eb		4c8bbc24a0050000	MOVQ 0x5a0(SP), R15			
  raw.go:189		0x5f39f3		4c11ff			ADCQ R15, DI				
  raw.go:192		0x5f39f6		488b9c2498050000	MOVQ 0x598(SP), BX			
  raw.go:192		0x5f39fe		4c11fb			ADCQ R15, BX				
  raw.go:195		0x5f3a01		488b8c2498050000	MOVQ 0x598(SP), CX			
  raw.go:195		0x5f3a09		4911cf			ADCQ CX, R15				
  raw.go:196		0x5f3a0c		4883d100		ADCQ $0x0, CX				
  raw.go:198		0x5f3a10		4801c6			ADDQ AX, SI				
  raw.go:201		0x5f3a13		4c11ca			ADCQ R9, DX				
  raw.go:201		0x5f3a16		4889942458050000	MOVQ DX, 0x558(SP)			
  raw.go:204		0x5f3a1e		4d11d0			ADCQ R10, R8				
  raw.go:204		0x5f3a21		4c89842450050000	MOVQ R8, 0x550(SP)			
  raw.go:207		0x5f3a29		4c11df			ADCQ R11, DI				
  raw.go:207		0x5f3a2c		4889bc2448050000	MOVQ DI, 0x548(SP)			
  raw.go:210		0x5f3a34		4c11e3			ADCQ R12, BX				
  raw.go:210		0x5f3a37		48899c2440050000	MOVQ BX, 0x540(SP)			
  raw.go:213		0x5f3a3f		4d11ef			ADCQ R13, R15				
  raw.go:213		0x5f3a42		4c89bc2430050000	MOVQ R15, 0x530(SP)			
  raw.go:216		0x5f3a4a		488bb424b0050000	MOVQ 0x5b0(SP), SI			
  raw.go:216		0x5f3a52		4811f1			ADCQ SI, CX				
  raw.go:216		0x5f3a55		48898c2428050000	MOVQ CX, 0x528(SP)			
  raw.go:216		0x5f3a5d		400f92c6		SETB SI					
  raw.go:216		0x5f3a61		400fb6f6		MOVZX SI, SI				
  raw.go:142		0x5f3a65		4c8b4c2448		MOVQ 0x48(SP), R9			
  raw.go:142		0x5f3a6a		4c8b9424d8000000	MOVQ 0xd8(SP), R10			
  raw.go:142		0x5f3a72		4d01d1			ADDQ R10, R9				
  raw.go:145		0x5f3a75		4c8b4c2430		MOVQ 0x30(SP), R9			
  raw.go:145		0x5f3a7a		4c8b9424d0000000	MOVQ 0xd0(SP), R10			
  raw.go:145		0x5f3a82		4d11d1			ADCQ R10, R9				
  raw.go:148		0x5f3a85		4c8b4c2428		MOVQ 0x28(SP), R9			
  raw.go:148		0x5f3a8a		4c8b9424c8000000	MOVQ 0xc8(SP), R10			
  raw.go:148		0x5f3a92		4d11d1			ADCQ R10, R9				
  raw.go:151		0x5f3a95		4c8b4c2420		MOVQ 0x20(SP), R9			
  raw.go:151		0x5f3a9a		4c8b9424c0000000	MOVQ 0xc0(SP), R10			
  raw.go:151		0x5f3aa2		4d11d1			ADCQ R10, R9				
  raw.go:154		0x5f3aa5		4c8b4c2418		MOVQ 0x18(SP), R9			
  raw.go:154		0x5f3aaa		4c8b9424b8000000	MOVQ 0xb8(SP), R10			
  raw.go:154		0x5f3ab2		4d11d1			ADCQ R10, R9				
  raw.go:157		0x5f3ab5		4c8b4c2410		MOVQ 0x10(SP), R9			
  raw.go:157		0x5f3aba		4c8b9424b0000000	MOVQ 0xb0(SP), R10			
  raw.go:157		0x5f3ac2		4d11d1			ADCQ R10, R9				
  raw.go:160		0x5f3ac5		4c8b0c24		MOVQ 0(SP), R9				
  raw.go:160		0x5f3ac9		4c8b9424a8000000	MOVQ 0xa8(SP), R10			
  raw.go:160		0x5f3ad1		4d11d1			ADCQ R10, R9				
  raw.go:217		0x5f3ad4		4883d600		ADCQ $0x0, SI				
  raw.go:217		0x5f3ad8		4889b42420050000	MOVQ SI, 0x520(SP)			
  raw.go:238		0x5f3ae0		4c8b8c24b8040000	MOVQ 0x4b8(SP), R9			
  raw.go:238		0x5f3ae8		4c8b9424d0040000	MOVQ 0x4d0(SP), R10			
  raw.go:238		0x5f3af0		4d01d1			ADDQ R10, R9				
  raw.go:238		0x5f3af3		4c898c24b0040000	MOVQ R9, 0x4b0(SP)			
  raw.go:241		0x5f3afb		4c8b9424c8040000	MOVQ 0x4c8(SP), R10			
  raw.go:241		0x5f3b03		4c8b9c24e0040000	MOVQ 0x4e0(SP), R11			
  raw.go:241		0x5f3b0b		4d11da			ADCQ R11, R10				
  raw.go:241		0x5f3b0e		4c899424a0040000	MOVQ R10, 0x4a0(SP)			
  raw.go:244		0x5f3b16		4c8b9c24d8040000	MOVQ 0x4d8(SP), R11			
  raw.go:244		0x5f3b1e		4c8ba424f0040000	MOVQ 0x4f0(SP), R12			
  raw.go:244		0x5f3b26		4d11e3			ADCQ R12, R11				
  raw.go:244		0x5f3b29		4c899c2498040000	MOVQ R11, 0x498(SP)			
  raw.go:247		0x5f3b31		4c8ba424e8040000	MOVQ 0x4e8(SP), R12			
  raw.go:247		0x5f3b39		4c8bac2408050000	MOVQ 0x508(SP), R13			
  raw.go:247		0x5f3b41		4d11ec			ADCQ R13, R12				
  raw.go:247		0x5f3b44		4c89a42490040000	MOVQ R12, 0x490(SP)			
  raw.go:250		0x5f3b4c		4c8bac2400050000	MOVQ 0x500(SP), R13			
  raw.go:217		0x5f3b54		4889f0			MOVQ SI, AX				
  raw.go:250		0x5f3b57		488bb42418050000	MOVQ 0x518(SP), SI			
  raw.go:250		0x5f3b5f		4911f5			ADCQ SI, R13				
  raw.go:250		0x5f3b62		4c89ac2488040000	MOVQ R13, 0x488(SP)			
  raw.go:251		0x5f3b6a		488bb42410050000	MOVQ 0x510(SP), SI			
  raw.go:251		0x5f3b72		4883d600		ADCQ $0x0, SI				
  raw.go:251		0x5f3b76		4889b42480040000	MOVQ SI, 0x480(SP)			
  raw.go:254		0x5f3b7e		488bb424c0040000	MOVQ 0x4c0(SP), SI			
  raw.go:254		0x5f3b86		4801d6			ADDQ DX, SI				
  raw.go:257		0x5f3b89		4d11c1			ADCQ R8, R9				
  raw.go:260		0x5f3b8c		4911fa			ADCQ DI, R10				
  raw.go:263		0x5f3b8f		4911db			ADCQ BX, R11				
  raw.go:266		0x5f3b92		4d11fc			ADCQ R15, R12				
  raw.go:269		0x5f3b95		4911cd			ADCQ CX, R13				
  raw.go:272		0x5f3b98		488b8c2480040000	MOVQ 0x480(SP), CX			
  raw.go:272		0x5f3ba0		4811c1			ADCQ AX, CX				
  raw.go:272		0x5f3ba3		48898c2468040000	MOVQ CX, 0x468(SP)			
  raw.go:274		0x5f3bab		4889f0			MOVQ SI, AX				
  raw.go:274		0x5f3bae		49bf0100000001000000	MOVQ $0x100000001, R15			
  raw.go:274		0x5f3bb8		49f7e7			MULQ R15				
  raw.go:274		0x5f3bbb		4889842460040000	MOVQ AX, 0x460(SP)			
  raw.go:277		0x5f3bc3		48c7c2ffffffff		MOVQ $-0x1, DX				
  raw.go:277		0x5f3bca		48f7e2			MULQ DX					
  raw.go:277		0x5f3bcd		4889942450040000	MOVQ DX, 0x450(SP)			
  raw.go:277		0x5f3bd5		4889842458040000	MOVQ AX, 0x458(SP)			
  raw.go:286		0x5f3bdd		488b842460040000	MOVQ 0x460(SP), AX			
  raw.go:286		0x5f3be5		49c7c7feffffff		MOVQ $-0x2, R15				
  raw.go:286		0x5f3bec		49f7e7			MULQ R15				
  raw.go:286		0x5f3bef		4889942440040000	MOVQ DX, 0x440(SP)			
  raw.go:286		0x5f3bf7		4889842448040000	MOVQ AX, 0x448(SP)			
  raw.go:289		0x5f3bff		488b842460040000	MOVQ 0x460(SP), AX			
  raw.go:289		0x5f3c07		49bf00000000ffffffff	MOVQ $0xffffffff00000000, R15		
  raw.go:289		0x5f3c11		49f7e7			MULQ R15				
  raw.go:289		0x5f3c14		4889942430040000	MOVQ DX, 0x430(SP)			
  raw.go:289		0x5f3c1c		4889842438040000	MOVQ AX, 0x438(SP)			
  raw.go:292		0x5f3c24		488b842460040000	MOVQ 0x460(SP), AX			
  raw.go:292		0x5f3c2c		41bfffffffff		MOVL $-0x1, R15				
  raw.go:292		0x5f3c32		49f7e7			MULQ R15				
  raw.go:295		0x5f3c35		4c8bbc2438040000	MOVQ 0x438(SP), R15			
  raw.go:295		0x5f3c3d		4c01fa			ADDQ R15, DX				
  raw.go:298		0x5f3c40		4c8bbc2430040000	MOVQ 0x430(SP), R15			
  raw.go:298		0x5f3c48		488b9c2448040000	MOVQ 0x448(SP), BX			
  raw.go:298		0x5f3c50		4911df			ADCQ BX, R15				
  raw.go:301		0x5f3c53		488b9c2440040000	MOVQ 0x440(SP), BX			
  raw.go:301		0x5f3c5b		488bbc2458040000	MOVQ 0x458(SP), DI			
  raw.go:301		0x5f3c63		4811fb			ADCQ DI, BX				
  raw.go:304		0x5f3c66		4c8b842450040000	MOVQ 0x450(SP), R8			
  raw.go:304		0x5f3c6e		4911f8			ADCQ DI, R8				
  raw.go:307		0x5f3c71		488b8c2450040000	MOVQ 0x450(SP), CX			
  raw.go:307		0x5f3c79		4811cf			ADCQ CX, DI				
  raw.go:308		0x5f3c7c		4883d100		ADCQ $0x0, CX				
  raw.go:310		0x5f3c80		4801c6			ADDQ AX, SI				
  raw.go:313		0x5f3c83		4c11ca			ADCQ R9, DX				
  raw.go:313		0x5f3c86		4889942428040000	MOVQ DX, 0x428(SP)			
  raw.go:316		0x5f3c8e		4d11d7			ADCQ R10, R15				
  raw.go:316		0x5f3c91		4c89bc2420040000	MOVQ R15, 0x420(SP)			
  raw.go:319		0x5f3c99		4c11db			ADCQ R11, BX				
  raw.go:319		0x5f3c9c		48899c2418040000	MOVQ BX, 0x418(SP)			
  raw.go:322		0x5f3ca4		4d11e0			ADCQ R12, R8				
  raw.go:322		0x5f3ca7		4c89842410040000	MOVQ R8, 0x410(SP)			
  raw.go:325		0x5f3caf		4c11ef			ADCQ R13, DI				
  raw.go:325		0x5f3cb2		4889bc2408040000	MOVQ DI, 0x408(SP)			
  raw.go:328		0x5f3cba		488bb42468040000	MOVQ 0x468(SP), SI			
  raw.go:328		0x5f3cc2		4811f1			ADCQ SI, CX				
  raw.go:328		0x5f3cc5		48898c2400040000	MOVQ CX, 0x400(SP)			
  raw.go:328		0x5f3ccd		400f92c6		SETB SI					
  raw.go:328		0x5f3cd1		400fb6f6		MOVZX SI, SI				
  raw.go:254		0x5f3cd5		4c8b8c24c0040000	MOVQ 0x4c0(SP), R9			
  raw.go:254		0x5f3cdd		4c8b942458050000	MOVQ 0x558(SP), R10			
  raw.go:254		0x5f3ce5		4d01d1			ADDQ R10, R9				
  raw.go:257		0x5f3ce8		4c8b8c24b0040000	MOVQ 0x4b0(SP), R9			
  raw.go:257		0x5f3cf0		4c8b942450050000	MOVQ 0x550(SP), R10			
  raw.go:257		0x5f3cf8		4d11d1			ADCQ R10, R9				
  raw.go:260		0x5f3cfb		4c8b8c24a0040000	MOVQ 0x4a0(SP), R9			
  raw.go:260		0x5f3d03		4c8b942448050000	MOVQ 0x548(SP), R10			
  raw.go:260		0x5f3d0b		4d11d1			ADCQ R10, R9				
  raw.go:263		0x5f3d0e		4c8b8c2498040000	MOVQ 0x498(SP), R9			
  raw.go:263		0x5f3d16		4c8b942440050000	MOVQ 0x540(SP), R10			
  raw.go:263		0x5f3d1e		4d11d1			ADCQ R10, R9				
  raw.go:266		0x5f3d21		4c8b8c2490040000	MOVQ 0x490(SP), R9			
  raw.go:266		0x5f3d29		4c8b942430050000	MOVQ 0x530(SP), R10			
  raw.go:266		0x5f3d31		4d11d1			ADCQ R10, R9				
  raw.go:269		0x5f3d34		4c8b8c2488040000	MOVQ 0x488(SP), R9			
  raw.go:269		0x5f3d3c		4c8b942428050000	MOVQ 0x528(SP), R10			
  raw.go:269		0x5f3d44		4d11d1			ADCQ R10, R9				
  raw.go:272		0x5f3d47		4c8b8c2480040000	MOVQ 0x480(SP), R9			
  raw.go:272		0x5f3d4f		4c8b942420050000	MOVQ 0x520(SP), R10			
  raw.go:272		0x5f3d57		4d11d1			ADCQ R10, R9				
  raw.go:329		0x5f3d5a		4883d600		ADCQ $0x0, SI				
  raw.go:329		0x5f3d5e		4889b424f8030000	MOVQ SI, 0x3f8(SP)			
  raw.go:350		0x5f3d66		4c8b8c2498030000	MOVQ 0x398(SP), R9			
  raw.go:350		0x5f3d6e		4c8b9424b0030000	MOVQ 0x3b0(SP), R10			
  raw.go:350		0x5f3d76		4d01d1			ADDQ R10, R9				
  raw.go:350		0x5f3d79		4c898c2490030000	MOVQ R9, 0x390(SP)			
  raw.go:353		0x5f3d81		4c8b9424a8030000	MOVQ 0x3a8(SP), R10			
  raw.go:353		0x5f3d89		4c8b9c24c0030000	MOVQ 0x3c0(SP), R11			
  raw.go:353		0x5f3d91		4d11da			ADCQ R11, R10				
  raw.go:353		0x5f3d94		4c89942488030000	MOVQ R10, 0x388(SP)			
  raw.go:356		0x5f3d9c		4c8b9c24b8030000	MOVQ 0x3b8(SP), R11			
  raw.go:356		0x5f3da4		4c8ba424d0030000	MOVQ 0x3d0(SP), R12			
  raw.go:356		0x5f3dac		4d11e3			ADCQ R12, R11				
  raw.go:356		0x5f3daf		4c899c2480030000	MOVQ R11, 0x380(SP)			
  raw.go:359		0x5f3db7		4c8ba424c8030000	MOVQ 0x3c8(SP), R12			
  raw.go:359		0x5f3dbf		4c8bac24e0030000	MOVQ 0x3e0(SP), R13			
  raw.go:359		0x5f3dc7		4d11ec			ADCQ R13, R12				
  raw.go:359		0x5f3dca		4c89a42478030000	MOVQ R12, 0x378(SP)			
  raw.go:362		0x5f3dd2		4c8bac24d8030000	MOVQ 0x3d8(SP), R13			
  raw.go:329		0x5f3dda		4889f0			MOVQ SI, AX				
  raw.go:362		0x5f3ddd		488bb424f0030000	MOVQ 0x3f0(SP), SI			
  raw.go:362		0x5f3de5		4911f5			ADCQ SI, R13				
  raw.go:362		0x5f3de8		4c89ac2470030000	MOVQ R13, 0x370(SP)			
  raw.go:363		0x5f3df0		488bb424e8030000	MOVQ 0x3e8(SP), SI			
  raw.go:363		0x5f3df8		4883d600		ADCQ $0x0, SI				
  raw.go:363		0x5f3dfc		4889b42468030000	MOVQ SI, 0x368(SP)			
  raw.go:366		0x5f3e04		488bb424a0030000	MOVQ 0x3a0(SP), SI			
  raw.go:366		0x5f3e0c		4801d6			ADDQ DX, SI				
  raw.go:369		0x5f3e0f		4d11f9			ADCQ R15, R9				
  raw.go:372		0x5f3e12		4911da			ADCQ BX, R10				
  raw.go:375		0x5f3e15		4d11c3			ADCQ R8, R11				
  raw.go:378		0x5f3e18		4911fc			ADCQ DI, R12				
  raw.go:381		0x5f3e1b		4911cd			ADCQ CX, R13				
  raw.go:384		0x5f3e1e		488b8c2468030000	MOVQ 0x368(SP), CX			
  raw.go:384		0x5f3e26		4811c1			ADCQ AX, CX				
  raw.go:384		0x5f3e29		48898c2460030000	MOVQ CX, 0x360(SP)			
  raw.go:386		0x5f3e31		4889f0			MOVQ SI, AX				
  raw.go:386		0x5f3e34		48bf0100000001000000	MOVQ $0x100000001, DI			
  raw.go:386		0x5f3e3e		48f7e7			MULQ DI					
  raw.go:386		0x5f3e41		4889842458030000	MOVQ AX, 0x358(SP)			
  raw.go:392		0x5f3e49		48c7c2ffffffff		MOVQ $-0x1, DX				
  raw.go:392		0x5f3e50		48f7e2			MULQ DX					
  raw.go:389		0x5f3e53		4889842450030000	MOVQ AX, 0x350(SP)			
  raw.go:389		0x5f3e5b		4889942448030000	MOVQ DX, 0x348(SP)			
  raw.go:398		0x5f3e63		488b842458030000	MOVQ 0x358(SP), AX			
  raw.go:398		0x5f3e6b		48c7c7feffffff		MOVQ $-0x2, DI				
  raw.go:398		0x5f3e72		48f7e7			MULQ DI					
  raw.go:398		0x5f3e75		4889942438030000	MOVQ DX, 0x338(SP)			
  raw.go:398		0x5f3e7d		4889842440030000	MOVQ AX, 0x340(SP)			
  raw.go:401		0x5f3e85		488b842458030000	MOVQ 0x358(SP), AX			
  raw.go:401		0x5f3e8d		48bf00000000ffffffff	MOVQ $0xffffffff00000000, DI		
  raw.go:401		0x5f3e97		48f7e7			MULQ DI					
  raw.go:401		0x5f3e9a		4889942428030000	MOVQ DX, 0x328(SP)			
  raw.go:401		0x5f3ea2		4889842430030000	MOVQ AX, 0x330(SP)			
  raw.go:404		0x5f3eaa		488b842458030000	MOVQ 0x358(SP), AX			
  raw.go:404		0x5f3eb2		bfffffffff		MOVL $-0x1, DI				
  raw.go:404		0x5f3eb7		48f7e7			MULQ DI					
  raw.go:407		0x5f3eba		488bbc2430030000	MOVQ 0x330(SP), DI			
  raw.go:407		0x5f3ec2		4801fa			ADDQ DI, DX				
  raw.go:410		0x5f3ec5		488bbc2428030000	MOVQ 0x328(SP), DI			
  raw.go:410		0x5f3ecd		4c8b842440030000	MOVQ 0x340(SP), R8			
  raw.go:410		0x5f3ed5		4c11c7			ADCQ R8, DI				
  raw.go:413		0x5f3ed8		4c8b842438030000	MOVQ 0x338(SP), R8			
  raw.go:413		0x5f3ee0		488b9c2450030000	MOVQ 0x350(SP), BX			
  raw.go:413		0x5f3ee8		4911d8			ADCQ BX, R8				
  raw.go:416		0x5f3eeb		4c8bbc2448030000	MOVQ 0x348(SP), R15			
  raw.go:416		0x5f3ef3		4911df			ADCQ BX, R15				
  raw.go:419		0x5f3ef6		488b8c2448030000	MOVQ 0x348(SP), CX			
  raw.go:419		0x5f3efe		4811cb			ADCQ CX, BX				
  raw.go:420		0x5f3f01		4883d100		ADCQ $0x0, CX				
  raw.go:422		0x5f3f05		4801c6			ADDQ AX, SI				
  raw.go:425		0x5f3f08		4c11ca			ADCQ R9, DX				
  raw.go:425		0x5f3f0b		4889942420030000	MOVQ DX, 0x320(SP)			
  raw.go:428		0x5f3f13		4c11d7			ADCQ R10, DI				
  raw.go:428		0x5f3f16		4889bc2418030000	MOVQ DI, 0x318(SP)			
  raw.go:431		0x5f3f1e		4d11d8			ADCQ R11, R8				
  raw.go:431		0x5f3f21		4c89842408030000	MOVQ R8, 0x308(SP)			
  raw.go:434		0x5f3f29		4d11e7			ADCQ R12, R15				
  raw.go:434		0x5f3f2c		4c89bc2400030000	MOVQ R15, 0x300(SP)			
  raw.go:437		0x5f3f34		4c11eb			ADCQ R13, BX				
  raw.go:437		0x5f3f37		48899c24f8020000	MOVQ BX, 0x2f8(SP)			
  raw.go:440		0x5f3f3f		488bb42460030000	MOVQ 0x360(SP), SI			
  raw.go:440		0x5f3f47		4811f1			ADCQ SI, CX				
  raw.go:440		0x5f3f4a		48898c24f0020000	MOVQ CX, 0x2f0(SP)			
  raw.go:440		0x5f3f52		400f92c6		SETB SI					
  raw.go:440		0x5f3f56		400fb6f6		MOVZX SI, SI				
  raw.go:366		0x5f3f5a		4c8b8c24a0030000	MOVQ 0x3a0(SP), R9			
  raw.go:366		0x5f3f62		4c8b942428040000	MOVQ 0x428(SP), R10			
  raw.go:366		0x5f3f6a		4d01d1			ADDQ R10, R9				
  raw.go:369		0x5f3f6d		4c8b8c2490030000	MOVQ 0x390(SP), R9			
  raw.go:369		0x5f3f75		4c8b942420040000	MOVQ 0x420(SP), R10			
  raw.go:369		0x5f3f7d		4d11d1			ADCQ R10, R9				
  raw.go:372		0x5f3f80		4c8b8c2488030000	MOVQ 0x388(SP), R9			
  raw.go:372		0x5f3f88		4c8b942418040000	MOVQ 0x418(SP), R10			
  raw.go:372		0x5f3f90		4d11d1			ADCQ R10, R9				
  raw.go:375		0x5f3f93		4c8b8c2480030000	MOVQ 0x380(SP), R9			
  raw.go:375		0x5f3f9b		4c8b942410040000	MOVQ 0x410(SP), R10			
  raw.go:375		0x5f3fa3		4d11d1			ADCQ R10, R9				
  raw.go:378		0x5f3fa6		4c8b8c2478030000	MOVQ 0x378(SP), R9			
  raw.go:378		0x5f3fae		4c8b942408040000	MOVQ 0x408(SP), R10			
  raw.go:378		0x5f3fb6		4d11d1			ADCQ R10, R9				
  raw.go:381		0x5f3fb9		4c8b8c2470030000	MOVQ 0x370(SP), R9			
  raw.go:381		0x5f3fc1		4c8b942400040000	MOVQ 0x400(SP), R10			
  raw.go:381		0x5f3fc9		4d11d1			ADCQ R10, R9				
  raw.go:384		0x5f3fcc		4c8b8c2468030000	MOVQ 0x368(SP), R9			
  raw.go:384		0x5f3fd4		4c8b9424f8030000	MOVQ 0x3f8(SP), R10			
  raw.go:384		0x5f3fdc		4d11d1			ADCQ R10, R9				
  raw.go:441		0x5f3fdf		4883d600		ADCQ $0x0, SI				
  raw.go:441		0x5f3fe3		4889b424e8020000	MOVQ SI, 0x2e8(SP)			
  raw.go:462		0x5f3feb		4c8b8c2480020000	MOVQ 0x280(SP), R9			
  raw.go:462		0x5f3ff3		4c8b942498020000	MOVQ 0x298(SP), R10			
  raw.go:462		0x5f3ffb		4d01d1			ADDQ R10, R9				
  raw.go:462		0x5f3ffe		4c898c2478020000	MOVQ R9, 0x278(SP)			
  raw.go:465		0x5f4006		4c8b942490020000	MOVQ 0x290(SP), R10			
  raw.go:465		0x5f400e		4c8b9c24a8020000	MOVQ 0x2a8(SP), R11			
  raw.go:465		0x5f4016		4d11da			ADCQ R11, R10				
  raw.go:465		0x5f4019		4c89942470020000	MOVQ R10, 0x270(SP)			
  raw.go:468		0x5f4021		4c8b9c24a0020000	MOVQ 0x2a0(SP), R11			
  raw.go:468		0x5f4029		4c8ba424b8020000	MOVQ 0x2b8(SP), R12			
  raw.go:468		0x5f4031		4d11e3			ADCQ R12, R11				
  raw.go:468		0x5f4034		4c899c2468020000	MOVQ R11, 0x268(SP)			
  raw.go:471		0x5f403c		4c8ba424b0020000	MOVQ 0x2b0(SP), R12			
  raw.go:471		0x5f4044		4c8bac24c8020000	MOVQ 0x2c8(SP), R13			
  raw.go:471		0x5f404c		4d11ec			ADCQ R13, R12				
  raw.go:471		0x5f404f		4c89a42460020000	MOVQ R12, 0x260(SP)			
  raw.go:474		0x5f4057		4c8bac24c0020000	MOVQ 0x2c0(SP), R13			
  raw.go:441		0x5f405f		4889f0			MOVQ SI, AX				
  raw.go:474		0x5f4062		488bb424d8020000	MOVQ 0x2d8(SP), SI			
  raw.go:474		0x5f406a		4911f5			ADCQ SI, R13				
  raw.go:474		0x5f406d		4c89ac2450020000	MOVQ R13, 0x250(SP)			
  raw.go:475		0x5f4075		488bb424d0020000	MOVQ 0x2d0(SP), SI			
  raw.go:475		0x5f407d		4883d600		ADCQ $0x0, SI				
  raw.go:475		0x5f4081		4889b42448020000	MOVQ SI, 0x248(SP)			
  raw.go:478		0x5f4089		488bb42488020000	MOVQ 0x288(SP), SI			
  raw.go:478		0x5f4091		4801d6			ADDQ DX, SI				
  raw.go:481		0x5f4094		4911f9			ADCQ DI, R9				
  raw.go:484		0x5f4097		4d11c2			ADCQ R8, R10				
  raw.go:487		0x5f409a		4d11fb			ADCQ R15, R11				
  raw.go:490		0x5f409d		4911dc			ADCQ BX, R12				
  raw.go:493		0x5f40a0		4911cd			ADCQ CX, R13				
  raw.go:496		0x5f40a3		488b8c2448020000	MOVQ 0x248(SP), CX			
  raw.go:496		0x5f40ab		4811c1			ADCQ AX, CX				
  raw.go:496		0x5f40ae		48898c2438020000	MOVQ CX, 0x238(SP)			
  raw.go:498		0x5f40b6		4889f0			MOVQ SI, AX				
  raw.go:498		0x5f40b9		48bb0100000001000000	MOVQ $0x100000001, BX			
  raw.go:498		0x5f40c3		48f7e3			MULQ BX					
  raw.go:498		0x5f40c6		4889842430020000	MOVQ AX, 0x230(SP)			
  raw.go:507		0x5f40ce		48c7c2ffffffff		MOVQ $-0x1, DX				
  raw.go:507		0x5f40d5		48f7e2			MULQ DX					
  raw.go:501		0x5f40d8		4889842428020000	MOVQ AX, 0x228(SP)			
  raw.go:501		0x5f40e0		4889942420020000	MOVQ DX, 0x220(SP)			
  raw.go:510		0x5f40e8		488b842430020000	MOVQ 0x230(SP), AX			
  raw.go:510		0x5f40f0		48c7c3feffffff		MOVQ $-0x2, BX				
  raw.go:510		0x5f40f7		48f7e3			MULQ BX					
  raw.go:510		0x5f40fa		4889942410020000	MOVQ DX, 0x210(SP)			
  raw.go:510		0x5f4102		4889842418020000	MOVQ AX, 0x218(SP)			
  raw.go:513		0x5f410a		488b842430020000	MOVQ 0x230(SP), AX			
  raw.go:513		0x5f4112		48bb00000000ffffffff	MOVQ $0xffffffff00000000, BX		
  raw.go:513		0x5f411c		48f7e3			MULQ BX					
  raw.go:513		0x5f411f		4889942400020000	MOVQ DX, 0x200(SP)			
  raw.go:513		0x5f4127		4889842408020000	MOVQ AX, 0x208(SP)			
  raw.go:516		0x5f412f		488b842430020000	MOVQ 0x230(SP), AX			
  raw.go:516		0x5f4137		bbffffffff		MOVL $-0x1, BX				
  raw.go:516		0x5f413c		48f7e3			MULQ BX					
  raw.go:519		0x5f413f		488b9c2408020000	MOVQ 0x208(SP), BX			
  raw.go:519		0x5f4147		4801da			ADDQ BX, DX				
  raw.go:522		0x5f414a		488b9c2400020000	MOVQ 0x200(SP), BX			
  raw.go:522		0x5f4152		4c8bbc2418020000	MOVQ 0x218(SP), R15			
  raw.go:522		0x5f415a		4c11fb			ADCQ R15, BX				
  raw.go:525		0x5f415d		4c8bbc2410020000	MOVQ 0x210(SP), R15			
  raw.go:525		0x5f4165		4c8b842428020000	MOVQ 0x228(SP), R8			
  raw.go:525		0x5f416d		4d11c7			ADCQ R8, R15				
  raw.go:528		0x5f4170		488bbc2420020000	MOVQ 0x220(SP), DI			
  raw.go:528		0x5f4178		4c11c7			ADCQ R8, DI				
  raw.go:531		0x5f417b		488b8c2420020000	MOVQ 0x220(SP), CX			
  raw.go:531		0x5f4183		4911c8			ADCQ CX, R8				
  raw.go:532		0x5f4186		4883d100		ADCQ $0x0, CX				
  raw.go:534		0x5f418a		4801c6			ADDQ AX, SI				
  raw.go:537		0x5f418d		4c11ca			ADCQ R9, DX				
  raw.go:537		0x5f4190		48899424f8010000	MOVQ DX, 0x1f8(SP)			
  raw.go:540		0x5f4198		4c11d3			ADCQ R10, BX				
  raw.go:540		0x5f419b		48899c24f0010000	MOVQ BX, 0x1f0(SP)			
  raw.go:543		0x5f41a3		4d11df			ADCQ R11, R15				
  raw.go:543		0x5f41a6		4c89bc24e8010000	MOVQ R15, 0x1e8(SP)			
  raw.go:546		0x5f41ae		4c11e7			ADCQ R12, DI				
  raw.go:546		0x5f41b1		4889bc24e0010000	MOVQ DI, 0x1e0(SP)			
  raw.go:549		0x5f41b9		4d11e8			ADCQ R13, R8				
  raw.go:549		0x5f41bc		4c898424d8010000	MOVQ R8, 0x1d8(SP)			
  raw.go:552		0x5f41c4		488bb42438020000	MOVQ 0x238(SP), SI			
  raw.go:552		0x5f41cc		4811f1			ADCQ SI, CX				
  raw.go:552		0x5f41cf		48898c24d0010000	MOVQ CX, 0x1d0(SP)			
  raw.go:552		0x5f41d7		400f92c6		SETB SI					
  raw.go:552		0x5f41db		400fb6f6		MOVZX SI, SI				
  raw.go:478		0x5f41df		4c8b8c2488020000	MOVQ 0x288(SP), R9			
  raw.go:478		0x5f41e7		4c8b942420030000	MOVQ 0x320(SP), R10			
  raw.go:478		0x5f41ef		4d01d1			ADDQ R10, R9				
  raw.go:481		0x5f41f2		4c8b8c2478020000	MOVQ 0x278(SP), R9			
  raw.go:481		0x5f41fa		4c8b942418030000	MOVQ 0x318(SP), R10			
  raw.go:481		0x5f4202		4d11d1			ADCQ R10, R9				
  raw.go:484		0x5f4205		4c8b8c2470020000	MOVQ 0x270(SP), R9			
  raw.go:484		0x5f420d		4c8b942408030000	MOVQ 0x308(SP), R10			
  raw.go:484		0x5f4215		4d11d1			ADCQ R10, R9				
  raw.go:487		0x5f4218		4c8b8c2468020000	MOVQ 0x268(SP), R9			
  raw.go:487		0x5f4220		4c8b942400030000	MOVQ 0x300(SP), R10			
  raw.go:487		0x5f4228		4d11d1			ADCQ R10, R9				
  raw.go:490		0x5f422b		4c8b8c2460020000	MOVQ 0x260(SP), R9			
  raw.go:490		0x5f4233		4c8b9424f8020000	MOVQ 0x2f8(SP), R10			
  raw.go:490		0x5f423b		4d11d1			ADCQ R10, R9				
  raw.go:493		0x5f423e		4c8b8c2450020000	MOVQ 0x250(SP), R9			
  raw.go:493		0x5f4246		4c8b9424f0020000	MOVQ 0x2f0(SP), R10			
  raw.go:493		0x5f424e		4d11d1			ADCQ R10, R9				
  raw.go:496		0x5f4251		4c8b8c2448020000	MOVQ 0x248(SP), R9			
  raw.go:496		0x5f4259		4c8b9424e8020000	MOVQ 0x2e8(SP), R10			
  raw.go:496		0x5f4261		4d11d1			ADCQ R10, R9				
  raw.go:553		0x5f4264		4883d600		ADCQ $0x0, SI				
  raw.go:553		0x5f4268		4889b424c8010000	MOVQ SI, 0x1c8(SP)			
  raw.go:574		0x5f4270		4c8b8c2460010000	MOVQ 0x160(SP), R9			
  raw.go:574		0x5f4278		4c8b942478010000	MOVQ 0x178(SP), R10			
  raw.go:574		0x5f4280		4d01d1			ADDQ R10, R9				
  raw.go:574		0x5f4283		4c898c2458010000	MOVQ R9, 0x158(SP)			
  raw.go:577		0x5f428b		4c8b942470010000	MOVQ 0x170(SP), R10			
  raw.go:577		0x5f4293		4c8b9c2488010000	MOVQ 0x188(SP), R11			
  raw.go:577		0x5f429b		4d11da			ADCQ R11, R10				
  raw.go:577		0x5f429e		4c89942448010000	MOVQ R10, 0x148(SP)			
  raw.go:580		0x5f42a6		4c8b9c2480010000	MOVQ 0x180(SP), R11			
  raw.go:580		0x5f42ae		4c8ba42498010000	MOVQ 0x198(SP), R12			
  raw.go:580		0x5f42b6		4d11e3			ADCQ R12, R11				
  raw.go:580		0x5f42b9		4c899c2440010000	MOVQ R11, 0x140(SP)			
  raw.go:583		0x5f42c1		4c8ba42490010000	MOVQ 0x190(SP), R12			
  raw.go:583		0x5f42c9		4c8bac24b0010000	MOVQ 0x1b0(SP), R13			
  raw.go:583		0x5f42d1		4d11ec			ADCQ R13, R12				
  raw.go:583		0x5f42d4		4c89a42438010000	MOVQ R12, 0x138(SP)			
  raw.go:586		0x5f42dc		4c8bac24a0010000	MOVQ 0x1a0(SP), R13			
  raw.go:553		0x5f42e4		4889f0			MOVQ SI, AX				
  raw.go:586		0x5f42e7		488bb424c0010000	MOVQ 0x1c0(SP), SI			
  raw.go:586		0x5f42ef		4911f5			ADCQ SI, R13				
  raw.go:586		0x5f42f2		4c89ac2430010000	MOVQ R13, 0x130(SP)			
  raw.go:587		0x5f42fa		488bb424b8010000	MOVQ 0x1b8(SP), SI			
  raw.go:587		0x5f4302		4883d600		ADCQ $0x0, SI				
  raw.go:587		0x5f4306		4889b42428010000	MOVQ SI, 0x128(SP)			
  raw.go:590		0x5f430e		488bb42468010000	MOVQ 0x168(SP), SI			
  raw.go:590		0x5f4316		4801d6			ADDQ DX, SI				
  raw.go:593		0x5f4319		4911d9			ADCQ BX, R9				
  raw.go:596		0x5f431c		4d11fa			ADCQ R15, R10				
  raw.go:599		0x5f431f		4911fb			ADCQ DI, R11				
  raw.go:602		0x5f4322		4d11c4			ADCQ R8, R12				
  raw.go:605		0x5f4325		4911cd			ADCQ CX, R13				
  raw.go:608		0x5f4328		488b8c2428010000	MOVQ 0x128(SP), CX			
  raw.go:608		0x5f4330		4811c1			ADCQ AX, CX				
  raw.go:608		0x5f4333		48898c2410010000	MOVQ CX, 0x110(SP)			
  raw.go:610		0x5f433b		4889f0			MOVQ SI, AX				
  raw.go:610		0x5f433e		49b80100000001000000	MOVQ $0x100000001, R8			
  raw.go:610		0x5f4348		49f7e0			MULQ R8					
  raw.go:613		0x5f434b		48c7c2ffffffff		MOVQ $-0x1, DX				
  raw.go:610		0x5f4352		4989c0			MOVQ AX, R8				
  raw.go:613		0x5f4355		48f7e2			MULQ DX					
  raw.go:613		0x5f4358		4889942400010000	MOVQ DX, 0x100(SP)			
  raw.go:613		0x5f4360		4889842408010000	MOVQ AX, 0x108(SP)			
  raw.go:622		0x5f4368		4c89c0			MOVQ R8, AX				
  raw.go:622		0x5f436b		48c7c7feffffff		MOVQ $-0x2, DI				
  raw.go:622		0x5f4372		48f7e7			MULQ DI					
  raw.go:622		0x5f4375		48899424f0000000	MOVQ DX, 0xf0(SP)			
  raw.go:622		0x5f437d		4889c7			MOVQ AX, DI				
  raw.go:625		0x5f4380		4c89c0			MOVQ R8, AX				
  raw.go:625		0x5f4383		49bf00000000ffffffff	MOVQ $0xffffffff00000000, R15		
  raw.go:625		0x5f438d		49f7e7			MULQ R15				
  raw.go:625		0x5f4390		48898424e8000000	MOVQ AX, 0xe8(SP)			
  raw.go:628		0x5f4398		4c89c0			MOVQ R8, AX				
  raw.go:628		0x5f439b		41bfffffffff		MOVL $-0x1, R15				
  raw.go:625		0x5f43a1		4989d0			MOVQ DX, R8				
  raw.go:628		0x5f43a4		49f7e7			MULQ R15				
  raw.go:631		0x5f43a7		4c8bbc24e8000000	MOVQ 0xe8(SP), R15			
  raw.go:631		0x5f43af		4c01fa			ADDQ R15, DX				
  raw.go:634		0x5f43b2		4911f8			ADCQ DI, R8				
  raw.go:637		0x5f43b5		488bbc24f0000000	MOVQ 0xf0(SP), DI			
  raw.go:637		0x5f43bd		4c8bbc2408010000	MOVQ 0x108(SP), R15			
  raw.go:637		0x5f43c5		4c11ff			ADCQ R15, DI				
  raw.go:640		0x5f43c8		488b9c2400010000	MOVQ 0x100(SP), BX			
  raw.go:640		0x5f43d0		4c11fb			ADCQ R15, BX				
  raw.go:643		0x5f43d3		488b8c2400010000	MOVQ 0x100(SP), CX			
  raw.go:643		0x5f43db		4911cf			ADCQ CX, R15				
  raw.go:644		0x5f43de		4883d100		ADCQ $0x0, CX				
  raw.go:646		0x5f43e2		4801c6			ADDQ AX, SI				
  raw.go:649		0x5f43e5		4c11ca			ADCQ R9, DX				
  raw.go:652		0x5f43e8		4d11d0			ADCQ R10, R8				
  raw.go:655		0x5f43eb		4c11df			ADCQ R11, DI				
  raw.go:658		0x5f43ee		4c11e3			ADCQ R12, BX				
  raw.go:661		0x5f43f1		4d11ef			ADCQ R13, R15				
  raw.go:664		0x5f43f4		488bb42410010000	MOVQ 0x110(SP), SI			
  raw.go:664		0x5f43fc		4811f1			ADCQ SI, CX				
  raw.go:664		0x5f43ff		400f92c6		SETB SI					
  raw.go:664		0x5f4403		400fb6f6		MOVZX SI, SI				
  raw.go:590		0x5f4407		4c8b8c2468010000	MOVQ 0x168(SP), R9			
  raw.go:590		0x5f440f		4c8b9424f8010000	MOVQ 0x1f8(SP), R10			
  raw.go:590		0x5f4417		4d01d1			ADDQ R10, R9				
  raw.go:593		0x5f441a		4c8b8c2458010000	MOVQ 0x158(SP), R9			
  raw.go:593		0x5f4422		4c8b9424f0010000	MOVQ 0x1f0(SP), R10			
  raw.go:593		0x5f442a		4d11d1			ADCQ R10, R9				
  raw.go:596		0x5f442d		4c8b8c2448010000	MOVQ 0x148(SP), R9			
  raw.go:596		0x5f4435		4c8b9424e8010000	MOVQ 0x1e8(SP), R10			
  raw.go:596		0x5f443d		4d11d1			ADCQ R10, R9				
  raw.go:599		0x5f4440		4c8b8c2440010000	MOVQ 0x140(SP), R9			
  raw.go:599		0x5f4448		4c8b9424e0010000	MOVQ 0x1e0(SP), R10			
  raw.go:599		0x5f4450		4d11d1			ADCQ R10, R9				
  raw.go:602		0x5f4453		4c8b8c2438010000	MOVQ 0x138(SP), R9			
  raw.go:602		0x5f445b		4c8b9424d8010000	MOVQ 0x1d8(SP), R10			
  raw.go:602		0x5f4463		4d11d1			ADCQ R10, R9				
  raw.go:605		0x5f4466		4c8b8c2430010000	MOVQ 0x130(SP), R9			
  raw.go:605		0x5f446e		4c8b9424d0010000	MOVQ 0x1d0(SP), R10			
  raw.go:605		0x5f4476		4d11d1			ADCQ R10, R9				
  raw.go:608		0x5f4479		4c8b8c2428010000	MOVQ 0x128(SP), R9			
  raw.go:608		0x5f4481		4c8b9424c8010000	MOVQ 0x1c8(SP), R10			
  raw.go:608		0x5f4489		4d11d1			ADCQ R10, R9				
  raw.go:665		0x5f448c		4883d600		ADCQ $0x0, SI				
  raw.go:668		0x5f4490		41b9ffffffff		MOVL $-0x1, R9				
  raw.go:668		0x5f4496		4989d2			MOVQ DX, R10				
  raw.go:668		0x5f4499		4c29ca			SUBQ R9, DX				
  raw.go:671		0x5f449c		49b900000000ffffffff	MOVQ $0xffffffff00000000, R9		
  raw.go:671		0x5f44a6		4d89c3			MOVQ R8, R11				
  raw.go:671		0x5f44a9		4d19c8			SBBQ R9, R8				
  raw.go:674		0x5f44ac		4989f9			MOVQ DI, R9				
  raw.go:674		0x5f44af		4883dffe		SBBQ $-0x2, DI				
  raw.go:677		0x5f44b3		4989dc			MOVQ BX, R12				
  raw.go:677		0x5f44b6		4883dbff		SBBQ $-0x1, BX				
  raw.go:680		0x5f44ba		4d89fd			MOVQ R15, R13				
  raw.go:680		0x5f44bd		4983dfff		SBBQ $-0x1, R15				
  raw.go:683		0x5f44c1		4889c8			MOVQ CX, AX				
  raw.go:683		0x5f44c4		4883d9ff		SBBQ $-0x1, CX				
  raw.go:685		0x5f44c8		4883de00		SBBQ $0x0, SI				
  raw.go:685		0x5f44cc		400f92c6		SETB SI					
  raw.go:685		0x5f44d0		400fb6f6		MOVZX SI, SI				
  common.go:7		0x5f44d4		48f7de			NEGQ SI					
  common.go:7		0x5f44d7		4889b424c0050000	MOVQ SI, 0x5c0(SP)			
  common.go:8		0x5f44df		4921f2			ANDQ SI, R10				
  common.go:8		0x5f44e2		48f7d6			NOTQ SI					
  common.go:8		0x5f44e5		4821f2			ANDQ SI, DX				
  common.go:8		0x5f44e8		4909d2			ORQ DX, R10				
  raw.go:698		0x5f44eb		488b9424e0050000	MOVQ 0x5e0(SP), DX			
  raw.go:698		0x5f44f3		4c8912			MOVQ R10, 0(DX)				
  common.go:8		0x5f44f6		4c8b9424c0050000	MOVQ 0x5c0(SP), R10			
  common.go:8		0x5f44fe		4d21d3			ANDQ R10, R11				
  common.go:8		0x5f4501		4921f0			ANDQ SI, R8				
  common.go:8		0x5f4504		4d09d8			ORQ R11, R8				
  raw.go:699		0x5f4507		4c894208		MOVQ R8, 0x8(DX)			
  common.go:8		0x5f450b		4d21d1			ANDQ R10, R9				
  common.go:8		0x5f450e		4821f7			ANDQ SI, DI				
  common.go:8		0x5f4511		4c09cf			ORQ R9, DI				
  raw.go:700		0x5f4514		48897a10		MOVQ DI, 0x10(DX)			
  common.go:8		0x5f4518		4d21d4			ANDQ R10, R12				
  common.go:8		0x5f451b		4821f3			ANDQ SI, BX				
  common.go:8		0x5f451e		4c09e3			ORQ R12, BX				
  raw.go:701		0x5f4521		48895a18		MOVQ BX, 0x18(DX)			
  common.go:8		0x5f4525		4d21d5			ANDQ R10, R13				
  common.go:8		0x5f4528		4921f7			ANDQ SI, R15				
  common.go:8		0x5f452b		4d09ef			ORQ R13, R15				
  raw.go:702		0x5f452e		4c897a20		MOVQ R15, 0x20(DX)			
  common.go:8		0x5f4532		4921c2			ANDQ AX, R10				
  common.go:8		0x5f4535		4821f1			ANDQ SI, CX				
  common.go:8		0x5f4538		4c09d1			ORQ R10, CX				
  raw.go:703		0x5f453b		48894a28		MOVQ CX, 0x28(DX)			
  raw.go:704		0x5f453f		c9			LEAVE					
  raw.go:704		0x5f4540		c3			RET					
  raw.go:9		0x5f4541		4889442408		MOVQ AX, 0x8(SP)			
  raw.go:9		0x5f4546		48895c2410		MOVQ BX, 0x10(SP)			
  raw.go:9		0x5f454b		48894c2418		MOVQ CX, 0x18(SP)			
  raw.go:9		0x5f4550		e8eb85e9ff		CALL runtime.morestack_noctxt.abi0(SB)	
  raw.go:9		0x5f4555		488b442408		MOVQ 0x8(SP), AX			
  raw.go:9		0x5f455a		488b5c2410		MOVQ 0x10(SP), BX			
  raw.go:9		0x5f455f		488b4c2418		MOVQ 0x18(SP), CX			
  raw.go:9		0x5f4564		e9f7edffff		JMP example.com/p384issue.RawMul(SB)	
