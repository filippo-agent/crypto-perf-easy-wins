TEXT crypto/internal/fips140/sha256.(*Digest).Sum(SB) /home/exedev/go-crypto/src/crypto/internal/fips140/sha256/sha256.go
  sha256.go:200		0x638dc0		4c8d6424a0		LEAQ -0x60(SP), R12						
  sha256.go:200		0x638dc5		4d3b6610		CMPQ R12, 0x10(R14)						
  sha256.go:200		0x638dc9		0f86de010000		JBE 0x638fad							
  sha256.go:200		0x638dcf		55			PUSHQ BP							
  sha256.go:200		0x638dd0		4889e5			MOVQ SP, BP							
  sha256.go:200		0x638dd3		4881ecd8000000		SUBQ $0xd8, SP							
  sha256.go:205		0x638dda		48898424e8000000	MOVQ AX, 0xe8(SP)						
  sha256.go:205		0x638de2		48898c24f8000000	MOVQ CX, 0xf8(SP)						
  sha256.go:205		0x638dea		48899c24f0000000	MOVQ BX, 0xf0(SP)						
  sha256.go:205		0x638df2		4889bc2400010000	MOVQ DI, 0x100(SP)						
  sha256.go:201		0x638dfa		e861f0ffff		CALL crypto/internal/fips140.RecordApproved(SB)			
  sha256.go:203		0x638dff		488d442448		LEAQ 0x48(SP), AX						
  sha256.go:203		0x638e04		488b8c24e8000000	MOVQ 0xe8(SP), CX						
  sha256.go:203		0x638e0c		440f1031		MOVUPS 0(CX), X14						
  sha256.go:203		0x638e10		440f1130		MOVUPS X14, 0(AX)						
  sha256.go:203		0x638e14		440f107110		MOVUPS 0x10(CX), X14						
  sha256.go:203		0x638e19		440f117010		MOVUPS X14, 0x10(AX)						
  sha256.go:203		0x638e1e		440f107120		MOVUPS 0x20(CX), X14						
  sha256.go:203		0x638e23		440f117020		MOVUPS X14, 0x20(AX)						
  sha256.go:203		0x638e28		440f107130		MOVUPS 0x30(CX), X14						
  sha256.go:203		0x638e2d		440f117030		MOVUPS X14, 0x30(AX)						
  sha256.go:203		0x638e32		440f107140		MOVUPS 0x40(CX), X14						
  sha256.go:203		0x638e37		440f117040		MOVUPS X14, 0x40(AX)						
  sha256.go:203		0x638e3c		440f107150		MOVUPS 0x50(CX), X14						
  sha256.go:203		0x638e41		440f117050		MOVUPS X14, 0x50(AX)						
  sha256.go:203		0x638e46		440f107160		MOVUPS 0x60(CX), X14						
  sha256.go:203		0x638e4b		440f117060		MOVUPS X14, 0x60(AX)						
  sha256.go:203		0x638e50		440f107168		MOVUPS 0x68(CX), X14						
  sha256.go:203		0x638e55		440f117068		MOVUPS X14, 0x68(AX)						
  sha256.go:204		0x638e5a		e881010000		CALL crypto/internal/fips140/sha256.(*Digest).checkSum(SB)	
  sha256.go:204		0x638e5f		488d5c2428		LEAQ 0x28(SP), BX						
  sha256.go:204		0x638e64		4889e0			MOVQ SP, AX							
  sha256.go:204		0x638e67		440f1030		MOVUPS 0(AX), X14						
  sha256.go:204		0x638e6b		440f1133		MOVUPS X14, 0(BX)						
  sha256.go:204		0x638e6f		440f107010		MOVUPS 0x10(AX), X14						
  sha256.go:204		0x638e74		440f117310		MOVUPS X14, 0x10(BX)						
  sha256.go:205		0x638e79		80bc24b800000000	CMPB 0xb8(SP), $0x0						
  sha256.go:205		0x638e81		0f8498000000		JE 0x638f1f							
  sha256.go:206		0x638e87		488b9424f8000000	MOVQ 0xf8(SP), DX						
  sha256.go:206		0x638e8f		4c8d421c		LEAQ 0x1c(DX), R8						
  sha256.go:206		0x638e93		488b8c2400010000	MOVQ 0x100(SP), CX						
  sha256.go:206		0x638e9b		0f1f440000		NOPL 0(AX)(AX*1)						
  sha256.go:206		0x638ea0		4c39c1			CMPQ CX, R8							
  sha256.go:206		0x638ea3		720a			JB 0x638eaf							
  sha256.go:206		0x638ea5		488b8424f0000000	MOVQ 0xf0(SP), AX						
  sha256.go:206		0x638ead		eb2c			JMP 0x638edb							
  sha256.go:206		0x638eaf		488b8424f0000000	MOVQ 0xf0(SP), AX						
  sha256.go:206		0x638eb7		4c89c3			MOVQ R8, BX							
  sha256.go:206		0x638eba		bf1c000000		MOVL $0x1c, DI							
  sha256.go:206		0x638ebf		488d3522202600		LEAQ 0x262022(IP), SI						
  sha256.go:206		0x638ec6		e8154ae5ff		CALL runtime.growslice(SB)					
  sha256.go:206		0x638ecb		488b9424f8000000	MOVQ 0xf8(SP), DX						
  sha256.go:206		0x638ed3		4989d8			MOVQ BX, R8							
  sha256.go:204		0x638ed6		488d5c2428		LEAQ 0x28(SP), BX						
  sha256.go:206		0x638edb		48898c24c8000000	MOVQ CX, 0xc8(SP)						
  sha256.go:206		0x638ee3		48898424d0000000	MOVQ AX, 0xd0(SP)						
  sha256.go:206		0x638eeb		4c898424c0000000	MOVQ R8, 0xc0(SP)						
  sha256.go:206		0x638ef3		4801d0			ADDQ DX, AX							
  sha256.go:206		0x638ef6		b91c000000		MOVL $0x1c, CX							
  sha256.go:206		0x638efb		0f1f440000		NOPL 0(AX)(AX*1)						
  sha256.go:206		0x638f00		e83b9ce5ff		CALL runtime.memmove(SB)					
  sha256.go:206		0x638f05		488b8424d0000000	MOVQ 0xd0(SP), AX						
  sha256.go:206		0x638f0d		488b9c24c0000000	MOVQ 0xc0(SP), BX						
  sha256.go:206		0x638f15		488b8c24c8000000	MOVQ 0xc8(SP), CX						
  sha256.go:206		0x638f1d		c9			LEAVE								
  sha256.go:206		0x638f1e		c3			RET								
  sha256.go:208		0x638f1f		488b9424f8000000	MOVQ 0xf8(SP), DX						
  sha256.go:208		0x638f27		4c8d4220		LEAQ 0x20(DX), R8						
  sha256.go:208		0x638f2b		488b8c2400010000	MOVQ 0x100(SP), CX						
  sha256.go:208		0x638f33		4c39c1			CMPQ CX, R8							
  sha256.go:208		0x638f36		720a			JB 0x638f42							
  sha256.go:208		0x638f38		488b8424f0000000	MOVQ 0xf0(SP), AX						
  sha256.go:208		0x638f40		eb2c			JMP 0x638f6e							
  sha256.go:208		0x638f42		488b8424f0000000	MOVQ 0xf0(SP), AX						
  sha256.go:208		0x638f4a		4c89c3			MOVQ R8, BX							
  sha256.go:208		0x638f4d		bf20000000		MOVL $0x20, DI							
  sha256.go:208		0x638f52		488d358f1f2600		LEAQ 0x261f8f(IP), SI						
  sha256.go:208		0x638f59		e88249e5ff		CALL runtime.growslice(SB)					
  sha256.go:208		0x638f5e		488b9424f8000000	MOVQ 0xf8(SP), DX						
  sha256.go:208		0x638f66		4989d8			MOVQ BX, R8							
  sha256.go:204		0x638f69		488d5c2428		LEAQ 0x28(SP), BX						
  sha256.go:208		0x638f6e		48898c24c8000000	MOVQ CX, 0xc8(SP)						
  sha256.go:208		0x638f76		4c898424c0000000	MOVQ R8, 0xc0(SP)						
  sha256.go:208		0x638f7e		48898424d0000000	MOVQ AX, 0xd0(SP)						
  sha256.go:208		0x638f86		4801d0			ADDQ DX, AX							
  sha256.go:208		0x638f89		b920000000		MOVL $0x20, CX							
  sha256.go:208		0x638f8e		e8ad9be5ff		CALL runtime.memmove(SB)					
  sha256.go:208		0x638f93		488b8424d0000000	MOVQ 0xd0(SP), AX						
  sha256.go:208		0x638f9b		488b9c24c0000000	MOVQ 0xc0(SP), BX						
  sha256.go:208		0x638fa3		488b8c24c8000000	MOVQ 0xc8(SP), CX						
  sha256.go:208		0x638fab		c9			LEAVE								
  sha256.go:208		0x638fac		c3			RET								
  sha256.go:200		0x638fad		4889442408		MOVQ AX, 0x8(SP)						
  sha256.go:200		0x638fb2		48895c2410		MOVQ BX, 0x10(SP)						
  sha256.go:200		0x638fb7		48894c2418		MOVQ CX, 0x18(SP)						
  sha256.go:200		0x638fbc		48897c2420		MOVQ DI, 0x20(SP)						
  sha256.go:200		0x638fc1		e89a7be5ff		CALL runtime.morestack_noctxt.abi0(SB)				
  sha256.go:200		0x638fc6		488b442408		MOVQ 0x8(SP), AX						
  sha256.go:200		0x638fcb		488b5c2410		MOVQ 0x10(SP), BX						
  sha256.go:200		0x638fd0		488b4c2418		MOVQ 0x18(SP), CX						
  sha256.go:200		0x638fd5		488b7c2420		MOVQ 0x20(SP), DI						
  sha256.go:200		0x638fda		e9e1fdffff		JMP crypto/internal/fips140/sha256.(*Digest).Sum(SB)		

