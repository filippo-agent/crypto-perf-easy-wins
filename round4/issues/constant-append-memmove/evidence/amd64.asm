TEXT example.com/constantappend.Append32(SB) /home/exedev/crypto-audit/round4/issues/constant-append-memmove/repro.go
  repro.go:6		0x5381c0		493b6610		CMPQ SP, 0x10(R14)				
  repro.go:6		0x5381c4		7673			JBE 0x538239					
  repro.go:6		0x5381c6		55			PUSHQ BP					
  repro.go:6		0x5381c7		4889e5			MOVQ SP, BP					
  repro.go:6		0x5381ca		4883ec40		SUBQ $0x40, SP					
  repro.go:6		0x5381ce		4889442450		MOVQ AX, 0x50(SP)				
  repro.go:7		0x5381d3		8407			TESTB AL, 0(DI)					
  repro.go:7		0x5381d5		488d5320		LEAQ 0x20(BX), DX				
  repro.go:7		0x5381d9		4839d1			CMPQ CX, DX					
  repro.go:7		0x5381dc		732b			JAE 0x538209					
  repro.go:7		0x5381de		48897c2468		MOVQ DI, 0x68(SP)				
  repro.go:7		0x5381e3		48895c2458		MOVQ BX, 0x58(SP)				
  repro.go:7		0x5381e8		4889d3			MOVQ DX, BX					
  repro.go:7		0x5381eb		bf20000000		MOVL $0x20, DI					
  repro.go:7		0x5381f0		488d3541ca1600		LEAQ 0x16ca41(IP), SI				
  repro.go:7		0x5381f7		e8a4e1f4ff		CALL runtime.growslice(SB)			
  repro.go:7		0x5381fc		488b7c2468		MOVQ 0x68(SP), DI				
  repro.go:7		0x538201		4889da			MOVQ BX, DX					
  repro.go:7		0x538204		488b5c2458		MOVQ 0x58(SP), BX				
  repro.go:7		0x538209		4889442438		MOVQ AX, 0x38(SP)				
  repro.go:7		0x53820e		4889542430		MOVQ DX, 0x30(SP)				
  repro.go:7		0x538213		48894c2428		MOVQ CX, 0x28(SP)				
  repro.go:7		0x538218		4801d8			ADDQ BX, AX					
  repro.go:7		0x53821b		4889fb			MOVQ DI, BX					
  repro.go:7		0x53821e		b920000000		MOVL $0x20, CX					
  repro.go:7		0x538223		e83831f5ff		CALL runtime.memmove(SB)			
  repro.go:7		0x538228		488b442438		MOVQ 0x38(SP), AX				
  repro.go:7		0x53822d		488b5c2430		MOVQ 0x30(SP), BX				
  repro.go:7		0x538232		488b4c2428		MOVQ 0x28(SP), CX				
  repro.go:7		0x538237		c9			LEAVE						
  repro.go:7		0x538238		c3			RET						
  repro.go:6		0x538239		4889442408		MOVQ AX, 0x8(SP)				
  repro.go:6		0x53823e		48895c2410		MOVQ BX, 0x10(SP)				
  repro.go:6		0x538243		48894c2418		MOVQ CX, 0x18(SP)				
  repro.go:6		0x538248		48897c2420		MOVQ DI, 0x20(SP)				
  repro.go:6		0x53824d		e82e11f5ff		CALL runtime.morestack_noctxt.abi0(SB)		
  repro.go:6		0x538252		488b442408		MOVQ 0x8(SP), AX				
  repro.go:6		0x538257		488b5c2410		MOVQ 0x10(SP), BX				
  repro.go:6		0x53825c		488b4c2418		MOVQ 0x18(SP), CX				
  repro.go:6		0x538261		488b7c2420		MOVQ 0x20(SP), DI				
  repro.go:6		0x538266		e955ffffff		JMP example.com/constantappend.Append32(SB)	

TEXT example.com/constantappend.Append28(SB) /home/exedev/crypto-audit/round4/issues/constant-append-memmove/repro.go
  repro.go:11		0x538280		493b6610		CMPQ SP, 0x10(R14)				
  repro.go:11		0x538284		7673			JBE 0x5382f9					
  repro.go:11		0x538286		55			PUSHQ BP					
  repro.go:11		0x538287		4889e5			MOVQ SP, BP					
  repro.go:11		0x53828a		4883ec40		SUBQ $0x40, SP					
  repro.go:11		0x53828e		4889442450		MOVQ AX, 0x50(SP)				
  repro.go:12		0x538293		8407			TESTB AL, 0(DI)					
  repro.go:12		0x538295		488d531c		LEAQ 0x1c(BX), DX				
  repro.go:12		0x538299		4839d1			CMPQ CX, DX					
  repro.go:12		0x53829c		732b			JAE 0x5382c9					
  repro.go:12		0x53829e		48897c2468		MOVQ DI, 0x68(SP)				
  repro.go:12		0x5382a3		48895c2458		MOVQ BX, 0x58(SP)				
  repro.go:12		0x5382a8		4889d3			MOVQ DX, BX					
  repro.go:12		0x5382ab		bf1c000000		MOVL $0x1c, DI					
  repro.go:12		0x5382b0		488d3581c91600		LEAQ 0x16c981(IP), SI				
  repro.go:12		0x5382b7		e8e4e0f4ff		CALL runtime.growslice(SB)			
  repro.go:12		0x5382bc		488b7c2468		MOVQ 0x68(SP), DI				
  repro.go:12		0x5382c1		4889da			MOVQ BX, DX					
  repro.go:12		0x5382c4		488b5c2458		MOVQ 0x58(SP), BX				
  repro.go:12		0x5382c9		4889442438		MOVQ AX, 0x38(SP)				
  repro.go:12		0x5382ce		4889542430		MOVQ DX, 0x30(SP)				
  repro.go:12		0x5382d3		48894c2428		MOVQ CX, 0x28(SP)				
  repro.go:12		0x5382d8		4801d8			ADDQ BX, AX					
  repro.go:12		0x5382db		4889fb			MOVQ DI, BX					
  repro.go:12		0x5382de		b91c000000		MOVL $0x1c, CX					
  repro.go:12		0x5382e3		e87830f5ff		CALL runtime.memmove(SB)			
  repro.go:12		0x5382e8		488b442438		MOVQ 0x38(SP), AX				
  repro.go:12		0x5382ed		488b5c2430		MOVQ 0x30(SP), BX				
  repro.go:12		0x5382f2		488b4c2428		MOVQ 0x28(SP), CX				
  repro.go:12		0x5382f7		c9			LEAVE						
  repro.go:12		0x5382f8		c3			RET						
  repro.go:11		0x5382f9		4889442408		MOVQ AX, 0x8(SP)				
  repro.go:11		0x5382fe		48895c2410		MOVQ BX, 0x10(SP)				
  repro.go:11		0x538303		48894c2418		MOVQ CX, 0x18(SP)				
  repro.go:11		0x538308		48897c2420		MOVQ DI, 0x20(SP)				
  repro.go:11		0x53830d		e86e10f5ff		CALL runtime.morestack_noctxt.abi0(SB)		
  repro.go:11		0x538312		488b442408		MOVQ 0x8(SP), AX				
  repro.go:11		0x538317		488b5c2410		MOVQ 0x10(SP), BX				
  repro.go:11		0x53831c		488b4c2418		MOVQ 0x18(SP), CX				
  repro.go:11		0x538321		488b7c2420		MOVQ 0x20(SP), DI				
  repro.go:11		0x538326		e955ffffff		JMP example.com/constantappend.Append28(SB)	

