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
  sha256.go:206		0x638ebf		488d35e21f2600		LEAQ 0x261fe2(IP), SI						
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
  sha256.go:208		0x638f52		488d354f1f2600		LEAQ 0x261f4f(IP), SI						
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
  sha256.go:211		0x638fe4		0f8614010000		JBE 0x6390fe							
  sha256.go:211		0x638fea		55			PUSHQ BP							
  sha256.go:211		0x638feb		4889e5			MOVQ SP, BP							
  sha256.go:211		0x638fee		4883ec68		SUBQ $0x68, SP							
  sha256.go:221		0x638ff2		4889842498000000	MOVQ AX, 0x98(SP)						
  sha256.go:211		0x638ffa		488d542478		LEAQ 0x78(SP), DX						
  sha256.go:211		0x638fff		440f113a		MOVUPS X15, 0(DX)						
  sha256.go:211		0x639003		440f117a10		MOVUPS X15, 0x10(DX)						
  sha256.go:212		0x639008		488b4868		MOVQ 0x68(AX), CX						
  sha256.go:214		0x63900c		488d5c2420		LEAQ 0x20(SP), BX						
  sha256.go:214		0x639011		440f113b		MOVUPS X15, 0(BX)						
  sha256.go:214		0x639015		440f117b10		MOVUPS X15, 0x10(BX)						
  sha256.go:214		0x63901a		440f117b20		MOVUPS X15, 0x20(BX)						
  sha256.go:214		0x63901f		440f117b30		MOVUPS X15, 0x30(BX)						
  sha256.go:214		0x639024		440f117b38		MOVUPS X15, 0x38(BX)						
  sha256.go:215		0x639029		c644242080		MOVB $0x80, 0x20(SP)						
  sha256.go:217		0x63902e		488d51c9		LEAQ -0x37(CX), DX						
  sha256.go:217		0x639032		48f7da			NEGQ DX								
  sha256.go:217		0x639035		83e23f			ANDL $0x3f, DX							
  sha256.go:220		0x639038		48c1e103		SHLQ $0x3, CX							
  sha256.go:221		0x63903c		488d7209		LEAQ 0x9(DX), SI						
  byteorder.go:135	0x639040		480fc9			BSWAP CX							
  sha256.go:222		0x639043		90			NOPL								
  byteorder.go:34	0x639044		90			NOPL								
  byteorder.go:128	0x639045		48894c1421		MOVQ CX, 0x21(SP)(DX*1)						
  sha256.go:223		0x63904a		4889f1			MOVQ SI, CX							
  sha256.go:223		0x63904d		bf48000000		MOVL $0x48, DI							
  sha256.go:223		0x639052		e8e9faffff		CALL crypto/internal/fips140/sha256.(*Digest).Write(SB)		
  sha256.go:225		0x639057		488b942498000000	MOVQ 0x98(SP), DX						
  sha256.go:225		0x63905f		48837a6000		CMPQ 0x60(DX), $0x0						
  sha256.go:225		0x639064		7577			JNE 0x6390dd							
  sha256.go:229		0x639066		488d442478		LEAQ 0x78(SP), AX						
  sha256.go:229		0x63906b		440f1138		MOVUPS X15, 0(AX)						
  sha256.go:229		0x63906f		440f117810		MOVUPS X15, 0x10(AX)						
  sha256.go:231		0x639074		8b02			MOVL 0(DX), AX							
  byteorder.go:108	0x639076		0fc8			BSWAP AX							
  byteorder.go:30	0x639078		90			NOPL								
  byteorder.go:105	0x639079		89442478		MOVL AX, 0x78(SP)						
  sha256.go:232		0x63907d		8b4204			MOVL 0x4(DX), AX						
  byteorder.go:108	0x639080		0fc8			BSWAP AX							
  byteorder.go:30	0x639082		90			NOPL								
  byteorder.go:105	0x639083		8944247c		MOVL AX, 0x7c(SP)						
  sha256.go:233		0x639087		8b4208			MOVL 0x8(DX), AX						
  byteorder.go:108	0x63908a		0fc8			BSWAP AX							
  byteorder.go:30	0x63908c		90			NOPL								
  byteorder.go:105	0x63908d		89842480000000		MOVL AX, 0x80(SP)						
  sha256.go:234		0x639094		8b420c			MOVL 0xc(DX), AX						
  byteorder.go:108	0x639097		0fc8			BSWAP AX							
  byteorder.go:30	0x639099		90			NOPL								
  byteorder.go:105	0x63909a		89842484000000		MOVL AX, 0x84(SP)						
  sha256.go:235		0x6390a1		8b4210			MOVL 0x10(DX), AX						
  byteorder.go:108	0x6390a4		0fc8			BSWAP AX							
  byteorder.go:30	0x6390a6		90			NOPL								
  byteorder.go:105	0x6390a7		89842488000000		MOVL AX, 0x88(SP)						
  sha256.go:236		0x6390ae		8b4214			MOVL 0x14(DX), AX						
  byteorder.go:108	0x6390b1		0fc8			BSWAP AX							
  byteorder.go:30	0x6390b3		90			NOPL								
  byteorder.go:105	0x6390b4		8984248c000000		MOVL AX, 0x8c(SP)						
  sha256.go:237		0x6390bb		8b4218			MOVL 0x18(DX), AX						
  byteorder.go:108	0x6390be		0fc8			BSWAP AX							
  byteorder.go:30	0x6390c0		90			NOPL								
  byteorder.go:105	0x6390c1		89842490000000		MOVL AX, 0x90(SP)						
  sha256.go:238		0x6390c8		807a7000		CMPB 0x70(DX), $0x0						
  sha256.go:238		0x6390cc		750d			JNE 0x6390db							
  sha256.go:239		0x6390ce		8b421c			MOVL 0x1c(DX), AX						
  byteorder.go:108	0x6390d1		0fc8			BSWAP AX							
  byteorder.go:30	0x6390d3		90			NOPL								
  byteorder.go:105	0x6390d4		89842494000000		MOVL AX, 0x94(SP)						
  sha256.go:242		0x6390db		c9			LEAVE								
  sha256.go:242		0x6390dc		c3			RET								
  sha256.go:226		0x6390dd		488d0594470100		LEAQ 0x14794(IP), AX						
  sha256.go:226		0x6390e4		bb09000000		MOVL $0x9, BX							
  sha256.go:226		0x6390e9		e87200e5ff		CALL runtime.convTstring(SB)					
  sha256.go:226		0x6390ee		4889c3			MOVQ AX, BX							
  sha256.go:226		0x6390f1		488d05301d2600		LEAQ 0x261d30(IP), AX						
  sha256.go:226		0x6390f8		e8a320e5ff		CALL runtime.gopanic(SB)					
  sha256.go:226		0x6390fd		90			NOPL								
  sha256.go:211		0x6390fe		4889442428		MOVQ AX, 0x28(SP)						
  sha256.go:211		0x639103		e8587ae5ff		CALL runtime.morestack_noctxt.abi0(SB)				
  sha256.go:211		0x639108		488b442428		MOVQ 0x28(SP), AX						
  sha256.go:211		0x63910d		e9cefeffff		JMP crypto/internal/fips140/sha256.(*Digest).checkSum(SB)	

