TEXT crypto/internal/fips140/mlkem.samplePolyCBD(SB) /home/exedev/go-pq-stack/src/crypto/internal/fips140/mlkem/field.go
  field.go:471		0x5d1bc0		4c8da424c8feffff		LEAQ 0xfffffec8(SP), R12				
  field.go:471		0x5d1bc8		4d3b6610			CMPQ R12, 0x10(R14)					
  field.go:471		0x5d1bcc		0f8606020000			JBE 0x5d1dd8						
  field.go:471		0x5d1bd2		55				PUSHQ BP						
  field.go:471		0x5d1bd3		4889e5				MOVQ SP, BP						
  field.go:471		0x5d1bd6		4881ecb0010000			SUBQ $0x1b0, SP						
  field.go:471		0x5d1bdd		48898424c0030000		MOVQ AX, 0x3c0(SP)					
  field.go:482		0x5d1be5		4088bc24d8030000		MOVB DI, 0x3d8(SP)					
  field.go:471		0x5d1bed		488d9424c0010000		LEAQ 0x1c0(SP), DX					
  field.go:471		0x5d1bf5		be08000000			MOVL $0x8, SI						
  field.go:471		0x5d1bfa		440f113a			MOVUPS X15, 0(DX)					
  field.go:471		0x5d1bfe		440f117a10			MOVUPS X15, 0x10(DX)					
  field.go:471		0x5d1c03		440f117a20			MOVUPS X15, 0x20(DX)					
  field.go:471		0x5d1c08		440f117a30			MOVUPS X15, 0x30(DX)					
  field.go:471		0x5d1c0d		4883c240			ADDQ $0x40, DX						
  field.go:471		0x5d1c11		ffce				DECL SI							
  field.go:471		0x5d1c13		75e5				JNE 0x5d1bfa						
  field.go:472		0x5d1c15		90				NOPL							
  shake.go:126		0x5d1c16		488d9424a8000000		LEAQ 0xa8(SP), DX					
  shake.go:126		0x5d1c1e		be04000000			MOVL $0x4, SI						
  shake.go:126		0x5d1c23		440f113a			MOVUPS X15, 0(DX)					
  shake.go:126		0x5d1c27		440f117a10			MOVUPS X15, 0x10(DX)					
  shake.go:126		0x5d1c2c		440f117a20			MOVUPS X15, 0x20(DX)					
  shake.go:126		0x5d1c31		440f117a30			MOVUPS X15, 0x30(DX)					
  shake.go:126		0x5d1c36		4883c240			ADDQ $0x40, DX						
  shake.go:126		0x5d1c3a		ffce				DECL SI							
  shake.go:126		0x5d1c3c		75e5				JNE 0x5d1c23						
  shake.go:126		0x5d1c3e		440f117af8			MOVUPS X15, -0x8(DX)					
  shake.go:126		0x5d1c43		48c784247801000088000000	MOVQ $0x88, 0x178(SP)					
  shake.go:126		0x5d1c4f		48c784248801000040000000	MOVQ $0x40, 0x188(SP)					
  shake.go:126		0x5d1c5b		c68424800100001f		MOVB $0x1f, 0x180(SP)					
  field.go:473		0x5d1c63		90				NOPL							
  shake.go:72		0x5d1c64		4889cf				MOVQ CX, DI						
  shake.go:72		0x5d1c67		4889d9				MOVQ BX, CX						
  shake.go:72		0x5d1c6a		4889c3				MOVQ AX, BX						
  shake.go:72		0x5d1c6d		488d8424a8000000		LEAQ 0xa8(SP), AX					
  shake.go:72		0x5d1c75		e82603ffff			CALL crypto/internal/fips140/sha3.(*Digest).Write(SB)	
  field.go:474		0x5d1c7a		0fb69424d8030000		MOVZX 0x3d8(SP), DX					
  field.go:474		0x5d1c82		889424a7000000			MOVB DL, 0xa7(SP)					
  shake.go:72		0x5d1c89		488d8424a8000000		LEAQ 0xa8(SP), AX					
  shake.go:72		0x5d1c91		488d9c24a7000000		LEAQ 0xa7(SP), BX					
  shake.go:72		0x5d1c99		b901000000			MOVL $0x1, CX						
  shake.go:72		0x5d1c9e		89cf				MOVL CX, DI						
  shake.go:72		0x5d1ca0		e8fb02ffff			CALL crypto/internal/fips140/sha3.(*Digest).Write(SB)	
  field.go:475		0x5d1ca5		488d5c2427			LEAQ 0x27(SP), BX					
  field.go:475		0x5d1caa		440f113b			MOVUPS X15, 0(BX)					
  field.go:475		0x5d1cae		440f117b10			MOVUPS X15, 0x10(BX)					
  field.go:475		0x5d1cb3		440f117b20			MOVUPS X15, 0x20(BX)					
  field.go:475		0x5d1cb8		440f117b30			MOVUPS X15, 0x30(BX)					
  field.go:475		0x5d1cbd		440f117b40			MOVUPS X15, 0x40(BX)					
  field.go:475		0x5d1cc2		440f117b50			MOVUPS X15, 0x50(BX)					
  field.go:475		0x5d1cc7		440f117b60			MOVUPS X15, 0x60(BX)					
  field.go:475		0x5d1ccc		440f117b70			MOVUPS X15, 0x70(BX)					
  field.go:476		0x5d1cd1		488d8424a8000000		LEAQ 0xa8(SP), AX					
  field.go:476		0x5d1cd9		b980000000			MOVL $0x80, CX						
  field.go:476		0x5d1cde		89cf				MOVL CX, DI						
  field.go:476		0x5d1ce0		e87b12ffff			CALL crypto/internal/fips140/sha3.(*SHAKE).Read(SB)	
  field.go:481		0x5d1ce5		488d9424c0010000		LEAQ 0x1c0(SP), DX					
  field.go:481		0x5d1ced		be08000000			MOVL $0x8, SI						
  field.go:481		0x5d1cf2		440f113a			MOVUPS X15, 0(DX)					
  field.go:481		0x5d1cf6		440f117a10			MOVUPS X15, 0x10(DX)					
  field.go:481		0x5d1cfb		440f117a20			MOVUPS X15, 0x20(DX)					
  field.go:481		0x5d1d00		440f117a30			MOVUPS X15, 0x30(DX)					
  field.go:481		0x5d1d05		4883c240			ADDQ $0x40, DX						
  field.go:481		0x5d1d09		ffce				DECL SI							
  field.go:481		0x5d1d0b		75e5				JNE 0x5d1cf2						
  field.go:482		0x5d1d0d		31d2				XORL DX, DX						
  field.go:482		0x5d1d0f		e9b5000000			JMP 0x5d1dc9						
  field.go:483		0x5d1d14		4889d0				MOVQ DX, AX						
  field.go:483		0x5d1d17		48d1e8				SHRQ $0x1, AX						
  field.go:483		0x5d1d1a		0fb6440427			MOVZX 0x27(SP)(AX*1), AX				
  field.go:484		0x5d1d1f		89c1				MOVL AX, CX						
  field.go:484		0x5d1d21		c0e807				SHRL $0x7, AL						
  field.go:484		0x5d1d24		89cb				MOVL CX, BX						
  field.go:484		0x5d1d26		c0e906				SHRL $0x6, CL						
  field.go:484		0x5d1d29		83e101				ANDL $0x1, CX						
  field.go:484		0x5d1d2c		89de				MOVL BX, SI						
  field.go:484		0x5d1d2e		c0eb05				SHRL $0x5, BL						
  field.go:484		0x5d1d31		83e301				ANDL $0x1, BX						
  field.go:484		0x5d1d34		89f7				MOVL SI, DI						
  field.go:484		0x5d1d36		40c0ee04			SHRL $0x4, SI						
  field.go:484		0x5d1d3a		83e601				ANDL $0x1, SI						
  field.go:485		0x5d1d3d		4189f8				MOVL DI, R8						
  field.go:485		0x5d1d40		40c0ef03			SHRL $0x3, DI						
  field.go:485		0x5d1d44		83e701				ANDL $0x1, DI						
  field.go:485		0x5d1d47		4589c1				MOVL R8, R9						
  field.go:485		0x5d1d4a		41c0e802			SHRL $0x2, R8						
  field.go:485		0x5d1d4e		4183e001			ANDL $0x1, R8						
  field.go:485		0x5d1d52		4589ca				MOVL R9, R10						
  field.go:485		0x5d1d55		41d0e9				SHRL $0x1, R9						
  field.go:485		0x5d1d58		4183e101			ANDL $0x1, R9						
  field.go:485		0x5d1d5c		4183e201			ANDL $0x1, R10						
  field.go:486		0x5d1d60		4501d1				ADDL R10, R9						
  field.go:486		0x5d1d63		450fb6c9			MOVZX R9, R9						
  field.go:486		0x5d1d67		4401c7				ADDL R8, DI						
  field.go:486		0x5d1d6a		400fb6ff			MOVZX DI, DI						
  field.go:487		0x5d1d6e		01f3				ADDL SI, BX						
  field.go:487		0x5d1d70		0fb6db				MOVZX BL, BX						
  field.go:487		0x5d1d73		01c8				ADDL CX, AX						
  field.go:487		0x5d1d75		0fb6c0				MOVZX AL, AX						
  field.go:38		0x5d1d78		4129f9				SUBL DI, R9						
  field.go:38		0x5d1d7b		418d89010d0000			LEAL 0xd01(R9), CX					
  field.go:38		0x5d1d82		29c3				SUBL AX, BX						
  field.go:38		0x5d1d84		8d83010d0000			LEAL 0xd01(BX), AX					
  field.go:28		0x5d1d8a		0fb7c9				MOVZX CX, CX						
  field.go:29		0x5d1d8d		488d99fff2ffff			LEAQ 0xfffff2ff(CX), BX					
  field.go:28		0x5d1d94		0fb7c0				MOVZX AX, AX						
  field.go:29		0x5d1d97		488db0fff2ffff			LEAQ 0xfffff2ff(AX), SI					
  field.go:39		0x5d1d9e		90				NOPL							
  constant_time.go:35	0x5d1d9f		4881f9000d0000			CMPQ CX, $0xd00						
  field.go:29		0x5d1da6		480f4ed9			CMOVLE CX, BX						
  field.go:486		0x5d1daa		66899c54c0010000		MOVW BX, 0x1c0(SP)(DX*2)				
  field.go:39		0x5d1db2		90				NOPL							
  constant_time.go:35	0x5d1db3		483d000d0000			CMPQ AX, $0xd00						
  field.go:29		0x5d1db9		480f4ef0			CMOVLE AX, SI						
  field.go:487		0x5d1dbd		6689b454c2010000		MOVW SI, 0x1c2(SP)(DX*2)				
  field.go:482		0x5d1dc5		4883c202			ADDQ $0x2, DX						
  field.go:482		0x5d1dc9		4881fa00010000			CMPQ DX, $0x100						
  field.go:482		0x5d1dd0		0f8c3effffff			JL 0x5d1d14						
  field.go:489		0x5d1dd6		c9				LEAVE							
  field.go:489		0x5d1dd7		c3				RET							
  field.go:471		0x5d1dd8		4889842408020000		MOVQ AX, 0x208(SP)					
  field.go:471		0x5d1de0		48899c2410020000		MOVQ BX, 0x210(SP)					
  field.go:471		0x5d1de8		48898c2418020000		MOVQ CX, 0x218(SP)					
  field.go:471		0x5d1df0		4088bc2420020000		MOVB DI, 0x220(SP)					
  field.go:471		0x5d1df8		e8c3a8ebff			CALL runtime.morestack_noctxt.abi0(SB)			
  field.go:471		0x5d1dfd		488b842408020000		MOVQ 0x208(SP), AX					
  field.go:471		0x5d1e05		488b9c2410020000		MOVQ 0x210(SP), BX					
  field.go:471		0x5d1e0d		488b8c2418020000		MOVQ 0x218(SP), CX					
  field.go:471		0x5d1e15		0fb6bc2420020000		MOVZX 0x220(SP), DI					
  field.go:471		0x5d1e1d		0f1f00				NOPL 0(AX)						
  field.go:471		0x5d1e20		e99bfdffff			JMP crypto/internal/fips140/mlkem.samplePolyCBD(SB)	

