TEXT example.com/hashsumreturn.barrier(SB) /home/exedev/crypto-audit/round4/issues/hash-sum-return-buffer/repro.go
  repro.go:20		0x535580		488b4868		MOVQ 0x68(AX), CX	
  repro.go:20		0x535584		0108			ADDL CX, 0(AX)		
  repro.go:20		0x535586		c3			RET			

TEXT example.com/hashsumreturn.ReturnLocal(SB) /home/exedev/crypto-audit/round4/issues/hash-sum-return-buffer/repro.go
  repro.go:23		0x5355a0		493b6610		CMPQ SP, 0x10(R14)				
  repro.go:23		0x5355a4		0f869d000000		JBE 0x535647					
  repro.go:23		0x5355aa		55			PUSHQ BP					
  repro.go:23		0x5355ab		4889e5			MOVQ SP, BP					
  repro.go:23		0x5355ae		4883ec10		SUBQ $0x10, SP					
  repro.go:25		0x5355b2		4889442440		MOVQ AX, 0x40(SP)				
  repro.go:23		0x5355b7		488d4c2420		LEAQ 0x20(SP), CX				
  repro.go:23		0x5355bc		440f1139		MOVUPS X15, 0(CX)				
  repro.go:23		0x5355c0		440f117910		MOVUPS X15, 0x10(CX)				
  repro.go:24		0x5355c5		e8b6ffffff		CALL example.com/hashsumreturn.barrier(SB)	
  repro.go:25		0x5355ca		488b4c2440		MOVQ 0x40(SP), CX				
  repro.go:25		0x5355cf		4883796000		CMPQ 0x60(CX), $0x0				
  repro.go:25		0x5355d4		755d			JNE 0x535633					
  repro.go:26		0x5355d6		488d442420		LEAQ 0x20(SP), AX				
  repro.go:26		0x5355db		440f1138		MOVUPS X15, 0(AX)				
  repro.go:26		0x5355df		440f117810		MOVUPS X15, 0x10(AX)				
  repro.go:27		0x5355e4		8b01			MOVL 0(CX), AX					
  binary.go:187		0x5355e6		0fc8			BSWAP AX					
  binary.go:184		0x5355e8		89442420		MOVL AX, 0x20(SP)				
  repro.go:28		0x5355ec		8b4104			MOVL 0x4(CX), AX				
  binary.go:187		0x5355ef		0fc8			BSWAP AX					
  binary.go:184		0x5355f1		89442424		MOVL AX, 0x24(SP)				
  repro.go:29		0x5355f5		8b4108			MOVL 0x8(CX), AX				
  binary.go:187		0x5355f8		0fc8			BSWAP AX					
  binary.go:184		0x5355fa		89442428		MOVL AX, 0x28(SP)				
  repro.go:30		0x5355fe		8b410c			MOVL 0xc(CX), AX				
  binary.go:187		0x535601		0fc8			BSWAP AX					
  binary.go:184		0x535603		8944242c		MOVL AX, 0x2c(SP)				
  repro.go:31		0x535607		8b4110			MOVL 0x10(CX), AX				
  binary.go:187		0x53560a		0fc8			BSWAP AX					
  binary.go:184		0x53560c		89442430		MOVL AX, 0x30(SP)				
  repro.go:32		0x535610		8b4114			MOVL 0x14(CX), AX				
  binary.go:187		0x535613		0fc8			BSWAP AX					
  binary.go:184		0x535615		89442434		MOVL AX, 0x34(SP)				
  repro.go:33		0x535619		8b4118			MOVL 0x18(CX), AX				
  binary.go:187		0x53561c		0fc8			BSWAP AX					
  binary.go:184		0x53561e		89442438		MOVL AX, 0x38(SP)				
  repro.go:34		0x535622		80797000		CMPB 0x70(CX), $0x0				
  repro.go:34		0x535626		7509			JNE 0x535631					
  repro.go:34		0x535628		8b411c			MOVL 0x1c(CX), AX				
  binary.go:187		0x53562b		0fc8			BSWAP AX					
  binary.go:184		0x53562d		8944243c		MOVL AX, 0x3c(SP)				
  repro.go:35		0x535631		c9			LEAVE						
  repro.go:35		0x535632		c3			RET						
  repro.go:25		0x535633		488d05fe021500		LEAQ 0x1502fe(IP), AX				
  repro.go:25		0x53563a		488d1d7f280100		LEAQ 0x1287f(IP), BX				
  repro.go:25		0x535641		e8faeaf4ff		CALL runtime.gopanic(SB)			
  repro.go:25		0x535646		90			NOPL						
  repro.go:23		0x535647		4889442428		MOVQ AX, 0x28(SP)				
  repro.go:23		0x53564c		e8af3cf5ff		CALL runtime.morestack_noctxt.abi0(SB)		
  repro.go:23		0x535651		488b442428		MOVQ 0x28(SP), AX				
  repro.go:23		0x535656		e945ffffff		JMP example.com/hashsumreturn.ReturnLocal(SB)	

TEXT example.com/hashsumreturn.ReturnNamed(SB) /home/exedev/crypto-audit/round4/issues/hash-sum-return-buffer/repro.go
  repro.go:39		0x535660		493b6610		CMPQ SP, 0x10(R14)				
  repro.go:39		0x535664		0f868f000000		JBE 0x5356f9					
  repro.go:39		0x53566a		55			PUSHQ BP					
  repro.go:39		0x53566b		4889e5			MOVQ SP, BP					
  repro.go:39		0x53566e		4883ec10		SUBQ $0x10, SP					
  repro.go:41		0x535672		4889442440		MOVQ AX, 0x40(SP)				
  repro.go:39		0x535677		488d4c2420		LEAQ 0x20(SP), CX				
  repro.go:39		0x53567c		440f1139		MOVUPS X15, 0(CX)				
  repro.go:39		0x535680		440f117910		MOVUPS X15, 0x10(CX)				
  repro.go:40		0x535685		e8f6feffff		CALL example.com/hashsumreturn.barrier(SB)	
  repro.go:41		0x53568a		488b4c2440		MOVQ 0x40(SP), CX				
  repro.go:41		0x53568f		4883796000		CMPQ 0x60(CX), $0x0				
  repro.go:41		0x535694		754f			JNE 0x5356e5					
  repro.go:42		0x535696		8b01			MOVL 0(CX), AX					
  binary.go:187		0x535698		0fc8			BSWAP AX					
  binary.go:184		0x53569a		89442420		MOVL AX, 0x20(SP)				
  repro.go:43		0x53569e		8b4104			MOVL 0x4(CX), AX				
  binary.go:187		0x5356a1		0fc8			BSWAP AX					
  binary.go:184		0x5356a3		89442424		MOVL AX, 0x24(SP)				
  repro.go:44		0x5356a7		8b4108			MOVL 0x8(CX), AX				
  binary.go:187		0x5356aa		0fc8			BSWAP AX					
  binary.go:184		0x5356ac		89442428		MOVL AX, 0x28(SP)				
  repro.go:45		0x5356b0		8b410c			MOVL 0xc(CX), AX				
  binary.go:187		0x5356b3		0fc8			BSWAP AX					
  binary.go:184		0x5356b5		8944242c		MOVL AX, 0x2c(SP)				
  repro.go:46		0x5356b9		8b4110			MOVL 0x10(CX), AX				
  binary.go:187		0x5356bc		0fc8			BSWAP AX					
  binary.go:184		0x5356be		89442430		MOVL AX, 0x30(SP)				
  repro.go:47		0x5356c2		8b4114			MOVL 0x14(CX), AX				
  binary.go:187		0x5356c5		0fc8			BSWAP AX					
  binary.go:184		0x5356c7		89442434		MOVL AX, 0x34(SP)				
  repro.go:48		0x5356cb		8b4118			MOVL 0x18(CX), AX				
  binary.go:187		0x5356ce		0fc8			BSWAP AX					
  binary.go:184		0x5356d0		89442438		MOVL AX, 0x38(SP)				
  repro.go:49		0x5356d4		80797000		CMPB 0x70(CX), $0x0				
  repro.go:49		0x5356d8		7509			JNE 0x5356e3					
  repro.go:49		0x5356da		8b411c			MOVL 0x1c(CX), AX				
  binary.go:187		0x5356dd		0fc8			BSWAP AX					
  binary.go:184		0x5356df		8944243c		MOVL AX, 0x3c(SP)				
  repro.go:50		0x5356e3		c9			LEAVE						
  repro.go:50		0x5356e4		c3			RET						
  repro.go:41		0x5356e5		488d054c021500		LEAQ 0x15024c(IP), AX				
  repro.go:41		0x5356ec		488d1dcd270100		LEAQ 0x127cd(IP), BX				
  repro.go:41		0x5356f3		e848eaf4ff		CALL runtime.gopanic(SB)			
  repro.go:41		0x5356f8		90			NOPL						
  repro.go:39		0x5356f9		4889442428		MOVQ AX, 0x28(SP)				
  repro.go:39		0x5356fe		6690			NOPW						
  repro.go:39		0x535700		e8fb3bf5ff		CALL runtime.morestack_noctxt.abi0(SB)		
  repro.go:39		0x535705		488b442428		MOVQ 0x28(SP), AX				
  repro.go:39		0x53570a		e951ffffff		JMP example.com/hashsumreturn.ReturnNamed(SB)	

