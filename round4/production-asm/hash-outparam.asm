TEXT crypto/internal/fips140/sha256.(*Digest).Sum(SB) /home/exedev/go-crypto/src/crypto/internal/fips140/sha256/sha256.go
  sha256.go:200		0x638dc0		4c8d6424a0		LEAQ -0x60(SP), R12						
  sha256.go:200		0x638dc5		4d3b6610		CMPQ R12, 0x10(R14)						
  sha256.go:200		0x638dc9		0f86d0010000		JBE 0x638f9f							
  sha256.go:200		0x638dcf		55			PUSHQ BP							
  sha256.go:200		0x638dd0		4889e5			MOVQ SP, BP							
  sha256.go:200		0x638dd3		4881ecd8000000		SUBQ $0xd8, SP							
  sha256.go:206		0x638dda		48898424e8000000	MOVQ AX, 0xe8(SP)						
  sha256.go:206		0x638de2		4889bc2400010000	MOVQ DI, 0x100(SP)						
  sha256.go:206		0x638dea		48898c24f8000000	MOVQ CX, 0xf8(SP)						
  sha256.go:206		0x638df2		48899c24f0000000	MOVQ BX, 0xf0(SP)						
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
  sha256.go:204		0x638e5a		488d5c2428		LEAQ 0x28(SP), BX						
  sha256.go:204		0x638e5f		440f113b		MOVUPS X15, 0(BX)						
  sha256.go:204		0x638e63		440f117b10		MOVUPS X15, 0x10(BX)						
  sha256.go:205		0x638e68		e873010000		CALL crypto/internal/fips140/sha256.(*Digest).checkSum(SB)	
  sha256.go:206		0x638e6d		80bc24b800000000	CMPB 0xb8(SP), $0x0						
  sha256.go:206		0x638e75		0f848e000000		JE 0x638f09							
  sha256.go:207		0x638e7b		488b9c24f8000000	MOVQ 0xf8(SP), BX						
  sha256.go:207		0x638e83		488d531c		LEAQ 0x1c(BX), DX						
  sha256.go:207		0x638e87		488b8c2400010000	MOVQ 0x100(SP), CX						
  sha256.go:207		0x638e8f		4839d1			CMPQ CX, DX							
  sha256.go:207		0x638e92		720a			JB 0x638e9e							
  sha256.go:207		0x638e94		488b8424f0000000	MOVQ 0xf0(SP), AX						
  sha256.go:207		0x638e9c		eb27			JMP 0x638ec5							
  sha256.go:207		0x638e9e		488b8424f0000000	MOVQ 0xf0(SP), AX						
  sha256.go:207		0x638ea6		4889d3			MOVQ DX, BX							
  sha256.go:207		0x638ea9		bf1c000000		MOVL $0x1c, DI							
  sha256.go:207		0x638eae		488d3513202600		LEAQ 0x262013(IP), SI						
  sha256.go:207		0x638eb5		e8264ae5ff		CALL runtime.growslice(SB)					
  sha256.go:207		0x638eba		4889da			MOVQ BX, DX							
  sha256.go:207		0x638ebd		488b9c24f8000000	MOVQ 0xf8(SP), BX						
  sha256.go:207		0x638ec5		48899424c8000000	MOVQ DX, 0xc8(SP)						
  sha256.go:207		0x638ecd		48898424d0000000	MOVQ AX, 0xd0(SP)						
  sha256.go:207		0x638ed5		48898c24c0000000	MOVQ CX, 0xc0(SP)						
  sha256.go:207		0x638edd		4801d8			ADDQ BX, AX							
  sha256.go:207		0x638ee0		488d5c2428		LEAQ 0x28(SP), BX						
  sha256.go:207		0x638ee5		b91c000000		MOVL $0x1c, CX							
  sha256.go:207		0x638eea		e8519ce5ff		CALL runtime.memmove(SB)					
  sha256.go:207		0x638eef		488b8424d0000000	MOVQ 0xd0(SP), AX						
  sha256.go:207		0x638ef7		488b9c24c8000000	MOVQ 0xc8(SP), BX						
  sha256.go:207		0x638eff		488b8c24c0000000	MOVQ 0xc0(SP), CX						
  sha256.go:207		0x638f07		c9			LEAVE								
  sha256.go:207		0x638f08		c3			RET								
  sha256.go:209		0x638f09		488b9c24f8000000	MOVQ 0xf8(SP), BX						
  sha256.go:209		0x638f11		488d5320		LEAQ 0x20(BX), DX						
  sha256.go:209		0x638f15		488b8c2400010000	MOVQ 0x100(SP), CX						
  sha256.go:209		0x638f1d		0f1f00			NOPL 0(AX)							
  sha256.go:209		0x638f20		4839d1			CMPQ CX, DX							
  sha256.go:209		0x638f23		720a			JB 0x638f2f							
  sha256.go:209		0x638f25		488b8424f0000000	MOVQ 0xf0(SP), AX						
  sha256.go:209		0x638f2d		eb27			JMP 0x638f56							
  sha256.go:209		0x638f2f		488b8424f0000000	MOVQ 0xf0(SP), AX						
  sha256.go:209		0x638f37		4889d3			MOVQ DX, BX							
  sha256.go:209		0x638f3a		bf20000000		MOVL $0x20, DI							
  sha256.go:209		0x638f3f		488d35821f2600		LEAQ 0x261f82(IP), SI						
  sha256.go:209		0x638f46		e89549e5ff		CALL runtime.growslice(SB)					
  sha256.go:209		0x638f4b		4889da			MOVQ BX, DX							
  sha256.go:209		0x638f4e		488b9c24f8000000	MOVQ 0xf8(SP), BX						
  sha256.go:209		0x638f56		48898424d0000000	MOVQ AX, 0xd0(SP)						
  sha256.go:209		0x638f5e		48898c24c8000000	MOVQ CX, 0xc8(SP)						
  sha256.go:209		0x638f66		48899424c0000000	MOVQ DX, 0xc0(SP)						
  sha256.go:209		0x638f6e		4801d8			ADDQ BX, AX							
  sha256.go:209		0x638f71		488d5c2428		LEAQ 0x28(SP), BX						
  sha256.go:209		0x638f76		b920000000		MOVL $0x20, CX							
  sha256.go:209		0x638f7b		0f1f440000		NOPL 0(AX)(AX*1)						
  sha256.go:209		0x638f80		e8bb9be5ff		CALL runtime.memmove(SB)					
  sha256.go:209		0x638f85		488b8424d0000000	MOVQ 0xd0(SP), AX						
  sha256.go:209		0x638f8d		488b9c24c0000000	MOVQ 0xc0(SP), BX						
  sha256.go:209		0x638f95		488b8c24c8000000	MOVQ 0xc8(SP), CX						
  sha256.go:209		0x638f9d		c9			LEAVE								
  sha256.go:209		0x638f9e		c3			RET								
  sha256.go:200		0x638f9f		4889442408		MOVQ AX, 0x8(SP)						
  sha256.go:200		0x638fa4		48895c2410		MOVQ BX, 0x10(SP)						
  sha256.go:200		0x638fa9		48894c2418		MOVQ CX, 0x18(SP)						
  sha256.go:200		0x638fae		48897c2420		MOVQ DI, 0x20(SP)						
  sha256.go:200		0x638fb3		e8a87be5ff		CALL runtime.morestack_noctxt.abi0(SB)				
  sha256.go:200		0x638fb8		488b442408		MOVQ 0x8(SP), AX						
  sha256.go:200		0x638fbd		488b5c2410		MOVQ 0x10(SP), BX						
  sha256.go:200		0x638fc2		488b4c2418		MOVQ 0x18(SP), CX						
  sha256.go:200		0x638fc7		488b7c2420		MOVQ 0x20(SP), DI						
  sha256.go:200		0x638fcc		e9effdffff		JMP crypto/internal/fips140/sha256.(*Digest).Sum(SB)		

