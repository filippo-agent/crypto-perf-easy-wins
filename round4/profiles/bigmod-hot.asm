TEXT crypto/internal/fips140/bigmod.(*Nat).shiftIn(SB) /home/exedev/go-crypto/src/crypto/internal/fips140/bigmod/nat.go
  nat.go:618		0x664f80		4c8da42440ffffff		LEAQ 0xffffff40(SP), R12				
  nat.go:618		0x664f88		4d3b6610			CMPQ R12, 0x10(R14)					
  nat.go:618		0x664f8c		0f864d020000			JBE 0x6651df						
  nat.go:618		0x664f92		55				PUSHQ BP						
  nat.go:618		0x664f93		4889e5				MOVQ SP, BP						
  nat.go:618		0x664f96		4881ec38010000			SUBQ $0x138, SP						
  nat.go:95		0x664f9d		4889842448010000		MOVQ AX, 0x148(SP)					
  nat.go:95		0x664fa5		48899c2450010000		MOVQ BX, 0x150(SP)					
  nat.go:95		0x664fad		48898c2458010000		MOVQ CX, 0x158(SP)					
  nat.go:619		0x664fb5		90				NOPL							
  nat.go:72		0x664fb6		488d542420			LEAQ 0x20(SP), DX					
  nat.go:72		0x664fbb		be04000000			MOVL $0x4, SI						
  nat.go:72		0x664fc0		440f113a			MOVUPS X15, 0(DX)					
  nat.go:72		0x664fc4		440f117a10			MOVUPS X15, 0x10(DX)					
  nat.go:72		0x664fc9		440f117a20			MOVUPS X15, 0x20(DX)					
  nat.go:72		0x664fce		440f117a30			MOVUPS X15, 0x30(DX)					
  nat.go:72		0x664fd3		4883c240			ADDQ $0x40, DX						
  nat.go:72		0x664fd7		ffce				DECL SI							
  nat.go:72		0x664fd9		75e5				JNE 0x664fc0						
  nat.go:73		0x664fdb		66440fd6bc2428010000		MOVQ X15, 0x128(SP)					
  nat.go:73		0x664fe5		48c784243001000020000000	MOVQ $0x20, 0x130(SP)					
  nat.go:73		0x664ff1		488d542420			LEAQ 0x20(SP), DX					
  nat.go:73		0x664ff6		4889942420010000		MOVQ DX, 0x120(SP)					
  nat.go:696		0x664ffe		488b31				MOVQ 0(CX), SI						
  nat.go:696		0x665001		488b7608			MOVQ 0x8(SI), SI					
  nat.go:696		0x665005		4889742418			MOVQ SI, 0x18(SP)					
  nat.go:619		0x66500a		90				NOPL							
  nat.go:95		0x66500b		4883fe20			CMPQ SI, $0x20						
  nat.go:95		0x66500f		7f65				JG 0x665076						
  nat.go:100		0x665011		4885f6				TESTQ SI, SI						
  nat.go:100		0x665014		bf00000000			MOVL $0x0, DI						
  nat.go:100		0x665019		4989f0				MOVQ SI, R8						
  nat.go:100		0x66501c		480f4cf7			CMOVL DI, SI						
  nat.go:100		0x665020		4883fe20			CMPQ SI, $0x20						
  nat.go:100		0x665024		0f87aa010000			JA 0x6651d4						
  nat.go:100		0x66502a		4885f6				TESTQ SI, SI						
  nat.go:100		0x66502d		742c				JE 0x66505b						
  nat.go:100		0x66502f		48c1e603			SHLQ $0x3, SI						
  nat.go:100		0x665033		4889d0				MOVQ DX, AX						
  nat.go:100		0x665036		4889f3				MOVQ SI, BX						
  nat.go:100		0x665039		e822bde2ff			CALL runtime.memclrNoHeapPointers(SB)			
  nat.go:623		0x66503e		488b842448010000		MOVQ 0x148(SP), AX					
  nat.go:622		0x665046		488b8c2458010000		MOVQ 0x158(SP), CX					
  nat.go:636		0x66504e		488b9c2450010000		MOVQ 0x150(SP), BX					
  nat.go:101		0x665056		4c8b442418			MOVQ 0x18(SP), R8					
  nat.go:101		0x66505b		488b942430010000		MOVQ 0x130(SP), DX					
  nat.go:101		0x665063		4c39c2				CMPQ DX, R8						
  nat.go:101		0x665066		0f8263010000			JB 0x6651cf						
  nat.go:101		0x66506c		4c89842428010000		MOVQ R8, 0x128(SP)					
  nat.go:696		0x665074		eb47				JMP 0x6650bd						
  nat.go:96		0x665076		488d05c3472f00			LEAQ 0x2f47c3(IP), AX					
  nat.go:96		0x66507d		4889f3				MOVQ SI, BX						
  nat.go:96		0x665080		4889d9				MOVQ BX, CX						
  nat.go:96		0x665083		e8d86ae2ff			CALL runtime.makeslice(SB)				
  nat.go:96		0x665088		488b542418			MOVQ 0x18(SP), DX					
  nat.go:96		0x66508d		4889942428010000		MOVQ DX, 0x128(SP)					
  nat.go:96		0x665095		4889942430010000		MOVQ DX, 0x130(SP)					
  nat.go:96		0x66509d		4889842420010000		MOVQ AX, 0x120(SP)					
  nat.go:623		0x6650a5		488b842448010000		MOVQ 0x148(SP), AX					
  nat.go:622		0x6650ad		488b8c2458010000		MOVQ 0x158(SP), CX					
  nat.go:636		0x6650b5		488b9c2450010000		MOVQ 0x150(SP), BX					
  nat.go:622		0x6650bd		488b11				MOVQ 0(CX), DX						
  nat.go:622		0x6650c0		488b7208			MOVQ 0x8(DX), SI					
  nat.go:623		0x6650c4		488b7810			MOVQ 0x10(AX), DI					
  nat.go:623		0x6650c8		4839f7				CMPQ DI, SI						
  nat.go:623		0x6650cb		0f82f9000000			JB 0x6651ca						
  nat.go:624		0x6650d1		488bbc2430010000		MOVQ 0x130(SP), DI					
  nat.go:624		0x6650d9		0f1f8000000000			NOPL 0(AX)						
  nat.go:624		0x6650e0		4839f7				CMPQ DI, SI						
  nat.go:624		0x6650e3		0f82dc000000			JB 0x6651c5						
  nat.go:622		0x6650e9		488b12				MOVQ 0(DX), DX						
  nat.go:623		0x6650ec		488b38				MOVQ 0(AX), DI						
  nat.go:624		0x6650ef		4c8b842420010000		MOVQ 0x120(SP), R8					
  nat.go:635		0x6650f7		4531c9				XORL R9, R9						
  nat.go:635		0x6650fa		41ba3f000000			MOVL $0x3f, R10						
  nat.go:635		0x665100		eb11				JMP 0x665113						
  nat.go:35		0x665102		4983f401			XORQ $0x1, R12						
  nat.go:647		0x665106		4909dc				ORQ BX, R12						
  nat.go:635		0x665109		4c8d51ff			LEAQ -0x1(CX), R10					
  nat.go:636		0x66510d		4c89db				MOVQ R11, BX						
  nat.go:635		0x665110		4d89e1				MOVQ R12, R9						
  nat.go:635		0x665113		4d85d2				TESTQ R10, R10						
  nat.go:635		0x665116		7c62				JL 0x66517a						
  nat.go:636		0x665118		4c89d1				MOVQ R10, CX						
  nat.go:636		0x66511b		4989db				MOVQ BX, R11						
  nat.go:636		0x66511e		48d3eb				SHRQ CL, BX						
  nat.go:636		0x665121		83e301				ANDL $0x1, BX						
  nat.go:638		0x665124		90				NOPL							
  nat.go:41		0x665125		49f7d9				NEGQ R9							
  nat.go:639		0x665128		4531e4				XORL R12, R12						
  nat.go:639		0x66512b		4531ed				XORL R13, R13						
  nat.go:639		0x66512e		eb43				JMP 0x665173						
  nat.go:640		0x665130		4e8b3cef			MOVQ 0(DI)(R13*8), R15					
  nat.go:640		0x665134		4b8b04e8			MOVQ 0(R8)(R13*8), AX					
  nat.go:640		0x665138		4c31f8				XORQ R15, AX						
  nat.go:640		0x66513b		4c21c8				ANDQ R9, AX						
  nat.go:640		0x66513e		4931c7				XORQ AX, R15						
  nat.go:641		0x665141		f7db				NEGL BX							
  nat.go:641		0x665143		4d11ff				ADCQ R15, R15						
  nat.go:641		0x665146		4e893cef			MOVQ R15, 0(DI)(R13*8)					
  nat.go:641		0x66514a		0f92c0				SETB AL							
  nat.go:642		0x66514d		4a8b1cea			MOVQ 0(DX)(R13*8), BX					
  nat.go:641		0x665151		0fb6c0				MOVZX AL, AX						
  nat.go:642		0x665154		41f7dc				NEGL R12						
  nat.go:642		0x665157		4919df				SBBQ BX, R15						
  nat.go:642		0x66515a		4f893ce8			MOVQ R15, 0(R8)(R13*8)					
  nat.go:642		0x66515e		410f92c7			SETB R15						
  nat.go:642		0x665162		450fb6e7			MOVZX R15, R12						
  nat.go:639		0x665166		49ffc5				INCQ R13						
  nat.go:639		0x665169		89c3				MOVL AX, BX						
  nat.go:362		0x66516b		488b842448010000		MOVQ 0x148(SP), AX					
  nat.go:639		0x665173		4939f5				CMPQ R13, SI						
  nat.go:639		0x665176		7cb8				JL 0x665130						
  nat.go:639		0x665178		eb88				JMP 0x665102						
  nat.go:362		0x66517a		488b4808			MOVQ 0x8(AX), CX					
  nat.go:364		0x66517e		488b942430010000		MOVQ 0x130(SP), DX					
  nat.go:364		0x665186		4839ca				CMPQ DX, CX						
  nat.go:364		0x665189		7232				JB 0x6651bd						
  nat.go:362		0x66518b		488b10				MOVQ 0(AX), DX						
  nat.go:364		0x66518e		488b9c2420010000		MOVQ 0x120(SP), BX					
  nat.go:366		0x665196		90				NOPL							
  nat.go:41		0x665197		49f7d9				NEGQ R9							
  nat.go:367		0x66519a		31f6				XORL SI, SI						
  nat.go:367		0x66519c		eb18				JMP 0x6651b6						
  nat.go:368		0x66519e		488b3cf2			MOVQ 0(DX)(SI*8), DI					
  nat.go:368		0x6651a2		4c8b04f3			MOVQ 0(BX)(SI*8), R8					
  nat.go:368		0x6651a6		4931f8				XORQ DI, R8						
  nat.go:368		0x6651a9		4d21c8				ANDQ R9, R8						
  nat.go:368		0x6651ac		4c31c7				XORQ R8, DI						
  nat.go:368		0x6651af		48893cf2			MOVQ DI, 0(DX)(SI*8)					
  nat.go:367		0x6651b3		48ffc6				INCQ SI							
  nat.go:367		0x6651b6		4839ce				CMPQ SI, CX						
  nat.go:367		0x6651b9		7ce3				JL 0x66519e						
  nat.go:649		0x6651bb		c9				LEAVE							
  nat.go:649		0x6651bc		c3				RET							
  nat.go:364		0x6651bd		0f1f00				NOPL 0(AX)						
  nat.go:364		0x6651c0		e8fbbae2ff			CALL runtime.panicBounds(SB)				
  nat.go:624		0x6651c5		e8f6bae2ff			CALL runtime.panicBounds(SB)				
  nat.go:623		0x6651ca		e8f1bae2ff			CALL runtime.panicBounds(SB)				
  nat.go:101		0x6651cf		e8ecbae2ff			CALL runtime.panicBounds(SB)				
  nat.go:100		0x6651d4		b820000000			MOVL $0x20, AX						
  nat.go:100		0x6651d9		e8e2bae2ff			CALL runtime.panicBounds(SB)				
  nat.go:100		0x6651de		90				NOPL							
  nat.go:618		0x6651df		4889442408			MOVQ AX, 0x8(SP)					
  nat.go:618		0x6651e4		48895c2410			MOVQ BX, 0x10(SP)					
  nat.go:618		0x6651e9		48894c2418			MOVQ CX, 0x18(SP)					
  nat.go:618		0x6651ee		e80d9de2ff			CALL runtime.morestack_noctxt.abi0(SB)			
  nat.go:618		0x6651f3		488b442408			MOVQ 0x8(SP), AX					
  nat.go:618		0x6651f8		488b5c2410			MOVQ 0x10(SP), BX					
  nat.go:618		0x6651fd		488b4c2418			MOVQ 0x18(SP), CX					
  nat.go:618		0x665202		e979fdffff			JMP crypto/internal/fips140/bigmod.(*Nat).shiftIn(SB)	