TEXT crypto/internal/fips140/sha256.(*Digest).checkSum(SB) /home/exedev/go-crypto/src/crypto/internal/fips140/sha256/sha256.go
  sha256.go:211		0x638fe0		493b6610		CMPQ SP, 0x10(R14)						
  sha256.go:211		0x638fe4		0f8646010000		JBE 0x639130							
  sha256.go:211		0x638fea		55			PUSHQ BP							
  sha256.go:211		0x638feb		4889e5			MOVQ SP, BP							
  sha256.go:211		0x638fee		4883ec68		SUBQ $0x68, SP							
  sha256.go:211		0x638ff2		488d542478		LEAQ 0x78(SP), DX						
  sha256.go:211		0x638ff7		440f113a		MOVUPS X15, 0(DX)						
  sha256.go:211		0x638ffb		440f117a10		MOVUPS X15, 0x10(DX)						
  sha256.go:212		0x639000		488b4868		MOVQ 0x68(AX), CX						
  sha256.go:214		0x639004		488d5c2420		LEAQ 0x20(SP), BX						
  sha256.go:214		0x639009		440f113b		MOVUPS X15, 0(BX)						
  sha256.go:214		0x63900d		440f117b10		MOVUPS X15, 0x10(BX)						
  sha256.go:214		0x639012		440f117b20		MOVUPS X15, 0x20(BX)						
  sha256.go:214		0x639017		440f117b30		MOVUPS X15, 0x30(BX)						
  sha256.go:214		0x63901c		440f117b38		MOVUPS X15, 0x38(BX)						
  sha256.go:215		0x639021		c644242080		MOVB $0x80, 0x20(SP)						
  sha256.go:217		0x639026		4889ca			MOVQ CX, DX							
  sha256.go:217		0x639029		83e23f			ANDL $0x3f, DX							
  sha256.go:218		0x63902c		488d72c8		LEAQ -0x38(DX), SI						
  sha256.go:218		0x639030		48f7de			NEGQ SI								
  sha256.go:220		0x639033		4c8d4288		LEAQ -0x78(DX), R8						
  sha256.go:220		0x639037		49f7d8			NEGQ R8								
  sha256.go:217		0x63903a		4883fa38		CMPQ DX, $0x38							
  sha256.go:224		0x63903e		4c0f42c6		CMOVB SI, R8							
  sha256.go:225		0x639042		498d5008		LEAQ 0x8(R8), DX						
  sha256.go:225		0x639046		4883fa48		CMPQ DX, $0x48							
  sha256.go:217		0x63904a		0f87d5000000		JA 0x639125							
  sha256.go:226		0x639050		4939d0			CMPQ R8, DX							
  sha256.go:226		0x639053		0f87c5000000		JA 0x63911e							
  sha256.go:217		0x639059		4889842498000000	MOVQ AX, 0x98(SP)						
  sha256.go:224		0x639061		48c1e103		SHLQ $0x3, CX							
  sha256.go:226		0x639065		498d70b8		LEAQ -0x48(R8), SI						
  sha256.go:226		0x639069		48c1fe3f		SARQ $0x3f, SI							
  sha256.go:226		0x63906d		4921f0			ANDQ SI, R8							
  byteorder.go:135	0x639070		480fc9			BSWAP CX							
  byteorder.go:34	0x639073		90			NOPL								
  byteorder.go:128	0x639074		4a894c0420		MOVQ CX, 0x20(SP)(R8*1)						
  sha256.go:227		0x639079		4889d1			MOVQ DX, CX							
  sha256.go:227		0x63907c		bf48000000		MOVL $0x48, DI							
  sha256.go:227		0x639081		e8bafaffff		CALL crypto/internal/fips140/sha256.(*Digest).Write(SB)		
  sha256.go:229		0x639086		488b942498000000	MOVQ 0x98(SP), DX						
  sha256.go:229		0x63908e		48837a6000		CMPQ 0x60(DX), $0x0						
  sha256.go:229		0x639093		7569			JNE 0x6390fe							
  sha256.go:234		0x639095		8b02			MOVL 0(DX), AX							
  byteorder.go:108	0x639097		0fc8			BSWAP AX							
  byteorder.go:30	0x639099		90			NOPL								
  byteorder.go:105	0x63909a		89442478		MOVL AX, 0x78(SP)						
  sha256.go:235		0x63909e		8b4204			MOVL 0x4(DX), AX						
  byteorder.go:108	0x6390a1		0fc8			BSWAP AX							
  byteorder.go:30	0x6390a3		90			NOPL								
  byteorder.go:105	0x6390a4		8944247c		MOVL AX, 0x7c(SP)						
  sha256.go:236		0x6390a8		8b4208			MOVL 0x8(DX), AX						
  byteorder.go:108	0x6390ab		0fc8			BSWAP AX							
  byteorder.go:30	0x6390ad		90			NOPL								
  byteorder.go:105	0x6390ae		89842480000000		MOVL AX, 0x80(SP)						
  sha256.go:237		0x6390b5		8b420c			MOVL 0xc(DX), AX						
  byteorder.go:108	0x6390b8		0fc8			BSWAP AX							
  byteorder.go:30	0x6390ba		90			NOPL								
  byteorder.go:105	0x6390bb		89842484000000		MOVL AX, 0x84(SP)						
  sha256.go:238		0x6390c2		8b4210			MOVL 0x10(DX), AX						
  byteorder.go:108	0x6390c5		0fc8			BSWAP AX							
  byteorder.go:30	0x6390c7		90			NOPL								
  byteorder.go:105	0x6390c8		89842488000000		MOVL AX, 0x88(SP)						
  sha256.go:239		0x6390cf		8b4214			MOVL 0x14(DX), AX						
  byteorder.go:108	0x6390d2		0fc8			BSWAP AX							
  byteorder.go:30	0x6390d4		90			NOPL								
  byteorder.go:105	0x6390d5		8984248c000000		MOVL AX, 0x8c(SP)						
  sha256.go:240		0x6390dc		8b4218			MOVL 0x18(DX), AX						
  byteorder.go:108	0x6390df		0fc8			BSWAP AX							
  byteorder.go:30	0x6390e1		90			NOPL								
  byteorder.go:105	0x6390e2		89842490000000		MOVL AX, 0x90(SP)						
  sha256.go:241		0x6390e9		807a7000		CMPB 0x70(DX), $0x0						
  sha256.go:241		0x6390ed		750d			JNE 0x6390fc							
  sha256.go:242		0x6390ef		8b421c			MOVL 0x1c(DX), AX						
  byteorder.go:108	0x6390f2		0fc8			BSWAP AX							
  byteorder.go:30	0x6390f4		90			NOPL								
  byteorder.go:105	0x6390f5		89842494000000		MOVL AX, 0x94(SP)						
  sha256.go:245		0x6390fc		c9			LEAVE								
  sha256.go:245		0x6390fd		c3			RET								
  sha256.go:230		0x6390fe		488d0573470100		LEAQ 0x14773(IP), AX						
  sha256.go:230		0x639105		bb09000000		MOVL $0x9, BX							
  sha256.go:230		0x63910a		e85100e5ff		CALL runtime.convTstring(SB)					
  sha256.go:230		0x63910f		4889c3			MOVQ AX, BX							
  sha256.go:230		0x639112		488d054f1d2600		LEAQ 0x261d4f(IP), AX						
  sha256.go:230		0x639119		e88220e5ff		CALL runtime.gopanic(SB)					
  sha256.go:226		0x63911e		6690			NOPW								
  sha256.go:226		0x639120		e87b96e5ff		CALL runtime.panicBounds(SB)					
  sha256.go:225		0x639125		b848000000		MOVL $0x48, AX							
  sha256.go:225		0x63912a		e87196e5ff		CALL runtime.panicBounds(SB)					
  sha256.go:225		0x63912f		90			NOPL								
  sha256.go:211		0x639130		4889442428		MOVQ AX, 0x28(SP)						
  sha256.go:211		0x639135		e8267ae5ff		CALL runtime.morestack_noctxt.abi0(SB)				
  sha256.go:211		0x63913a		488b442428		MOVQ 0x28(SP), AX						
  sha256.go:211		0x63913f		90			NOPL								
  sha256.go:211		0x639140		e99bfeffff		JMP crypto/internal/fips140/sha256.(*Digest).checkSum(SB)	

