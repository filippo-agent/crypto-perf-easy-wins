TEXT example.com/p384issue.RawMul(SB) /home/exedev/crypto-audit/round4/issues/p384-square/raw.go
  raw.go:9		0x5f3340		4c8da424a8faffff	LEAQ 0xfffffaa8(SP), R12		
  raw.go:9		0x5f3348		4d3b6610		CMPQ R12, 0x10(R14)			
  raw.go:9		0x5f334c		0f86fc110000		JBE 0x5f454e				
  raw.go:9		0x5f3352		55			PUSHQ BP				
  raw.go:9		0x5f3353		4889e5			MOVQ SP, BP				
  raw.go:9		0x5f3356		4881ecd0050000		SUBQ $0x5d0, SP				
  raw.go:704		0x5f335d		48898424e0050000	MOVQ AX, 0x5e0(SP)			
  raw.go:10		0x5f3365		488b5308		MOVQ 0x8(BX), DX			
  raw.go:11		0x5f3369		488b7310		MOVQ 0x10(BX), SI			
  raw.go:12		0x5f336d		488b7b18		MOVQ 0x18(BX), DI			
  raw.go:13		0x5f3371		4c8b4320		MOVQ 0x20(BX), R8			
  raw.go:14		0x5f3375		4c8b4b28		MOVQ 0x28(BX), R9			
  raw.go:15		0x5f3379		488b1b			MOVQ 0(BX), BX				
  raw.go:18		0x5f337c		4c8b5108		MOVQ 0x8(CX), R10			
  raw.go:30		0x5f3380		4c89d0			MOVQ R10, AX				
  raw.go:10		0x5f3383		4989d4			MOVQ DX, R12				
  raw.go:30		0x5f3386		48f7e3			MULQ BX					
  raw.go:30		0x5f3389		4989c5			MOVQ AX, R13				
  raw.go:120		0x5f338c		4c89e0			MOVQ R12, AX				
  raw.go:30		0x5f338f		4989d7			MOVQ DX, R15				
  raw.go:120		0x5f3392		49f7e2			MULQ R10				
  raw.go:120		0x5f3395		4889542450		MOVQ DX, 0x50(SP)			
  raw.go:120		0x5f339a		4889442458		MOVQ AX, 0x58(SP)			
  raw.go:229		0x5f339f		4c8b5910		MOVQ 0x10(CX), R11			
  raw.go:27		0x5f33a3		4c89d8			MOVQ R11, AX				
  raw.go:27		0x5f33a6		48f7e3			MULQ BX					
  raw.go:27		0x5f33a9		4889942428050000	MOVQ DX, 0x528(SP)			
  raw.go:27		0x5f33b1		4889842450050000	MOVQ AX, 0x550(SP)			
  raw.go:117		0x5f33b9		4c89d8			MOVQ R11, AX				
  raw.go:117		0x5f33bc		49f7e4			MULQ R12				
  raw.go:117		0x5f33bf		4889542460		MOVQ DX, 0x60(SP)			
  raw.go:117		0x5f33c4		4889442468		MOVQ AX, 0x68(SP)			
  raw.go:229		0x5f33c9		4889f0			MOVQ SI, AX				
  raw.go:229		0x5f33cc		49f7e3			MULQ R11				
  raw.go:229		0x5f33cf		48899424d0040000	MOVQ DX, 0x4d0(SP)			
  raw.go:229		0x5f33d7		48898424d8040000	MOVQ AX, 0x4d8(SP)			
  raw.go:232		0x5f33df		4c89d0			MOVQ R10, AX				
  raw.go:232		0x5f33e2		48f7e6			MULQ SI					
  raw.go:232		0x5f33e5		48899424c0040000	MOVQ DX, 0x4c0(SP)			
  raw.go:232		0x5f33ed		48898424c8040000	MOVQ AX, 0x4c8(SP)			
  raw.go:332		0x5f33f5		488b5128		MOVQ 0x28(CX), DX			
  raw.go:332		0x5f33f9		48899424c8050000	MOVQ DX, 0x5c8(SP)			
  raw.go:18		0x5f3401		4889d0			MOVQ DX, AX				
  raw.go:18		0x5f3404		48f7e3			MULQ BX					
  raw.go:18		0x5f3407		4889542440		MOVQ DX, 0x40(SP)			
  raw.go:18		0x5f340c		4889842498000000	MOVQ AX, 0x98(SP)			
  raw.go:108		0x5f3414		488b8424c8050000	MOVQ 0x5c8(SP), AX			
  raw.go:108		0x5f341c		49f7e4			MULQ R12				
  raw.go:108		0x5f341f		4889942490000000	MOVQ DX, 0x90(SP)			
  raw.go:108		0x5f3427		48898424a0000000	MOVQ AX, 0xa0(SP)			
  raw.go:220		0x5f342f		488b8424c8050000	MOVQ 0x5c8(SP), AX			
  raw.go:220		0x5f3437		48f7e6			MULQ SI					
  raw.go:220		0x5f343a		4889942400050000	MOVQ DX, 0x500(SP)			
  raw.go:220		0x5f3442		4889842408050000	MOVQ AX, 0x508(SP)			
  raw.go:332		0x5f344a		488b8424c8050000	MOVQ 0x5c8(SP), AX			
  raw.go:332		0x5f3452		48f7e7			MULQ DI					
  raw.go:332		0x5f3455		48899424e8030000	MOVQ DX, 0x3e8(SP)			
  raw.go:332		0x5f345d		48898424f0030000	MOVQ AX, 0x3f0(SP)			
  raw.go:338		0x5f3465		488b5118		MOVQ 0x18(CX), DX			
  raw.go:338		0x5f3469		48899424c0050000	MOVQ DX, 0x5c0(SP)			
  raw.go:24		0x5f3471		4889d0			MOVQ DX, AX				
  raw.go:24		0x5f3474		48f7e3			MULQ BX					
  raw.go:24		0x5f3477		4889942458050000	MOVQ DX, 0x558(SP)			
  raw.go:24		0x5f347f		4889842490050000	MOVQ AX, 0x590(SP)			
  raw.go:114		0x5f3487		488b8424c0050000	MOVQ 0x5c0(SP), AX			
  raw.go:114		0x5f348f		49f7e4			MULQ R12				
  raw.go:114		0x5f3492		4889542470		MOVQ DX, 0x70(SP)			
  raw.go:114		0x5f3497		4889442478		MOVQ AX, 0x78(SP)			
  raw.go:226		0x5f349c		488b8424c0050000	MOVQ 0x5c0(SP), AX			
  raw.go:226		0x5f34a4		48f7e6			MULQ SI					
  raw.go:226		0x5f34a7		48899424e0040000	MOVQ DX, 0x4e0(SP)			
  raw.go:226		0x5f34af		48898424e8040000	MOVQ AX, 0x4e8(SP)			
  raw.go:338		0x5f34b7		4889f8			MOVQ DI, AX				
  raw.go:338		0x5f34ba		488b9424c0050000	MOVQ 0x5c0(SP), DX			
  raw.go:338		0x5f34c2		48f7e2			MULQ DX					
  raw.go:338		0x5f34c5		48899424c8030000	MOVQ DX, 0x3c8(SP)			
  raw.go:338		0x5f34cd		48898424d0030000	MOVQ AX, 0x3d0(SP)			
  raw.go:341		0x5f34d5		4c89d8			MOVQ R11, AX				
  raw.go:341		0x5f34d8		48f7e7			MULQ DI					
  raw.go:341		0x5f34db		48899424b8030000	MOVQ DX, 0x3b8(SP)			
  raw.go:341		0x5f34e3		48898424c0030000	MOVQ AX, 0x3c0(SP)			
  raw.go:344		0x5f34eb		4c89d0			MOVQ R10, AX				
  raw.go:344		0x5f34ee		48f7e7			MULQ DI					
  raw.go:344		0x5f34f1		48899424a8030000	MOVQ DX, 0x3a8(SP)			
  raw.go:344		0x5f34f9		48898424b0030000	MOVQ AX, 0x3b0(SP)			
  raw.go:444		0x5f3501		488b8424c8050000	MOVQ 0x5c8(SP), AX			
  raw.go:444		0x5f3509		49f7e0			MULQ R8					
  raw.go:444		0x5f350c		48899424d0020000	MOVQ DX, 0x2d0(SP)			
  raw.go:444		0x5f3514		48898424d8020000	MOVQ AX, 0x2d8(SP)			
  raw.go:447		0x5f351c		488b5120		MOVQ 0x20(CX), DX			
  raw.go:447		0x5f3520		48899424b8050000	MOVQ DX, 0x5b8(SP)			
  raw.go:21		0x5f3528		4889d0			MOVQ DX, AX				
  raw.go:21		0x5f352b		48f7e3			MULQ BX					
  raw.go:21		0x5f352e		48899424a8050000	MOVQ DX, 0x5a8(SP)			
  raw.go:21		0x5f3536		4889442408		MOVQ AX, 0x8(SP)			
  raw.go:111		0x5f353b		488b8424b8050000	MOVQ 0x5b8(SP), AX			
  raw.go:111		0x5f3543		49f7e4			MULQ R12				
  raw.go:111		0x5f3546		4889942480000000	MOVQ DX, 0x80(SP)			
  raw.go:111		0x5f354e		4889842488000000	MOVQ AX, 0x88(SP)			
  raw.go:223		0x5f3556		488b8424b8050000	MOVQ 0x5b8(SP), AX			
  raw.go:223		0x5f355e		48f7e6			MULQ SI					
  raw.go:223		0x5f3561		48899424f0040000	MOVQ DX, 0x4f0(SP)			
  raw.go:223		0x5f3569		48898424f8040000	MOVQ AX, 0x4f8(SP)			
  raw.go:335		0x5f3571		488b8424b8050000	MOVQ 0x5b8(SP), AX			
  raw.go:335		0x5f3579		48f7e7			MULQ DI					
  raw.go:335		0x5f357c		48899424d8030000	MOVQ DX, 0x3d8(SP)			
  raw.go:335		0x5f3584		48898424e0030000	MOVQ AX, 0x3e0(SP)			
  raw.go:447		0x5f358c		4c89c0			MOVQ R8, AX				
  raw.go:447		0x5f358f		488b9424b8050000	MOVQ 0x5b8(SP), DX			
  raw.go:447		0x5f3597		48f7e2			MULQ DX					
  raw.go:447		0x5f359a		48899424c0020000	MOVQ DX, 0x2c0(SP)			
  raw.go:447		0x5f35a2		48898424c8020000	MOVQ AX, 0x2c8(SP)			
  raw.go:450		0x5f35aa		488b8424c0050000	MOVQ 0x5c0(SP), AX			
  raw.go:450		0x5f35b2		49f7e0			MULQ R8					
  raw.go:450		0x5f35b5		48899424b0020000	MOVQ DX, 0x2b0(SP)			
  raw.go:450		0x5f35bd		48898424b8020000	MOVQ AX, 0x2b8(SP)			
  raw.go:453		0x5f35c5		4c89d8			MOVQ R11, AX				
  raw.go:453		0x5f35c8		49f7e0			MULQ R8					
  raw.go:453		0x5f35cb		48899424a0020000	MOVQ DX, 0x2a0(SP)			
  raw.go:453		0x5f35d3		48898424a8020000	MOVQ AX, 0x2a8(SP)			
  raw.go:456		0x5f35db		4c89d0			MOVQ R10, AX				
  raw.go:456		0x5f35de		49f7e0			MULQ R8					
  raw.go:456		0x5f35e1		4889942490020000	MOVQ DX, 0x290(SP)			
  raw.go:456		0x5f35e9		4889842498020000	MOVQ AX, 0x298(SP)			
  raw.go:459		0x5f35f1		488b09			MOVQ 0(CX), CX				
  raw.go:33		0x5f35f4		4889d8			MOVQ BX, AX				
  raw.go:33		0x5f35f7		48f7e1			MULQ CX					
  raw.go:33		0x5f35fa		4889842478040000	MOVQ AX, 0x478(SP)			
  raw.go:33		0x5f3602		4889942470040000	MOVQ DX, 0x470(SP)			
  raw.go:51		0x5f360a		48b80100000001000000	MOVQ $0x100000001, AX			
  raw.go:51		0x5f3614		488b9c2478040000	MOVQ 0x478(SP), BX			
  raw.go:51		0x5f361c		48f7e3			MULQ BX					
  raw.go:51		0x5f361f		48898424e0020000	MOVQ AX, 0x2e0(SP)			
  raw.go:51		0x5f3627		4889c2			MOVQ AX, DX				
  raw.go:60		0x5f362a		48c7c0ffffffff		MOVQ $-0x1, AX				
  raw.go:60		0x5f3631		48f7e2			MULQ DX					
  raw.go:57		0x5f3634		4889942408020000	MOVQ DX, 0x208(SP)			
  raw.go:60		0x5f363c		4889842400020000	MOVQ AX, 0x200(SP)			
  raw.go:63		0x5f3644		48c7c0feffffff		MOVQ $-0x2, AX				
  raw.go:63		0x5f364b		488b9c24e0020000	MOVQ 0x2e0(SP), BX			
  raw.go:63		0x5f3653		48f7e3			MULQ BX					
  raw.go:63		0x5f3656		4889942450010000	MOVQ DX, 0x150(SP)			
  raw.go:63		0x5f365e		48898424a8010000	MOVQ AX, 0x1a8(SP)			
  raw.go:66		0x5f3666		48b800000000ffffffff	MOVQ $0xffffffff00000000, AX		
  raw.go:66		0x5f3670		48f7e3			MULQ BX					
  raw.go:66		0x5f3673		4889942418010000	MOVQ DX, 0x118(SP)			
  raw.go:66		0x5f367b		4889842420010000	MOVQ AX, 0x120(SP)			
  raw.go:69		0x5f3683		b8ffffffff		MOVL $-0x1, AX				
  raw.go:69		0x5f3688		48f7e3			MULQ BX					
  raw.go:69		0x5f368b		48899424e8000000	MOVQ DX, 0xe8(SP)			
  raw.go:69		0x5f3693		4889c3			MOVQ AX, BX				
  raw.go:123		0x5f3696		4889c8			MOVQ CX, AX				
  raw.go:123		0x5f3699		49f7e4			MULQ R12				
  raw.go:123		0x5f369c		4889542438		MOVQ DX, 0x38(SP)			
  raw.go:123		0x5f36a1		4889442448		MOVQ AX, 0x48(SP)			
  raw.go:235		0x5f36a6		4889c8			MOVQ CX, AX				
  raw.go:235		0x5f36a9		48f7e6			MULQ SI					
  raw.go:235		0x5f36ac		48899424b0040000	MOVQ DX, 0x4b0(SP)			
  raw.go:235		0x5f36b4		48898424b8040000	MOVQ AX, 0x4b8(SP)			
  raw.go:347		0x5f36bc		4889c8			MOVQ CX, AX				
  raw.go:347		0x5f36bf		48f7e7			MULQ DI					
  raw.go:347		0x5f36c2		4889942498030000	MOVQ DX, 0x398(SP)			
  raw.go:347		0x5f36ca		48898424a0030000	MOVQ AX, 0x3a0(SP)			
  raw.go:459		0x5f36d2		4889c8			MOVQ CX, AX				
  raw.go:459		0x5f36d5		49f7e0			MULQ R8					
  raw.go:459		0x5f36d8		4889942480020000	MOVQ DX, 0x280(SP)			
  raw.go:459		0x5f36e0		4889842488020000	MOVQ AX, 0x288(SP)			
  raw.go:556		0x5f36e8		4c89c8			MOVQ R9, AX				
  raw.go:556		0x5f36eb		4c8b8424c8050000	MOVQ 0x5c8(SP), R8			
  raw.go:556		0x5f36f3		49f7e0			MULQ R8					
  raw.go:556		0x5f36f6		48899424b8010000	MOVQ DX, 0x1b8(SP)			
  raw.go:556		0x5f36fe		48898424c0010000	MOVQ AX, 0x1c0(SP)			
  raw.go:559		0x5f3706		488b8424b8050000	MOVQ 0x5b8(SP), AX			
  raw.go:559		0x5f370e		49f7e1			MULQ R9					
  raw.go:559		0x5f3711		48899424a0010000	MOVQ DX, 0x1a0(SP)			
  raw.go:559		0x5f3719		48898424b0010000	MOVQ AX, 0x1b0(SP)			
  raw.go:562		0x5f3721		488b8424c0050000	MOVQ 0x5c0(SP), AX			
  raw.go:562		0x5f3729		49f7e1			MULQ R9					
  raw.go:562		0x5f372c		4889942490010000	MOVQ DX, 0x190(SP)			
  raw.go:562		0x5f3734		4889842498010000	MOVQ AX, 0x198(SP)			
  raw.go:565		0x5f373c		4c89d8			MOVQ R11, AX				
  raw.go:565		0x5f373f		49f7e1			MULQ R9					
  raw.go:565		0x5f3742		4889942480010000	MOVQ DX, 0x180(SP)			
  raw.go:565		0x5f374a		4889842488010000	MOVQ AX, 0x188(SP)			
  raw.go:568		0x5f3752		4c89d0			MOVQ R10, AX				
  raw.go:568		0x5f3755		49f7e1			MULQ R9					
  raw.go:568		0x5f3758		4889942470010000	MOVQ DX, 0x170(SP)			
  raw.go:568		0x5f3760		4889842478010000	MOVQ AX, 0x178(SP)			
  raw.go:571		0x5f3768		4889c8			MOVQ CX, AX				
  raw.go:571		0x5f376b		49f7e1			MULQ R9					
  raw.go:571		0x5f376e		4889942460010000	MOVQ DX, 0x160(SP)			
  raw.go:571		0x5f3776		4889842468010000	MOVQ AX, 0x168(SP)			
  raw.go:687		0x5f377e		90			NOPL					
  raw.go:689		0x5f377f		90			NOPL					
  raw.go:691		0x5f3780		90			NOPL					
  raw.go:693		0x5f3781		90			NOPL					
  raw.go:695		0x5f3782		90			NOPL					
  raw.go:697		0x5f3783		90			NOPL					
  raw.go:36		0x5f3784		4c8b8c2470040000	MOVQ 0x470(SP), R9			
  raw.go:36		0x5f378c		4d01e9			ADDQ R13, R9				
  raw.go:39		0x5f378f		4c8bac2450050000	MOVQ 0x550(SP), R13			
  raw.go:39		0x5f3797		4d11ef			ADCQ R13, R15				
  raw.go:42		0x5f379a		4c8bac2428050000	MOVQ 0x528(SP), R13			
  raw.go:42		0x5f37a2		4c8b842490050000	MOVQ 0x590(SP), R8			
  raw.go:42		0x5f37aa		4d11c5			ADCQ R8, R13				
  raw.go:45		0x5f37ad		4c8b842458050000	MOVQ 0x558(SP), R8			
  raw.go:45		0x5f37b5		4c8b5c2408		MOVQ 0x8(SP), R11			
  raw.go:45		0x5f37ba		4d11d8			ADCQ R11, R8				
  raw.go:48		0x5f37bd		4c8b9c24a8050000	MOVQ 0x5a8(SP), R11			
  raw.go:48		0x5f37c5		4c8b942498000000	MOVQ 0x98(SP), R10			
  raw.go:48		0x5f37cd		4d11d3			ADCQ R10, R11				
  raw.go:49		0x5f37d0		4c8b542440		MOVQ 0x40(SP), R10			
  raw.go:49		0x5f37d5		4983d200		ADCQ $0x0, R10				
  raw.go:49		0x5f37d9		4c89942410030000	MOVQ R10, 0x310(SP)			
  raw.go:72		0x5f37e1		488b8c24e8000000	MOVQ 0xe8(SP), CX			
  raw.go:72		0x5f37e9		488b942420010000	MOVQ 0x120(SP), DX			
  raw.go:72		0x5f37f1		4801d1			ADDQ DX, CX				
  raw.go:75		0x5f37f4		488b942418010000	MOVQ 0x118(SP), DX			
  raw.go:75		0x5f37fc		488bbc24a8010000	MOVQ 0x1a8(SP), DI			
  raw.go:75		0x5f3804		4811fa			ADCQ DI, DX				
  raw.go:78		0x5f3807		488bbc2450010000	MOVQ 0x150(SP), DI			
  raw.go:78		0x5f380f		488bb42400020000	MOVQ 0x200(SP), SI			
  raw.go:78		0x5f3817		4811f7			ADCQ SI, DI				
  raw.go:81		0x5f381a		4c8ba42408020000	MOVQ 0x208(SP), R12			
  raw.go:81		0x5f3822		4c11e6			ADCQ R12, SI				
  raw.go:84		0x5f3825		4c8b942400020000	MOVQ 0x200(SP), R10			
  raw.go:84		0x5f382d		4d11e2			ADCQ R12, R10				
  raw.go:85		0x5f3830		4983d400		ADCQ $0x0, R12				
  raw.go:85		0x5f3834		4c89a424e0000000	MOVQ R12, 0xe0(SP)			
  raw.go:87		0x5f383c		4c8ba42478040000	MOVQ 0x478(SP), R12			
  raw.go:87		0x5f3844		4901dc			ADDQ BX, R12				
  raw.go:90		0x5f3847		4c11c9			ADCQ R9, CX				
  raw.go:90		0x5f384a		48898c24d8000000	MOVQ CX, 0xd8(SP)			
  raw.go:93		0x5f3852		4c11fa			ADCQ R15, DX				
  raw.go:93		0x5f3855		48899424d0000000	MOVQ DX, 0xd0(SP)			
  raw.go:96		0x5f385d		4c11ef			ADCQ R13, DI				
  raw.go:96		0x5f3860		4889bc24c8000000	MOVQ DI, 0xc8(SP)			
  raw.go:99		0x5f3868		4c11c6			ADCQ R8, SI				
  raw.go:99		0x5f386b		4889b424c0000000	MOVQ SI, 0xc0(SP)			
  raw.go:102		0x5f3873		4d11da			ADCQ R11, R10				
  raw.go:102		0x5f3876		4c899424b8000000	MOVQ R10, 0xb8(SP)			
  raw.go:105		0x5f387e		488b9c24e0000000	MOVQ 0xe0(SP), BX			
  raw.go:105		0x5f3886		4c8b842410030000	MOVQ 0x310(SP), R8			
  raw.go:105		0x5f388e		4c11c3			ADCQ R8, BX				
  raw.go:105		0x5f3891		48899c24b0000000	MOVQ BX, 0xb0(SP)			
  raw.go:105		0x5f3899		410f92c0		SETB R8					
  raw.go:105		0x5f389d		450fb6c0		MOVZX R8, R8				
  raw.go:105		0x5f38a1		4c898424a8000000	MOVQ R8, 0xa8(SP)			
  raw.go:126		0x5f38a9		4c8b4c2438		MOVQ 0x38(SP), R9			
  raw.go:126		0x5f38ae		4c8b5c2458		MOVQ 0x58(SP), R11			
  raw.go:126		0x5f38b3		4d01d9			ADDQ R11, R9				
  raw.go:126		0x5f38b6		4c894c2430		MOVQ R9, 0x30(SP)			
  raw.go:129		0x5f38bb		4c8b5c2450		MOVQ 0x50(SP), R11			
  raw.go:129		0x5f38c0		4c8b642468		MOVQ 0x68(SP), R12			
  raw.go:129		0x5f38c5		4d11e3			ADCQ R12, R11				
  raw.go:129		0x5f38c8		4c895c2428		MOVQ R11, 0x28(SP)			
  raw.go:132		0x5f38cd		4c8b642460		MOVQ 0x60(SP), R12			
  raw.go:132		0x5f38d2		4c8b6c2478		MOVQ 0x78(SP), R13			
  raw.go:132		0x5f38d7		4d11ec			ADCQ R13, R12				
  raw.go:132		0x5f38da		4c89642420		MOVQ R12, 0x20(SP)			
  raw.go:135		0x5f38df		4c8b6c2470		MOVQ 0x70(SP), R13			
  raw.go:135		0x5f38e4		4c8bbc2488000000	MOVQ 0x88(SP), R15			
  raw.go:135		0x5f38ec		4d11fd			ADCQ R15, R13				
  raw.go:135		0x5f38ef		4c896c2418		MOVQ R13, 0x18(SP)			
  raw.go:138		0x5f38f4		4c8bbc2480000000	MOVQ 0x80(SP), R15			
  raw.go:138		0x5f38fc		4c8b8424a0000000	MOVQ 0xa0(SP), R8			
  raw.go:138		0x5f3904		4d11c7			ADCQ R8, R15				
  raw.go:138		0x5f3907		4c897c2410		MOVQ R15, 0x10(SP)			
  raw.go:139		0x5f390c		4c8b842490000000	MOVQ 0x90(SP), R8			
  raw.go:139		0x5f3914		4983d000		ADCQ $0x0, R8				
  raw.go:139		0x5f3918		4c890424		MOVQ R8, 0(SP)				
  raw.go:142		0x5f391c		4c8b442448		MOVQ 0x48(SP), R8			
  raw.go:142		0x5f3921		4901c8			ADDQ CX, R8				
  raw.go:145		0x5f3924		4911d1			ADCQ DX, R9				
  raw.go:148		0x5f3927		4911fb			ADCQ DI, R11				
  raw.go:151		0x5f392a		4911f4			ADCQ SI, R12				
  raw.go:154		0x5f392d		4d11d5			ADCQ R10, R13				
  raw.go:157		0x5f3930		4911df			ADCQ BX, R15				
  raw.go:160		0x5f3933		488b1c24		MOVQ 0(SP), BX				
  raw.go:160		0x5f3937		4c8b9424a8000000	MOVQ 0xa8(SP), R10			
  raw.go:160		0x5f393f		4c11d3			ADCQ R10, BX				
  raw.go:160		0x5f3942		48899c24a0050000	MOVQ BX, 0x5a0(SP)			
  raw.go:162		0x5f394a		4c89c0			MOVQ R8, AX				
  raw.go:162		0x5f394d		49ba0100000001000000	MOVQ $0x100000001, R10			
  raw.go:162		0x5f3957		49f7e2			MULQ R10				
  raw.go:162		0x5f395a		4889842498050000	MOVQ AX, 0x598(SP)			
  raw.go:165		0x5f3962		48c7c2ffffffff		MOVQ $-0x1, DX				
  raw.go:165		0x5f3969		48f7e2			MULQ DX					
  raw.go:168		0x5f396c		4889942488050000	MOVQ DX, 0x588(SP)			
  raw.go:171		0x5f3974		4889842480050000	MOVQ AX, 0x580(SP)			
  raw.go:174		0x5f397c		488b842498050000	MOVQ 0x598(SP), AX			
  raw.go:174		0x5f3984		49c7c2feffffff		MOVQ $-0x2, R10				
  raw.go:174		0x5f398b		49f7e2			MULQ R10				
  raw.go:174		0x5f398e		4889942470050000	MOVQ DX, 0x570(SP)			
  raw.go:174		0x5f3996		4889842478050000	MOVQ AX, 0x578(SP)			
  raw.go:177		0x5f399e		488b842498050000	MOVQ 0x598(SP), AX			
  raw.go:177		0x5f39a6		49ba00000000ffffffff	MOVQ $0xffffffff00000000, R10		
  raw.go:177		0x5f39b0		49f7e2			MULQ R10				
  raw.go:177		0x5f39b3		4889942460050000	MOVQ DX, 0x560(SP)			
  raw.go:177		0x5f39bb		4889842468050000	MOVQ AX, 0x568(SP)			
  raw.go:180		0x5f39c3		488b842498050000	MOVQ 0x598(SP), AX			
  raw.go:180		0x5f39cb		41baffffffff		MOVL $-0x1, R10				
  raw.go:180		0x5f39d1		49f7e2			MULQ R10				
  raw.go:183		0x5f39d4		4c8b942468050000	MOVQ 0x568(SP), R10			
  raw.go:183		0x5f39dc		4c01d2			ADDQ R10, DX				
  raw.go:186		0x5f39df		4c8b942460050000	MOVQ 0x560(SP), R10			
  raw.go:186		0x5f39e7		488bb42478050000	MOVQ 0x578(SP), SI			
  raw.go:186		0x5f39ef		4911f2			ADCQ SI, R10				
  raw.go:189		0x5f39f2		488bb42470050000	MOVQ 0x570(SP), SI			
  raw.go:189		0x5f39fa		488bbc2480050000	MOVQ 0x580(SP), DI			
  raw.go:189		0x5f3a02		4811fe			ADCQ DI, SI				
  raw.go:192		0x5f3a05		488b8c2488050000	MOVQ 0x588(SP), CX			
  raw.go:192		0x5f3a0d		4811cf			ADCQ CX, DI				
  raw.go:195		0x5f3a10		488b9c2480050000	MOVQ 0x580(SP), BX			
  raw.go:195		0x5f3a18		4811cb			ADCQ CX, BX				
  raw.go:196		0x5f3a1b		4883d100		ADCQ $0x0, CX				
  raw.go:198		0x5f3a1f		4901c0			ADDQ AX, R8				
  raw.go:201		0x5f3a22		4c11ca			ADCQ R9, DX				
  raw.go:201		0x5f3a25		4889942448050000	MOVQ DX, 0x548(SP)			
  raw.go:204		0x5f3a2d		4d11da			ADCQ R11, R10				
  raw.go:204		0x5f3a30		4c89942440050000	MOVQ R10, 0x540(SP)			
  raw.go:207		0x5f3a38		4c11e6			ADCQ R12, SI				
  raw.go:207		0x5f3a3b		4889b42438050000	MOVQ SI, 0x538(SP)			
  raw.go:210		0x5f3a43		4c11ef			ADCQ R13, DI				
  raw.go:210		0x5f3a46		4889bc2430050000	MOVQ DI, 0x530(SP)			
  raw.go:213		0x5f3a4e		4c11fb			ADCQ R15, BX				
  raw.go:213		0x5f3a51		48899c2420050000	MOVQ BX, 0x520(SP)			
  raw.go:216		0x5f3a59		4c8b8424a0050000	MOVQ 0x5a0(SP), R8			
  raw.go:216		0x5f3a61		4c11c1			ADCQ R8, CX				
  raw.go:216		0x5f3a64		48898c2418050000	MOVQ CX, 0x518(SP)			
  raw.go:216		0x5f3a6c		410f92c0		SETB R8					
  raw.go:216		0x5f3a70		450fb6c0		MOVZX R8, R8				
  raw.go:142		0x5f3a74		4c8b4c2448		MOVQ 0x48(SP), R9			
  raw.go:142		0x5f3a79		4c8b9c24d8000000	MOVQ 0xd8(SP), R11			
  raw.go:142		0x5f3a81		4d01d9			ADDQ R11, R9				
  raw.go:145		0x5f3a84		4c8b4c2430		MOVQ 0x30(SP), R9			
  raw.go:145		0x5f3a89		4c8b9c24d0000000	MOVQ 0xd0(SP), R11			
  raw.go:145		0x5f3a91		4d11d9			ADCQ R11, R9				
  raw.go:148		0x5f3a94		4c8b4c2428		MOVQ 0x28(SP), R9			
  raw.go:148		0x5f3a99		4c8b9c24c8000000	MOVQ 0xc8(SP), R11			
  raw.go:148		0x5f3aa1		4d11d9			ADCQ R11, R9				
  raw.go:151		0x5f3aa4		4c8b4c2420		MOVQ 0x20(SP), R9			
  raw.go:151		0x5f3aa9		4c8b9c24c0000000	MOVQ 0xc0(SP), R11			
  raw.go:151		0x5f3ab1		4d11d9			ADCQ R11, R9				
  raw.go:154		0x5f3ab4		4c8b4c2418		MOVQ 0x18(SP), R9			
  raw.go:154		0x5f3ab9		4c8b9c24b8000000	MOVQ 0xb8(SP), R11			
  raw.go:154		0x5f3ac1		4d11d9			ADCQ R11, R9				
  raw.go:157		0x5f3ac4		4c8b4c2410		MOVQ 0x10(SP), R9			
  raw.go:157		0x5f3ac9		4c8b9c24b0000000	MOVQ 0xb0(SP), R11			
  raw.go:157		0x5f3ad1		4d11d9			ADCQ R11, R9				
  raw.go:160		0x5f3ad4		4c8b0c24		MOVQ 0(SP), R9				
  raw.go:160		0x5f3ad8		4c8b9c24a8000000	MOVQ 0xa8(SP), R11			
  raw.go:160		0x5f3ae0		4d11d9			ADCQ R11, R9				
  raw.go:217		0x5f3ae3		4983d000		ADCQ $0x0, R8				
  raw.go:217		0x5f3ae7		4c89842410050000	MOVQ R8, 0x510(SP)			
  raw.go:238		0x5f3aef		4c8b8c24b0040000	MOVQ 0x4b0(SP), R9			
  raw.go:238		0x5f3af7		4c8b9c24c8040000	MOVQ 0x4c8(SP), R11			
  raw.go:238		0x5f3aff		4d01d9			ADDQ R11, R9				
  raw.go:238		0x5f3b02		4c898c24a8040000	MOVQ R9, 0x4a8(SP)			
  raw.go:241		0x5f3b0a		4c8b9c24c0040000	MOVQ 0x4c0(SP), R11			
  raw.go:241		0x5f3b12		4c8ba424d8040000	MOVQ 0x4d8(SP), R12			
  raw.go:241		0x5f3b1a		4d11e3			ADCQ R12, R11				
  raw.go:241		0x5f3b1d		4c899c24a0040000	MOVQ R11, 0x4a0(SP)			
  raw.go:244		0x5f3b25		4c8ba424d0040000	MOVQ 0x4d0(SP), R12			
  raw.go:244		0x5f3b2d		4c8bac24e8040000	MOVQ 0x4e8(SP), R13			
  raw.go:244		0x5f3b35		4d11ec			ADCQ R13, R12				
  raw.go:244		0x5f3b38		4c89a42498040000	MOVQ R12, 0x498(SP)			
  raw.go:247		0x5f3b40		4c8bac24e0040000	MOVQ 0x4e0(SP), R13			
  raw.go:247		0x5f3b48		4c8bbc24f8040000	MOVQ 0x4f8(SP), R15			
  raw.go:247		0x5f3b50		4d11fd			ADCQ R15, R13				
  raw.go:247		0x5f3b53		4c89ac2490040000	MOVQ R13, 0x490(SP)			
  raw.go:250		0x5f3b5b		4c8bbc24f0040000	MOVQ 0x4f0(SP), R15			
  raw.go:217		0x5f3b63		4c89c0			MOVQ R8, AX				
  raw.go:250		0x5f3b66		4c8b842408050000	MOVQ 0x508(SP), R8			
  raw.go:250		0x5f3b6e		4d11c7			ADCQ R8, R15				
  raw.go:250		0x5f3b71		4c89bc2488040000	MOVQ R15, 0x488(SP)			
  raw.go:251		0x5f3b79		4c8b842400050000	MOVQ 0x500(SP), R8			
  raw.go:251		0x5f3b81		4983d000		ADCQ $0x0, R8				
  raw.go:251		0x5f3b85		4c89842480040000	MOVQ R8, 0x480(SP)			
  raw.go:254		0x5f3b8d		4c8b8424b8040000	MOVQ 0x4b8(SP), R8			
  raw.go:254		0x5f3b95		4901d0			ADDQ DX, R8				
  raw.go:257		0x5f3b98		4d11d1			ADCQ R10, R9				
  raw.go:260		0x5f3b9b		4911f3			ADCQ SI, R11				
  raw.go:263		0x5f3b9e		4911fc			ADCQ DI, R12				
  raw.go:266		0x5f3ba1		4911dd			ADCQ BX, R13				
  raw.go:269		0x5f3ba4		4911cf			ADCQ CX, R15				
  raw.go:272		0x5f3ba7		488b8c2480040000	MOVQ 0x480(SP), CX			
  raw.go:272		0x5f3baf		4811c1			ADCQ AX, CX				
  raw.go:272		0x5f3bb2		48898c2468040000	MOVQ CX, 0x468(SP)			
  raw.go:274		0x5f3bba		4c89c0			MOVQ R8, AX				
  raw.go:274		0x5f3bbd		48bb0100000001000000	MOVQ $0x100000001, BX			
  raw.go:274		0x5f3bc7		48f7e3			MULQ BX					
  raw.go:274		0x5f3bca		4889842460040000	MOVQ AX, 0x460(SP)			
  raw.go:277		0x5f3bd2		48c7c2ffffffff		MOVQ $-0x1, DX				
  raw.go:277		0x5f3bd9		48f7e2			MULQ DX					
  raw.go:283		0x5f3bdc		4889842458040000	MOVQ AX, 0x458(SP)			
  raw.go:283		0x5f3be4		4889942450040000	MOVQ DX, 0x450(SP)			
  raw.go:286		0x5f3bec		488b842460040000	MOVQ 0x460(SP), AX			
  raw.go:286		0x5f3bf4		48c7c3feffffff		MOVQ $-0x2, BX				
  raw.go:286		0x5f3bfb		48f7e3			MULQ BX					
  raw.go:286		0x5f3bfe		4889942440040000	MOVQ DX, 0x440(SP)			
  raw.go:286		0x5f3c06		4889842448040000	MOVQ AX, 0x448(SP)			
  raw.go:289		0x5f3c0e		488b842460040000	MOVQ 0x460(SP), AX			
  raw.go:289		0x5f3c16		48bb00000000ffffffff	MOVQ $0xffffffff00000000, BX		
  raw.go:289		0x5f3c20		48f7e3			MULQ BX					
  raw.go:289		0x5f3c23		4889942430040000	MOVQ DX, 0x430(SP)			
  raw.go:289		0x5f3c2b		4889842438040000	MOVQ AX, 0x438(SP)			
  raw.go:292		0x5f3c33		488b842460040000	MOVQ 0x460(SP), AX			
  raw.go:292		0x5f3c3b		bbffffffff		MOVL $-0x1, BX				
  raw.go:292		0x5f3c40		48f7e3			MULQ BX					
  raw.go:295		0x5f3c43		488b9c2438040000	MOVQ 0x438(SP), BX			
  raw.go:295		0x5f3c4b		4801da			ADDQ BX, DX				
  raw.go:298		0x5f3c4e		488b9c2430040000	MOVQ 0x430(SP), BX			
  raw.go:298		0x5f3c56		488bbc2448040000	MOVQ 0x448(SP), DI			
  raw.go:298		0x5f3c5e		4811fb			ADCQ DI, BX				
  raw.go:301		0x5f3c61		488bbc2440040000	MOVQ 0x440(SP), DI			
  raw.go:301		0x5f3c69		488bb42458040000	MOVQ 0x458(SP), SI			
  raw.go:301		0x5f3c71		4811f7			ADCQ SI, DI				
  raw.go:304		0x5f3c74		4c8b942450040000	MOVQ 0x450(SP), R10			
  raw.go:304		0x5f3c7c		4c11d6			ADCQ R10, SI				
  raw.go:307		0x5f3c7f		488b8c2458040000	MOVQ 0x458(SP), CX			
  raw.go:307		0x5f3c87		4c11d1			ADCQ R10, CX				
  raw.go:308		0x5f3c8a		4983d200		ADCQ $0x0, R10				
  raw.go:310		0x5f3c8e		4901c0			ADDQ AX, R8				
  raw.go:313		0x5f3c91		4c11ca			ADCQ R9, DX				
  raw.go:313		0x5f3c94		4889942428040000	MOVQ DX, 0x428(SP)			
  raw.go:316		0x5f3c9c		4c11db			ADCQ R11, BX				
  raw.go:316		0x5f3c9f		48899c2420040000	MOVQ BX, 0x420(SP)			
  raw.go:319		0x5f3ca7		4c11e7			ADCQ R12, DI				
  raw.go:319		0x5f3caa		4889bc2418040000	MOVQ DI, 0x418(SP)			
  raw.go:322		0x5f3cb2		4c11ee			ADCQ R13, SI				
  raw.go:322		0x5f3cb5		4889b42410040000	MOVQ SI, 0x410(SP)			
  raw.go:325		0x5f3cbd		4c11f9			ADCQ R15, CX				
  raw.go:325		0x5f3cc0		48898c2408040000	MOVQ CX, 0x408(SP)			
  raw.go:328		0x5f3cc8		4c8b842468040000	MOVQ 0x468(SP), R8			
  raw.go:328		0x5f3cd0		4d11c2			ADCQ R8, R10				
  raw.go:328		0x5f3cd3		4c89942400040000	MOVQ R10, 0x400(SP)			
  raw.go:328		0x5f3cdb		410f92c0		SETB R8					
  raw.go:328		0x5f3cdf		450fb6c0		MOVZX R8, R8				
  raw.go:254		0x5f3ce3		4c8b8c24b8040000	MOVQ 0x4b8(SP), R9			
  raw.go:254		0x5f3ceb		4c8b9c2448050000	MOVQ 0x548(SP), R11			
  raw.go:254		0x5f3cf3		4d01d9			ADDQ R11, R9				
  raw.go:257		0x5f3cf6		4c8b8c24a8040000	MOVQ 0x4a8(SP), R9			
  raw.go:257		0x5f3cfe		4c8b9c2440050000	MOVQ 0x540(SP), R11			
  raw.go:257		0x5f3d06		4d11d9			ADCQ R11, R9				
  raw.go:260		0x5f3d09		4c8b8c24a0040000	MOVQ 0x4a0(SP), R9			
  raw.go:260		0x5f3d11		4c8b9c2438050000	MOVQ 0x538(SP), R11			
  raw.go:260		0x5f3d19		4d11d9			ADCQ R11, R9				
  raw.go:263		0x5f3d1c		4c8b8c2498040000	MOVQ 0x498(SP), R9			
  raw.go:263		0x5f3d24		4c8b9c2430050000	MOVQ 0x530(SP), R11			
  raw.go:263		0x5f3d2c		4d11d9			ADCQ R11, R9				
  raw.go:266		0x5f3d2f		4c8b8c2490040000	MOVQ 0x490(SP), R9			
  raw.go:266		0x5f3d37		4c8b9c2420050000	MOVQ 0x520(SP), R11			
  raw.go:266		0x5f3d3f		4d11d9			ADCQ R11, R9				
  raw.go:269		0x5f3d42		4c8b8c2488040000	MOVQ 0x488(SP), R9			
  raw.go:269		0x5f3d4a		4c8b9c2418050000	MOVQ 0x518(SP), R11			
  raw.go:269		0x5f3d52		4d11d9			ADCQ R11, R9				
  raw.go:272		0x5f3d55		4c8b8c2480040000	MOVQ 0x480(SP), R9			
  raw.go:272		0x5f3d5d		4c8b9c2410050000	MOVQ 0x510(SP), R11			
  raw.go:272		0x5f3d65		4d11d9			ADCQ R11, R9				
  raw.go:329		0x5f3d68		4983d000		ADCQ $0x0, R8				
  raw.go:329		0x5f3d6c		4c898424f8030000	MOVQ R8, 0x3f8(SP)			
  raw.go:350		0x5f3d74		4c8b8c2498030000	MOVQ 0x398(SP), R9			
  raw.go:350		0x5f3d7c		4c8b9c24b0030000	MOVQ 0x3b0(SP), R11			
  raw.go:350		0x5f3d84		4d01d9			ADDQ R11, R9				
  raw.go:350		0x5f3d87		4c898c2490030000	MOVQ R9, 0x390(SP)			
  raw.go:353		0x5f3d8f		4c8b9c24a8030000	MOVQ 0x3a8(SP), R11			
  raw.go:353		0x5f3d97		4c8ba424c0030000	MOVQ 0x3c0(SP), R12			
  raw.go:353		0x5f3d9f		4d11e3			ADCQ R12, R11				
  raw.go:353		0x5f3da2		4c899c2488030000	MOVQ R11, 0x388(SP)			
  raw.go:356		0x5f3daa		4c8ba424b8030000	MOVQ 0x3b8(SP), R12			
  raw.go:356		0x5f3db2		4c8bac24d0030000	MOVQ 0x3d0(SP), R13			
  raw.go:356		0x5f3dba		4d11ec			ADCQ R13, R12				
  raw.go:356		0x5f3dbd		4c89a42480030000	MOVQ R12, 0x380(SP)			
  raw.go:359		0x5f3dc5		4c8bac24c8030000	MOVQ 0x3c8(SP), R13			
  raw.go:359		0x5f3dcd		4c8bbc24e0030000	MOVQ 0x3e0(SP), R15			
  raw.go:359		0x5f3dd5		4d11fd			ADCQ R15, R13				
  raw.go:359		0x5f3dd8		4c89ac2478030000	MOVQ R13, 0x378(SP)			
  raw.go:362		0x5f3de0		4c8bbc24d8030000	MOVQ 0x3d8(SP), R15			
  raw.go:329		0x5f3de8		4c89c0			MOVQ R8, AX				
  raw.go:362		0x5f3deb		4c8b8424f0030000	MOVQ 0x3f0(SP), R8			
  raw.go:362		0x5f3df3		4d11c7			ADCQ R8, R15				
  raw.go:362		0x5f3df6		4c89bc2470030000	MOVQ R15, 0x370(SP)			
  raw.go:363		0x5f3dfe		4c8b8424e8030000	MOVQ 0x3e8(SP), R8			
  raw.go:363		0x5f3e06		4983d000		ADCQ $0x0, R8				
  raw.go:363		0x5f3e0a		4c89842468030000	MOVQ R8, 0x368(SP)			
  raw.go:366		0x5f3e12		4c8b8424a0030000	MOVQ 0x3a0(SP), R8			
  raw.go:366		0x5f3e1a		4901d0			ADDQ DX, R8				
  raw.go:369		0x5f3e1d		4911d9			ADCQ BX, R9				
  raw.go:372		0x5f3e20		4911fb			ADCQ DI, R11				
  raw.go:375		0x5f3e23		4911f4			ADCQ SI, R12				
  raw.go:378		0x5f3e26		4911cd			ADCQ CX, R13				
  raw.go:381		0x5f3e29		4d11d7			ADCQ R10, R15				
  raw.go:384		0x5f3e2c		4c8b942468030000	MOVQ 0x368(SP), R10			
  raw.go:384		0x5f3e34		4911c2			ADCQ AX, R10				
  raw.go:384		0x5f3e37		4c89942460030000	MOVQ R10, 0x360(SP)			
  raw.go:386		0x5f3e3f		4c89c0			MOVQ R8, AX				
  raw.go:386		0x5f3e42		48b90100000001000000	MOVQ $0x100000001, CX			
  raw.go:386		0x5f3e4c		48f7e1			MULQ CX					
  raw.go:386		0x5f3e4f		4889842458030000	MOVQ AX, 0x358(SP)			
  raw.go:395		0x5f3e57		48c7c2ffffffff		MOVQ $-0x1, DX				
  raw.go:395		0x5f3e5e		48f7e2			MULQ DX					
  raw.go:392		0x5f3e61		4889842450030000	MOVQ AX, 0x350(SP)			
  raw.go:395		0x5f3e69		4889942448030000	MOVQ DX, 0x348(SP)			
  raw.go:398		0x5f3e71		488b842458030000	MOVQ 0x358(SP), AX			
  raw.go:398		0x5f3e79		48c7c1feffffff		MOVQ $-0x2, CX				
  raw.go:398		0x5f3e80		48f7e1			MULQ CX					
  raw.go:398		0x5f3e83		4889942438030000	MOVQ DX, 0x338(SP)			
  raw.go:398		0x5f3e8b		4889842440030000	MOVQ AX, 0x340(SP)			
  raw.go:401		0x5f3e93		488b842458030000	MOVQ 0x358(SP), AX			
  raw.go:401		0x5f3e9b		48b900000000ffffffff	MOVQ $0xffffffff00000000, CX		
  raw.go:401		0x5f3ea5		48f7e1			MULQ CX					
  raw.go:401		0x5f3ea8		4889942428030000	MOVQ DX, 0x328(SP)			
  raw.go:401		0x5f3eb0		4889842430030000	MOVQ AX, 0x330(SP)			
  raw.go:404		0x5f3eb8		488b842458030000	MOVQ 0x358(SP), AX			
  raw.go:404		0x5f3ec0		b9ffffffff		MOVL $-0x1, CX				
  raw.go:404		0x5f3ec5		48f7e1			MULQ CX					
  raw.go:407		0x5f3ec8		488b8c2430030000	MOVQ 0x330(SP), CX			
  raw.go:407		0x5f3ed0		4801ca			ADDQ CX, DX				
  raw.go:410		0x5f3ed3		488b8c2428030000	MOVQ 0x328(SP), CX			
  raw.go:410		0x5f3edb		488bb42440030000	MOVQ 0x340(SP), SI			
  raw.go:410		0x5f3ee3		4811f1			ADCQ SI, CX				
  raw.go:413		0x5f3ee6		488bb42438030000	MOVQ 0x338(SP), SI			
  raw.go:413		0x5f3eee		488bbc2450030000	MOVQ 0x350(SP), DI			
  raw.go:413		0x5f3ef6		4811fe			ADCQ DI, SI				
  raw.go:416		0x5f3ef9		488b9c2448030000	MOVQ 0x348(SP), BX			
  raw.go:416		0x5f3f01		4811fb			ADCQ DI, BX				
  raw.go:419		0x5f3f04		4c8b942448030000	MOVQ 0x348(SP), R10			
  raw.go:419		0x5f3f0c		4c11d7			ADCQ R10, DI				
  raw.go:420		0x5f3f0f		4983d200		ADCQ $0x0, R10				
  raw.go:422		0x5f3f13		4901c0			ADDQ AX, R8				
  raw.go:425		0x5f3f16		4c11ca			ADCQ R9, DX				
  raw.go:425		0x5f3f19		4889942420030000	MOVQ DX, 0x320(SP)			
  raw.go:428		0x5f3f21		4c11d9			ADCQ R11, CX				
  raw.go:428		0x5f3f24		48898c2418030000	MOVQ CX, 0x318(SP)			
  raw.go:431		0x5f3f2c		4c11e6			ADCQ R12, SI				
  raw.go:431		0x5f3f2f		4889b42408030000	MOVQ SI, 0x308(SP)			
  raw.go:434		0x5f3f37		4c11eb			ADCQ R13, BX				
  raw.go:434		0x5f3f3a		48899c2400030000	MOVQ BX, 0x300(SP)			
  raw.go:437		0x5f3f42		4c11ff			ADCQ R15, DI				
  raw.go:437		0x5f3f45		4889bc24f8020000	MOVQ DI, 0x2f8(SP)			
  raw.go:440		0x5f3f4d		4c8b842460030000	MOVQ 0x360(SP), R8			
  raw.go:440		0x5f3f55		4d11c2			ADCQ R8, R10				
  raw.go:440		0x5f3f58		4c899424f0020000	MOVQ R10, 0x2f0(SP)			
  raw.go:440		0x5f3f60		410f92c0		SETB R8					
  raw.go:440		0x5f3f64		450fb6c0		MOVZX R8, R8				
  raw.go:366		0x5f3f68		4c8b8c24a0030000	MOVQ 0x3a0(SP), R9			
  raw.go:366		0x5f3f70		4c8b9c2428040000	MOVQ 0x428(SP), R11			
  raw.go:366		0x5f3f78		4d01d9			ADDQ R11, R9				
  raw.go:369		0x5f3f7b		4c8b8c2490030000	MOVQ 0x390(SP), R9			
  raw.go:369		0x5f3f83		4c8b9c2420040000	MOVQ 0x420(SP), R11			
  raw.go:369		0x5f3f8b		4d11d9			ADCQ R11, R9				
  raw.go:372		0x5f3f8e		4c8b8c2488030000	MOVQ 0x388(SP), R9			
  raw.go:372		0x5f3f96		4c8b9c2418040000	MOVQ 0x418(SP), R11			
  raw.go:372		0x5f3f9e		4d11d9			ADCQ R11, R9				
  raw.go:375		0x5f3fa1		4c8b8c2480030000	MOVQ 0x380(SP), R9			
  raw.go:375		0x5f3fa9		4c8b9c2410040000	MOVQ 0x410(SP), R11			
  raw.go:375		0x5f3fb1		4d11d9			ADCQ R11, R9				
  raw.go:378		0x5f3fb4		4c8b8c2478030000	MOVQ 0x378(SP), R9			
  raw.go:378		0x5f3fbc		4c8b9c2408040000	MOVQ 0x408(SP), R11			
  raw.go:378		0x5f3fc4		4d11d9			ADCQ R11, R9				
  raw.go:381		0x5f3fc7		4c8b8c2470030000	MOVQ 0x370(SP), R9			
  raw.go:381		0x5f3fcf		4c8b9c2400040000	MOVQ 0x400(SP), R11			
  raw.go:381		0x5f3fd7		4d11d9			ADCQ R11, R9				
  raw.go:384		0x5f3fda		4c8b8c2468030000	MOVQ 0x368(SP), R9			
  raw.go:384		0x5f3fe2		4c8b9c24f8030000	MOVQ 0x3f8(SP), R11			
  raw.go:384		0x5f3fea		4d11d9			ADCQ R11, R9				
  raw.go:441		0x5f3fed		4983d000		ADCQ $0x0, R8				
  raw.go:441		0x5f3ff1		4c898424e8020000	MOVQ R8, 0x2e8(SP)			
  raw.go:462		0x5f3ff9		4c8b8c2480020000	MOVQ 0x280(SP), R9			
  raw.go:462		0x5f4001		4c8b9c2498020000	MOVQ 0x298(SP), R11			
  raw.go:462		0x5f4009		4d01d9			ADDQ R11, R9				
  raw.go:462		0x5f400c		4c898c2478020000	MOVQ R9, 0x278(SP)			
  raw.go:465		0x5f4014		4c8b9c2490020000	MOVQ 0x290(SP), R11			
  raw.go:465		0x5f401c		4c8ba424a8020000	MOVQ 0x2a8(SP), R12			
  raw.go:465		0x5f4024		4d11e3			ADCQ R12, R11				
  raw.go:465		0x5f4027		4c899c2470020000	MOVQ R11, 0x270(SP)			
  raw.go:468		0x5f402f		4c8ba424a0020000	MOVQ 0x2a0(SP), R12			
  raw.go:468		0x5f4037		4c8bac24b8020000	MOVQ 0x2b8(SP), R13			
  raw.go:468		0x5f403f		4d11ec			ADCQ R13, R12				
  raw.go:468		0x5f4042		4c89a42468020000	MOVQ R12, 0x268(SP)			
  raw.go:471		0x5f404a		4c8bac24b0020000	MOVQ 0x2b0(SP), R13			
  raw.go:471		0x5f4052		4c8bbc24c8020000	MOVQ 0x2c8(SP), R15			
  raw.go:471		0x5f405a		4d11fd			ADCQ R15, R13				
  raw.go:471		0x5f405d		4c89ac2460020000	MOVQ R13, 0x260(SP)			
  raw.go:474		0x5f4065		4c8bbc24c0020000	MOVQ 0x2c0(SP), R15			
  raw.go:441		0x5f406d		4c89c0			MOVQ R8, AX				
  raw.go:474		0x5f4070		4c8b8424d8020000	MOVQ 0x2d8(SP), R8			
  raw.go:474		0x5f4078		4d11c7			ADCQ R8, R15				
  raw.go:474		0x5f407b		4c89bc2458020000	MOVQ R15, 0x258(SP)			
  raw.go:475		0x5f4083		4c8b8424d0020000	MOVQ 0x2d0(SP), R8			
  raw.go:475		0x5f408b		4983d000		ADCQ $0x0, R8				
  raw.go:475		0x5f408f		4c89842450020000	MOVQ R8, 0x250(SP)			
  raw.go:478		0x5f4097		4c8b842488020000	MOVQ 0x288(SP), R8			
  raw.go:478		0x5f409f		4901d0			ADDQ DX, R8				
  raw.go:481		0x5f40a2		4911c9			ADCQ CX, R9				
  raw.go:484		0x5f40a5		4911f3			ADCQ SI, R11				
  raw.go:487		0x5f40a8		4911dc			ADCQ BX, R12				
  raw.go:490		0x5f40ab		4911fd			ADCQ DI, R13				
  raw.go:493		0x5f40ae		4d11d7			ADCQ R10, R15				
  raw.go:496		0x5f40b1		4c8b942450020000	MOVQ 0x250(SP), R10			
  raw.go:496		0x5f40b9		4911c2			ADCQ AX, R10				
  raw.go:496		0x5f40bc		4c89942448020000	MOVQ R10, 0x248(SP)			
  raw.go:498		0x5f40c4		4c89c0			MOVQ R8, AX				
  raw.go:498		0x5f40c7		48bf0100000001000000	MOVQ $0x100000001, DI			
  raw.go:498		0x5f40d1		48f7e7			MULQ DI					
  raw.go:498		0x5f40d4		4889842440020000	MOVQ AX, 0x240(SP)			
  raw.go:507		0x5f40dc		48c7c2ffffffff		MOVQ $-0x1, DX				
  raw.go:507		0x5f40e3		48f7e2			MULQ DX					
  raw.go:501		0x5f40e6		4889842438020000	MOVQ AX, 0x238(SP)			
  raw.go:501		0x5f40ee		4889942430020000	MOVQ DX, 0x230(SP)			
  raw.go:510		0x5f40f6		488b842440020000	MOVQ 0x240(SP), AX			
  raw.go:510		0x5f40fe		48c7c7feffffff		MOVQ $-0x2, DI				
  raw.go:510		0x5f4105		48f7e7			MULQ DI					
  raw.go:510		0x5f4108		4889942420020000	MOVQ DX, 0x220(SP)			
  raw.go:510		0x5f4110		4889842428020000	MOVQ AX, 0x228(SP)			
  raw.go:513		0x5f4118		488b842440020000	MOVQ 0x240(SP), AX			
  raw.go:513		0x5f4120		48bf00000000ffffffff	MOVQ $0xffffffff00000000, DI		
  raw.go:513		0x5f412a		48f7e7			MULQ DI					
  raw.go:513		0x5f412d		4889942410020000	MOVQ DX, 0x210(SP)			
  raw.go:513		0x5f4135		4889842418020000	MOVQ AX, 0x218(SP)			
  raw.go:516		0x5f413d		488b842440020000	MOVQ 0x240(SP), AX			
  raw.go:516		0x5f4145		bfffffffff		MOVL $-0x1, DI				
  raw.go:516		0x5f414a		48f7e7			MULQ DI					
  raw.go:519		0x5f414d		488bbc2418020000	MOVQ 0x218(SP), DI			
  raw.go:519		0x5f4155		4801fa			ADDQ DI, DX				
  raw.go:522		0x5f4158		488bbc2410020000	MOVQ 0x210(SP), DI			
  raw.go:522		0x5f4160		488b9c2428020000	MOVQ 0x228(SP), BX			
  raw.go:522		0x5f4168		4811df			ADCQ BX, DI				
  raw.go:525		0x5f416b		488b9c2420020000	MOVQ 0x220(SP), BX			
  raw.go:525		0x5f4173		488bb42438020000	MOVQ 0x238(SP), SI			
  raw.go:525		0x5f417b		4811f3			ADCQ SI, BX				
  raw.go:528		0x5f417e		488b8c2430020000	MOVQ 0x230(SP), CX			
  raw.go:528		0x5f4186		4811ce			ADCQ CX, SI				
  raw.go:531		0x5f4189		4c8b942438020000	MOVQ 0x238(SP), R10			
  raw.go:531		0x5f4191		4911ca			ADCQ CX, R10				
  raw.go:532		0x5f4194		4883d100		ADCQ $0x0, CX				
  raw.go:534		0x5f4198		4901c0			ADDQ AX, R8				
  raw.go:537		0x5f419b		4c11ca			ADCQ R9, DX				
  raw.go:537		0x5f419e		48899424f8010000	MOVQ DX, 0x1f8(SP)			
  raw.go:540		0x5f41a6		4c11df			ADCQ R11, DI				
  raw.go:540		0x5f41a9		4889bc24f0010000	MOVQ DI, 0x1f0(SP)			
  raw.go:543		0x5f41b1		4c11e3			ADCQ R12, BX				
  raw.go:543		0x5f41b4		48899c24e8010000	MOVQ BX, 0x1e8(SP)			
  raw.go:546		0x5f41bc		4c11ee			ADCQ R13, SI				
  raw.go:546		0x5f41bf		4889b424e0010000	MOVQ SI, 0x1e0(SP)			
  raw.go:549		0x5f41c7		4d11fa			ADCQ R15, R10				
  raw.go:549		0x5f41ca		4c899424d8010000	MOVQ R10, 0x1d8(SP)			
  raw.go:552		0x5f41d2		4c8b842448020000	MOVQ 0x248(SP), R8			
  raw.go:552		0x5f41da		4c11c1			ADCQ R8, CX				
  raw.go:552		0x5f41dd		48898c24d0010000	MOVQ CX, 0x1d0(SP)			
  raw.go:552		0x5f41e5		410f92c0		SETB R8					
  raw.go:552		0x5f41e9		450fb6c0		MOVZX R8, R8				
  raw.go:478		0x5f41ed		4c8b8c2488020000	MOVQ 0x288(SP), R9			
  raw.go:478		0x5f41f5		4c8b9c2420030000	MOVQ 0x320(SP), R11			
  raw.go:478		0x5f41fd		4d01d9			ADDQ R11, R9				
  raw.go:481		0x5f4200		4c8b8c2478020000	MOVQ 0x278(SP), R9			
  raw.go:481		0x5f4208		4c8b9c2418030000	MOVQ 0x318(SP), R11			
  raw.go:481		0x5f4210		4d11d9			ADCQ R11, R9				
  raw.go:484		0x5f4213		4c8b8c2470020000	MOVQ 0x270(SP), R9			
  raw.go:484		0x5f421b		4c8b9c2408030000	MOVQ 0x308(SP), R11			
  raw.go:484		0x5f4223		4d11d9			ADCQ R11, R9				
  raw.go:487		0x5f4226		4c8b8c2468020000	MOVQ 0x268(SP), R9			
  raw.go:487		0x5f422e		4c8b9c2400030000	MOVQ 0x300(SP), R11			
  raw.go:487		0x5f4236		4d11d9			ADCQ R11, R9				
  raw.go:490		0x5f4239		4c8b8c2460020000	MOVQ 0x260(SP), R9			
  raw.go:490		0x5f4241		4c8b9c24f8020000	MOVQ 0x2f8(SP), R11			
  raw.go:490		0x5f4249		4d11d9			ADCQ R11, R9				
  raw.go:493		0x5f424c		4c8b8c2458020000	MOVQ 0x258(SP), R9			
  raw.go:493		0x5f4254		4c8b9c24f0020000	MOVQ 0x2f0(SP), R11			
  raw.go:493		0x5f425c		4d11d9			ADCQ R11, R9				
  raw.go:496		0x5f425f		4c8b8c2450020000	MOVQ 0x250(SP), R9			
  raw.go:496		0x5f4267		4c8b9c24e8020000	MOVQ 0x2e8(SP), R11			
  raw.go:496		0x5f426f		4d11d9			ADCQ R11, R9				
  raw.go:553		0x5f4272		4983d000		ADCQ $0x0, R8				
  raw.go:553		0x5f4276		4c898424c8010000	MOVQ R8, 0x1c8(SP)			
  raw.go:574		0x5f427e		4c8b8c2460010000	MOVQ 0x160(SP), R9			
  raw.go:574		0x5f4286		4c8b9c2478010000	MOVQ 0x178(SP), R11			
  raw.go:574		0x5f428e		4d01d9			ADDQ R11, R9				
  raw.go:574		0x5f4291		4c898c2458010000	MOVQ R9, 0x158(SP)			
  raw.go:577		0x5f4299		4c8b9c2470010000	MOVQ 0x170(SP), R11			
  raw.go:577		0x5f42a1		4c8ba42488010000	MOVQ 0x188(SP), R12			
  raw.go:577		0x5f42a9		4d11e3			ADCQ R12, R11				
  raw.go:577		0x5f42ac		4c899c2448010000	MOVQ R11, 0x148(SP)			
  raw.go:580		0x5f42b4		4c8ba42480010000	MOVQ 0x180(SP), R12			
  raw.go:580		0x5f42bc		4c8bac2498010000	MOVQ 0x198(SP), R13			
  raw.go:580		0x5f42c4		4d11ec			ADCQ R13, R12				
  raw.go:580		0x5f42c7		4c89a42440010000	MOVQ R12, 0x140(SP)			
  raw.go:583		0x5f42cf		4c8bac2490010000	MOVQ 0x190(SP), R13			
  raw.go:583		0x5f42d7		4c8bbc24b0010000	MOVQ 0x1b0(SP), R15			
  raw.go:583		0x5f42df		4d11fd			ADCQ R15, R13				
  raw.go:583		0x5f42e2		4c89ac2438010000	MOVQ R13, 0x138(SP)			
  raw.go:586		0x5f42ea		4c8bbc24a0010000	MOVQ 0x1a0(SP), R15			
  raw.go:553		0x5f42f2		4c89c0			MOVQ R8, AX				
  raw.go:586		0x5f42f5		4c8b8424c0010000	MOVQ 0x1c0(SP), R8			
  raw.go:586		0x5f42fd		4d11c7			ADCQ R8, R15				
  raw.go:586		0x5f4300		4c89bc2430010000	MOVQ R15, 0x130(SP)			
  raw.go:587		0x5f4308		4c8b8424b8010000	MOVQ 0x1b8(SP), R8			
  raw.go:587		0x5f4310		4983d000		ADCQ $0x0, R8				
  raw.go:587		0x5f4314		4c89842428010000	MOVQ R8, 0x128(SP)			
  raw.go:590		0x5f431c		4c8b842468010000	MOVQ 0x168(SP), R8			
  raw.go:590		0x5f4324		4901d0			ADDQ DX, R8				
  raw.go:593		0x5f4327		4911f9			ADCQ DI, R9				
  raw.go:596		0x5f432a		4911db			ADCQ BX, R11				
  raw.go:599		0x5f432d		4911f4			ADCQ SI, R12				
  raw.go:602		0x5f4330		4d11d5			ADCQ R10, R13				
  raw.go:605		0x5f4333		4911cf			ADCQ CX, R15				
  raw.go:608		0x5f4336		488b8c2428010000	MOVQ 0x128(SP), CX			
  raw.go:608		0x5f433e		4811c1			ADCQ AX, CX				
  raw.go:608		0x5f4341		48898c2410010000	MOVQ CX, 0x110(SP)			
  raw.go:610		0x5f4349		4c89c0			MOVQ R8, AX				
  raw.go:610		0x5f434c		49ba0100000001000000	MOVQ $0x100000001, R10			
  raw.go:610		0x5f4356		49f7e2			MULQ R10				
  raw.go:613		0x5f4359		48c7c2ffffffff		MOVQ $-0x1, DX				
  raw.go:610		0x5f4360		4989c2			MOVQ AX, R10				
  raw.go:613		0x5f4363		48f7e2			MULQ DX					
  raw.go:619		0x5f4366		4889842408010000	MOVQ AX, 0x108(SP)			
  raw.go:619		0x5f436e		4889942400010000	MOVQ DX, 0x100(SP)			
  raw.go:622		0x5f4376		4c89d0			MOVQ R10, AX				
  raw.go:622		0x5f4379		48c7c6feffffff		MOVQ $-0x2, SI				
  raw.go:622		0x5f4380		48f7e6			MULQ SI					
  raw.go:622		0x5f4383		48899424f8000000	MOVQ DX, 0xf8(SP)			
  raw.go:622		0x5f438b		4889c6			MOVQ AX, SI				
  raw.go:625		0x5f438e		4c89d0			MOVQ R10, AX				
  raw.go:625		0x5f4391		48bb00000000ffffffff	MOVQ $0xffffffff00000000, BX		
  raw.go:625		0x5f439b		48f7e3			MULQ BX					
  raw.go:625		0x5f439e		48898424f0000000	MOVQ AX, 0xf0(SP)			
  raw.go:628		0x5f43a6		4c89d0			MOVQ R10, AX				
  raw.go:628		0x5f43a9		bbffffffff		MOVL $-0x1, BX				
  raw.go:625		0x5f43ae		4989d2			MOVQ DX, R10				
  raw.go:628		0x5f43b1		48f7e3			MULQ BX					
  raw.go:631		0x5f43b4		488b9c24f0000000	MOVQ 0xf0(SP), BX			
  raw.go:631		0x5f43bc		4801da			ADDQ BX, DX				
  raw.go:634		0x5f43bf		4911f2			ADCQ SI, R10				
  raw.go:637		0x5f43c2		488b9c24f8000000	MOVQ 0xf8(SP), BX			
  raw.go:637		0x5f43ca		488bb42408010000	MOVQ 0x108(SP), SI			
  raw.go:637		0x5f43d2		4811f3			ADCQ SI, BX				
  raw.go:640		0x5f43d5		488bbc2400010000	MOVQ 0x100(SP), DI			
  raw.go:640		0x5f43dd		4811fe			ADCQ DI, SI				
  raw.go:643		0x5f43e0		488b8c2408010000	MOVQ 0x108(SP), CX			
  raw.go:643		0x5f43e8		4811f9			ADCQ DI, CX				
  raw.go:644		0x5f43eb		4883d700		ADCQ $0x0, DI				
  raw.go:646		0x5f43ef		4901c0			ADDQ AX, R8				
  raw.go:649		0x5f43f2		4c11ca			ADCQ R9, DX				
  raw.go:652		0x5f43f5		4d11da			ADCQ R11, R10				
  raw.go:655		0x5f43f8		4c11e3			ADCQ R12, BX				
  raw.go:658		0x5f43fb		4c11ee			ADCQ R13, SI				
  raw.go:661		0x5f43fe		4c11f9			ADCQ R15, CX				
  raw.go:664		0x5f4401		4c8b842410010000	MOVQ 0x110(SP), R8			
  raw.go:664		0x5f4409		4c11c7			ADCQ R8, DI				
  raw.go:664		0x5f440c		410f92c0		SETB R8					
  raw.go:664		0x5f4410		450fb6c0		MOVZX R8, R8				
  raw.go:590		0x5f4414		4c8b8c2468010000	MOVQ 0x168(SP), R9			
  raw.go:590		0x5f441c		4c8b9c24f8010000	MOVQ 0x1f8(SP), R11			
  raw.go:590		0x5f4424		4d01d9			ADDQ R11, R9				
  raw.go:593		0x5f4427		4c8b8c2458010000	MOVQ 0x158(SP), R9			
  raw.go:593		0x5f442f		4c8b9c24f0010000	MOVQ 0x1f0(SP), R11			
  raw.go:593		0x5f4437		4d11d9			ADCQ R11, R9				
  raw.go:596		0x5f443a		4c8b8c2448010000	MOVQ 0x148(SP), R9			
  raw.go:596		0x5f4442		4c8b9c24e8010000	MOVQ 0x1e8(SP), R11			
  raw.go:596		0x5f444a		4d11d9			ADCQ R11, R9				
  raw.go:599		0x5f444d		4c8b8c2440010000	MOVQ 0x140(SP), R9			
  raw.go:599		0x5f4455		4c8b9c24e0010000	MOVQ 0x1e0(SP), R11			
  raw.go:599		0x5f445d		4d11d9			ADCQ R11, R9				
  raw.go:602		0x5f4460		4c8b8c2438010000	MOVQ 0x138(SP), R9			
  raw.go:602		0x5f4468		4c8b9c24d8010000	MOVQ 0x1d8(SP), R11			
  raw.go:602		0x5f4470		4d11d9			ADCQ R11, R9				
  raw.go:605		0x5f4473		4c8b8c2430010000	MOVQ 0x130(SP), R9			
  raw.go:605		0x5f447b		4c8b9c24d0010000	MOVQ 0x1d0(SP), R11			
  raw.go:605		0x5f4483		4d11d9			ADCQ R11, R9				
  raw.go:608		0x5f4486		4c8b8c2428010000	MOVQ 0x128(SP), R9			
  raw.go:608		0x5f448e		4c8b9c24c8010000	MOVQ 0x1c8(SP), R11			
  raw.go:608		0x5f4496		4d11d9			ADCQ R11, R9				
  raw.go:665		0x5f4499		4983d000		ADCQ $0x0, R8				
  raw.go:668		0x5f449d		41b9ffffffff		MOVL $-0x1, R9				
  raw.go:668		0x5f44a3		4989d3			MOVQ DX, R11				
  raw.go:668		0x5f44a6		4c29ca			SUBQ R9, DX				
  raw.go:671		0x5f44a9		49b900000000ffffffff	MOVQ $0xffffffff00000000, R9		
  raw.go:671		0x5f44b3		4d89d4			MOVQ R10, R12				
  raw.go:671		0x5f44b6		4d19ca			SBBQ R9, R10				
  raw.go:674		0x5f44b9		4989d9			MOVQ BX, R9				
  raw.go:674		0x5f44bc		4883dbfe		SBBQ $-0x2, BX				
  raw.go:677		0x5f44c0		4989f5			MOVQ SI, R13				
  raw.go:677		0x5f44c3		4883deff		SBBQ $-0x1, SI				
  raw.go:680		0x5f44c7		4989cf			MOVQ CX, R15				
  raw.go:680		0x5f44ca		4883d9ff		SBBQ $-0x1, CX				
  raw.go:683		0x5f44ce		4889f8			MOVQ DI, AX				
  raw.go:683		0x5f44d1		4883dfff		SBBQ $-0x1, DI				
  raw.go:685		0x5f44d5		4983d800		SBBQ $0x0, R8				
  raw.go:685		0x5f44d9		410f92c0		SETB R8					
  raw.go:685		0x5f44dd		450fb6c0		MOVZX R8, R8				
  common.go:7		0x5f44e1		49f7d8			NEGQ R8					
  common.go:7		0x5f44e4		4c898424b0050000	MOVQ R8, 0x5b0(SP)			
  common.go:8		0x5f44ec		4d21c3			ANDQ R8, R11				
  common.go:8		0x5f44ef		49f7d0			NOTQ R8					
  common.go:8		0x5f44f2		4c21c2			ANDQ R8, DX				
  common.go:8		0x5f44f5		4c09da			ORQ R11, DX				
  raw.go:698		0x5f44f8		4c8b9c24e0050000	MOVQ 0x5e0(SP), R11			
  raw.go:698		0x5f4500		498913			MOVQ DX, 0(R11)				
  common.go:8		0x5f4503		488b9424b0050000	MOVQ 0x5b0(SP), DX			
  common.go:8		0x5f450b		4921d4			ANDQ DX, R12				
  common.go:8		0x5f450e		4d21c2			ANDQ R8, R10				
  common.go:8		0x5f4511		4d09e2			ORQ R12, R10				
  raw.go:699		0x5f4514		4d895308		MOVQ R10, 0x8(R11)			
  common.go:8		0x5f4518		4921d1			ANDQ DX, R9				
  common.go:8		0x5f451b		4c21c3			ANDQ R8, BX				
  common.go:8		0x5f451e		4c09cb			ORQ R9, BX				
  raw.go:700		0x5f4521		49895b10		MOVQ BX, 0x10(R11)			
  common.go:8		0x5f4525		4921d5			ANDQ DX, R13				
  common.go:8		0x5f4528		4c21c6			ANDQ R8, SI				
  common.go:8		0x5f452b		4c09ee			ORQ R13, SI				
  raw.go:701		0x5f452e		49897318		MOVQ SI, 0x18(R11)			
  common.go:8		0x5f4532		4921d7			ANDQ DX, R15				
  common.go:8		0x5f4535		4c21c1			ANDQ R8, CX				
  common.go:8		0x5f4538		4c09f9			ORQ R15, CX				
  raw.go:702		0x5f453b		49894b20		MOVQ CX, 0x20(R11)			
  common.go:8		0x5f453f		4821c2			ANDQ AX, DX				
  common.go:8		0x5f4542		4921f8			ANDQ DI, R8				
  common.go:8		0x5f4545		4c09c2			ORQ R8, DX				
  raw.go:703		0x5f4548		49895328		MOVQ DX, 0x28(R11)			
  raw.go:704		0x5f454c		c9			LEAVE					
  raw.go:704		0x5f454d		c3			RET					
  raw.go:9		0x5f454e		4889442408		MOVQ AX, 0x8(SP)			
  raw.go:9		0x5f4553		48895c2410		MOVQ BX, 0x10(SP)			
  raw.go:9		0x5f4558		48894c2418		MOVQ CX, 0x18(SP)			
  raw.go:9		0x5f455d		0f1f00			NOPL 0(AX)				
  raw.go:9		0x5f4560		e8db85e9ff		CALL runtime.morestack_noctxt.abi0(SB)	
  raw.go:9		0x5f4565		488b442408		MOVQ 0x8(SP), AX			
  raw.go:9		0x5f456a		488b5c2410		MOVQ 0x10(SP), BX			
  raw.go:9		0x5f456f		488b4c2418		MOVQ 0x18(SP), CX			
  raw.go:9		0x5f4574		e9c7edffff		JMP example.com/p384issue.RawMul(SB)	