TEXT crypto/internal/fips140/sha512.(*Digest).Sum(SB) /home/exedev/go-crypto/src/crypto/internal/fips140/sha512/sha512.go
  sha512.go:270		0x642240		4c8da42400ffffff	LEAQ 0xffffff00(SP), R12					
  sha512.go:270		0x642248		4d3b6610		CMPQ R12, 0x10(R14)						
  sha512.go:270		0x64224c		0f86bc010000		JBE 0x64240e							
  sha512.go:270		0x642252		55			PUSHQ BP							
  sha512.go:270		0x642253		4889e5			MOVQ SP, BP							
  sha512.go:270		0x642256		4881ec78010000		SUBQ $0x178, SP							
  sha512.go:276		0x64225d		4889842488010000	MOVQ AX, 0x188(SP)						
  sha512.go:276		0x642265		48898c2498010000	MOVQ CX, 0x198(SP)						
  sha512.go:276		0x64226d		48899c2490010000	MOVQ BX, 0x190(SP)						
  sha512.go:276		0x642275		4889bc24a0010000	MOVQ DI, 0x1a0(SP)						
  sha512.go:271		0x64227d		0f1f00			NOPL 0(AX)							
  sha512.go:271		0x642280		e8db5bffff		CALL crypto/internal/fips140.RecordApproved(SB)			
  sha512.go:273		0x642285		488d842488000000	LEAQ 0x88(SP), AX						
  sha512.go:273		0x64228d		b903000000		MOVL $0x3, CX							
  sha512.go:273		0x642292		440f1138		MOVUPS X15, 0(AX)						
  sha512.go:273		0x642296		440f117810		MOVUPS X15, 0x10(AX)						
  sha512.go:273		0x64229b		440f117820		MOVUPS X15, 0x20(AX)						
  sha512.go:273		0x6422a0		440f117830		MOVUPS X15, 0x30(AX)						
  sha512.go:273		0x6422a5		4883c040		ADDQ $0x40, AX							
  sha512.go:273		0x6422a9		ffc9			DECL CX								
  sha512.go:273		0x6422ab		75e5			JNE 0x642292							
  sha512.go:273		0x6422ad		440f1138		MOVUPS X15, 0(AX)						
  sha512.go:273		0x6422b1		440f117808		MOVUPS X15, 0x8(AX)						
  sha512.go:274		0x6422b6		488d842488000000	LEAQ 0x88(SP), AX						
  sha512.go:274		0x6422be		488b8c2488010000	MOVQ 0x188(SP), CX						
  sha512.go:274		0x6422c6		bb03000000		MOVL $0x3, BX							
  sha512.go:274		0x6422cb		440f1031		MOVUPS 0(CX), X14						
  sha512.go:274		0x6422cf		440f1130		MOVUPS X14, 0(AX)						
  sha512.go:274		0x6422d3		440f107110		MOVUPS 0x10(CX), X14						
  sha512.go:274		0x6422d8		440f117010		MOVUPS X14, 0x10(AX)						
  sha512.go:274		0x6422dd		440f107120		MOVUPS 0x20(CX), X14						
  sha512.go:274		0x6422e2		440f117020		MOVUPS X14, 0x20(AX)						
  sha512.go:274		0x6422e7		440f107130		MOVUPS 0x30(CX), X14						
  sha512.go:274		0x6422ec		440f117030		MOVUPS X14, 0x30(AX)						
  sha512.go:274		0x6422f1		4883c140		ADDQ $0x40, CX							
  sha512.go:274		0x6422f5		4883c040		ADDQ $0x40, AX							
  sha512.go:274		0x6422f9		ffcb			DECL BX								
  sha512.go:274		0x6422fb		75ce			JNE 0x6422cb							
  sha512.go:274		0x6422fd		440f1031		MOVUPS 0(CX), X14						
  sha512.go:274		0x642301		440f1130		MOVUPS X14, 0(AX)						
  sha512.go:274		0x642305		440f107108		MOVUPS 0x8(CX), X14						
  sha512.go:274		0x64230a		440f117008		MOVUPS X14, 0x8(AX)						
  sha512.go:275		0x64230f		488d842488000000	LEAQ 0x88(SP), AX						
  sha512.go:275		0x642317		e844010000		CALL crypto/internal/fips140/sha512.(*Digest).checkSum(SB)	
  sha512.go:275		0x64231c		488d5c2448		LEAQ 0x48(SP), BX						
  sha512.go:275		0x642321		4889e0			MOVQ SP, AX							
  sha512.go:275		0x642324		440f1030		MOVUPS 0(AX), X14						
  sha512.go:275		0x642328		440f1133		MOVUPS X14, 0(BX)						
  sha512.go:275		0x64232c		440f107010		MOVUPS 0x10(AX), X14						
  sha512.go:275		0x642331		440f117310		MOVUPS X14, 0x10(BX)						
  sha512.go:275		0x642336		440f107020		MOVUPS 0x20(AX), X14						
  sha512.go:275		0x64233b		440f117320		MOVUPS X14, 0x20(BX)						
  sha512.go:275		0x642340		440f107030		MOVUPS 0x30(AX), X14						
  sha512.go:275		0x642345		440f117330		MOVUPS X14, 0x30(BX)						
  sha512.go:276		0x64234a		488b842488010000	MOVQ 0x188(SP), AX						
  sha512.go:276		0x642352		488bb8d0000000		MOVQ 0xd0(AX), DI						
  sha512.go:276		0x642359		0f1f8000000000		NOPL 0(AX)							
  sha512.go:276		0x642360		4883ff40		CMPQ DI, $0x40							
  sha512.go:276		0x642364		0f8799000000		JA 0x642403							
  sha512.go:276		0x64236a		488b942498010000	MOVQ 0x198(SP), DX						
  sha512.go:276		0x642372		4c8d043a		LEAQ 0(DX)(DI*1), R8						
  sha512.go:276		0x642376		488b8c24a0010000	MOVQ 0x1a0(SP), CX						
  sha512.go:276		0x64237e		6690			NOPW								
  sha512.go:276		0x642380		4c39c1			CMPQ CX, R8							
  sha512.go:276		0x642383		720a			JB 0x64238f							
  sha512.go:276		0x642385		488b842490010000	MOVQ 0x190(SP), AX						
  sha512.go:276		0x64238d		eb37			JMP 0x6423c6							
  sha512.go:276		0x64238f		4889bc2468010000	MOVQ DI, 0x168(SP)						
  sha512.go:276		0x642397		488b842490010000	MOVQ 0x190(SP), AX						
  sha512.go:276		0x64239f		4c89c3			MOVQ R8, BX							
  sha512.go:276		0x6423a2		488d35ff8a2500		LEAQ 0x258aff(IP), SI						
  sha512.go:276		0x6423a9		e832b5e4ff		CALL runtime.growslice(SB)					
  sha512.go:276		0x6423ae		488b942498010000	MOVQ 0x198(SP), DX						
  sha512.go:276		0x6423b6		488bbc2468010000	MOVQ 0x168(SP), DI						
  sha512.go:276		0x6423be		4989d8			MOVQ BX, R8							
  sha512.go:275		0x6423c1		488d5c2448		LEAQ 0x48(SP), BX						
  sha512.go:276		0x6423c6		48898c2468010000	MOVQ CX, 0x168(SP)						
  sha512.go:276		0x6423ce		4c89842460010000	MOVQ R8, 0x160(SP)						
  sha512.go:276		0x6423d6		4889842470010000	MOVQ AX, 0x170(SP)						
  sha512.go:276		0x6423de		4801d0			ADDQ DX, AX							
  sha512.go:276		0x6423e1		4889f9			MOVQ DI, CX							
  sha512.go:276		0x6423e4		e85707e5ff		CALL runtime.memmove(SB)					
  sha512.go:276		0x6423e9		488b842470010000	MOVQ 0x170(SP), AX						
  sha512.go:276		0x6423f1		488b9c2460010000	MOVQ 0x160(SP), BX						
  sha512.go:276		0x6423f9		488b8c2468010000	MOVQ 0x168(SP), CX						
  sha512.go:276		0x642401		c9			LEAVE								
  sha512.go:276		0x642402		c3			RET								
  sha512.go:276		0x642403		b840000000		MOVL $0x40, AX							
  sha512.go:276		0x642408		e89303e5ff		CALL runtime.panicBounds(SB)					
  sha512.go:276		0x64240d		90			NOPL								
  sha512.go:270		0x64240e		4889442408		MOVQ AX, 0x8(SP)						
  sha512.go:270		0x642413		48895c2410		MOVQ BX, 0x10(SP)						
  sha512.go:270		0x642418		48894c2418		MOVQ CX, 0x18(SP)						
  sha512.go:270		0x64241d		48897c2420		MOVQ DI, 0x20(SP)						
  sha512.go:270		0x642422		e839e7e4ff		CALL runtime.morestack_noctxt.abi0(SB)				
  sha512.go:270		0x642427		488b442408		MOVQ 0x8(SP), AX						
  sha512.go:270		0x64242c		488b5c2410		MOVQ 0x10(SP), BX						
  sha512.go:270		0x642431		488b4c2418		MOVQ 0x18(SP), CX						
  sha512.go:270		0x642436		488b7c2420		MOVQ 0x20(SP), DI						
  sha512.go:270		0x64243b		0f1f440000		NOPL 0(AX)(AX*1)						
  sha512.go:270		0x642440		e9fbfdffff		JMP crypto/internal/fips140/sha512.(*Digest).Sum(SB)		