TEXT example.com/hashsumreturn.Into(SB) /home/exedev/crypto-audit/round4/issues/hash-sum-return-buffer/repro.go
  repro.go:57		0x535720		493b6610		CMPQ SP, 0x10(R14)				
  repro.go:57		0x535724		0f8686000000		JBE 0x5357b0					
  repro.go:57		0x53572a		55			PUSHQ BP					
  repro.go:57		0x53572b		4889e5			MOVQ SP, BP					
  repro.go:57		0x53572e		4883ec10		SUBQ $0x10, SP					
  repro.go:59		0x535732		4889442420		MOVQ AX, 0x20(SP)				
  repro.go:59		0x535737		48895c2428		MOVQ BX, 0x28(SP)				
  repro.go:58		0x53573c		0f1f4000		NOPL 0(AX)					
  repro.go:58		0x535740		e83bfeffff		CALL example.com/hashsumreturn.barrier(SB)	
  repro.go:59		0x535745		488b4c2420		MOVQ 0x20(SP), CX				
  repro.go:59		0x53574a		4883796000		CMPQ 0x60(CX), $0x0				
  repro.go:59		0x53574f		754b			JNE 0x53579c					
  repro.go:60		0x535751		8b01			MOVL 0(CX), AX					
  binary.go:187		0x535753		0fc8			BSWAP AX					
  repro.go:60		0x535755		488b542428		MOVQ 0x28(SP), DX				
  repro.go:60		0x53575a		8902			MOVL AX, 0(DX)					
  repro.go:61		0x53575c		8b4104			MOVL 0x4(CX), AX				
  binary.go:187		0x53575f		0fc8			BSWAP AX					
  binary.go:184		0x535761		894204			MOVL AX, 0x4(DX)				
  repro.go:62		0x535764		8b4108			MOVL 0x8(CX), AX				
  binary.go:187		0x535767		0fc8			BSWAP AX					
  binary.go:184		0x535769		894208			MOVL AX, 0x8(DX)				
  repro.go:63		0x53576c		8b410c			MOVL 0xc(CX), AX				
  binary.go:187		0x53576f		0fc8			BSWAP AX					
  binary.go:184		0x535771		89420c			MOVL AX, 0xc(DX)				
  repro.go:64		0x535774		8b4110			MOVL 0x10(CX), AX				
  binary.go:187		0x535777		0fc8			BSWAP AX					
  binary.go:184		0x535779		894210			MOVL AX, 0x10(DX)				
  repro.go:65		0x53577c		8b4114			MOVL 0x14(CX), AX				
  binary.go:187		0x53577f		0fc8			BSWAP AX					
  binary.go:184		0x535781		894214			MOVL AX, 0x14(DX)				
  repro.go:66		0x535784		8b4118			MOVL 0x18(CX), AX				
  binary.go:187		0x535787		0fc8			BSWAP AX					
  binary.go:184		0x535789		894218			MOVL AX, 0x18(DX)				
  repro.go:67		0x53578c		80797000		CMPB 0x70(CX), $0x0				
  repro.go:67		0x535790		7508			JNE 0x53579a					
  repro.go:67		0x535792		8b411c			MOVL 0x1c(CX), AX				
  binary.go:187		0x535795		0fc8			BSWAP AX					
  binary.go:184		0x535797		89421c			MOVL AX, 0x1c(DX)				
  repro.go:68		0x53579a		c9			LEAVE						
  repro.go:68		0x53579b		c3			RET						
  repro.go:59		0x53579c		488d0595011500		LEAQ 0x150195(IP), AX				
  repro.go:59		0x5357a3		488d1d16270100		LEAQ 0x12716(IP), BX				
  repro.go:59		0x5357aa		e891e9f4ff		CALL runtime.gopanic(SB)			
  repro.go:59		0x5357af		90			NOPL						
  repro.go:57		0x5357b0		4889442408		MOVQ AX, 0x8(SP)				
  repro.go:57		0x5357b5		48895c2410		MOVQ BX, 0x10(SP)				
  repro.go:57		0x5357ba		e8413bf5ff		CALL runtime.morestack_noctxt.abi0(SB)		
  repro.go:57		0x5357bf		488b442408		MOVQ 0x8(SP), AX				
  repro.go:57		0x5357c4		488b5c2410		MOVQ 0x10(SP), BX				
  repro.go:57		0x5357c9		e952ffffff		JMP example.com/hashsumreturn.Into(SB)		

TEXT example.com/hashsumreturn.SumLocal(SB) /home/exedev/crypto-audit/round4/issues/hash-sum-return-buffer/repro.go
  repro.go:71		0x5357e0		4c8d6424a0		LEAQ -0x60(SP), R12				
  repro.go:71		0x5357e5		4d3b6610		CMPQ R12, 0x10(R14)				
  repro.go:71		0x5357e9		0f86c5010000		JBE 0x5359b4					
  repro.go:71		0x5357ef		55			PUSHQ BP					
  repro.go:71		0x5357f0		4889e5			MOVQ SP, BP					
  repro.go:71		0x5357f3		4881ecd8000000		SUBQ $0xd8, SP					
  repro.go:74		0x5357fa		48898c24f8000000	MOVQ CX, 0xf8(SP)				
  repro.go:74		0x535802		48899c24f0000000	MOVQ BX, 0xf0(SP)				
  repro.go:74		0x53580a		4889bc2400010000	MOVQ DI, 0x100(SP)				
  repro.go:72		0x535812		488d4c2448		LEAQ 0x48(SP), CX				
  repro.go:72		0x535817		440f1030		MOVUPS 0(AX), X14				
  repro.go:72		0x53581b		440f1131		MOVUPS X14, 0(CX)				
  repro.go:72		0x53581f		440f107010		MOVUPS 0x10(AX), X14				
  repro.go:72		0x535824		440f117110		MOVUPS X14, 0x10(CX)				
  repro.go:72		0x535829		440f107020		MOVUPS 0x20(AX), X14				
  repro.go:72		0x53582e		440f117120		MOVUPS X14, 0x20(CX)				
  repro.go:72		0x535833		440f107030		MOVUPS 0x30(AX), X14				
  repro.go:72		0x535838		440f117130		MOVUPS X14, 0x30(CX)				
  repro.go:72		0x53583d		440f107040		MOVUPS 0x40(AX), X14				
  repro.go:72		0x535842		440f117140		MOVUPS X14, 0x40(CX)				
  repro.go:72		0x535847		440f107050		MOVUPS 0x50(AX), X14				
  repro.go:72		0x53584c		440f117150		MOVUPS X14, 0x50(CX)				
  repro.go:72		0x535851		440f107060		MOVUPS 0x60(AX), X14				
  repro.go:72		0x535856		440f117160		MOVUPS X14, 0x60(CX)				
  repro.go:72		0x53585b		440f107068		MOVUPS 0x68(AX), X14				
  repro.go:72		0x535860		440f117168		MOVUPS X14, 0x68(CX)				
  repro.go:73		0x535865		4889c8			MOVQ CX, AX					
  repro.go:73		0x535868		e833fdffff		CALL example.com/hashsumreturn.ReturnLocal(SB)	
  repro.go:73		0x53586d		488d5c2428		LEAQ 0x28(SP), BX				
  repro.go:73		0x535872		4889e1			MOVQ SP, CX					
  repro.go:73		0x535875		440f1031		MOVUPS 0(CX), X14				
  repro.go:73		0x535879		440f1133		MOVUPS X14, 0(BX)				
  repro.go:73		0x53587d		440f107110		MOVUPS 0x10(CX), X14				
  repro.go:73		0x535882		440f117310		MOVUPS X14, 0x10(BX)				
  repro.go:74		0x535887		80bc24b800000000	CMPB 0xb8(SP), $0x0				
  repro.go:74		0x53588f		0f848e000000		JE 0x535923					
  repro.go:74		0x535895		488b9424f8000000	MOVQ 0xf8(SP), DX				
  repro.go:74		0x53589d		4c8d421c		LEAQ 0x1c(DX), R8				
  repro.go:74		0x5358a1		488b8c2400010000	MOVQ 0x100(SP), CX				
  repro.go:74		0x5358a9		4c39c1			CMPQ CX, R8					
  repro.go:74		0x5358ac		720a			JB 0x5358b8					
  repro.go:74		0x5358ae		488b8424f0000000	MOVQ 0xf0(SP), AX				
  repro.go:74		0x5358b6		eb2c			JMP 0x5358e4					
  repro.go:74		0x5358b8		488b8424f0000000	MOVQ 0xf0(SP), AX				
  repro.go:74		0x5358c0		4c89c3			MOVQ R8, BX					
  repro.go:74		0x5358c3		bf1c000000		MOVL $0x1c, DI					
  repro.go:74		0x5358c8		488d35e9001500		LEAQ 0x1500e9(IP), SI				
  repro.go:74		0x5358cf		e86c0af5ff		CALL runtime.growslice(SB)			
  repro.go:74		0x5358d4		488b9424f8000000	MOVQ 0xf8(SP), DX				
  repro.go:74		0x5358dc		4989d8			MOVQ BX, R8					
  repro.go:73		0x5358df		488d5c2428		LEAQ 0x28(SP), BX				
  repro.go:74		0x5358e4		48898c24c8000000	MOVQ CX, 0xc8(SP)				
  repro.go:74		0x5358ec		48898424d0000000	MOVQ AX, 0xd0(SP)				
  repro.go:74		0x5358f4		4c898424c0000000	MOVQ R8, 0xc0(SP)				
  repro.go:74		0x5358fc		4801d0			ADDQ DX, AX					
  repro.go:74		0x5358ff		b91c000000		MOVL $0x1c, CX					
  repro.go:74		0x535904		e8d759f5ff		CALL runtime.memmove(SB)			
  repro.go:74		0x535909		488b8424d0000000	MOVQ 0xd0(SP), AX				
  repro.go:74		0x535911		488b9c24c0000000	MOVQ 0xc0(SP), BX				
  repro.go:74		0x535919		488b8c24c8000000	MOVQ 0xc8(SP), CX				
  repro.go:74		0x535921		c9			LEAVE						
  repro.go:74		0x535922		c3			RET						
  repro.go:75		0x535923		488b9424f8000000	MOVQ 0xf8(SP), DX				
  repro.go:75		0x53592b		4c8d4220		LEAQ 0x20(DX), R8				
  repro.go:75		0x53592f		488b8c2400010000	MOVQ 0x100(SP), CX				
  repro.go:75		0x535937		4c39c1			CMPQ CX, R8					
  repro.go:75		0x53593a		720a			JB 0x535946					
  repro.go:75		0x53593c		488b8424f0000000	MOVQ 0xf0(SP), AX				
  repro.go:75		0x535944		eb2f			JMP 0x535975					
  repro.go:75		0x535946		488b8424f0000000	MOVQ 0xf0(SP), AX				
  repro.go:75		0x53594e		4c89c3			MOVQ R8, BX					
  repro.go:75		0x535951		bf20000000		MOVL $0x20, DI					
  repro.go:75		0x535956		488d355b001500		LEAQ 0x15005b(IP), SI				
  repro.go:75		0x53595d		0f1f00			NOPL 0(AX)					
  repro.go:75		0x535960		e8db09f5ff		CALL runtime.growslice(SB)			
  repro.go:75		0x535965		488b9424f8000000	MOVQ 0xf8(SP), DX				
  repro.go:75		0x53596d		4989d8			MOVQ BX, R8					
  repro.go:73		0x535970		488d5c2428		LEAQ 0x28(SP), BX				
  repro.go:75		0x535975		48898c24c8000000	MOVQ CX, 0xc8(SP)				
  repro.go:75		0x53597d		4c898424c0000000	MOVQ R8, 0xc0(SP)				
  repro.go:75		0x535985		48898424d0000000	MOVQ AX, 0xd0(SP)				
  repro.go:75		0x53598d		4801d0			ADDQ DX, AX					
  repro.go:75		0x535990		b920000000		MOVL $0x20, CX					
  repro.go:75		0x535995		e84659f5ff		CALL runtime.memmove(SB)			
  repro.go:75		0x53599a		488b8424d0000000	MOVQ 0xd0(SP), AX				
  repro.go:75		0x5359a2		488b9c24c0000000	MOVQ 0xc0(SP), BX				
  repro.go:75		0x5359aa		488b8c24c8000000	MOVQ 0xc8(SP), CX				
  repro.go:75		0x5359b2		c9			LEAVE						
  repro.go:75		0x5359b3		c3			RET						
  repro.go:71		0x5359b4		4889442408		MOVQ AX, 0x8(SP)				
  repro.go:71		0x5359b9		48895c2410		MOVQ BX, 0x10(SP)				
  repro.go:71		0x5359be		48894c2418		MOVQ CX, 0x18(SP)				
  repro.go:71		0x5359c3		48897c2420		MOVQ DI, 0x20(SP)				
  repro.go:71		0x5359c8		e83339f5ff		CALL runtime.morestack_noctxt.abi0(SB)		
  repro.go:71		0x5359cd		488b442408		MOVQ 0x8(SP), AX				
  repro.go:71		0x5359d2		488b5c2410		MOVQ 0x10(SP), BX				
  repro.go:71		0x5359d7		488b4c2418		MOVQ 0x18(SP), CX				
  repro.go:71		0x5359dc		488b7c2420		MOVQ 0x20(SP), DI				
  repro.go:71		0x5359e1		e9fafdffff		JMP example.com/hashsumreturn.SumLocal(SB)	

