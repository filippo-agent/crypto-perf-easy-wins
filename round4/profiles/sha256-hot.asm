TEXT crypto/internal/fips140/sha256.(*Digest).Write(SB) /home/exedev/go-crypto/src/crypto/internal/fips140/sha256/sha256.go
  sha256.go:172		0x638b40		493b6610		CMPQ SP, 0x10(R14)					
  sha256.go:172		0x638b44		0f863c020000		JBE 0x638d86						
  sha256.go:172		0x638b4a		55			PUSHQ BP						
  sha256.go:172		0x638b4b		4889e5			MOVQ SP, BP						
  sha256.go:172		0x638b4e		4883ec48		SUBQ $0x48, SP						
  sha256.go:172		0x638b52		48895c2460		MOVQ BX, 0x60(SP)					
  sha256.go:175		0x638b57		4889442458		MOVQ AX, 0x58(SP)					
  sha256.go:175		0x638b5c		48894c2468		MOVQ CX, 0x68(SP)					
  sha256.go:174		0x638b61		48014868		ADDQ CX, 0x68(AX)					
  sha256.go:175		0x638b65		488b5060		MOVQ 0x60(AX), DX					
  sha256.go:175		0x638b69		4885d2			TESTQ DX, DX						
  sha256.go:175		0x638b6c		0f8ebe000000		JLE 0x638c30						
  sha256.go:176		0x638b72		4883fa40		CMPQ DX, $0x40						
  sha256.go:176		0x638b76		0f87fd010000		JA 0x638d79						
  sha256.go:175		0x638b7c		48897c2470		MOVQ DI, 0x70(SP)					
  sha256.go:175		0x638b81		48895c2460		MOVQ BX, 0x60(SP)					
  sha256.go:176		0x638b86		488d72c0		LEAQ -0x40(DX), SI					
  sha256.go:176		0x638b8a		4989f0			MOVQ SI, R8						
  sha256.go:176		0x638b8d		48f7de			NEGQ SI							
  sha256.go:176		0x638b90		49c1f83f		SARQ $0x3f, R8						
  sha256.go:176		0x638b94		4921d0			ANDQ DX, R8						
  sha256.go:176		0x638b97		4a8d540020		LEAQ 0x20(AX)(R8*1), DX					
  sha256.go:176		0x638b9c		4839f1			CMPQ CX, SI						
  sha256.go:176		0x638b9f		480f4cf1		CMOVL CX, SI						
  sha256.go:176		0x638ba3		4889742428		MOVQ SI, 0x28(SP)					
  sha256.go:176		0x638ba8		4839d3			CMPQ BX, DX						
  sha256.go:176		0x638bab		7424			JE 0x638bd1						
  sha256.go:176		0x638bad		4889d0			MOVQ DX, AX						
  sha256.go:176		0x638bb0		4889f1			MOVQ SI, CX						
  sha256.go:176		0x638bb3		e8889fe5ff		CALL runtime.memmove(SB)				
  sha256.go:177		0x638bb8		488b442458		MOVQ 0x58(SP), AX					
  sha256.go:182		0x638bbd		488b4c2468		MOVQ 0x68(SP), CX					
  sha256.go:182		0x638bc2		488b5c2460		MOVQ 0x60(SP), BX					
  sha256.go:177		0x638bc7		488b742428		MOVQ 0x28(SP), SI					
  sha256.go:182		0x638bcc		488b7c2470		MOVQ 0x70(SP), DI					
  sha256.go:177		0x638bd1		488b5060		MOVQ 0x60(AX), DX					
  sha256.go:177		0x638bd5		4801f2			ADDQ SI, DX						
  sha256.go:177		0x638bd8		48895060		MOVQ DX, 0x60(AX)					
  sha256.go:177		0x638bdc		0f1f4000		NOPL 0(AX)						
  sha256.go:178		0x638be0		4883fa40		CMPQ DX, $0x40						
  sha256.go:178		0x638be4		752f			JNE 0x638c15						
  sha256.go:179		0x638be6		488d5820		LEAQ 0x20(AX), BX					
  sha256.go:179		0x638bea		b940000000		MOVL $0x40, CX						
  sha256.go:179		0x638bef		89cf			MOVL CX, DI						
  sha256.go:179		0x638bf1		e8ea080000		CALL crypto/internal/fips140/sha256.block(SB)		
  sha256.go:180		0x638bf6		488b442458		MOVQ 0x58(SP), AX					
  sha256.go:180		0x638bfb		66440fd67860		MOVQ X15, 0x60(AX)					
  sha256.go:182		0x638c01		488b4c2468		MOVQ 0x68(SP), CX					
  sha256.go:182		0x638c06		488b5c2460		MOVQ 0x60(SP), BX					
  sha256.go:182		0x638c0b		488b742428		MOVQ 0x28(SP), SI					
  sha256.go:182		0x638c10		488b7c2470		MOVQ 0x70(SP), DI					
  sha256.go:182		0x638c15		4829f7			SUBQ SI, DI						
  sha256.go:182		0x638c18		4889fa			MOVQ DI, DX						
  sha256.go:182		0x638c1b		48f7da			NEGQ DX							
  sha256.go:182		0x638c1e		48c1fa3f		SARQ $0x3f, DX						
  sha256.go:182		0x638c22		4821f2			ANDQ SI, DX						
  sha256.go:182		0x638c25		4801d3			ADDQ DX, BX						
  sha256.go:182		0x638c28		4889ca			MOVQ CX, DX						
  sha256.go:182		0x638c2b		4829f2			SUBQ SI, DX						
  sha256.go:182		0x638c2e		eb03			JMP 0x638c33						
  sha256.go:184		0x638c30		4889ca			MOVQ CX, DX						
  sha256.go:184		0x638c33		4883fa40		CMPQ DX, $0x40						
  sha256.go:184		0x638c37		7c0c			JL 0x638c45						
  sha256.go:185		0x638c39		4889d6			MOVQ DX, SI						
  sha256.go:185		0x638c3c		4883e6c0		ANDQ $-0x40, SI						
  sha256.go:186		0x638c40		e98a000000		JMP 0x638ccf						
  sha256.go:194		0x638c45		4885d2			TESTQ DX, DX						
  sha256.go:194		0x638c48		743e			JE 0x638c88						
  sha256.go:195		0x638c4a		488d7020		LEAQ 0x20(AX), SI					
  sha256.go:195		0x638c4e		4883fa40		CMPQ DX, $0x40						
  sha256.go:195		0x638c52		bf40000000		MOVL $0x40, DI						
  sha256.go:195		0x638c57		480f4cfa		CMOVL DX, DI						
  sha256.go:195		0x638c5b		0f1f440000		NOPL 0(AX)(AX*1)					
  sha256.go:195		0x638c60		4839f3			CMPQ BX, SI						
  sha256.go:195		0x638c63		741f			JE 0x638c84						
  sha256.go:195		0x638c65		48897c2438		MOVQ DI, 0x38(SP)					
  sha256.go:195		0x638c6a		4889f0			MOVQ SI, AX						
  sha256.go:195		0x638c6d		4889f9			MOVQ DI, CX						
  sha256.go:195		0x638c70		e8cb9ee5ff		CALL runtime.memmove(SB)				
  sha256.go:195		0x638c75		488b442458		MOVQ 0x58(SP), AX					
  sha256.go:197		0x638c7a		488b4c2468		MOVQ 0x68(SP), CX					
  sha256.go:195		0x638c7f		488b7c2438		MOVQ 0x38(SP), DI					
  sha256.go:195		0x638c84		48897860		MOVQ DI, 0x60(AX)					
  sha256.go:197		0x638c88		4889c8			MOVQ CX, AX						
  sha256.go:197		0x638c8b		31db			XORL BX, BX						
  sha256.go:197		0x638c8d		31c9			XORL CX, CX						
  sha256.go:197		0x638c8f		c9			LEAVE							
  sha256.go:197		0x638c90		c3			RET							
  sha256.go:188		0x638c91		488b7c2438		MOVQ 0x38(SP), DI					
  sha256.go:188		0x638c96		4881c70000ffff		ADDQ $-0x10000, DI					
  sha256.go:188		0x638c9d		4989f8			MOVQ DI, R8						
  sha256.go:188		0x638ca0		49f7d8			NEGQ R8							
  sha256.go:188		0x638ca3		49c1f83f		SARQ $0x3f, R8						
  sha256.go:188		0x638ca7		4181e000000100		ANDL $0x10000, R8					
  sha256.go:188		0x638cae		4c8b4c2440		MOVQ 0x40(SP), R9					
  sha256.go:188		0x638cb3		4b8d1c01		LEAQ 0(R9)(R8*1), BX					
  sha256.go:188		0x638cb7		4881c20000ffff		ADDQ $-0x10000, DX					
  sha256.go:189		0x638cbe		488b742420		MOVQ 0x20(SP), SI					
  sha256.go:189		0x638cc3		4881c60000ffff		ADDQ $-0x10000, SI					
  sha256.go:187		0x638cca		488b442458		MOVQ 0x58(SP), AX					
  sha256.go:186		0x638ccf		4889742420		MOVQ SI, 0x20(SP)					
  sha256.go:186		0x638cd4		48897c2438		MOVQ DI, 0x38(SP)					
  sha256.go:186		0x638cd9		4889542430		MOVQ DX, 0x30(SP)					
  sha256.go:186		0x638cde		48895c2440		MOVQ BX, 0x40(SP)					
  sha256.go:186		0x638ce3		4881fe00000100		CMPQ SI, $0x10000					
  sha256.go:186		0x638cea		7e23			JLE 0x638d0f						
  sha256.go:187		0x638cec		4881ff00000100		CMPQ DI, $0x10000					
  sha256.go:187		0x638cf3		727a			JB 0x638d6f						
  sha256.go:187		0x638cf5		b900000100		MOVL $0x10000, CX					
  sha256.go:187		0x638cfa		e8e1070000		CALL crypto/internal/fips140/sha256.block(SB)		
  sha256.go:188		0x638cff		488b542430		MOVQ 0x30(SP), DX					
  sha256.go:188		0x638d04		4881fa00000100		CMPQ DX, $0x10000					
  sha256.go:188		0x638d0b		7384			JAE 0x638c91						
  sha256.go:188		0x638d0d		eb56			JMP 0x638d65						
  sha256.go:191		0x638d0f		4839f7			CMPQ DI, SI						
  sha256.go:191		0x638d12		7249			JB 0x638d5d						
  sha256.go:191		0x638d14		4889f1			MOVQ SI, CX						
  sha256.go:191		0x638d17		e8c4070000		CALL crypto/internal/fips140/sha256.block(SB)		
  sha256.go:192		0x638d1c		488b542430		MOVQ 0x30(SP), DX					
  sha256.go:192		0x638d21		488b742420		MOVQ 0x20(SP), SI					
  sha256.go:192		0x638d26		4839f2			CMPQ DX, SI						
  sha256.go:192		0x638d29		722d			JB 0x638d58						
  sha256.go:192		0x638d2b		488b7c2438		MOVQ 0x38(SP), DI					
  sha256.go:192		0x638d30		4989f0			MOVQ SI, R8						
  sha256.go:192		0x638d33		4829fe			SUBQ DI, SI						
  sha256.go:192		0x638d36		48c1fe3f		SARQ $0x3f, SI						
  sha256.go:192		0x638d3a		4c21c6			ANDQ R8, SI						
  sha256.go:192		0x638d3d		4c29c2			SUBQ R8, DX						
  sha256.go:192		0x638d40		488b7c2440		MOVQ 0x40(SP), DI					
  sha256.go:192		0x638d45		488d1c37		LEAQ 0(DI)(SI*1), BX					
  sha256.go:195		0x638d49		488b442458		MOVQ 0x58(SP), AX					
  sha256.go:197		0x638d4e		488b4c2468		MOVQ 0x68(SP), CX					
  sha256.go:192		0x638d53		e9edfeffff		JMP 0x638c45						
  sha256.go:192		0x638d58		e8439ae5ff		CALL runtime.panicBounds(SB)				
  sha256.go:191		0x638d5d		0f1f00			NOPL 0(AX)						
  sha256.go:191		0x638d60		e83b9ae5ff		CALL runtime.panicBounds(SB)				
  sha256.go:188		0x638d65		b800000100		MOVL $0x10000, AX					
  sha256.go:188		0x638d6a		e8319ae5ff		CALL runtime.panicBounds(SB)				
  sha256.go:187		0x638d6f		b800000100		MOVL $0x10000, AX					
  sha256.go:187		0x638d74		e8279ae5ff		CALL runtime.panicBounds(SB)				
  sha256.go:176		0x638d79		b840000000		MOVL $0x40, AX						
  sha256.go:176		0x638d7e		6690			NOPW							
  sha256.go:176		0x638d80		e81b9ae5ff		CALL runtime.panicBounds(SB)				
  sha256.go:176		0x638d85		90			NOPL							
  sha256.go:172		0x638d86		4889442408		MOVQ AX, 0x8(SP)					
  sha256.go:172		0x638d8b		48895c2410		MOVQ BX, 0x10(SP)					
  sha256.go:172		0x638d90		48894c2418		MOVQ CX, 0x18(SP)					
  sha256.go:172		0x638d95		48897c2420		MOVQ DI, 0x20(SP)					
  sha256.go:172		0x638d9a		e8c17de5ff		CALL runtime.morestack_noctxt.abi0(SB)			
  sha256.go:172		0x638d9f		488b442408		MOVQ 0x8(SP), AX					
  sha256.go:172		0x638da4		488b5c2410		MOVQ 0x10(SP), BX					
  sha256.go:172		0x638da9		488b4c2418		MOVQ 0x18(SP), CX					
  sha256.go:172		0x638dae		488b7c2420		MOVQ 0x20(SP), DI					
  sha256.go:172		0x638db3		e988fdffff		JMP crypto/internal/fips140/sha256.(*Digest).Write(SB)	

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
  sha256.go:211		0x638fe4		0f8652010000		JBE 0x63913c							
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
  sha256.go:217		0x63904a		0f87e1000000		JA 0x639131							
  sha256.go:226		0x639050		4939d0			CMPQ R8, DX							
  sha256.go:226		0x639053		0f87d3000000		JA 0x63912c							
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
  sha256.go:229		0x639093		7577			JNE 0x63910c							
  sha256.go:233		0x639095		488d442478		LEAQ 0x78(SP), AX						
  sha256.go:233		0x63909a		440f1138		MOVUPS X15, 0(AX)						
  sha256.go:233		0x63909e		440f117810		MOVUPS X15, 0x10(AX)						
  sha256.go:235		0x6390a3		8b02			MOVL 0(DX), AX							
  byteorder.go:108	0x6390a5		0fc8			BSWAP AX							
  byteorder.go:30	0x6390a7		90			NOPL								
  byteorder.go:105	0x6390a8		89442478		MOVL AX, 0x78(SP)						
  sha256.go:236		0x6390ac		8b4204			MOVL 0x4(DX), AX						
  byteorder.go:108	0x6390af		0fc8			BSWAP AX							
  byteorder.go:30	0x6390b1		90			NOPL								
  byteorder.go:105	0x6390b2		8944247c		MOVL AX, 0x7c(SP)						
  sha256.go:237		0x6390b6		8b4208			MOVL 0x8(DX), AX						
  byteorder.go:108	0x6390b9		0fc8			BSWAP AX							
  byteorder.go:30	0x6390bb		90			NOPL								
  byteorder.go:105	0x6390bc		89842480000000		MOVL AX, 0x80(SP)						
  sha256.go:238		0x6390c3		8b420c			MOVL 0xc(DX), AX						
  byteorder.go:108	0x6390c6		0fc8			BSWAP AX							
  byteorder.go:30	0x6390c8		90			NOPL								
  byteorder.go:105	0x6390c9		89842484000000		MOVL AX, 0x84(SP)						
  sha256.go:239		0x6390d0		8b4210			MOVL 0x10(DX), AX						
  byteorder.go:108	0x6390d3		0fc8			BSWAP AX							
  byteorder.go:30	0x6390d5		90			NOPL								
  byteorder.go:105	0x6390d6		89842488000000		MOVL AX, 0x88(SP)						
  sha256.go:240		0x6390dd		8b4214			MOVL 0x14(DX), AX						
  byteorder.go:108	0x6390e0		0fc8			BSWAP AX							
  byteorder.go:30	0x6390e2		90			NOPL								
  byteorder.go:105	0x6390e3		8984248c000000		MOVL AX, 0x8c(SP)						
  sha256.go:241		0x6390ea		8b4218			MOVL 0x18(DX), AX						
  byteorder.go:108	0x6390ed		0fc8			BSWAP AX							
  byteorder.go:30	0x6390ef		90			NOPL								
  byteorder.go:105	0x6390f0		89842490000000		MOVL AX, 0x90(SP)						
  sha256.go:242		0x6390f7		807a7000		CMPB 0x70(DX), $0x0						
  sha256.go:242		0x6390fb		750d			JNE 0x63910a							
  sha256.go:243		0x6390fd		8b421c			MOVL 0x1c(DX), AX						
  byteorder.go:108	0x639100		0fc8			BSWAP AX							
  byteorder.go:30	0x639102		90			NOPL								
  byteorder.go:105	0x639103		89842494000000		MOVL AX, 0x94(SP)						
  sha256.go:246		0x63910a		c9			LEAVE								
  sha256.go:246		0x63910b		c3			RET								
  sha256.go:230		0x63910c		488d0565470100		LEAQ 0x14765(IP), AX						
  sha256.go:230		0x639113		bb09000000		MOVL $0x9, BX							
  sha256.go:230		0x639118		e84300e5ff		CALL runtime.convTstring(SB)					
  sha256.go:230		0x63911d		4889c3			MOVQ AX, BX							
  sha256.go:230		0x639120		488d05411d2600		LEAQ 0x261d41(IP), AX						
  sha256.go:230		0x639127		e87420e5ff		CALL runtime.gopanic(SB)					
  sha256.go:226		0x63912c		e86f96e5ff		CALL runtime.panicBounds(SB)					
  sha256.go:225		0x639131		b848000000		MOVL $0x48, AX							
  sha256.go:225		0x639136		e86596e5ff		CALL runtime.panicBounds(SB)					
  sha256.go:225		0x63913b		90			NOPL								
  sha256.go:211		0x63913c		4889442428		MOVQ AX, 0x28(SP)						
  sha256.go:211		0x639141		e81a7ae5ff		CALL runtime.morestack_noctxt.abi0(SB)				
  sha256.go:211		0x639146		488b442428		MOVQ 0x28(SP), AX						
  sha256.go:211		0x63914b		e990feffff		JMP crypto/internal/fips140/sha256.(*Digest).checkSum(SB)	
