TEXT crypto/internal/fips140/sha256.(*Digest).Sum(SB) /home/exedev/go-crypto/src/crypto/internal/fips140/sha256/sha256.go
  sha256.go:200		0x638dc0		4c8d6424a0		LEAQ -0x60(SP), R12						
  sha256.go:200		0x638dc5		4d3b6610		CMPQ R12, 0x10(R14)						
  sha256.go:200		0x638dc9		0f8637020000		JBE 0x639006							
  sha256.go:200		0x638dcf		55			PUSHQ BP							
  sha256.go:200		0x638dd0		4889e5			MOVQ SP, BP							
  sha256.go:200		0x638dd3		4881ecd8000000		SUBQ $0xd8, SP							
  sha256.go:205		0x638dda		48898424e8000000	MOVQ AX, 0xe8(SP)						
  sha256.go:205		0x638de2		4889bc2400010000	MOVQ DI, 0x100(SP)						
  sha256.go:205		0x638dea		48898c24f8000000	MOVQ CX, 0xf8(SP)						
  sha256.go:205		0x638df2		48899c24f0000000	MOVQ BX, 0xf0(SP)						
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
  sha256.go:204		0x638e5a		e8e1010000		CALL crypto/internal/fips140/sha256.(*Digest).checkSum(SB)	
  sha256.go:204		0x638e5f		488d5c2428		LEAQ 0x28(SP), BX						
  sha256.go:204		0x638e64		4889e0			MOVQ SP, AX							
  sha256.go:204		0x638e67		440f1030		MOVUPS 0(AX), X14						
  sha256.go:204		0x638e6b		440f1133		MOVUPS X14, 0(BX)						
  sha256.go:204		0x638e6f		440f107010		MOVUPS 0x10(AX), X14						
  sha256.go:204		0x638e74		440f117310		MOVUPS X14, 0x10(BX)						
  sha256.go:205		0x638e79		80bc24b800000000	CMPB 0xb8(SP), $0x0						
  sha256.go:205		0x638e81		0f84cb000000		JE 0x638f52							
  sha256.go:207		0x638e87		488b9424f8000000	MOVQ 0xf8(SP), DX						
  sha256.go:207		0x638e8f		4c8d421c		LEAQ 0x1c(DX), R8						
  sha256.go:207		0x638e93		488b8c2400010000	MOVQ 0x100(SP), CX						
  sha256.go:207		0x638e9b		0f1f440000		NOPL 0(AX)(AX*1)						
  sha256.go:207		0x638ea0		4c39c1			CMPQ CX, R8							
  sha256.go:207		0x638ea3		720a			JB 0x638eaf							
  sha256.go:207		0x638ea5		488b8424f0000000	MOVQ 0xf0(SP), AX						
  sha256.go:207		0x638ead		eb2c			JMP 0x638edb							
  sha256.go:207		0x638eaf		488b8424f0000000	MOVQ 0xf0(SP), AX						
  sha256.go:207		0x638eb7		4c89c3			MOVQ R8, BX							
  sha256.go:207		0x638eba		bf1c000000		MOVL $0x1c, DI							
  sha256.go:207		0x638ebf		488d3562202600		LEAQ 0x262062(IP), SI						
  sha256.go:207		0x638ec6		e8154ae5ff		CALL runtime.growslice(SB)					
  sha256.go:208		0x638ecb		488b9424f8000000	MOVQ 0xf8(SP), DX						
  sha256.go:207		0x638ed3		4989d8			MOVQ BX, R8							
  sha256.go:204		0x638ed6		488d5c2428		LEAQ 0x28(SP), BX						
  sha256.go:207		0x638edb		498d7400e4		LEAQ -0x1c(R8)(AX*1), SI					
  sha256.go:207		0x638ee0		440f113e		MOVUPS X15, 0(SI)						
  sha256.go:207		0x638ee4		440f117e0c		MOVUPS X15, 0xc(SI)						
  sha256.go:208		0x638ee9		4c39c2			CMPQ DX, R8							
  sha256.go:208		0x638eec		0f8709010000		JA 0x638ffb							
  sha256.go:208		0x638ef2		4c89c6			MOVQ R8, SI							
  sha256.go:208		0x638ef5		4929d0			SUBQ DX, R8							
  sha256.go:208		0x638ef8		4889d7			MOVQ DX, DI							
  sha256.go:208		0x638efb		4829ca			SUBQ CX, DX							
  sha256.go:208		0x638efe		48c1fa3f		SARQ $0x3f, DX							
  sha256.go:208		0x638f02		4821d7			ANDQ DX, DI							
  sha256.go:208		0x638f05		488d1438		LEAQ 0(AX)(DI*1), DX						
  sha256.go:208		0x638f09		4983f81c		CMPQ R8, $0x1c							
  sha256.go:208		0x638f0d		0f82e3000000		JB 0x638ff6							
  sha256.go:207		0x638f13		48898c24c8000000	MOVQ CX, 0xc8(SP)						
  sha256.go:207		0x638f1b		4889b424c0000000	MOVQ SI, 0xc0(SP)						
  sha256.go:207		0x638f23		48898424d0000000	MOVQ AX, 0xd0(SP)						
  sha256.go:208		0x638f2b		4889d0			MOVQ DX, AX							
  sha256.go:208		0x638f2e		b91c000000		MOVL $0x1c, CX							
  sha256.go:208		0x638f33		e8089ce5ff		CALL runtime.memmove(SB)					
  sha256.go:209		0x638f38		488b8424d0000000	MOVQ 0xd0(SP), AX						
  sha256.go:209		0x638f40		488b9c24c0000000	MOVQ 0xc0(SP), BX						
  sha256.go:209		0x638f48		488b8c24c8000000	MOVQ 0xc8(SP), CX						
  sha256.go:209		0x638f50		c9			LEAVE								
  sha256.go:209		0x638f51		c3			RET								
  sha256.go:212		0x638f52		488b9424f8000000	MOVQ 0xf8(SP), DX						
  sha256.go:212		0x638f5a		4c8d4220		LEAQ 0x20(DX), R8						
  sha256.go:212		0x638f5e		488b8c2400010000	MOVQ 0x100(SP), CX						
  sha256.go:212		0x638f66		4c39c1			CMPQ CX, R8							
  sha256.go:212		0x638f69		720a			JB 0x638f75							
  sha256.go:212		0x638f6b		488b8424f0000000	MOVQ 0xf0(SP), AX						
  sha256.go:212		0x638f73		eb2c			JMP 0x638fa1							
  sha256.go:212		0x638f75		488b8424f0000000	MOVQ 0xf0(SP), AX						
  sha256.go:212		0x638f7d		4c89c3			MOVQ R8, BX							
  sha256.go:212		0x638f80		bf20000000		MOVL $0x20, DI							
  sha256.go:212		0x638f85		488d359c1f2600		LEAQ 0x261f9c(IP), SI						
  sha256.go:212		0x638f8c		e84f49e5ff		CALL runtime.growslice(SB)					
  sha256.go:213		0x638f91		488b9424f8000000	MOVQ 0xf8(SP), DX						
  sha256.go:212		0x638f99		4989d8			MOVQ BX, R8							
  sha256.go:204		0x638f9c		488d5c2428		LEAQ 0x28(SP), BX						
  sha256.go:212		0x638fa1		498d7400e0		LEAQ -0x20(R8)(AX*1), SI					
  sha256.go:212		0x638fa6		440f113e		MOVUPS X15, 0(SI)						
  sha256.go:212		0x638faa		440f117e10		MOVUPS X15, 0x10(SI)						
  sha256.go:213		0x638faf		4c39c2			CMPQ DX, R8							
  sha256.go:213		0x638fb2		773d			JA 0x638ff1							
  sha256.go:213		0x638fb4		4c89c6			MOVQ R8, SI							
  sha256.go:213		0x638fb7		4929d0			SUBQ DX, R8							
  sha256.go:213		0x638fba		4889d7			MOVQ DX, DI							
  sha256.go:213		0x638fbd		4829ca			SUBQ CX, DX							
  sha256.go:213		0x638fc0		48c1fa3f		SARQ $0x3f, DX							
  sha256.go:213		0x638fc4		4821fa			ANDQ DI, DX							
  sha256.go:213		0x638fc7		4801c2			ADDQ AX, DX							
  sha256.go:213		0x638fca		4983f820		CMPQ R8, $0x20							
  sha256.go:213		0x638fce		7217			JB 0x638fe7							
  sha256.go:213		0x638fd0		440f1033		MOVUPS 0(BX), X14						
  sha256.go:213		0x638fd4		440f1132		MOVUPS X14, 0(DX)						
  sha256.go:213		0x638fd8		440f107310		MOVUPS 0x10(BX), X14						
  sha256.go:213		0x638fdd		440f117210		MOVUPS X14, 0x10(DX)						
  sha256.go:214		0x638fe2		4889f3			MOVQ SI, BX							
  sha256.go:214		0x638fe5		c9			LEAVE								
  sha256.go:214		0x638fe6		c3			RET								
  sha256.go:213		0x638fe7		b820000000		MOVL $0x20, AX							
  sha256.go:213		0x638fec		e8af97e5ff		CALL runtime.panicBounds(SB)					
  sha256.go:213		0x638ff1		e8aa97e5ff		CALL runtime.panicBounds(SB)					
  sha256.go:208		0x638ff6		e8a597e5ff		CALL runtime.panicBounds(SB)					
  sha256.go:208		0x638ffb		0f1f440000		NOPL 0(AX)(AX*1)						
  sha256.go:208		0x639000		e89b97e5ff		CALL runtime.panicBounds(SB)					
  sha256.go:208		0x639005		90			NOPL								
  sha256.go:200		0x639006		4889442408		MOVQ AX, 0x8(SP)						
  sha256.go:200		0x63900b		48895c2410		MOVQ BX, 0x10(SP)						
  sha256.go:200		0x639010		48894c2418		MOVQ CX, 0x18(SP)						
  sha256.go:200		0x639015		48897c2420		MOVQ DI, 0x20(SP)						
  sha256.go:200		0x63901a		e8417be5ff		CALL runtime.morestack_noctxt.abi0(SB)				
  sha256.go:200		0x63901f		488b442408		MOVQ 0x8(SP), AX						
  sha256.go:200		0x639024		488b5c2410		MOVQ 0x10(SP), BX						
  sha256.go:200		0x639029		488b4c2418		MOVQ 0x18(SP), CX						
  sha256.go:200		0x63902e		488b7c2420		MOVQ 0x20(SP), DI						
  sha256.go:200		0x639033		e988fdffff		JMP crypto/internal/fips140/sha256.(*Digest).Sum(SB)		