TEXT crypto/internal/fips140/mlkem.ntt(SB) /home/exedev/go-pq-stack/src/crypto/internal/fips140/mlkem/field.go
  field.go:522		0x5d1e40		55			PUSHQ BP						
  field.go:522		0x5d1e41		4889e5			MOVQ SP, BP						
  field.go:522		0x5d1e44		488d842410020000	LEAQ 0x210(SP), AX					
  field.go:522		0x5d1e4c		b908000000		MOVL $0x8, CX						
  field.go:522		0x5d1e51		440f1138		MOVUPS X15, 0(AX)					
  field.go:522		0x5d1e55		440f117810		MOVUPS X15, 0x10(AX)					
  field.go:522		0x5d1e5a		440f117820		MOVUPS X15, 0x20(AX)					
  field.go:522		0x5d1e5f		440f117830		MOVUPS X15, 0x30(AX)					
  field.go:522		0x5d1e64		4883c040		ADDQ $0x40, AX						
  field.go:522		0x5d1e68		ffc9			DECL CX							
  field.go:522		0x5d1e6a		75e5			JNE 0x5d1e51						
  field.go:524		0x5d1e6c		b801000000		MOVL $0x1, AX						
  field.go:524		0x5d1e71		b980000000		MOVL $0x80, CX						
  field.go:524		0x5d1e76		eb08			JMP 0x5d1e80						
  field.go:524		0x5d1e78		48d1e9			SHRQ $0x1, CX						
  field.go:524		0x5d1e7b		0f1f440000		NOPL 0(AX)(AX*1)					
  field.go:524		0x5d1e80		4883f902		CMPQ CX, $0x2						
  field.go:524		0x5d1e84		0f8c0a010000		JL 0x5d1f94						
  field.go:525		0x5d1e8a		31d2			XORL DX, DX						
  field.go:525		0x5d1e8c		eb06			JMP 0x5d1e94						
  field.go:527		0x5d1e8e		48ffc0			INCQ AX							
  field.go:525		0x5d1e91		4c89c2			MOVQ R8, DX						
  field.go:525		0x5d1e94		4881fa00010000		CMPQ DX, $0x100						
  field.go:525		0x5d1e9b		7ddb			JGE 0x5d1e78						
  field.go:525		0x5d1e9d		0f1f00			NOPL 0(AX)						
  field.go:526		0x5d1ea0		483d80000000		CMPQ AX, $0x80						
  field.go:526		0x5d1ea6		0f8348010000		JAE 0x5d1ff4						
  field.go:529		0x5d1eac		488d1c0a		LEAQ 0(DX)(CX*1), BX					
  field.go:526		0x5d1eb0		488d35a9562100		LEAQ crypto/internal/fips140/mlkem.zetas(SB), SI	
  field.go:526		0x5d1eb7		0fb73c46		MOVZX 0(SI)(AX*2), DI					
  field.go:526		0x5d1ebb		0f1f440000		NOPL 0(AX)(AX*1)					
  field.go:529		0x5d1ec0		4881fb00010000		CMPQ BX, $0x100						
  field.go:529		0x5d1ec7		0f871d010000		JA 0x5d1fea						
  field.go:529		0x5d1ecd		4839da			CMPQ DX, BX						
  field.go:529		0x5d1ed0		0f870f010000		JA 0x5d1fe5						
  field.go:529		0x5d1ed6		4c8d044a		LEAQ 0(DX)(CX*2), R8					
  field.go:529		0x5d1eda		660f1f440000		NOPW 0(AX)(AX*1)					
  field.go:529		0x5d1ee0		4981f800010000		CMPQ R8, $0x100						
  field.go:529		0x5d1ee7		0f87ed000000		JA 0x5d1fda						
  field.go:529		0x5d1eed		488d545410		LEAQ 0x10(SP)(DX*2), DX					
  field.go:529		0x5d1ef2		488d5c5c10		LEAQ 0x10(SP)(BX*2), BX					
  field.go:530		0x5d1ef7		4531c9			XORL R9, R9						
  field.go:530		0x5d1efa		e987000000		JMP 0x5d1f86						
  field.go:531		0x5d1eff		460fb7144b		MOVZX 0(BX)(R9*2), R10					
  field.go:532		0x5d1f04		460fb71c4a		MOVZX 0(DX)(R9*2), R11					
  field.go:55		0x5d1f09		440fafd7		IMULL DI, R10						
  field.go:50		0x5d1f0d		4d69e2af130000		IMULQ $0x13af, R10, R12					
  field.go:50		0x5d1f14		49c1ec18		SHRQ $0x18, R12						
  field.go:51		0x5d1f18		4569e4010d0000		IMULL $0xd01, R12, R12					
  field.go:51		0x5d1f1f		4529e2			SUBL R12, R10						
  field.go:28		0x5d1f22		450fb7d2		MOVZX R10, R10						
  field.go:29		0x5d1f26		4d8da2fff2ffff		LEAQ 0xfffff2ff(R10), R12				
  field.go:56		0x5d1f2d		90			NOPL							
  field.go:39		0x5d1f2e		90			NOPL							
  constant_time.go:35	0x5d1f2f		4981fa000d0000		CMPQ R10, $0xd00					
  field.go:29		0x5d1f36		4d0f4ee2		CMOVLE R10, R12						
  field.go:38		0x5d1f3a		4529e3			SUBL R12, R11						
  field.go:38		0x5d1f3d		458d93010d0000		LEAL 0xd01(R11), R10					
  field.go:28		0x5d1f44		450fb7d2		MOVZX R10, R10						
  field.go:29		0x5d1f48		4d8d9afff2ffff		LEAQ 0xfffff2ff(R10), R11				
  constant_time.go:35	0x5d1f4f		4981fa000d0000		CMPQ R10, $0xd00					
  field.go:29		0x5d1f56		4d0f4eda		CMOVLE R10, R11						
  field.go:532		0x5d1f5a		6646891c4b		MOVW R11, 0(BX)(R9*2)					
  field.go:533		0x5d1f5f		460fb7144a		MOVZX 0(DX)(R9*2), R10					
  field.go:33		0x5d1f64		4501e2			ADDL R12, R10						
  field.go:28		0x5d1f67		450fb7d2		MOVZX R10, R10						
  field.go:29		0x5d1f6b		4d8d9afff2ffff		LEAQ 0xfffff2ff(R10), R11				
  field.go:34		0x5d1f72		90			NOPL							
  constant_time.go:35	0x5d1f73		4981fa000d0000		CMPQ R10, $0xd00					
  field.go:29		0x5d1f7a		4d0f4eda		CMOVLE R10, R11						
  field.go:533		0x5d1f7e		6646891c4a		MOVW R11, 0(DX)(R9*2)					
  field.go:530		0x5d1f83		49ffc1			INCQ R9							
  field.go:530		0x5d1f86		4939c9			CMPQ R9, CX						
  field.go:530		0x5d1f89		0f8c70ffffff		JL 0x5d1eff						
  field.go:530		0x5d1f8f		e9fafeffff		JMP 0x5d1e8e						
  field.go:537		0x5d1f94		488d842410020000	LEAQ 0x210(SP), AX					
  field.go:537		0x5d1f9c		488d4c2410		LEAQ 0x10(SP), CX					
  field.go:537		0x5d1fa1		ba08000000		MOVL $0x8, DX						
  field.go:537		0x5d1fa6		440f1031		MOVUPS 0(CX), X14					
  field.go:537		0x5d1faa		440f1130		MOVUPS X14, 0(AX)					
  field.go:537		0x5d1fae		440f107110		MOVUPS 0x10(CX), X14					
  field.go:537		0x5d1fb3		440f117010		MOVUPS X14, 0x10(AX)					
  field.go:537		0x5d1fb8		440f107120		MOVUPS 0x20(CX), X14					
  field.go:537		0x5d1fbd		440f117020		MOVUPS X14, 0x20(AX)					
  field.go:537		0x5d1fc2		440f107130		MOVUPS 0x30(CX), X14					
  field.go:537		0x5d1fc7		440f117030		MOVUPS X14, 0x30(AX)					
  field.go:537		0x5d1fcc		4883c140		ADDQ $0x40, CX						
  field.go:537		0x5d1fd0		4883c040		ADDQ $0x40, AX						
  field.go:537		0x5d1fd4		ffca			DECL DX							
  field.go:537		0x5d1fd6		75ce			JNE 0x5d1fa6						
  field.go:537		0x5d1fd8		5d			POPQ BP							
  field.go:537		0x5d1fd9		c3			RET							
  field.go:529		0x5d1fda		b800010000		MOVL $0x100, AX						
  field.go:529		0x5d1fdf		90			NOPL							
  field.go:529		0x5d1fe0		e81bc3ebff		CALL runtime.panicBounds(SB)				
  field.go:529		0x5d1fe5		e816c3ebff		CALL runtime.panicBounds(SB)				
  field.go:529		0x5d1fea		b800010000		MOVL $0x100, AX						
  field.go:529		0x5d1fef		e80cc3ebff		CALL runtime.panicBounds(SB)				
  field.go:526		0x5d1ff4		b980000000		MOVL $0x80, CX						
  field.go:526		0x5d1ff9		e802c3ebff		CALL runtime.panicBounds(SB)				
  field.go:526		0x5d1ffe		90			NOPL							