TEXT crypto/internal/fips140/bigmod.(*Nat).montgomeryMul(SB) /home/exedev/go-crypto/src/crypto/internal/fips140/bigmod/nat.go
  nat.go:790		0x665ce0		4c8da42438f9ffff	LEAQ 0xfffff938(SP), R12						
  nat.go:790		0x665ce8		4d3b6610		CMPQ R12, 0x10(R14)							
  nat.go:790		0x665cec		0f86590a0000		JBE 0x66674b								
  nat.go:790		0x665cf2		55			PUSHQ BP								
  nat.go:790		0x665cf3		4889e5			MOVQ SP, BP								
  nat.go:790		0x665cf6		4881ec40070000		SUBQ $0x740, SP								
  nat.go:791		0x665cfd		488b17			MOVQ 0(DI), DX								
  nat.go:791		0x665d00		488b7208		MOVQ 0x8(DX), SI							
  nat.go:793		0x665d04		4c8b4310		MOVQ 0x10(BX), R8							
  nat.go:793		0x665d08		4939f0			CMPQ R8, SI								
  nat.go:793		0x665d0b		0f82340a0000		JB 0x666745								
  nat.go:794		0x665d11		4c8b4110		MOVQ 0x10(CX), R8							
  nat.go:794		0x665d15		4939f0			CMPQ R8, SI								
  nat.go:794		0x665d18		0f82200a0000		JB 0x66673e								
  nat.go:792		0x665d1e		4889842450070000	MOVQ AX, 0x750(SP)							
  nat.go:792		0x665d26		4889bc2468070000	MOVQ DI, 0x768(SP)							
  nat.go:792		0x665d2e		488b12			MOVQ 0(DX), DX								
  nat.go:792		0x665d31		4889942438070000	MOVQ DX, 0x738(SP)							
  nat.go:793		0x665d39		4c8b03			MOVQ 0(BX), R8								
  nat.go:793		0x665d3c		4c89842430070000	MOVQ R8, 0x730(SP)							
  nat.go:794		0x665d44		4c8b09			MOVQ 0(CX), R9								
  nat.go:794		0x665d47		4c898c2428070000	MOVQ R9, 0x728(SP)							
  nat.go:862		0x665d4f		4883fe10		CMPQ SI, $0x10								
  nat.go:862		0x665d53		0f8435010000		JE 0x665e8e								
  nat.go:862		0x665d59		0f1f8000000000		NOPL 0(AX)								
  nat.go:876		0x665d60		4883fe18		CMPQ SI, $0x18								
  nat.go:876		0x665d64		0f84ee000000		JE 0x665e58								
  nat.go:890		0x665d6a		4883fe20		CMPQ SI, $0x20								
  nat.go:890		0x665d6e		0f84b1000000		JE 0x665e25								
  nat.go:791		0x665d74		4889742420		MOVQ SI, 0x20(SP)							
  nat.go:799		0x665d79		4c8d942418050000	LEAQ 0x518(SP), R10							
  nat.go:799		0x665d81		41bb08000000		MOVL $0x8, R11								
  nat.go:799		0x665d87		450f113a		MOVUPS X15, 0(R10)							
  nat.go:799		0x665d8b		450f117a10		MOVUPS X15, 0x10(R10)							
  nat.go:799		0x665d90		450f117a20		MOVUPS X15, 0x20(R10)							
  nat.go:799		0x665d95		450f117a30		MOVUPS X15, 0x30(R10)							
  nat.go:799		0x665d9a		4983c240		ADDQ $0x40, R10								
  nat.go:799		0x665d9e		6690			NOPW									
  nat.go:799		0x665da0		41ffcb			DECL R11								
  nat.go:799		0x665da3		75e2			JNE 0x665d87								
  nat.go:800		0x665da5		488d0c36		LEAQ 0(SI)(SI*1), CX							
  nat.go:800		0x665da9		48894c2478		MOVQ CX, 0x78(SP)							
  nat.go:800		0x665dae		4883f940		CMPQ CX, $0x40								
  nat.go:800		0x665db2		7f0f			JG 0x665dc3								
  nat.go:800		0x665db4		bb40000000		MOVL $0x40, BX								
  nat.go:799		0x665db9		4c8d942418050000	LEAQ 0x518(SP), R10							
  nat.go:800		0x665dc1		eb46			JMP 0x665e09								
  nat.go:801		0x665dc3		488d05763a2f00		LEAQ 0x2f3a76(IP), AX							
  nat.go:801		0x665dca		31db			XORL BX, BX								
  nat.go:801		0x665dcc		e88f5de2ff		CALL runtime.makeslice(SB)						
  nat.go:803		0x665dd1		488b4c2478		MOVQ 0x78(SP), CX							
  nat.go:916		0x665dd6		488b942438070000	MOVQ 0x738(SP), DX							
  nat.go:810		0x665dde		488b742420		MOVQ 0x20(SP), SI							
  nat.go:836		0x665de3		488bbc2468070000	MOVQ 0x768(SP), DI							
  nat.go:916		0x665deb		4c8b842430070000	MOVQ 0x730(SP), R8							
  nat.go:830		0x665df3		4c8b8c2428070000	MOVQ 0x728(SP), R9							
  nat.go:803		0x665dfb		4889cb			MOVQ CX, BX								
  nat.go:803		0x665dfe		4989c2			MOVQ AX, R10								
  nat.go:95		0x665e01		488b842450070000	MOVQ 0x750(SP), AX							
  nat.go:803		0x665e09		4839cb			CMPQ BX, CX								
  nat.go:803		0x665e0c		0f8227090000		JB 0x666739								
  nat.go:803		0x665e12		48899c2480000000	MOVQ BX, 0x80(SP)							
  nat.go:810		0x665e1a		4531db			XORL R11, R11								
  nat.go:810		0x665e1d		4531e4			XORL R12, R12								
  nat.go:810		0x665e20		e9cf060000		JMP 0x6664f4								
  nat.go:892		0x665e25		488db42498000000	LEAQ 0x98(SP), SI							
  nat.go:892		0x665e2d		41ba08000000		MOVL $0x8, R10								
  nat.go:892		0x665e33		440f113e		MOVUPS X15, 0(SI)							
  nat.go:892		0x665e37		440f117e10		MOVUPS X15, 0x10(SI)							
  nat.go:892		0x665e3c		440f117e20		MOVUPS X15, 0x20(SI)							
  nat.go:892		0x665e41		440f117e30		MOVUPS X15, 0x30(SI)							
  nat.go:892		0x665e46		4883c640		ADDQ $0x40, SI								
  nat.go:892		0x665e4a		41ffca			DECL R10								
  nat.go:892		0x665e4d		75e4			JNE 0x665e33								
  nat.go:892		0x665e4f		31c9			XORL CX, CX								
  nat.go:892		0x665e51		31db			XORL BX, BX								
  nat.go:894		0x665e53		e948050000		JMP 0x6663a0								
  nat.go:878		0x665e58		488db42498020000	LEAQ 0x298(SP), SI							
  nat.go:878		0x665e60		41ba06000000		MOVL $0x6, R10								
  nat.go:878		0x665e66		440f113e		MOVUPS X15, 0(SI)							
  nat.go:878		0x665e6a		440f117e10		MOVUPS X15, 0x10(SI)							
  nat.go:878		0x665e6f		440f117e20		MOVUPS X15, 0x20(SI)							
  nat.go:878		0x665e74		440f117e30		MOVUPS X15, 0x30(SI)							
  nat.go:878		0x665e79		4883c640		ADDQ $0x40, SI								
  nat.go:878		0x665e7d		0f1f00			NOPL 0(AX)								
  nat.go:878		0x665e80		41ffca			DECL R10								
  nat.go:878		0x665e83		75e1			JNE 0x665e66								
  nat.go:878		0x665e85		31c9			XORL CX, CX								
  nat.go:878		0x665e87		31db			XORL BX, BX								
  nat.go:880		0x665e89		e922030000		JMP 0x6661b0								
  nat.go:864		0x665e8e		488db42418040000	LEAQ 0x418(SP), SI							
  nat.go:864		0x665e96		41ba04000000		MOVL $0x4, R10								
  nat.go:864		0x665e9c		440f113e		MOVUPS X15, 0(SI)							
  nat.go:864		0x665ea0		440f117e10		MOVUPS X15, 0x10(SI)							
  nat.go:864		0x665ea5		440f117e20		MOVUPS X15, 0x20(SI)							
  nat.go:864		0x665eaa		440f117e30		MOVUPS X15, 0x30(SI)							
  nat.go:864		0x665eaf		4883c640		ADDQ $0x40, SI								
  nat.go:864		0x665eb3		41ffca			DECL R10								
  nat.go:864		0x665eb6		75e4			JNE 0x665e9c								
  nat.go:864		0x665eb8		31c9			XORL CX, CX								
  nat.go:864		0x665eba		31db			XORL BX, BX								
  nat.go:864		0x665ebc		0f1f4000		NOPL 0(AX)								
  nat.go:866		0x665ec0		e9e6000000		JMP 0x665fab								
  nat.go:866		0x665ec5		48894c2438		MOVQ CX, 0x38(SP)							
  nat.go:867		0x665eca		498b04c9		MOVQ 0(R9)(CX*8), AX							
  nat.go:868		0x665ece		488d8ccc18040000	LEAQ 0x418(SP)(CX*8), CX						
  nat.go:868		0x665ed6		48898c2420070000	MOVQ CX, 0x720(SP)							
  nat.go:868		0x665ede		48890c24		MOVQ CX, 0(SP)								
  nat.go:868		0x665ee2		4c89442408		MOVQ R8, 0x8(SP)							
  nat.go:868		0x665ee7		4889442410		MOVQ AX, 0x10(SP)							
  nat.go:868		0x665eec		e84f3c0000		CALL crypto/internal/fips140/bigmod.addMulVVW1024.abi0(SB)		
  nat.go:868		0x665ef1		450f57ff		XORPS X15, X15								
  nat.go:868		0x665ef5		803d3400390001		CMPB runtime.x86HasAVX(SB), $0x1					
  nat.go:868		0x665efc		7505			JNE 0x665f03								
  nat.go:868		0x665efe		c4410057ff		VXORPS X15, X15, X15							
  nat.go:868		0x665f03		644c8b3425f8ffffff	MOVQ FS:0xfffffff8, R14							
  nat.go:868		0x665f0c		488b442418		MOVQ 0x18(SP), AX							
  nat.go:868		0x665f11		4889442450		MOVQ AX, 0x50(SP)							
  nat.go:869		0x665f16		488b442438		MOVQ 0x38(SP), AX							
  nat.go:869		0x665f1b		488b84c418040000	MOVQ 0x418(SP)(AX*8), AX						
  nat.go:869		0x665f23		488b8c2468070000	MOVQ 0x768(SP), CX							
  nat.go:869		0x665f2b		488b4910		MOVQ 0x10(CX), CX							
  nat.go:870		0x665f2f		488b942420070000	MOVQ 0x720(SP), DX							
  nat.go:870		0x665f37		48891424		MOVQ DX, 0(SP)								
  nat.go:870		0x665f3b		488b942438070000	MOVQ 0x738(SP), DX							
  nat.go:870		0x665f43		4889542408		MOVQ DX, 0x8(SP)							
  nat.go:869		0x665f48		480fafc1		IMULQ CX, AX								
  nat.go:870		0x665f4c		4889442410		MOVQ AX, 0x10(SP)							
  nat.go:870		0x665f51		e8ea3b0000		CALL crypto/internal/fips140/bigmod.addMulVVW1024.abi0(SB)		
  nat.go:870		0x665f56		450f57ff		XORPS X15, X15								
  nat.go:870		0x665f5a		803dcfff380001		CMPB runtime.x86HasAVX(SB), $0x1					
  nat.go:870		0x665f61		7505			JNE 0x665f68								
  nat.go:870		0x665f63		c4410057ff		VXORPS X15, X15, X15							
  nat.go:870		0x665f68		644c8b3425f8ffffff	MOVQ FS:0xfffffff8, R14							
  nat.go:870		0x665f71		488b442418		MOVQ 0x18(SP), AX							
  nat.go:871		0x665f76		488b4c2468		MOVQ 0x68(SP), CX							
  nat.go:871		0x665f7b		f7d9			NEGL CX									
  nat.go:871		0x665f7d		488b4c2450		MOVQ 0x50(SP), CX							
  nat.go:871		0x665f82		4811c8			ADCQ CX, AX								
  nat.go:871		0x665f85		488b4c2438		MOVQ 0x38(SP), CX							
  nat.go:871		0x665f8a		488984cc98040000	MOVQ AX, 0x498(SP)(CX*8)						
  nat.go:871		0x665f92		0f92c0			SETB AL									
  nat.go:871		0x665f95		0fb6d8			MOVZX AL, BX								
  nat.go:866		0x665f98		48ffc1			INCQ CX									
  nat.go:868		0x665f9b		4c8b842430070000	MOVQ 0x730(SP), R8							
  nat.go:867		0x665fa3		4c8b8c2428070000	MOVQ 0x728(SP), R9							
  nat.go:866		0x665fab		48895c2468		MOVQ BX, 0x68(SP)							
  nat.go:866		0x665fb0		4883f910		CMPQ CX, $0x10								
  nat.go:866		0x665fb4		0f8c0bffffff		JL 0x665ec5								
  nat.go:95		0x665fba		488b942450070000	MOVQ 0x750(SP), DX							
  nat.go:95		0x665fc2		488b7210		MOVQ 0x10(DX), SI							
  nat.go:95		0x665fc6		4883fe10		CMPQ SI, $0x10								
  nat.go:95		0x665fca		7c4c			JL 0x666018								
  nat.go:95		0x665fcc		488b4a08		MOVQ 0x8(DX), CX							
  nat.go:100		0x665fd0		4883f910		CMPQ CX, $0x10								
  nat.go:100		0x665fd4		bf10000000		MOVL $0x10, DI								
  nat.go:100		0x665fd9		480f4ff9		CMOVG CX, DI								
  nat.go:100		0x665fdd		0f1f00			NOPL 0(AX)								
  nat.go:100		0x665fe0		4839fe			CMPQ SI, DI								
  nat.go:100		0x665fe3		0f82dc000000		JB 0x6660c5								
  nat.go:95		0x665fe9		488b02			MOVQ 0(DX), AX								
  nat.go:100		0x665fec		48c1e703		SHLQ $0x3, DI								
  nat.go:100		0x665ff0		4889fb			MOVQ DI, BX								
  nat.go:100		0x665ff3		e868ade2ff		CALL runtime.memclrNoHeapPointers(SB)					
  nat.go:101		0x665ff8		488b842450070000	MOVQ 0x750(SP), AX							
  nat.go:101		0x666000		488b4810		MOVQ 0x10(AX), CX							
  nat.go:101		0x666004		4883f910		CMPQ CX, $0x10								
  nat.go:101		0x666008		0f82ae000000		JB 0x6660bc								
  nat.go:101		0x66600e		48c7400810000000	MOVQ $0x10, 0x8(AX)							
  nat.go:873		0x666016		eb49			JMP 0x666061								
  nat.go:96		0x666018		488d0521382f00		LEAQ 0x2f3821(IP), AX							
  nat.go:96		0x66601f		bb10000000		MOVL $0x10, BX								
  nat.go:96		0x666024		89d9			MOVL BX, CX								
  nat.go:96		0x666026		e8355be2ff		CALL runtime.makeslice(SB)						
  nat.go:96		0x66602b		488b942450070000	MOVQ 0x750(SP), DX							
  nat.go:96		0x666033		48c7420810000000	MOVQ $0x10, 0x8(DX)							
  nat.go:96		0x66603b		48c7421010000000	MOVQ $0x10, 0x10(DX)							
  nat.go:96		0x666043		833d3603390000		CMPL runtime.writeBarrier(SB), $0x0					
  nat.go:96		0x66604a		740f			JE 0x66605b								
  nat.go:96		0x66604c		488b32			MOVQ 0(DX), SI								
  nat.go:96		0x66604f		e8cca8e2ff		CALL runtime.gcWriteBarrier2(SB)					
  nat.go:96		0x666054		498903			MOVQ AX, 0(R11)								
  nat.go:96		0x666057		49897308		MOVQ SI, 0x8(R11)							
  nat.go:96		0x66605b		488902			MOVQ AX, 0(DX)								
  nat.go:873		0x66605e		4889d0			MOVQ DX, AX								
  nat.go:873		0x666061		488b10			MOVQ 0(AX), DX								
  nat.go:873		0x666064		488b4808		MOVQ 0x8(AX), CX							
  nat.go:873		0x666068		4883f910		CMPQ CX, $0x10								
  nat.go:873		0x66606c		be10000000		MOVL $0x10, SI								
  nat.go:873		0x666071		480f4fce		CMOVG SI, CX								
  nat.go:873		0x666075		488d9c2498040000	LEAQ 0x498(SP), BX							
  nat.go:873		0x66607d		0f1f00			NOPL 0(AX)								
  nat.go:873		0x666080		4839da			CMPQ DX, BX								
  nat.go:873		0x666083		7414			JE 0x666099								
  nat.go:873		0x666085		48c1e103		SHLQ $0x3, CX								
  nat.go:873		0x666089		4889d0			MOVQ DX, AX								
  nat.go:873		0x66608c		e8cfafe2ff		CALL runtime.memmove(SB)						
  nat.go:874		0x666091		488b842450070000	MOVQ 0x750(SP), AX							
  nat.go:874		0x666099		488b5c2468		MOVQ 0x68(SP), BX							
  nat.go:874		0x66609e		488b8c2468070000	MOVQ 0x768(SP), CX							
  nat.go:874		0x6660a6		e835f3ffff		CALL crypto/internal/fips140/bigmod.(*Nat).maybeSubtractModulus(SB)	
  nat.go:905		0x6660ab		488b842450070000	MOVQ 0x750(SP), AX							
  nat.go:905		0x6660b3		4881c440070000		ADDQ $0x740, SP								
  nat.go:905		0x6660ba		5d			POPQ BP									
  nat.go:905		0x6660bb		c3			RET									
  nat.go:101		0x6660bc		0f1f4000		NOPL 0(AX)								
  nat.go:101		0x6660c0		e8fbabe2ff		CALL runtime.panicBounds(SB)						
  nat.go:100		0x6660c5		e8f6abe2ff		CALL runtime.panicBounds(SB)						
  nat.go:880		0x6660ca		48894c2430		MOVQ CX, 0x30(SP)							
  nat.go:881		0x6660cf		498b04c9		MOVQ 0(R9)(CX*8), AX							
  nat.go:882		0x6660d3		488d8ccc98020000	LEAQ 0x298(SP)(CX*8), CX						
  nat.go:882		0x6660db		48898c2420070000	MOVQ CX, 0x720(SP)							
  nat.go:882		0x6660e3		48890c24		MOVQ CX, 0(SP)								
  nat.go:882		0x6660e7		4c89442408		MOVQ R8, 0x8(SP)							
  nat.go:882		0x6660ec		4889442410		MOVQ AX, 0x10(SP)							
  nat.go:882		0x6660f1		e8ea3d0000		CALL crypto/internal/fips140/bigmod.addMulVVW1536.abi0(SB)		
  nat.go:882		0x6660f6		450f57ff		XORPS X15, X15								
  nat.go:882		0x6660fa		803d2ffe380001		CMPB runtime.x86HasAVX(SB), $0x1					
  nat.go:882		0x666101		7505			JNE 0x666108								
  nat.go:882		0x666103		c4410057ff		VXORPS X15, X15, X15							
  nat.go:882		0x666108		644c8b3425f8ffffff	MOVQ FS:0xfffffff8, R14							
  nat.go:882		0x666111		488b442418		MOVQ 0x18(SP), AX							
  nat.go:882		0x666116		4889442448		MOVQ AX, 0x48(SP)							
  nat.go:883		0x66611b		488b442430		MOVQ 0x30(SP), AX							
  nat.go:883		0x666120		488b84c498020000	MOVQ 0x298(SP)(AX*8), AX						
  nat.go:883		0x666128		488b8c2468070000	MOVQ 0x768(SP), CX							
  nat.go:883		0x666130		488b4910		MOVQ 0x10(CX), CX							
  nat.go:884		0x666134		488b942420070000	MOVQ 0x720(SP), DX							
  nat.go:884		0x66613c		48891424		MOVQ DX, 0(SP)								
  nat.go:884		0x666140		488b942438070000	MOVQ 0x738(SP), DX							
  nat.go:884		0x666148		4889542408		MOVQ DX, 0x8(SP)							
  nat.go:883		0x66614d		480fafc1		IMULQ CX, AX								
  nat.go:884		0x666151		4889442410		MOVQ AX, 0x10(SP)							
  nat.go:884		0x666156		e8853d0000		CALL crypto/internal/fips140/bigmod.addMulVVW1536.abi0(SB)		
  nat.go:884		0x66615b		450f57ff		XORPS X15, X15								
  nat.go:884		0x66615f		803dcafd380001		CMPB runtime.x86HasAVX(SB), $0x1					
  nat.go:884		0x666166		7505			JNE 0x66616d								
  nat.go:884		0x666168		c4410057ff		VXORPS X15, X15, X15							
  nat.go:884		0x66616d		644c8b3425f8ffffff	MOVQ FS:0xfffffff8, R14							
  nat.go:884		0x666176		488b442418		MOVQ 0x18(SP), AX							
  nat.go:885		0x66617b		488b4c2460		MOVQ 0x60(SP), CX							
  nat.go:885		0x666180		f7d9			NEGL CX									
  nat.go:885		0x666182		488b4c2448		MOVQ 0x48(SP), CX							
  nat.go:885		0x666187		4811c8			ADCQ CX, AX								
  nat.go:885		0x66618a		488b4c2430		MOVQ 0x30(SP), CX							
  nat.go:885		0x66618f		488984cc58030000	MOVQ AX, 0x358(SP)(CX*8)						
  nat.go:885		0x666197		0f92c0			SETB AL									
  nat.go:885		0x66619a		0fb6d8			MOVZX AL, BX								
  nat.go:880		0x66619d		48ffc1			INCQ CX									
  nat.go:882		0x6661a0		4c8b842430070000	MOVQ 0x730(SP), R8							
  nat.go:881		0x6661a8		4c8b8c2428070000	MOVQ 0x728(SP), R9							
  nat.go:880		0x6661b0		48895c2460		MOVQ BX, 0x60(SP)							
  nat.go:880		0x6661b5		4883f918		CMPQ CX, $0x18								
  nat.go:880		0x6661b9		0f8c0bffffff		JL 0x6660ca								
  nat.go:95		0x6661bf		488b942450070000	MOVQ 0x750(SP), DX							
  nat.go:95		0x6661c7		488b7210		MOVQ 0x10(DX), SI							
  nat.go:95		0x6661cb		4883fe18		CMPQ SI, $0x18								
  nat.go:95		0x6661cf		7c49			JL 0x66621a								
  nat.go:95		0x6661d1		488b4a08		MOVQ 0x8(DX), CX							
  nat.go:100		0x6661d5		4883f918		CMPQ CX, $0x18								
  nat.go:100		0x6661d9		bf18000000		MOVL $0x18, DI								
  nat.go:100		0x6661de		480f4ff9		CMOVG CX, DI								
  nat.go:100		0x6661e2		4839fe			CMPQ SI, DI								
  nat.go:100		0x6661e5		0f82ca000000		JB 0x6662b5								
  nat.go:95		0x6661eb		488b02			MOVQ 0(DX), AX								
  nat.go:100		0x6661ee		48c1e703		SHLQ $0x3, DI								
  nat.go:100		0x6661f2		4889fb			MOVQ DI, BX								
  nat.go:100		0x6661f5		e866abe2ff		CALL runtime.memclrNoHeapPointers(SB)					
  nat.go:101		0x6661fa		488b842450070000	MOVQ 0x750(SP), AX							
  nat.go:101		0x666202		488b4810		MOVQ 0x10(AX), CX							
  nat.go:101		0x666206		4883f918		CMPQ CX, $0x18								
  nat.go:101		0x66620a		0f82a0000000		JB 0x6662b0								
  nat.go:101		0x666210		48c7400818000000	MOVQ $0x18, 0x8(AX)							
  nat.go:887		0x666218		eb49			JMP 0x666263								
  nat.go:96		0x66621a		488d051f362f00		LEAQ 0x2f361f(IP), AX							
  nat.go:96		0x666221		bb18000000		MOVL $0x18, BX								
  nat.go:96		0x666226		89d9			MOVL BX, CX								
  nat.go:96		0x666228		e83359e2ff		CALL runtime.makeslice(SB)						
  nat.go:96		0x66622d		488b942450070000	MOVQ 0x750(SP), DX							
  nat.go:96		0x666235		48c7420818000000	MOVQ $0x18, 0x8(DX)							
  nat.go:96		0x66623d		48c7421018000000	MOVQ $0x18, 0x10(DX)							
  nat.go:96		0x666245		833d3401390000		CMPL runtime.writeBarrier(SB), $0x0					
  nat.go:96		0x66624c		740f			JE 0x66625d								
  nat.go:96		0x66624e		488b32			MOVQ 0(DX), SI								
  nat.go:96		0x666251		e8caa6e2ff		CALL runtime.gcWriteBarrier2(SB)					
  nat.go:96		0x666256		498903			MOVQ AX, 0(R11)								
  nat.go:96		0x666259		49897308		MOVQ SI, 0x8(R11)							
  nat.go:96		0x66625d		488902			MOVQ AX, 0(DX)								
  nat.go:887		0x666260		4889d0			MOVQ DX, AX								
  nat.go:887		0x666263		488b10			MOVQ 0(AX), DX								
  nat.go:887		0x666266		488b4808		MOVQ 0x8(AX), CX							
  nat.go:887		0x66626a		4883f918		CMPQ CX, $0x18								
  nat.go:887		0x66626e		be18000000		MOVL $0x18, SI								
  nat.go:887		0x666273		480f4fce		CMOVG SI, CX								
  nat.go:887		0x666277		488d9c2458030000	LEAQ 0x358(SP), BX							
  nat.go:887		0x66627f		90			NOPL									
  nat.go:887		0x666280		4839da			CMPQ DX, BX								
  nat.go:887		0x666283		7414			JE 0x666299								
  nat.go:887		0x666285		48c1e103		SHLQ $0x3, CX								
  nat.go:887		0x666289		4889d0			MOVQ DX, AX								
  nat.go:887		0x66628c		e8cfade2ff		CALL runtime.memmove(SB)						
  nat.go:888		0x666291		488b842450070000	MOVQ 0x750(SP), AX							
  nat.go:888		0x666299		488b5c2460		MOVQ 0x60(SP), BX							
  nat.go:888		0x66629e		488b8c2468070000	MOVQ 0x768(SP), CX							
  nat.go:888		0x6662a6		e835f1ffff		CALL crypto/internal/fips140/bigmod.(*Nat).maybeSubtractModulus(SB)	
  nat.go:888		0x6662ab		e9fbfdffff		JMP 0x6660ab								
  nat.go:101		0x6662b0		e80baae2ff		CALL runtime.panicBounds(SB)						
  nat.go:100		0x6662b5		e806aae2ff		CALL runtime.panicBounds(SB)						
  nat.go:894		0x6662ba		48894c2428		MOVQ CX, 0x28(SP)							
  nat.go:895		0x6662bf		498b04c9		MOVQ 0(R9)(CX*8), AX							
  nat.go:896		0x6662c3		488d8ccc98000000	LEAQ 0x98(SP)(CX*8), CX							
  nat.go:896		0x6662cb		48898c2420070000	MOVQ CX, 0x720(SP)							
  nat.go:896		0x6662d3		48890c24		MOVQ CX, 0(SP)								
  nat.go:896		0x6662d7		4c89442408		MOVQ R8, 0x8(SP)							
  nat.go:896		0x6662dc		4889442410		MOVQ AX, 0x10(SP)							
  nat.go:896		0x6662e1		e8ba410000		CALL crypto/internal/fips140/bigmod.addMulVVW2048.abi0(SB)		
  nat.go:896		0x6662e6		450f57ff		XORPS X15, X15								
  nat.go:896		0x6662ea		803d3ffc380001		CMPB runtime.x86HasAVX(SB), $0x1					
  nat.go:896		0x6662f1		7505			JNE 0x6662f8								
  nat.go:896		0x6662f3		c4410057ff		VXORPS X15, X15, X15							
  nat.go:896		0x6662f8		644c8b3425f8ffffff	MOVQ FS:0xfffffff8, R14							
  nat.go:896		0x666301		488b442418		MOVQ 0x18(SP), AX							
  nat.go:896		0x666306		4889442440		MOVQ AX, 0x40(SP)							
  nat.go:897		0x66630b		488b442428		MOVQ 0x28(SP), AX							
  nat.go:897		0x666310		488b84c498000000	MOVQ 0x98(SP)(AX*8), AX							
  nat.go:897		0x666318		488b8c2468070000	MOVQ 0x768(SP), CX							
  nat.go:897		0x666320		488b4910		MOVQ 0x10(CX), CX							
  nat.go:898		0x666324		488b942420070000	MOVQ 0x720(SP), DX							
  nat.go:898		0x66632c		48891424		MOVQ DX, 0(SP)								
  nat.go:898		0x666330		488b942438070000	MOVQ 0x738(SP), DX							
  nat.go:898		0x666338		4889542408		MOVQ DX, 0x8(SP)							
  nat.go:897		0x66633d		480fafc1		IMULQ CX, AX								
  nat.go:898		0x666341		4889442410		MOVQ AX, 0x10(SP)							
  nat.go:898		0x666346		e855410000		CALL crypto/internal/fips140/bigmod.addMulVVW2048.abi0(SB)		
  nat.go:898		0x66634b		450f57ff		XORPS X15, X15								
  nat.go:898		0x66634f		803ddafb380001		CMPB runtime.x86HasAVX(SB), $0x1					
  nat.go:898		0x666356		7505			JNE 0x66635d								
  nat.go:898		0x666358		c4410057ff		VXORPS X15, X15, X15							
  nat.go:898		0x66635d		644c8b3425f8ffffff	MOVQ FS:0xfffffff8, R14							
  nat.go:898		0x666366		488b442418		MOVQ 0x18(SP), AX							
  nat.go:899		0x66636b		488b4c2458		MOVQ 0x58(SP), CX							
  nat.go:899		0x666370		f7d9			NEGL CX									
  nat.go:899		0x666372		488b4c2440		MOVQ 0x40(SP), CX							
  nat.go:899		0x666377		4811c8			ADCQ CX, AX								
  nat.go:899		0x66637a		488b4c2428		MOVQ 0x28(SP), CX							
  nat.go:899		0x66637f		488984cc98010000	MOVQ AX, 0x198(SP)(CX*8)						
  nat.go:899		0x666387		0f92c0			SETB AL									
  nat.go:899		0x66638a		0fb6d8			MOVZX AL, BX								
  nat.go:894		0x66638d		48ffc1			INCQ CX									
  nat.go:896		0x666390		4c8b842430070000	MOVQ 0x730(SP), R8							
  nat.go:895		0x666398		4c8b8c2428070000	MOVQ 0x728(SP), R9							
  nat.go:894		0x6663a0		48895c2458		MOVQ BX, 0x58(SP)							
  nat.go:894		0x6663a5		4883f920		CMPQ CX, $0x20								
  nat.go:894		0x6663a9		0f8c0bffffff		JL 0x6662ba								
  nat.go:95		0x6663af		488b942450070000	MOVQ 0x750(SP), DX							
  nat.go:95		0x6663b7		488b7210		MOVQ 0x10(DX), SI							
  nat.go:95		0x6663bb		0f1f440000		NOPL 0(AX)(AX*1)							
  nat.go:95		0x6663c0		4883fe20		CMPQ SI, $0x20								
  nat.go:95		0x6663c4		7c52			JL 0x666418								
  nat.go:95		0x6663c6		488b4a08		MOVQ 0x8(DX), CX							
  nat.go:100		0x6663ca		4883f920		CMPQ CX, $0x20								
  nat.go:100		0x6663ce		bf20000000		MOVL $0x20, DI								
  nat.go:100		0x6663d3		480f4ff9		CMOVG CX, DI								
  nat.go:100		0x6663d7		660f1f840000000000	NOPW 0(AX)(AX*1)							
  nat.go:100		0x6663e0		4839fe			CMPQ SI, DI								
  nat.go:100		0x6663e3		0f82d1000000		JB 0x6664ba								
  nat.go:95		0x6663e9		488b02			MOVQ 0(DX), AX								
  nat.go:100		0x6663ec		48c1e703		SHLQ $0x3, DI								
  nat.go:100		0x6663f0		4889fb			MOVQ DI, BX								
  nat.go:100		0x6663f3		e868a9e2ff		CALL runtime.memclrNoHeapPointers(SB)					
  nat.go:101		0x6663f8		488b842450070000	MOVQ 0x750(SP), AX							
  nat.go:101		0x666400		488b4810		MOVQ 0x10(AX), CX							
  nat.go:101		0x666404		4883f920		CMPQ CX, $0x20								
  nat.go:101		0x666408		0f82a2000000		JB 0x6664b0								
  nat.go:101		0x66640e		48c7400820000000	MOVQ $0x20, 0x8(AX)							
  nat.go:901		0x666416		eb49			JMP 0x666461								
  nat.go:96		0x666418		488d0521342f00		LEAQ 0x2f3421(IP), AX							
  nat.go:96		0x66641f		bb20000000		MOVL $0x20, BX								
  nat.go:96		0x666424		89d9			MOVL BX, CX								
  nat.go:96		0x666426		e83557e2ff		CALL runtime.makeslice(SB)						
  nat.go:96		0x66642b		488b942450070000	MOVQ 0x750(SP), DX							
  nat.go:96		0x666433		48c7420820000000	MOVQ $0x20, 0x8(DX)							
  nat.go:96		0x66643b		48c7421020000000	MOVQ $0x20, 0x10(DX)							
  nat.go:96		0x666443		833d36ff380000		CMPL runtime.writeBarrier(SB), $0x0					
  nat.go:96		0x66644a		740f			JE 0x66645b								
  nat.go:96		0x66644c		488b32			MOVQ 0(DX), SI								
  nat.go:96		0x66644f		e8cca4e2ff		CALL runtime.gcWriteBarrier2(SB)					
  nat.go:96		0x666454		498903			MOVQ AX, 0(R11)								
  nat.go:96		0x666457		49897308		MOVQ SI, 0x8(R11)							
  nat.go:96		0x66645b		488902			MOVQ AX, 0(DX)								
  nat.go:901		0x66645e		4889d0			MOVQ DX, AX								
  nat.go:901		0x666461		488b10			MOVQ 0(AX), DX								
  nat.go:901		0x666464		488b4808		MOVQ 0x8(AX), CX							
  nat.go:901		0x666468		4883f920		CMPQ CX, $0x20								
  nat.go:901		0x66646c		be20000000		MOVL $0x20, SI								
  nat.go:901		0x666471		480f4fce		CMOVG SI, CX								
  nat.go:901		0x666475		488d9c2498010000	LEAQ 0x198(SP), BX							
  nat.go:901		0x66647d		0f1f00			NOPL 0(AX)								
  nat.go:901		0x666480		4839da			CMPQ DX, BX								
  nat.go:901		0x666483		7414			JE 0x666499								
  nat.go:901		0x666485		48c1e103		SHLQ $0x3, CX								
  nat.go:901		0x666489		4889d0			MOVQ DX, AX								
  nat.go:901		0x66648c		e8cfabe2ff		CALL runtime.memmove(SB)						
  nat.go:902		0x666491		488b842450070000	MOVQ 0x750(SP), AX							
  nat.go:902		0x666499		488b5c2458		MOVQ 0x58(SP), BX							
  nat.go:902		0x66649e		488b8c2468070000	MOVQ 0x768(SP), CX							
  nat.go:902		0x6664a6		e835efffff		CALL crypto/internal/fips140/bigmod.(*Nat).maybeSubtractModulus(SB)	
  nat.go:902		0x6664ab		e9fbfbffff		JMP 0x6660ab								
  nat.go:101		0x6664b0		b820000000		MOVL $0x20, AX								
  nat.go:101		0x6664b5		e806a8e2ff		CALL runtime.panicBounds(SB)						
  nat.go:100		0x6664ba		e801a8e2ff		CALL runtime.panicBounds(SB)						
  nat.go:843		0x6664bf		41f7db			NEGL R11								
  nat.go:843		0x6664c2		4911fd			ADCQ DI, R13								
  nat.go:843		0x6664c5		4c8bbc2490000000	MOVQ 0x90(SP), R15							
  nat.go:843		0x6664cd		4f892cfa		MOVQ R13, 0(R10)(R15*8)							
  nat.go:843		0x6664d1		410f92c5		SETB R13								
  nat.go:843		0x6664d5		450fb6dd		MOVZX R13, R11								
  nat.go:810		0x6664d9		49ffc4			INCQ R12								
  nat.go:855		0x6664dc		488b9c2480000000	MOVQ 0x80(SP), BX							
  nat.go:836		0x6664e4		488bbc2468070000	MOVQ 0x768(SP), DI							
  nat.go:830		0x6664ec		4c8b8c2428070000	MOVQ 0x728(SP), R9							
  nat.go:810		0x6664f4		4939f4			CMPQ R12, SI								
  nat.go:810		0x6664f7		0f8dce000000		JGE 0x6665cb								
  nat.go:811		0x6664fd		4d8d2c34		LEAQ 0(R12)(SI*1), R13							
  nat.go:811		0x666501		4939cd			CMPQ R13, CX								
  nat.go:811		0x666504		0f832a020000		JAE 0x666734								
  nat.go:811		0x66650a		4c89ac2490000000	MOVQ R13, 0x90(SP)							
  nat.go:830		0x666512		4f8b3ce1		MOVQ 0(R9)(R12*8), R15							
  nat.go:831		0x666516		4b8d1ce2		LEAQ 0(R10)(R12*8), BX							
  nat.go:915		0x66651a		4531c9			XORL R9, R9								
  nat.go:915		0x66651d		4531ed			XORL R13, R13								
  nat.go:915		0x666520		eb38			JMP 0x66655a								
  nat.go:916		0x666522		4b8b04c8		MOVQ 0(R8)(R9*8), AX							
  nat.go:916		0x666526		49f7e7			MULQ R15								
  nat.go:917		0x666529		4a8b0ccb		MOVQ 0(BX)(R9*8), CX							
  nat.go:917		0x66652d		4801c1			ADDQ AX, CX								
  nat.go:920		0x666530		4883d200		ADCQ $0x0, DX								
  nat.go:921		0x666534		4901cd			ADDQ CX, R13								
  nat.go:924		0x666537		4e892ccb		MOVQ R13, 0(BX)(R9*8)							
  nat.go:922		0x66653b		4883d200		ADCQ $0x0, DX								
  nat.go:915		0x66653f		49ffc1			INCQ R9									
  nat.go:95		0x666542		488b842450070000	MOVQ 0x750(SP), AX							
  nat.go:811		0x66654a		488b4c2478		MOVQ 0x78(SP), CX							
  nat.go:915		0x66654f		4989d5			MOVQ DX, R13								
  nat.go:916		0x666552		488b942438070000	MOVQ 0x738(SP), DX							
  nat.go:915		0x66655a		4939f1			CMPQ R9, SI								
  nat.go:915		0x66655d		7cc3			JL 0x666522								
  nat.go:836		0x66655f		4f8b0ce2		MOVQ 0(R10)(R12*8), R9							
  nat.go:836		0x666563		4c8b7f10		MOVQ 0x10(DI), R15							
  nat.go:836		0x666567		4d0faff9		IMULQ R9, R15								
  nat.go:842		0x66656b		90			NOPL									
  nat.go:915		0x66656c		4531c9			XORL R9, R9								
  nat.go:915		0x66656f		31ff			XORL DI, DI								
  nat.go:915		0x666571		eb4e			JMP 0x6665c1								
  nat.go:916		0x666573		4a8b04ca		MOVQ 0(DX)(R9*8), AX							
  nat.go:916		0x666577		4889842488000000	MOVQ AX, 0x88(SP)							
  nat.go:916		0x66657f		4c89f8			MOVQ R15, AX								
  nat.go:916		0x666582		4c8b842488000000	MOVQ 0x88(SP), R8							
  nat.go:916		0x66658a		49f7e0			MULQ R8									
  nat.go:917		0x66658d		4e8b04cb		MOVQ 0(BX)(R9*8), R8							
  nat.go:917		0x666591		4901c0			ADDQ AX, R8								
  nat.go:920		0x666594		4883d200		ADCQ $0x0, DX								
  nat.go:921		0x666598		4c01c7			ADDQ R8, DI								
  nat.go:924		0x66659b		4a893ccb		MOVQ DI, 0(BX)(R9*8)							
  nat.go:922		0x66659f		4883d200		ADCQ $0x0, DX								
  nat.go:915		0x6665a3		49ffc1			INCQ R9									
  nat.go:95		0x6665a6		488b842450070000	MOVQ 0x750(SP), AX							
  nat.go:916		0x6665ae		4c8b842430070000	MOVQ 0x730(SP), R8							
  nat.go:915		0x6665b6		4889d7			MOVQ DX, DI								
  nat.go:916		0x6665b9		488b942438070000	MOVQ 0x738(SP), DX							
  nat.go:915		0x6665c1		4939f1			CMPQ R9, SI								
  nat.go:915		0x6665c4		7cad			JL 0x666573								
  nat.go:915		0x6665c6		e9f4feffff		JMP 0x6664bf								
  nat.go:803		0x6665cb		4c89942418070000	MOVQ R10, 0x718(SP)							
  nat.go:810		0x6665d3		4c895c2470		MOVQ R11, 0x70(SP)							
  nat.go:95		0x6665d8		488b5010		MOVQ 0x10(AX), DX							
  nat.go:95		0x6665dc		0f1f4000		NOPL 0(AX)								
  nat.go:95		0x6665e0		4839f2			CMPQ DX, SI								
  nat.go:95		0x6665e3		7c71			JL 0x666656								
  nat.go:95		0x6665e5		4c8b4008		MOVQ 0x8(AX), R8							
  nat.go:100		0x6665e9		4939f0			CMPQ R8, SI								
  nat.go:100		0x6665ec		4989f1			MOVQ SI, R9								
  nat.go:100		0x6665ef		490f4ff0		CMOVG R8, SI								
  nat.go:100		0x6665f3		4839f2			CMPQ DX, SI								
  nat.go:100		0x6665f6		0f8233010000		JB 0x66672f								
  nat.go:100		0x6665fc		0f1f4000		NOPL 0(AX)								
  nat.go:100		0x666600		4885f6			TESTQ SI, SI								
  nat.go:100		0x666603		743e			JE 0x666643								
  nat.go:95		0x666605		488b00			MOVQ 0(AX), AX								
  nat.go:100		0x666608		48c1e603		SHLQ $0x3, SI								
  nat.go:100		0x66660c		4889f3			MOVQ SI, BX								
  nat.go:100		0x66660f		e84ca7e2ff		CALL runtime.memclrNoHeapPointers(SB)					
  nat.go:101		0x666614		488b842450070000	MOVQ 0x750(SP), AX							
  nat.go:855		0x66661c		488b4c2478		MOVQ 0x78(SP), CX							
  nat.go:855		0x666621		488b9c2480000000	MOVQ 0x80(SP), BX							
  nat.go:856		0x666629		488bbc2468070000	MOVQ 0x768(SP), DI							
  nat.go:101		0x666631		4c8b4c2420		MOVQ 0x20(SP), R9							
  nat.go:855		0x666636		4c8b942418070000	MOVQ 0x718(SP), R10							
  nat.go:856		0x66663e		4c8b5c2470		MOVQ 0x70(SP), R11							
  nat.go:101		0x666643		488b5010		MOVQ 0x10(AX), DX							
  nat.go:101		0x666647		4c39ca			CMPQ DX, R9								
  nat.go:101		0x66664a		0f82da000000		JB 0x66672a								
  nat.go:101		0x666650		4c894808		MOVQ R9, 0x8(AX)							
  nat.go:855		0x666654		eb6a			JMP 0x6666c0								
  nat.go:96		0x666656		488d05e3312f00		LEAQ 0x2f31e3(IP), AX							
  nat.go:96		0x66665d		4889f3			MOVQ SI, BX								
  nat.go:96		0x666660		4889d9			MOVQ BX, CX								
  nat.go:96		0x666663		e8f854e2ff		CALL runtime.makeslice(SB)						
  nat.go:96		0x666668		488b542420		MOVQ 0x20(SP), DX							
  nat.go:96		0x66666d		488bb42450070000	MOVQ 0x750(SP), SI							
  nat.go:96		0x666675		48895608		MOVQ DX, 0x8(SI)							
  nat.go:96		0x666679		48895610		MOVQ DX, 0x10(SI)							
  nat.go:96		0x66667d		833dfcfc380000		CMPL runtime.writeBarrier(SB), $0x0					
  nat.go:96		0x666684		740f			JE 0x666695								
  nat.go:96		0x666686		488b3e			MOVQ 0(SI), DI								
  nat.go:96		0x666689		e892a2e2ff		CALL runtime.gcWriteBarrier2(SB)					
  nat.go:96		0x66668e		498903			MOVQ AX, 0(R11)								
  nat.go:96		0x666691		49897b08		MOVQ DI, 0x8(R11)							
  nat.go:96		0x666695		488906			MOVQ AX, 0(SI)								
  nat.go:855		0x666698		4889f0			MOVQ SI, AX								
  nat.go:855		0x66669b		488b4c2478		MOVQ 0x78(SP), CX							
  nat.go:855		0x6666a0		488b9c2480000000	MOVQ 0x80(SP), BX							
  nat.go:856		0x6666a8		488bbc2468070000	MOVQ 0x768(SP), DI							
  nat.go:855		0x6666b0		4989d1			MOVQ DX, R9								
  nat.go:855		0x6666b3		4c8b942418070000	MOVQ 0x718(SP), R10							
  nat.go:856		0x6666bb		4c8b5c2470		MOVQ 0x70(SP), R11							
  nat.go:855		0x6666c0		4939c9			CMPQ R9, CX								
  nat.go:855		0x6666c3		7760			JA 0x666725								
  nat.go:855		0x6666c5		488b10			MOVQ 0(AX), DX								
  nat.go:855		0x6666c8		488b7008		MOVQ 0x8(AX), SI							
  nat.go:855		0x6666cc		4c29c9			SUBQ R9, CX								
  nat.go:855		0x6666cf		4d89c8			MOVQ R9, R8								
  nat.go:855		0x6666d2		4929d9			SUBQ BX, R9								
  nat.go:855		0x6666d5		49c1e003		SHLQ $0x3, R8								
  nat.go:855		0x6666d9		49c1f93f		SARQ $0x3f, R9								
  nat.go:855		0x6666dd		4d21c1			ANDQ R8, R9								
  nat.go:855		0x6666e0		4b8d1c0a		LEAQ 0(R10)(R9*1), BX							
  nat.go:855		0x6666e4		4839ce			CMPQ SI, CX								
  nat.go:855		0x6666e7		480f4ff1		CMOVG CX, SI								
  nat.go:855		0x6666eb		4839da			CMPQ DX, BX								
  nat.go:855		0x6666ee		7424			JE 0x666714								
  nat.go:855		0x6666f0		48c1e603		SHLQ $0x3, SI								
  nat.go:855		0x6666f4		4889d0			MOVQ DX, AX								
  nat.go:855		0x6666f7		4889f1			MOVQ SI, CX								
  nat.go:855		0x6666fa		e861a9e2ff		CALL runtime.memmove(SB)						
  nat.go:856		0x6666ff		488b842450070000	MOVQ 0x750(SP), AX							
  nat.go:856		0x666707		488bbc2468070000	MOVQ 0x768(SP), DI							
  nat.go:856		0x66670f		4c8b5c2470		MOVQ 0x70(SP), R11							
  nat.go:856		0x666714		4c89db			MOVQ R11, BX								
  nat.go:856		0x666717		4889f9			MOVQ DI, CX								
  nat.go:856		0x66671a		e8c1ecffff		CALL crypto/internal/fips140/bigmod.(*Nat).maybeSubtractModulus(SB)	
  nat.go:856		0x66671f		90			NOPL									
  nat.go:856		0x666720		e986f9ffff		JMP 0x6660ab								
  nat.go:855		0x666725		e896a5e2ff		CALL runtime.panicBounds(SB)						
  nat.go:101		0x66672a		e891a5e2ff		CALL runtime.panicBounds(SB)						
  nat.go:100		0x66672f		e88ca5e2ff		CALL runtime.panicBounds(SB)						
  nat.go:811		0x666734		e887a5e2ff		CALL runtime.panicBounds(SB)						
  nat.go:803		0x666739		e882a5e2ff		CALL runtime.panicBounds(SB)						
  nat.go:794		0x66673e		6690			NOPW									
  nat.go:794		0x666740		e87ba5e2ff		CALL runtime.panicBounds(SB)						
  nat.go:793		0x666745		e876a5e2ff		CALL runtime.panicBounds(SB)						
  nat.go:793		0x66674a		90			NOPL									
  nat.go:790		0x66674b		4889442408		MOVQ AX, 0x8(SP)							
  nat.go:790		0x666750		48895c2410		MOVQ BX, 0x10(SP)							
  nat.go:790		0x666755		48894c2418		MOVQ CX, 0x18(SP)							
  nat.go:790		0x66675a		48897c2420		MOVQ DI, 0x20(SP)							
  nat.go:790		0x66675f		90			NOPL									
  nat.go:790		0x666760		e89b87e2ff		CALL runtime.morestack_noctxt.abi0(SB)					
  nat.go:790		0x666765		488b442408		MOVQ 0x8(SP), AX							
  nat.go:790		0x66676a		488b5c2410		MOVQ 0x10(SP), BX							
  nat.go:790		0x66676f		488b4c2418		MOVQ 0x18(SP), CX							
  nat.go:790		0x666774		488b7c2420		MOVQ 0x20(SP), DI							
  nat.go:790		0x666779		e962f5ffff		JMP crypto/internal/fips140/bigmod.(*Nat).montgomeryMul(SB)		

