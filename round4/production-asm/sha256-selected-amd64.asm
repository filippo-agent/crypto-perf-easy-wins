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
  sha256.go:207		0x638eae		488d3533202600		LEAQ 0x262033(IP), SI						
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
  sha256.go:209		0x638f3f		488d35a21f2600		LEAQ 0x261fa2(IP), SI						
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
  sha256.go:234		0x639094		8b02			MOVL 0(DX), AX							
  byteorder.go:108	0x639096		0fc8			BSWAP AX							
  byteorder.go:30	0x639098		90			NOPL								
  sha256.go:234		0x639099		488b8c2480000000	MOVQ 0x80(SP), CX						
  sha256.go:234		0x6390a1		8901			MOVL AX, 0(CX)							
  sha256.go:235		0x6390a3		8b4204			MOVL 0x4(DX), AX						
  byteorder.go:108	0x6390a6		0fc8			BSWAP AX							
  byteorder.go:30	0x6390a8		90			NOPL								
  byteorder.go:105	0x6390a9		894104			MOVL AX, 0x4(CX)						
  sha256.go:236		0x6390ac		8b4208			MOVL 0x8(DX), AX						
  byteorder.go:108	0x6390af		0fc8			BSWAP AX							
  byteorder.go:30	0x6390b1		90			NOPL								
  byteorder.go:105	0x6390b2		894108			MOVL AX, 0x8(CX)						
  sha256.go:237		0x6390b5		8b420c			MOVL 0xc(DX), AX						
  byteorder.go:108	0x6390b8		0fc8			BSWAP AX							
  byteorder.go:30	0x6390ba		90			NOPL								
  byteorder.go:105	0x6390bb		89410c			MOVL AX, 0xc(CX)						
  sha256.go:238		0x6390be		8b4210			MOVL 0x10(DX), AX						
  byteorder.go:108	0x6390c1		0fc8			BSWAP AX							
  byteorder.go:30	0x6390c3		90			NOPL								
  byteorder.go:105	0x6390c4		894110			MOVL AX, 0x10(CX)						
  sha256.go:239		0x6390c7		8b4214			MOVL 0x14(DX), AX						
  byteorder.go:108	0x6390ca		0fc8			BSWAP AX							
  byteorder.go:30	0x6390cc		90			NOPL								
  byteorder.go:105	0x6390cd		894114			MOVL AX, 0x14(CX)						
  sha256.go:240		0x6390d0		8b4218			MOVL 0x18(DX), AX						
  byteorder.go:108	0x6390d3		0fc8			BSWAP AX							
  byteorder.go:30	0x6390d5		90			NOPL								
  byteorder.go:105	0x6390d6		894118			MOVL AX, 0x18(CX)						
  sha256.go:241		0x6390d9		807a7000		CMPB 0x70(DX), $0x0						
  sha256.go:241		0x6390dd		7509			JNE 0x6390e8							
  sha256.go:242		0x6390df		8b421c			MOVL 0x1c(DX), AX						
  byteorder.go:108	0x6390e2		0fc8			BSWAP AX							
  byteorder.go:30	0x6390e4		90			NOPL								
  byteorder.go:105	0x6390e5		89411c			MOVL AX, 0x1c(CX)						
  sha256.go:245		0x6390e8		c9			LEAVE								
  sha256.go:245		0x6390e9		c3			RET								
  sha256.go:231		0x6390ea		488d0587470100		LEAQ 0x14787(IP), AX						
  sha256.go:231		0x6390f1		bb09000000		MOVL $0x9, BX							
  sha256.go:231		0x6390f6		e86500e5ff		CALL runtime.convTstring(SB)					
  sha256.go:231		0x6390fb		4889c3			MOVQ AX, BX							
  sha256.go:231		0x6390fe		488d05631d2600		LEAQ 0x261d63(IP), AX						
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
