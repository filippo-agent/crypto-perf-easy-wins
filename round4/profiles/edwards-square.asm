TEXT crypto/internal/fips140/edwards25519/field.feSquare(SB) /home/exedev/go-crypto/src/crypto/internal/fips140/edwards25519/field/fe_generic.go
  fe_generic.go:186	0x5f8420		4c8d6424e8		LEAQ -0x18(SP), R12						
  fe_generic.go:186	0x5f8425		4d3b6610		CMPQ R12, 0x10(R14)						
  fe_generic.go:186	0x5f8429		0f86ee020000		JBE 0x5f871d							
  fe_generic.go:186	0x5f842f		55			PUSHQ BP							
  fe_generic.go:186	0x5f8430		4889e5			MOVQ SP, BP							
  fe_generic.go:186	0x5f8433		4881ec90000000		SUBQ $0x90, SP							
  fe_generic.go:257	0x5f843a		48898424a0000000	MOVQ AX, 0xa0(SP)						
  fe_generic.go:187	0x5f8442		488b0b			MOVQ 0(BX), CX							
  fe_generic.go:188	0x5f8445		488b5308		MOVQ 0x8(BX), DX						
  fe_generic.go:189	0x5f8449		488b7310		MOVQ 0x10(BX), SI						
  fe_generic.go:190	0x5f844d		488b7b18		MOVQ 0x18(BX), DI						
  fe_generic.go:191	0x5f8451		488b5b20		MOVQ 0x20(BX), BX						
  fe_generic.go:221	0x5f8455		4c8d0409		LEAQ 0(CX)(CX*1), R8						
  fe_generic.go:232	0x5f8459		4c8d0c12		LEAQ 0(DX)(DX*1), R9						
  fe_generic.go:17	0x5f845d		4889c8			MOVQ CX, AX							
  fe_generic.go:188	0x5f8460		4889d1			MOVQ DX, CX							
  fe_generic.go:17	0x5f8463		48f7e0			MULQ AX								
  fe_generic.go:45	0x5f8466		4c8d1c1b		LEAQ 0(BX)(BX*1), R11						
  fe_generic.go:45	0x5f846a		4c8d243f		LEAQ 0(DI)(DI*1), R12						
  fe_generic.go:17	0x5f846e		4989c5			MOVQ AX, R13							
  fe_generic.go:17	0x5f8471		4c89c0			MOVQ R8, AX							
  fe_generic.go:17	0x5f8474		4989d7			MOVQ DX, R15							
  fe_generic.go:17	0x5f8477		48f7e1			MULQ CX								
  fe_generic.go:17	0x5f847a		4889942488000000	MOVQ DX, 0x88(SP)						
  fe_generic.go:17	0x5f8482		4889442450		MOVQ AX, 0x50(SP)						
  fe_generic.go:17	0x5f8487		4c89c0			MOVQ R8, AX							
  fe_generic.go:17	0x5f848a		48f7e6			MULQ SI								
  fe_generic.go:17	0x5f848d		4889942480000000	MOVQ DX, 0x80(SP)						
  fe_generic.go:17	0x5f8495		4889442438		MOVQ AX, 0x38(SP)						
  fe_generic.go:23	0x5f849a		4889c8			MOVQ CX, AX							
  fe_generic.go:23	0x5f849d		48f7e0			MULQ AX								
  fe_generic.go:23	0x5f84a0		4889542478		MOVQ DX, 0x78(SP)						
  fe_generic.go:23	0x5f84a5		4889442430		MOVQ AX, 0x30(SP)						
  fe_generic.go:17	0x5f84aa		4c89c0			MOVQ R8, AX							
  fe_generic.go:17	0x5f84ad		48f7e7			MULQ DI								
  fe_generic.go:17	0x5f84b0		4889542470		MOVQ DX, 0x70(SP)						
  fe_generic.go:17	0x5f84b5		4889442420		MOVQ AX, 0x20(SP)						
  fe_generic.go:23	0x5f84ba		4c89c8			MOVQ R9, AX							
  fe_generic.go:23	0x5f84bd		48f7e6			MULQ SI								
  fe_generic.go:23	0x5f84c0		4889442418		MOVQ AX, 0x18(SP)						
  fe_generic.go:17	0x5f84c5		4c89c0			MOVQ R8, AX							
  fe_generic.go:23	0x5f84c8		4989d0			MOVQ DX, R8							
  fe_generic.go:17	0x5f84cb		48f7e3			MULQ BX								
  fe_generic.go:17	0x5f84ce		4889442410		MOVQ AX, 0x10(SP)						
  fe_generic.go:23	0x5f84d3		4c89c8			MOVQ R9, AX							
  fe_generic.go:17	0x5f84d6		4989d1			MOVQ DX, R9							
  fe_generic.go:23	0x5f84d9		48f7e7			MULQ DI								
  fe_generic.go:23	0x5f84dc		4889542468		MOVQ DX, 0x68(SP)						
  fe_generic.go:23	0x5f84e1		4889442408		MOVQ AX, 0x8(SP)						
  fe_generic.go:23	0x5f84e6		4889f0			MOVQ SI, AX							
  fe_generic.go:23	0x5f84e9		48f7e0			MULQ AX								
  fe_generic.go:23	0x5f84ec		4889542460		MOVQ DX, 0x60(SP)						
  fe_generic.go:23	0x5f84f1		48890424		MOVQ AX, 0(SP)							
  fe_generic.go:32	0x5f84f5		4c8d14c9		LEAQ 0(CX)(CX*8), R10						
  fe_generic.go:32	0x5f84f9		4a8d0c51		LEAQ 0(CX)(R10*2), CX						
  fe_generic.go:45	0x5f84fd		4c89d8			MOVQ R11, AX							
  fe_generic.go:45	0x5f8500		48f7e1			MULQ CX								
  fe_generic.go:32	0x5f8503		488d0cf6		LEAQ 0(SI)(SI*8), CX						
  fe_generic.go:32	0x5f8507		488d0c4e		LEAQ 0(SI)(CX*2), CX						
  fe_generic.go:45	0x5f850b		4889c6			MOVQ AX, SI							
  fe_generic.go:45	0x5f850e		4c89e0			MOVQ R12, AX							
  fe_generic.go:45	0x5f8511		4989d4			MOVQ DX, R12							
  fe_generic.go:45	0x5f8514		48f7e1			MULQ CX								
  fe_generic.go:45	0x5f8517		4889442458		MOVQ AX, 0x58(SP)						
  fe_generic.go:45	0x5f851c		4889c8			MOVQ CX, AX							
  fe_generic.go:45	0x5f851f		4889d1			MOVQ DX, CX							
  fe_generic.go:45	0x5f8522		49f7e3			MULQ R11							
  fe_generic.go:45	0x5f8525		4889442448		MOVQ AX, 0x48(SP)						
  fe_generic.go:32	0x5f852a		4c8d14ff		LEAQ 0(DI)(DI*8), R10						
  fe_generic.go:32	0x5f852e		4e8d1457		LEAQ 0(DI)(R10*2), R10						
  fe_generic.go:37	0x5f8532		4889f8			MOVQ DI, AX							
  fe_generic.go:45	0x5f8535		4889d7			MOVQ DX, DI							
  fe_generic.go:37	0x5f8538		49f7e2			MULQ R10							
  fe_generic.go:37	0x5f853b		4889442440		MOVQ AX, 0x40(SP)						
  fe_generic.go:45	0x5f8540		4c89d0			MOVQ R10, AX							
  fe_generic.go:37	0x5f8543		4989d2			MOVQ DX, R10							
  fe_generic.go:45	0x5f8546		49f7e3			MULQ R11							
  fe_generic.go:45	0x5f8549		4889442428		MOVQ AX, 0x28(SP)						
  fe_generic.go:32	0x5f854e		4c8d1cdb		LEAQ 0(BX)(BX*8), R11						
  fe_generic.go:32	0x5f8552		4e8d1c5b		LEAQ 0(BX)(R11*2), R11						
  fe_generic.go:37	0x5f8556		4889d8			MOVQ BX, AX							
  fe_generic.go:45	0x5f8559		4889d3			MOVQ DX, BX							
  fe_generic.go:37	0x5f855c		49f7e3			MULQ R11							
  fe_generic.go:216	0x5f855f		90			NOPL								
  fe_generic.go:217	0x5f8560		90			NOPL								
  fe_generic.go:218	0x5f8561		90			NOPL								
  fe_generic.go:222	0x5f8562		90			NOPL								
  fe_generic.go:223	0x5f8563		90			NOPL								
  fe_generic.go:226	0x5f8564		90			NOPL								
  fe_generic.go:227	0x5f8565		90			NOPL								
  fe_generic.go:228	0x5f8566		90			NOPL								
  fe_generic.go:231	0x5f8567		90			NOPL								
  fe_generic.go:233	0x5f8568		90			NOPL								
  fe_generic.go:236	0x5f8569		90			NOPL								
  fe_generic.go:237	0x5f856a		90			NOPL								
  fe_generic.go:238	0x5f856b		90			NOPL								
  fe_generic.go:240	0x5f856c		90			NOPL								
  fe_generic.go:241	0x5f856d		90			NOPL								
  fe_generic.go:242	0x5f856e		90			NOPL								
  fe_generic.go:243	0x5f856f		90			NOPL								
  fe_generic.go:244	0x5f8570		90			NOPL								
  fe_generic.go:46	0x5f8571		4c01ee			ADDQ R13, SI							
  fe_generic.go:47	0x5f8574		4d11e7			ADCQ R12, R15							
  fe_generic.go:46	0x5f8577		4c8b5c2458		MOVQ 0x58(SP), R11						
  fe_generic.go:46	0x5f857c		4901f3			ADDQ SI, R11							
  fe_generic.go:47	0x5f857f		4c11f9			ADCQ R15, CX							
  fe_generic.go:246	0x5f8582		48beffffffffffff0700	MOVQ $0x7ffffffffffff, SI					
  fe_generic.go:246	0x5f858c		4c21de			ANDQ R11, SI							
  fe_generic.go:53	0x5f858f		48c1e10d		SHLQ $0xd, CX							
  fe_generic.go:53	0x5f8593		49c1eb33		SHRQ $0x33, R11							
  fe_generic.go:53	0x5f8597		4909cb			ORQ CX, R11							
  fe_generic.go:46	0x5f859a		488b4c2448		MOVQ 0x48(SP), CX						
  fe_generic.go:46	0x5f859f		4c8b642450		MOVQ 0x50(SP), R12						
  fe_generic.go:46	0x5f85a4		4c01e1			ADDQ R12, CX							
  fe_generic.go:47	0x5f85a7		4c8ba42488000000	MOVQ 0x88(SP), R12						
  fe_generic.go:47	0x5f85af		4911fc			ADCQ DI, R12							
  fe_generic.go:38	0x5f85b2		488b7c2440		MOVQ 0x40(SP), DI						
  fe_generic.go:38	0x5f85b7		4801cf			ADDQ CX, DI							
  fe_generic.go:39	0x5f85ba		4d11e2			ADCQ R12, R10							
  fe_generic.go:247	0x5f85bd		48b9ffffffffffff0700	MOVQ $0x7ffffffffffff, CX					
  fe_generic.go:247	0x5f85c7		4821f9			ANDQ DI, CX							
  fe_generic.go:247	0x5f85ca		4c01d9			ADDQ R11, CX							
  fe_generic.go:253	0x5f85cd		49bbffffffffffff0700	MOVQ $0x7ffffffffffff, R11					
  fe_generic.go:253	0x5f85d7		4921cb			ANDQ CX, R11							
  fe_generic.go:254	0x5f85da		48c1e933		SHRQ $0x33, CX							
  fe_generic.go:53	0x5f85de		49c1e20d		SHLQ $0xd, R10							
  fe_generic.go:53	0x5f85e2		48c1ef33		SHRQ $0x33, DI							
  fe_generic.go:53	0x5f85e6		4c09d7			ORQ R10, DI							
  fe_generic.go:24	0x5f85e9		4c8b542430		MOVQ 0x30(SP), R10						
  fe_generic.go:24	0x5f85ee		4c8b642438		MOVQ 0x38(SP), R12						
  fe_generic.go:24	0x5f85f3		4d01e2			ADDQ R12, R10							
  fe_generic.go:25	0x5f85f6		4c8b642478		MOVQ 0x78(SP), R12						
  fe_generic.go:25	0x5f85fb		4c8bac2480000000	MOVQ 0x80(SP), R13						
  fe_generic.go:25	0x5f8603		4d11ec			ADCQ R13, R12							
  fe_generic.go:46	0x5f8606		4c8b6c2428		MOVQ 0x28(SP), R13						
  fe_generic.go:46	0x5f860b		4d01d5			ADDQ R10, R13							
  fe_generic.go:47	0x5f860e		4911dc			ADCQ BX, R12							
  fe_generic.go:248	0x5f8611		48bbffffffffffff0700	MOVQ $0x7ffffffffffff, BX					
  fe_generic.go:248	0x5f861b		4c21eb			ANDQ R13, BX							
  fe_generic.go:248	0x5f861e		4801fb			ADDQ DI, BX							
  fe_generic.go:254	0x5f8621		48bfffffffffffff0700	MOVQ $0x7ffffffffffff, DI					
  fe_generic.go:254	0x5f862b		4821df			ANDQ BX, DI							
  fe_generic.go:254	0x5f862e		4801f9			ADDQ DI, CX							
  fe_generic.go:255	0x5f8631		48c1eb33		SHRQ $0x33, BX							
  fe_generic.go:53	0x5f8635		49c1e40d		SHLQ $0xd, R12							
  fe_generic.go:53	0x5f8639		49c1ed33		SHRQ $0x33, R13							
  fe_generic.go:53	0x5f863d		4d09e5			ORQ R12, R13							
  fe_generic.go:24	0x5f8640		488b7c2418		MOVQ 0x18(SP), DI						
  fe_generic.go:24	0x5f8645		4c8b542420		MOVQ 0x20(SP), R10						
  fe_generic.go:24	0x5f864a		4c01d7			ADDQ R10, DI							
  fe_generic.go:25	0x5f864d		4c8b542470		MOVQ 0x70(SP), R10						
  fe_generic.go:25	0x5f8652		4d11d0			ADCQ R10, R8							
  fe_generic.go:38	0x5f8655		4801f8			ADDQ DI, AX							
  fe_generic.go:39	0x5f8658		4c11c2			ADCQ R8, DX							
  fe_generic.go:249	0x5f865b		48bfffffffffffff0700	MOVQ $0x7ffffffffffff, DI					
  fe_generic.go:249	0x5f8665		4821c7			ANDQ AX, DI							
  fe_generic.go:249	0x5f8668		4c01ef			ADDQ R13, DI							
  fe_generic.go:255	0x5f866b		49b8ffffffffffff0700	MOVQ $0x7ffffffffffff, R8					
  fe_generic.go:255	0x5f8675		4921f8			ANDQ DI, R8							
  fe_generic.go:255	0x5f8678		4c01c3			ADDQ R8, BX							
  fe_generic.go:256	0x5f867b		48c1ef33		SHRQ $0x33, DI							
  fe_generic.go:53	0x5f867f		48c1e20d		SHLQ $0xd, DX							
  fe_generic.go:53	0x5f8683		48c1e833		SHRQ $0x33, AX							
  fe_generic.go:53	0x5f8687		4809d0			ORQ DX, AX							
  fe_generic.go:24	0x5f868a		488b542408		MOVQ 0x8(SP), DX						
  fe_generic.go:24	0x5f868f		4c8b442410		MOVQ 0x10(SP), R8						
  fe_generic.go:24	0x5f8694		4c01c2			ADDQ R8, DX							
  fe_generic.go:25	0x5f8697		4c8b442468		MOVQ 0x68(SP), R8						
  fe_generic.go:25	0x5f869c		4d11c8			ADCQ R9, R8							
  fe_generic.go:24	0x5f869f		4c8b0c24		MOVQ 0(SP), R9							
  fe_generic.go:24	0x5f86a3		4901d1			ADDQ DX, R9							
  fe_generic.go:25	0x5f86a6		488b542460		MOVQ 0x60(SP), DX						
  fe_generic.go:25	0x5f86ab		4c11c2			ADCQ R8, DX							
  fe_generic.go:250	0x5f86ae		49b8ffffffffffff0700	MOVQ $0x7ffffffffffff, R8					
  fe_generic.go:250	0x5f86b8		4d21c8			ANDQ R9, R8							
  fe_generic.go:250	0x5f86bb		4901c0			ADDQ AX, R8							
  fe_generic.go:252	0x5f86be		4d89c2			MOVQ R8, R10							
  fe_generic.go:252	0x5f86c1		49c1e833		SHRQ $0x33, R8							
  fe_generic.go:256	0x5f86c5		49bcffffffffffff0700	MOVQ $0x7ffffffffffff, R12					
  fe_generic.go:256	0x5f86cf		4d21e2			ANDQ R12, R10							
  fe_generic.go:256	0x5f86d2		4c01d7			ADDQ R10, DI							
  fe_generic.go:53	0x5f86d5		48c1e20d		SHLQ $0xd, DX							
  fe_generic.go:53	0x5f86d9		49c1e933		SHRQ $0x33, R9							
  fe_generic.go:53	0x5f86dd		4909d1			ORQ DX, R9							
  fe_generic.go:32	0x5f86e0		4b8d14c9		LEAQ 0(R9)(R9*8), DX						
  fe_generic.go:32	0x5f86e4		498d1451		LEAQ 0(R9)(DX*2), DX						
  fe_generic.go:246	0x5f86e8		4801f2			ADDQ SI, DX							
  fe_generic.go:252	0x5f86eb		4921d4			ANDQ DX, R12							
  fe_generic.go:253	0x5f86ee		48c1ea33		SHRQ $0x33, DX							
  fe_generic.go:253	0x5f86f2		4c01da			ADDQ R11, DX							
  fe_generic.go:32	0x5f86f5		4b8d34c0		LEAQ 0(R8)(R8*8), SI						
  fe_generic.go:32	0x5f86f9		498d3470		LEAQ 0(R8)(SI*2), SI						
  fe_generic.go:252	0x5f86fd		4c01e6			ADDQ R12, SI							
  fe_generic.go:252	0x5f8700		4c8b8424a0000000	MOVQ 0xa0(SP), R8						
  fe_generic.go:252	0x5f8708		498930			MOVQ SI, 0(R8)							
  fe_generic.go:253	0x5f870b		49895008		MOVQ DX, 0x8(R8)						
  fe_generic.go:254	0x5f870f		49894810		MOVQ CX, 0x10(R8)						
  fe_generic.go:255	0x5f8713		49895818		MOVQ BX, 0x18(R8)						
  fe_generic.go:256	0x5f8717		49897820		MOVQ DI, 0x20(R8)						
  fe_generic.go:257	0x5f871b		c9			LEAVE								
  fe_generic.go:257	0x5f871c		c3			RET								
  fe_generic.go:186	0x5f871d		4889442408		MOVQ AX, 0x8(SP)						
  fe_generic.go:186	0x5f8722		48895c2410		MOVQ BX, 0x10(SP)						
  fe_generic.go:186	0x5f8727		e87460e9ff		CALL runtime.morestack_noctxt.abi0(SB)				
  fe_generic.go:186	0x5f872c		488b442408		MOVQ 0x8(SP), AX						
  fe_generic.go:186	0x5f8731		488b5c2410		MOVQ 0x10(SP), BX						
  fe_generic.go:186	0x5f8736		e9e5fcffff		JMP crypto/internal/fips140/edwards25519/field.feSquare(SB)	