TEXT crypto/internal/fips140/sha256.(*Digest).checkSum(SB) /home/exedev/go-crypto/src/crypto/internal/fips140/sha256/sha256.go
  sha256.go:212		0x638fe0		493b6610		CMPQ SP, 0x10(R14)						
  sha256.go:212		0x638fe4		0f8630010000		JBE 0x63911a							
  sha256.go:212		0x638fea		55			PUSHQ BP							
  sha256.go:212		0x638feb		4889e5			MOVQ SP, BP							
  sha256.go:212		0x638fee		4883ec68		SUBQ $0x68, SP							
  sha256.go:213		0x638ff2		488b4868		MOVQ 0x68(AX), CX						
  sha256.go:215		0x638ff6		488d542420		LEAQ 0x20(SP), DX						
  sha256.go:215		0x638ffb		440f113a		MOVUPS X15, 0(DX)						
  sha256.go:215		0x638fff		440f117a10		MOVUPS X15, 0x10(DX)						
  sha256.go:215		0x639004		440f117a20		MOVUPS X15, 0x20(DX)						
  sha256.go:215		0x639009		440f117a30		MOVUPS X15, 0x30(DX)						
  sha256.go:215		0x63900e		440f117a38		MOVUPS X15, 0x38(DX)						
  sha256.go:216		0x639013		c644242080		MOVB $0x80, 0x20(SP)						
  sha256.go:218		0x639018		4889ce			MOVQ CX, SI							
  sha256.go:218		0x63901b		83e63f			ANDL $0x3f, SI							
  sha256.go:219		0x63901e		4c8d46c8		LEAQ -0x38(SI), R8						
  sha256.go:219		0x639022		49f7d8			NEGQ R8								
  sha256.go:221		0x639025		4c8d4e88		LEAQ -0x78(SI), R9						
  sha256.go:221		0x639029		49f7d9			NEGQ R9								
  sha256.go:218		0x63902c		4883fe38		CMPQ SI, $0x38							
  sha256.go:225		0x639030		4d0f42c8		CMOVB R8, R9							
  sha256.go:226		0x639034		498d7108		LEAQ 0x8(R9), SI						
  sha256.go:226		0x639038		0f1f840000000000	NOPL 0(AX)(AX*1)						
  sha256.go:226		0x639040		4883fe48		CMPQ SI, $0x48							
  sha256.go:218		0x639044		0f87c5000000		JA 0x63910f							
  sha256.go:227		0x63904a		4939f1			CMPQ R9, SI							
  sha256.go:227		0x63904d		0f87b7000000		JA 0x63910a							
  sha256.go:218		0x639053		4889442478		MOVQ AX, 0x78(SP)						
  sha256.go:218		0x639058		48899c2480000000	MOVQ BX, 0x80(SP)						
  sha256.go:225		0x639060		48c1e103		SHLQ $0x3, CX							
  sha256.go:227		0x639064		4d8d41b8		LEAQ -0x48(R9), R8						
  sha256.go:227		0x639068		49c1f83f		SARQ $0x3f, R8							
  sha256.go:227		0x63906c		4d21c1			ANDQ R8, R9							
  byteorder.go:135	0x63906f		480fc9			BSWAP CX							
  byteorder.go:34	0x639072		90			NOPL								
  byteorder.go:128	0x639073		4a894c0c20		MOVQ CX, 0x20(SP)(R9*1)						
  sha256.go:228		0x639078		4889d3			MOVQ DX, BX							
  sha256.go:228		0x63907b		4889f1			MOVQ SI, CX							
  sha256.go:228		0x63907e		bf48000000		MOVL $0x48, DI							
  sha256.go:228		0x639083		e8b8faffff		CALL crypto/internal/fips140/sha256.(*Digest).Write(SB)		
  sha256.go:230		0x639088		488b542478		MOVQ 0x78(SP), DX						
  sha256.go:230		0x63908d		48837a6000		CMPQ 0x60(DX), $0x0						
  sha256.go:230		0x639092		7556			JNE 0x6390ea							
  sha256.go:235		0x639094		8b02			MOVL 0(DX), AX							
  byteorder.go:108	0x639096		0fc8			BSWAP AX							
  byteorder.go:30	0x639098		90			NOPL								
  sha256.go:235		0x639099		488b8c2480000000	MOVQ 0x80(SP), CX						
  sha256.go:235		0x6390a1		8901			MOVL AX, 0(CX)							
  sha256.go:236		0x6390a3		8b4204			MOVL 0x4(DX), AX						
  byteorder.go:108	0x6390a6		0fc8			BSWAP AX							
  byteorder.go:30	0x6390a8		90			NOPL								
  byteorder.go:105	0x6390a9		894104			MOVL AX, 0x4(CX)						
  sha256.go:237		0x6390ac		8b4208			MOVL 0x8(DX), AX						
  byteorder.go:108	0x6390af		0fc8			BSWAP AX							
  byteorder.go:30	0x6390b1		90			NOPL								
  byteorder.go:105	0x6390b2		894108			MOVL AX, 0x8(CX)						
  sha256.go:238		0x6390b5		8b420c			MOVL 0xc(DX), AX						
  byteorder.go:108	0x6390b8		0fc8			BSWAP AX							
  byteorder.go:30	0x6390ba		90			NOPL								
  byteorder.go:105	0x6390bb		89410c			MOVL AX, 0xc(CX)						
  sha256.go:239		0x6390be		8b4210			MOVL 0x10(DX), AX						
  byteorder.go:108	0x6390c1		0fc8			BSWAP AX							
  byteorder.go:30	0x6390c3		90			NOPL								
  byteorder.go:105	0x6390c4		894110			MOVL AX, 0x10(CX)						
  sha256.go:240		0x6390c7		8b4214			MOVL 0x14(DX), AX						
  byteorder.go:108	0x6390ca		0fc8			BSWAP AX							
  byteorder.go:30	0x6390cc		90			NOPL								
  byteorder.go:105	0x6390cd		894114			MOVL AX, 0x14(CX)						
  sha256.go:241		0x6390d0		8b4218			MOVL 0x18(DX), AX						
  byteorder.go:108	0x6390d3		0fc8			BSWAP AX							
  byteorder.go:30	0x6390d5		90			NOPL								
  byteorder.go:105	0x6390d6		894118			MOVL AX, 0x18(CX)						
  sha256.go:242		0x6390d9		807a7000		CMPB 0x70(DX), $0x0						
  sha256.go:242		0x6390dd		7509			JNE 0x6390e8							
  sha256.go:243		0x6390df		8b421c			MOVL 0x1c(DX), AX						
  byteorder.go:108	0x6390e2		0fc8			BSWAP AX							
  byteorder.go:30	0x6390e4		90			NOPL								
  byteorder.go:105	0x6390e5		89411c			MOVL AX, 0x1c(CX)						
  sha256.go:246		0x6390e8		c9			LEAVE								
  sha256.go:246		0x6390e9		c3			RET								
  sha256.go:231		0x6390ea		488d0587470100		LEAQ 0x14787(IP), AX						
  sha256.go:231		0x6390f1		bb09000000		MOVL $0x9, BX							
  sha256.go:231		0x6390f6		e86500e5ff		CALL runtime.convTstring(SB)					
  sha256.go:231		0x6390fb		4889c3			MOVQ AX, BX							
  sha256.go:231		0x6390fe		488d05431d2600		LEAQ 0x261d43(IP), AX						
  sha256.go:231		0x639105		e89620e5ff		CALL runtime.gopanic(SB)					
  sha256.go:227		0x63910a		e89196e5ff		CALL runtime.panicBounds(SB)					
  sha256.go:226		0x63910f		b848000000		MOVL $0x48, AX							
  sha256.go:226		0x639114		e88796e5ff		CALL runtime.panicBounds(SB)					
  sha256.go:226		0x639119		90			NOPL								
  sha256.go:212		0x63911a		4889442408		MOVQ AX, 0x8(SP)						
  sha256.go:212		0x63911f		48895c2410		MOVQ BX, 0x10(SP)						
  sha256.go:212		0x639124		e8377ae5ff		CALL runtime.morestack_noctxt.abi0(SB)				
  sha256.go:212		0x639129		488b442408		MOVQ 0x8(SP), AX						
  sha256.go:212		0x63912e		488b5c2410		MOVQ 0x10(SP), BX						
  sha256.go:212		0x639133		e9a8feffff		JMP crypto/internal/fips140/sha256.(*Digest).checkSum(SB)	