TEXT crypto/internal/fips140/mlkem.inverseNTT(SB) /home/exedev/go-pq-stack/src/crypto/internal/fips140/mlkem/field.go
  field.go:543		0x5d2000		55			PUSHQ BP						
  field.go:543		0x5d2001		4889e5			MOVQ SP, BP						
  field.go:543		0x5d2004		488d842410020000	LEAQ 0x210(SP), AX					
  field.go:543		0x5d200c		b908000000		MOVL $0x8, CX						
  field.go:543		0x5d2011		440f1138		MOVUPS X15, 0(AX)					
  field.go:543		0x5d2015		440f117810		MOVUPS X15, 0x10(AX)					
  field.go:543		0x5d201a		440f117820		MOVUPS X15, 0x20(AX)					
  field.go:543		0x5d201f		440f117830		MOVUPS X15, 0x30(AX)					
  field.go:543		0x5d2024		4883c040		ADDQ $0x40, AX						
  field.go:543		0x5d2028		ffc9			DECL CX							
  field.go:543		0x5d202a		75e5			JNE 0x5d2011						
  field.go:545		0x5d202c		b87f000000		MOVL $0x7f, AX						
  field.go:545		0x5d2031		b902000000		MOVL $0x2, CX						
  field.go:545		0x5d2036		eb08			JMP 0x5d2040						
  field.go:545		0x5d2038		4801c9			ADDQ CX, CX						
  field.go:545		0x5d203b		0f1f440000		NOPL 0(AX)(AX*1)					
  field.go:545		0x5d2040		4883f97f		CMPQ CX, $0x7f						
  field.go:545		0x5d2044		0f8f0b010000		JG 0x5d2155						
  field.go:546		0x5d204a		31d2			XORL DX, DX						
  field.go:546		0x5d204c		eb06			JMP 0x5d2054						
  field.go:548		0x5d204e		48ffc8			DECQ AX							
  field.go:546		0x5d2051		4c89c2			MOVQ R8, DX						
  field.go:546		0x5d2054		4881fa00010000		CMPQ DX, $0x100						
  field.go:546		0x5d205b		7ddb			JGE 0x5d2038						
  field.go:546		0x5d205d		0f1f00			NOPL 0(AX)						
  field.go:547		0x5d2060		483d80000000		CMPQ AX, $0x80						
  field.go:547		0x5d2066		0f83e9010000		JAE 0x5d2255						
  field.go:550		0x5d206c		488d1c11		LEAQ 0(CX)(DX*1), BX					
  field.go:547		0x5d2070		488d35e9542100		LEAQ crypto/internal/fips140/mlkem.zetas(SB), SI	
  field.go:547		0x5d2077		0fb73c46		MOVZX 0(SI)(AX*2), DI					
  field.go:547		0x5d207b		0f1f440000		NOPL 0(AX)(AX*1)					
  field.go:550		0x5d2080		4881fb00010000		CMPQ BX, $0x100						
  field.go:550		0x5d2087		0f87be010000		JA 0x5d224b						
  field.go:550		0x5d208d		4839da			CMPQ DX, BX						
  field.go:550		0x5d2090		0f87b0010000		JA 0x5d2246						
  field.go:550		0x5d2096		4c8d044a		LEAQ 0(DX)(CX*2), R8					
  field.go:550		0x5d209a		660f1f440000		NOPW 0(AX)(AX*1)					
  field.go:550		0x5d20a0		4981f800010000		CMPQ R8, $0x100						
  field.go:550		0x5d20a7		0f878f010000		JA 0x5d223c						
  field.go:550		0x5d20ad		4939d8			CMPQ R8, BX						
  field.go:550		0x5d20b0		0f8281010000		JB 0x5d2237						
  field.go:550		0x5d20b6		4c8d8c0a00ffffff	LEAQ 0xffffff00(DX)(CX*1), R9				
  field.go:550		0x5d20be		4801db			ADDQ BX, BX						
  field.go:550		0x5d20c1		49c1f93f		SARQ $0x3f, R9						
  field.go:550		0x5d20c5		4c21cb			ANDQ R9, BX						
  field.go:550		0x5d20c8		488d545410		LEAQ 0x10(SP)(DX*2), DX					
  field.go:550		0x5d20cd		488d5c1c10		LEAQ 0x10(SP)(BX*1), BX					
  field.go:551		0x5d20d2		4531c9			XORL R9, R9						
  field.go:551		0x5d20d5		eb74			JMP 0x5d214b						
  field.go:552		0x5d20d7		460fb7144a		MOVZX 0(DX)(R9*2), R10					
  field.go:553		0x5d20dc		460fb71c4b		MOVZX 0(BX)(R9*2), R11					
  field.go:33		0x5d20e1		4501d3			ADDL R10, R11						
  field.go:28		0x5d20e4		450fb7db		MOVZX R11, R11						
  field.go:29		0x5d20e8		4d8da3fff2ffff		LEAQ 0xfffff2ff(R11), R12				
  field.go:34		0x5d20ef		90			NOPL							
  constant_time.go:35	0x5d20f0		4981fb000d0000		CMPQ R11, $0xd00					
  field.go:29		0x5d20f7		4d0f4ee3		CMOVLE R11, R12						
  field.go:553		0x5d20fb		664689244a		MOVW R12, 0(DX)(R9*2)					
  field.go:554		0x5d2100		460fb71c4b		MOVZX 0(BX)(R9*2), R11					
  field.go:62		0x5d2105		4529d3			SUBL R10, R11						
  field.go:62		0x5d2108		458d93010d0000		LEAL 0xd01(R11), R10					
  field.go:62		0x5d210f		450fb7d2		MOVZX R10, R10						
  field.go:62		0x5d2113		440fafd7		IMULL DI, R10						
  field.go:50		0x5d2117		4d69daaf130000		IMULQ $0x13af, R10, R11					
  field.go:50		0x5d211e		49c1eb18		SHRQ $0x18, R11						
  field.go:51		0x5d2122		4569db010d0000		IMULL $0xd01, R11, R11					
  field.go:51		0x5d2129		4529da			SUBL R11, R10						
  field.go:28		0x5d212c		450fb7d2		MOVZX R10, R10						
  field.go:29		0x5d2130		4d8d9afff2ffff		LEAQ 0xfffff2ff(R10), R11				
  field.go:63		0x5d2137		90			NOPL							
  constant_time.go:35	0x5d2138		4981fa000d0000		CMPQ R10, $0xd00					
  field.go:29		0x5d213f		4d0f4eda		CMOVLE R10, R11						
  field.go:554		0x5d2143		6646891c4b		MOVW R11, 0(BX)(R9*2)					
  field.go:551		0x5d2148		49ffc1			INCQ R9							
  field.go:551		0x5d214b		4939c9			CMPQ R9, CX						
  field.go:551		0x5d214e		7c87			JL 0x5d20d7						
  field.go:551		0x5d2150		e9f9feffff		JMP 0x5d204e						
  field.go:545		0x5d2155		31c0			XORL AX, AX						
  field.go:545		0x5d2157		e98b000000		JMP 0x5d21e7						
  field.go:563		0x5d215c		0fb74c4410		MOVZX 0x10(SP)(AX*2), CX				
  field.go:563		0x5d2161		0fb7944410010000	MOVZX 0x110(SP)(AX*2), DX				
  field.go:565		0x5d2169		8d1c0a			LEAL 0(DX)(CX*1), BX					
  field.go:565		0x5d216c		0fb7db			MOVZX BX, BX						
  field.go:565		0x5d216f		69dbe70c0000		IMULL $0xce7, BX, BX					
  field.go:50		0x5d2175		4869f3af130000		IMULQ $0x13af, BX, SI					
  field.go:50		0x5d217c		48c1ee18		SHRQ $0x18, SI						
  field.go:51		0x5d2180		69f6010d0000		IMULL $0xd01, SI, SI					
  field.go:51		0x5d2186		29f3			SUBL SI, BX						
  field.go:62		0x5d2188		29ca			SUBL CX, DX						
  field.go:62		0x5d218a		8d8a010d0000		LEAL 0xd01(DX), CX					
  field.go:62		0x5d2190		0fb7c9			MOVZX CX, CX						
  field.go:62		0x5d2193		69c974060000		IMULL $0x674, CX, CX					
  field.go:28		0x5d2199		0fb7d3			MOVZX BX, DX						
  field.go:29		0x5d219c		488d9afff2ffff		LEAQ 0xfffff2ff(DX), BX					
  field.go:50		0x5d21a3		4869f1af130000		IMULQ $0x13af, CX, SI					
  field.go:50		0x5d21aa		48c1ee18		SHRQ $0x18, SI						
  field.go:51		0x5d21ae		69f6010d0000		IMULL $0xd01, SI, SI					
  field.go:51		0x5d21b4		29f1			SUBL SI, CX						
  field.go:28		0x5d21b6		0fb7c9			MOVZX CX, CX						
  field.go:29		0x5d21b9		488db1fff2ffff		LEAQ 0xfffff2ff(CX), SI					
  constant_time.go:35	0x5d21c0		4881fa000d0000		CMPQ DX, $0xd00						
  field.go:29		0x5d21c7		480f4eda		CMOVLE DX, BX						
  field.go:565		0x5d21cb		66895c4410		MOVW BX, 0x10(SP)(AX*2)					
  field.go:63		0x5d21d0		90			NOPL							
  constant_time.go:35	0x5d21d1		4881f9000d0000		CMPQ CX, $0xd00						
  field.go:29		0x5d21d8		480f4ef1		CMOVLE CX, SI						
  field.go:566		0x5d21dc		6689b44410010000	MOVW SI, 0x110(SP)(AX*2)				
  field.go:562		0x5d21e4		48ffc0			INCQ AX							
  field.go:562		0x5d21e7		4883f87f		CMPQ AX, $0x7f						
  field.go:562		0x5d21eb		0f8e6bffffff		JLE 0x5d215c						
  field.go:568		0x5d21f1		488d842410020000	LEAQ 0x210(SP), AX					
  field.go:568		0x5d21f9		488d4c2410		LEAQ 0x10(SP), CX					
  field.go:568		0x5d21fe		ba08000000		MOVL $0x8, DX						
  field.go:568		0x5d2203		440f1031		MOVUPS 0(CX), X14					
  field.go:568		0x5d2207		440f1130		MOVUPS X14, 0(AX)					
  field.go:568		0x5d220b		440f107110		MOVUPS 0x10(CX), X14					
  field.go:568		0x5d2210		440f117010		MOVUPS X14, 0x10(AX)					
  field.go:568		0x5d2215		440f107120		MOVUPS 0x20(CX), X14					
  field.go:568		0x5d221a		440f117020		MOVUPS X14, 0x20(AX)					
  field.go:568		0x5d221f		440f107130		MOVUPS 0x30(CX), X14					
  field.go:568		0x5d2224		440f117030		MOVUPS X14, 0x30(AX)					
  field.go:568		0x5d2229		4883c140		ADDQ $0x40, CX						
  field.go:568		0x5d222d		4883c040		ADDQ $0x40, AX						
  field.go:568		0x5d2231		ffca			DECL DX							
  field.go:568		0x5d2233		75ce			JNE 0x5d2203						
  field.go:568		0x5d2235		5d			POPQ BP							
  field.go:568		0x5d2236		c3			RET							
  field.go:550		0x5d2237		e8c4c0ebff		CALL runtime.panicBounds(SB)				
  field.go:550		0x5d223c		b800010000		MOVL $0x100, AX						
  field.go:550		0x5d2241		e8bac0ebff		CALL runtime.panicBounds(SB)				
  field.go:550		0x5d2246		e8b5c0ebff		CALL runtime.panicBounds(SB)				
  field.go:550		0x5d224b		b800010000		MOVL $0x100, AX						
  field.go:550		0x5d2250		e8abc0ebff		CALL runtime.panicBounds(SB)				
  field.go:547		0x5d2255		b980000000		MOVL $0x80, CX						
  field.go:547		0x5d225a		e8a1c0ebff		CALL runtime.panicBounds(SB)				
  field.go:547		0x5d225f		90			NOPL							