TEXT crypto/internal/fips140/edwards25519/field.feSquareN(SB) /home/exedev/go-crypto/src/crypto/internal/fips140/edwards25519/field/fe_generic.go
  fe_generic.go:261	0x5f8740		4c8d6424e0		LEAQ -0x20(SP), R12						
  fe_generic.go:261	0x5f8745		4d3b6610		CMPQ R12, 0x10(R14)						
  fe_generic.go:261	0x5f8749		0f8623030000		JBE 0x5f8a72							
  fe_generic.go:261	0x5f874f		55			PUSHQ BP							
  fe_generic.go:261	0x5f8750		4889e5			MOVQ SP, BP							
  fe_generic.go:261	0x5f8753		4881ec98000000		SUBQ $0x98, SP							
  fe_generic.go:268	0x5f875a		48898424a8000000	MOVQ AX, 0xa8(SP)						
  fe_generic.go:262	0x5f8762		488b13			MOVQ 0(BX), DX							
  fe_generic.go:263	0x5f8765		488b7308		MOVQ 0x8(BX), SI						
  fe_generic.go:264	0x5f8769		488b7b10		MOVQ 0x10(BX), DI						
  fe_generic.go:265	0x5f876d		4c8b4318		MOVQ 0x18(BX), R8						
  fe_generic.go:266	0x5f8771		488b5b20		MOVQ 0x20(BX), BX						
  fe_generic.go:269	0x5f8775		90			NOPL								
  fe_generic.go:270	0x5f8776		90			NOPL								
  fe_generic.go:271	0x5f8777		90			NOPL								
  fe_generic.go:274	0x5f8778		90			NOPL								
  fe_generic.go:275	0x5f8779		90			NOPL								
  fe_generic.go:277	0x5f877a		90			NOPL								
  fe_generic.go:278	0x5f877b		90			NOPL								
  fe_generic.go:279	0x5f877c		90			NOPL								
  fe_generic.go:281	0x5f877d		90			NOPL								
  fe_generic.go:283	0x5f877e		90			NOPL								
  fe_generic.go:285	0x5f877f		90			NOPL								
  fe_generic.go:286	0x5f8780		90			NOPL								
  fe_generic.go:287	0x5f8781		90			NOPL								
  fe_generic.go:289	0x5f8782		90			NOPL								
  fe_generic.go:290	0x5f8783		90			NOPL								
  fe_generic.go:291	0x5f8784		90			NOPL								
  fe_generic.go:292	0x5f8785		90			NOPL								
  fe_generic.go:293	0x5f8786		90			NOPL								
  fe_generic.go:268	0x5f8787		e9c8020000		JMP 0x5f8a54							
  fe_generic.go:268	0x5f878c		48898c2490000000	MOVQ CX, 0x90(SP)						
  fe_generic.go:273	0x5f8794		4c8d0c12		LEAQ 0(DX)(DX*1), R9						
  fe_generic.go:282	0x5f8798		4c8d1436		LEAQ 0(SI)(SI*1), R10						
  fe_generic.go:17	0x5f879c		4889d0			MOVQ DX, AX							
  fe_generic.go:17	0x5f879f		48f7e0			MULQ AX								
  fe_generic.go:17	0x5f87a2		4889942488000000	MOVQ DX, 0x88(SP)						
  fe_generic.go:45	0x5f87aa		4c8d241b		LEAQ 0(BX)(BX*1), R12						
  fe_generic.go:45	0x5f87ae		4f8d2c00		LEAQ 0(R8)(R8*1), R13						
  fe_generic.go:17	0x5f87b2		4989c7			MOVQ AX, R15							
  fe_generic.go:17	0x5f87b5		4889f0			MOVQ SI, AX							
  fe_generic.go:17	0x5f87b8		49f7e1			MULQ R9								
  fe_generic.go:17	0x5f87bb		4889542478		MOVQ DX, 0x78(SP)						
  fe_generic.go:17	0x5f87c0		4889442438		MOVQ AX, 0x38(SP)						
  fe_generic.go:17	0x5f87c5		4889f8			MOVQ DI, AX							
  fe_generic.go:17	0x5f87c8		49f7e1			MULQ R9								
  fe_generic.go:17	0x5f87cb		4889542470		MOVQ DX, 0x70(SP)						
  fe_generic.go:17	0x5f87d0		4889442420		MOVQ AX, 0x20(SP)						
  fe_generic.go:23	0x5f87d5		4889f0			MOVQ SI, AX							
  fe_generic.go:23	0x5f87d8		48f7e0			MULQ AX								
  fe_generic.go:23	0x5f87db		4889542468		MOVQ DX, 0x68(SP)						
  fe_generic.go:23	0x5f87e0		4889442418		MOVQ AX, 0x18(SP)						
  fe_generic.go:17	0x5f87e5		4c89c0			MOVQ R8, AX							
  fe_generic.go:17	0x5f87e8		49f7e1			MULQ R9								
  fe_generic.go:17	0x5f87eb		4889542460		MOVQ DX, 0x60(SP)						
  fe_generic.go:17	0x5f87f0		4889442408		MOVQ AX, 0x8(SP)						
  fe_generic.go:23	0x5f87f5		4889f8			MOVQ DI, AX							
  fe_generic.go:23	0x5f87f8		49f7e2			MULQ R10							
  fe_generic.go:23	0x5f87fb		4889542458		MOVQ DX, 0x58(SP)						
  fe_generic.go:23	0x5f8800		48890424		MOVQ AX, 0(SP)							
  fe_generic.go:17	0x5f8804		4889d8			MOVQ BX, AX							
  fe_generic.go:17	0x5f8807		49f7e1			MULQ R9								
  fe_generic.go:17	0x5f880a		4889542450		MOVQ DX, 0x50(SP)						
  fe_generic.go:17	0x5f880f		4989c1			MOVQ AX, R9							
  fe_generic.go:23	0x5f8812		4c89c0			MOVQ R8, AX							
  fe_generic.go:23	0x5f8815		49f7e2			MULQ R10							
  fe_generic.go:23	0x5f8818		4889542448		MOVQ DX, 0x48(SP)						
  fe_generic.go:23	0x5f881d		4989c2			MOVQ AX, R10							
  fe_generic.go:23	0x5f8820		4889f8			MOVQ DI, AX							
  fe_generic.go:23	0x5f8823		48f7e0			MULQ AX								
  fe_generic.go:23	0x5f8826		4889542440		MOVQ DX, 0x40(SP)						
  fe_generic.go:32	0x5f882b		4c8d1cf6		LEAQ 0(SI)(SI*8), R11						
  fe_generic.go:32	0x5f882f		4e8d1c5e		LEAQ 0(SI)(R11*2), R11						
  fe_generic.go:23	0x5f8833		4889c6			MOVQ AX, SI							
  fe_generic.go:45	0x5f8836		4c89e0			MOVQ R12, AX							
  fe_generic.go:45	0x5f8839		49f7e3			MULQ R11							
  fe_generic.go:45	0x5f883c		4889942480000000	MOVQ DX, 0x80(SP)						
  fe_generic.go:32	0x5f8844		4c8d1cff		LEAQ 0(DI)(DI*8), R11						
  fe_generic.go:32	0x5f8848		4e8d1c5f		LEAQ 0(DI)(R11*2), R11						
  fe_generic.go:45	0x5f884c		4889c7			MOVQ AX, DI							
  fe_generic.go:45	0x5f884f		4c89d8			MOVQ R11, AX							
  fe_generic.go:45	0x5f8852		49f7e5			MULQ R13							
  fe_generic.go:45	0x5f8855		4989c5			MOVQ AX, R13							
  fe_generic.go:45	0x5f8858		4c89d8			MOVQ R11, AX							
  fe_generic.go:45	0x5f885b		4989d3			MOVQ DX, R11							
  fe_generic.go:45	0x5f885e		49f7e4			MULQ R12							
  fe_generic.go:45	0x5f8861		4889442430		MOVQ AX, 0x30(SP)						
  fe_generic.go:32	0x5f8866		4b8d0cc0		LEAQ 0(R8)(R8*8), CX						
  fe_generic.go:32	0x5f886a		498d0c48		LEAQ 0(R8)(CX*2), CX						
  fe_generic.go:37	0x5f886e		4c89c0			MOVQ R8, AX							
  fe_generic.go:45	0x5f8871		4989d0			MOVQ DX, R8							
  fe_generic.go:37	0x5f8874		48f7e1			MULQ CX								
  fe_generic.go:37	0x5f8877		4889442428		MOVQ AX, 0x28(SP)						
  fe_generic.go:45	0x5f887c		4889c8			MOVQ CX, AX							
  fe_generic.go:37	0x5f887f		4889d1			MOVQ DX, CX							
  fe_generic.go:45	0x5f8882		49f7e4			MULQ R12							
  fe_generic.go:45	0x5f8885		4889442410		MOVQ AX, 0x10(SP)						
  fe_generic.go:32	0x5f888a		4c8d24db		LEAQ 0(BX)(BX*8), R12						
  fe_generic.go:32	0x5f888e		4e8d2463		LEAQ 0(BX)(R12*2), R12						
  fe_generic.go:37	0x5f8892		4889d8			MOVQ BX, AX							
  fe_generic.go:45	0x5f8895		4889d3			MOVQ DX, BX							
  fe_generic.go:37	0x5f8898		49f7e4			MULQ R12							
  fe_generic.go:46	0x5f889b		4c01ff			ADDQ R15, DI							
  fe_generic.go:47	0x5f889e		4c8ba42480000000	MOVQ 0x80(SP), R12						
  fe_generic.go:47	0x5f88a6		4c8bbc2488000000	MOVQ 0x88(SP), R15						
  fe_generic.go:47	0x5f88ae		4d11fc			ADCQ R15, R12							
  fe_generic.go:46	0x5f88b1		4901fd			ADDQ DI, R13							
  fe_generic.go:47	0x5f88b4		4d11e3			ADCQ R12, R11							
  fe_generic.go:295	0x5f88b7		49bcffffffffffff0700	MOVQ $0x7ffffffffffff, R12					
  fe_generic.go:295	0x5f88c1		4d21ec			ANDQ R13, R12							
  fe_generic.go:53	0x5f88c4		49c1e30d		SHLQ $0xd, R11							
  fe_generic.go:53	0x5f88c8		49c1ed33		SHRQ $0x33, R13							
  fe_generic.go:53	0x5f88cc		4d09dd			ORQ R11, R13							
  fe_generic.go:46	0x5f88cf		4c8b5c2430		MOVQ 0x30(SP), R11						
  fe_generic.go:46	0x5f88d4		4c8b7c2438		MOVQ 0x38(SP), R15						
  fe_generic.go:46	0x5f88d9		4d01fb			ADDQ R15, R11							
  fe_generic.go:47	0x5f88dc		4c8b7c2478		MOVQ 0x78(SP), R15						
  fe_generic.go:47	0x5f88e1		4d11f8			ADCQ R15, R8							
  fe_generic.go:38	0x5f88e4		4c8b7c2428		MOVQ 0x28(SP), R15						
  fe_generic.go:38	0x5f88e9		4d01df			ADDQ R11, R15							
  fe_generic.go:39	0x5f88ec		4c11c1			ADCQ R8, CX							
  fe_generic.go:296	0x5f88ef		49bbffffffffffff0700	MOVQ $0x7ffffffffffff, R11					
  fe_generic.go:296	0x5f88f9		4d21fb			ANDQ R15, R11							
  fe_generic.go:296	0x5f88fc		4d01eb			ADDQ R13, R11							
  fe_generic.go:302	0x5f88ff		49bdffffffffffff0700	MOVQ $0x7ffffffffffff, R13					
  fe_generic.go:302	0x5f8909		4d21dd			ANDQ R11, R13							
  fe_generic.go:303	0x5f890c		49c1eb33		SHRQ $0x33, R11							
  fe_generic.go:53	0x5f8910		48c1e10d		SHLQ $0xd, CX							
  fe_generic.go:53	0x5f8914		49c1ef33		SHRQ $0x33, R15							
  fe_generic.go:53	0x5f8918		4909cf			ORQ CX, R15							
  fe_generic.go:302	0x5f891b		4c89e9			MOVQ R13, CX							
  fe_generic.go:24	0x5f891e		4c8b6c2418		MOVQ 0x18(SP), R13						
  fe_generic.go:295	0x5f8923		4c89e7			MOVQ R12, DI							
  fe_generic.go:24	0x5f8926		4c8b642420		MOVQ 0x20(SP), R12						
  fe_generic.go:24	0x5f892b		4d01e5			ADDQ R12, R13							
  fe_generic.go:25	0x5f892e		4c8b642468		MOVQ 0x68(SP), R12						
  fe_generic.go:17	0x5f8933		4d89c8			MOVQ R9, R8							
  fe_generic.go:25	0x5f8936		4c8b4c2470		MOVQ 0x70(SP), R9						
  fe_generic.go:25	0x5f893b		4d11cc			ADCQ R9, R12							
  fe_generic.go:46	0x5f893e		4c8b4c2410		MOVQ 0x10(SP), R9						
  fe_generic.go:46	0x5f8943		4d01e9			ADDQ R13, R9							
  fe_generic.go:47	0x5f8946		4c11e3			ADCQ R12, BX							
  fe_generic.go:297	0x5f8949		49bcffffffffffff0700	MOVQ $0x7ffffffffffff, R12					
  fe_generic.go:297	0x5f8953		4d21cc			ANDQ R9, R12							
  fe_generic.go:297	0x5f8956		4d01fc			ADDQ R15, R12							
  fe_generic.go:303	0x5f8959		49bdffffffffffff0700	MOVQ $0x7ffffffffffff, R13					
  fe_generic.go:303	0x5f8963		4d21e5			ANDQ R12, R13							
  fe_generic.go:304	0x5f8966		49c1ec33		SHRQ $0x33, R12							
  fe_generic.go:53	0x5f896a		48c1e30d		SHLQ $0xd, BX							
  fe_generic.go:53	0x5f896e		49c1e933		SHRQ $0x33, R9							
  fe_generic.go:53	0x5f8972		4909d9			ORQ BX, R9							
  fe_generic.go:303	0x5f8975		4d01eb			ADDQ R13, R11							
  fe_generic.go:24	0x5f8978		4c8b2c24		MOVQ 0(SP), R13							
  fe_generic.go:24	0x5f897c		4c8b7c2408		MOVQ 0x8(SP), R15						
  fe_generic.go:24	0x5f8981		4d01fd			ADDQ R15, R13							
  fe_generic.go:25	0x5f8984		4c8b7c2458		MOVQ 0x58(SP), R15						
  fe_generic.go:303	0x5f8989		4c89db			MOVQ R11, BX							
  fe_generic.go:25	0x5f898c		4c8b5c2460		MOVQ 0x60(SP), R11						
  fe_generic.go:25	0x5f8991		4d11df			ADCQ R11, R15							
  fe_generic.go:38	0x5f8994		4c01e8			ADDQ R13, AX							
  fe_generic.go:39	0x5f8997		4c11fa			ADCQ R15, DX							
  fe_generic.go:298	0x5f899a		49bbffffffffffff0700	MOVQ $0x7ffffffffffff, R11					
  fe_generic.go:298	0x5f89a4		4921c3			ANDQ AX, R11							
  fe_generic.go:298	0x5f89a7		4d01d9			ADDQ R11, R9							
  fe_generic.go:304	0x5f89aa		49bbffffffffffff0700	MOVQ $0x7ffffffffffff, R11					
  fe_generic.go:304	0x5f89b4		4d21cb			ANDQ R9, R11							
  fe_generic.go:305	0x5f89b7		49c1e933		SHRQ $0x33, R9							
  fe_generic.go:53	0x5f89bb		48c1e20d		SHLQ $0xd, DX							
  fe_generic.go:53	0x5f89bf		48c1e833		SHRQ $0x33, AX							
  fe_generic.go:53	0x5f89c3		4809d0			ORQ DX, AX							
  fe_generic.go:304	0x5f89c6		4d01e3			ADDQ R12, R11							
  fe_generic.go:24	0x5f89c9		4d01c2			ADDQ R8, R10							
  fe_generic.go:25	0x5f89cc		4c8b642448		MOVQ 0x48(SP), R12						
  fe_generic.go:25	0x5f89d1		4c8b6c2450		MOVQ 0x50(SP), R13						
  fe_generic.go:25	0x5f89d6		4d11ec			ADCQ R13, R12							
  fe_generic.go:24	0x5f89d9		4c01d6			ADDQ R10, SI							
  fe_generic.go:25	0x5f89dc		4c8b542440		MOVQ 0x40(SP), R10						
  fe_generic.go:25	0x5f89e1		4d11d4			ADCQ R10, R12							
  fe_generic.go:299	0x5f89e4		49baffffffffffff0700	MOVQ $0x7ffffffffffff, R10					
  fe_generic.go:299	0x5f89ee		4921f2			ANDQ SI, R10							
  fe_generic.go:299	0x5f89f1		4901c2			ADDQ AX, R10							
  fe_generic.go:301	0x5f89f4		4d89d5			MOVQ R10, R13							
  fe_generic.go:301	0x5f89f7		49c1ea33		SHRQ $0x33, R10							
  fe_generic.go:305	0x5f89fb		49bfffffffffffff0700	MOVQ $0x7ffffffffffff, R15					
  fe_generic.go:305	0x5f8a05		4d21fd			ANDQ R15, R13							
  fe_generic.go:53	0x5f8a08		49c1e40d		SHLQ $0xd, R12							
  fe_generic.go:53	0x5f8a0c		48c1ee33		SHRQ $0x33, SI							
  fe_generic.go:53	0x5f8a10		4c09e6			ORQ R12, SI							
  fe_generic.go:32	0x5f8a13		4c8d24f6		LEAQ 0(SI)(SI*8), R12						
  fe_generic.go:32	0x5f8a17		4e8d2466		LEAQ 0(SI)(R12*2), R12						
  fe_generic.go:295	0x5f8a1b		4901fc			ADDQ DI, R12							
  fe_generic.go:301	0x5f8a1e		4d21e7			ANDQ R12, R15							
  fe_generic.go:302	0x5f8a21		49c1ec33		SHRQ $0x33, R12							
  fe_generic.go:32	0x5f8a25		4b8d04d2		LEAQ 0(R10)(R10*8), AX						
  fe_generic.go:32	0x5f8a29		4d8d1442		LEAQ 0(R10)(AX*2), R10						
  fe_generic.go:301	0x5f8a2d		4b8d1417		LEAQ 0(R15)(R10*1), DX						
  fe_generic.go:302	0x5f8a31		498d340c		LEAQ 0(R12)(CX*1), SI						
  fe_generic.go:305	0x5f8a35		4d01e9			ADDQ R13, R9							
  fe_generic.go:268	0x5f8a38		488b8c2490000000	MOVQ 0x90(SP), CX						
  fe_generic.go:268	0x5f8a40		48ffc9			DECQ CX								
  fe_generic.go:308	0x5f8a43		488b8424a8000000	MOVQ 0xa8(SP), AX						
  fe_generic.go:268	0x5f8a4b		4d89d8			MOVQ R11, R8							
  fe_generic.go:268	0x5f8a4e		4889df			MOVQ BX, DI							
  fe_generic.go:268	0x5f8a51		4c89cb			MOVQ R9, BX							
  fe_generic.go:268	0x5f8a54		4885c9			TESTQ CX, CX							
  fe_generic.go:268	0x5f8a57		0f8f2ffdffff		JG 0x5f878c							
  fe_generic.go:308	0x5f8a5d		488910			MOVQ DX, 0(AX)							
  fe_generic.go:309	0x5f8a60		48897008		MOVQ SI, 0x8(AX)						
  fe_generic.go:310	0x5f8a64		48897810		MOVQ DI, 0x10(AX)						
  fe_generic.go:311	0x5f8a68		4c894018		MOVQ R8, 0x18(AX)						
  fe_generic.go:312	0x5f8a6c		48895820		MOVQ BX, 0x20(AX)						
  fe_generic.go:313	0x5f8a70		c9			LEAVE								
  fe_generic.go:313	0x5f8a71		c3			RET								
  fe_generic.go:261	0x5f8a72		4889442408		MOVQ AX, 0x8(SP)						
  fe_generic.go:261	0x5f8a77		48895c2410		MOVQ BX, 0x10(SP)						
  fe_generic.go:261	0x5f8a7c		48894c2418		MOVQ CX, 0x18(SP)						
  fe_generic.go:261	0x5f8a81		e81a5de9ff		CALL runtime.morestack_noctxt.abi0(SB)				
  fe_generic.go:261	0x5f8a86		488b442408		MOVQ 0x8(SP), AX						
  fe_generic.go:261	0x5f8a8b		488b5c2410		MOVQ 0x10(SP), BX						
  fe_generic.go:261	0x5f8a90		488b4c2418		MOVQ 0x18(SP), CX						
  fe_generic.go:261	0x5f8a95		e9a6fcffff		JMP crypto/internal/fips140/edwards25519/field.feSquareN(SB)	