TEXT crypto/internal/fips140/sha512.(*Digest).Sum(SB) /home/exedev/go-crypto/src/crypto/internal/fips140/sha512/sha512.go
  sha512.go:270		0x642260		4c8da42420ffffff	LEAQ 0xffffff20(SP), R12					
  sha512.go:270		0x642268		4d3b6610		CMPQ R12, 0x10(R14)						
  sha512.go:270		0x64226c		0f8698010000		JBE 0x64240a							
  sha512.go:270		0x642272		55			PUSHQ BP							
  sha512.go:270		0x642273		4889e5			MOVQ SP, BP							
  sha512.go:270		0x642276		4881ec58010000		SUBQ $0x158, SP							
  sha512.go:277		0x64227d		4889842468010000	MOVQ AX, 0x168(SP)						
  sha512.go:277		0x642285		4889bc2480010000	MOVQ DI, 0x180(SP)						
  sha512.go:277		0x64228d		48898c2478010000	MOVQ CX, 0x178(SP)						
  sha512.go:277		0x642295		48899c2470010000	MOVQ BX, 0x170(SP)						
  sha512.go:271		0x64229d		0f1f00			NOPL 0(AX)							
  sha512.go:271		0x6422a0		e8bb5bffff		CALL crypto/internal/fips140.RecordApproved(SB)			
  sha512.go:273		0x6422a5		488d442468		LEAQ 0x68(SP), AX						
  sha512.go:273		0x6422aa		b903000000		MOVL $0x3, CX							
  sha512.go:273		0x6422af		440f1138		MOVUPS X15, 0(AX)						
  sha512.go:273		0x6422b3		440f117810		MOVUPS X15, 0x10(AX)						
  sha512.go:273		0x6422b8		440f117820		MOVUPS X15, 0x20(AX)						
  sha512.go:273		0x6422bd		440f117830		MOVUPS X15, 0x30(AX)						
  sha512.go:273		0x6422c2		4883c040		ADDQ $0x40, AX							
  sha512.go:273		0x6422c6		ffc9			DECL CX								
  sha512.go:273		0x6422c8		75e5			JNE 0x6422af							
  sha512.go:273		0x6422ca		440f1138		MOVUPS X15, 0(AX)						
  sha512.go:273		0x6422ce		440f117808		MOVUPS X15, 0x8(AX)						
  sha512.go:274		0x6422d3		488d442468		LEAQ 0x68(SP), AX						
  sha512.go:274		0x6422d8		488b8c2468010000	MOVQ 0x168(SP), CX						
  sha512.go:274		0x6422e0		bb03000000		MOVL $0x3, BX							
  sha512.go:274		0x6422e5		440f1031		MOVUPS 0(CX), X14						
  sha512.go:274		0x6422e9		440f1130		MOVUPS X14, 0(AX)						
  sha512.go:274		0x6422ed		440f107110		MOVUPS 0x10(CX), X14						
  sha512.go:274		0x6422f2		440f117010		MOVUPS X14, 0x10(AX)						
  sha512.go:274		0x6422f7		440f107120		MOVUPS 0x20(CX), X14						
  sha512.go:274		0x6422fc		440f117020		MOVUPS X14, 0x20(AX)						
  sha512.go:274		0x642301		440f107130		MOVUPS 0x30(CX), X14						
  sha512.go:274		0x642306		440f117030		MOVUPS X14, 0x30(AX)						
  sha512.go:274		0x64230b		4883c140		ADDQ $0x40, CX							
  sha512.go:274		0x64230f		4883c040		ADDQ $0x40, AX							
  sha512.go:274		0x642313		ffcb			DECL BX								
  sha512.go:274		0x642315		75ce			JNE 0x6422e5							
  sha512.go:274		0x642317		440f1031		MOVUPS 0(CX), X14						
  sha512.go:274		0x64231b		440f1130		MOVUPS X14, 0(AX)						
  sha512.go:274		0x64231f		440f107108		MOVUPS 0x8(CX), X14						
  sha512.go:274		0x642324		440f117008		MOVUPS X14, 0x8(AX)						
  sha512.go:275		0x642329		488d5c2428		LEAQ 0x28(SP), BX						
  sha512.go:275		0x64232e		440f113b		MOVUPS X15, 0(BX)						
  sha512.go:275		0x642332		440f117b10		MOVUPS X15, 0x10(BX)						
  sha512.go:275		0x642337		440f117b20		MOVUPS X15, 0x20(BX)						
  sha512.go:275		0x64233c		440f117b30		MOVUPS X15, 0x30(BX)						
  sha512.go:276		0x642341		488d442468		LEAQ 0x68(SP), AX						
  sha512.go:276		0x642346		e8f5000000		CALL crypto/internal/fips140/sha512.(*Digest).checkSum(SB)	
  sha512.go:277		0x64234b		488b842468010000	MOVQ 0x168(SP), AX						
  sha512.go:277		0x642353		488bb8d0000000		MOVQ 0xd0(AX), DI						
  sha512.go:277		0x64235a		660f1f440000		NOPW 0(AX)(AX*1)						
  sha512.go:277		0x642360		4883ff40		CMPQ DI, $0x40							
  sha512.go:277		0x642364		0f8795000000		JA 0x6423ff							
  sha512.go:277		0x64236a		488b942478010000	MOVQ 0x178(SP), DX						
  sha512.go:277		0x642372		488d1c3a		LEAQ 0(DX)(DI*1), BX						
  sha512.go:277		0x642376		488b8c2480010000	MOVQ 0x180(SP), CX						
  sha512.go:277		0x64237e		6690			NOPW								
  sha512.go:277		0x642380		4839d9			CMPQ CX, BX							
  sha512.go:277		0x642383		720a			JB 0x64238f							
  sha512.go:277		0x642385		488b842470010000	MOVQ 0x170(SP), AX						
  sha512.go:277		0x64238d		eb2c			JMP 0x6423bb							
  sha512.go:277		0x64238f		4889bc2448010000	MOVQ DI, 0x148(SP)						
  sha512.go:277		0x642397		488b842470010000	MOVQ 0x170(SP), AX						
  sha512.go:277		0x64239f		488d35228b2500		LEAQ 0x258b22(IP), SI						
  sha512.go:277		0x6423a6		e835b5e4ff		CALL runtime.growslice(SB)					
  sha512.go:277		0x6423ab		488b942478010000	MOVQ 0x178(SP), DX						
  sha512.go:277		0x6423b3		488bbc2448010000	MOVQ 0x148(SP), DI						
  sha512.go:277		0x6423bb		4889842450010000	MOVQ AX, 0x150(SP)						
  sha512.go:277		0x6423c3		48899c2448010000	MOVQ BX, 0x148(SP)						
  sha512.go:277		0x6423cb		48898c2440010000	MOVQ CX, 0x140(SP)						
  sha512.go:277		0x6423d3		4801d0			ADDQ DX, AX							
  sha512.go:277		0x6423d6		488d5c2428		LEAQ 0x28(SP), BX						
  sha512.go:277		0x6423db		4889f9			MOVQ DI, CX							
  sha512.go:277		0x6423de		6690			NOPW								
  sha512.go:277		0x6423e0		e85b07e5ff		CALL runtime.memmove(SB)					
  sha512.go:277		0x6423e5		488b842450010000	MOVQ 0x150(SP), AX						
  sha512.go:277		0x6423ed		488b9c2448010000	MOVQ 0x148(SP), BX						
  sha512.go:277		0x6423f5		488b8c2440010000	MOVQ 0x140(SP), CX						
  sha512.go:277		0x6423fd		c9			LEAVE								
  sha512.go:277		0x6423fe		c3			RET								
  sha512.go:277		0x6423ff		b840000000		MOVL $0x40, AX							
  sha512.go:277		0x642404		e89703e5ff		CALL runtime.panicBounds(SB)					
  sha512.go:277		0x642409		90			NOPL								
  sha512.go:270		0x64240a		4889442408		MOVQ AX, 0x8(SP)						
  sha512.go:270		0x64240f		48895c2410		MOVQ BX, 0x10(SP)						
  sha512.go:270		0x642414		48894c2418		MOVQ CX, 0x18(SP)						
  sha512.go:270		0x642419		48897c2420		MOVQ DI, 0x20(SP)						
  sha512.go:270		0x64241e		6690			NOPW								
  sha512.go:270		0x642420		e83be7e4ff		CALL runtime.morestack_noctxt.abi0(SB)				
  sha512.go:270		0x642425		488b442408		MOVQ 0x8(SP), AX						
  sha512.go:270		0x64242a		488b5c2410		MOVQ 0x10(SP), BX						
  sha512.go:270		0x64242f		488b4c2418		MOVQ 0x18(SP), CX						
  sha512.go:270		0x642434		488b7c2420		MOVQ 0x20(SP), DI						
  sha512.go:270		0x642439		e922feffff		JMP crypto/internal/fips140/sha512.(*Digest).Sum(SB)		