TEXT crypto/internal/fips140/sha256.(*Digest).checkSum(SB) /home/exedev/go-crypto/src/crypto/internal/fips140/sha256/sha256.go
  sha256.go:217		0x639040		493b6610		CMPQ SP, 0x10(R14)						
  sha256.go:217		0x639044		0f8652010000		JBE 0x63919c							
  sha256.go:217		0x63904a		55			PUSHQ BP							
  sha256.go:217		0x63904b		4889e5			MOVQ SP, BP							
  sha256.go:217		0x63904e		4883ec68		SUBQ $0x68, SP							
  sha256.go:217		0x639052		488d542478		LEAQ 0x78(SP), DX						
  sha256.go:217		0x639057		440f113a		MOVUPS X15, 0(DX)						
  sha256.go:217		0x63905b		440f117a10		MOVUPS X15, 0x10(DX)						
  sha256.go:218		0x639060		488b4868		MOVQ 0x68(AX), CX						
  sha256.go:220		0x639064		488d5c2420		LEAQ 0x20(SP), BX						
  sha256.go:220		0x639069		440f113b		MOVUPS X15, 0(BX)						
  sha256.go:220		0x63906d		440f117b10		MOVUPS X15, 0x10(BX)						
  sha256.go:220		0x639072		440f117b20		MOVUPS X15, 0x20(BX)						
  sha256.go:220		0x639077		440f117b30		MOVUPS X15, 0x30(BX)						
  sha256.go:220		0x63907c		440f117b38		MOVUPS X15, 0x38(BX)						
  sha256.go:221		0x639081		c644242080		MOVB $0x80, 0x20(SP)						
  sha256.go:223		0x639086		4889ca			MOVQ CX, DX							
  sha256.go:223		0x639089		83e23f			ANDL $0x3f, DX							
  sha256.go:224		0x63908c		488d72c8		LEAQ -0x38(DX), SI						
  sha256.go:224		0x639090		48f7de			NEGQ SI								
  sha256.go:226		0x639093		4c8d4288		LEAQ -0x78(DX), R8						
  sha256.go:226		0x639097		49f7d8			NEGQ R8								
  sha256.go:223		0x63909a		4883fa38		CMPQ DX, $0x38							
  sha256.go:230		0x63909e		4c0f42c6		CMOVB SI, R8							
  sha256.go:231		0x6390a2		498d5008		LEAQ 0x8(R8), DX						
  sha256.go:231		0x6390a6		4883fa48		CMPQ DX, $0x48							
  sha256.go:223		0x6390aa		0f87e1000000		JA 0x639191							
  sha256.go:232		0x6390b0		4939d0			CMPQ R8, DX							
  sha256.go:232		0x6390b3		0f87d3000000		JA 0x63918c							
  sha256.go:223		0x6390b9		4889842498000000	MOVQ AX, 0x98(SP)						
  sha256.go:230		0x6390c1		48c1e103		SHLQ $0x3, CX							
  sha256.go:232		0x6390c5		498d70b8		LEAQ -0x48(R8), SI						
  sha256.go:232		0x6390c9		48c1fe3f		SARQ $0x3f, SI							
  sha256.go:232		0x6390cd		4921f0			ANDQ SI, R8							
  byteorder.go:135	0x6390d0		480fc9			BSWAP CX							
  byteorder.go:34	0x6390d3		90			NOPL								
  byteorder.go:128	0x6390d4		4a894c0420		MOVQ CX, 0x20(SP)(R8*1)						
  sha256.go:233		0x6390d9		4889d1			MOVQ DX, CX							
  sha256.go:233		0x6390dc		bf48000000		MOVL $0x48, DI							
  sha256.go:233		0x6390e1		e85afaffff		CALL crypto/internal/fips140/sha256.(*Digest).Write(SB)		
  sha256.go:235		0x6390e6		488b942498000000	MOVQ 0x98(SP), DX						
  sha256.go:235		0x6390ee		48837a6000		CMPQ 0x60(DX), $0x0						
  sha256.go:235		0x6390f3		7577			JNE 0x63916c							
  sha256.go:239		0x6390f5		488d442478		LEAQ 0x78(SP), AX						
  sha256.go:239		0x6390fa		440f1138		MOVUPS X15, 0(AX)						
  sha256.go:239		0x6390fe		440f117810		MOVUPS X15, 0x10(AX)						
  sha256.go:241		0x639103		8b02			MOVL 0(DX), AX							
  byteorder.go:108	0x639105		0fc8			BSWAP AX							
  byteorder.go:30	0x639107		90			NOPL								
  byteorder.go:105	0x639108		89442478		MOVL AX, 0x78(SP)						
  sha256.go:242		0x63910c		8b4204			MOVL 0x4(DX), AX						
  byteorder.go:108	0x63910f		0fc8			BSWAP AX							
  byteorder.go:30	0x639111		90			NOPL								
  byteorder.go:105	0x639112		8944247c		MOVL AX, 0x7c(SP)						
  sha256.go:243		0x639116		8b4208			MOVL 0x8(DX), AX						
  byteorder.go:108	0x639119		0fc8			BSWAP AX							
  byteorder.go:30	0x63911b		90			NOPL								
  byteorder.go:105	0x63911c		89842480000000		MOVL AX, 0x80(SP)						
  sha256.go:244		0x639123		8b420c			MOVL 0xc(DX), AX						
  byteorder.go:108	0x639126		0fc8			BSWAP AX							
  byteorder.go:30	0x639128		90			NOPL								
  byteorder.go:105	0x639129		89842484000000		MOVL AX, 0x84(SP)						
  sha256.go:245		0x639130		8b4210			MOVL 0x10(DX), AX						
  byteorder.go:108	0x639133		0fc8			BSWAP AX							
  byteorder.go:30	0x639135		90			NOPL								
  byteorder.go:105	0x639136		89842488000000		MOVL AX, 0x88(SP)						
  sha256.go:246		0x63913d		8b4214			MOVL 0x14(DX), AX						
  byteorder.go:108	0x639140		0fc8			BSWAP AX							
  byteorder.go:30	0x639142		90			NOPL								
  byteorder.go:105	0x639143		8984248c000000		MOVL AX, 0x8c(SP)						
  sha256.go:247		0x63914a		8b4218			MOVL 0x18(DX), AX						
  byteorder.go:108	0x63914d		0fc8			BSWAP AX							
  byteorder.go:30	0x63914f		90			NOPL								
  byteorder.go:105	0x639150		89842490000000		MOVL AX, 0x90(SP)						
  sha256.go:248		0x639157		807a7000		CMPB 0x70(DX), $0x0						
  sha256.go:248		0x63915b		750d			JNE 0x63916a							
  sha256.go:249		0x63915d		8b421c			MOVL 0x1c(DX), AX						
  byteorder.go:108	0x639160		0fc8			BSWAP AX							
  byteorder.go:30	0x639162		90			NOPL								
  byteorder.go:105	0x639163		89842494000000		MOVL AX, 0x94(SP)						
  sha256.go:252		0x63916a		c9			LEAVE								
  sha256.go:252		0x63916b		c3			RET								
  sha256.go:236		0x63916c		488d0505470100		LEAQ 0x14705(IP), AX						
  sha256.go:236		0x639173		bb09000000		MOVL $0x9, BX							
  sha256.go:236		0x639178		e8e3ffe4ff		CALL runtime.convTstring(SB)					
  sha256.go:236		0x63917d		4889c3			MOVQ AX, BX							
  sha256.go:236		0x639180		488d05211d2600		LEAQ 0x261d21(IP), AX						
  sha256.go:236		0x639187		e81420e5ff		CALL runtime.gopanic(SB)					
  sha256.go:232		0x63918c		e80f96e5ff		CALL runtime.panicBounds(SB)					
  sha256.go:231		0x639191		b848000000		MOVL $0x48, AX							
  sha256.go:231		0x639196		e80596e5ff		CALL runtime.panicBounds(SB)					
  sha256.go:231		0x63919b		90			NOPL								
  sha256.go:217		0x63919c		4889442428		MOVQ AX, 0x28(SP)						
  sha256.go:217		0x6391a1		e8ba79e5ff		CALL runtime.morestack_noctxt.abi0(SB)				
  sha256.go:217		0x6391a6		488b442428		MOVQ 0x28(SP), AX						
  sha256.go:217		0x6391ab		e990feffff		JMP crypto/internal/fips140/sha256.(*Digest).checkSum(SB)	