TEXT crypto/internal/fips140/bigmod.(*Nat).Exp(SB) /home/exedev/go-crypto/src/crypto/internal/fips140/bigmod/nat.go
  nat.go:1011		0x667020		4989e4				MOVQ SP, R12								
  nat.go:1011		0x667023		4981ecf0110000			SUBQ $0x11f0, R12							
  nat.go:1011		0x66702a		0f82d60b0000			JB 0x667c06								
  nat.go:1011		0x667030		4d3b6610			CMPQ R12, 0x10(R14)							
  nat.go:1011		0x667034		0f86cc0b0000			JBE 0x667c06								
  nat.go:1011		0x66703a		55				PUSHQ BP								
  nat.go:1011		0x66703b		4889e5				MOVQ SP, BP								
  nat.go:1011		0x66703e		4881ec68120000			SUBQ $0x1268, SP							
  nat.go:1011		0x667045		48898c2488120000		MOVQ CX, 0x1288(SP)							
  nat.go:1012		0x66704d		4180780800			CMPB 0x8(R8), $0x0							
  nat.go:1012		0x667052		0f848d0b0000			JE 0x667be5								
  nat.go:1012		0x667058		4889842478120000		MOVQ AX, 0x1278(SP)							
  nat.go:1012		0x667060		48899c2480120000		MOVQ BX, 0x1280(SP)							
  nat.go:1012		0x667068		4c898424a0120000		MOVQ R8, 0x12a0(SP)							
  nat.go:1012		0x667070		4889bc2490120000		MOVQ DI, 0x1290(SP)							
  nat.go:1012		0x667078		48898c2488120000		MOVQ CX, 0x1288(SP)							
  nat.go:1023		0x667080		90				NOPL									
  nat.go:72		0x667081		488d9424680f0000		LEAQ 0xf68(SP), DX							
  nat.go:72		0x667089		be04000000			MOVL $0x4, SI								
  nat.go:72		0x66708e		440f113a			MOVUPS X15, 0(DX)							
  nat.go:72		0x667092		440f117a10			MOVUPS X15, 0x10(DX)							
  nat.go:72		0x667097		440f117a20			MOVUPS X15, 0x20(DX)							
  nat.go:72		0x66709c		440f117a30			MOVUPS X15, 0x30(DX)							
  nat.go:72		0x6670a1		4883c240			ADDQ $0x40, DX								
  nat.go:72		0x6670a5		ffce				DECL SI									
  nat.go:72		0x6670a7		75e5				JNE 0x66708e								
  nat.go:73		0x6670a9		66440fd6bc2458120000		MOVQ X15, 0x1258(SP)							
  nat.go:73		0x6670b3		48c784246012000020000000	MOVQ $0x20, 0x1260(SP)							
  nat.go:73		0x6670bf		488d9424680f0000		LEAQ 0xf68(SP), DX							
  nat.go:73		0x6670c7		4889942450120000		MOVQ DX, 0x1250(SP)							
  nat.go:1023		0x6670cf		90				NOPL									
  nat.go:72		0x6670d0		488d9424680e0000		LEAQ 0xe68(SP), DX							
  nat.go:72		0x6670d8		be04000000			MOVL $0x4, SI								
  nat.go:72		0x6670dd		440f113a			MOVUPS X15, 0(DX)							
  nat.go:72		0x6670e1		440f117a10			MOVUPS X15, 0x10(DX)							
  nat.go:72		0x6670e6		440f117a20			MOVUPS X15, 0x20(DX)							
  nat.go:72		0x6670eb		440f117a30			MOVUPS X15, 0x30(DX)							
  nat.go:72		0x6670f0		4883c240			ADDQ $0x40, DX								
  nat.go:72		0x6670f4		ffce				DECL SI									
  nat.go:72		0x6670f6		75e5				JNE 0x6670dd								
  nat.go:73		0x6670f8		66440fd6bc2440120000		MOVQ X15, 0x1240(SP)							
  nat.go:73		0x667102		48c784244812000020000000	MOVQ $0x20, 0x1248(SP)							
  nat.go:73		0x66710e		488d9424680e0000		LEAQ 0xe68(SP), DX							
  nat.go:73		0x667116		4889942438120000		MOVQ DX, 0x1238(SP)							
  nat.go:1023		0x66711e		90				NOPL									
  nat.go:72		0x66711f		488d9424680d0000		LEAQ 0xd68(SP), DX							
  nat.go:72		0x667127		be04000000			MOVL $0x4, SI								
  nat.go:72		0x66712c		440f113a			MOVUPS X15, 0(DX)							
  nat.go:72		0x667130		440f117a10			MOVUPS X15, 0x10(DX)							
  nat.go:72		0x667135		440f117a20			MOVUPS X15, 0x20(DX)							
  nat.go:72		0x66713a		440f117a30			MOVUPS X15, 0x30(DX)							
  nat.go:72		0x66713f		4883c240			ADDQ $0x40, DX								
  nat.go:72		0x667143		ffce				DECL SI									
  nat.go:72		0x667145		75e5				JNE 0x66712c								
  nat.go:73		0x667147		66440fd6bc2428120000		MOVQ X15, 0x1228(SP)							
  nat.go:73		0x667151		48c784243012000020000000	MOVQ $0x20, 0x1230(SP)							
  nat.go:73		0x66715d		488d9424680d0000		LEAQ 0xd68(SP), DX							
  nat.go:73		0x667165		4889942420120000		MOVQ DX, 0x1220(SP)							
  nat.go:1023		0x66716d		90				NOPL									
  nat.go:72		0x66716e		488d9424680c0000		LEAQ 0xc68(SP), DX							
  nat.go:72		0x667176		be04000000			MOVL $0x4, SI								
  nat.go:72		0x66717b		440f113a			MOVUPS X15, 0(DX)							
  nat.go:72		0x66717f		440f117a10			MOVUPS X15, 0x10(DX)							
  nat.go:72		0x667184		440f117a20			MOVUPS X15, 0x20(DX)							
  nat.go:72		0x667189		440f117a30			MOVUPS X15, 0x30(DX)							
  nat.go:72		0x66718e		4883c240			ADDQ $0x40, DX								
  nat.go:72		0x667192		ffce				DECL SI									
  nat.go:72		0x667194		75e5				JNE 0x66717b								
  nat.go:73		0x667196		66440fd6bc2410120000		MOVQ X15, 0x1210(SP)							
  nat.go:73		0x6671a0		48c784241812000020000000	MOVQ $0x20, 0x1218(SP)							
  nat.go:73		0x6671ac		488d9424680c0000		LEAQ 0xc68(SP), DX							
  nat.go:73		0x6671b4		4889942408120000		MOVQ DX, 0x1208(SP)							
  nat.go:1023		0x6671bc		90				NOPL									
  nat.go:72		0x6671bd		488d9424680b0000		LEAQ 0xb68(SP), DX							
  nat.go:72		0x6671c5		be04000000			MOVL $0x4, SI								
  nat.go:72		0x6671ca		440f113a			MOVUPS X15, 0(DX)							
  nat.go:72		0x6671ce		440f117a10			MOVUPS X15, 0x10(DX)							
  nat.go:72		0x6671d3		440f117a20			MOVUPS X15, 0x20(DX)							
  nat.go:72		0x6671d8		440f117a30			MOVUPS X15, 0x30(DX)							
  nat.go:72		0x6671dd		4883c240			ADDQ $0x40, DX								
  nat.go:72		0x6671e1		ffce				DECL SI									
  nat.go:72		0x6671e3		75e5				JNE 0x6671ca								
  nat.go:73		0x6671e5		66440fd6bc24f8110000		MOVQ X15, 0x11f8(SP)							
  nat.go:73		0x6671ef		48c784240012000020000000	MOVQ $0x20, 0x1200(SP)							
  nat.go:73		0x6671fb		488d9424680b0000		LEAQ 0xb68(SP), DX							
  nat.go:73		0x667203		48899424f0110000		MOVQ DX, 0x11f0(SP)							
  nat.go:1024		0x66720b		90				NOPL									
  nat.go:72		0x66720c		488d9424680a0000		LEAQ 0xa68(SP), DX							
  nat.go:72		0x667214		be04000000			MOVL $0x4, SI								
  nat.go:72		0x667219		440f113a			MOVUPS X15, 0(DX)							
  nat.go:72		0x66721d		440f117a10			MOVUPS X15, 0x10(DX)							
  nat.go:72		0x667222		440f117a20			MOVUPS X15, 0x20(DX)							
  nat.go:72		0x667227		440f117a30			MOVUPS X15, 0x30(DX)							
  nat.go:72		0x66722c		4883c240			ADDQ $0x40, DX								
  nat.go:72		0x667230		ffce				DECL SI									
  nat.go:72		0x667232		75e5				JNE 0x667219								
  nat.go:73		0x667234		66440fd6bc24e0110000		MOVQ X15, 0x11e0(SP)							
  nat.go:73		0x66723e		48c78424e811000020000000	MOVQ $0x20, 0x11e8(SP)							
  nat.go:73		0x66724a		488d9424680a0000		LEAQ 0xa68(SP), DX							
  nat.go:73		0x667252		48899424d8110000		MOVQ DX, 0x11d8(SP)							
  nat.go:1024		0x66725a		90				NOPL									
  nat.go:72		0x66725b		488d942468090000		LEAQ 0x968(SP), DX							
  nat.go:72		0x667263		be04000000			MOVL $0x4, SI								
  nat.go:72		0x667268		440f113a			MOVUPS X15, 0(DX)							
  nat.go:72		0x66726c		440f117a10			MOVUPS X15, 0x10(DX)							
  nat.go:72		0x667271		440f117a20			MOVUPS X15, 0x20(DX)							
  nat.go:72		0x667276		440f117a30			MOVUPS X15, 0x30(DX)							
  nat.go:72		0x66727b		4883c240			ADDQ $0x40, DX								
  nat.go:72		0x66727f		90				NOPL									
  nat.go:72		0x667280		ffce				DECL SI									
  nat.go:72		0x667282		75e4				JNE 0x667268								
  nat.go:73		0x667284		66440fd6bc24c8110000		MOVQ X15, 0x11c8(SP)							
  nat.go:73		0x66728e		48c78424d011000020000000	MOVQ $0x20, 0x11d0(SP)							
  nat.go:73		0x66729a		488d942468090000		LEAQ 0x968(SP), DX							
  nat.go:73		0x6672a2		48899424c0110000		MOVQ DX, 0x11c0(SP)							
  nat.go:1024		0x6672aa		90				NOPL									
  nat.go:72		0x6672ab		488d942468080000		LEAQ 0x868(SP), DX							
  nat.go:72		0x6672b3		be04000000			MOVL $0x4, SI								
  nat.go:72		0x6672b8		440f113a			MOVUPS X15, 0(DX)							
  nat.go:72		0x6672bc		440f117a10			MOVUPS X15, 0x10(DX)							
  nat.go:72		0x6672c1		440f117a20			MOVUPS X15, 0x20(DX)							
  nat.go:72		0x6672c6		440f117a30			MOVUPS X15, 0x30(DX)							
  nat.go:72		0x6672cb		4883c240			ADDQ $0x40, DX								
  nat.go:72		0x6672cf		ffce				DECL SI									
  nat.go:72		0x6672d1		75e5				JNE 0x6672b8								
  nat.go:73		0x6672d3		66440fd6bc24b0110000		MOVQ X15, 0x11b0(SP)							
  nat.go:73		0x6672dd		48c78424b811000020000000	MOVQ $0x20, 0x11b8(SP)							
  nat.go:73		0x6672e9		488d942468080000		LEAQ 0x868(SP), DX							
  nat.go:73		0x6672f1		48899424a8110000		MOVQ DX, 0x11a8(SP)							
  nat.go:1024		0x6672f9		90				NOPL									
  nat.go:72		0x6672fa		488d942468070000		LEAQ 0x768(SP), DX							
  nat.go:72		0x667302		be04000000			MOVL $0x4, SI								
  nat.go:72		0x667307		440f113a			MOVUPS X15, 0(DX)							
  nat.go:72		0x66730b		440f117a10			MOVUPS X15, 0x10(DX)							
  nat.go:72		0x667310		440f117a20			MOVUPS X15, 0x20(DX)							
  nat.go:72		0x667315		440f117a30			MOVUPS X15, 0x30(DX)							
  nat.go:72		0x66731a		4883c240			ADDQ $0x40, DX								
  nat.go:72		0x66731e		6690				NOPW									
  nat.go:72		0x667320		ffce				DECL SI									
  nat.go:72		0x667322		75e3				JNE 0x667307								
  nat.go:73		0x667324		66440fd6bc2498110000		MOVQ X15, 0x1198(SP)							
  nat.go:73		0x66732e		48c78424a011000020000000	MOVQ $0x20, 0x11a0(SP)							
  nat.go:73		0x66733a		488d942468070000		LEAQ 0x768(SP), DX							
  nat.go:73		0x667342		4889942490110000		MOVQ DX, 0x1190(SP)							
  nat.go:1024		0x66734a		90				NOPL									
  nat.go:72		0x66734b		488d942468060000		LEAQ 0x668(SP), DX							
  nat.go:72		0x667353		be04000000			MOVL $0x4, SI								
  nat.go:72		0x667358		440f113a			MOVUPS X15, 0(DX)							
  nat.go:72		0x66735c		440f117a10			MOVUPS X15, 0x10(DX)							
  nat.go:72		0x667361		440f117a20			MOVUPS X15, 0x20(DX)							
  nat.go:72		0x667366		440f117a30			MOVUPS X15, 0x30(DX)							
  nat.go:72		0x66736b		4883c240			ADDQ $0x40, DX								
  nat.go:72		0x66736f		ffce				DECL SI									
  nat.go:72		0x667371		75e5				JNE 0x667358								
  nat.go:73		0x667373		66440fd6bc2480110000		MOVQ X15, 0x1180(SP)							
  nat.go:73		0x66737d		48c784248811000020000000	MOVQ $0x20, 0x1188(SP)							
  nat.go:73		0x667389		488d942468060000		LEAQ 0x668(SP), DX							
  nat.go:73		0x667391		4889942478110000		MOVQ DX, 0x1178(SP)							
  nat.go:1025		0x667399		90				NOPL									
  nat.go:72		0x66739a		488d942468050000		LEAQ 0x568(SP), DX							
  nat.go:72		0x6673a2		be04000000			MOVL $0x4, SI								
  nat.go:72		0x6673a7		440f113a			MOVUPS X15, 0(DX)							
  nat.go:72		0x6673ab		440f117a10			MOVUPS X15, 0x10(DX)							
  nat.go:72		0x6673b0		440f117a20			MOVUPS X15, 0x20(DX)							
  nat.go:72		0x6673b5		440f117a30			MOVUPS X15, 0x30(DX)							
  nat.go:72		0x6673ba		4883c240			ADDQ $0x40, DX								
  nat.go:72		0x6673be		6690				NOPW									
  nat.go:72		0x6673c0		ffce				DECL SI									
  nat.go:72		0x6673c2		75e3				JNE 0x6673a7								
  nat.go:73		0x6673c4		66440fd6bc2468110000		MOVQ X15, 0x1168(SP)							
  nat.go:73		0x6673ce		48c784247011000020000000	MOVQ $0x20, 0x1170(SP)							
  nat.go:73		0x6673da		488d942468050000		LEAQ 0x568(SP), DX							
  nat.go:73		0x6673e2		4889942460110000		MOVQ DX, 0x1160(SP)							
  nat.go:1025		0x6673ea		90				NOPL									
  nat.go:72		0x6673eb		488d942468040000		LEAQ 0x468(SP), DX							
  nat.go:72		0x6673f3		be04000000			MOVL $0x4, SI								
  nat.go:72		0x6673f8		440f113a			MOVUPS X15, 0(DX)							
  nat.go:72		0x6673fc		440f117a10			MOVUPS X15, 0x10(DX)							
  nat.go:72		0x667401		440f117a20			MOVUPS X15, 0x20(DX)							
  nat.go:72		0x667406		440f117a30			MOVUPS X15, 0x30(DX)							
  nat.go:72		0x66740b		4883c240			ADDQ $0x40, DX								
  nat.go:72		0x66740f		ffce				DECL SI									
  nat.go:72		0x667411		75e5				JNE 0x6673f8								
  nat.go:73		0x667413		66440fd6bc2450110000		MOVQ X15, 0x1150(SP)							
  nat.go:73		0x66741d		48c784245811000020000000	MOVQ $0x20, 0x1158(SP)							
  nat.go:73		0x667429		488d942468040000		LEAQ 0x468(SP), DX							
  nat.go:73		0x667431		4889942448110000		MOVQ DX, 0x1148(SP)							
  nat.go:1025		0x667439		90				NOPL									
  nat.go:72		0x66743a		488d942468030000		LEAQ 0x368(SP), DX							
  nat.go:72		0x667442		be04000000			MOVL $0x4, SI								
  nat.go:72		0x667447		440f113a			MOVUPS X15, 0(DX)							
  nat.go:72		0x66744b		440f117a10			MOVUPS X15, 0x10(DX)							
  nat.go:72		0x667450		440f117a20			MOVUPS X15, 0x20(DX)							
  nat.go:72		0x667455		440f117a30			MOVUPS X15, 0x30(DX)							
  nat.go:72		0x66745a		4883c240			ADDQ $0x40, DX								
  nat.go:72		0x66745e		6690				NOPW									
  nat.go:72		0x667460		ffce				DECL SI									
  nat.go:72		0x667462		75e3				JNE 0x667447								
  nat.go:73		0x667464		66440fd6bc2438110000		MOVQ X15, 0x1138(SP)							
  nat.go:73		0x66746e		48c784244011000020000000	MOVQ $0x20, 0x1140(SP)							
  nat.go:73		0x66747a		488d942468030000		LEAQ 0x368(SP), DX							
  nat.go:73		0x667482		4889942430110000		MOVQ DX, 0x1130(SP)							
  nat.go:1025		0x66748a		90				NOPL									
  nat.go:72		0x66748b		488d942468020000		LEAQ 0x268(SP), DX							
  nat.go:72		0x667493		be04000000			MOVL $0x4, SI								
  nat.go:72		0x667498		440f113a			MOVUPS X15, 0(DX)							
  nat.go:72		0x66749c		440f117a10			MOVUPS X15, 0x10(DX)							
  nat.go:72		0x6674a1		440f117a20			MOVUPS X15, 0x20(DX)							
  nat.go:72		0x6674a6		440f117a30			MOVUPS X15, 0x30(DX)							
  nat.go:72		0x6674ab		4883c240			ADDQ $0x40, DX								
  nat.go:72		0x6674af		ffce				DECL SI									
  nat.go:72		0x6674b1		75e5				JNE 0x667498								
  nat.go:73		0x6674b3		66440fd6bc2420110000		MOVQ X15, 0x1120(SP)							
  nat.go:73		0x6674bd		48c784242811000020000000	MOVQ $0x20, 0x1128(SP)							
  nat.go:73		0x6674c9		488d942468020000		LEAQ 0x268(SP), DX							
  nat.go:73		0x6674d1		4889942418110000		MOVQ DX, 0x1118(SP)							
  nat.go:1025		0x6674d9		90				NOPL									
  nat.go:72		0x6674da		488d942468010000		LEAQ 0x168(SP), DX							
  nat.go:72		0x6674e2		be04000000			MOVL $0x4, SI								
  nat.go:72		0x6674e7		440f113a			MOVUPS X15, 0(DX)							
  nat.go:72		0x6674eb		440f117a10			MOVUPS X15, 0x10(DX)							
  nat.go:72		0x6674f0		440f117a20			MOVUPS X15, 0x20(DX)							
  nat.go:72		0x6674f5		440f117a30			MOVUPS X15, 0x30(DX)							
  nat.go:72		0x6674fa		4883c240			ADDQ $0x40, DX								
  nat.go:72		0x6674fe		6690				NOPW									
  nat.go:72		0x667500		ffce				DECL SI									
  nat.go:72		0x667502		75e3				JNE 0x6674e7								
  nat.go:73		0x667504		66440fd6bc2408110000		MOVQ X15, 0x1108(SP)							
  nat.go:73		0x66750e		48c784241011000020000000	MOVQ $0x20, 0x1110(SP)							
  nat.go:73		0x66751a		488d942468010000		LEAQ 0x168(SP), DX							
  nat.go:73		0x667522		4889942400110000		MOVQ DX, 0x1100(SP)							
  nat.go:1021		0x66752a		488d942450120000		LEAQ 0x1250(SP), DX							
  nat.go:1021		0x667532		4889942470100000		MOVQ DX, 0x1070(SP)							
  nat.go:1021		0x66753a		488d942438120000		LEAQ 0x1238(SP), DX							
  nat.go:1021		0x667542		4889942478100000		MOVQ DX, 0x1078(SP)							
  nat.go:1021		0x66754a		488d942420120000		LEAQ 0x1220(SP), DX							
  nat.go:1021		0x667552		4889942480100000		MOVQ DX, 0x1080(SP)							
  nat.go:1021		0x66755a		488d942408120000		LEAQ 0x1208(SP), DX							
  nat.go:1021		0x667562		4889942488100000		MOVQ DX, 0x1088(SP)							
  nat.go:1021		0x66756a		488d9424f0110000		LEAQ 0x11f0(SP), DX							
  nat.go:1021		0x667572		4889942490100000		MOVQ DX, 0x1090(SP)							
  nat.go:1021		0x66757a		488d9424d8110000		LEAQ 0x11d8(SP), DX							
  nat.go:1021		0x667582		4889942498100000		MOVQ DX, 0x1098(SP)							
  nat.go:1021		0x66758a		488d9424c0110000		LEAQ 0x11c0(SP), DX							
  nat.go:1021		0x667592		48899424a0100000		MOVQ DX, 0x10a0(SP)							
  nat.go:1021		0x66759a		488d9424a8110000		LEAQ 0x11a8(SP), DX							
  nat.go:1021		0x6675a2		48899424a8100000		MOVQ DX, 0x10a8(SP)							
  nat.go:1021		0x6675aa		488d942490110000		LEAQ 0x1190(SP), DX							
  nat.go:1021		0x6675b2		48899424b0100000		MOVQ DX, 0x10b0(SP)							
  nat.go:1021		0x6675ba		488d942478110000		LEAQ 0x1178(SP), DX							
  nat.go:1021		0x6675c2		48899424b8100000		MOVQ DX, 0x10b8(SP)							
  nat.go:1021		0x6675ca		488d942460110000		LEAQ 0x1160(SP), DX							
  nat.go:1021		0x6675d2		48899424c0100000		MOVQ DX, 0x10c0(SP)							
  nat.go:1021		0x6675da		488d942448110000		LEAQ 0x1148(SP), DX							
  nat.go:1021		0x6675e2		48899424c8100000		MOVQ DX, 0x10c8(SP)							
  nat.go:1021		0x6675ea		488d942430110000		LEAQ 0x1130(SP), DX							
  nat.go:1021		0x6675f2		48899424d0100000		MOVQ DX, 0x10d0(SP)							
  nat.go:1021		0x6675fa		488d942418110000		LEAQ 0x1118(SP), DX							
  nat.go:1021		0x667602		48899424d8100000		MOVQ DX, 0x10d8(SP)							
  nat.go:1021		0x66760a		488d942400110000		LEAQ 0x1100(SP), DX							
  nat.go:1021		0x667612		48899424e0100000		MOVQ DX, 0x10e0(SP)							
  nat.go:1027		0x66761a		488b942470100000		MOVQ 0x1070(SP), DX							
  nat.go:1027		0x667622		4889942468100000		MOVQ DX, 0x1068(SP)							
  nat.go:133		0x66762a		488b7308			MOVQ 0x8(BX), SI							
  nat.go:133		0x66762e		4889742450			MOVQ SI, 0x50(SP)							
  nat.go:95		0x667633		4c8b4a10			MOVQ 0x10(DX), R9							
  nat.go:95		0x667637		4939f1				CMPQ R9, SI								
  nat.go:95		0x66763a		7c5b				JL 0x667697								
  nat.go:95		0x66763c		4c8b5208			MOVQ 0x8(DX), R10							
  nat.go:100		0x667640		4939f2				CMPQ R10, SI								
  nat.go:100		0x667643		4989f3				MOVQ SI, R11								
  nat.go:100		0x667646		490f4ff2			CMOVG R10, SI								
  nat.go:100		0x66764a		4939f1				CMPQ R9, SI								
  nat.go:100		0x66764d		0f828b050000			JB 0x667bde								
  nat.go:100		0x667653		4885f6				TESTQ SI, SI								
  nat.go:100		0x667656		742c				JE 0x667684								
  nat.go:95		0x667658		488b02				MOVQ 0(DX), AX								
  nat.go:100		0x66765b		48c1e603			SHLQ $0x3, SI								
  nat.go:100		0x66765f		4889f3				MOVQ SI, BX								
  nat.go:100		0x667662		e8f996e2ff			CALL runtime.memclrNoHeapPointers(SB)					
  nat.go:101		0x667667		488b942468100000		MOVQ 0x1068(SP), DX							
  nat.go:134		0x66766f		488b9c2480120000		MOVQ 0x1280(SP), BX							
  nat.go:767		0x667677		4c8b8424a0120000		MOVQ 0x12a0(SP), R8							
  nat.go:101		0x66767f		4c8b5c2450			MOVQ 0x50(SP), R11							
  nat.go:101		0x667684		488b7210			MOVQ 0x10(DX), SI							
  nat.go:101		0x667688		4c39de				CMPQ SI, R11								
  nat.go:101		0x66768b		0f8248050000			JB 0x667bd9								
  nat.go:101		0x667691		4c895a08			MOVQ R11, 0x8(DX)							
  nat.go:133		0x667695		eb55				JMP 0x6676ec								
  nat.go:96		0x667697		488d05a2212f00			LEAQ 0x2f21a2(IP), AX							
  nat.go:96		0x66769e		4889f3				MOVQ SI, BX								
  nat.go:96		0x6676a1		4889d9				MOVQ BX, CX								
  nat.go:96		0x6676a4		e8b744e2ff			CALL runtime.makeslice(SB)						
  nat.go:96		0x6676a9		488b542450			MOVQ 0x50(SP), DX							
  nat.go:96		0x6676ae		488b9c2468100000		MOVQ 0x1068(SP), BX							
  nat.go:96		0x6676b6		48895308			MOVQ DX, 0x8(BX)							
  nat.go:96		0x6676ba		48895310			MOVQ DX, 0x10(BX)							
  nat.go:96		0x6676be		833dbbec380000			CMPL runtime.writeBarrier(SB), $0x0					
  nat.go:96		0x6676c5		740f				JE 0x6676d6								
  nat.go:96		0x6676c7		488b13				MOVQ 0(BX), DX								
  nat.go:96		0x6676ca		e85192e2ff			CALL runtime.gcWriteBarrier2(SB)					
  nat.go:96		0x6676cf		498903				MOVQ AX, 0(R11)								
  nat.go:96		0x6676d2		49895308			MOVQ DX, 0x8(R11)							
  nat.go:96		0x6676d6		488903				MOVQ AX, 0(BX)								
  nat.go:134		0x6676d9		4889da				MOVQ BX, DX								
  nat.go:134		0x6676dc		488b9c2480120000		MOVQ 0x1280(SP), BX							
  nat.go:767		0x6676e4		4c8b8424a0120000		MOVQ 0x12a0(SP), R8							
  nat.go:134		0x6676ec		488b32				MOVQ 0(DX), SI								
  nat.go:134		0x6676ef		4c8b4a08			MOVQ 0x8(DX), R9							
  nat.go:134		0x6676f3		4c8b13				MOVQ 0(BX), R10								
  nat.go:134		0x6676f6		4c8b5b08			MOVQ 0x8(BX), R11							
  nat.go:134		0x6676fa		4d39d9				CMPQ R9, R11								
  nat.go:134		0x6676fd		4d0f4fcb			CMOVG R11, R9								
  nat.go:134		0x667701		4c39d6				CMPQ SI, R10								
  nat.go:134		0x667704		7422				JE 0x667728								
  nat.go:134		0x667706		49c1e103			SHLQ $0x3, R9								
  nat.go:134		0x66770a		4889f0				MOVQ SI, AX								
  nat.go:134		0x66770d		4c89d3				MOVQ R10, BX								
  nat.go:134		0x667710		4c89c9				MOVQ R9, CX								
  nat.go:134		0x667713		e84899e2ff			CALL runtime.memmove(SB)						
  nat.go:767		0x667718		488b942468100000		MOVQ 0x1068(SP), DX							
  nat.go:767		0x667720		4c8b8424a0120000		MOVQ 0x12a0(SP), R8							
  nat.go:767		0x667728		498b4818			MOVQ 0x18(R8), CX							
  nat.go:767		0x66772c		4889d0				MOVQ DX, AX								
  nat.go:767		0x66772f		4889c3				MOVQ AX, BX								
  nat.go:767		0x667732		4c89c7				MOVQ R8, DI								
  nat.go:767		0x667735		e8a6e5ffff			CALL crypto/internal/fips140/bigmod.(*Nat).montgomeryMul(SB)		
  nat.go:767		0x66773a		b801000000			MOVL $0x1, AX								
  nat.go:767		0x66773f		90				NOPL									
  nat.go:1027		0x667740		eb35				JMP 0x667777								
  nat.go:1028		0x667742		4889442440			MOVQ AX, 0x40(SP)							
  nat.go:1029		0x667747		488b94c470100000		MOVQ 0x1070(SP)(AX*8), DX						
  nat.go:1029		0x66774f		488b9cc468100000		MOVQ 0x1068(SP)(AX*8), BX						
  nat.go:1029		0x667757		488b8c2470100000		MOVQ 0x1070(SP), CX							
  nat.go:1029		0x66775f		4889d0				MOVQ DX, AX								
  nat.go:1029		0x667762		488bbc24a0120000		MOVQ 0x12a0(SP), DI							
  nat.go:1029		0x66776a		e871e5ffff			CALL crypto/internal/fips140/bigmod.(*Nat).montgomeryMul(SB)		
  nat.go:1028		0x66776f		488b442440			MOVQ 0x40(SP), AX							
  nat.go:1028		0x667774		48ffc0				INCQ AX									
  nat.go:1028		0x667777		4883f80f			CMPQ AX, $0xf								
  nat.go:1028		0x66777b		7cc5				JL 0x667742								
  nat.go:696		0x66777d		488bbc24a0120000		MOVQ 0x12a0(SP), DI							
  nat.go:696		0x667785		488b17				MOVQ 0(DI), DX								
  nat.go:696		0x667788		488b5a08			MOVQ 0x8(DX), BX							
  nat.go:696		0x66778c		48895c2450			MOVQ BX, 0x50(SP)							
  nat.go:95		0x667791		488b842478120000		MOVQ 0x1278(SP), AX							
  nat.go:95		0x667799		488b5010			MOVQ 0x10(AX), DX							
  nat.go:1032		0x66779d		90				NOPL									
  nat.go:1032		0x66779e		6690				NOPW									
  nat.go:95		0x6677a0		4839da				CMPQ DX, BX								
  nat.go:95		0x6677a3		7c57				JL 0x6677fc								
  nat.go:95		0x6677a5		488b7008			MOVQ 0x8(AX), SI							
  nat.go:100		0x6677a9		4839de				CMPQ SI, BX								
  nat.go:100		0x6677ac		4989d8				MOVQ BX, R8								
  nat.go:100		0x6677af		4c0f4fc6			CMOVG SI, R8								
  nat.go:100		0x6677b3		4c39c2				CMPQ DX, R8								
  nat.go:100		0x6677b6		0f8218040000			JB 0x667bd4								
  nat.go:100		0x6677bc		0f1f4000			NOPL 0(AX)								
  nat.go:100		0x6677c0		4d85c0				TESTQ R8, R8								
  nat.go:100		0x6677c3		7424				JE 0x6677e9								
  nat.go:95		0x6677c5		488b00				MOVQ 0(AX), AX								
  nat.go:100		0x6677c8		49c1e003			SHLQ $0x3, R8								
  nat.go:100		0x6677cc		4c89c3				MOVQ R8, BX								
  nat.go:100		0x6677cf		e88c95e2ff			CALL runtime.memclrNoHeapPointers(SB)					
  nat.go:101		0x6677d4		488b842478120000		MOVQ 0x1278(SP), AX							
  nat.go:101		0x6677dc		488b5c2450			MOVQ 0x50(SP), BX							
  nat.go:767		0x6677e1		488bbc24a0120000		MOVQ 0x12a0(SP), DI							
  nat.go:101		0x6677e9		488b5010			MOVQ 0x10(AX), DX							
  nat.go:101		0x6677ed		4839da				CMPQ DX, BX								
  nat.go:101		0x6677f0		0f82d9030000			JB 0x667bcf								
  nat.go:101		0x6677f6		48895808			MOVQ BX, 0x8(AX)							
  nat.go:696		0x6677fa		eb4a				JMP 0x667846								
  nat.go:96		0x6677fc		488d053d202f00			LEAQ 0x2f203d(IP), AX							
  nat.go:96		0x667803		4889d9				MOVQ BX, CX								
  nat.go:96		0x667806		e85543e2ff			CALL runtime.makeslice(SB)						
  nat.go:96		0x66780b		488b542450			MOVQ 0x50(SP), DX							
  nat.go:96		0x667810		488b9c2478120000		MOVQ 0x1278(SP), BX							
  nat.go:96		0x667818		48895308			MOVQ DX, 0x8(BX)							
  nat.go:96		0x66781c		48895310			MOVQ DX, 0x10(BX)							
  nat.go:96		0x667820		833d59eb380000			CMPL runtime.writeBarrier(SB), $0x0					
  nat.go:96		0x667827		740f				JE 0x667838								
  nat.go:96		0x667829		488b13				MOVQ 0(BX), DX								
  nat.go:96		0x66782c		e8ef90e2ff			CALL runtime.gcWriteBarrier2(SB)					
  nat.go:96		0x667831		498903				MOVQ AX, 0(R11)								
  nat.go:96		0x667834		49895308			MOVQ DX, 0x8(R11)							
  nat.go:96		0x667838		488903				MOVQ AX, 0(BX)								
  nat.go:1033		0x66783b		4889d8				MOVQ BX, AX								
  nat.go:767		0x66783e		488bbc24a0120000		MOVQ 0x12a0(SP), DI							
  nat.go:1033		0x667846		4883780800			CMPQ 0x8(AX), $0x0							
  nat.go:1033		0x66784b		0f8679030000			JBE 0x667bca								
  nat.go:1033		0x667851		488b10				MOVQ 0(AX), DX								
  nat.go:1033		0x667854		48c70201000000			MOVQ $0x1, 0(DX)							
  nat.go:767		0x66785b		488b4f18			MOVQ 0x18(DI), CX							
  nat.go:1034		0x66785f		90				NOPL									
  nat.go:767		0x667860		4889c3				MOVQ AX, BX								
  nat.go:767		0x667863		e878e4ffff			CALL crypto/internal/fips140/bigmod.(*Nat).montgomeryMul(SB)		
  nat.go:1035		0x667868		90				NOPL									
  nat.go:72		0x667869		488d7c2468			LEAQ 0x68(SP), DI							
  nat.go:72		0x66786e		ba04000000			MOVL $0x4, DX								
  nat.go:72		0x667873		440f113f			MOVUPS X15, 0(DI)							
  nat.go:72		0x667877		440f117f10			MOVUPS X15, 0x10(DI)							
  nat.go:72		0x66787c		440f117f20			MOVUPS X15, 0x20(DI)							
  nat.go:72		0x667881		440f117f30			MOVUPS X15, 0x30(DI)							
  nat.go:72		0x667886		4883c740			ADDQ $0x40, DI								
  nat.go:72		0x66788a		ffca				DECL DX									
  nat.go:72		0x66788c		75e5				JNE 0x667873								
  nat.go:73		0x66788e		66440fd6bc24f0100000		MOVQ X15, 0x10f0(SP)							
  nat.go:73		0x667898		48c78424f810000020000000	MOVQ $0x20, 0x10f8(SP)							
  nat.go:73		0x6678a4		488d7c2468			LEAQ 0x68(SP), DI							
  nat.go:73		0x6678a9		4889bc24e8100000		MOVQ DI, 0x10e8(SP)							
  nat.go:689		0x6678b1		488b9c24a0120000		MOVQ 0x12a0(SP), BX							
  nat.go:689		0x6678b9		488b13				MOVQ 0(BX), DX								
  nat.go:689		0x6678bc		488b5208			MOVQ 0x8(DX), DX							
  nat.go:1035		0x6678c0		90				NOPL									
  nat.go:78		0x6678c1		4885d2				TESTQ DX, DX								
  nat.go:78		0x6678c4		0f8ce0020000			JL 0x667baa								
  nat.go:689		0x6678ca		4889542430			MOVQ DX, 0x30(SP)							
  nat.go:81		0x6678cf		4883fa20			CMPQ DX, $0x20								
  nat.go:81		0x6678d3		7f3e				JG 0x667913								
  nat.go:78		0x6678d5		4885d2				TESTQ DX, DX								
  nat.go:88		0x6678d8		741e				JE 0x6678f8								
  nat.go:88		0x6678da		4889d3				MOVQ DX, BX								
  nat.go:88		0x6678dd		48c1e303			SHLQ $0x3, BX								
  nat.go:88		0x6678e1		488d442468			LEAQ 0x68(SP), AX							
  nat.go:88		0x6678e6		e87594e2ff			CALL runtime.memclrNoHeapPointers(SB)					
  nat.go:89		0x6678eb		488b542430			MOVQ 0x30(SP), DX							
  nat.go:1040		0x6678f0		488b9c24a0120000		MOVQ 0x12a0(SP), BX							
  nat.go:89		0x6678f8		488bb424f8100000		MOVQ 0x10f8(SP), SI							
  nat.go:89		0x667900		4839d6				CMPQ SI, DX								
  nat.go:89		0x667903		0f829c020000			JB 0x667ba5								
  nat.go:89		0x667909		48899424f0100000		MOVQ DX, 0x10f0(SP)							
  nat.go:689		0x667911		eb37				JMP 0x66794a								
  nat.go:82		0x667913		488d05261f2f00			LEAQ 0x2f1f26(IP), AX							
  nat.go:82		0x66791a		4889d3				MOVQ DX, BX								
  nat.go:82		0x66791d		31c9				XORL CX, CX								
  nat.go:82		0x66791f		90				NOPL									
  nat.go:82		0x667920		e89b0ce0ff			CALL runtime.makeslicecopy(SB)						
  nat.go:84		0x667925		488b542430			MOVQ 0x30(SP), DX							
  nat.go:84		0x66792a		48899424f0100000		MOVQ DX, 0x10f0(SP)							
  nat.go:84		0x667932		48899424f8100000		MOVQ DX, 0x10f8(SP)							
  nat.go:84		0x66793a		48898424e8100000		MOVQ AX, 0x10e8(SP)							
  nat.go:1040		0x667942		488b9c24a0120000		MOVQ 0x12a0(SP), BX							
  nat.go:1036		0x66794a		31d2				XORL DX, DX								
  nat.go:1036		0x66794c		488bb42490120000		MOVQ 0x1290(SP), SI							
  nat.go:1036		0x667954		4c8b842488120000		MOVQ 0x1288(SP), R8							
  nat.go:1036		0x66795c		488b842478120000		MOVQ 0x1278(SP), AX							
  nat.go:1036		0x667964		eb1a				JMP 0x667980								
  nat.go:1036		0x667966		488b542450			MOVQ 0x50(SP), DX							
  nat.go:1036		0x66796b		48ffc2				INCQ DX									
  nat.go:1036		0x66796e		488bb42490120000		MOVQ 0x1290(SP), SI							
  nat.go:1036		0x667976		4c8b842488120000		MOVQ 0x1288(SP), R8							
  nat.go:1036		0x66797e		6690				NOPW									
  nat.go:1036		0x667980		4839d6				CMPQ SI, DX								
  nat.go:1036		0x667983		0f8e02020000			JLE 0x667b8b								
  nat.go:1036		0x667989		4889542450			MOVQ DX, 0x50(SP)							
  nat.go:1036		0x66798e		450fb60c10			MOVZX 0(R8)(DX*1), R9							
  nat.go:1036		0x667993		44884c2427			MOVB R9, 0x27(SP)							
  nat.go:1037		0x667998		4c8d542458			LEAQ 0x58(SP), R10							
  nat.go:1037		0x66799d		450f113a			MOVUPS X15, 0(R10)							
  nat.go:1037		0x6679a1		48c744245804000000		MOVQ $0x4, 0x58(SP)							
  nat.go:1037		0x6679aa		31c9				XORL CX, CX								
  nat.go:1037		0x6679ac		eb12				JMP 0x6679c0								
  nat.go:1037		0x6679ae		488b4c2448			MOVQ 0x48(SP), CX							
  nat.go:1037		0x6679b3		48ffc1				INCQ CX									
  nat.go:1040		0x6679b6		488b9c24a0120000		MOVQ 0x12a0(SP), BX							
  nat.go:1040		0x6679be		6690				NOPW									
  nat.go:1037		0x6679c0		4883f902			CMPQ CX, $0x2								
  nat.go:1037		0x6679c4		7da0				JGE 0x667966								
  nat.go:1037		0x6679c6		48894c2448			MOVQ CX, 0x48(SP)							
  nat.go:1037		0x6679cb		488b54cc58			MOVQ 0x58(SP)(CX*8), DX							
  nat.go:1037		0x6679d0		4889542438			MOVQ DX, 0x38(SP)							
  nat.go:1040		0x6679d5		4889c1				MOVQ AX, CX								
  nat.go:1040		0x6679d8		4889df				MOVQ BX, DI								
  nat.go:1040		0x6679db		4889c3				MOVQ AX, BX								
  nat.go:1040		0x6679de		6690				NOPW									
  nat.go:1040		0x6679e0		e8fbe2ffff			CALL crypto/internal/fips140/bigmod.(*Nat).montgomeryMul(SB)		
  nat.go:1041		0x6679e5		488b842478120000		MOVQ 0x1278(SP), AX							
  nat.go:1041		0x6679ed		4889c3				MOVQ AX, BX								
  nat.go:1041		0x6679f0		4889c1				MOVQ AX, CX								
  nat.go:1041		0x6679f3		488bbc24a0120000		MOVQ 0x12a0(SP), DI							
  nat.go:1041		0x6679fb		0f1f440000			NOPL 0(AX)(AX*1)							
  nat.go:1041		0x667a00		e8dbe2ffff			CALL crypto/internal/fips140/bigmod.(*Nat).montgomeryMul(SB)		
  nat.go:1042		0x667a05		488b842478120000		MOVQ 0x1278(SP), AX							
  nat.go:1042		0x667a0d		4889c3				MOVQ AX, BX								
  nat.go:1042		0x667a10		4889c1				MOVQ AX, CX								
  nat.go:1042		0x667a13		488bbc24a0120000		MOVQ 0x12a0(SP), DI							
  nat.go:1042		0x667a1b		0f1f440000			NOPL 0(AX)(AX*1)							
  nat.go:1042		0x667a20		e8bbe2ffff			CALL crypto/internal/fips140/bigmod.(*Nat).montgomeryMul(SB)		
  nat.go:1043		0x667a25		488b842478120000		MOVQ 0x1278(SP), AX							
  nat.go:1043		0x667a2d		4889c3				MOVQ AX, BX								
  nat.go:1043		0x667a30		4889c1				MOVQ AX, CX								
  nat.go:1043		0x667a33		488bbc24a0120000		MOVQ 0x12a0(SP), DI							
  nat.go:1043		0x667a3b		0f1f440000			NOPL 0(AX)(AX*1)							
  nat.go:1043		0x667a40		e89be2ffff			CALL crypto/internal/fips140/bigmod.(*Nat).montgomeryMul(SB)		
  nat.go:1046		0x667a45		488b4c2438			MOVQ 0x38(SP), CX							
  nat.go:1046		0x667a4a		4885c9				TESTQ CX, CX								
  nat.go:1046		0x667a4d		0f8c4d010000			JL 0x667ba0								
  nat.go:1046		0x667a53		0fb6542427			MOVZX 0x27(SP), DX							
  nat.go:1046		0x667a58		d2ea				SHRL CL, DL								
  nat.go:1046		0x667a5a		4883f908			CMPQ CX, $0x8								
  nat.go:1046		0x667a5e		4519c0				SBBL R8, R8								
  nat.go:1046		0x667a61		4421c2				ANDL R8, DX								
  nat.go:1046		0x667a64		83e20f				ANDL $0xf, DX								
  nat.go:1047		0x667a67		4531c0				XORL R8, R8								
  nat.go:1047		0x667a6a		eb06				JMP 0x667a72								
  nat.go:47		0x667a6c		4c89e2				MOVQ R12, DX								
  nat.go:1047		0x667a6f		4d89e8				MOVQ R13, R8								
  nat.go:1047		0x667a72		4983f80f			CMPQ R8, $0xf								
  nat.go:1047		0x667a76		7d78				JGE 0x667af0								
  nat.go:1048		0x667a78		4d8d4801			LEAQ 0x1(R8), R9							
  nat.go:1048		0x667a7c		4e8b84c470100000		MOVQ 0x1070(SP)(R8*8), R8						
  nat.go:363		0x667a84		4c8b9424f0100000		MOVQ 0x10f0(SP), R10							
  nat.go:364		0x667a8c		4d8b5810			MOVQ 0x10(R8), R11							
  nat.go:47		0x667a90		4989d4				MOVQ DX, R12								
  nat.go:47		0x667a93		4c29ca				SUBQ R9, DX								
  nat.go:47		0x667a96		0f92c2				SETB DL									
  nat.go:47		0x667a99		0fb6d2				MOVZX DL, DX								
  nat.go:48		0x667a9c		4d89cd				MOVQ R9, R13								
  nat.go:48		0x667a9f		4d29e1				SUBQ R12, R9								
  nat.go:48		0x667aa2		410f92c1			SETB R9									
  nat.go:48		0x667aa6		450fb6c9			MOVZX R9, R9								
  nat.go:49		0x667aaa		4909d1				ORQ DX, R9								
  nat.go:364		0x667aad		4d39d3				CMPQ R11, R10								
  nat.go:364		0x667ab0		0f82e1000000			JB 0x667b97								
  nat.go:35		0x667ab6		4983f101			XORQ $0x1, R9								
  nat.go:363		0x667aba		488b9424e8100000		MOVQ 0x10e8(SP), DX							
  nat.go:364		0x667ac2		4d8b00				MOVQ 0(R8), R8								
  nat.go:366		0x667ac5		90				NOPL									
  nat.go:41		0x667ac6		49f7d9				NEGQ R9									
  nat.go:367		0x667ac9		4531db				XORL R11, R11								
  nat.go:367		0x667acc		eb18				JMP 0x667ae6								
  nat.go:368		0x667ace		4e8b3cda			MOVQ 0(DX)(R11*8), R15							
  nat.go:368		0x667ad2		4b8b04d8			MOVQ 0(R8)(R11*8), AX							
  nat.go:368		0x667ad6		4c31f8				XORQ R15, AX								
  nat.go:368		0x667ad9		4c21c8				ANDQ R9, AX								
  nat.go:368		0x667adc		4931c7				XORQ AX, R15								
  nat.go:368		0x667adf		4e893cda			MOVQ R15, 0(DX)(R11*8)							
  nat.go:367		0x667ae3		49ffc3				INCQ R11								
  nat.go:367		0x667ae6		4d39d3				CMPQ R11, R10								
  nat.go:367		0x667ae9		7ce3				JL 0x667ace								
  nat.go:367		0x667aeb		e97cffffff			JMP 0x667a6c								
  nat.go:1046		0x667af0		4889542428			MOVQ DX, 0x28(SP)							
  nat.go:1052		0x667af5		488d8424e8100000		LEAQ 0x10e8(SP), AX							
  nat.go:1052		0x667afd		488b9c2478120000		MOVQ 0x1278(SP), BX							
  nat.go:1052		0x667b05		4889c1				MOVQ AX, CX								
  nat.go:1052		0x667b08		488bbc24a0120000		MOVQ 0x12a0(SP), DI							
  nat.go:1052		0x667b10		e8cbe1ffff			CALL crypto/internal/fips140/bigmod.(*Nat).montgomeryMul(SB)		
  nat.go:363		0x667b15		488b842478120000		MOVQ 0x1278(SP), AX							
  nat.go:363		0x667b1d		488b5008			MOVQ 0x8(AX), DX							
  nat.go:364		0x667b21		488bb424f8100000		MOVQ 0x10f8(SP), SI							
  nat.go:1053		0x667b29		90				NOPL									
  nat.go:1053		0x667b2a		90				NOPL									
  nat.go:47		0x667b2b		4c8b442428			MOVQ 0x28(SP), R8							
  nat.go:47		0x667b30		4d89c1				MOVQ R8, R9								
  nat.go:47		0x667b33		4983e800			SUBQ $0x0, R8								
  nat.go:47		0x667b37		410f92c0			SETB R8									
  nat.go:47		0x667b3b		450fb6c0			MOVZX R8, R8								
  nat.go:48		0x667b3f		4531d2				XORL R10, R10								
  nat.go:48		0x667b42		4d29ca				SUBQ R9, R10								
  nat.go:48		0x667b45		410f92c1			SETB R9									
  nat.go:48		0x667b49		450fb6c9			MOVZX R9, R9								
  nat.go:49		0x667b4d		4d09c1				ORQ R8, R9								
  nat.go:364		0x667b50		4839d6				CMPQ SI, DX								
  nat.go:364		0x667b53		723d				JB 0x667b92								
  nat.go:363		0x667b55		488b30				MOVQ 0(AX), SI								
  nat.go:364		0x667b58		4c8b8424e8100000		MOVQ 0x10e8(SP), R8							
  nat.go:366		0x667b60		90				NOPL									
  nat.go:41		0x667b61		49f7d9				NEGQ R9									
  nat.go:367		0x667b64		4531d2				XORL R10, R10								
  nat.go:367		0x667b67		eb18				JMP 0x667b81								
  nat.go:368		0x667b69		4e8b1cd6			MOVQ 0(SI)(R10*8), R11							
  nat.go:368		0x667b6d		4f8b24d0			MOVQ 0(R8)(R10*8), R12							
  nat.go:368		0x667b71		4d31dc				XORQ R11, R12								
  nat.go:368		0x667b74		4d21cc				ANDQ R9, R12								
  nat.go:368		0x667b77		4d31e3				XORQ R12, R11								
  nat.go:368		0x667b7a		4e891cd6			MOVQ R11, 0(SI)(R10*8)							
  nat.go:367		0x667b7e		49ffc2				INCQ R10								
  nat.go:367		0x667b81		4939d2				CMPQ R10, DX								
  nat.go:367		0x667b84		7ce3				JL 0x667b69								
  nat.go:367		0x667b86		e923feffff			JMP 0x6679ae								
  nat.go:1057		0x667b8b		e8b0dfffff			CALL crypto/internal/fips140/bigmod.(*Nat).montgomeryReduction(SB)	
  nat.go:1057		0x667b90		c9				LEAVE									
  nat.go:1057		0x667b91		c3				RET									
  nat.go:364		0x667b92		e82991e2ff			CALL runtime.panicBounds(SB)						
  nat.go:364		0x667b97		e82491e2ff			CALL runtime.panicBounds(SB)						
  nat.go:364		0x667b9c		0f1f4000			NOPL 0(AX)								
  nat.go:1046		0x667ba0		e8bb53deff			CALL runtime.panicshift(SB)						
  nat.go:89		0x667ba5		e81691e2ff			CALL runtime.panicBounds(SB)						
  nat.go:79		0x667baa		488d0507060600			LEAQ 0x60607(IP), AX							
  nat.go:79		0x667bb1		bb25000000			MOVL $0x25, BX								
  nat.go:79		0x667bb6		e8a5fce1ff			CALL runtime.convTstring(SB)						
  nat.go:79		0x667bbb		4889c3				MOVQ AX, BX								
  nat.go:79		0x667bbe		488d05fb192f00			LEAQ 0x2f19fb(IP), AX							
  nat.go:79		0x667bc5		e8961ae2ff			CALL runtime.gopanic(SB)						
  nat.go:1033		0x667bca		e8f190e2ff			CALL runtime.panicBounds(SB)						
  nat.go:101		0x667bcf		e8ec90e2ff			CALL runtime.panicBounds(SB)						
  nat.go:100		0x667bd4		e8e790e2ff			CALL runtime.panicBounds(SB)						
  nat.go:101		0x667bd9		e8e290e2ff			CALL runtime.panicBounds(SB)						
  nat.go:100		0x667bde		6690				NOPW									
  nat.go:100		0x667be0		e8db90e2ff			CALL runtime.panicBounds(SB)						
  nat.go:1013		0x667be5		488d0502f40500			LEAQ 0x5f402(IP), AX							
  nat.go:1013		0x667bec		bb23000000			MOVL $0x23, BX								
  nat.go:1013		0x667bf1		e86afce1ff			CALL runtime.convTstring(SB)						
  nat.go:1013		0x667bf6		4889c3				MOVQ AX, BX								
  nat.go:1013		0x667bf9		488d05c0192f00			LEAQ 0x2f19c0(IP), AX							
  nat.go:1013		0x667c00		e85b1ae2ff			CALL runtime.gopanic(SB)						
  nat.go:1013		0x667c05		90				NOPL									
  nat.go:1011		0x667c06		4889442408			MOVQ AX, 0x8(SP)							
  nat.go:1011		0x667c0b		48895c2410			MOVQ BX, 0x10(SP)							
  nat.go:1011		0x667c10		48894c2418			MOVQ CX, 0x18(SP)							
  nat.go:1011		0x667c15		48897c2420			MOVQ DI, 0x20(SP)							
  nat.go:1011		0x667c1a		4889742428			MOVQ SI, 0x28(SP)							
  nat.go:1011		0x667c1f		4c89442430			MOVQ R8, 0x30(SP)							
  nat.go:1011		0x667c24		e8d772e2ff			CALL runtime.morestack_noctxt.abi0(SB)					
  nat.go:1011		0x667c29		488b442408			MOVQ 0x8(SP), AX							
  nat.go:1011		0x667c2e		488b5c2410			MOVQ 0x10(SP), BX							
  nat.go:1011		0x667c33		488b4c2418			MOVQ 0x18(SP), CX							
  nat.go:1011		0x667c38		488b7c2420			MOVQ 0x20(SP), DI							
  nat.go:1011		0x667c3d		488b742428			MOVQ 0x28(SP), SI							
  nat.go:1011		0x667c42		4c8b442430			MOVQ 0x30(SP), R8							
  nat.go:1011		0x667c47		e9d4f3ffff			JMP crypto/internal/fips140/bigmod.(*Nat).Exp(SB)			