TEXT example.com/hashsumreturn.SumInto(SB) /home/exedev/crypto-audit/round4/issues/hash-sum-return-buffer/repro.go
  repro.go:79		0x535a00		4c8d6424a0		LEAQ -0x60(SP), R12				
  repro.go:79		0x535a05		4d3b6610		CMPQ R12, 0x10(R14)				
  repro.go:79		0x535a09		0f86be010000		JBE 0x535bcd					
  repro.go:79		0x535a0f		55			PUSHQ BP					
  repro.go:79		0x535a10		4889e5			MOVQ SP, BP					
  repro.go:79		0x535a13		4881ecd8000000		SUBQ $0xd8, SP					
  repro.go:83		0x535a1a		4889bc2400010000	MOVQ DI, 0x100(SP)				
  repro.go:83		0x535a22		48898c24f8000000	MOVQ CX, 0xf8(SP)				
  repro.go:83		0x535a2a		48899c24f0000000	MOVQ BX, 0xf0(SP)				
  repro.go:80		0x535a32		488d4c2448		LEAQ 0x48(SP), CX				
  repro.go:80		0x535a37		440f1030		MOVUPS 0(AX), X14				
  repro.go:80		0x535a3b		440f1131		MOVUPS X14, 0(CX)				
  repro.go:80		0x535a3f		440f107010		MOVUPS 0x10(AX), X14				
  repro.go:80		0x535a44		440f117110		MOVUPS X14, 0x10(CX)				
  repro.go:80		0x535a49		440f107020		MOVUPS 0x20(AX), X14				
  repro.go:80		0x535a4e		440f117120		MOVUPS X14, 0x20(CX)				
  repro.go:80		0x535a53		440f107030		MOVUPS 0x30(AX), X14				
  repro.go:80		0x535a58		440f117130		MOVUPS X14, 0x30(CX)				
  repro.go:80		0x535a5d		440f107040		MOVUPS 0x40(AX), X14				
  repro.go:80		0x535a62		440f117140		MOVUPS X14, 0x40(CX)				
  repro.go:80		0x535a67		440f107050		MOVUPS 0x50(AX), X14				
  repro.go:80		0x535a6c		440f117150		MOVUPS X14, 0x50(CX)				
  repro.go:80		0x535a71		440f107060		MOVUPS 0x60(AX), X14				
  repro.go:80		0x535a76		440f117160		MOVUPS X14, 0x60(CX)				
  repro.go:80		0x535a7b		440f107068		MOVUPS 0x68(AX), X14				
  repro.go:80		0x535a80		440f117168		MOVUPS X14, 0x68(CX)				
  repro.go:81		0x535a85		488d5c2428		LEAQ 0x28(SP), BX				
  repro.go:81		0x535a8a		440f113b		MOVUPS X15, 0(BX)				
  repro.go:81		0x535a8e		440f117b10		MOVUPS X15, 0x10(BX)				
  repro.go:82		0x535a93		4889c8			MOVQ CX, AX					
  repro.go:82		0x535a96		e885fcffff		CALL example.com/hashsumreturn.Into(SB)		
  repro.go:83		0x535a9b		80bc24b800000000	CMPB 0xb8(SP), $0x0				
  repro.go:83		0x535aa3		0f8496000000		JE 0x535b3f					
  repro.go:83		0x535aa9		488b9c24f8000000	MOVQ 0xf8(SP), BX				
  repro.go:83		0x535ab1		488d531c		LEAQ 0x1c(BX), DX				
  repro.go:83		0x535ab5		488b8c2400010000	MOVQ 0x100(SP), CX				
  repro.go:83		0x535abd		0f1f00			NOPL 0(AX)					
  repro.go:83		0x535ac0		4839d1			CMPQ CX, DX					
  repro.go:83		0x535ac3		720a			JB 0x535acf					
  repro.go:83		0x535ac5		488b8424f0000000	MOVQ 0xf0(SP), AX				
  repro.go:83		0x535acd		eb27			JMP 0x535af6					
  repro.go:83		0x535acf		488b8424f0000000	MOVQ 0xf0(SP), AX				
  repro.go:83		0x535ad7		4889d3			MOVQ DX, BX					
  repro.go:83		0x535ada		bf1c000000		MOVL $0x1c, DI					
  repro.go:83		0x535adf		488d35d2fe1400		LEAQ 0x14fed2(IP), SI				
  repro.go:83		0x535ae6		e85508f5ff		CALL runtime.growslice(SB)			
  repro.go:83		0x535aeb		4889da			MOVQ BX, DX					
  repro.go:83		0x535aee		488b9c24f8000000	MOVQ 0xf8(SP), BX				
  repro.go:83		0x535af6		48899424c8000000	MOVQ DX, 0xc8(SP)				
  repro.go:83		0x535afe		48898424d0000000	MOVQ AX, 0xd0(SP)				
  repro.go:83		0x535b06		48898c24c0000000	MOVQ CX, 0xc0(SP)				
  repro.go:83		0x535b0e		4801d8			ADDQ BX, AX					
  repro.go:83		0x535b11		488d5c2428		LEAQ 0x28(SP), BX				
  repro.go:83		0x535b16		b91c000000		MOVL $0x1c, CX					
  repro.go:83		0x535b1b		0f1f440000		NOPL 0(AX)(AX*1)				
  repro.go:83		0x535b20		e8bb57f5ff		CALL runtime.memmove(SB)			
  repro.go:83		0x535b25		488b8424d0000000	MOVQ 0xd0(SP), AX				
  repro.go:83		0x535b2d		488b9c24c8000000	MOVQ 0xc8(SP), BX				
  repro.go:83		0x535b35		488b8c24c0000000	MOVQ 0xc0(SP), CX				
  repro.go:83		0x535b3d		c9			LEAVE						
  repro.go:83		0x535b3e		c3			RET						
  repro.go:84		0x535b3f		488b9c24f8000000	MOVQ 0xf8(SP), BX				
  repro.go:84		0x535b47		488d5320		LEAQ 0x20(BX), DX				
  repro.go:84		0x535b4b		488b8c2400010000	MOVQ 0x100(SP), CX				
  repro.go:84		0x535b53		4839d1			CMPQ CX, DX					
  repro.go:84		0x535b56		720a			JB 0x535b62					
  repro.go:84		0x535b58		488b8424f0000000	MOVQ 0xf0(SP), AX				
  repro.go:84		0x535b60		eb27			JMP 0x535b89					
  repro.go:84		0x535b62		488b8424f0000000	MOVQ 0xf0(SP), AX				
  repro.go:84		0x535b6a		4889d3			MOVQ DX, BX					
  repro.go:84		0x535b6d		bf20000000		MOVL $0x20, DI					
  repro.go:84		0x535b72		488d353ffe1400		LEAQ 0x14fe3f(IP), SI				
  repro.go:84		0x535b79		e8c207f5ff		CALL runtime.growslice(SB)			
  repro.go:84		0x535b7e		4889da			MOVQ BX, DX					
  repro.go:84		0x535b81		488b9c24f8000000	MOVQ 0xf8(SP), BX				
  repro.go:84		0x535b89		48898424d0000000	MOVQ AX, 0xd0(SP)				
  repro.go:84		0x535b91		48898c24c8000000	MOVQ CX, 0xc8(SP)				
  repro.go:84		0x535b99		48899424c0000000	MOVQ DX, 0xc0(SP)				
  repro.go:84		0x535ba1		4801d8			ADDQ BX, AX					
  repro.go:84		0x535ba4		488d5c2428		LEAQ 0x28(SP), BX				
  repro.go:84		0x535ba9		b920000000		MOVL $0x20, CX					
  repro.go:84		0x535bae		e82d57f5ff		CALL runtime.memmove(SB)			
  repro.go:84		0x535bb3		488b8424d0000000	MOVQ 0xd0(SP), AX				
  repro.go:84		0x535bbb		488b9c24c0000000	MOVQ 0xc0(SP), BX				
  repro.go:84		0x535bc3		488b8c24c8000000	MOVQ 0xc8(SP), CX				
  repro.go:84		0x535bcb		c9			LEAVE						
  repro.go:84		0x535bcc		c3			RET						
  repro.go:79		0x535bcd		4889442408		MOVQ AX, 0x8(SP)				
  repro.go:79		0x535bd2		48895c2410		MOVQ BX, 0x10(SP)				
  repro.go:79		0x535bd7		48894c2418		MOVQ CX, 0x18(SP)				
  repro.go:79		0x535bdc		48897c2420		MOVQ DI, 0x20(SP)				
  repro.go:79		0x535be1		e81a37f5ff		CALL runtime.morestack_noctxt.abi0(SB)		
  repro.go:79		0x535be6		488b442408		MOVQ 0x8(SP), AX				
  repro.go:79		0x535beb		488b5c2410		MOVQ 0x10(SP), BX				
  repro.go:79		0x535bf0		488b4c2418		MOVQ 0x18(SP), CX				
  repro.go:79		0x535bf5		488b7c2420		MOVQ 0x20(SP), DI				
  repro.go:79		0x535bfa		e901feffff		JMP example.com/hashsumreturn.SumInto(SB)	