TEXT example.com/constantappend.Local32(SB) /home/exedev/crypto-audit/round4/issues/constant-append-memmove/repro.go
  repro.go:18		0x538340		493b6610		CMPQ SP, 0x10(R14)				
  repro.go:18		0x538344		0f8683000000		JBE 0x5383cd					
  repro.go:18		0x53834a		55			PUSHQ BP					
  repro.go:18		0x53834b		4889e5			MOVQ SP, BP					
  repro.go:18		0x53834e		4883ec60		SUBQ $0x60, SP					
  repro.go:18		0x538352		4889442470		MOVQ AX, 0x70(SP)				
  repro.go:19		0x538357		488d542428		LEAQ 0x28(SP), DX				
  repro.go:19		0x53835c		440f1037		MOVUPS 0(DI), X14				
  repro.go:19		0x538360		440f1132		MOVUPS X14, 0(DX)				
  repro.go:19		0x538364		440f107710		MOVUPS 0x10(DI), X14				
  repro.go:19		0x538369		440f117210		MOVUPS X14, 0x10(DX)				
  repro.go:20		0x53836e		4c8d4320		LEAQ 0x20(BX), R8				
  repro.go:20		0x538372		4c39c1			CMPQ CX, R8					
  repro.go:20		0x538375		7326			JAE 0x53839d					
  repro.go:20		0x538377		48895c2478		MOVQ BX, 0x78(SP)				
  repro.go:20		0x53837c		4c89c3			MOVQ R8, BX					
  repro.go:20		0x53837f		bf20000000		MOVL $0x20, DI					
  repro.go:20		0x538384		488d35adc81600		LEAQ 0x16c8ad(IP), SI				
  repro.go:20		0x53838b		e810e0f4ff		CALL runtime.growslice(SB)			
  repro.go:19		0x538390		488d542428		LEAQ 0x28(SP), DX				
  repro.go:20		0x538395		4989d8			MOVQ BX, R8					
  repro.go:20		0x538398		488b5c2478		MOVQ 0x78(SP), BX				
  repro.go:20		0x53839d		4889442458		MOVQ AX, 0x58(SP)				
  repro.go:20		0x5383a2		4c89442450		MOVQ R8, 0x50(SP)				
  repro.go:20		0x5383a7		48894c2448		MOVQ CX, 0x48(SP)				
  repro.go:20		0x5383ac		4801d8			ADDQ BX, AX					
  repro.go:20		0x5383af		4889d3			MOVQ DX, BX					
  repro.go:20		0x5383b2		b920000000		MOVL $0x20, CX					
  repro.go:20		0x5383b7		e8a42ff5ff		CALL runtime.memmove(SB)			
  repro.go:20		0x5383bc		488b442458		MOVQ 0x58(SP), AX				
  repro.go:20		0x5383c1		488b5c2450		MOVQ 0x50(SP), BX				
  repro.go:20		0x5383c6		488b4c2448		MOVQ 0x48(SP), CX				
  repro.go:20		0x5383cb		c9			LEAVE						
  repro.go:20		0x5383cc		c3			RET						
  repro.go:18		0x5383cd		4889442408		MOVQ AX, 0x8(SP)				
  repro.go:18		0x5383d2		48895c2410		MOVQ BX, 0x10(SP)				
  repro.go:18		0x5383d7		48894c2418		MOVQ CX, 0x18(SP)				
  repro.go:18		0x5383dc		48897c2420		MOVQ DI, 0x20(SP)				
  repro.go:18		0x5383e1		e89a0ff5ff		CALL runtime.morestack_noctxt.abi0(SB)		
  repro.go:18		0x5383e6		488b442408		MOVQ 0x8(SP), AX				
  repro.go:18		0x5383eb		488b5c2410		MOVQ 0x10(SP), BX				
  repro.go:18		0x5383f0		488b4c2418		MOVQ 0x18(SP), CX				
  repro.go:18		0x5383f5		488b7c2420		MOVQ 0x20(SP), DI				
  repro.go:18		0x5383fa		e941ffffff		JMP example.com/constantappend.Local32(SB)	

TEXT example.com/constantappend.Array32(SB) /home/exedev/crypto-audit/round4/issues/constant-append-memmove/repro.go
  repro.go:26		0x538400		493b6610		CMPQ SP, 0x10(R14)				
  repro.go:26		0x538404		0f86a9000000		JBE 0x5384b3					
  repro.go:26		0x53840a		55			PUSHQ BP					
  repro.go:26		0x53840b		4889e5			MOVQ SP, BP					
  repro.go:26		0x53840e		4883ec48		SUBQ $0x48, SP					
  repro.go:26		0x538412		4889442458		MOVQ AX, 0x58(SP)				
  repro.go:27		0x538417		488d542428		LEAQ 0x28(SP), DX				
  repro.go:27		0x53841c		440f1037		MOVUPS 0(DI), X14				
  repro.go:27		0x538420		440f1132		MOVUPS X14, 0(DX)				
  repro.go:27		0x538424		440f107710		MOVUPS 0x10(DI), X14				
  repro.go:27		0x538429		440f117210		MOVUPS X14, 0x10(DX)				
  repro.go:29		0x53842e		4c8d4320		LEAQ 0x20(BX), R8				
  repro.go:29		0x538432		4c39c1			CMPQ CX, R8					
  repro.go:29		0x538435		7326			JAE 0x53845d					
  repro.go:29		0x538437		48895c2460		MOVQ BX, 0x60(SP)				
  repro.go:29		0x53843c		4c89c3			MOVQ R8, BX					
  repro.go:29		0x53843f		bf20000000		MOVL $0x20, DI					
  repro.go:29		0x538444		488d35edc71600		LEAQ 0x16c7ed(IP), SI				
  repro.go:29		0x53844b		e850dff4ff		CALL runtime.growslice(SB)			
  repro.go:27		0x538450		488d542428		LEAQ 0x28(SP), DX				
  repro.go:29		0x538455		4989d8			MOVQ BX, R8					
  repro.go:30		0x538458		488b5c2460		MOVQ 0x60(SP), BX				
  repro.go:29		0x53845d		498d7400e0		LEAQ -0x20(R8)(AX*1), SI			
  repro.go:29		0x538462		440f113e		MOVUPS X15, 0(SI)				
  repro.go:29		0x538466		440f117e10		MOVUPS X15, 0x10(SI)				
  repro.go:30		0x53846b		4c39c3			CMPQ BX, R8					
  repro.go:30		0x53846e		773d			JA 0x5384ad					
  repro.go:30		0x538470		4c89c6			MOVQ R8, SI					
  repro.go:30		0x538473		4929d8			SUBQ BX, R8					
  repro.go:30		0x538476		4889df			MOVQ BX, DI					
  repro.go:30		0x538479		4829cb			SUBQ CX, BX					
  repro.go:30		0x53847c		48c1fb3f		SARQ $0x3f, BX					
  repro.go:30		0x538480		4821df			ANDQ BX, DI					
  repro.go:30		0x538483		4801c7			ADDQ AX, DI					
  repro.go:30		0x538486		4983f820		CMPQ R8, $0x20					
  repro.go:30		0x53848a		7217			JB 0x5384a3					
  repro.go:30		0x53848c		440f1032		MOVUPS 0(DX), X14				
  repro.go:30		0x538490		440f1137		MOVUPS X14, 0(DI)				
  repro.go:30		0x538494		440f107210		MOVUPS 0x10(DX), X14				
  repro.go:30		0x538499		440f117710		MOVUPS X14, 0x10(DI)				
  repro.go:31		0x53849e		4889f3			MOVQ SI, BX					
  repro.go:31		0x5384a1		c9			LEAVE						
  repro.go:31		0x5384a2		c3			RET						
  repro.go:30		0x5384a3		b820000000		MOVL $0x20, AX					
  repro.go:30		0x5384a8		e8132bf5ff		CALL runtime.panicBounds(SB)			
  repro.go:30		0x5384ad		e80e2bf5ff		CALL runtime.panicBounds(SB)			
  repro.go:30		0x5384b2		90			NOPL						
  repro.go:26		0x5384b3		4889442408		MOVQ AX, 0x8(SP)				
  repro.go:26		0x5384b8		48895c2410		MOVQ BX, 0x10(SP)				
  repro.go:26		0x5384bd		48894c2418		MOVQ CX, 0x18(SP)				
  repro.go:26		0x5384c2		48897c2420		MOVQ DI, 0x20(SP)				
  repro.go:26		0x5384c7		e8b40ef5ff		CALL runtime.morestack_noctxt.abi0(SB)		
  repro.go:26		0x5384cc		488b442408		MOVQ 0x8(SP), AX				
  repro.go:26		0x5384d1		488b5c2410		MOVQ 0x10(SP), BX				
  repro.go:26		0x5384d6		488b4c2418		MOVQ 0x18(SP), CX				
  repro.go:26		0x5384db		488b7c2420		MOVQ 0x20(SP), DI				
  repro.go:26		0x5384e0		e91bffffff		JMP example.com/constantappend.Array32(SB)	