TEXT crypto/internal/fips140/sha512.(*Digest).checkSum(SB) /home/exedev/go-crypto/src/crypto/internal/fips140/sha512/sha512.go
  sha512.go:279		0x642460		4c8d6424c8		LEAQ -0x38(SP), R12						
  sha512.go:279		0x642465		4d3b6610		CMPQ R12, 0x10(R14)						
  sha512.go:279		0x642469		0f8677010000		JBE 0x6425e6							
  sha512.go:279		0x64246f		55			PUSHQ BP							
  sha512.go:279		0x642470		4889e5			MOVQ SP, BP							
  sha512.go:279		0x642473		4881ecb0000000		SUBQ $0xb0, SP							
  sha512.go:289		0x64247a		4889842400010000	MOVQ AX, 0x100(SP)						
  sha512.go:279		0x642482		488d9424c0000000	LEAQ 0xc0(SP), DX						
  sha512.go:279		0x64248a		440f113a		MOVUPS X15, 0(DX)						
  sha512.go:279		0x64248e		440f117a10		MOVUPS X15, 0x10(DX)						
  sha512.go:279		0x642493		440f117a20		MOVUPS X15, 0x20(DX)						
  sha512.go:279		0x642498		440f117a30		MOVUPS X15, 0x30(DX)						
  sha512.go:281		0x64249d		488b88c8000000		MOVQ 0xc8(AX), CX						
  sha512.go:282		0x6424a4		488d5c2420		LEAQ 0x20(SP), BX						
  sha512.go:282		0x6424a9		440f113b		MOVUPS X15, 0(BX)						
  sha512.go:282		0x6424ad		440f117b10		MOVUPS X15, 0x10(BX)						
  sha512.go:282		0x6424b2		440f117b20		MOVUPS X15, 0x20(BX)						
  sha512.go:282		0x6424b7		440f117b30		MOVUPS X15, 0x30(BX)						
  sha512.go:282		0x6424bc		440f117b40		MOVUPS X15, 0x40(BX)						
  sha512.go:282		0x6424c1		440f117b50		MOVUPS X15, 0x50(BX)						
  sha512.go:282		0x6424c6		440f117b60		MOVUPS X15, 0x60(BX)						
  sha512.go:282		0x6424cb		440f117b70		MOVUPS X15, 0x70(BX)						
  sha512.go:282		0x6424d0		440f11bb80000000	MOVUPS X15, 0x80(BX)						
  sha512.go:283		0x6424d8		c644242080		MOVB $0x80, 0x20(SP)						
  sha512.go:285		0x6424dd		488d5191		LEAQ -0x6f(CX), DX						
  sha512.go:285		0x6424e1		48f7da			NEGQ DX								
  sha512.go:285		0x6424e4		83e27f			ANDL $0x7f, DX							
  sha512.go:288		0x6424e7		48c1e103		SHLQ $0x3, CX							
  sha512.go:289		0x6424eb		488d7211		LEAQ 0x11(DX), SI						
  byteorder.go:135	0x6424ef		480fc9			BSWAP CX							
  sha512.go:293		0x6424f2		90			NOPL								
  byteorder.go:34	0x6424f3		90			NOPL								
  byteorder.go:128	0x6424f4		48894c1429		MOVQ CX, 0x29(SP)(DX*1)						
  sha512.go:294		0x6424f9		4889f1			MOVQ SI, CX							
  sha512.go:294		0x6424fc		bf90000000		MOVL $0x90, DI							
  sha512.go:294		0x642501		e89afaffff		CALL crypto/internal/fips140/sha512.(*Digest).Write(SB)		
  sha512.go:296		0x642506		488b942400010000	MOVQ 0x100(SP), DX						
  sha512.go:296		0x64250e		4883bac000000000	CMPQ 0xc0(DX), $0x0						
  sha512.go:296		0x642516		0f85a8000000		JNE 0x6425c4							
  sha512.go:300		0x64251c		488d8424c0000000	LEAQ 0xc0(SP), AX						
  sha512.go:300		0x642524		440f1138		MOVUPS X15, 0(AX)						
  sha512.go:300		0x642528		440f117810		MOVUPS X15, 0x10(AX)						
  sha512.go:300		0x64252d		440f117820		MOVUPS X15, 0x20(AX)						
  sha512.go:300		0x642532		440f117830		MOVUPS X15, 0x30(AX)						
  sha512.go:301		0x642537		488b02			MOVQ 0(DX), AX							
  byteorder.go:135	0x64253a		480fc8			BSWAP AX							
  byteorder.go:34	0x64253d		90			NOPL								
  byteorder.go:128	0x64253e		48898424c0000000	MOVQ AX, 0xc0(SP)						
  sha512.go:302		0x642546		488b4208		MOVQ 0x8(DX), AX						
  byteorder.go:135	0x64254a		480fc8			BSWAP AX							
  byteorder.go:34	0x64254d		90			NOPL								
  byteorder.go:128	0x64254e		48898424c8000000	MOVQ AX, 0xc8(SP)						
  sha512.go:303		0x642556		488b4210		MOVQ 0x10(DX), AX						
  byteorder.go:135	0x64255a		480fc8			BSWAP AX							
  byteorder.go:34	0x64255d		90			NOPL								
  byteorder.go:128	0x64255e		48898424d0000000	MOVQ AX, 0xd0(SP)						
  sha512.go:304		0x642566		488b4218		MOVQ 0x18(DX), AX						
  byteorder.go:135	0x64256a		480fc8			BSWAP AX							
  byteorder.go:34	0x64256d		90			NOPL								
  byteorder.go:128	0x64256e		48898424d8000000	MOVQ AX, 0xd8(SP)						
  sha512.go:305		0x642576		488b4220		MOVQ 0x20(DX), AX						
  byteorder.go:135	0x64257a		480fc8			BSWAP AX							
  byteorder.go:34	0x64257d		90			NOPL								
  byteorder.go:128	0x64257e		48898424e0000000	MOVQ AX, 0xe0(SP)						
  sha512.go:306		0x642586		488b4228		MOVQ 0x28(DX), AX						
  byteorder.go:135	0x64258a		480fc8			BSWAP AX							
  byteorder.go:34	0x64258d		90			NOPL								
  byteorder.go:128	0x64258e		48898424e8000000	MOVQ AX, 0xe8(SP)						
  sha512.go:307		0x642596		4883bad000000030	CMPQ 0xd0(DX), $0x30						
  sha512.go:307		0x64259e		6690			NOPW								
  sha512.go:307		0x6425a0		7420			JE 0x6425c2							
  sha512.go:308		0x6425a2		488b4230		MOVQ 0x30(DX), AX						
  byteorder.go:135	0x6425a6		480fc8			BSWAP AX							
  byteorder.go:34	0x6425a9		90			NOPL								
  byteorder.go:128	0x6425aa		48898424f0000000	MOVQ AX, 0xf0(SP)						
  sha512.go:309		0x6425b2		488b4238		MOVQ 0x38(DX), AX						
  byteorder.go:135	0x6425b6		480fc8			BSWAP AX							
  byteorder.go:34	0x6425b9		90			NOPL								
  byteorder.go:128	0x6425ba		48898424f8000000	MOVQ AX, 0xf8(SP)						
  sha512.go:312		0x6425c2		c9			LEAVE								
  sha512.go:312		0x6425c3		c3			RET								
  sha512.go:297		0x6425c4		488d05adb20000		LEAQ 0xb2ad(IP), AX						
  sha512.go:297		0x6425cb		bb09000000		MOVL $0x9, BX							
  sha512.go:297		0x6425d0		e88b6be4ff		CALL runtime.convTstring(SB)					
  sha512.go:297		0x6425d5		4889c3			MOVQ AX, BX							
  sha512.go:297		0x6425d8		488d0549882500		LEAQ 0x258849(IP), AX						
  sha512.go:297		0x6425df		90			NOPL								
  sha512.go:297		0x6425e0		e8bb8be4ff		CALL runtime.gopanic(SB)					
  sha512.go:297		0x6425e5		90			NOPL								
  sha512.go:279		0x6425e6		4889442448		MOVQ AX, 0x48(SP)						
  sha512.go:279		0x6425eb		e870e5e4ff		CALL runtime.morestack_noctxt.abi0(SB)				
  sha512.go:279		0x6425f0		488b442448		MOVQ 0x48(SP), AX						
  sha512.go:279		0x6425f5		e966feffff		JMP crypto/internal/fips140/sha512.(*Digest).checkSum(SB)	