TEXT example.com/hashsumreturn.SumNamed(SB) /home/exedev/crypto-audit/round4/issues/hash-sum-return-buffer/repro.go
  repro.go:90		0x535c00		4c8d6424a0		LEAQ -0x60(SP), R12				
  repro.go:90		0x535c05		4d3b6610		CMPQ R12, 0x10(R14)				
  repro.go:90		0x535c09		0f86c5010000		JBE 0x535dd4					
  repro.go:90		0x535c0f		55			PUSHQ BP					
  repro.go:90		0x535c10		4889e5			MOVQ SP, BP					
  repro.go:90		0x535c13		4881ecd8000000		SUBQ $0xd8, SP					
  repro.go:93		0x535c1a		48898c24f8000000	MOVQ CX, 0xf8(SP)				
  repro.go:93		0x535c22		48899c24f0000000	MOVQ BX, 0xf0(SP)				
  repro.go:93		0x535c2a		4889bc2400010000	MOVQ DI, 0x100(SP)				
  repro.go:91		0x535c32		488d4c2448		LEAQ 0x48(SP), CX				
  repro.go:91		0x535c37		440f1030		MOVUPS 0(AX), X14				
  repro.go:91		0x535c3b		440f1131		MOVUPS X14, 0(CX)				
  repro.go:91		0x535c3f		440f107010		MOVUPS 0x10(AX), X14				
  repro.go:91		0x535c44		440f117110		MOVUPS X14, 0x10(CX)				
  repro.go:91		0x535c49		440f107020		MOVUPS 0x20(AX), X14				
  repro.go:91		0x535c4e		440f117120		MOVUPS X14, 0x20(CX)				
  repro.go:91		0x535c53		440f107030		MOVUPS 0x30(AX), X14				
  repro.go:91		0x535c58		440f117130		MOVUPS X14, 0x30(CX)				
  repro.go:91		0x535c5d		440f107040		MOVUPS 0x40(AX), X14				
  repro.go:91		0x535c62		440f117140		MOVUPS X14, 0x40(CX)				
  repro.go:91		0x535c67		440f107050		MOVUPS 0x50(AX), X14				
  repro.go:91		0x535c6c		440f117150		MOVUPS X14, 0x50(CX)				
  repro.go:91		0x535c71		440f107060		MOVUPS 0x60(AX), X14				
  repro.go:91		0x535c76		440f117160		MOVUPS X14, 0x60(CX)				
  repro.go:91		0x535c7b		440f107068		MOVUPS 0x68(AX), X14				
  repro.go:91		0x535c80		440f117168		MOVUPS X14, 0x68(CX)				
  repro.go:92		0x535c85		4889c8			MOVQ CX, AX					
  repro.go:92		0x535c88		e8d3f9ffff		CALL example.com/hashsumreturn.ReturnNamed(SB)	
  repro.go:92		0x535c8d		488d5c2428		LEAQ 0x28(SP), BX				
  repro.go:92		0x535c92		4889e1			MOVQ SP, CX					
  repro.go:92		0x535c95		440f1031		MOVUPS 0(CX), X14				
  repro.go:92		0x535c99		440f1133		MOVUPS X14, 0(BX)				
  repro.go:92		0x535c9d		440f107110		MOVUPS 0x10(CX), X14				
  repro.go:92		0x535ca2		440f117310		MOVUPS X14, 0x10(BX)				
  repro.go:93		0x535ca7		80bc24b800000000	CMPB 0xb8(SP), $0x0				
  repro.go:93		0x535caf		0f848e000000		JE 0x535d43					
  repro.go:93		0x535cb5		488b9424f8000000	MOVQ 0xf8(SP), DX				
  repro.go:93		0x535cbd		4c8d421c		LEAQ 0x1c(DX), R8				
  repro.go:93		0x535cc1		488b8c2400010000	MOVQ 0x100(SP), CX				
  repro.go:93		0x535cc9		4c39c1			CMPQ CX, R8					
  repro.go:93		0x535ccc		720a			JB 0x535cd8					
  repro.go:93		0x535cce		488b8424f0000000	MOVQ 0xf0(SP), AX				
  repro.go:93		0x535cd6		eb2c			JMP 0x535d04					
  repro.go:93		0x535cd8		488b8424f0000000	MOVQ 0xf0(SP), AX				
  repro.go:93		0x535ce0		4c89c3			MOVQ R8, BX					
  repro.go:93		0x535ce3		bf1c000000		MOVL $0x1c, DI					
  repro.go:93		0x535ce8		488d35c9fc1400		LEAQ 0x14fcc9(IP), SI				
  repro.go:93		0x535cef		e84c06f5ff		CALL runtime.growslice(SB)			
  repro.go:93		0x535cf4		488b9424f8000000	MOVQ 0xf8(SP), DX				
  repro.go:93		0x535cfc		4989d8			MOVQ BX, R8					
  repro.go:92		0x535cff		488d5c2428		LEAQ 0x28(SP), BX				
  repro.go:93		0x535d04		48898c24c8000000	MOVQ CX, 0xc8(SP)				
  repro.go:93		0x535d0c		48898424d0000000	MOVQ AX, 0xd0(SP)				
  repro.go:93		0x535d14		4c898424c0000000	MOVQ R8, 0xc0(SP)				
  repro.go:93		0x535d1c		4801d0			ADDQ DX, AX					
  repro.go:93		0x535d1f		b91c000000		MOVL $0x1c, CX					
  repro.go:93		0x535d24		e8b755f5ff		CALL runtime.memmove(SB)			
  repro.go:93		0x535d29		488b8424d0000000	MOVQ 0xd0(SP), AX				
  repro.go:93		0x535d31		488b9c24c0000000	MOVQ 0xc0(SP), BX				
  repro.go:93		0x535d39		488b8c24c8000000	MOVQ 0xc8(SP), CX				
  repro.go:93		0x535d41		c9			LEAVE						
  repro.go:93		0x535d42		c3			RET						
  repro.go:94		0x535d43		488b9424f8000000	MOVQ 0xf8(SP), DX				
  repro.go:94		0x535d4b		4c8d4220		LEAQ 0x20(DX), R8				
  repro.go:94		0x535d4f		488b8c2400010000	MOVQ 0x100(SP), CX				
  repro.go:94		0x535d57		4c39c1			CMPQ CX, R8					
  repro.go:94		0x535d5a		720a			JB 0x535d66					
  repro.go:94		0x535d5c		488b8424f0000000	MOVQ 0xf0(SP), AX				
  repro.go:94		0x535d64		eb2f			JMP 0x535d95					
  repro.go:94		0x535d66		488b8424f0000000	MOVQ 0xf0(SP), AX				
  repro.go:94		0x535d6e		4c89c3			MOVQ R8, BX					
  repro.go:94		0x535d71		bf20000000		MOVL $0x20, DI					
  repro.go:94		0x535d76		488d353bfc1400		LEAQ 0x14fc3b(IP), SI				
  repro.go:94		0x535d7d		0f1f00			NOPL 0(AX)					
  repro.go:94		0x535d80		e8bb05f5ff		CALL runtime.growslice(SB)			
  repro.go:94		0x535d85		488b9424f8000000	MOVQ 0xf8(SP), DX				
  repro.go:94		0x535d8d		4989d8			MOVQ BX, R8					
  repro.go:92		0x535d90		488d5c2428		LEAQ 0x28(SP), BX				
  repro.go:94		0x535d95		48898c24c8000000	MOVQ CX, 0xc8(SP)				
  repro.go:94		0x535d9d		4c898424c0000000	MOVQ R8, 0xc0(SP)				
  repro.go:94		0x535da5		48898424d0000000	MOVQ AX, 0xd0(SP)				
  repro.go:94		0x535dad		4801d0			ADDQ DX, AX					
  repro.go:94		0x535db0		b920000000		MOVL $0x20, CX					
  repro.go:94		0x535db5		e82655f5ff		CALL runtime.memmove(SB)			
  repro.go:94		0x535dba		488b8424d0000000	MOVQ 0xd0(SP), AX				
  repro.go:94		0x535dc2		488b9c24c0000000	MOVQ 0xc0(SP), BX				
  repro.go:94		0x535dca		488b8c24c8000000	MOVQ 0xc8(SP), CX				
  repro.go:94		0x535dd2		c9			LEAVE						
  repro.go:94		0x535dd3		c3			RET						
  repro.go:90		0x535dd4		4889442408		MOVQ AX, 0x8(SP)				
  repro.go:90		0x535dd9		48895c2410		MOVQ BX, 0x10(SP)				
  repro.go:90		0x535dde		48894c2418		MOVQ CX, 0x18(SP)				
  repro.go:90		0x535de3		48897c2420		MOVQ DI, 0x20(SP)				
  repro.go:90		0x535de8		e81335f5ff		CALL runtime.morestack_noctxt.abi0(SB)		
  repro.go:90		0x535ded		488b442408		MOVQ 0x8(SP), AX				
  repro.go:90		0x535df2		488b5c2410		MOVQ 0x10(SP), BX				
  repro.go:90		0x535df7		488b4c2418		MOVQ 0x18(SP), CX				
  repro.go:90		0x535dfc		488b7c2420		MOVQ 0x20(SP), DI				
  repro.go:90		0x535e01		e9fafdffff		JMP example.com/hashsumreturn.SumNamed(SB)	