TEXT example.com/constantappend.Scalar32(SB) /home/exedev/crypto-audit/round4/issues/constant-append-memmove/repro.go
  repro.go:37		0x538500		493b6610		CMPQ SP, 0x10(R14)				
  repro.go:37		0x538504		7674			JBE 0x53857a					
  repro.go:37		0x538506		55			PUSHQ BP					
  repro.go:37		0x538507		4889e5			MOVQ SP, BP					
  repro.go:37		0x53850a		4883ec60		SUBQ $0x60, SP					
  repro.go:37		0x53850e		4889442470		MOVQ AX, 0x70(SP)				
  repro.go:38		0x538513		4883c320		ADDQ $0x20, BX					
  repro.go:39		0x538517		488b17			MOVQ 0(DI), DX					
  repro.go:40		0x53851a		4c8b4708		MOVQ 0x8(DI), R8				
  repro.go:41		0x53851e		4c8b4f10		MOVQ 0x10(DI), R9				
  repro.go:42		0x538522		4c8b5718		MOVQ 0x18(DI), R10				
  repro.go:38		0x538526		4839d9			CMPQ CX, BX					
  repro.go:38		0x538529		7339			JAE 0x538564					
  repro.go:39		0x53852b		4889542458		MOVQ DX, 0x58(SP)				
  repro.go:40		0x538530		4c89442450		MOVQ R8, 0x50(SP)				
  repro.go:41		0x538535		4c894c2448		MOVQ R9, 0x48(SP)				
  repro.go:42		0x53853a		4c89542440		MOVQ R10, 0x40(SP)				
  repro.go:38		0x53853f		bf20000000		MOVL $0x20, DI					
  repro.go:38		0x538544		488d35edc61600		LEAQ 0x16c6ed(IP), SI				
  repro.go:38		0x53854b		e850def4ff		CALL runtime.growslice(SB)			
  repro.go:38		0x538550		488b542458		MOVQ 0x58(SP), DX				
  repro.go:38		0x538555		4c8b442450		MOVQ 0x50(SP), R8				
  repro.go:38		0x53855a		4c8b4c2448		MOVQ 0x48(SP), R9				
  repro.go:38		0x53855f		4c8b542440		MOVQ 0x40(SP), R10				
  repro.go:38		0x538564		48895403e0		MOVQ DX, -0x20(BX)(AX*1)			
  repro.go:38		0x538569		4c894403e8		MOVQ R8, -0x18(BX)(AX*1)			
  repro.go:38		0x53856e		4c894c03f0		MOVQ R9, -0x10(BX)(AX*1)			
  repro.go:38		0x538573		4c895403f8		MOVQ R10, -0x8(BX)(AX*1)			
  repro.go:38		0x538578		c9			LEAVE						
  repro.go:38		0x538579		c3			RET						
  repro.go:37		0x53857a		4889442408		MOVQ AX, 0x8(SP)				
  repro.go:37		0x53857f		48895c2410		MOVQ BX, 0x10(SP)				
  repro.go:37		0x538584		48894c2418		MOVQ CX, 0x18(SP)				
  repro.go:37		0x538589		48897c2420		MOVQ DI, 0x20(SP)				
  repro.go:37		0x53858e		e8ed0df5ff		CALL runtime.morestack_noctxt.abi0(SB)		
  repro.go:37		0x538593		488b442408		MOVQ 0x8(SP), AX				
  repro.go:37		0x538598		488b5c2410		MOVQ 0x10(SP), BX				
  repro.go:37		0x53859d		488b4c2418		MOVQ 0x18(SP), CX				
  repro.go:37		0x5385a2		488b7c2420		MOVQ 0x20(SP), DI				
  repro.go:37		0x5385a7		e954ffffff		JMP example.com/constantappend.Scalar32(SB)	

TEXT example.com/constantappend.Copy32(SB) /home/exedev/crypto-audit/round4/issues/constant-append-memmove/repro.go
  repro.go:48		0x5385c0		493b6610		CMPQ SP, 0x10(R14)				
  repro.go:48		0x5385c4		7621			JBE 0x5385e7					
  repro.go:48		0x5385c6		55			PUSHQ BP					
  repro.go:48		0x5385c7		4889e5			MOVQ SP, BP					
  repro.go:48		0x5385ca		4883ec18		SUBQ $0x18, SP					
  repro.go:48		0x5385ce		8400			TESTB AL, 0(AX)					
  repro.go:48		0x5385d0		8403			TESTB AL, 0(BX)					
  repro.go:48		0x5385d2		4839c3			CMPQ BX, AX					
  repro.go:48		0x5385d5		740e			JE 0x5385e5					
  repro.go:48		0x5385d7		b920000000		MOVL $0x20, CX					
  repro.go:48		0x5385dc		0f1f4000		NOPL 0(AX)					
  repro.go:48		0x5385e0		e87b2df5ff		CALL runtime.memmove(SB)			
  repro.go:48		0x5385e5		c9			LEAVE						
  repro.go:48		0x5385e6		c3			RET						
  repro.go:48		0x5385e7		4889442408		MOVQ AX, 0x8(SP)				
  repro.go:48		0x5385ec		48895c2410		MOVQ BX, 0x10(SP)				
  repro.go:48		0x5385f1		e88a0df5ff		CALL runtime.morestack_noctxt.abi0(SB)		
  repro.go:48		0x5385f6		488b442408		MOVQ 0x8(SP), AX				
  repro.go:48		0x5385fb		488b5c2410		MOVQ 0x10(SP), BX				
  repro.go:48		0x538600		ebbe			JMP example.com/constantappend.Copy32(SB)	