TEXT crypto/internal/fips140/sha512.(*Digest).Sum(SB) /home/exedev/go-crypto/src/crypto/internal/fips140/sha512/sha512.go
  sha512.go:270		0x642280		4c8da42400ffffff	LEAQ 0xffffff00(SP), R12					
  sha512.go:270		0x642288		4d3b6610		CMPQ R12, 0x10(R14)						
  sha512.go:270		0x64228c		0f86bc010000		JBE 0x64244e							
  sha512.go:270		0x642292		55			PUSHQ BP							
  sha512.go:270		0x642293		4889e5			MOVQ SP, BP							
  sha512.go:270		0x642296		4881ec78010000		SUBQ $0x178, SP							
  sha512.go:276		0x64229d		4889842488010000	MOVQ AX, 0x188(SP)						
  sha512.go:276		0x6422a5		48898c2498010000	MOVQ CX, 0x198(SP)						
  sha512.go:276		0x6422ad		48899c2490010000	MOVQ BX, 0x190(SP)						
  sha512.go:276		0x6422b5		4889bc24a0010000	MOVQ DI, 0x1a0(SP)						
  sha512.go:271		0x6422bd		0f1f00			NOPL 0(AX)							
  sha512.go:271		0x6422c0		e89b5bffff		CALL crypto/internal/fips140.RecordApproved(SB)			
  sha512.go:273		0x6422c5		488d842488000000	LEAQ 0x88(SP), AX						
  sha512.go:273		0x6422cd		b903000000		MOVL $0x3, CX							
  sha512.go:273		0x6422d2		440f1138		MOVUPS X15, 0(AX)						
  sha512.go:273		0x6422d6		440f117810		MOVUPS X15, 0x10(AX)						
  sha512.go:273		0x6422db		440f117820		MOVUPS X15, 0x20(AX)						
  sha512.go:273		0x6422e0		440f117830		MOVUPS X15, 0x30(AX)						
  sha512.go:273		0x6422e5		4883c040		ADDQ $0x40, AX							
  sha512.go:273		0x6422e9		ffc9			DECL CX								
  sha512.go:273		0x6422eb		75e5			JNE 0x6422d2							
  sha512.go:273		0x6422ed		440f1138		MOVUPS X15, 0(AX)						
  sha512.go:273		0x6422f1		440f117808		MOVUPS X15, 0x8(AX)						
  sha512.go:274		0x6422f6		488d842488000000	LEAQ 0x88(SP), AX						
  sha512.go:274		0x6422fe		488b8c2488010000	MOVQ 0x188(SP), CX						
  sha512.go:274		0x642306		bb03000000		MOVL $0x3, BX							
  sha512.go:274		0x64230b		440f1031		MOVUPS 0(CX), X14						
  sha512.go:274		0x64230f		440f1130		MOVUPS X14, 0(AX)						
  sha512.go:274		0x642313		440f107110		MOVUPS 0x10(CX), X14						
  sha512.go:274		0x642318		440f117010		MOVUPS X14, 0x10(AX)						
  sha512.go:274		0x64231d		440f107120		MOVUPS 0x20(CX), X14						
  sha512.go:274		0x642322		440f117020		MOVUPS X14, 0x20(AX)						
  sha512.go:274		0x642327		440f107130		MOVUPS 0x30(CX), X14						
  sha512.go:274		0x64232c		440f117030		MOVUPS X14, 0x30(AX)						
  sha512.go:274		0x642331		4883c140		ADDQ $0x40, CX							
  sha512.go:274		0x642335		4883c040		ADDQ $0x40, AX							
  sha512.go:274		0x642339		ffcb			DECL BX								
  sha512.go:274		0x64233b		75ce			JNE 0x64230b							
  sha512.go:274		0x64233d		440f1031		MOVUPS 0(CX), X14						
  sha512.go:274		0x642341		440f1130		MOVUPS X14, 0(AX)						
  sha512.go:274		0x642345		440f107108		MOVUPS 0x8(CX), X14						
  sha512.go:274		0x64234a		440f117008		MOVUPS X14, 0x8(AX)						
  sha512.go:275		0x64234f		488d842488000000	LEAQ 0x88(SP), AX						
  sha512.go:275		0x642357		e844010000		CALL crypto/internal/fips140/sha512.(*Digest).checkSum(SB)	
  sha512.go:275		0x64235c		488d5c2448		LEAQ 0x48(SP), BX						
  sha512.go:275		0x642361		4889e0			MOVQ SP, AX							
  sha512.go:275		0x642364		440f1030		MOVUPS 0(AX), X14						
  sha512.go:275		0x642368		440f1133		MOVUPS X14, 0(BX)						
  sha512.go:275		0x64236c		440f107010		MOVUPS 0x10(AX), X14						
  sha512.go:275		0x642371		440f117310		MOVUPS X14, 0x10(BX)						
  sha512.go:275		0x642376		440f107020		MOVUPS 0x20(AX), X14						
  sha512.go:275		0x64237b		440f117320		MOVUPS X14, 0x20(BX)						
  sha512.go:275		0x642380		440f107030		MOVUPS 0x30(AX), X14						
  sha512.go:275		0x642385		440f117330		MOVUPS X14, 0x30(BX)						
  sha512.go:276		0x64238a		488b842488010000	MOVQ 0x188(SP), AX						
  sha512.go:276		0x642392		488bb8d0000000		MOVQ 0xd0(AX), DI						
  sha512.go:276		0x642399		0f1f8000000000		NOPL 0(AX)							
  sha512.go:276		0x6423a0		4883ff40		CMPQ DI, $0x40							
  sha512.go:276		0x6423a4		0f8799000000		JA 0x642443							
  sha512.go:276		0x6423aa		488b942498010000	MOVQ 0x198(SP), DX						
  sha512.go:276		0x6423b2		4c8d043a		LEAQ 0(DX)(DI*1), R8						
  sha512.go:276		0x6423b6		488b8c24a0010000	MOVQ 0x1a0(SP), CX						
  sha512.go:276		0x6423be		6690			NOPW								
  sha512.go:276		0x6423c0		4c39c1			CMPQ CX, R8							
  sha512.go:276		0x6423c3		720a			JB 0x6423cf							
  sha512.go:276		0x6423c5		488b842490010000	MOVQ 0x190(SP), AX						
  sha512.go:276		0x6423cd		eb37			JMP 0x642406							
  sha512.go:276		0x6423cf		4889bc2468010000	MOVQ DI, 0x168(SP)						
  sha512.go:276		0x6423d7		488b842490010000	MOVQ 0x190(SP), AX						
  sha512.go:276		0x6423df		4c89c3			MOVQ R8, BX							
  sha512.go:276		0x6423e2		488d35ff8a2500		LEAQ 0x258aff(IP), SI						
  sha512.go:276		0x6423e9		e8f2b4e4ff		CALL runtime.growslice(SB)					
  sha512.go:276		0x6423ee		488b942498010000	MOVQ 0x198(SP), DX						
  sha512.go:276		0x6423f6		488bbc2468010000	MOVQ 0x168(SP), DI						
  sha512.go:276		0x6423fe		4989d8			MOVQ BX, R8							
  sha512.go:275		0x642401		488d5c2448		LEAQ 0x48(SP), BX						
  sha512.go:276		0x642406		48898c2468010000	MOVQ CX, 0x168(SP)						
  sha512.go:276		0x64240e		4c89842460010000	MOVQ R8, 0x160(SP)						
  sha512.go:276		0x642416		4889842470010000	MOVQ AX, 0x170(SP)						
  sha512.go:276		0x64241e		4801d0			ADDQ DX, AX							
  sha512.go:276		0x642421		4889f9			MOVQ DI, CX							
  sha512.go:276		0x642424		e81707e5ff		CALL runtime.memmove(SB)					
  sha512.go:276		0x642429		488b842470010000	MOVQ 0x170(SP), AX						
  sha512.go:276		0x642431		488b9c2460010000	MOVQ 0x160(SP), BX						
  sha512.go:276		0x642439		488b8c2468010000	MOVQ 0x168(SP), CX						
  sha512.go:276		0x642441		c9			LEAVE								
  sha512.go:276		0x642442		c3			RET								
  sha512.go:276		0x642443		b840000000		MOVL $0x40, AX							
  sha512.go:276		0x642448		e85303e5ff		CALL runtime.panicBounds(SB)					
  sha512.go:276		0x64244d		90			NOPL								
  sha512.go:270		0x64244e		4889442408		MOVQ AX, 0x8(SP)						
  sha512.go:270		0x642453		48895c2410		MOVQ BX, 0x10(SP)						
  sha512.go:270		0x642458		48894c2418		MOVQ CX, 0x18(SP)						
  sha512.go:270		0x64245d		48897c2420		MOVQ DI, 0x20(SP)						
  sha512.go:270		0x642462		e8f9e6e4ff		CALL runtime.morestack_noctxt.abi0(SB)				
  sha512.go:270		0x642467		488b442408		MOVQ 0x8(SP), AX						
  sha512.go:270		0x64246c		488b5c2410		MOVQ 0x10(SP), BX						
  sha512.go:270		0x642471		488b4c2418		MOVQ 0x18(SP), CX						
  sha512.go:270		0x642476		488b7c2420		MOVQ 0x20(SP), DI						
  sha512.go:270		0x64247b		0f1f440000		NOPL 0(AX)(AX*1)						
  sha512.go:270		0x642480		e9fbfdffff		JMP crypto/internal/fips140/sha512.(*Digest).Sum(SB)		