TEXT crypto/internal/fips140/bigmod.(*Nat).ExpShortVarTime(SB) /home/exedev/go-crypto/src/crypto/internal/fips140/bigmod/nat.go
  nat.go:1066		0x667c60		4c8da42428ffffff		LEAQ 0xffffff28(SP), R12						
  nat.go:1066		0x667c68		4d3b6610			CMPQ R12, 0x10(R14)							
  nat.go:1066		0x667c6c		0f8663030000			JBE 0x667fd5								
  nat.go:1066		0x667c72		55				PUSHQ BP								
  nat.go:1066		0x667c73		4889e5				MOVQ SP, BP								
  nat.go:1066		0x667c76		4881ec50010000			SUBQ $0x150, SP								
  nat.go:1067		0x667c7d		807f0800			CMPB 0x8(DI), $0x0							
  nat.go:1067		0x667c81		0f8428030000			JE 0x667faf								
  nat.go:1067		0x667c87		4889842460010000		MOVQ AX, 0x160(SP)							
  nat.go:1067		0x667c8f		48899c2468010000		MOVQ BX, 0x168(SP)							
  nat.go:1067		0x667c97		48898c2470010000		MOVQ CX, 0x170(SP)							
  nat.go:1067		0x667c9f		4889bc2478010000		MOVQ DI, 0x178(SP)							
  nat.go:1073		0x667ca7		90				NOPL									
  nat.go:72		0x667ca8		488d542430			LEAQ 0x30(SP), DX							
  nat.go:72		0x667cad		be04000000			MOVL $0x4, SI								
  nat.go:72		0x667cb2		440f113a			MOVUPS X15, 0(DX)							
  nat.go:72		0x667cb6		440f117a10			MOVUPS X15, 0x10(DX)							
  nat.go:72		0x667cbb		440f117a20			MOVUPS X15, 0x20(DX)							
  nat.go:72		0x667cc0		440f117a30			MOVUPS X15, 0x30(DX)							
  nat.go:72		0x667cc5		4883c240			ADDQ $0x40, DX								
  nat.go:72		0x667cc9		ffce				DECL SI									
  nat.go:72		0x667ccb		75e5				JNE 0x667cb2								
  nat.go:73		0x667ccd		66440fd6bc2440010000		MOVQ X15, 0x140(SP)							
  nat.go:73		0x667cd7		48c784244801000020000000	MOVQ $0x20, 0x148(SP)							
  nat.go:73		0x667ce3		488d542430			LEAQ 0x30(SP), DX							
  nat.go:73		0x667ce8		4889942438010000		MOVQ DX, 0x138(SP)							
  nat.go:133		0x667cf0		488b7308			MOVQ 0x8(BX), SI							
  nat.go:133		0x667cf4		4889742428			MOVQ SI, 0x28(SP)							
  nat.go:1073		0x667cf9		90				NOPL									
  nat.go:1073		0x667cfa		660f1f440000			NOPW 0(AX)(AX*1)							
  nat.go:95		0x667d00		4883fe20			CMPQ SI, $0x20								
  nat.go:95		0x667d04		7f6d				JG 0x667d73								
  nat.go:100		0x667d06		4885f6				TESTQ SI, SI								
  nat.go:100		0x667d09		41b800000000			MOVL $0x0, R8								
  nat.go:100		0x667d0f		4989f1				MOVQ SI, R9								
  nat.go:100		0x667d12		490f4cf0			CMOVL R8, SI								
  nat.go:100		0x667d16		660f1f840000000000		NOPW 0(AX)(AX*1)							
  nat.go:100		0x667d1f		90				NOPL									
  nat.go:100		0x667d20		4883fe20			CMPQ SI, $0x20								
  nat.go:100		0x667d24		0f877b020000			JA 0x667fa5								
  nat.go:100		0x667d2a		4885f6				TESTQ SI, SI								
  nat.go:100		0x667d2d		7424				JE 0x667d53								
  nat.go:100		0x667d2f		48c1e603			SHLQ $0x3, SI								
  nat.go:100		0x667d33		4889d0				MOVQ DX, AX								
  nat.go:100		0x667d36		4889f3				MOVQ SI, BX								
  nat.go:100		0x667d39		e82290e2ff			CALL runtime.memclrNoHeapPointers(SB)					
  nat.go:134		0x667d3e		488b9c2468010000		MOVQ 0x168(SP), BX							
  nat.go:767		0x667d46		488bbc2478010000		MOVQ 0x178(SP), DI							
  nat.go:101		0x667d4e		4c8b4c2428			MOVQ 0x28(SP), R9							
  nat.go:101		0x667d53		488b942448010000		MOVQ 0x148(SP), DX							
  nat.go:101		0x667d5b		0f1f440000			NOPL 0(AX)(AX*1)							
  nat.go:101		0x667d60		4c39ca				CMPQ DX, R9								
  nat.go:101		0x667d63		0f8232020000			JB 0x667f9b								
  nat.go:101		0x667d69		4c898c2440010000		MOVQ R9, 0x140(SP)							
  nat.go:133		0x667d71		eb3f				JMP 0x667db2								
  nat.go:96		0x667d73		488d05c61a2f00			LEAQ 0x2f1ac6(IP), AX							
  nat.go:96		0x667d7a		4889f3				MOVQ SI, BX								
  nat.go:96		0x667d7d		4889d9				MOVQ BX, CX								
  nat.go:96		0x667d80		e8db3de2ff			CALL runtime.makeslice(SB)						
  nat.go:96		0x667d85		488b542428			MOVQ 0x28(SP), DX							
  nat.go:96		0x667d8a		4889942440010000		MOVQ DX, 0x140(SP)							
  nat.go:96		0x667d92		4889942448010000		MOVQ DX, 0x148(SP)							
  nat.go:96		0x667d9a		4889842438010000		MOVQ AX, 0x138(SP)							
  nat.go:134		0x667da2		488b9c2468010000		MOVQ 0x168(SP), BX							
  nat.go:767		0x667daa		488bbc2478010000		MOVQ 0x178(SP), DI							
  nat.go:134		0x667db2		488b942438010000		MOVQ 0x138(SP), DX							
  nat.go:134		0x667dba		488bb42440010000		MOVQ 0x140(SP), SI							
  nat.go:134		0x667dc2		4c8b03				MOVQ 0(BX), R8								
  nat.go:134		0x667dc5		4c8b4b08			MOVQ 0x8(BX), R9							
  nat.go:134		0x667dc9		4c39ce				CMPQ SI, R9								
  nat.go:134		0x667dcc		490f4ff1			CMOVG R9, SI								
  nat.go:134		0x667dd0		4c39c2				CMPQ DX, R8								
  nat.go:134		0x667dd3		741a				JE 0x667def								
  nat.go:134		0x667dd5		48c1e603			SHLQ $0x3, SI								
  nat.go:134		0x667dd9		4889d0				MOVQ DX, AX								
  nat.go:134		0x667ddc		4c89c3				MOVQ R8, BX								
  nat.go:134		0x667ddf		4889f1				MOVQ SI, CX								
  nat.go:134		0x667de2		e87992e2ff			CALL runtime.memmove(SB)						
  nat.go:767		0x667de7		488bbc2478010000		MOVQ 0x178(SP), DI							
  nat.go:767		0x667def		488b4f18			MOVQ 0x18(DI), CX							
  nat.go:1073		0x667df3		90				NOPL									
  nat.go:767		0x667df4		488d842438010000		LEAQ 0x138(SP), AX							
  nat.go:767		0x667dfc		4889c3				MOVQ AX, BX								
  nat.go:767		0x667dff		90				NOPL									
  nat.go:767		0x667e00		e8dbdeffff			CALL crypto/internal/fips140/bigmod.(*Nat).montgomeryMul(SB)		
  nat.go:767		0x667e05		4889842430010000		MOVQ AX, 0x130(SP)							
  nat.go:133		0x667e0d		488b5808			MOVQ 0x8(AX), BX							
  nat.go:133		0x667e11		48895c2428			MOVQ BX, 0x28(SP)							
  nat.go:95		0x667e16		488b8c2460010000		MOVQ 0x160(SP), CX							
  nat.go:95		0x667e1e		488b5110			MOVQ 0x10(CX), DX							
  nat.go:1074		0x667e22		90				NOPL									
  nat.go:95		0x667e23		4839da				CMPQ DX, BX								
  nat.go:95		0x667e26		7c54				JL 0x667e7c								
  nat.go:95		0x667e28		488b7108			MOVQ 0x8(CX), SI							
  nat.go:100		0x667e2c		4839de				CMPQ SI, BX								
  nat.go:100		0x667e2f		4989d8				MOVQ BX, R8								
  nat.go:100		0x667e32		4c0f4fc6			CMOVG SI, R8								
  nat.go:100		0x667e36		4c39c2				CMPQ DX, R8								
  nat.go:100		0x667e39		0f8257010000			JB 0x667f96								
  nat.go:100		0x667e3f		90				NOPL									
  nat.go:100		0x667e40		4d85c0				TESTQ R8, R8								
  nat.go:100		0x667e43		7424				JE 0x667e69								
  nat.go:95		0x667e45		488b01				MOVQ 0(CX), AX								
  nat.go:100		0x667e48		49c1e003			SHLQ $0x3, R8								
  nat.go:100		0x667e4c		4c89c3				MOVQ R8, BX								
  nat.go:100		0x667e4f		e80c8fe2ff			CALL runtime.memclrNoHeapPointers(SB)					
  nat.go:134		0x667e54		488b842430010000		MOVQ 0x130(SP), AX							
  nat.go:101		0x667e5c		488b8c2460010000		MOVQ 0x160(SP), CX							
  nat.go:101		0x667e64		488b5c2428			MOVQ 0x28(SP), BX							
  nat.go:101		0x667e69		488b5110			MOVQ 0x10(CX), DX							
  nat.go:101		0x667e6d		4839da				CMPQ DX, BX								
  nat.go:101		0x667e70		0f821b010000			JB 0x667f91								
  nat.go:101		0x667e76		48895908			MOVQ BX, 0x8(CX)							
  nat.go:133		0x667e7a		eb47				JMP 0x667ec3								
  nat.go:96		0x667e7c		488d05bd192f00			LEAQ 0x2f19bd(IP), AX							
  nat.go:96		0x667e83		4889d9				MOVQ BX, CX								
  nat.go:96		0x667e86		e8d53ce2ff			CALL runtime.makeslice(SB)						
  nat.go:96		0x667e8b		488b542428			MOVQ 0x28(SP), DX							
  nat.go:96		0x667e90		488b8c2460010000		MOVQ 0x160(SP), CX							
  nat.go:96		0x667e98		48895108			MOVQ DX, 0x8(CX)							
  nat.go:96		0x667e9c		48895110			MOVQ DX, 0x10(CX)							
  nat.go:96		0x667ea0		833dd9e4380000			CMPL runtime.writeBarrier(SB), $0x0					
  nat.go:96		0x667ea7		740f				JE 0x667eb8								
  nat.go:96		0x667ea9		488b11				MOVQ 0(CX), DX								
  nat.go:96		0x667eac		e86f8ae2ff			CALL runtime.gcWriteBarrier2(SB)					
  nat.go:96		0x667eb1		498903				MOVQ AX, 0(R11)								
  nat.go:96		0x667eb4		49895308			MOVQ DX, 0x8(R11)							
  nat.go:96		0x667eb8		488901				MOVQ AX, 0(CX)								
  nat.go:134		0x667ebb		488b842430010000		MOVQ 0x130(SP), AX							
  nat.go:134		0x667ec3		488b11				MOVQ 0(CX), DX								
  nat.go:134		0x667ec6		488b7108			MOVQ 0x8(CX), SI							
  nat.go:134		0x667eca		488b18				MOVQ 0(AX), BX								
  nat.go:134		0x667ecd		4c8b4008			MOVQ 0x8(AX), R8							
  nat.go:134		0x667ed1		4c39c6				CMPQ SI, R8								
  nat.go:134		0x667ed4		490f4ff0			CMOVG R8, SI								
  nat.go:134		0x667ed8		4839da				CMPQ DX, BX								
  nat.go:134		0x667edb		7417				JE 0x667ef4								
  nat.go:134		0x667edd		48c1e603			SHLQ $0x3, SI								
  nat.go:134		0x667ee1		4889d0				MOVQ DX, AX								
  nat.go:134		0x667ee4		4889f1				MOVQ SI, CX								
  nat.go:134		0x667ee7		e87491e2ff			CALL runtime.memmove(SB)						
  nat.go:1076		0x667eec		488b8c2460010000		MOVQ 0x160(SP), CX							
  nat.go:1075		0x667ef4		488b942470010000		MOVQ 0x170(SP), DX							
  nat.go:1075		0x667efc		480fbdf2			BSRQ DX, SI								
  nat.go:1075		0x667f00		49c7c0ffffffff			MOVQ $-0x1, R8								
  nat.go:1075		0x667f07		490f44f0			CMOVE R8, SI								
  nat.go:1075		0x667f0b		4883c6c0			ADDQ $-0x40, SI								
  nat.go:1075		0x667f0f		48f7de				NEGQ SI									
  nat.go:1075		0x667f12		eb0c				JMP 0x667f20								
  nat.go:1075		0x667f14		488d7201			LEAQ 0x1(DX), SI							
  nat.go:1076		0x667f18		488b8c2460010000		MOVQ 0x160(SP), CX							
  nat.go:1075		0x667f20		4883fe40			CMPQ SI, $0x40								
  nat.go:1075		0x667f24		7d59				JGE 0x667f7f								
  nat.go:1075		0x667f26		4889742420			MOVQ SI, 0x20(SP)							
  nat.go:1076		0x667f2b		4889c8				MOVQ CX, AX								
  nat.go:1076		0x667f2e		4889c3				MOVQ AX, BX								
  nat.go:1076		0x667f31		488bbc2478010000		MOVQ 0x178(SP), DI							
  nat.go:1076		0x667f39		e8a2ddffff			CALL crypto/internal/fips140/bigmod.(*Nat).montgomeryMul(SB)		
  nat.go:1077		0x667f3e		488b542420			MOVQ 0x20(SP), DX							
  nat.go:1077		0x667f43		488d72c1			LEAQ -0x3f(DX), SI							
  nat.go:1077		0x667f47		48f7de				NEGQ SI									
  nat.go:1077		0x667f4a		4c8b842470010000		MOVQ 0x170(SP), R8							
  nat.go:1077		0x667f52		490fa3f0			BTQ SI, R8								
  nat.go:1077		0x667f56		73bc				JAE 0x667f14								
  nat.go:1078		0x667f58		488b842460010000		MOVQ 0x160(SP), AX							
  nat.go:1078		0x667f60		4889c3				MOVQ AX, BX								
  nat.go:1078		0x667f63		488b8c2430010000		MOVQ 0x130(SP), CX							
  nat.go:1078		0x667f6b		488bbc2478010000		MOVQ 0x178(SP), DI							
  nat.go:1078		0x667f73		e868ddffff			CALL crypto/internal/fips140/bigmod.(*Nat).montgomeryMul(SB)		
  nat.go:1075		0x667f78		488b542420			MOVQ 0x20(SP), DX							
  nat.go:1078		0x667f7d		eb95				JMP 0x667f14								
  nat.go:1081		0x667f7f		4889c8				MOVQ CX, AX								
  nat.go:1081		0x667f82		488b9c2478010000		MOVQ 0x178(SP), BX							
  nat.go:1081		0x667f8a		e8b1dbffff			CALL crypto/internal/fips140/bigmod.(*Nat).montgomeryReduction(SB)	
  nat.go:1081		0x667f8f		c9				LEAVE									
  nat.go:1081		0x667f90		c3				RET									
  nat.go:101		0x667f91		e82a8de2ff			CALL runtime.panicBounds(SB)						
  nat.go:100		0x667f96		e8258de2ff			CALL runtime.panicBounds(SB)						
  nat.go:101		0x667f9b		0f1f440000			NOPL 0(AX)(AX*1)							
  nat.go:101		0x667fa0		e81b8de2ff			CALL runtime.panicBounds(SB)						
  nat.go:100		0x667fa5		b820000000			MOVL $0x20, AX								
  nat.go:100		0x667faa		e8118de2ff			CALL runtime.panicBounds(SB)						
  nat.go:1068		0x667faf		488d0516540600			LEAQ 0x65416(IP), AX							
  nat.go:1068		0x667fb6		bb2f000000			MOVL $0x2f, BX								
  nat.go:1068		0x667fbb		0f1f440000			NOPL 0(AX)(AX*1)							
  nat.go:1068		0x667fc0		e89bf8e1ff			CALL runtime.convTstring(SB)						
  nat.go:1068		0x667fc5		4889c3				MOVQ AX, BX								
  nat.go:1068		0x667fc8		488d05f1152f00			LEAQ 0x2f15f1(IP), AX							
  nat.go:1068		0x667fcf		e88c16e2ff			CALL runtime.gopanic(SB)						
  nat.go:1068		0x667fd4		90				NOPL									
  nat.go:1066		0x667fd5		4889442408			MOVQ AX, 0x8(SP)							
  nat.go:1066		0x667fda		48895c2410			MOVQ BX, 0x10(SP)							
  nat.go:1066		0x667fdf		48894c2418			MOVQ CX, 0x18(SP)							
  nat.go:1066		0x667fe4		48897c2420			MOVQ DI, 0x20(SP)							
  nat.go:1066		0x667fe9		e8126fe2ff			CALL runtime.morestack_noctxt.abi0(SB)					
  nat.go:1066		0x667fee		488b442408			MOVQ 0x8(SP), AX							
  nat.go:1066		0x667ff3		488b5c2410			MOVQ 0x10(SP), BX							
  nat.go:1066		0x667ff8		488b4c2418			MOVQ 0x18(SP), CX							
  nat.go:1066		0x667ffd		488b7c2420			MOVQ 0x20(SP), DI							
  nat.go:1066		0x668002		e959fcffff			JMP crypto/internal/fips140/bigmod.(*Nat).ExpShortVarTime(SB)		