TEXT crypto/internal/fips140/mlkem.nttMulAdd(SB) /home/exedev/go-pq-stack/src/crypto/internal/fips140/mlkem/field.go
  field.go:681		0x5d2900		31d2			XORL DX, DX						
  field.go:681		0x5d2902		e9e7000000		JMP 0x5d29ee						
  field.go:682		0x5d2907		8403			TESTB AL, 0(BX)						
  field.go:683		0x5d2909		8401			TESTB AL, 0(CX)						
  field.go:685		0x5d290b		8400			TESTB AL, 0(AX)						
  field.go:682		0x5d290d		0fb73453		MOVZX 0(BX)(DX*2), SI					
  field.go:682		0x5d2911		0fb77c5302		MOVZX 0x2(BX)(DX*2), DI					
  field.go:683		0x5d2916		440fb70451		MOVZX 0(CX)(DX*2), R8					
  field.go:683		0x5d291b		440fb74c5102		MOVZX 0x2(CX)(DX*2), R9					
  field.go:685		0x5d2921		440fb71450		MOVZX 0(AX)(DX*2), R10					
  field.go:685		0x5d2926		4589c3			MOVL R8, R11						
  field.go:685		0x5d2929		440fafc6		IMULL SI, R8						
  field.go:685		0x5d292d		4501d0			ADDL R10, R8						
  field.go:685		0x5d2930		4989d2			MOVQ DX, R10						
  field.go:685		0x5d2933		49d1ea			SHRQ $0x1, R10						
  field.go:685		0x5d2936		4c8d25234b2100		LEAQ crypto/internal/fips140/mlkem.gammas(SB), R12	
  field.go:685		0x5d293d		470fb71454		MOVZX 0(R12)(R10*2), R10				
  field.go:686		0x5d2942		410faff1		IMULL R9, SI						
  field.go:686		0x5d2946		440fafdf		IMULL DI, R11						
  field.go:55		0x5d294a		410faff9		IMULL R9, DI						
  field.go:50		0x5d294e		4c69cfaf130000		IMULQ $0x13af, DI, R9					
  field.go:50		0x5d2955		49c1e918		SHRQ $0x18, R9						
  field.go:51		0x5d2959		4569c9010d0000		IMULL $0xd01, R9, R9					
  field.go:51		0x5d2960		4429cf			SUBL R9, DI						
  field.go:28		0x5d2963		0fb7ff			MOVZX DI, DI						
  field.go:29		0x5d2966		4c8d8ffff2ffff		LEAQ 0xfffff2ff(DI), R9					
  field.go:56		0x5d296d		90			NOPL							
  constant_time.go:35	0x5d296e		4881ff000d0000		CMPQ DI, $0xd00						
  field.go:29		0x5d2975		4c0f4ecf		CMOVLE DI, R9						
  field.go:685		0x5d2979		410fb7f9		MOVZX R9, DI						
  field.go:685		0x5d297d		410faffa		IMULL R10, DI						
  field.go:685		0x5d2981		4401c7			ADDL R8, DI						
  field.go:50		0x5d2984		4c69c7af130000		IMULQ $0x13af, DI, R8					
  field.go:50		0x5d298b		49c1e818		SHRQ $0x18, R8						
  field.go:51		0x5d298f		4569c0010d0000		IMULL $0xd01, R8, R8					
  field.go:51		0x5d2996		4429c7			SUBL R8, DI						
  field.go:28		0x5d2999		0fb7ff			MOVZX DI, DI						
  field.go:29		0x5d299c		4c8d87fff2ffff		LEAQ 0xfffff2ff(DI), R8					
  constant_time.go:35	0x5d29a3		4881ff000d0000		CMPQ DI, $0xd00						
  field.go:29		0x5d29aa		4c0f4ec7		CMOVLE DI, R8						
  field.go:685		0x5d29ae		6644890450		MOVW R8, 0(AX)(DX*2)					
  field.go:686		0x5d29b3		0fb77c5002		MOVZX 0x2(AX)(DX*2), DI					
  field.go:686		0x5d29b8		01fe			ADDL DI, SI						
  field.go:686		0x5d29ba		4401de			ADDL R11, SI						
  field.go:50		0x5d29bd		4869feaf130000		IMULQ $0x13af, SI, DI					
  field.go:50		0x5d29c4		48c1ef18		SHRQ $0x18, DI						
  field.go:51		0x5d29c8		69ff010d0000		IMULL $0xd01, DI, DI					
  field.go:51		0x5d29ce		29fe			SUBL DI, SI						
  field.go:28		0x5d29d0		0fb7f6			MOVZX SI, SI						
  field.go:29		0x5d29d3		488dbefff2ffff		LEAQ 0xfffff2ff(SI), DI					
  constant_time.go:35	0x5d29da		4881fe000d0000		CMPQ SI, $0xd00						
  field.go:29		0x5d29e1		480f4efe		CMOVLE SI, DI						
  field.go:686		0x5d29e5		66897c5002		MOVW DI, 0x2(AX)(DX*2)					
  field.go:681		0x5d29ea		4883c202		ADDQ $0x2, DX						
  field.go:681		0x5d29ee		4881fa00010000		CMPQ DX, $0x100						
  field.go:681		0x5d29f5		0f8c0cffffff		JL 0x5d2907						
  field.go:688		0x5d29fb		c3			RET							