TEXT crypto/internal/fips140/sha512.(*Digest).checkSum(SB) /home/exedev/go-crypto/src/crypto/internal/fips140/sha512/sha512.go
  sha512.go:279		0x6424a0		4c8d6424c8		LEAQ -0x38(SP), R12						
  sha512.go:279		0x6424a5		4d3b6610		CMPQ R12, 0x10(R14)						
  sha512.go:279		0x6424a9		0f86b7010000		JBE 0x642666							
  sha512.go:279		0x6424af		55			PUSHQ BP							
  sha512.go:279		0x6424b0		4889e5			MOVQ SP, BP							
  sha512.go:279		0x6424b3		4881ecb0000000		SUBQ $0xb0, SP							
  sha512.go:279		0x6424ba		488d9424c0000000	LEAQ 0xc0(SP), DX						
  sha512.go:279		0x6424c2		440f113a		MOVUPS X15, 0(DX)						
  sha512.go:279		0x6424c6		440f117a10		MOVUPS X15, 0x10(DX)						
  sha512.go:279		0x6424cb		440f117a20		MOVUPS X15, 0x20(DX)						
  sha512.go:279		0x6424d0		440f117a30		MOVUPS X15, 0x30(DX)						
  sha512.go:281		0x6424d5		488b88c8000000		MOVQ 0xc8(AX), CX						
  sha512.go:282		0x6424dc		488d5c2420		LEAQ 0x20(SP), BX						
  sha512.go:282		0x6424e1		440f113b		MOVUPS X15, 0(BX)						
  sha512.go:282		0x6424e5		440f117b10		MOVUPS X15, 0x10(BX)						
  sha512.go:282		0x6424ea		440f117b20		MOVUPS X15, 0x20(BX)						
  sha512.go:282		0x6424ef		440f117b30		MOVUPS X15, 0x30(BX)						
  sha512.go:282		0x6424f4		440f117b40		MOVUPS X15, 0x40(BX)						
  sha512.go:282		0x6424f9		440f117b50		MOVUPS X15, 0x50(BX)						
  sha512.go:282		0x6424fe		440f117b60		MOVUPS X15, 0x60(BX)						
  sha512.go:282		0x642503		440f117b70		MOVUPS X15, 0x70(BX)						
  sha512.go:282		0x642508		440f11bb80000000	MOVUPS X15, 0x80(BX)						
  sha512.go:283		0x642510		c644242080		MOVB $0x80, 0x20(SP)						
  sha512.go:285		0x642515		4889ca			MOVQ CX, DX							
  sha512.go:285		0x642518		83e27f			ANDL $0x7f, DX							
  sha512.go:286		0x64251b		488d7290		LEAQ -0x70(DX), SI						
  sha512.go:286		0x64251f		48f7de			NEGQ SI								
  sha512.go:288		0x642522		4c8d8210ffffff		LEAQ 0xffffff10(DX), R8						
  sha512.go:288		0x642529		49f7d8			NEGQ R8								
  sha512.go:285		0x64252c		4883fa70		CMPQ DX, $0x70							
  sha512.go:292		0x642530		4c0f42c6		CMOVB SI, R8							
  sha512.go:293		0x642534		498d5010		LEAQ 0x10(R8), DX						
  sha512.go:293		0x642538		0f1f840000000000	NOPL 0(AX)(AX*1)						
  sha512.go:293		0x642540		4881fa90000000		CMPQ DX, $0x90							
  sha512.go:285		0x642547		0f870c010000		JA 0x642659							
  sha512.go:297		0x64254d		498d7008		LEAQ 0x8(R8), SI						
  sha512.go:297		0x642551		4839d6			CMPQ SI, DX							
  sha512.go:297		0x642554		0f87fa000000		JA 0x642654							
  sha512.go:285		0x64255a		4889842400010000	MOVQ AX, 0x100(SP)						
  sha512.go:292		0x642562		48c1e103		SHLQ $0x3, CX							
  sha512.go:297		0x642566		4981c078ffffff		ADDQ $-0x88, R8							
  sha512.go:297		0x64256d		49c1f83f		SARQ $0x3f, R8							
  sha512.go:297		0x642571		4c21c6			ANDQ R8, SI							
  byteorder.go:135	0x642574		480fc9			BSWAP CX							
  byteorder.go:34	0x642577		90			NOPL								
  byteorder.go:128	0x642578		48894c3420		MOVQ CX, 0x20(SP)(SI*1)						
  sha512.go:298		0x64257d		4889d1			MOVQ DX, CX							
  sha512.go:298		0x642580		bf90000000		MOVL $0x90, DI							
  sha512.go:298		0x642585		e856faffff		CALL crypto/internal/fips140/sha512.(*Digest).Write(SB)		
  sha512.go:300		0x64258a		488b942400010000	MOVQ 0x100(SP), DX						
  sha512.go:300		0x642592		4883bac000000000	CMPQ 0xc0(DX), $0x0						
  sha512.go:300		0x64259a		660f1f440000		NOPW 0(AX)(AX*1)						
  sha512.go:300		0x6425a0		0f858b000000		JNE 0x642631							
  sha512.go:304		0x6425a6		488b02			MOVQ 0(DX), AX							
  byteorder.go:135	0x6425a9		480fc8			BSWAP AX							
  byteorder.go:34	0x6425ac		90			NOPL								
  byteorder.go:128	0x6425ad		48898424c0000000	MOVQ AX, 0xc0(SP)						
  sha512.go:305		0x6425b5		488b4208		MOVQ 0x8(DX), AX						
  byteorder.go:135	0x6425b9		480fc8			BSWAP AX							
  byteorder.go:34	0x6425bc		90			NOPL								
  byteorder.go:128	0x6425bd		48898424c8000000	MOVQ AX, 0xc8(SP)						
  sha512.go:306		0x6425c5		488b4210		MOVQ 0x10(DX), AX						
  byteorder.go:135	0x6425c9		480fc8			BSWAP AX							
  byteorder.go:34	0x6425cc		90			NOPL								
  byteorder.go:128	0x6425cd		48898424d0000000	MOVQ AX, 0xd0(SP)						
  sha512.go:307		0x6425d5		488b4218		MOVQ 0x18(DX), AX						
  byteorder.go:135	0x6425d9		480fc8			BSWAP AX							
  byteorder.go:34	0x6425dc		90			NOPL								
  byteorder.go:128	0x6425dd		48898424d8000000	MOVQ AX, 0xd8(SP)						
  sha512.go:308		0x6425e5		488b4220		MOVQ 0x20(DX), AX						
  byteorder.go:135	0x6425e9		480fc8			BSWAP AX							
  byteorder.go:34	0x6425ec		90			NOPL								
  byteorder.go:128	0x6425ed		48898424e0000000	MOVQ AX, 0xe0(SP)						
  sha512.go:309		0x6425f5		488b4228		MOVQ 0x28(DX), AX						
  byteorder.go:135	0x6425f9		480fc8			BSWAP AX							
  byteorder.go:34	0x6425fc		90			NOPL								
  byteorder.go:128	0x6425fd		48898424e8000000	MOVQ AX, 0xe8(SP)						
  sha512.go:310		0x642605		4883bad000000030	CMPQ 0xd0(DX), $0x30						
  sha512.go:310		0x64260d		7420			JE 0x64262f							
  sha512.go:311		0x64260f		488b4230		MOVQ 0x30(DX), AX						
  byteorder.go:135	0x642613		480fc8			BSWAP AX							
  byteorder.go:34	0x642616		90			NOPL								
  byteorder.go:128	0x642617		48898424f0000000	MOVQ AX, 0xf0(SP)						
  sha512.go:312		0x64261f		488b4238		MOVQ 0x38(DX), AX						
  byteorder.go:135	0x642623		480fc8			BSWAP AX							
  byteorder.go:34	0x642626		90			NOPL								
  byteorder.go:128	0x642627		48898424f8000000	MOVQ AX, 0xf8(SP)						
  sha512.go:315		0x64262f		c9			LEAVE								
  sha512.go:315		0x642630		c3			RET								
  sha512.go:301		0x642631		488d0540b20000		LEAQ 0xb240(IP), AX						
  sha512.go:301		0x642638		bb09000000		MOVL $0x9, BX							
  sha512.go:301		0x64263d		0f1f00			NOPL 0(AX)							
  sha512.go:301		0x642640		e81b6be4ff		CALL runtime.convTstring(SB)					
  sha512.go:301		0x642645		4889c3			MOVQ AX, BX							
  sha512.go:301		0x642648		488d0519882500		LEAQ 0x258819(IP), AX						
  sha512.go:301		0x64264f		e84c8be4ff		CALL runtime.gopanic(SB)					
  sha512.go:297		0x642654		e84701e5ff		CALL runtime.panicBounds(SB)					
  sha512.go:293		0x642659		b890000000		MOVL $0x90, AX							
  sha512.go:293		0x64265e		6690			NOPW								
  sha512.go:293		0x642660		e83b01e5ff		CALL runtime.panicBounds(SB)					
  sha512.go:293		0x642665		90			NOPL								
  sha512.go:279		0x642666		4889442448		MOVQ AX, 0x48(SP)						
  sha512.go:279		0x64266b		e8f0e4e4ff		CALL runtime.morestack_noctxt.abi0(SB)				
  sha512.go:279		0x642670		488b442448		MOVQ 0x48(SP), AX						
  sha512.go:279		0x642675		e926feffff		JMP crypto/internal/fips140/sha512.(*Digest).checkSum(SB)	