TEXT crypto/internal/fips140/bigmod.(*Nat).shiftInWord(SB) /home/exedev/go-crypto/src/crypto/internal/fips140/bigmod/nat.go
  nat.go:1312		0x669740		493b6610		CMPQ SP, 0x10(R14)						
  nat.go:1312		0x669744		0f868f010000		JBE 0x6698d9							
  nat.go:1312		0x66974a		55			PUSHQ BP							
  nat.go:1312		0x66974b		4889e5			MOVQ SP, BP							
  nat.go:1312		0x66974e		4883ec50		SUBQ $0x50, SP							
  nat.go:1313		0x669752		488b11			MOVQ 0(CX), DX							
  nat.go:1313		0x669755		488b7208		MOVQ 0x8(DX), SI						
  nat.go:1314		0x669759		488b7810		MOVQ 0x10(AX), DI						
  nat.go:1314		0x66975d		0f1f00			NOPL 0(AX)							
  nat.go:1314		0x669760		4839f7			CMPQ DI, SI							
  nat.go:1314		0x669763		0f826a010000		JB 0x6698d3							
  nat.go:1315		0x669769		4c8d46ff		LEAQ -0x1(SI), R8						
  nat.go:1315		0x66976d		4c39c6			CMPQ SI, R8							
  nat.go:1315		0x669770		0f8658010000		JBE 0x6698ce							
  nat.go:1314		0x669776		4889442460		MOVQ AX, 0x60(SP)						
  nat.go:1314		0x66977b		48895c2468		MOVQ BX, 0x68(SP)						
  nat.go:1315		0x669780		4c89442438		MOVQ R8, 0x38(SP)						
  nat.go:1314		0x669785		48897c2430		MOVQ DI, 0x30(SP)						
  nat.go:1314		0x66978a		4c8b08			MOVQ 0(AX), R9							
  nat.go:1314		0x66978d		4c894c2448		MOVQ R9, 0x48(SP)						
  nat.go:1315		0x669792		4d8b54f1f8		MOVQ -0x8(R9)(SI*8), R10					
  nat.go:1316		0x669797		4883fe01		CMPQ SI, $0x1							
  nat.go:1316		0x66979b		7e07			JLE 0x6697a4							
  nat.go:1317		0x66979d		4d8b5cf1f0		MOVQ -0x10(R9)(SI*8), R11					
  nat.go:1317		0x6697a2		eb03			JMP 0x6697a7							
  nat.go:1319		0x6697a4		4989db			MOVQ BX, R11							
  nat.go:1315		0x6697a7		4c89542420		MOVQ R10, 0x20(SP)						
  nat.go:1313		0x6697ac		4889742428		MOVQ SI, 0x28(SP)						
  nat.go:1313		0x6697b1		488b12			MOVQ 0(DX), DX							
  nat.go:1313		0x6697b4		4889542440		MOVQ DX, 0x40(SP)						
  nat.go:1319		0x6697b9		488b4cf2f8		MOVQ -0x8(DX)(SI*8), CX						
  nat.go:1319		0x6697be		4c89d0			MOVQ R10, AX							
  nat.go:1319		0x6697c1		4c89db			MOVQ R11, BX							
  nat.go:1319		0x6697c4		e8d7feffff		CALL crypto/internal/fips140/bigmod.divWordNormalized(SB)	
  nat.go:1320		0x6697c9		488b542430		MOVQ 0x30(SP), DX						
  nat.go:1320		0x6697ce		48ffca			DECQ DX								
  nat.go:1320		0x6697d1		48f7da			NEGQ DX								
  nat.go:1320		0x6697d4		48c1fa3f		SARQ $0x3f, DX							
  nat.go:1320		0x6697d8		83e208			ANDL $0x8, DX							
  nat.go:1320		0x6697db		488b5c2448		MOVQ 0x48(SP), BX						
  nat.go:1320		0x6697e0		488d3413		LEAQ 0(BX)(DX*1), SI						
  nat.go:1320		0x6697e4		4885d2			TESTQ DX, DX							
  nat.go:1320		0x6697e7		7420			JE 0x669809							
  nat.go:1319		0x6697e9		4889442418		MOVQ AX, 0x18(SP)						
  nat.go:1320		0x6697ee		488b4c2438		MOVQ 0x38(SP), CX						
  nat.go:1320		0x6697f3		48c1e103		SHLQ $0x3, CX							
  nat.go:1320		0x6697f7		4889f0			MOVQ SI, AX							
  nat.go:1320		0x6697fa		e86178e2ff		CALL runtime.memmove(SB)					
  nat.go:1327		0x6697ff		488b442418		MOVQ 0x18(SP), AX						
  nat.go:1321		0x669804		488b5c2448		MOVQ 0x48(SP), BX						
  nat.go:1321		0x669809		488b4c2468		MOVQ 0x68(SP), CX						
  nat.go:1321		0x66980e		48890b			MOVQ CX, 0(BX)							
  nat.go:1326		0x669811		31c9			XORL CX, CX							
  nat.go:1326		0x669813		31d2			XORL DX, DX							
  nat.go:1326		0x669815		488b742428		MOVQ 0x28(SP), SI						
  nat.go:1326		0x66981a		488b7c2440		MOVQ 0x40(SP), DI						
  nat.go:1326		0x66981f		4531c0			XORL R8, R8							
  nat.go:1326		0x669822		eb36			JMP 0x66985a							
  nat.go:1327		0x669824		4c8b0ccf		MOVQ 0(DI)(CX*8), R9						
  nat.go:1326		0x669828		4989d2			MOVQ DX, R10							
  nat.go:1319		0x66982b		4989c3			MOVQ AX, R11							
  nat.go:1327		0x66982e		49f7e1			MULQ R9								
  nat.go:1331		0x669831		4c8b0ccb		MOVQ 0(BX)(CX*8), R9						
  nat.go:1329		0x669835		4901c0			ADDQ AX, R8							
  nat.go:1330		0x669838		4883d200		ADCQ $0x0, DX							
  nat.go:1331		0x66983c		41f7da			NEGL R10							
  nat.go:1331		0x66983f		4d19c1			SBBQ R8, R9							
  nat.go:1331		0x669842		4c890ccb		MOVQ R9, 0(BX)(CX*8)						
  nat.go:1331		0x669846		410f92c1		SETB R9								
  nat.go:1331		0x66984a		450fb6c9		MOVZX R9, R9							
  nat.go:1326		0x66984e		48ffc1			INCQ CX								
  nat.go:1327		0x669851		4c89d8			MOVQ R11, AX							
  nat.go:1326		0x669854		4989d0			MOVQ DX, R8							
  nat.go:1326		0x669857		4489ca			MOVL R9, DX							
  nat.go:1326		0x66985a		4839f1			CMPQ CX, SI							
  nat.go:1326		0x66985d		7cc5			JL 0x669824							
  nat.go:1333		0x66985f		f7da			NEGL DX								
  nat.go:1333		0x669861		488b4c2420		MOVQ 0x20(SP), CX						
  nat.go:1333		0x669866		4c19c1			SBBQ R8, CX							
  nat.go:1333		0x669869		0f92c2			SETB DL								
  nat.go:1333		0x66986c		0fb6d2			MOVZX DL, DX							
  nat.go:1337		0x66986f		4531c0			XORL R8, R8							
  nat.go:1337		0x669872		eb16			JMP 0x66988a							
  nat.go:1343		0x669874		41f7db			NEGL R11							
  nat.go:1343		0x669877		4883d100		ADCQ $0x0, CX							
  nat.go:1344		0x66987b		ba01000000		MOVL $0x1, DX							
  nat.go:1344		0x669880		4883da00		SBBQ $0x0, DX							
  nat.go:1344		0x669884		4c21ca			ANDQ R9, DX							
  nat.go:1337		0x669887		49ffc0			INCQ R8								
  nat.go:1337		0x66988a		4983f802		CMPQ R8, $0x2							
  nat.go:1337		0x66988e		7d37			JGE 0x6698c7							
  nat.go:1338		0x669890		4989d1			MOVQ DX, R9							
  nat.go:1338		0x669893		48f7da			NEGQ DX								
  nat.go:1340		0x669896		4531d2			XORL R10, R10							
  nat.go:1340		0x669899		4531db			XORL R11, R11							
  nat.go:1340		0x66989c		eb22			JMP 0x6698c0							
  nat.go:1341		0x66989e		4e8b24d3		MOVQ 0(BX)(R10*8), R12						
  nat.go:1341		0x6698a2		4e8b2cd7		MOVQ 0(DI)(R10*8), R13						
  nat.go:1341		0x6698a6		4921d5			ANDQ DX, R13							
  nat.go:1341		0x6698a9		41f7db			NEGL R11							
  nat.go:1341		0x6698ac		4d11e5			ADCQ R12, R13							
  nat.go:1341		0x6698af		4e892cd3		MOVQ R13, 0(BX)(R10*8)						
  nat.go:1341		0x6698b3		410f92c4		SETB R12							
  nat.go:1341		0x6698b7		450fb6dc		MOVZX R12, R11							
  nat.go:1340		0x6698bb		49ffc2			INCQ R10							
  nat.go:1340		0x6698be		6690			NOPW								
  nat.go:1340		0x6698c0		4939f2			CMPQ R10, SI							
  nat.go:1340		0x6698c3		7cd9			JL 0x66989e							
  nat.go:1340		0x6698c5		ebad			JMP 0x669874							
  nat.go:1346		0x6698c7		488b442460		MOVQ 0x60(SP), AX						
  nat.go:1346		0x6698cc		c9			LEAVE								
  nat.go:1346		0x6698cd		c3			RET								
  nat.go:1315		0x6698ce		e8ed73e2ff		CALL runtime.panicBounds(SB)					
  nat.go:1314		0x6698d3		e8e873e2ff		CALL runtime.panicBounds(SB)					
  nat.go:1314		0x6698d8		90			NOPL								
  nat.go:1312		0x6698d9		4889442408		MOVQ AX, 0x8(SP)						
  nat.go:1312		0x6698de		48895c2410		MOVQ BX, 0x10(SP)						
  nat.go:1312		0x6698e3		48894c2418		MOVQ CX, 0x18(SP)						
  nat.go:1312		0x6698e8		e81356e2ff		CALL runtime.morestack_noctxt.abi0(SB)				
  nat.go:1312		0x6698ed		488b442408		MOVQ 0x8(SP), AX						
  nat.go:1312		0x6698f2		488b5c2410		MOVQ 0x10(SP), BX						
  nat.go:1312		0x6698f7		488b4c2418		MOVQ 0x18(SP), CX						
  nat.go:1312		0x6698fc		0f1f4000		NOPL 0(AX)							
  nat.go:1312		0x669900		e93bfeffff		JMP crypto/internal/fips140/bigmod.(*Nat).shiftInWord(SB)	