TEXT example.com/constantappend.TestAppends(SB) /home/exedev/crypto-audit/round4/issues/constant-append-memmove/repro_test.go
  repro_test.go:12	0x538620		4c8da42468feffff		LEAQ 0xfffffe68(SP), R12			
  repro_test.go:12	0x538628		4d3b6610			CMPQ R12, 0x10(R14)				
  repro_test.go:12	0x53862c		0f86f4050000			JBE 0x538c26					
  repro_test.go:12	0x538632		55				PUSHQ BP					
  repro_test.go:12	0x538633		4889e5				MOVQ SP, BP					
  repro_test.go:12	0x538636		4881ec10020000			SUBQ $0x210, SP					
  repro_test.go:18	0x53863d		4889842420020000		MOVQ AX, 0x220(SP)				
  repro_test.go:17	0x538645		48c784243001000006000000	MOVQ $0x6, 0x130(SP)				
  repro_test.go:17	0x538651		488d15551f0100			LEAQ 0x11f55(IP), DX				
  repro_test.go:17	0x538658		4889942428010000		MOVQ DX, 0x128(SP)				
  repro_test.go:17	0x538660		488d1501ba1800			LEAQ 0x18ba01(IP), DX				
  repro_test.go:17	0x538667		4889942438010000		MOVQ DX, 0x138(SP)				
  repro_test.go:17	0x53866f		48c784244001000020000000	MOVQ $0x20, 0x140(SP)				
  repro_test.go:17	0x53867b		48c784245001000005000000	MOVQ $0x5, 0x150(SP)				
  repro_test.go:17	0x538687		488d15201d0100			LEAQ 0x11d20(IP), DX				
  repro_test.go:17	0x53868e		4889942448010000		MOVQ DX, 0x148(SP)				
  repro_test.go:17	0x538696		488d15c3b91800			LEAQ 0x18b9c3(IP), DX				
  repro_test.go:17	0x53869d		4889942458010000		MOVQ DX, 0x158(SP)				
  repro_test.go:17	0x5386a5		48c78424600100001c000000	MOVQ $0x1c, 0x160(SP)				
  repro_test.go:17	0x5386b1		48c784247001000005000000	MOVQ $0x5, 0x170(SP)				
  repro_test.go:17	0x5386bd		488d15ef1c0100			LEAQ 0x11cef(IP), DX				
  repro_test.go:17	0x5386c4		4889942468010000		MOVQ DX, 0x168(SP)				
  repro_test.go:17	0x5386cc		488d15a5b91800			LEAQ 0x18b9a5(IP), DX				
  repro_test.go:17	0x5386d3		4889942478010000		MOVQ DX, 0x178(SP)				
  repro_test.go:17	0x5386db		48c784248001000020000000	MOVQ $0x20, 0x180(SP)				
  repro_test.go:17	0x5386e7		48c784249001000005000000	MOVQ $0x5, 0x190(SP)				
  repro_test.go:17	0x5386f3		488d15be1c0100			LEAQ 0x11cbe(IP), DX				
  repro_test.go:17	0x5386fa		4889942488010000		MOVQ DX, 0x188(SP)				
  repro_test.go:17	0x538702		488d1567b91800			LEAQ 0x18b967(IP), DX				
  repro_test.go:17	0x538709		4889942498010000		MOVQ DX, 0x198(SP)				
  repro_test.go:17	0x538711		48c78424a001000020000000	MOVQ $0x20, 0x1a0(SP)				
  repro_test.go:17	0x53871d		48c78424b001000006000000	MOVQ $0x6, 0x1b0(SP)				
  repro_test.go:17	0x538729		488d15831e0100			LEAQ 0x11e83(IP), DX				
  repro_test.go:17	0x538730		48899424a8010000		MOVQ DX, 0x1a8(SP)				
  repro_test.go:17	0x538738		488d1541b91800			LEAQ 0x18b941(IP), DX				
  repro_test.go:17	0x53873f		48899424b8010000		MOVQ DX, 0x1b8(SP)				
  repro_test.go:17	0x538747		48c78424c001000020000000	MOVQ $0x20, 0x1c0(SP)				
  repro_test.go:18	0x538753		488d942428010000		LEAQ 0x128(SP), DX				
  repro_test.go:18	0x53875b		31c9				XORL CX, CX					
  repro_test.go:18	0x53875d		eb14				JMP 0x538773					
  repro_test.go:18	0x53875f		488b942420010000		MOVQ 0x120(SP), DX				
  repro_test.go:18	0x538767		4883c220			ADDQ $0x20, DX					
  repro_test.go:18	0x53876b		488b4c2470			MOVQ 0x70(SP), CX				
  repro_test.go:18	0x538770		48ffc1				INCQ CX						
  repro_test.go:18	0x538773		4883f905			CMPQ CX, $0x5					
  repro_test.go:18	0x538777		0f8d71040000			JGE 0x538bee					
  repro_test.go:18	0x53877d		48894c2470			MOVQ CX, 0x70(SP)				
  repro_test.go:18	0x538782		4889942420010000		MOVQ DX, 0x120(SP)				
  repro_test.go:18	0x53878a		488b7218			MOVQ 0x18(DX), SI				
  repro_test.go:18	0x53878e		4889742468			MOVQ SI, 0x68(SP)				
  repro_test.go:18	0x538793		488b7a10			MOVQ 0x10(DX), DI				
  repro_test.go:18	0x538797		4889bc2418010000		MOVQ DI, 0x118(SP)				
  repro_test.go:18	0x53879f		4c8b02				MOVQ 0(DX), R8					
  repro_test.go:18	0x5387a2		4c89842410010000		MOVQ R8, 0x110(SP)				
  repro_test.go:18	0x5387aa		4c8b4a08			MOVQ 0x8(DX), R9				
  repro_test.go:18	0x5387ae		4c894c2460			MOVQ R9, 0x60(SP)				
  repro_test.go:19	0x5387b3		4c8d9424c8000000		LEAQ 0xc8(SP), R10				
  repro_test.go:19	0x5387bb		450f113a			MOVUPS X15, 0(R10)				
  repro_test.go:19	0x5387bf		450f117a10			MOVUPS X15, 0x10(R10)				
  repro_test.go:19	0x5387c4		450f117a20			MOVUPS X15, 0x20(R10)				
  repro_test.go:19	0x5387c9		450f117a28			MOVUPS X15, 0x28(R10)				
  repro_test.go:19	0x5387ce		48c78424d000000005000000	MOVQ $0x5, 0xd0(SP)				
  repro_test.go:19	0x5387da		48c78424d800000011000000	MOVQ $0x11, 0xd8(SP)				
  repro_test.go:19	0x5387e6		48c78424e000000024000000	MOVQ $0x24, 0xe0(SP)				
  repro_test.go:19	0x5387f2		48c78424e800000025000000	MOVQ $0x25, 0xe8(SP)				
  repro_test.go:19	0x5387fe		48c78424f000000040000000	MOVQ $0x40, 0xf0(SP)				
  repro_test.go:19	0x53880a		48c78424f800000080000000	MOVQ $0x80, 0xf8(SP)				
  repro_test.go:19	0x538816		4531d2				XORL R10, R10					
  repro_test.go:19	0x538819		eb08				JMP 0x538823					
  repro_test.go:19	0x53881b		4c8b542458			MOVQ 0x58(SP), R10				
  repro_test.go:19	0x538820		49ffc2				INCQ R10					
  repro_test.go:19	0x538823		4983fa07			CMPQ R10, $0x7					
  repro_test.go:19	0x538827		0f8d32030000			JGE 0x538b5f					
  repro_test.go:19	0x53882d		4c89542458			MOVQ R10, 0x58(SP)				
  repro_test.go:19	0x538832		4e8b9cd4c8000000		MOVQ 0xc8(SP)(R10*8), R11			
  repro_test.go:19	0x53883a		4c895c2440			MOVQ R11, 0x40(SP)				
  repro_test.go:20	0x53883f		4c8da42498000000		LEAQ 0x98(SP), R12				
  repro_test.go:20	0x538847		450f113c24			MOVUPS X15, 0(R12)				
  repro_test.go:20	0x53884c		450f117c2410			MOVUPS X15, 0x10(R12)				
  repro_test.go:20	0x538852		450f117c2420			MOVUPS X15, 0x20(R12)				
  repro_test.go:20	0x538858		48c78424a000000003000000	MOVQ $0x3, 0xa0(SP)				
  repro_test.go:20	0x538864		48c78424a800000005000000	MOVQ $0x5, 0xa8(SP)				
  repro_test.go:20	0x538870		48c78424b00000000b000000	MOVQ $0xb, 0xb0(SP)				
  repro_test.go:20	0x53887c		48c78424b800000020000000	MOVQ $0x20, 0xb8(SP)				
  repro_test.go:20	0x538888		48c78424c00000003f000000	MOVQ $0x3f, 0xc0(SP)				
  repro_test.go:20	0x538894		31c0				XORL AX, AX					
  repro_test.go:20	0x538896		eb08				JMP 0x5388a0					
  repro_test.go:20	0x538898		488b442450			MOVQ 0x50(SP), AX				
  repro_test.go:20	0x53889d		48ffc0				INCQ AX						
  repro_test.go:20	0x5388a0		4883f806			CMPQ AX, $0x6					
  repro_test.go:20	0x5388a4		0f8d71ffffff			JGE 0x53881b					
  repro_test.go:20	0x5388aa		4889442450			MOVQ AX, 0x50(SP)				
  repro_test.go:20	0x5388af		488b8cc498000000		MOVQ 0x98(SP)(AX*8), CX				
  repro_test.go:20	0x5388b7		48894c2430			MOVQ CX, 0x30(SP)				
  repro_test.go:21	0x5388bc		488d05b5881500			LEAQ 0x1588b5(IP), AX				
  repro_test.go:21	0x5388c3		e85857eeff			CALL runtime.newobject(SB)			
  repro_test.go:22	0x5388c8		31c9				XORL CX, CX					
  repro_test.go:22	0x5388ca		488b542430			MOVQ 0x30(SP), DX				
  repro_test.go:22	0x5388cf		488b5c2440			MOVQ 0x40(SP), BX				
  repro_test.go:22	0x5388d4		eb15				JMP 0x5388eb					
  repro_test.go:22	0x5388d6		488d34c9			LEAQ 0(CX)(CX*8), SI				
  repro_test.go:22	0x5388da		488d34b1			LEAQ 0(CX)(SI*4), SI				
  repro_test.go:22	0x5388de		4801d6				ADDQ DX, SI					
  repro_test.go:22	0x5388e1		4801de				ADDQ BX, SI					
  repro_test.go:22	0x5388e4		40883408			MOVB SI, 0(AX)(CX*1)				
  repro_test.go:22	0x5388e8		48ffc1				INCQ CX						
  repro_test.go:22	0x5388eb		4883f97f			CMPQ CX, $0x7f					
  repro_test.go:22	0x5388ef		7ee5				JLE 0x5388d6					
  repro_test.go:23	0x5388f1		4881fa80000000			CMPQ DX, $0x80					
  repro_test.go:23	0x5388f8		0f871b030000			JA 0x538c19					
  repro_test.go:23	0x5388fe		488d7280			LEAQ -0x80(DX), SI				
  repro_test.go:23	0x538902		4989f0				MOVQ SI, R8					
  repro_test.go:23	0x538905		48f7de				NEGQ SI						
  repro_test.go:23	0x538908		49c1f83f			SARQ $0x3f, R8					
  repro_test.go:23	0x53890c		4921d0				ANDQ DX, R8					
  repro_test.go:23	0x53890f		498d3c00			LEAQ 0(R8)(AX*1), DI				
  repro_test.go:23	0x538913		4883fe20			CMPQ SI, $0x20					
  repro_test.go:23	0x538917		0f82f2020000			JB 0x538c0f					
  repro_test.go:25	0x53891d		4883fb05			CMPQ BX, $0x5					
  repro_test.go:26	0x538921		be05000000			MOVL $0x5, SI					
  repro_test.go:26	0x538926		480f4cf3			CMOVL BX, SI					
  repro_test.go:26	0x53892a		4881fb80000000			CMPQ BX, $0x80					
  repro_test.go:25	0x538931		0f87ce020000			JA 0x538c05					
  repro_test.go:25	0x538937		660f1f840000000000		NOPW 0(AX)(AX*1)				
  repro_test.go:26	0x538940		4839f3				CMPQ BX, SI					
  repro_test.go:26	0x538943		0f82b6020000			JB 0x538bff					
  repro_test.go:21	0x538949		4889842408020000		MOVQ AX, 0x208(SP)				
  repro_test.go:23	0x538951		4889bc2408010000		MOVQ DI, 0x108(SP)				
  repro_test.go:26	0x538959		4889742438			MOVQ SI, 0x38(SP)				
  repro_test.go:27	0x53895e		488b4c2468			MOVQ 0x68(SP), CX				
  repro_test.go:27	0x538963		4c8d0431			LEAQ 0(CX)(SI*1), R8				
  repro_test.go:27	0x538967		4c89442448			MOVQ R8, 0x48(SP)				
  repro_test.go:27	0x53896c		4983f820			CMPQ R8, $0x20					
  repro_test.go:27	0x538970		7715				JA 0x538987					
  repro_test.go:27	0x538972		4c8d4c2478			LEAQ 0x78(SP), R9				
  repro_test.go:27	0x538977		450f1139			MOVUPS X15, 0(R9)				
  repro_test.go:27	0x53897b		450f117910			MOVUPS X15, 0x10(R9)				
  repro_test.go:27	0x538980		4c8d4c2478			LEAQ 0x78(SP), R9				
  repro_test.go:27	0x538985		eb39				JMP 0x5389c0					
  repro_test.go:27	0x538987		488d05aac21600			LEAQ 0x16c2aa(IP), AX				
  repro_test.go:27	0x53898e		4c89c3				MOVQ R8, BX					
  repro_test.go:27	0x538991		4889d9				MOVQ BX, CX					
  repro_test.go:27	0x538994		e827d9f4ff			CALL runtime.makeslice(SB)			
  repro_test.go:29	0x538999		488b4c2468			MOVQ 0x68(SP), CX				
  repro_test.go:30	0x53899e		488b5c2440			MOVQ 0x40(SP), BX				
  repro_test.go:28	0x5389a3		488b742438			MOVQ 0x38(SP), SI				
  repro_test.go:29	0x5389a8		488bbc2408010000		MOVQ 0x108(SP), DI				
  repro_test.go:28	0x5389b0		4c8b442448			MOVQ 0x48(SP), R8				
  repro_test.go:28	0x5389b5		4989c1				MOVQ AX, R9					
  repro_test.go:28	0x5389b8		488b842408020000		MOVQ 0x208(SP), AX				
  repro_test.go:28	0x5389c0		4c898c2400010000		MOVQ R9, 0x100(SP)				
  repro_test.go:28	0x5389c8		4c39c6				CMPQ SI, R8					
  repro_test.go:28	0x5389cb		4d89c2				MOVQ R8, R10					
  repro_test.go:28	0x5389ce		4c0f4cc6			CMOVL SI, R8					
  repro_test.go:28	0x5389d2		4c39c8				CMPQ AX, R9					
  repro_test.go:28	0x5389d5		7505				JNE 0x5389dc					
  repro_test.go:28	0x5389d7		4c39d6				CMPQ SI, R10					
  repro_test.go:28	0x5389da		eb47				JMP 0x538a23					
  repro_test.go:28	0x5389dc		4889c3				MOVQ AX, BX					
  repro_test.go:28	0x5389df		4c89c1				MOVQ R8, CX					
  repro_test.go:28	0x5389e2		4c89c8				MOVQ R9, AX					
  repro_test.go:28	0x5389e5		e87629f5ff			CALL runtime.memmove(SB)			
  repro_test.go:28	0x5389ea		488b5c2438			MOVQ 0x38(SP), BX				
  repro_test.go:28	0x5389ef		488b542448			MOVQ 0x48(SP), DX				
  repro_test.go:28	0x5389f4		4839d3				CMPQ BX, DX					
  repro_test.go:30	0x5389f7		488b842408020000		MOVQ 0x208(SP), AX				
  repro_test.go:29	0x5389ff		488b4c2468			MOVQ 0x68(SP), CX				
  repro_test.go:30	0x538a04		488b5c2440			MOVQ 0x40(SP), BX				
  repro_test.go:29	0x538a09		488b742438			MOVQ 0x38(SP), SI				
  repro_test.go:29	0x538a0e		488bbc2408010000		MOVQ 0x108(SP), DI				
  repro_test.go:29	0x538a16		4c8b8c2400010000		MOVQ 0x100(SP), R9				
  repro_test.go:29	0x538a1e		4c8b542448			MOVQ 0x48(SP), R10				
  repro_test.go:29	0x538a23		0f87d1010000			JA 0x538bfa					
  repro_test.go:29	0x538a29		4989c8				MOVQ CX, R8					
  repro_test.go:29	0x538a2c		49f7d8				NEGQ R8						
  repro_test.go:29	0x538a2f		49c1f83f			SARQ $0x3f, R8					
  repro_test.go:29	0x538a33		4921f0				ANDQ SI, R8					
  repro_test.go:29	0x538a36		4d01c8				ADDQ R9, R8					
  repro_test.go:29	0x538a39		0f1f8000000000			NOPL 0(AX)					
  repro_test.go:29	0x538a40		4883f920			CMPQ CX, $0x20					
  repro_test.go:29	0x538a44		0f87a6010000			JA 0x538bf0					
  repro_test.go:29	0x538a4a		4939f8				CMPQ R8, DI					
  repro_test.go:29	0x538a4d		7425				JE 0x538a74					
  repro_test.go:29	0x538a4f		4c89c0				MOVQ R8, AX					
  repro_test.go:29	0x538a52		4889fb				MOVQ DI, BX					
  repro_test.go:29	0x538a55		e80629f5ff			CALL runtime.memmove(SB)			
  repro_test.go:30	0x538a5a		488b842408020000		MOVQ 0x208(SP), AX				
  repro_test.go:30	0x538a62		488b5c2440			MOVQ 0x40(SP), BX				
  repro_test.go:30	0x538a67		488b742438			MOVQ 0x38(SP), SI				
  repro_test.go:30	0x538a6c		488bbc2408010000		MOVQ 0x108(SP), DI				
  repro_test.go:30	0x538a74		488b942418010000		MOVQ 0x118(SP), DX				
  repro_test.go:30	0x538a7c		4c8b02				MOVQ 0(DX), R8					
  repro_test.go:30	0x538a7f		4889d9				MOVQ BX, CX					
  repro_test.go:30	0x538a82		4889f3				MOVQ SI, BX					
  repro_test.go:30	0x538a85		41ffd0				CALL R8						
  bytes.go:23		0x538a88		488b742448			MOVQ 0x48(SP), SI				
  bytes.go:23		0x538a8d		4839f3				CMPQ BX, SI					
  bytes.go:23		0x538a90		7404				JE 0x538a96					
  bytes.go:23		0x538a92		31c0				XORL AX, AX					
  bytes.go:23		0x538a94		eb10				JMP 0x538aa6					
  bytes.go:23		0x538a96		4889d9				MOVQ BX, CX					
  bytes.go:23		0x538a99		488b9c2400010000		MOVQ 0x100(SP), BX				
  bytes.go:23		0x538aa1		e89aa1ecff			CALL runtime.memequal(SB)			
  repro_test.go:31	0x538aa6		84c0				TESTL AL, AL					
  repro_test.go:31	0x538aa8		0f85eafdffff			JNE 0x538898					
  repro_test.go:31	0x538aae		488d8c24d8010000		LEAQ 0x1d8(SP), CX				
  repro_test.go:31	0x538ab6		440f1139			MOVUPS X15, 0(CX)				
  repro_test.go:31	0x538aba		440f117910			MOVUPS X15, 0x10(CX)				
  repro_test.go:31	0x538abf		440f117920			MOVUPS X15, 0x20(CX)				
  repro_test.go:31	0x538ac4		488b842410010000		MOVQ 0x110(SP), AX				
  repro_test.go:31	0x538acc		488b5c2460			MOVQ 0x60(SP), BX				
  repro_test.go:31	0x538ad1		e80aa1f4ff			CALL runtime.convTstring(SB)			
  repro_test.go:31	0x538ad6		488d0ddbc01600			LEAQ 0x16c0db(IP), CX				
  repro_test.go:31	0x538add		48898c24d8010000		MOVQ CX, 0x1d8(SP)				
  repro_test.go:31	0x538ae5		48898424e0010000		MOVQ AX, 0x1e0(SP)				
  repro_test.go:31	0x538aed		488b442440			MOVQ 0x40(SP), AX				
  repro_test.go:31	0x538af2		e889a0f4ff			CALL runtime.convT64(SB)			
  repro_test.go:31	0x538af7		488d0dfac21600			LEAQ 0x16c2fa(IP), CX				
  repro_test.go:31	0x538afe		48898c24e8010000		MOVQ CX, 0x1e8(SP)				
  repro_test.go:31	0x538b06		48898424f0010000		MOVQ AX, 0x1f0(SP)				
  repro_test.go:31	0x538b0e		488b442430			MOVQ 0x30(SP), AX				
  repro_test.go:31	0x538b13		e868a0f4ff			CALL runtime.convT64(SB)			
  repro_test.go:31	0x538b18		488d0dd9c21600			LEAQ 0x16c2d9(IP), CX				
  repro_test.go:31	0x538b1f		48898c24f8010000		MOVQ CX, 0x1f8(SP)				
  repro_test.go:31	0x538b27		4889842400020000		MOVQ AX, 0x200(SP)				
  repro_test.go:31	0x538b2f		488b842420020000		MOVQ 0x220(SP), AX				
  repro_test.go:31	0x538b37		8400				TESTB AL, 0(AX)					
  repro_test.go:31	0x538b39		488d1d86410100			LEAQ 0x14186(IP), BX				
  repro_test.go:31	0x538b40		b90f000000			MOVL $0xf, CX					
  repro_test.go:31	0x538b45		488dbc24d8010000		LEAQ 0x1d8(SP), DI				
  repro_test.go:31	0x538b4d		be03000000			MOVL $0x3, SI					
  repro_test.go:31	0x538b52		4189f0				MOVL SI, R8					
  repro_test.go:31	0x538b55		e8e6c0faff			CALL testing.(*common).Fatalf(SB)		
  repro_test.go:31	0x538b5a		e939fdffff			JMP 0x538898					
  repro_test.go:34	0x538b5f		b820000000			MOVL $0x20, AX					
  repro_test.go:34	0x538b64		488d1d6d921500			LEAQ 0x15926d(IP), BX				
  repro_test.go:34	0x538b6b		b901000000			MOVL $0x1, CX					
  repro_test.go:34	0x538b70		e8eb79eeff			CALL runtime.mallocgcSmallNoScanSC4(SB)		
  repro_test.go:34	0x538b75		488b942418010000		MOVQ 0x118(SP), DX				
  repro_test.go:34	0x538b7d		488b32				MOVQ 0(DX), SI					
  repro_test.go:34	0x538b80		31db				XORL BX, BX					
  repro_test.go:34	0x538b82		89d9				MOVL BX, CX					
  repro_test.go:34	0x538b84		4889c7				MOVQ AX, DI					
  repro_test.go:34	0x538b87		31c0				XORL AX, AX					
  repro_test.go:34	0x538b89		ffd6				CALL SI						
  repro_test.go:34	0x538b8b		488b542468			MOVQ 0x68(SP), DX				
  repro_test.go:34	0x538b90		4839d3				CMPQ BX, DX					
  repro_test.go:34	0x538b93		0f84c6fbffff			JE 0x53875f					
  repro_test.go:34	0x538b99		440f11bc24c8010000		MOVUPS X15, 0x1c8(SP)				
  repro_test.go:34	0x538ba2		488b842410010000		MOVQ 0x110(SP), AX				
  repro_test.go:34	0x538baa		488b5c2460			MOVQ 0x60(SP), BX				
  repro_test.go:34	0x538baf		e82ca0f4ff			CALL runtime.convTstring(SB)			
  repro_test.go:34	0x538bb4		488d0dfdbf1600			LEAQ 0x16bffd(IP), CX				
  repro_test.go:34	0x538bbb		48898c24c8010000		MOVQ CX, 0x1c8(SP)				
  repro_test.go:34	0x538bc3		48898424d0010000		MOVQ AX, 0x1d0(SP)				
  repro_test.go:34	0x538bcb		488b842420020000		MOVQ 0x220(SP), AX				
  repro_test.go:34	0x538bd3		8400				TESTB AL, 0(AX)					
  repro_test.go:34	0x538bd5		488d9c24c8010000		LEAQ 0x1c8(SP), BX				
  repro_test.go:34	0x538bdd		b901000000			MOVL $0x1, CX					
  repro_test.go:34	0x538be2		89cf				MOVL CX, DI					
  repro_test.go:34	0x538be4		e857bffaff			CALL testing.(*common).Fatal(SB)		
  repro_test.go:34	0x538be9		e971fbffff			JMP 0x53875f					
  repro_test.go:36	0x538bee		c9				LEAVE						
  repro_test.go:36	0x538bef		c3				RET						
  repro_test.go:29	0x538bf0		b820000000			MOVL $0x20, AX					
  repro_test.go:29	0x538bf5		e8c623f5ff			CALL runtime.panicBounds(SB)			
  repro_test.go:29	0x538bfa		e8c123f5ff			CALL runtime.panicBounds(SB)			
  repro_test.go:26	0x538bff		90				NOPL						
  repro_test.go:26	0x538c00		e8bb23f5ff			CALL runtime.panicBounds(SB)			
  repro_test.go:26	0x538c05		b880000000			MOVL $0x80, AX					
  repro_test.go:26	0x538c0a		e8b123f5ff			CALL runtime.panicBounds(SB)			
  repro_test.go:23	0x538c0f		b820000000			MOVL $0x20, AX					
  repro_test.go:23	0x538c14		e8a723f5ff			CALL runtime.panicBounds(SB)			
  repro_test.go:23	0x538c19		b880000000			MOVL $0x80, AX					
  repro_test.go:23	0x538c1e		6690				NOPW						
  repro_test.go:23	0x538c20		e89b23f5ff			CALL runtime.panicBounds(SB)			
  repro_test.go:23	0x538c25		90				NOPL						
  repro_test.go:12	0x538c26		4889442408			MOVQ AX, 0x8(SP)				
  repro_test.go:12	0x538c2b		e85007f5ff			CALL runtime.morestack_noctxt.abi0(SB)		
  repro_test.go:12	0x538c30		488b442408			MOVQ 0x8(SP), AX				
  repro_test.go:12	0x538c35		e9e6f9ffff			JMP example.com/constantappend.TestAppends(SB)	

