TEXT crypto/internal/fips140/mlkem.samplePolyCBD(SB) /home/exedev/go-pq-stack/src/crypto/internal/fips140/mlkem/field.go
  field.go:471		0x5d1bc0		4c8da424c8feffff		LEAQ 0xfffffec8(SP), R12				
  field.go:471		0x5d1bc8		4d3b6610			CMPQ R12, 0x10(R14)					
  field.go:471		0x5d1bcc		0f86fd010000			JBE 0x5d1dcf						
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
  field.go:482		0x5d1d0f		e9ac000000			JMP 0x5d1dc0						
  field.go:484		0x5d1d14		4889d0				MOVQ DX, AX						
  field.go:484		0x5d1d17		48d1e8				SHRQ $0x1, AX						
  field.go:484		0x5d1d1a		0fb6440427			MOVZX 0x27(SP)(AX*1), AX				
  field.go:485		0x5d1d1f		89c1				MOVL AX, CX						
  field.go:485		0x5d1d21		66c1e807			SHRW $0x7, AX						
  field.go:485		0x5d1d25		89cb				MOVL CX, BX						
  field.go:485		0x5d1d27		66c1e906			SHRW $0x6, CX						
  field.go:485		0x5d1d2b		83e101				ANDL $0x1, CX						
  field.go:485		0x5d1d2e		89de				MOVL BX, SI						
  field.go:485		0x5d1d30		66c1eb05			SHRW $0x5, BX						
  field.go:485		0x5d1d34		83e301				ANDL $0x1, BX						
  field.go:485		0x5d1d37		89f7				MOVL SI, DI						
  field.go:485		0x5d1d39		66c1ee04			SHRW $0x4, SI						
  field.go:485		0x5d1d3d		83e601				ANDL $0x1, SI						
  field.go:486		0x5d1d40		4189f8				MOVL DI, R8						
  field.go:486		0x5d1d43		66c1ef03			SHRW $0x3, DI						
  field.go:486		0x5d1d47		83e701				ANDL $0x1, DI						
  field.go:486		0x5d1d4a		4589c1				MOVL R8, R9						
  field.go:486		0x5d1d4d		6641c1e802			SHRW $0x2, R8						
  field.go:486		0x5d1d52		4183e001			ANDL $0x1, R8						
  field.go:486		0x5d1d56		4589ca				MOVL R9, R10						
  field.go:486		0x5d1d59		6641d1e9			SHRW $0x1, R9						
  field.go:486		0x5d1d5d		4183e101			ANDL $0x1, R9						
  field.go:486		0x5d1d61		4183e201			ANDL $0x1, R10						
  field.go:487		0x5d1d65		4501d1				ADDL R10, R9						
  field.go:487		0x5d1d68		4401c7				ADDL R8, DI						
  field.go:488		0x5d1d6b		01f3				ADDL SI, BX						
  field.go:488		0x5d1d6d		01c8				ADDL CX, AX						
  field.go:38		0x5d1d6f		4129f9				SUBL DI, R9						
  field.go:38		0x5d1d72		418d89010d0000			LEAL 0xd01(R9), CX					
  field.go:38		0x5d1d79		29c3				SUBL AX, BX						
  field.go:38		0x5d1d7b		8d83010d0000			LEAL 0xd01(BX), AX					
  field.go:28		0x5d1d81		0fb7c9				MOVZX CX, CX						
  field.go:29		0x5d1d84		488d99fff2ffff			LEAQ 0xfffff2ff(CX), BX					
  field.go:28		0x5d1d8b		0fb7c0				MOVZX AX, AX						
  field.go:29		0x5d1d8e		488db0fff2ffff			LEAQ 0xfffff2ff(AX), SI					
  field.go:39		0x5d1d95		90				NOPL							
  constant_time.go:35	0x5d1d96		4881f9000d0000			CMPQ CX, $0xd00						
  field.go:29		0x5d1d9d		480f4ed9			CMOVLE CX, BX						
  field.go:487		0x5d1da1		66899c54c0010000		MOVW BX, 0x1c0(SP)(DX*2)				
  field.go:39		0x5d1da9		90				NOPL							
  constant_time.go:35	0x5d1daa		483d000d0000			CMPQ AX, $0xd00						
  field.go:29		0x5d1db0		480f4ef0			CMOVLE AX, SI						
  field.go:488		0x5d1db4		6689b454c2010000		MOVW SI, 0x1c2(SP)(DX*2)				
  field.go:482		0x5d1dbc		4883c202			ADDQ $0x2, DX						
  field.go:482		0x5d1dc0		4881fa00010000			CMPQ DX, $0x100						
  field.go:482		0x5d1dc7		0f8c47ffffff			JL 0x5d1d14						
  field.go:490		0x5d1dcd		c9				LEAVE							
  field.go:490		0x5d1dce		c3				RET							
  field.go:471		0x5d1dcf		4889842408020000		MOVQ AX, 0x208(SP)					
  field.go:471		0x5d1dd7		48899c2410020000		MOVQ BX, 0x210(SP)					
  field.go:471		0x5d1ddf		48898c2418020000		MOVQ CX, 0x218(SP)					
  field.go:471		0x5d1de7		4088bc2420020000		MOVB DI, 0x220(SP)					
  field.go:471		0x5d1def		e8cca8ebff			CALL runtime.morestack_noctxt.abi0(SB)			
  field.go:471		0x5d1df4		488b842408020000		MOVQ 0x208(SP), AX					
  field.go:471		0x5d1dfc		488b9c2410020000		MOVQ 0x210(SP), BX					
  field.go:471		0x5d1e04		488b8c2418020000		MOVQ 0x218(SP), CX					
  field.go:471		0x5d1e0c		0fb6bc2420020000		MOVZX 0x220(SP), DI					
  field.go:471		0x5d1e14		e9a7fdffff			JMP crypto/internal/fips140/mlkem.samplePolyCBD(SB)	