TEXT crypto/internal/fips140/sha512.(*Digest).checkSum(SB) /home/exedev/go-crypto/src/crypto/internal/fips140/sha512/sha512.go
  sha512.go:280		0x642440		4c8d6424c8		LEAQ -0x38(SP), R12						
  sha512.go:280		0x642445		4d3b6610		CMPQ R12, 0x10(R14)						
  sha512.go:280		0x642449		0f867a010000		JBE 0x6425c9							
  sha512.go:280		0x64244f		55			PUSHQ BP							
  sha512.go:280		0x642450		4889e5			MOVQ SP, BP							
  sha512.go:280		0x642453		4881ecb0000000		SUBQ $0xb0, SP							
  sha512.go:282		0x64245a		488b88c8000000		MOVQ 0xc8(AX), CX						
  sha512.go:283		0x642461		488d542420		LEAQ 0x20(SP), DX						
  sha512.go:283		0x642466		440f113a		MOVUPS X15, 0(DX)						
  sha512.go:283		0x64246a		440f117a10		MOVUPS X15, 0x10(DX)						
  sha512.go:283		0x64246f		440f117a20		MOVUPS X15, 0x20(DX)						
  sha512.go:283		0x642474		440f117a30		MOVUPS X15, 0x30(DX)						
  sha512.go:283		0x642479		440f117a40		MOVUPS X15, 0x40(DX)						
  sha512.go:283		0x64247e		440f117a50		MOVUPS X15, 0x50(DX)						
  sha512.go:283		0x642483		440f117a60		MOVUPS X15, 0x60(DX)						
  sha512.go:283		0x642488		440f117a70		MOVUPS X15, 0x70(DX)						
  sha512.go:283		0x64248d		440f11ba80000000	MOVUPS X15, 0x80(DX)						
  sha512.go:284		0x642495		c644242080		MOVB $0x80, 0x20(SP)						
  sha512.go:286		0x64249a		4889ce			MOVQ CX, SI							
  sha512.go:286		0x64249d		83e67f			ANDL $0x7f, SI							
  sha512.go:287		0x6424a0		4c8d4690		LEAQ -0x70(SI), R8						
  sha512.go:287		0x6424a4		49f7d8			NEGQ R8								
  sha512.go:289		0x6424a7		4c8d8e10ffffff		LEAQ 0xffffff10(SI), R9						
  sha512.go:289		0x6424ae		49f7d9			NEGQ R9								
  sha512.go:286		0x6424b1		4883fe70		CMPQ SI, $0x70							
  sha512.go:293		0x6424b5		4d0f42c8		CMOVB R8, R9							
  sha512.go:294		0x6424b9		498d7110		LEAQ 0x10(R9), SI						
  sha512.go:294		0x6424bd		0f1f00			NOPL 0(AX)							
  sha512.go:294		0x6424c0		4881fe90000000		CMPQ SI, $0x90							
  sha512.go:286		0x6424c7		0f87f1000000		JA 0x6425be							
  sha512.go:298		0x6424cd		4d8d4108		LEAQ 0x8(R9), R8						
  sha512.go:298		0x6424d1		4939f0			CMPQ R8, SI							
  sha512.go:298		0x6424d4		0f87df000000		JA 0x6425b9							
  sha512.go:286		0x6424da		48898424c0000000	MOVQ AX, 0xc0(SP)						
  sha512.go:286		0x6424e2		48899c24c8000000	MOVQ BX, 0xc8(SP)						
  sha512.go:293		0x6424ea		48c1e103		SHLQ $0x3, CX							
  sha512.go:298		0x6424ee		4981c178ffffff		ADDQ $-0x88, R9							
  sha512.go:298		0x6424f5		49c1f93f		SARQ $0x3f, R9							
  sha512.go:298		0x6424f9		4d21c8			ANDQ R9, R8							
  byteorder.go:135	0x6424fc		480fc9			BSWAP CX							
  byteorder.go:34	0x6424ff		90			NOPL								
  byteorder.go:128	0x642500		4a894c0420		MOVQ CX, 0x20(SP)(R8*1)						
  sha512.go:299		0x642505		4889d3			MOVQ DX, BX							
  sha512.go:299		0x642508		4889f1			MOVQ SI, CX							
  sha512.go:299		0x64250b		bf90000000		MOVL $0x90, DI							
  sha512.go:299		0x642510		e8abfaffff		CALL crypto/internal/fips140/sha512.(*Digest).Write(SB)		
  sha512.go:301		0x642515		488b9424c0000000	MOVQ 0xc0(SP), DX						
  sha512.go:301		0x64251d		4883bac000000000	CMPQ 0xc0(DX), $0x0						
  sha512.go:301		0x642525		7572			JNE 0x642599							
  sha512.go:305		0x642527		488b02			MOVQ 0(DX), AX							
  byteorder.go:135	0x64252a		480fc8			BSWAP AX							
  byteorder.go:34	0x64252d		90			NOPL								
  sha512.go:305		0x64252e		488b8c24c8000000	MOVQ 0xc8(SP), CX						
  sha512.go:305		0x642536		488901			MOVQ AX, 0(CX)							
  sha512.go:306		0x642539		488b4208		MOVQ 0x8(DX), AX						
  byteorder.go:135	0x64253d		480fc8			BSWAP AX							
  byteorder.go:34	0x642540		90			NOPL								
  byteorder.go:128	0x642541		48894108		MOVQ AX, 0x8(CX)						
  sha512.go:307		0x642545		488b4210		MOVQ 0x10(DX), AX						
  byteorder.go:135	0x642549		480fc8			BSWAP AX							
  byteorder.go:34	0x64254c		90			NOPL								
  byteorder.go:128	0x64254d		48894110		MOVQ AX, 0x10(CX)						
  sha512.go:308		0x642551		488b4218		MOVQ 0x18(DX), AX						
  byteorder.go:135	0x642555		480fc8			BSWAP AX							
  byteorder.go:34	0x642558		90			NOPL								
  byteorder.go:128	0x642559		48894118		MOVQ AX, 0x18(CX)						
  sha512.go:309		0x64255d		488b4220		MOVQ 0x20(DX), AX						
  byteorder.go:135	0x642561		480fc8			BSWAP AX							
  byteorder.go:34	0x642564		90			NOPL								
  byteorder.go:128	0x642565		48894120		MOVQ AX, 0x20(CX)						
  sha512.go:310		0x642569		488b4228		MOVQ 0x28(DX), AX						
  byteorder.go:135	0x64256d		480fc8			BSWAP AX							
  byteorder.go:34	0x642570		90			NOPL								
  byteorder.go:128	0x642571		48894128		MOVQ AX, 0x28(CX)						
  sha512.go:311		0x642575		4883bad000000030	CMPQ 0xd0(DX), $0x30						
  sha512.go:311		0x64257d		7418			JE 0x642597							
  sha512.go:312		0x64257f		488b4230		MOVQ 0x30(DX), AX						
  byteorder.go:135	0x642583		480fc8			BSWAP AX							
  byteorder.go:34	0x642586		90			NOPL								
  byteorder.go:128	0x642587		48894130		MOVQ AX, 0x30(CX)						
  sha512.go:313		0x64258b		488b4238		MOVQ 0x38(DX), AX						
  byteorder.go:135	0x64258f		480fc8			BSWAP AX							
  byteorder.go:34	0x642592		90			NOPL								
  byteorder.go:128	0x642593		48894138		MOVQ AX, 0x38(CX)						
  sha512.go:316		0x642597		c9			LEAVE								
  sha512.go:316		0x642598		c3			RET								
  sha512.go:302		0x642599		488d05d8b20000		LEAQ 0xb2d8(IP), AX						
  sha512.go:302		0x6425a0		bb09000000		MOVL $0x9, BX							
  sha512.go:302		0x6425a5		e8b66be4ff		CALL runtime.convTstring(SB)					
  sha512.go:302		0x6425aa		4889c3			MOVQ AX, BX							
  sha512.go:302		0x6425ad		488d0594882500		LEAQ 0x258894(IP), AX						
  sha512.go:302		0x6425b4		e8e78be4ff		CALL runtime.gopanic(SB)					
  sha512.go:298		0x6425b9		e8e201e5ff		CALL runtime.panicBounds(SB)					
  sha512.go:294		0x6425be		b890000000		MOVL $0x90, AX							
  sha512.go:294		0x6425c3		e8d801e5ff		CALL runtime.panicBounds(SB)					
  sha512.go:294		0x6425c8		90			NOPL								
  sha512.go:280		0x6425c9		4889442408		MOVQ AX, 0x8(SP)						
  sha512.go:280		0x6425ce		48895c2410		MOVQ BX, 0x10(SP)						
  sha512.go:280		0x6425d3		e888e5e4ff		CALL runtime.morestack_noctxt.abi0(SB)				
  sha512.go:280		0x6425d8		488b442408		MOVQ 0x8(SP), AX						
  sha512.go:280		0x6425dd		488b5c2410		MOVQ 0x10(SP), BX						
  sha512.go:280		0x6425e2		e959feffff		JMP crypto/internal/fips140/sha512.(*Digest).checkSum(SB)	