TEXT example.com/constantappend.TestCopyOverlap(SB) /home/exedev/crypto-audit/round4/issues/constant-append-memmove/repro_test.go
  repro_test.go:38	0x538c40		4c8da42438ffffff		LEAQ 0xffffff38(SP), R12				
  repro_test.go:38	0x538c48		4d3b6610			CMPQ R12, 0x10(R14)					
  repro_test.go:38	0x538c4c		0f863e020000			JBE 0x538e90						
  repro_test.go:38	0x538c52		55				PUSHQ BP						
  repro_test.go:38	0x538c53		4889e5				MOVQ SP, BP						
  repro_test.go:38	0x538c56		4881ec40010000			SUBQ $0x140, SP						
  repro_test.go:39	0x538c5d		4889842450010000		MOVQ AX, 0x150(SP)					
  repro_test.go:39	0x538c65		488d8c24f8000000		LEAQ 0xf8(SP), CX					
  repro_test.go:39	0x538c6d		440f1139			MOVUPS X15, 0(CX)					
  repro_test.go:39	0x538c71		440f117910			MOVUPS X15, 0x10(CX)					
  repro_test.go:39	0x538c76		440f117920			MOVUPS X15, 0x20(CX)					
  repro_test.go:39	0x538c7b		440f117928			MOVUPS X15, 0x28(CX)					
  repro_test.go:39	0x538c80		48c78424f8000000e1ffffff	MOVQ $-0x1f, 0xf8(SP)					
  repro_test.go:39	0x538c8c		48c7842400010000f0ffffff	MOVQ $-0x10, 0x100(SP)					
  repro_test.go:39	0x538c98		48c7842408010000ffffffff	MOVQ $-0x1, 0x108(SP)					
  repro_test.go:39	0x538ca4		48c784241801000001000000	MOVQ $0x1, 0x118(SP)					
  repro_test.go:39	0x538cb0		48c784242001000010000000	MOVQ $0x10, 0x120(SP)					
  repro_test.go:39	0x538cbc		48c78424280100001f000000	MOVQ $0x1f, 0x128(SP)					
  repro_test.go:39	0x538cc8		31c9				XORL CX, CX						
  repro_test.go:39	0x538cca		eb14				JMP 0x538ce0						
  repro_test.go:39	0x538ccc		488b8c24f0000000		MOVQ 0xf0(SP), CX					
  repro_test.go:39	0x538cd4		48ffc1				INCQ CX							
  repro_test.go:39	0x538cd7		660f1f840000000000		NOPW 0(AX)(AX*1)					
  repro_test.go:39	0x538ce0		4883f907			CMPQ CX, $0x7						
  repro_test.go:39	0x538ce4		0f8d7b010000			JGE 0x538e65						
  repro_test.go:39	0x538cea		488b94ccf8000000		MOVQ 0xf8(SP)(CX*8), DX					
  repro_test.go:40	0x538cf2		488d742440			LEAQ 0x40(SP), SI					
  repro_test.go:40	0x538cf7		440f113e			MOVUPS X15, 0(SI)					
  repro_test.go:40	0x538cfb		440f117e10			MOVUPS X15, 0x10(SI)					
  repro_test.go:40	0x538d00		440f117e20			MOVUPS X15, 0x20(SI)					
  repro_test.go:40	0x538d05		440f117e30			MOVUPS X15, 0x30(SI)					
  repro_test.go:40	0x538d0a		440f117e40			MOVUPS X15, 0x40(SI)					
  repro_test.go:40	0x538d0f		440f117e50			MOVUPS X15, 0x50(SI)					
  repro_test.go:40	0x538d14		440f117e60			MOVUPS X15, 0x60(SI)					
  repro_test.go:40	0x538d19		440f117e70			MOVUPS X15, 0x70(SI)					
  repro_test.go:41	0x538d1e		31f6				XORL SI, SI						
  repro_test.go:41	0x538d20		eb10				JMP 0x538d32						
  repro_test.go:41	0x538d22		486bfe2b			IMULQ $0x2b, SI, DI					
  repro_test.go:41	0x538d26		4883c707			ADDQ $0x7, DI						
  repro_test.go:41	0x538d2a		40887c3440			MOVB DI, 0x40(SP)(SI*1)					
  repro_test.go:41	0x538d2f		48ffc6				INCQ SI							
  repro_test.go:41	0x538d32		4883fe7f			CMPQ SI, $0x7f						
  repro_test.go:41	0x538d36		7eea				JLE 0x538d22						
  repro_test.go:42	0x538d38		488d742420			LEAQ 0x20(SP), SI					
  repro_test.go:42	0x538d3d		488d5c2470			LEAQ 0x70(SP), BX					
  repro_test.go:42	0x538d42		440f1033			MOVUPS 0(BX), X14					
  repro_test.go:42	0x538d46		440f1136			MOVUPS X14, 0(SI)					
  repro_test.go:42	0x538d4a		440f107310			MOVUPS 0x10(BX), X14					
  repro_test.go:42	0x538d4f		440f117610			MOVUPS X14, 0x10(SI)					
  repro_test.go:43	0x538d54		488d7230			LEAQ 0x30(DX), SI					
  repro_test.go:43	0x538d58		0f1f840000000000		NOPL 0(AX)(AX*1)					
  repro_test.go:43	0x538d60		4881fe80000000			CMPQ SI, $0x80						
  repro_test.go:43	0x538d67		0f8718010000			JA 0x538e85						
  repro_test.go:43	0x538d6d		488d7ab0			LEAQ -0x50(DX), DI					
  repro_test.go:43	0x538d71		4989f8				MOVQ DI, R8						
  repro_test.go:43	0x538d74		48f7df				NEGQ DI							
  repro_test.go:43	0x538d77		49c1f83f			SARQ $0x3f, R8						
  repro_test.go:43	0x538d7b		4921f0				ANDQ SI, R8						
  repro_test.go:43	0x538d7e		6690				NOPW							
  repro_test.go:43	0x538d80		4883ff20			CMPQ DI, $0x20						
  repro_test.go:43	0x538d84		0f82ec000000			JB 0x538e76						
  repro_test.go:39	0x538d8a		48898c24f0000000		MOVQ CX, 0xf0(SP)					
  repro_test.go:39	0x538d92		48899424e0000000		MOVQ DX, 0xe0(SP)					
  repro_test.go:43	0x538d9a		4889b424e8000000		MOVQ SI, 0xe8(SP)					
  repro_test.go:43	0x538da2		4a8d440440			LEAQ 0x40(SP)(R8*1), AX					
  repro_test.go:43	0x538da7		e814f8ffff			CALL example.com/constantappend.Copy32(SB)		
  repro_test.go:44	0x538dac		488b8c24e0000000		MOVQ 0xe0(SP), CX					
  repro_test.go:44	0x538db4		488d5150			LEAQ 0x50(CX), DX					
  repro_test.go:44	0x538db8		0f1f840000000000		NOPL 0(AX)(AX*1)					
  repro_test.go:44	0x538dc0		4881fa80000000			CMPQ DX, $0x80						
  repro_test.go:44	0x538dc7		0f879f000000			JA 0x538e6c						
  repro_test.go:44	0x538dcd		488bb424e8000000		MOVQ 0xe8(SP), SI					
  repro_test.go:44	0x538dd5		4839f2				CMPQ DX, SI						
  repro_test.go:44	0x538dd8		0f8289000000			JB 0x538e67						
  repro_test.go:44	0x538dde		488d540c70			LEAQ 0x70(SP)(CX*1), DX					
  repro_test.go:44	0x538de3		488d8424c0000000		LEAQ 0xc0(SP), AX					
  repro_test.go:44	0x538deb		440f1032			MOVUPS 0(DX), X14					
  repro_test.go:44	0x538def		440f1130			MOVUPS X14, 0(AX)					
  repro_test.go:44	0x538df3		440f107210			MOVUPS 0x10(DX), X14					
  repro_test.go:44	0x538df8		440f117010			MOVUPS X14, 0x10(AX)					
  repro_test.go:44	0x538dfd		488d5c2420			LEAQ 0x20(SP), BX					
  repro_test.go:44	0x538e02		b920000000			MOVL $0x20, CX						
  repro_test.go:44	0x538e07		e8349eecff			CALL runtime.memequal(SB)				
  repro_test.go:44	0x538e0c		84c0				TESTL AL, AL						
  repro_test.go:44	0x538e0e		0f85b8feffff			JNE 0x538ccc						
  repro_test.go:44	0x538e14		440f11bc2430010000		MOVUPS X15, 0x130(SP)					
  repro_test.go:44	0x538e1d		488b8424e0000000		MOVQ 0xe0(SP), AX					
  repro_test.go:44	0x538e25		e8569df4ff			CALL runtime.convT64(SB)				
  repro_test.go:44	0x538e2a		488d0dc7bf1600			LEAQ 0x16bfc7(IP), CX					
  repro_test.go:44	0x538e31		48898c2430010000		MOVQ CX, 0x130(SP)					
  repro_test.go:44	0x538e39		4889842438010000		MOVQ AX, 0x138(SP)					
  repro_test.go:44	0x538e41		488b842450010000		MOVQ 0x150(SP), AX					
  repro_test.go:44	0x538e49		8400				TESTB AL, 0(AX)						
  repro_test.go:44	0x538e4b		488d9c2430010000		LEAQ 0x130(SP), BX					
  repro_test.go:44	0x538e53		b901000000			MOVL $0x1, CX						
  repro_test.go:44	0x538e58		89cf				MOVL CX, DI						
  repro_test.go:44	0x538e5a		e8e1bcfaff			CALL testing.(*common).Fatal(SB)			
  repro_test.go:44	0x538e5f		90				NOPL							
  repro_test.go:44	0x538e60		e967feffff			JMP 0x538ccc						
  repro_test.go:46	0x538e65		c9				LEAVE							
  repro_test.go:46	0x538e66		c3				RET							
  repro_test.go:44	0x538e67		e85421f5ff			CALL runtime.panicBounds(SB)				
  repro_test.go:44	0x538e6c		b880000000			MOVL $0x80, AX						
  repro_test.go:44	0x538e71		e84a21f5ff			CALL runtime.panicBounds(SB)				
  repro_test.go:43	0x538e76		b820000000			MOVL $0x20, AX						
  repro_test.go:43	0x538e7b		0f1f440000			NOPL 0(AX)(AX*1)					
  repro_test.go:43	0x538e80		e83b21f5ff			CALL runtime.panicBounds(SB)				
  repro_test.go:43	0x538e85		b880000000			MOVL $0x80, AX						
  repro_test.go:43	0x538e8a		e83121f5ff			CALL runtime.panicBounds(SB)				
  repro_test.go:43	0x538e8f		90				NOPL							
  repro_test.go:38	0x538e90		4889442408			MOVQ AX, 0x8(SP)					
  repro_test.go:38	0x538e95		e8e604f5ff			CALL runtime.morestack_noctxt.abi0(SB)			
  repro_test.go:38	0x538e9a		488b442408			MOVQ 0x8(SP), AX					
  repro_test.go:38	0x538e9f		90				NOPL							
  repro_test.go:38	0x538ea0		e99bfdffff			JMP example.com/constantappend.TestCopyOverlap(SB)	