TEXT crypto/internal/fips140/mlkem.nttMulPrecompute(SB) /home/exedev/go-pq-stack/src/crypto/internal/fips140/mlkem/field.go
  field.go:693		0x5d2a00		31c9			XORL CX, CX						
  field.go:693		0x5d2a02		eb4a			JMP 0x5d2a4e						
  field.go:694		0x5d2a04		8400			TESTB AL, 0(AX)						
  field.go:694		0x5d2a06		8403			TESTB AL, 0(BX)						
  field.go:694		0x5d2a08		488d548b02		LEAQ 0x2(BX)(CX*4), DX					
  field.go:694		0x5d2a0d		0fb712			MOVZX 0(DX), DX						
  field.go:694		0x5d2a10		488d35494a2100		LEAQ crypto/internal/fips140/mlkem.gammas(SB), SI	
  field.go:694		0x5d2a17		0fb73c4e		MOVZX 0(SI)(CX*2), DI					
  field.go:55		0x5d2a1b		0fafd7			IMULL DI, DX						
  field.go:50		0x5d2a1e		4869faaf130000		IMULQ $0x13af, DX, DI					
  field.go:50		0x5d2a25		48c1ef18		SHRQ $0x18, DI						
  field.go:51		0x5d2a29		69ff010d0000		IMULL $0xd01, DI, DI					
  field.go:51		0x5d2a2f		29fa			SUBL DI, DX						
  field.go:28		0x5d2a31		0fb7d2			MOVZX DX, DX						
  field.go:29		0x5d2a34		488dbafff2ffff		LEAQ 0xfffff2ff(DX), DI					
  field.go:56		0x5d2a3b		90			NOPL							
  constant_time.go:35	0x5d2a3c		4881fa000d0000		CMPQ DX, $0xd00						
  field.go:29		0x5d2a43		480f4efa		CMOVLE DX, DI						
  field.go:694		0x5d2a47		66893c48		MOVW DI, 0(AX)(CX*2)					
  field.go:693		0x5d2a4b		48ffc1			INCQ CX							
  field.go:693		0x5d2a4e		4883f97f		CMPQ CX, $0x7f						
  field.go:693		0x5d2a52		7eb0			JLE 0x5d2a04						
  field.go:696		0x5d2a54		c3			RET							