TEXT crypto/internal/fips140/sha512.(*Digest).Sum(SB) /home/exedev/go-crypto/src/crypto/internal/fips140/sha512/sha512.go
  sha512.go:270		0x6422e0		4c8da42400ffffff	LEAQ 0xffffff00(SP), R12					
  sha512.go:270		0x6422e8		4d3b6610		CMPQ R12, 0x10(R14)						
  sha512.go:270		0x6422ec		0f86bc010000		JBE 0x6424ae							
  sha512.go:270		0x6422f2		55			PUSHQ BP							
  sha512.go:270		0x6422f3		4889e5			MOVQ SP, BP							
  sha512.go:270		0x6422f6		4881ec78010000		SUBQ $0x178, SP							
  sha512.go:276		0x6422fd		4889842488010000	MOVQ AX, 0x188(SP)						
  sha512.go:276		0x642305		48898c2498010000	MOVQ CX, 0x198(SP)						
  sha512.go:276		0x64230d		48899c2490010000	MOVQ BX, 0x190(SP)						
  sha512.go:276		0x642315		4889bc24a0010000	MOVQ DI, 0x1a0(SP)						
  sha512.go:271		0x64231d		0f1f00			NOPL 0(AX)							
  sha512.go:271		0x642320		e83b5bffff		CALL crypto/internal/fips140.RecordApproved(SB)			
  sha512.go:273		0x642325		488d842488000000	LEAQ 0x88(SP), AX						
  sha512.go:273		0x64232d		b903000000		MOVL $0x3, CX							
  sha512.go:273		0x642332		440f1138		MOVUPS X15, 0(AX)						
  sha512.go:273		0x642336		440f117810		MOVUPS X15, 0x10(AX)						
  sha512.go:273		0x64233b		440f117820		MOVUPS X15, 0x20(AX)						
  sha512.go:273		0x642340		440f117830		MOVUPS X15, 0x30(AX)						
  sha512.go:273		0x642345		4883c040		ADDQ $0x40, AX							
  sha512.go:273		0x642349		ffc9			DECL CX								
  sha512.go:273		0x64234b		75e5			JNE 0x642332							
  sha512.go:273		0x64234d		440f1138		MOVUPS X15, 0(AX)						
  sha512.go:273		0x642351		440f117808		MOVUPS X15, 0x8(AX)						
  sha512.go:274		0x642356		488d842488000000	LEAQ 0x88(SP), AX						
  sha512.go:274		0x64235e		488b8c2488010000	MOVQ 0x188(SP), CX						
  sha512.go:274		0x642366		bb03000000		MOVL $0x3, BX							
  sha512.go:274		0x64236b		440f1031		MOVUPS 0(CX), X14						
  sha512.go:274		0x64236f		440f1130		MOVUPS X14, 0(AX)						
  sha512.go:274		0x642373		440f107110		MOVUPS 0x10(CX), X14						
  sha512.go:274		0x642378		440f117010		MOVUPS X14, 0x10(AX)						
  sha512.go:274		0x64237d		440f107120		MOVUPS 0x20(CX), X14						
  sha512.go:274		0x642382		440f117020		MOVUPS X14, 0x20(AX)						
  sha512.go:274		0x642387		440f107130		MOVUPS 0x30(CX), X14						
  sha512.go:274		0x64238c		440f117030		MOVUPS X14, 0x30(AX)						
  sha512.go:274		0x642391		4883c140		ADDQ $0x40, CX							
  sha512.go:274		0x642395		4883c040		ADDQ $0x40, AX							
  sha512.go:274		0x642399		ffcb			DECL BX								
  sha512.go:274		0x64239b		75ce			JNE 0x64236b							
  sha512.go:274		0x64239d		440f1031		MOVUPS 0(CX), X14						
  sha512.go:274		0x6423a1		440f1130		MOVUPS X14, 0(AX)						
  sha512.go:274		0x6423a5		440f107108		MOVUPS 0x8(CX), X14						
  sha512.go:274		0x6423aa		440f117008		MOVUPS X14, 0x8(AX)						
  sha512.go:275		0x6423af		488d842488000000	LEAQ 0x88(SP), AX						
  sha512.go:275		0x6423b7		e844010000		CALL crypto/internal/fips140/sha512.(*Digest).checkSum(SB)	
  sha512.go:275		0x6423bc		488d5c2448		LEAQ 0x48(SP), BX						
  sha512.go:275		0x6423c1		4889e0			MOVQ SP, AX							
  sha512.go:275		0x6423c4		440f1030		MOVUPS 0(AX), X14						
  sha512.go:275		0x6423c8		440f1133		MOVUPS X14, 0(BX)						
  sha512.go:275		0x6423cc		440f107010		MOVUPS 0x10(AX), X14						
  sha512.go:275		0x6423d1		440f117310		MOVUPS X14, 0x10(BX)						
  sha512.go:275		0x6423d6		440f107020		MOVUPS 0x20(AX), X14						
  sha512.go:275		0x6423db		440f117320		MOVUPS X14, 0x20(BX)						
  sha512.go:275		0x6423e0		440f107030		MOVUPS 0x30(AX), X14						
  sha512.go:275		0x6423e5		440f117330		MOVUPS X14, 0x30(BX)						
  sha512.go:276		0x6423ea		488b842488010000	MOVQ 0x188(SP), AX						
  sha512.go:276		0x6423f2		488bb8d0000000		MOVQ 0xd0(AX), DI						
  sha512.go:276		0x6423f9		0f1f8000000000		NOPL 0(AX)							
  sha512.go:276		0x642400		4883ff40		CMPQ DI, $0x40							
  sha512.go:276		0x642404		0f8799000000		JA 0x6424a3							
  sha512.go:276		0x64240a		488b942498010000	MOVQ 0x198(SP), DX						
  sha512.go:276		0x642412		4c8d043a		LEAQ 0(DX)(DI*1), R8						
  sha512.go:276		0x642416		488b8c24a0010000	MOVQ 0x1a0(SP), CX						
  sha512.go:276		0x64241e		6690			NOPW								
  sha512.go:276		0x642420		4c39c1			CMPQ CX, R8							
  sha512.go:276		0x642423		720a			JB 0x64242f							
  sha512.go:276		0x642425		488b842490010000	MOVQ 0x190(SP), AX						
  sha512.go:276		0x64242d		eb37			JMP 0x642466							
  sha512.go:276		0x64242f		4889bc2468010000	MOVQ DI, 0x168(SP)						
  sha512.go:276		0x642437		488b842490010000	MOVQ 0x190(SP), AX						
  sha512.go:276		0x64243f		4c89c3			MOVQ R8, BX							
  sha512.go:276		0x642442		488d35df8a2500		LEAQ 0x258adf(IP), SI						
  sha512.go:276		0x642449		e892b4e4ff		CALL runtime.growslice(SB)					
  sha512.go:276		0x64244e		488b942498010000	MOVQ 0x198(SP), DX						
  sha512.go:276		0x642456		488bbc2468010000	MOVQ 0x168(SP), DI						
  sha512.go:276		0x64245e		4989d8			MOVQ BX, R8							
  sha512.go:275		0x642461		488d5c2448		LEAQ 0x48(SP), BX						
  sha512.go:276		0x642466		48898c2468010000	MOVQ CX, 0x168(SP)						
  sha512.go:276		0x64246e		4c89842460010000	MOVQ R8, 0x160(SP)						
  sha512.go:276		0x642476		4889842470010000	MOVQ AX, 0x170(SP)						
  sha512.go:276		0x64247e		4801d0			ADDQ DX, AX							
  sha512.go:276		0x642481		4889f9			MOVQ DI, CX							
  sha512.go:276		0x642484		e8b706e5ff		CALL runtime.memmove(SB)					
  sha512.go:276		0x642489		488b842470010000	MOVQ 0x170(SP), AX						
  sha512.go:276		0x642491		488b9c2460010000	MOVQ 0x160(SP), BX						
  sha512.go:276		0x642499		488b8c2468010000	MOVQ 0x168(SP), CX						
  sha512.go:276		0x6424a1		c9			LEAVE								
  sha512.go:276		0x6424a2		c3			RET								
  sha512.go:276		0x6424a3		b840000000		MOVL $0x40, AX							
  sha512.go:276		0x6424a8		e8f302e5ff		CALL runtime.panicBounds(SB)					
  sha512.go:276		0x6424ad		90			NOPL								
  sha512.go:270		0x6424ae		4889442408		MOVQ AX, 0x8(SP)						
  sha512.go:270		0x6424b3		48895c2410		MOVQ BX, 0x10(SP)						
  sha512.go:270		0x6424b8		48894c2418		MOVQ CX, 0x18(SP)						
  sha512.go:270		0x6424bd		48897c2420		MOVQ DI, 0x20(SP)						
  sha512.go:270		0x6424c2		e899e6e4ff		CALL runtime.morestack_noctxt.abi0(SB)				
  sha512.go:270		0x6424c7		488b442408		MOVQ 0x8(SP), AX						
  sha512.go:270		0x6424cc		488b5c2410		MOVQ 0x10(SP), BX						
  sha512.go:270		0x6424d1		488b4c2418		MOVQ 0x18(SP), CX						
  sha512.go:270		0x6424d6		488b7c2420		MOVQ 0x20(SP), DI						
  sha512.go:270		0x6424db		0f1f440000		NOPL 0(AX)(AX*1)						
  sha512.go:270		0x6424e0		e9fbfdffff		JMP crypto/internal/fips140/sha512.(*Digest).Sum(SB)		