TEXT example.com/constantappend.BenchmarkPublicWarmHMAC(SB) /home/exedev/crypto-audit/round4/issues/constant-append-memmove/repro_test.go
  repro_test.go:51	0x538ec0		493b6610		CMPQ SP, 0x10(R14)						
  repro_test.go:51	0x538ec4		0f8680010000		JBE 0x53904a							
  repro_test.go:51	0x538eca		55			PUSHQ BP							
  repro_test.go:51	0x538ecb		4889e5			MOVQ SP, BP							
  repro_test.go:51	0x538ece		4883ec58		SUBQ $0x58, SP							
  repro_test.go:53	0x538ed2		4889442468		MOVQ AX, 0x68(SP)						
  repro_test.go:52	0x538ed7		488d055abd1600		LEAQ 0x16bd5a(IP), AX						
  repro_test.go:52	0x538ede		bb20000000		MOVL $0x20, BX							
  repro_test.go:52	0x538ee3		89d9			MOVL BX, CX							
  repro_test.go:52	0x538ee5		e8d6d3f4ff		CALL runtime.makeslice(SB)					
  repro_test.go:52	0x538eea		4889442450		MOVQ AX, 0x50(SP)						
  repro_test.go:52	0x538eef		488d0542bd1600		LEAQ 0x16bd42(IP), AX						
  repro_test.go:52	0x538ef6		bb20000000		MOVL $0x20, BX							
  repro_test.go:52	0x538efb		89d9			MOVL BX, CX							
  repro_test.go:52	0x538efd		0f1f00			NOPL 0(AX)							
  repro_test.go:52	0x538f00		e8bbd3f4ff		CALL runtime.makeslice(SB)					
  repro_test.go:53	0x538f05		31d2			XORL DX, DX							
  repro_test.go:53	0x538f07		488b742450		MOVQ 0x50(SP), SI						
  repro_test.go:53	0x538f0c		eb1c			JMP 0x538f2a							
  repro_test.go:53	0x538f0e		4c8d0412		LEAQ 0(DX)(DX*1), R8						
  repro_test.go:53	0x538f12		4e8d44c205		LEAQ 0x5(DX)(R8*8), R8						
  repro_test.go:53	0x538f17		44880416		MOVB R8, 0(SI)(DX*1)						
  repro_test.go:53	0x538f1b		4c6bc21d		IMULQ $0x1d, DX, R8						
  repro_test.go:53	0x538f1f		4983c007		ADDQ $0x7, R8							
  repro_test.go:53	0x538f23		44880410		MOVB R8, 0(AX)(DX*1)						
  repro_test.go:53	0x538f27		48ffc2			INCQ DX								
  repro_test.go:53	0x538f2a		4883fa20		CMPQ DX, $0x20							
  repro_test.go:53	0x538f2e		7cde			JL 0x538f0e							
  repro_test.go:52	0x538f30		4889442450		MOVQ AX, 0x50(SP)						
  repro_test.go:54	0x538f35		488d051cb11800		LEAQ 0x18b11c(IP), AX						
  repro_test.go:54	0x538f3c		4889f3			MOVQ SI, BX							
  repro_test.go:54	0x538f3f		b920000000		MOVL $0x20, CX							
  repro_test.go:54	0x538f44		89cf			MOVL CX, DI							
  repro_test.go:54	0x538f46		e895f0ffff		CALL crypto/hmac.New(SB)					
  repro_test.go:54	0x538f4b		4889442430		MOVQ AX, 0x30(SP)						
  repro_test.go:54	0x538f50		48895c2440		MOVQ BX, 0x40(SP)						
  repro_test.go:55	0x538f55		488b5020		MOVQ 0x20(AX), DX						
  repro_test.go:55	0x538f59		4889d8			MOVQ BX, AX							
  repro_test.go:55	0x538f5c		ffd2			CALL DX								
  repro_test.go:56	0x538f5e		488d05d3bc1600		LEAQ 0x16bcd3(IP), AX						
  repro_test.go:56	0x538f65		31db			XORL BX, BX							
  repro_test.go:56	0x538f67		b920000000		MOVL $0x20, CX							
  repro_test.go:56	0x538f6c		e84fd3f4ff		CALL runtime.makeslice(SB)					
  repro_test.go:56	0x538f71		4889442448		MOVQ AX, 0x48(SP)						
  repro_test.go:57	0x538f76		90			NOPL								
  benchmark.go:193	0x538f77		488b442468		MOVQ 0x68(SP), AX						
  benchmark.go:193	0x538f7c		c6805202000001		MOVB $0x1, 0x252(AX)						
  repro_test.go:58	0x538f83		e89810faff		CALL testing.(*B).ResetTimer(SB)				
  repro_test.go:58	0x538f88		31c0			XORL AX, AX							
  repro_test.go:59	0x538f8a		488b4c2448		MOVQ 0x48(SP), CX						
  repro_test.go:59	0x538f8f		ba20000000		MOVL $0x20, DX							
  repro_test.go:59	0x538f94		31db			XORL BX, BX							
  repro_test.go:59	0x538f96		eb71			JMP 0x539009							
  repro_test.go:59	0x538f98		4889542420		MOVQ DX, 0x20(SP)						
  repro_test.go:59	0x538f9d		4889442428		MOVQ AX, 0x28(SP)						
  repro_test.go:59	0x538fa2		48894c2438		MOVQ CX, 0x38(SP)						
  repro_test.go:60	0x538fa7		488b4c2430		MOVQ 0x30(SP), CX						
  repro_test.go:60	0x538fac		488b4920		MOVQ 0x20(CX), CX						
  repro_test.go:60	0x538fb0		488b442440		MOVQ 0x40(SP), AX						
  repro_test.go:60	0x538fb5		ffd1			CALL CX								
  repro_test.go:61	0x538fb7		488b4c2430		MOVQ 0x30(SP), CX						
  repro_test.go:61	0x538fbc		488b4938		MOVQ 0x38(CX), CX						
  repro_test.go:61	0x538fc0		488b442440		MOVQ 0x40(SP), AX						
  repro_test.go:61	0x538fc5		488b5c2450		MOVQ 0x50(SP), BX						
  repro_test.go:61	0x538fca		bf20000000		MOVL $0x20, DI							
  repro_test.go:61	0x538fcf		4889ca			MOVQ CX, DX							
  repro_test.go:61	0x538fd2		89f9			MOVL DI, CX							
  repro_test.go:61	0x538fd4		ffd2			CALL DX								
  repro_test.go:62	0x538fd6		488b4c2430		MOVQ 0x30(SP), CX						
  repro_test.go:62	0x538fdb		488b4930		MOVQ 0x30(CX), CX						
  repro_test.go:62	0x538fdf		488b442440		MOVQ 0x40(SP), AX						
  repro_test.go:62	0x538fe4		488b5c2438		MOVQ 0x38(SP), BX						
  repro_test.go:62	0x538fe9		488b7c2420		MOVQ 0x20(SP), DI						
  repro_test.go:62	0x538fee		4889ca			MOVQ CX, DX							
  repro_test.go:62	0x538ff1		31c9			XORL CX, CX							
  repro_test.go:62	0x538ff3		ffd2			CALL DX								
  repro_test.go:59	0x538ff5		488b542428		MOVQ 0x28(SP), DX						
  repro_test.go:59	0x538ffa		48ffc2			INCQ DX								
  repro_test.go:59	0x538ffd		4889c6			MOVQ AX, SI							
  repro_test.go:59	0x539000		4889d0			MOVQ DX, AX							
  repro_test.go:59	0x539003		4889ca			MOVQ CX, DX							
  repro_test.go:59	0x539006		4889f1			MOVQ SI, CX							
  repro_test.go:59	0x539009		488b742468		MOVQ 0x68(SP), SI						
  repro_test.go:59	0x53900e		48398610020000		CMPQ 0x210(SI), AX						
  repro_test.go:59	0x539015		7f81			JG 0x538f98							
  repro_test.go:64	0x539017		48891d4afa1a00		MOVQ BX, example.com/constantappend.Sink+8(SB)			
  repro_test.go:64	0x53901e		4889154bfa1a00		MOVQ DX, example.com/constantappend.Sink+16(SB)			
  repro_test.go:64	0x539025		833db4061d0000		CMPL runtime.writeBarrier(SB), $0x0				
  repro_test.go:64	0x53902c		7413			JE 0x539041							
  repro_test.go:64	0x53902e		488b052bfa1a00		MOVQ example.com/constantappend.Sink(SB), AX			
  repro_test.go:64	0x539035		e8e61bf5ff		CALL runtime.gcWriteBarrier2(SB)				
  repro_test.go:64	0x53903a		49890b			MOVQ CX, 0(R11)							
  repro_test.go:64	0x53903d		49894308		MOVQ AX, 0x8(R11)						
  repro_test.go:64	0x539041		48890d18fa1a00		MOVQ CX, example.com/constantappend.Sink(SB)			
  repro_test.go:65	0x539048		c9			LEAVE								
  repro_test.go:65	0x539049		c3			RET								
  repro_test.go:51	0x53904a		4889442408		MOVQ AX, 0x8(SP)						
  repro_test.go:51	0x53904f		e82c03f5ff		CALL runtime.morestack_noctxt.abi0(SB)				
  repro_test.go:51	0x539054		488b442408		MOVQ 0x8(SP), AX						
  repro_test.go:51	0x539059		e962feffff		JMP example.com/constantappend.BenchmarkPublicWarmHMAC(SB)	