TEXT crypto/internal/fips140/mlkem.nttMulAddPrecomputed(SB) /home/exedev/go-pq-stack/src/crypto/internal/fips140/mlkem/field.go
  field.go:701		0x5d2a60		31d2			XORL DX, DX			
  field.go:701		0x5d2a62		e9b9000000		JMP 0x5d2b20			
  field.go:702		0x5d2a67		8403			TESTB AL, 0(BX)			
  field.go:703		0x5d2a69		8401			TESTB AL, 0(CX)			
  field.go:705		0x5d2a6b		8400			TESTB AL, 0(AX)			
  field.go:705		0x5d2a6d		8407			TESTB AL, 0(DI)			
  field.go:702		0x5d2a6f		0fb73453		MOVZX 0(BX)(DX*2), SI		
  field.go:702		0x5d2a73		440fb7445302		MOVZX 0x2(BX)(DX*2), R8		
  field.go:703		0x5d2a79		440fb70c51		MOVZX 0(CX)(DX*2), R9		
  field.go:703		0x5d2a7e		440fb7545102		MOVZX 0x2(CX)(DX*2), R10	
  field.go:705		0x5d2a84		440fb71c50		MOVZX 0(AX)(DX*2), R11		
  field.go:705		0x5d2a89		4189f4			MOVL SI, R12			
  field.go:705		0x5d2a8c		410faff1		IMULL R9, SI			
  field.go:705		0x5d2a90		4401de			ADDL R11, SI			
  field.go:705		0x5d2a93		4989d3			MOVQ DX, R11			
  field.go:705		0x5d2a96		49d1eb			SHRQ $0x1, R11			
  field.go:705		0x5d2a99		460fb71c5f		MOVZX 0(DI)(R11*2), R11		
  field.go:705		0x5d2a9e		450fafd8		IMULL R8, R11			
  field.go:705		0x5d2aa2		4401de			ADDL R11, SI			
  field.go:706		0x5d2aa5		450fafe2		IMULL R10, R12			
  field.go:706		0x5d2aa9		450fafc8		IMULL R8, R9			
  field.go:50		0x5d2aad		4c69c6af130000		IMULQ $0x13af, SI, R8		
  field.go:50		0x5d2ab4		49c1e818		SHRQ $0x18, R8			
  field.go:51		0x5d2ab8		4569c0010d0000		IMULL $0xd01, R8, R8		
  field.go:51		0x5d2abf		4429c6			SUBL R8, SI			
  field.go:28		0x5d2ac2		0fb7f6			MOVZX SI, SI			
  field.go:29		0x5d2ac5		4c8d86fff2ffff		LEAQ 0xfffff2ff(SI), R8		
  constant_time.go:35	0x5d2acc		4881fe000d0000		CMPQ SI, $0xd00			
  field.go:29		0x5d2ad3		4c0f4ec6		CMOVLE SI, R8			
  field.go:705		0x5d2ad7		6644890450		MOVW R8, 0(AX)(DX*2)		
  field.go:706		0x5d2adc		0fb7745002		MOVZX 0x2(AX)(DX*2), SI		
  field.go:706		0x5d2ae1		4401e6			ADDL R12, SI			
  field.go:706		0x5d2ae4		4401ce			ADDL R9, SI			
  field.go:50		0x5d2ae7		4c69c6af130000		IMULQ $0x13af, SI, R8		
  field.go:50		0x5d2aee		49c1e818		SHRQ $0x18, R8			
  field.go:51		0x5d2af2		4569c0010d0000		IMULL $0xd01, R8, R8		
  field.go:51		0x5d2af9		4429c6			SUBL R8, SI			
  field.go:28		0x5d2afc		0fb7f6			MOVZX SI, SI			
  field.go:29		0x5d2aff		4c8d86fff2ffff		LEAQ 0xfffff2ff(SI), R8		
  constant_time.go:35	0x5d2b06		4881fe000d0000		CMPQ SI, $0xd00			
  field.go:29		0x5d2b0d		4c0f4ec6		CMOVLE SI, R8			
  field.go:706		0x5d2b11		664489445002		MOVW R8, 0x2(AX)(DX*2)		
  field.go:701		0x5d2b17		4883c202		ADDQ $0x2, DX			
  field.go:701		0x5d2b1b		0f1f440000		NOPL 0(AX)(AX*1)		
  field.go:701		0x5d2b20		4881fa00010000		CMPQ DX, $0x100			
  field.go:701		0x5d2b27		0f8c3affffff		JL 0x5d2a67			
  field.go:708		0x5d2b2d		c3			RET				