TEXT example.com/hashsumreturn.TestReturnAndSnapshot(SB) /home/exedev/crypto-audit/round4/issues/hash-sum-return-buffer/repro_test.go
  repro_test.go:19	0x535e20		4c8da424b0fdffff		LEAQ 0xfffffdb0(SP), R12				
  repro_test.go:19	0x535e28		4d3b6610			CMPQ R12, 0x10(R14)					
  repro_test.go:19	0x535e2c		0f86ba060000			JBE 0x5364ec						
  repro_test.go:19	0x535e32		55				PUSHQ BP						
  repro_test.go:19	0x535e33		4889e5				MOVQ SP, BP						
  repro_test.go:19	0x535e36		4881ecc8020000			SUBQ $0x2c8, SP						
  repro_test.go:20	0x535e3d		48898424d8020000		MOVQ AX, 0x2d8(SP)					
  repro_test.go:20	0x535e45		31c9				XORL CX, CX						
  repro_test.go:20	0x535e47		eb17				JMP 0x535e60						
  repro_test.go:20	0x535e49		488b8c2438010000		MOVQ 0x138(SP), CX					
  repro_test.go:20	0x535e51		48ffc1				INCQ CX							
  repro_test.go:20	0x535e54		660f1f840000000000		NOPW 0(AX)(AX*1)					
  repro_test.go:20	0x535e5d		0f1f00				NOPL 0(AX)						
  repro_test.go:20	0x535e60		4881f901010000			CMPQ CX, $0x101						
  repro_test.go:20	0x535e67		0f8d72060000			JGE 0x5364df						
  repro_test.go:20	0x535e6d		48898c2438010000		MOVQ CX, 0x138(SP)					
  repro_test.go:21	0x535e75		488d05741d1600			LEAQ 0x161d74(IP), AX					
  repro_test.go:21	0x535e7c		0f1f4000			NOPL 0(AX)						
  repro_test.go:21	0x535e80		e89b81eeff			CALL runtime.newobject(SB)				
  repro_test.go:21	0x535e85		440f1138			MOVUPS X15, 0(AX)					
  repro_test.go:21	0x535e89		440f117810			MOVUPS X15, 0x10(AX)					
  repro_test.go:21	0x535e8e		440f117820			MOVUPS X15, 0x20(AX)					
  repro_test.go:21	0x535e93		440f117830			MOVUPS X15, 0x30(AX)					
  repro_test.go:21	0x535e98		440f117840			MOVUPS X15, 0x40(AX)					
  repro_test.go:21	0x535e9d		440f117850			MOVUPS X15, 0x50(AX)					
  repro_test.go:21	0x535ea2		440f117860			MOVUPS X15, 0x60(AX)					
  repro_test.go:21	0x535ea7		440f117868			MOVUPS X15, 0x68(AX)					
  repro_test.go:21	0x535eac		488b8c2438010000		MOVQ 0x138(SP), CX					
  repro_test.go:21	0x535eb4		48ba8967452301000000		MOVQ $0x123456789, DX					
  repro_test.go:21	0x535ebe		480fafd1			IMULQ CX, DX						
  repro_test.go:21	0x535ec2		48895068			MOVQ DX, 0x68(AX)					
  repro_test.go:22	0x535ec6		69d1b979379e			IMULL $-0x61c88647, CX, DX				
  repro_test.go:21	0x535ecc		0fbae100			BTL $0x0, CX						
  repro_test.go:21	0x535ed0		0f934070			SETAE 0x70(AX)						
  repro_test.go:22	0x535ed4		31db				XORL BX, BX						
  repro_test.go:22	0x535ed6		eb0e				JMP 0x535ee6						
  repro_test.go:22	0x535ed8		69f398badcfe			IMULL $-0x1234568, BX, SI				
  repro_test.go:22	0x535ede		01d6				ADDL DX, SI						
  repro_test.go:22	0x535ee0		893498				MOVL SI, 0(AX)(BX*4)					
  repro_test.go:22	0x535ee3		48ffc3				INCQ BX							
  repro_test.go:22	0x535ee6		4883fb08			CMPQ BX, $0x8						
  repro_test.go:22	0x535eea		7cec				JL 0x535ed8						
  repro_test.go:22	0x535eec		31d2				XORL DX, DX						
  repro_test.go:22	0x535eee		eb10				JMP 0x535f00						
  repro_test.go:23	0x535ef0		488d340a			LEAQ 0(DX)(CX*1), SI					
  repro_test.go:23	0x535ef4		4088741020			MOVB SI, 0x20(AX)(DX*1)					
  repro_test.go:23	0x535ef9		48ffc2				INCQ DX							
  repro_test.go:23	0x535efc		0f1f4000			NOPL 0(AX)						
  repro_test.go:23	0x535f00		4883fa40			CMPQ DX, $0x40						
  repro_test.go:23	0x535f04		7cea				JL 0x535ef0						
  repro_test.go:24	0x535f06		488d9424c8010000		LEAQ 0x1c8(SP), DX					
  repro_test.go:24	0x535f0e		440f1030			MOVUPS 0(AX), X14					
  repro_test.go:24	0x535f12		440f1132			MOVUPS X14, 0(DX)					
  repro_test.go:24	0x535f16		440f107010			MOVUPS 0x10(AX), X14					
  repro_test.go:24	0x535f1b		440f117210			MOVUPS X14, 0x10(DX)					
  repro_test.go:24	0x535f20		440f107020			MOVUPS 0x20(AX), X14					
  repro_test.go:24	0x535f25		440f117220			MOVUPS X14, 0x20(DX)					
  repro_test.go:24	0x535f2a		440f107030			MOVUPS 0x30(AX), X14					
  repro_test.go:24	0x535f2f		440f117230			MOVUPS X14, 0x30(DX)					
  repro_test.go:24	0x535f34		440f107040			MOVUPS 0x40(AX), X14					
  repro_test.go:24	0x535f39		440f117240			MOVUPS X14, 0x40(DX)					
  repro_test.go:24	0x535f3e		440f107050			MOVUPS 0x50(AX), X14					
  repro_test.go:24	0x535f43		440f117250			MOVUPS X14, 0x50(DX)					
  repro_test.go:24	0x535f48		440f107060			MOVUPS 0x60(AX), X14					
  repro_test.go:24	0x535f4d		440f117260			MOVUPS X14, 0x60(DX)					
  repro_test.go:24	0x535f52		440f107068			MOVUPS 0x68(AX), X14					
  repro_test.go:24	0x535f57		440f117268			MOVUPS X14, 0x68(DX)					
  repro_test.go:24	0x535f5c		488d542452			LEAQ 0x52(SP), DX					
  repro_test.go:24	0x535f61		440f113a			MOVUPS X15, 0(DX)					
  repro_test.go:24	0x535f65		440f117a10			MOVUPS X15, 0x10(DX)					
  repro_test.go:10	0x535f6a		488bb42430020000		MOVQ 0x230(SP), SI					
  repro_test.go:10	0x535f72		01b424c8010000			ADDL SI, 0x1c8(SP)					
  repro_test.go:12	0x535f79		80bc243802000000		CMPB 0x238(SP), $0x0					
  repro_test.go:13	0x535f81		be08000000			MOVL $0x8, SI						
  repro_test.go:13	0x535f86		bf07000000			MOVL $0x7, DI						
  repro_test.go:13	0x535f8b		480f45f7			CMOVNE DI, SI						
  repro_test.go:12	0x535f8f		31ff				XORL DI, DI						
  repro_test.go:12	0x535f91		eb03				JMP 0x535f96						
  repro_test.go:13	0x535f93		48ffc7				INCQ DI							
  repro_test.go:13	0x535f96		4839f7				CMPQ DI, SI						
  repro_test.go:13	0x535f99		7d3d				JGE 0x535fd8						
  repro_test.go:14	0x535f9b		4531c0				XORL R8, R8						
  repro_test.go:14	0x535f9e		6690				NOPW							
  repro_test.go:14	0x535fa0		eb2e				JMP 0x535fd0						
  repro_test.go:14	0x535fa2		4d8d0cb8			LEAQ 0(R8)(DI*4), R9					
  repro_test.go:14	0x535fa6		448b94bcc8010000		MOVL 0x1c8(SP)(DI*4), R10				
  repro_test.go:14	0x535fae		4d89c3				MOVQ R8, R11						
  repro_test.go:14	0x535fb1		49c1e303			SHLQ $0x3, R11						
  repro_test.go:14	0x535fb5		4983c3e8			ADDQ $-0x18, R11					
  repro_test.go:14	0x535fb9		49f7db				NEGQ R11						
  repro_test.go:20	0x535fbc		4889cb				MOVQ CX, BX						
  repro_test.go:14	0x535fbf		4c89d9				MOVQ R11, CX						
  repro_test.go:14	0x535fc2		41d3ea				SHRL CL, R10						
  repro_test.go:14	0x535fc5		4688540c52			MOVB R10, 0x52(SP)(R9*1)				
  repro_test.go:14	0x535fca		49ffc0				INCQ R8							
  repro_test.go:32	0x535fcd		4889d9				MOVQ BX, CX						
  repro_test.go:14	0x535fd0		4983f804			CMPQ R8, $0x4						
  repro_test.go:14	0x535fd4		7ccc				JL 0x535fa2						
  repro_test.go:14	0x535fd6		ebbb				JMP 0x535f93						
  repro_test.go:21	0x535fd8		48898424c0020000		MOVQ AX, 0x2c0(SP)					
  repro_test.go:24	0x535fe0		488d742432			LEAQ 0x32(SP), SI					
  repro_test.go:24	0x535fe5		440f1032			MOVUPS 0(DX), X14					
  repro_test.go:24	0x535fe9		440f1136			MOVUPS X14, 0(SI)					
  repro_test.go:24	0x535fed		440f107210			MOVUPS 0x10(DX), X14					
  repro_test.go:24	0x535ff2		440f117610			MOVUPS X14, 0x10(SI)					
  repro_test.go:25	0x535ff7		488d151ae41600			LEAQ 0x16e41a(IP), DX					
  repro_test.go:25	0x535ffe		48899424a0020000		MOVQ DX, 0x2a0(SP)					
  repro_test.go:25	0x536006		488d1513e41600			LEAQ 0x16e413(IP), DX					
  repro_test.go:25	0x53600d		48899424a8020000		MOVQ DX, 0x2a8(SP)					
  repro_test.go:25	0x536015		31d2				XORL DX, DX						
  repro_test.go:25	0x536017		eb0b				JMP 0x536024						
  repro_test.go:25	0x536019		488b942450020000		MOVQ 0x250(SP), DX					
  repro_test.go:25	0x536021		48ffc2				INCQ DX							
  repro_test.go:25	0x536024		4883fa02			CMPQ DX, $0x2						
  repro_test.go:25	0x536028		0f8d1e010000			JGE 0x53614c						
  repro_test.go:25	0x53602e		4889942450020000		MOVQ DX, 0x250(SP)					
  repro_test.go:25	0x536036		488b8cd4a0020000		MOVQ 0x2a0(SP)(DX*8), CX				
  repro_test.go:25	0x53603e		48898c2480020000		MOVQ CX, 0x280(SP)					
  repro_test.go:26	0x536046		488d05a31b1600			LEAQ 0x161ba3(IP), AX					
  repro_test.go:26	0x53604d		e8ce7feeff			CALL runtime.newobject(SB)				
  repro_test.go:26	0x536052		488b8c24c0020000		MOVQ 0x2c0(SP), CX					
  repro_test.go:26	0x53605a		440f1031			MOVUPS 0(CX), X14					
  repro_test.go:26	0x53605e		440f1130			MOVUPS X14, 0(AX)					
  repro_test.go:26	0x536062		440f107110			MOVUPS 0x10(CX), X14					
  repro_test.go:26	0x536067		440f117010			MOVUPS X14, 0x10(AX)					
  repro_test.go:26	0x53606c		440f107120			MOVUPS 0x20(CX), X14					
  repro_test.go:26	0x536071		440f117020			MOVUPS X14, 0x20(AX)					
  repro_test.go:26	0x536076		440f107130			MOVUPS 0x30(CX), X14					
  repro_test.go:26	0x53607b		440f117030			MOVUPS X14, 0x30(AX)					
  repro_test.go:26	0x536080		440f107140			MOVUPS 0x40(CX), X14					
  repro_test.go:26	0x536085		440f117040			MOVUPS X14, 0x40(AX)					
  repro_test.go:26	0x53608a		440f107150			MOVUPS 0x50(CX), X14					
  repro_test.go:26	0x53608f		440f117050			MOVUPS X14, 0x50(AX)					
  repro_test.go:26	0x536094		440f107160			MOVUPS 0x60(CX), X14					
  repro_test.go:26	0x536099		440f117060			MOVUPS X14, 0x60(AX)					
  repro_test.go:26	0x53609e		440f107168			MOVUPS 0x68(CX), X14					
  repro_test.go:26	0x5360a3		440f117068			MOVUPS X14, 0x68(AX)					
  repro_test.go:27	0x5360a8		488b942480020000		MOVQ 0x280(SP), DX					
  repro_test.go:27	0x5360b0		488b0a				MOVQ 0(DX), CX						
  repro_test.go:27	0x5360b3		ffd1				CALL CX							
  repro_test.go:27	0x5360b5		488d842492000000		LEAQ 0x92(SP), AX					
  repro_test.go:27	0x5360bd		4889e1				MOVQ SP, CX						
  repro_test.go:27	0x5360c0		440f1031			MOVUPS 0(CX), X14					
  repro_test.go:27	0x5360c4		440f1130			MOVUPS X14, 0(AX)					
  repro_test.go:27	0x5360c8		440f107110			MOVUPS 0x10(CX), X14					
  repro_test.go:27	0x5360cd		440f117010			MOVUPS X14, 0x10(AX)					
  repro_test.go:27	0x5360d2		488d5c2432			LEAQ 0x32(SP), BX					
  repro_test.go:27	0x5360d7		b920000000			MOVL $0x20, CX						
  repro_test.go:27	0x5360dc		0f1f4000			NOPL 0(AX)						
  repro_test.go:27	0x5360e0		e85bcbecff			CALL runtime.memequal(SB)				
  repro_test.go:27	0x5360e5		84c0				TESTL AL, AL						
  repro_test.go:27	0x5360e7		0f852cffffff			JNE 0x536019						
  repro_test.go:27	0x5360ed		440f11bc24b0020000		MOVUPS X15, 0x2b0(SP)					
  repro_test.go:27	0x5360f6		488b842438010000		MOVQ 0x138(SP), AX					
  repro_test.go:27	0x5360fe		6690				NOPW							
  repro_test.go:27	0x536100		e81bcaf4ff			CALL runtime.convT64(SB)				
  repro_test.go:27	0x536105		488d0d6cfa1400			LEAQ 0x14fa6c(IP), CX					
  repro_test.go:27	0x53610c		48898c24b0020000		MOVQ CX, 0x2b0(SP)					
  repro_test.go:27	0x536114		48898424b8020000		MOVQ AX, 0x2b8(SP)					
  repro_test.go:27	0x53611c		488b8424d8020000		MOVQ 0x2d8(SP), AX					
  repro_test.go:27	0x536124		8400				TESTB AL, 0(AX)						
  repro_test.go:27	0x536126		488d1d57480000			LEAQ 0x4857(IP), BX					
  repro_test.go:27	0x53612d		b90b000000			MOVL $0xb, CX						
  repro_test.go:27	0x536132		488dbc24b0020000		LEAQ 0x2b0(SP), DI					
  repro_test.go:27	0x53613a		be01000000			MOVL $0x1, SI						
  repro_test.go:27	0x53613f		4189f0				MOVL SI, R8						
  repro_test.go:27	0x536142		e8b9ddfaff			CALL testing.(*common).Fatalf(SB)			
  repro_test.go:27	0x536147		e9cdfeffff			JMP 0x536019						
  repro_test.go:29	0x53614c		488d842450010000		LEAQ 0x150(SP), AX					
  repro_test.go:29	0x536154		488b8c24c0020000		MOVQ 0x2c0(SP), CX					
  repro_test.go:29	0x53615c		440f1031			MOVUPS 0(CX), X14					
  repro_test.go:29	0x536160		440f1130			MOVUPS X14, 0(AX)					
  repro_test.go:29	0x536164		440f107110			MOVUPS 0x10(CX), X14					
  repro_test.go:29	0x536169		440f117010			MOVUPS X14, 0x10(AX)					
  repro_test.go:29	0x53616e		440f107120			MOVUPS 0x20(CX), X14					
  repro_test.go:29	0x536173		440f117020			MOVUPS X14, 0x20(AX)					
  repro_test.go:29	0x536178		440f107130			MOVUPS 0x30(CX), X14					
  repro_test.go:29	0x53617d		440f117030			MOVUPS X14, 0x30(AX)					
  repro_test.go:29	0x536182		440f107140			MOVUPS 0x40(CX), X14					
  repro_test.go:29	0x536187		440f117040			MOVUPS X14, 0x40(AX)					
  repro_test.go:29	0x53618c		440f107150			MOVUPS 0x50(CX), X14					
  repro_test.go:29	0x536191		440f117050			MOVUPS X14, 0x50(AX)					
  repro_test.go:29	0x536196		440f107160			MOVUPS 0x60(CX), X14					
  repro_test.go:29	0x53619b		440f117060			MOVUPS X14, 0x60(AX)					
  repro_test.go:29	0x5361a0		440f107168			MOVUPS 0x68(CX), X14					
  repro_test.go:29	0x5361a5		440f117068			MOVUPS X14, 0x68(AX)					
  repro_test.go:30	0x5361aa		488d5c2472			LEAQ 0x72(SP), BX					
  repro_test.go:30	0x5361af		440f113b			MOVUPS X15, 0(BX)					
  repro_test.go:30	0x5361b3		440f117b10			MOVUPS X15, 0x10(BX)					
  repro_test.go:31	0x5361b8		e863f5ffff			CALL example.com/hashsumreturn.Into(SB)			
  repro_test.go:32	0x5361bd		488d442472			LEAQ 0x72(SP), AX					
  repro_test.go:32	0x5361c2		488d5c2432			LEAQ 0x32(SP), BX					
  repro_test.go:32	0x5361c7		b920000000			MOVL $0x20, CX						
  repro_test.go:32	0x5361cc		e86fcaecff			CALL runtime.memequal(SB)				
  repro_test.go:32	0x5361d1		84c0				TESTL AL, AL						
  repro_test.go:32	0x5361d3		7558				JNE 0x53622d						
  repro_test.go:32	0x5361d5		440f11bc24b0020000		MOVUPS X15, 0x2b0(SP)					
  repro_test.go:32	0x5361de		488b842438010000		MOVQ 0x138(SP), AX					
  repro_test.go:32	0x5361e6		e835c9f4ff			CALL runtime.convT64(SB)				
  repro_test.go:32	0x5361eb		488d0d86f91400			LEAQ 0x14f986(IP), CX					
  repro_test.go:32	0x5361f2		48898c24b0020000		MOVQ CX, 0x2b0(SP)					
  repro_test.go:32	0x5361fa		48898424b8020000		MOVQ AX, 0x2b8(SP)					
  repro_test.go:32	0x536202		488b8424d8020000		MOVQ 0x2d8(SP), AX					
  repro_test.go:32	0x53620a		8400				TESTB AL, 0(AX)						
  repro_test.go:32	0x53620c		488d1d8d3d0000			LEAQ 0x3d8d(IP), BX					
  repro_test.go:32	0x536213		b909000000			MOVL $0x9, CX						
  repro_test.go:32	0x536218		488dbc24b0020000		LEAQ 0x2b0(SP), DI					
  repro_test.go:32	0x536220		be01000000			MOVL $0x1, SI						
  repro_test.go:32	0x536225		4189f0				MOVL SI, R8						
  repro_test.go:32	0x536228		e8d3dcfaff			CALL testing.(*common).Fatalf(SB)			
  repro_test.go:34	0x53622d		488b9424c0020000		MOVQ 0x2c0(SP), DX					
  repro_test.go:34	0x536235		807a7000			CMPB 0x70(DX), $0x0					
  repro_test.go:35	0x536239		be20000000			MOVL $0x20, SI						
  repro_test.go:35	0x53623e		bf1c000000			MOVL $0x1c, DI						
  repro_test.go:35	0x536243		480f45f7			CMOVNE DI, SI						
  repro_test.go:35	0x536247		4889b42430010000		MOVQ SI, 0x130(SP)					
  repro_test.go:35	0x53624f		488d3ddae11600			LEAQ 0x16e1da(IP), DI					
  repro_test.go:35	0x536256		4889bc2488020000		MOVQ DI, 0x288(SP)					
  repro_test.go:35	0x53625e		488d3dd3e11600			LEAQ 0x16e1d3(IP), DI					
  repro_test.go:35	0x536265		4889bc2490020000		MOVQ DI, 0x290(SP)					
  repro_test.go:35	0x53626d		488d3db4e11600			LEAQ 0x16e1b4(IP), DI					
  repro_test.go:35	0x536274		4889bc2498020000		MOVQ DI, 0x298(SP)					
  repro_test.go:34	0x53627c		31ff				XORL DI, DI						
  repro_test.go:34	0x53627e		6690				NOPW							
  repro_test.go:34	0x536280		eb0b				JMP 0x53628d						
  repro_test.go:35	0x536282		488bbc2450020000		MOVQ 0x250(SP), DI					
  repro_test.go:35	0x53628a		48ffc7				INCQ DI							
  repro_test.go:35	0x53628d		4883ff03			CMPQ DI, $0x3						
  repro_test.go:35	0x536291		0f8db2fbffff			JGE 0x535e49						
  repro_test.go:35	0x536297		4889bc2450020000		MOVQ DI, 0x250(SP)					
  repro_test.go:35	0x53629f		4c8b84fc88020000		MOVQ 0x288(SP)(DI*8), R8				
  repro_test.go:35	0x5362a7		4c89842478020000		MOVQ R8, 0x278(SP)					
  repro_test.go:36	0x5362af		48c784245802000003000000	MOVQ $0x3, 0x258(SP)					
  repro_test.go:36	0x5362bb		48c784246002000020000000	MOVQ $0x20, 0x260(SP)					
  repro_test.go:36	0x5362c7		48c784246802000040000000	MOVQ $0x40, 0x268(SP)					
  repro_test.go:36	0x5362d3		31c0				XORL AX, AX						
  repro_test.go:36	0x5362d5		eb0b				JMP 0x5362e2						
  repro_test.go:36	0x5362d7		488b842448020000		MOVQ 0x248(SP), AX					
  repro_test.go:36	0x5362df		48ffc0				INCQ AX							
  repro_test.go:36	0x5362e2		4883f803			CMPQ AX, $0x3						
  repro_test.go:36	0x5362e6		7d9a				JGE 0x536282						
  repro_test.go:36	0x5362e8		4889842448020000		MOVQ AX, 0x248(SP)					
  repro_test.go:36	0x5362f0		488b8cc458020000		MOVQ 0x258(SP)(AX*8), CX				
  repro_test.go:36	0x5362f8		48898c2440020000		MOVQ CX, 0x240(SP)					
  repro_test.go:37	0x536300		488d05b1f61400			LEAQ 0x14f6b1(IP), AX					
  repro_test.go:37	0x536307		bb03000000			MOVL $0x3, BX						
  repro_test.go:37	0x53630c		e84ffff4ff			CALL runtime.makeslice(SB)				
  repro_test.go:38	0x536311		c68424b500000004		MOVB $0x4, 0xb5(SP)					
  repro_test.go:38	0x536319		66c78424b60000000506		MOVW $0x605, 0xb6(SP)					
  repro_test.go:38	0x536323		488d9424b5000000		LEAQ 0xb5(SP), DX					
  repro_test.go:38	0x53632b		4839d0				CMPQ AX, DX						
  repro_test.go:38	0x53632e		7409				JE 0x536339						
  repro_test.go:38	0x536330		c60004				MOVB $0x4, 0(AX)					
  repro_test.go:38	0x536333		66c740010506			MOVW $0x605, 0x1(AX)					
  repro_test.go:39	0x536339		488db424b8000000		LEAQ 0xb8(SP), SI					
  repro_test.go:39	0x536341		4c8b8424c0020000		MOVQ 0x2c0(SP), R8					
  repro_test.go:39	0x536349		450f1030			MOVUPS 0(R8), X14					
  repro_test.go:39	0x53634d		440f1136			MOVUPS X14, 0(SI)					
  repro_test.go:39	0x536351		450f107010			MOVUPS 0x10(R8), X14					
  repro_test.go:39	0x536356		440f117610			MOVUPS X14, 0x10(SI)					
  repro_test.go:39	0x53635b		450f107020			MOVUPS 0x20(R8), X14					
  repro_test.go:39	0x536360		440f117620			MOVUPS X14, 0x20(SI)					
  repro_test.go:39	0x536365		450f107030			MOVUPS 0x30(R8), X14					
  repro_test.go:39	0x53636a		440f117630			MOVUPS X14, 0x30(SI)					
  repro_test.go:39	0x53636f		450f107040			MOVUPS 0x40(R8), X14					
  repro_test.go:39	0x536374		440f117640			MOVUPS X14, 0x40(SI)					
  repro_test.go:39	0x536379		450f107050			MOVUPS 0x50(R8), X14					
  repro_test.go:39	0x53637e		440f117650			MOVUPS X14, 0x50(SI)					
  repro_test.go:39	0x536383		450f107060			MOVUPS 0x60(R8), X14					
  repro_test.go:39	0x536388		440f117660			MOVUPS X14, 0x60(SI)					
  repro_test.go:39	0x53638d		450f107068			MOVUPS 0x68(R8), X14					
  repro_test.go:39	0x536392		440f117668			MOVUPS X14, 0x68(SI)					
  repro_test.go:40	0x536397		488b942478020000		MOVQ 0x278(SP), DX					
  repro_test.go:40	0x53639f		488b32				MOVQ 0(DX), SI						
  repro_test.go:40	0x5363a2		4889c3				MOVQ AX, BX						
  repro_test.go:40	0x5363a5		b903000000			MOVL $0x3, CX						
  repro_test.go:40	0x5363aa		488bbc2440020000		MOVQ 0x240(SP), DI					
  repro_test.go:40	0x5363b2		4c89c0				MOVQ R8, AX						
  repro_test.go:40	0x5363b5		ffd6				CALL SI							
  repro_test.go:40	0x5363b7		660f1f840000000000		NOPW 0(AX)(AX*1)					
  repro_test.go:41	0x5363c0		4883f903			CMPQ CX, $0x3						
  repro_test.go:41	0x5363c4		0f821c010000			JB 0x5364e6						
  repro_test.go:40	0x5363ca		48898c2448010000		MOVQ CX, 0x148(SP)					
  repro_test.go:40	0x5363d2		48899c2440010000		MOVQ BX, 0x140(SP)					
  repro_test.go:40	0x5363da		4889842470020000		MOVQ AX, 0x270(SP)					
  repro_test.go:41	0x5363e2		c68424b200000004		MOVB $0x4, 0xb2(SP)					
  repro_test.go:41	0x5363ea		66c78424b30000000506		MOVW $0x605, 0xb3(SP)					
  bytes.go:23		0x5363f4		488d9c24b2000000		LEAQ 0xb2(SP), BX					
  bytes.go:23		0x5363fc		b903000000			MOVL $0x3, CX						
  bytes.go:23		0x536401		e83ac8ecff			CALL runtime.memequal(SB)				
  bytes.go:23		0x536406		84c0				TESTL AL, AL						
  repro_test.go:41	0x536408		0f8483000000			JE 0x536491						
  repro_test.go:41	0x53640e		488b8c2440010000		MOVQ 0x140(SP), CX					
  repro_test.go:41	0x536416		660f1f840000000000		NOPW 0(AX)(AX*1)					
  repro_test.go:41	0x53641f		90				NOPL							
  repro_test.go:41	0x536420		4883f903			CMPQ CX, $0x3						
  repro_test.go:41	0x536424		0f82b7000000			JB 0x5364e1						
  repro_test.go:41	0x53642a		4883c1fd			ADDQ $-0x3, CX						
  repro_test.go:41	0x53642e		488b942448010000		MOVQ 0x148(SP), DX					
  repro_test.go:41	0x536436		4883c2fd			ADDQ $-0x3, DX						
  repro_test.go:41	0x53643a		48f7da				NEGQ DX							
  repro_test.go:41	0x53643d		48c1fa3f			SARQ $0x3f, DX						
  repro_test.go:41	0x536441		83e203				ANDL $0x3, DX						
  repro_test.go:41	0x536444		488bb42470020000		MOVQ 0x270(SP), SI					
  repro_test.go:41	0x53644c		488d0416			LEAQ 0(SI)(DX*1), AX					
  bytes.go:23		0x536450		488b942430010000		MOVQ 0x130(SP), DX					
  bytes.go:23		0x536458		4839ca				CMPQ DX, CX						
  bytes.go:23		0x53645b		7405				JE 0x536462						
  bytes.go:23		0x53645d		31c0				XORL AX, AX						
  bytes.go:23		0x53645f		90				NOPL							
  bytes.go:23		0x536460		eb0a				JMP 0x53646c						
  bytes.go:23		0x536462		488d5c2432			LEAQ 0x32(SP), BX					
  bytes.go:23		0x536467		e8d4c7ecff			CALL runtime.memequal(SB)				
  repro_test.go:41	0x53646c		84c0				TESTL AL, AL						
  repro_test.go:41	0x53646e		7507				JNE 0x536477						
  repro_test.go:41	0x536470		b801000000			MOVL $0x1, AX						
  repro_test.go:41	0x536475		eb1f				JMP 0x536496						
  repro_test.go:41	0x536477		488b8424c0020000		MOVQ 0x2c0(SP), AX					
  repro_test.go:41	0x53647f		488d9c24b8000000		LEAQ 0xb8(SP), BX					
  repro_test.go:41	0x536487		e894000000			CALL type:.eq.M113(SB)					
  repro_test.go:41	0x53648c		83f001				XORL $0x1, AX						
  repro_test.go:41	0x53648f		eb05				JMP 0x536496						
  repro_test.go:41	0x536491		b801000000			MOVL $0x1, AX						
  repro_test.go:41	0x536496		84c0				TESTL AL, AL						
  repro_test.go:41	0x536498		0f8439feffff			JE 0x5362d7						
  repro_test.go:41	0x53649e		488d1593f41400			LEAQ 0x14f493(IP), DX					
  repro_test.go:41	0x5364a5		48899424b0020000		MOVQ DX, 0x2b0(SP)					
  repro_test.go:41	0x5364ad		488d151c1a0100			LEAQ 0x11a1c(IP), DX					
  repro_test.go:41	0x5364b4		48899424b8020000		MOVQ DX, 0x2b8(SP)					
  repro_test.go:41	0x5364bc		488b8424d8020000		MOVQ 0x2d8(SP), AX					
  repro_test.go:41	0x5364c4		8400				TESTB AL, 0(AX)						
  repro_test.go:41	0x5364c6		488d9c24b0020000		LEAQ 0x2b0(SP), BX					
  repro_test.go:41	0x5364ce		b901000000			MOVL $0x1, CX						
  repro_test.go:41	0x5364d3		89cf				MOVL CX, DI						
  repro_test.go:41	0x5364d5		e826d9faff			CALL testing.(*common).Fatal(SB)			
  repro_test.go:41	0x5364da		e9f8fdffff			JMP 0x5362d7						
  repro_test.go:45	0x5364df		c9				LEAVE							
  repro_test.go:45	0x5364e0		c3				RET							
  repro_test.go:41	0x5364e1		e85a4af5ff			CALL runtime.panicBounds(SB)				
  repro_test.go:41	0x5364e6		e8554af5ff			CALL runtime.panicBounds(SB)				
  repro_test.go:41	0x5364eb		90				NOPL							
  repro_test.go:19	0x5364ec		4889442408			MOVQ AX, 0x8(SP)					
  repro_test.go:19	0x5364f1		e80a2ef5ff			CALL runtime.morestack_noctxt.abi0(SB)			
  repro_test.go:19	0x5364f6		488b442408			MOVQ 0x8(SP), AX					
  repro_test.go:19	0x5364fb		0f1f440000			NOPL 0(AX)(AX*1)					
  repro_test.go:19	0x536500		e91bf9ffff			JMP example.com/hashsumreturn.TestReturnAndSnapshot(SB)	