TEXT crypto/internal/fips140/sha512.(*Digest).checkSum(SB) /home/exedev/go-crypto/src/crypto/internal/fips140/sha512/sha512.go
  sha512.go:279		0x642500		4c8d6424c8		LEAQ -0x38(SP), R12						
  sha512.go:279		0x642505		4d3b6610		CMPQ R12, 0x10(R14)						
  sha512.go:279		0x642509		0f86cd010000		JBE 0x6426dc							
  sha512.go:279		0x64250f		55			PUSHQ BP							
  sha512.go:279		0x642510		4889e5			MOVQ SP, BP							
  sha512.go:279		0x642513		4881ecb0000000		SUBQ $0xb0, SP							
  sha512.go:279		0x64251a		488d9424c0000000	LEAQ 0xc0(SP), DX						
  sha512.go:279		0x642522		440f113a		MOVUPS X15, 0(DX)						
  sha512.go:279		0x642526		440f117a10		MOVUPS X15, 0x10(DX)						
  sha512.go:279		0x64252b		440f117a20		MOVUPS X15, 0x20(DX)						
  sha512.go:279		0x642530		440f117a30		MOVUPS X15, 0x30(DX)						
  sha512.go:281		0x642535		488b88c8000000		MOVQ 0xc8(AX), CX						
  sha512.go:282		0x64253c		488d5c2420		LEAQ 0x20(SP), BX						
  sha512.go:282		0x642541		440f113b		MOVUPS X15, 0(BX)						
  sha512.go:282		0x642545		440f117b10		MOVUPS X15, 0x10(BX)						
  sha512.go:282		0x64254a		440f117b20		MOVUPS X15, 0x20(BX)						
  sha512.go:282		0x64254f		440f117b30		MOVUPS X15, 0x30(BX)						
  sha512.go:282		0x642554		440f117b40		MOVUPS X15, 0x40(BX)						
  sha512.go:282		0x642559		440f117b50		MOVUPS X15, 0x50(BX)						
  sha512.go:282		0x64255e		440f117b60		MOVUPS X15, 0x60(BX)						
  sha512.go:282		0x642563		440f117b70		MOVUPS X15, 0x70(BX)						
  sha512.go:282		0x642568		440f11bb80000000	MOVUPS X15, 0x80(BX)						
  sha512.go:283		0x642570		c644242080		MOVB $0x80, 0x20(SP)						
  sha512.go:285		0x642575		4889ca			MOVQ CX, DX							
  sha512.go:285		0x642578		83e27f			ANDL $0x7f, DX							
  sha512.go:286		0x64257b		488d7290		LEAQ -0x70(DX), SI						
  sha512.go:286		0x64257f		48f7de			NEGQ SI								
  sha512.go:288		0x642582		4c8d8210ffffff		LEAQ 0xffffff10(DX), R8						
  sha512.go:288		0x642589		49f7d8			NEGQ R8								
  sha512.go:285		0x64258c		4883fa70		CMPQ DX, $0x70							
  sha512.go:292		0x642590		4c0f42c6		CMOVB SI, R8							
  sha512.go:293		0x642594		498d5010		LEAQ 0x10(R8), DX						
  sha512.go:293		0x642598		0f1f840000000000	NOPL 0(AX)(AX*1)						
  sha512.go:293		0x6425a0		4881fa90000000		CMPQ DX, $0x90							
  sha512.go:285		0x6425a7		0f8724010000		JA 0x6426d1							
  sha512.go:297		0x6425ad		498d7008		LEAQ 0x8(R8), SI						
  sha512.go:297		0x6425b1		4839d6			CMPQ SI, DX							
  sha512.go:297		0x6425b4		0f8712010000		JA 0x6426cc							
  sha512.go:285		0x6425ba		4889842400010000	MOVQ AX, 0x100(SP)						
  sha512.go:292		0x6425c2		48c1e103		SHLQ $0x3, CX							
  sha512.go:297		0x6425c6		4981c078ffffff		ADDQ $-0x88, R8							
  sha512.go:297		0x6425cd		49c1f83f		SARQ $0x3f, R8							
  sha512.go:297		0x6425d1		4c21c6			ANDQ R8, SI							
  byteorder.go:135	0x6425d4		480fc9			BSWAP CX							
  byteorder.go:34	0x6425d7		90			NOPL								
  byteorder.go:128	0x6425d8		48894c3420		MOVQ CX, 0x20(SP)(SI*1)						
  sha512.go:298		0x6425dd		4889d1			MOVQ DX, CX							
  sha512.go:298		0x6425e0		bf90000000		MOVL $0x90, DI							
  sha512.go:298		0x6425e5		e856faffff		CALL crypto/internal/fips140/sha512.(*Digest).Write(SB)		
  sha512.go:300		0x6425ea		488b942400010000	MOVQ 0x100(SP), DX						
  sha512.go:300		0x6425f2		4883bac000000000	CMPQ 0xc0(DX), $0x0						
  sha512.go:300		0x6425fa		660f1f440000		NOPW 0(AX)(AX*1)						
  sha512.go:300		0x642600		0f85a6000000		JNE 0x6426ac							
  sha512.go:304		0x642606		488d8424c0000000	LEAQ 0xc0(SP), AX						
  sha512.go:304		0x64260e		440f1138		MOVUPS X15, 0(AX)						
  sha512.go:304		0x642612		440f117810		MOVUPS X15, 0x10(AX)						
  sha512.go:304		0x642617		440f117820		MOVUPS X15, 0x20(AX)						
  sha512.go:304		0x64261c		440f117830		MOVUPS X15, 0x30(AX)						
  sha512.go:305		0x642621		488b02			MOVQ 0(DX), AX							
  byteorder.go:135	0x642624		480fc8			BSWAP AX							
  byteorder.go:34	0x642627		90			NOPL								
  byteorder.go:128	0x642628		48898424c0000000	MOVQ AX, 0xc0(SP)						
  sha512.go:306		0x642630		488b4208		MOVQ 0x8(DX), AX						
  byteorder.go:135	0x642634		480fc8			BSWAP AX							
  byteorder.go:34	0x642637		90			NOPL								
  byteorder.go:128	0x642638		48898424c8000000	MOVQ AX, 0xc8(SP)						
  sha512.go:307		0x642640		488b4210		MOVQ 0x10(DX), AX						
  byteorder.go:135	0x642644		480fc8			BSWAP AX							
  byteorder.go:34	0x642647		90			NOPL								
  byteorder.go:128	0x642648		48898424d0000000	MOVQ AX, 0xd0(SP)						
  sha512.go:308		0x642650		488b4218		MOVQ 0x18(DX), AX						
  byteorder.go:135	0x642654		480fc8			BSWAP AX							
  byteorder.go:34	0x642657		90			NOPL								
  byteorder.go:128	0x642658		48898424d8000000	MOVQ AX, 0xd8(SP)						
  sha512.go:309		0x642660		488b4220		MOVQ 0x20(DX), AX						
  byteorder.go:135	0x642664		480fc8			BSWAP AX							
  byteorder.go:34	0x642667		90			NOPL								
  byteorder.go:128	0x642668		48898424e0000000	MOVQ AX, 0xe0(SP)						
  sha512.go:310		0x642670		488b4228		MOVQ 0x28(DX), AX						
  byteorder.go:135	0x642674		480fc8			BSWAP AX							
  byteorder.go:34	0x642677		90			NOPL								
  byteorder.go:128	0x642678		48898424e8000000	MOVQ AX, 0xe8(SP)						
  sha512.go:311		0x642680		4883bad000000030	CMPQ 0xd0(DX), $0x30						
  sha512.go:311		0x642688		7420			JE 0x6426aa							
  sha512.go:312		0x64268a		488b4230		MOVQ 0x30(DX), AX						
  byteorder.go:135	0x64268e		480fc8			BSWAP AX							
  byteorder.go:34	0x642691		90			NOPL								
  byteorder.go:128	0x642692		48898424f0000000	MOVQ AX, 0xf0(SP)						
  sha512.go:313		0x64269a		488b4238		MOVQ 0x38(DX), AX						
  byteorder.go:135	0x64269e		480fc8			BSWAP AX							
  byteorder.go:34	0x6426a1		90			NOPL								
  byteorder.go:128	0x6426a2		48898424f8000000	MOVQ AX, 0xf8(SP)						
  sha512.go:316		0x6426aa		c9			LEAVE								
  sha512.go:316		0x6426ab		c3			RET								
  sha512.go:301		0x6426ac		488d05c5b10000		LEAQ 0xb1c5(IP), AX						
  sha512.go:301		0x6426b3		bb09000000		MOVL $0x9, BX							
  sha512.go:301		0x6426b8		e8a36ae4ff		CALL runtime.convTstring(SB)					
  sha512.go:301		0x6426bd		4889c3			MOVQ AX, BX							
  sha512.go:301		0x6426c0		488d05e1872500		LEAQ 0x2587e1(IP), AX						
  sha512.go:301		0x6426c7		e8d48ae4ff		CALL runtime.gopanic(SB)					
  sha512.go:297		0x6426cc		e8cf00e5ff		CALL runtime.panicBounds(SB)					
  sha512.go:293		0x6426d1		b890000000		MOVL $0x90, AX							
  sha512.go:293		0x6426d6		e8c500e5ff		CALL runtime.panicBounds(SB)					
  sha512.go:293		0x6426db		90			NOPL								
  sha512.go:279		0x6426dc		4889442448		MOVQ AX, 0x48(SP)						
  sha512.go:279		0x6426e1		e87ae4e4ff		CALL runtime.morestack_noctxt.abi0(SB)				
  sha512.go:279		0x6426e6		488b442448		MOVQ 0x48(SP), AX						
  sha512.go:279		0x6426eb		e910feffff		JMP crypto/internal/fips140/sha512.(*Digest).checkSum(SB)	
