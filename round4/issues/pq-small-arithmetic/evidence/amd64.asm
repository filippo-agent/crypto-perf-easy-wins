TEXT example.com/pq-small-arithmetic.Scale88Original(SB) /home/exedev/crypto-audit/round4/issues/pq-small-arithmetic/repro.go
  repro.go:10		0x535580		0fb6c8			MOVZX AL, CX		
  repro.go:10		0x535583		69c900c0ff00		IMULL $0xffc000, CX, CX	
  repro.go:10		0x535589		4863c1			MOVSXD CX, AX		
  repro.go:10		0x53558c		4889c1			MOVQ AX, CX		
  repro.go:10		0x53558f		48c1f93f		SARQ $0x3f, CX		
  repro.go:10		0x535593		baa38b2eba		MOVL $-0x45d1745d, DX	
  repro.go:10		0x535598		480fafc2		IMULQ DX, AX		
  repro.go:10		0x53559c		48c1f826		SARQ $0x26, AX		
  repro.go:10		0x5355a0		29c8			SUBL CX, AX		
  repro.go:10		0x5355a2		c3			RET			

TEXT example.com/pq-small-arithmetic.Scale88Grouped(SB) /home/exedev/crypto-audit/round4/issues/pq-small-arithmetic/repro.go
  repro.go:15		0x5355c0		0fb6c8			MOVZX AL, CX		
  repro.go:15		0x5355c3		69c100e80200		IMULL $0x2e800, CX, AX	
  repro.go:15		0x5355c9		c3			RET			

TEXT example.com/pq-small-arithmetic.Scale88Masked(SB) /home/exedev/crypto-audit/round4/issues/pq-small-arithmetic/repro.go
  repro.go:23		0x5355e0		83e03f			ANDL $0x3f, AX		
  repro.go:23		0x5355e3		69c800c0ff00		IMULL $0xffc000, AX, CX	
  repro.go:23		0x5355e9		4863c1			MOVSXD CX, AX		
  repro.go:23		0x5355ec		b9a38b2eba		MOVL $-0x45d1745d, CX	
  repro.go:23		0x5355f1		480fafc1		IMULQ CX, AX		
  repro.go:23		0x5355f5		48c1e826		SHRQ $0x26, AX		
  repro.go:23		0x5355f9		c3			RET			

TEXT example.com/pq-small-arithmetic.Scale88MaskedGrouped(SB) /home/exedev/crypto-audit/round4/issues/pq-small-arithmetic/repro.go
  repro.go:28		0x535600		83e03f			ANDL $0x3f, AX		
  repro.go:28		0x535603		69c000e80200		IMULL $0x2e800, AX, AX	
  repro.go:28		0x535609		c3			RET			

TEXT example.com/pq-small-arithmetic.Scale88Wide(SB) /home/exedev/crypto-audit/round4/issues/pq-small-arithmetic/repro.go
  repro.go:36		0x535620		0fb6c8			MOVZX AL, CX			
  repro.go:36		0x535623		4869c900c0ff00		IMULQ $0xffc000, CX, CX		
  repro.go:36		0x53562a		48b88c2ebae8a28b2eba	MOVQ $0xba2e8ba2e8ba2e8c, AX	
  repro.go:36		0x535634		48f7e1			MULQ CX				
  repro.go:36		0x535637		48c1ea06		SHRQ $0x6, DX			
  repro.go:36		0x53563b		4889d0			MOVQ DX, AX			
  repro.go:36		0x53563e		c3			RET				

TEXT example.com/pq-small-arithmetic.Scale32Masked(SB) /home/exedev/crypto-audit/round4/issues/pq-small-arithmetic/repro.go
  repro.go:41		0x535640		83e00f			ANDL $0xf, AX		
  repro.go:41		0x535643		69c000c0ff00		IMULL $0xffc000, AX, AX	
  repro.go:41		0x535649		c1e805			SHRL $0x5, AX		
  repro.go:41		0x53564c		c3			RET			

TEXT example.com/pq-small-arithmetic.Scale32MaskedGrouped(SB) /home/exedev/crypto-audit/round4/issues/pq-small-arithmetic/repro.go
  repro.go:46		0x535660		83e00f			ANDL $0xf, AX		
  repro.go:46		0x535663		69c000fe0700		IMULL $0x7fe00, AX, AX	
  repro.go:46		0x535669		c3			RET			

TEXT example.com/pq-small-arithmetic.BitsOriginal(SB) /home/exedev/crypto-audit/round4/issues/pq-small-arithmetic/repro.go
  repro.go:54		0x535680		89c2			MOVL AX, DX		
  repro.go:54		0x535682		c0e807			SHRL $0x7, AL		
  repro.go:54		0x535685		89d6			MOVL DX, SI		
  repro.go:54		0x535687		c0ea06			SHRL $0x6, DL		
  repro.go:54		0x53568a		83e201			ANDL $0x1, DX		
  repro.go:54		0x53568d		4189f0			MOVL SI, R8		
  repro.go:54		0x535690		40c0ee05		SHRL $0x5, SI		
  repro.go:54		0x535694		83e601			ANDL $0x1, SI		
  repro.go:54		0x535697		4589c1			MOVL R8, R9		
  repro.go:54		0x53569a		41c0e804		SHRL $0x4, R8		
  repro.go:54		0x53569e		4183e001		ANDL $0x1, R8		
  repro.go:55		0x5356a2		4589ca			MOVL R9, R10		
  repro.go:55		0x5356a5		41c0e903		SHRL $0x3, R9		
  repro.go:55		0x5356a9		4183e101		ANDL $0x1, R9		
  repro.go:55		0x5356ad		4589d3			MOVL R10, R11		
  repro.go:55		0x5356b0		41c0ea02		SHRL $0x2, R10		
  repro.go:55		0x5356b4		4183e201		ANDL $0x1, R10		
  repro.go:55		0x5356b8		4589dc			MOVL R11, R12		
  repro.go:55		0x5356bb		41d0eb			SHRL $0x1, R11		
  repro.go:55		0x5356be		4183e301		ANDL $0x1, R11		
  repro.go:55		0x5356c2		4183e401		ANDL $0x1, R12		
  repro.go:56		0x5356c6		4501e3			ADDL R12, R11		
  repro.go:56		0x5356c9		450fb6db		MOVZX R11, R11		
  repro.go:56		0x5356cd		4501d1			ADDL R10, R9		
  repro.go:56		0x5356d0		410fb6d9		MOVZX R9, BX		
  repro.go:56		0x5356d4		4401c6			ADDL R8, SI		
  repro.go:56		0x5356d7		400fb6ce		MOVZX SI, CX		
  repro.go:56		0x5356db		01c2			ADDL AX, DX		
  repro.go:56		0x5356dd		0fb6fa			MOVZX DL, DI		
  repro.go:56		0x5356e0		4489d8			MOVL R11, AX		
  repro.go:56		0x5356e3		c3			RET			

TEXT example.com/pq-small-arithmetic.BitsWide(SB) /home/exedev/crypto-audit/round4/issues/pq-small-arithmetic/repro.go
  repro.go:61		0x535700		0fb6d0			MOVZX AL, DX		
  repro.go:62		0x535703		89d6			MOVL DX, SI		
  repro.go:62		0x535705		66c1ea07		SHRW $0x7, DX		
  repro.go:62		0x535709		4189f0			MOVL SI, R8		
  repro.go:62		0x53570c		66c1ee06		SHRW $0x6, SI		
  repro.go:62		0x535710		83e601			ANDL $0x1, SI		
  repro.go:62		0x535713		4589c1			MOVL R8, R9		
  repro.go:62		0x535716		6641c1e805		SHRW $0x5, R8		
  repro.go:62		0x53571b		4183e001		ANDL $0x1, R8		
  repro.go:62		0x53571f		4589ca			MOVL R9, R10		
  repro.go:62		0x535722		6641c1e904		SHRW $0x4, R9		
  repro.go:62		0x535727		4183e101		ANDL $0x1, R9		
  repro.go:63		0x53572b		4589d3			MOVL R10, R11		
  repro.go:63		0x53572e		6641c1ea03		SHRW $0x3, R10		
  repro.go:63		0x535733		4183e201		ANDL $0x1, R10		
  repro.go:63		0x535737		4589dc			MOVL R11, R12		
  repro.go:63		0x53573a		6641c1eb02		SHRW $0x2, R11		
  repro.go:63		0x53573f		4183e301		ANDL $0x1, R11		
  repro.go:63		0x535743		4589e5			MOVL R12, R13		
  repro.go:63		0x535746		6641d1ec		SHRW $0x1, R12		
  repro.go:63		0x53574a		4183e401		ANDL $0x1, R12		
  repro.go:63		0x53574e		4183e501		ANDL $0x1, R13		
  repro.go:64		0x535752		438d442500		LEAL 0(R13)(R12*1), AX	
  repro.go:64		0x535757		438d1c13		LEAL 0(R11)(R10*1), BX	
  repro.go:64		0x53575b		438d0c01		LEAL 0(R9)(R8*1), CX	
  repro.go:64		0x53575f		8d3c32			LEAL 0(DX)(SI*1), DI	
  repro.go:64		0x535762		c3			RET			

TEXT example.com/pq-small-arithmetic.BitPairOriginal(SB) /home/exedev/crypto-audit/round4/issues/pq-small-arithmetic/repro.go
  repro.go:68		0x535780		89c1			MOVL AX, CX		
  repro.go:68		0x535782		83e001			ANDL $0x1, AX		
  repro.go:68		0x535785		d0e9			SHRL $0x1, CL		
  repro.go:68		0x535787		83e101			ANDL $0x1, CX		
  repro.go:68		0x53578a		01c1			ADDL AX, CX		
  repro.go:68		0x53578c		0fb6c1			MOVZX CL, AX		
  repro.go:68		0x53578f		c3			RET			

TEXT example.com/pq-small-arithmetic.BitPairWide(SB) /home/exedev/crypto-audit/round4/issues/pq-small-arithmetic/repro.go
  repro.go:71		0x5357a0		89c1			MOVL AX, CX		
  repro.go:71		0x5357a2		83e001			ANDL $0x1, AX		
  repro.go:71		0x5357a5		d0e9			SHRL $0x1, CL		
  repro.go:71		0x5357a7		83e101			ANDL $0x1, CX		
  repro.go:71		0x5357aa		01c8			ADDL CX, AX		
  repro.go:71		0x5357ac		c3			RET			

TEXT example.com/pq-small-arithmetic.Sub16Original(SB) /home/exedev/crypto-audit/round4/issues/pq-small-arithmetic/subtraction.go
  subtraction.go:9	0x5357c0		29d8			SUBL BX, AX		
  subtraction.go:9	0x5357c2		8d88010d0000		LEAL 0xd01(AX), CX	
  subtraction.go:10	0x5357c8		0fb7c1			MOVZX CX, AX		
  subtraction.go:10	0x5357cb		488d88fff2ffff		LEAQ 0xfffff2ff(AX), CX	
  constant_time.go:51	0x5357d2		90			NOPL			
  constant_time.go:35	0x5357d3		483d000d0000		CMPQ AX, $0xd00		
  constant_time.go:28	0x5357d9		480f4ec8		CMOVLE AX, CX		
  subtraction.go:10	0x5357dd		4889c8			MOVQ CX, AX		
  subtraction.go:10	0x5357e0		c3			RET			

TEXT example.com/pq-small-arithmetic.Sub16Direct(SB) /home/exedev/crypto-audit/round4/issues/pq-small-arithmetic/subtraction.go
  subtraction.go:17	0x535800		0fb7c0			MOVZX AX, AX		
  subtraction.go:18	0x535803		0fb7cb			MOVZX BX, CX		
  subtraction.go:17	0x535806		89c2			MOVL AX, DX		
  subtraction.go:17	0x535808		4829ca			SUBQ CX, DX		
  subtraction.go:18	0x53580b		488d9a010d0000		LEAQ 0xd01(DX), BX	
  constant_time.go:51	0x535812		90			NOPL			
  constant_time.go:35	0x535813		4839c1			CMPQ CX, AX		
  constant_time.go:28	0x535816		480f4eda		CMOVLE DX, BX		
  subtraction.go:18	0x53581a		4889d8			MOVQ BX, AX		
  subtraction.go:18	0x53581d		c3			RET			

TEXT example.com/pq-small-arithmetic.Sub16Guarded(SB) /home/exedev/crypto-audit/round4/issues/pq-small-arithmetic/subtraction.go
  subtraction.go:26	0x535820		663d010d		CMPW AX, $0xd01		
  subtraction.go:26	0x535824		7307			JAE 0x53582d		
  subtraction.go:26	0x535826		6681fb010d		CMPW BX, $0xd01		
  subtraction.go:26	0x53582b		7203			JB 0x535830		
  subtraction.go:27	0x53582d		31c0			XORL AX, AX		
  subtraction.go:27	0x53582f		c3			RET			
  subtraction.go:29	0x535830		29d8			SUBL BX, AX		
  subtraction.go:29	0x535832		8d88010d0000		LEAL 0xd01(AX), CX	
  subtraction.go:30	0x535838		0fb7c1			MOVZX CX, AX		
  subtraction.go:30	0x53583b		488d88fff2ffff		LEAQ 0xfffff2ff(AX), CX	
  constant_time.go:51	0x535842		90			NOPL			
  constant_time.go:35	0x535843		483d000d0000		CMPQ AX, $0xd00		
  constant_time.go:28	0x535849		480f4ec8		CMOVLE AX, CX		
  subtraction.go:30	0x53584d		4889c8			MOVQ CX, AX		
  subtraction.go:30	0x535850		c3			RET			

TEXT example.com/pq-small-arithmetic.Sub16Masked(SB) /home/exedev/crypto-audit/round4/issues/pq-small-arithmetic/subtraction.go
  subtraction.go:37	0x535860		25ff070000		ANDL $0x7ff, AX		
  subtraction.go:38	0x535865		81e3ff070000		ANDL $0x7ff, BX		
  subtraction.go:39	0x53586b		29d8			SUBL BX, AX		
  subtraction.go:39	0x53586d		8d88010d0000		LEAL 0xd01(AX), CX	
  subtraction.go:40	0x535873		0fb7c1			MOVZX CX, AX		
  subtraction.go:40	0x535876		488d88fff2ffff		LEAQ 0xfffff2ff(AX), CX	
  constant_time.go:51	0x53587d		90			NOPL			
  constant_time.go:35	0x53587e		483d000d0000		CMPQ AX, $0xd00		
  constant_time.go:28	0x535884		480f4ec8		CMOVLE AX, CX		
  subtraction.go:40	0x535888		4889c8			MOVQ CX, AX		
  subtraction.go:40	0x53588b		c3			RET			

TEXT example.com/pq-small-arithmetic.TestScale(SB) /home/exedev/crypto-audit/round4/issues/pq-small-arithmetic/repro_test.go
  repro_test.go:5	0x5358a0		493b6610		CMPQ SP, 0x10(R14)						
  repro_test.go:5	0x5358a4		0f86fd010000		JBE 0x535aa7							
  repro_test.go:5	0x5358aa		55			PUSHQ BP							
  repro_test.go:5	0x5358ab		4889e5			MOVQ SP, BP							
  repro_test.go:5	0x5358ae		4883ec58		SUBQ $0x58, SP							
  repro_test.go:6	0x5358b2		4889442468		MOVQ AX, 0x68(SP)						
  repro_test.go:6	0x5358b7		31c9			XORL CX, CX							
  repro_test.go:6	0x5358b9		eb08			JMP 0x5358c3							
  repro_test.go:6	0x5358bb		488b4c2438		MOVQ 0x38(SP), CX						
  repro_test.go:6	0x5358c0		48ffc1			INCQ CX								
  repro_test.go:6	0x5358c3		4881f900010000		CMPQ CX, $0x100							
  repro_test.go:6	0x5358ca		0f8d84010000		JGE 0x535a54							
  repro_test.go:6	0x5358d0		48894c2438		MOVQ CX, 0x38(SP)						
  repro_test.go:8	0x5358d5		4883f92b		CMPQ CX, $0x2b							
  repro_test.go:8	0x5358d9		7f72			JG 0x53594d							
  repro_test.go:8	0x5358db		4889c8			MOVQ CX, AX							
  repro_test.go:8	0x5358de		6690			NOPW								
  repro_test.go:8	0x5358e0		e89bfcffff		CALL example.com/pq-small-arithmetic.Scale88Original(SB)	
  repro_test.go:8	0x5358e5		89442434		MOVL AX, 0x34(SP)						
  repro_test.go:8	0x5358e9		488b442438		MOVQ 0x38(SP), AX						
  repro_test.go:8	0x5358ee		e8cdfcffff		CALL example.com/pq-small-arithmetic.Scale88Grouped(SB)		
  repro_test.go:8	0x5358f3		8b4c2434		MOVL 0x34(SP), CX						
  repro_test.go:8	0x5358f7		39c8			CMPL AX, CX							
  repro_test.go:8	0x5358f9		7507			JNE 0x535902							
  repro_test.go:11	0x5358fb		488b4c2438		MOVQ 0x38(SP), CX						
  repro_test.go:8	0x535900		eb4b			JMP 0x53594d							
  repro_test.go:9	0x535902		440f117c2448		MOVUPS X15, 0x48(SP)						
  repro_test.go:9	0x535908		488b442438		MOVQ 0x38(SP), AX						
  repro_test.go:9	0x53590d		e80ed2f4ff		CALL runtime.convT64(SB)					
  repro_test.go:9	0x535912		488d0dbf061500		LEAQ 0x1506bf(IP), CX						
  repro_test.go:9	0x535919		48894c2448		MOVQ CX, 0x48(SP)						
  repro_test.go:9	0x53591e		4889442450		MOVQ AX, 0x50(SP)						
  repro_test.go:9	0x535923		488b442468		MOVQ 0x68(SP), AX						
  repro_test.go:9	0x535928		8400			TESTB AL, 0(AX)							
  repro_test.go:9	0x53592a		488d1d459c0000		LEAQ 0x9c45(IP), BX						
  repro_test.go:9	0x535931		b91b000000		MOVL $0x1b, CX							
  repro_test.go:9	0x535936		488d7c2448		LEAQ 0x48(SP), DI						
  repro_test.go:9	0x53593b		be01000000		MOVL $0x1, SI							
  repro_test.go:9	0x535940		4189f0			MOVL SI, R8							
  repro_test.go:9	0x535943		e8b8e5faff		CALL testing.(*common).Fatalf(SB)				
  repro_test.go:11	0x535948		488b4c2438		MOVQ 0x38(SP), CX						
  repro_test.go:11	0x53594d		4889c8			MOVQ CX, AX							
  repro_test.go:11	0x535950		e88bfcffff		CALL example.com/pq-small-arithmetic.Scale88Masked(SB)		
  repro_test.go:11	0x535955		89442434		MOVL AX, 0x34(SP)						
  repro_test.go:11	0x535959		488b442438		MOVQ 0x38(SP), AX						
  repro_test.go:11	0x53595e		6690			NOPW								
  repro_test.go:11	0x535960		e89bfcffff		CALL example.com/pq-small-arithmetic.Scale88MaskedGrouped(SB)	
  repro_test.go:11	0x535965		8b4c2434		MOVL 0x34(SP), CX						
  repro_test.go:11	0x535969		39c8			CMPL AX, CX							
  repro_test.go:11	0x53596b		7407			JE 0x535974							
  repro_test.go:11	0x53596d		b901000000		MOVL $0x1, CX							
  repro_test.go:11	0x535972		eb21			JMP 0x535995							
  repro_test.go:11	0x535974		488b442438		MOVQ 0x38(SP), AX						
  repro_test.go:11	0x535979		e8c2fcffff		CALL example.com/pq-small-arithmetic.Scale32Masked(SB)		
  repro_test.go:11	0x53597e		89442434		MOVL AX, 0x34(SP)						
  repro_test.go:11	0x535982		488b442438		MOVQ 0x38(SP), AX						
  repro_test.go:11	0x535987		e8d4fcffff		CALL example.com/pq-small-arithmetic.Scale32MaskedGrouped(SB)	
  repro_test.go:11	0x53598c		8b4c2434		MOVL 0x34(SP), CX						
  repro_test.go:11	0x535990		39c8			CMPL AX, CX							
  repro_test.go:11	0x535992		0f95c1			SETNE CL							
  repro_test.go:11	0x535995		84c9			TESTL CL, CL							
  repro_test.go:11	0x535997		7446			JE 0x5359df							
  repro_test.go:12	0x535999		440f117c2448		MOVUPS X15, 0x48(SP)						
  repro_test.go:12	0x53599f		488b442438		MOVQ 0x38(SP), AX						
  repro_test.go:12	0x5359a4		e877d1f4ff		CALL runtime.convT64(SB)					
  repro_test.go:12	0x5359a9		488d0d28061500		LEAQ 0x150628(IP), CX						
  repro_test.go:12	0x5359b0		48894c2448		MOVQ CX, 0x48(SP)						
  repro_test.go:12	0x5359b5		4889442450		MOVQ AX, 0x50(SP)						
  repro_test.go:12	0x5359ba		488b442468		MOVQ 0x68(SP), AX						
  repro_test.go:12	0x5359bf		8400			TESTB AL, 0(AX)							
  repro_test.go:12	0x5359c1		488d1dbe620000		LEAQ 0x62be(IP), BX						
  repro_test.go:12	0x5359c8		b90f000000		MOVL $0xf, CX							
  repro_test.go:12	0x5359cd		488d7c2448		LEAQ 0x48(SP), DI						
  repro_test.go:12	0x5359d2		be01000000		MOVL $0x1, SI							
  repro_test.go:12	0x5359d7		4189f0			MOVL SI, R8							
  repro_test.go:12	0x5359da		e821e5faff		CALL testing.(*common).Fatalf(SB)				
  repro_test.go:14	0x5359df		488b442438		MOVQ 0x38(SP), AX						
  repro_test.go:14	0x5359e4		e837fcffff		CALL example.com/pq-small-arithmetic.Scale88Wide(SB)		
  repro_test.go:14	0x5359e9		4889442440		MOVQ AX, 0x40(SP)						
  repro_test.go:14	0x5359ee		488b442438		MOVQ 0x38(SP), AX						
  repro_test.go:14	0x5359f3		e8c8fbffff		CALL example.com/pq-small-arithmetic.Scale88Grouped(SB)		
  repro_test.go:14	0x5359f8		4863c8			MOVSXD AX, CX							
  repro_test.go:14	0x5359fb		488b542440		MOVQ 0x40(SP), DX						
  repro_test.go:14	0x535a00		4839ca			CMPQ DX, CX							
  repro_test.go:14	0x535a03		0f84b2feffff		JE 0x5358bb							
  repro_test.go:15	0x535a09		440f117c2448		MOVUPS X15, 0x48(SP)						
  repro_test.go:15	0x535a0f		488b442438		MOVQ 0x38(SP), AX						
  repro_test.go:15	0x535a14		e807d1f4ff		CALL runtime.convT64(SB)					
  repro_test.go:15	0x535a19		488d0db8051500		LEAQ 0x1505b8(IP), CX						
  repro_test.go:15	0x535a20		48894c2448		MOVQ CX, 0x48(SP)						
  repro_test.go:15	0x535a25		4889442450		MOVQ AX, 0x50(SP)						
  repro_test.go:15	0x535a2a		488b442468		MOVQ 0x68(SP), AX						
  repro_test.go:15	0x535a2f		8400			TESTB AL, 0(AX)							
  repro_test.go:15	0x535a31		488d1d99580000		LEAQ 0x5899(IP), BX						
  repro_test.go:15	0x535a38		b90d000000		MOVL $0xd, CX							
  repro_test.go:15	0x535a3d		488d7c2448		LEAQ 0x48(SP), DI						
  repro_test.go:15	0x535a42		be01000000		MOVL $0x1, SI							
  repro_test.go:15	0x535a47		4189f0			MOVL SI, R8							
  repro_test.go:15	0x535a4a		e8b1e4faff		CALL testing.(*common).Fatalf(SB)				
  repro_test.go:15	0x535a4f		e967feffff		JMP 0x5358bb							
  repro_test.go:18	0x535a54		b8ffffffff		MOVL $-0x1, AX							
  repro_test.go:18	0x535a59		e822fbffff		CALL example.com/pq-small-arithmetic.Scale88Original(SB)	
  repro_test.go:18	0x535a5e		89442434		MOVL AX, 0x34(SP)						
  repro_test.go:18	0x535a62		b8ffffffff		MOVL $-0x1, AX							
  repro_test.go:18	0x535a67		e854fbffff		CALL example.com/pq-small-arithmetic.Scale88Grouped(SB)		
  repro_test.go:18	0x535a6c		8b4c2434		MOVL 0x34(SP), CX						
  repro_test.go:18	0x535a70		39c8			CMPL AX, CX							
  repro_test.go:18	0x535a72		7531			JNE 0x535aa5							
  repro_test.go:19	0x535a74		488d151d031500		LEAQ 0x15031d(IP), DX						
  repro_test.go:19	0x535a7b		4889542448		MOVQ DX, 0x48(SP)						
  repro_test.go:19	0x535a80		488d1529250100		LEAQ 0x12529(IP), DX						
  repro_test.go:19	0x535a87		4889542450		MOVQ DX, 0x50(SP)						
  repro_test.go:19	0x535a8c		488b442468		MOVQ 0x68(SP), AX						
  repro_test.go:19	0x535a91		8400			TESTB AL, 0(AX)							
  repro_test.go:19	0x535a93		488d5c2448		LEAQ 0x48(SP), BX						
  repro_test.go:19	0x535a98		b901000000		MOVL $0x1, CX							
  repro_test.go:19	0x535a9d		89cf			MOVL CX, DI							
  repro_test.go:19	0x535a9f		90			NOPL								
  repro_test.go:19	0x535aa0		e85be3faff		CALL testing.(*common).Fatal(SB)				
  repro_test.go:21	0x535aa5		c9			LEAVE								
  repro_test.go:21	0x535aa6		c3			RET								
  repro_test.go:5	0x535aa7		4889442408		MOVQ AX, 0x8(SP)						
  repro_test.go:5	0x535aac		e84f38f5ff		CALL runtime.morestack_noctxt.abi0(SB)				
  repro_test.go:5	0x535ab1		488b442408		MOVQ 0x8(SP), AX						
  repro_test.go:5	0x535ab6		e9e5fdffff		JMP example.com/pq-small-arithmetic.TestScale(SB)		

TEXT example.com/pq-small-arithmetic.TestBits(SB) /home/exedev/crypto-audit/round4/issues/pq-small-arithmetic/repro_test.go
  repro_test.go:23	0x535ac0		493b6610		CMPQ SP, 0x10(R14)						
  repro_test.go:23	0x535ac4		0f86d2010000		JBE 0x535c9c							
  repro_test.go:23	0x535aca		55			PUSHQ BP							
  repro_test.go:23	0x535acb		4889e5			MOVQ SP, BP							
  repro_test.go:23	0x535ace		4883ec50		SUBQ $0x50, SP							
  repro_test.go:24	0x535ad2		4889442460		MOVQ AX, 0x60(SP)						
  repro_test.go:24	0x535ad7		31c9			XORL CX, CX							
  repro_test.go:24	0x535ad9		eb08			JMP 0x535ae3							
  repro_test.go:24	0x535adb		488b4c2438		MOVQ 0x38(SP), CX						
  repro_test.go:24	0x535ae0		48ffc1			INCQ CX								
  repro_test.go:24	0x535ae3		4881f900010000		CMPQ CX, $0x100							
  repro_test.go:24	0x535aea		0f8daa010000		JGE 0x535c9a							
  repro_test.go:25	0x535af0		66440fd67c2430		MOVQ X15, 0x30(SP)						
  repro_test.go:26	0x535af7		31d2			XORL DX, DX							
  repro_test.go:26	0x535af9		eb28			JMP 0x535b23							
  repro_test.go:27	0x535afb		4889d3			MOVQ DX, BX							
  repro_test.go:27	0x535afe		48d1eb			SHRQ $0x1, BX							
  repro_test.go:27	0x535b01		0fb7745c30		MOVZX 0x30(SP)(BX*2), SI					
  repro_test.go:24	0x535b06		4889c8			MOVQ CX, AX							
  repro_test.go:27	0x535b09		4889d1			MOVQ DX, CX							
  repro_test.go:27	0x535b0c		4889c7			MOVQ AX, DI							
  repro_test.go:27	0x535b0f		48d3ef			SHRQ CL, DI							
  repro_test.go:27	0x535b12		83e701			ANDL $0x1, DI							
  repro_test.go:27	0x535b15		01fe			ADDL DI, SI							
  repro_test.go:27	0x535b17		6689745c30		MOVW SI, 0x30(SP)(BX*2)						
  repro_test.go:26	0x535b1c		488d5101		LEAQ 0x1(CX), DX						
  repro_test.go:27	0x535b20		4889c1			MOVQ AX, CX							
  repro_test.go:26	0x535b23		4883fa08		CMPQ DX, $0x8							
  repro_test.go:26	0x535b27		7cd2			JL 0x535afb							
  repro_test.go:24	0x535b29		48894c2438		MOVQ CX, 0x38(SP)						
  repro_test.go:29	0x535b2e		4889c8			MOVQ CX, AX							
  repro_test.go:29	0x535b31		e84afbffff		CALL example.com/pq-small-arithmetic.BitsOriginal(SB)		
  repro_test.go:30	0x535b36		0fb7d0			MOVZX AX, DX							
  repro_test.go:30	0x535b39		0fb7db			MOVZX BX, BX							
  repro_test.go:30	0x535b3c		0fb7c9			MOVZX CX, CX							
  repro_test.go:30	0x535b3f		0fb7f7			MOVZX DI, SI							
  repro_test.go:30	0x535b42		48c1e310		SHLQ $0x10, BX							
  repro_test.go:30	0x535b46		4809d3			ORQ DX, BX							
  repro_test.go:30	0x535b49		48c1e120		SHLQ $0x20, CX							
  repro_test.go:30	0x535b4d		4809d9			ORQ BX, CX							
  repro_test.go:30	0x535b50		48c1e630		SHLQ $0x30, SI							
  repro_test.go:30	0x535b54		4809ce			ORQ CX, SI							
  repro_test.go:30	0x535b57		4839742430		CMPQ 0x30(SP), SI						
  repro_test.go:30	0x535b5c		7447			JE 0x535ba5							
  repro_test.go:31	0x535b5e		440f117c2440		MOVUPS X15, 0x40(SP)						
  repro_test.go:31	0x535b64		488b442438		MOVQ 0x38(SP), AX						
  repro_test.go:31	0x535b69		e8b2cff4ff		CALL runtime.convT64(SB)					
  repro_test.go:31	0x535b6e		488d0d63041500		LEAQ 0x150463(IP), CX						
  repro_test.go:31	0x535b75		48894c2440		MOVQ CX, 0x40(SP)						
  repro_test.go:31	0x535b7a		4889442448		MOVQ AX, 0x48(SP)						
  repro_test.go:31	0x535b7f		488b442460		MOVQ 0x60(SP), AX						
  repro_test.go:31	0x535b84		8400			TESTB AL, 0(AX)							
  repro_test.go:31	0x535b86		488d1d46650000		LEAQ 0x6546(IP), BX						
  repro_test.go:31	0x535b8d		b910000000		MOVL $0x10, CX							
  repro_test.go:31	0x535b92		488d7c2440		LEAQ 0x40(SP), DI						
  repro_test.go:31	0x535b97		be01000000		MOVL $0x1, SI							
  repro_test.go:31	0x535b9c		4189f0			MOVL SI, R8							
  repro_test.go:31	0x535b9f		90			NOPL								
  repro_test.go:31	0x535ba0		e85be3faff		CALL testing.(*common).Fatalf(SB)				
  repro_test.go:33	0x535ba5		488b442438		MOVQ 0x38(SP), AX						
  repro_test.go:33	0x535baa		e851fbffff		CALL example.com/pq-small-arithmetic.BitsWide(SB)		
  repro_test.go:34	0x535baf		0fb7d0			MOVZX AX, DX							
  repro_test.go:34	0x535bb2		0fb7db			MOVZX BX, BX							
  repro_test.go:34	0x535bb5		0fb7c9			MOVZX CX, CX							
  repro_test.go:34	0x535bb8		0fb7f7			MOVZX DI, SI							
  repro_test.go:34	0x535bbb		48c1e310		SHLQ $0x10, BX							
  repro_test.go:34	0x535bbf		4809d3			ORQ DX, BX							
  repro_test.go:34	0x535bc2		48c1e120		SHLQ $0x20, CX							
  repro_test.go:34	0x535bc6		4809d9			ORQ BX, CX							
  repro_test.go:34	0x535bc9		48c1e630		SHLQ $0x30, SI							
  repro_test.go:34	0x535bcd		4809ce			ORQ CX, SI							
  repro_test.go:34	0x535bd0		4839742430		CMPQ 0x30(SP), SI						
  repro_test.go:34	0x535bd5		7446			JE 0x535c1d							
  repro_test.go:35	0x535bd7		440f117c2440		MOVUPS X15, 0x40(SP)						
  repro_test.go:35	0x535bdd		488b442438		MOVQ 0x38(SP), AX						
  repro_test.go:35	0x535be2		e839cff4ff		CALL runtime.convT64(SB)					
  repro_test.go:35	0x535be7		488d0dea031500		LEAQ 0x1503ea(IP), CX						
  repro_test.go:35	0x535bee		48894c2440		MOVQ CX, 0x40(SP)						
  repro_test.go:35	0x535bf3		4889442448		MOVQ AX, 0x48(SP)						
  repro_test.go:35	0x535bf8		488b442460		MOVQ 0x60(SP), AX						
  repro_test.go:35	0x535bfd		8400			TESTB AL, 0(AX)							
  repro_test.go:35	0x535bff		488d1d06520000		LEAQ 0x5206(IP), BX						
  repro_test.go:35	0x535c06		b90c000000		MOVL $0xc, CX							
  repro_test.go:35	0x535c0b		488d7c2440		LEAQ 0x40(SP), DI						
  repro_test.go:35	0x535c10		be01000000		MOVL $0x1, SI							
  repro_test.go:35	0x535c15		4189f0			MOVL SI, R8							
  repro_test.go:35	0x535c18		e8e3e2faff		CALL testing.(*common).Fatalf(SB)				
  repro_test.go:37	0x535c1d		488b442438		MOVQ 0x38(SP), AX						
  repro_test.go:37	0x535c22		e859fbffff		CALL example.com/pq-small-arithmetic.BitPairOriginal(SB)	
  repro_test.go:37	0x535c27		6639442430		CMPW 0x30(SP), AX						
  repro_test.go:37	0x535c2c		7407			JE 0x535c35							
  repro_test.go:37	0x535c2e		b901000000		MOVL $0x1, CX							
  repro_test.go:37	0x535c33		eb12			JMP 0x535c47							
  repro_test.go:37	0x535c35		488b442438		MOVQ 0x38(SP), AX						
  repro_test.go:37	0x535c3a		e861fbffff		CALL example.com/pq-small-arithmetic.BitPairWide(SB)		
  repro_test.go:37	0x535c3f		6639442430		CMPW 0x30(SP), AX						
  repro_test.go:37	0x535c44		0f95c1			SETNE CL							
  repro_test.go:37	0x535c47		84c9			TESTL CL, CL							
  repro_test.go:37	0x535c49		0f848cfeffff		JE 0x535adb							
  repro_test.go:38	0x535c4f		440f117c2440		MOVUPS X15, 0x40(SP)						
  repro_test.go:38	0x535c55		488b442438		MOVQ 0x38(SP), AX						
  repro_test.go:38	0x535c5a		e8c1cef4ff		CALL runtime.convT64(SB)					
  repro_test.go:38	0x535c5f		488d0d72031500		LEAQ 0x150372(IP), CX						
  repro_test.go:38	0x535c66		48894c2440		MOVQ CX, 0x40(SP)						
  repro_test.go:38	0x535c6b		4889442448		MOVQ AX, 0x48(SP)						
  repro_test.go:38	0x535c70		488b442460		MOVQ 0x60(SP), AX						
  repro_test.go:38	0x535c75		8400			TESTB AL, 0(AX)							
  repro_test.go:38	0x535c77		488d1dcc3b0000		LEAQ 0x3bcc(IP), BX						
  repro_test.go:38	0x535c7e		b907000000		MOVL $0x7, CX							
  repro_test.go:38	0x535c83		488d7c2440		LEAQ 0x40(SP), DI						
  repro_test.go:38	0x535c88		be01000000		MOVL $0x1, SI							
  repro_test.go:38	0x535c8d		4189f0			MOVL SI, R8							
  repro_test.go:38	0x535c90		e86be2faff		CALL testing.(*common).Fatalf(SB)				
  repro_test.go:38	0x535c95		e941feffff		JMP 0x535adb							
  repro_test.go:41	0x535c9a		c9			LEAVE								
  repro_test.go:41	0x535c9b		c3			RET								
  repro_test.go:23	0x535c9c		4889442408		MOVQ AX, 0x8(SP)						
  repro_test.go:23	0x535ca1		e85a36f5ff		CALL runtime.morestack_noctxt.abi0(SB)				
  repro_test.go:23	0x535ca6		488b442408		MOVQ 0x8(SP), AX						
  repro_test.go:23	0x535cab		e910feffff		JMP example.com/pq-small-arithmetic.TestBits(SB)		

TEXT example.com/pq-small-arithmetic.BenchmarkBitsOriginal(SB) /home/exedev/crypto-audit/round4/issues/pq-small-arithmetic/repro_test.go
  repro_test.go:45	0x535cc0		493b6610		CMPQ SP, 0x10(R14)						
  repro_test.go:45	0x535cc4		7652			JBE 0x535d18							
  repro_test.go:45	0x535cc6		55			PUSHQ BP							
  repro_test.go:45	0x535cc7		4889e5			MOVQ SP, BP							
  repro_test.go:45	0x535cca		4883ec18		SUBQ $0x18, SP							
  repro_test.go:47	0x535cce		4889442428		MOVQ AX, 0x28(SP)						
  repro_test.go:47	0x535cd3		31c9			XORL CX, CX							
  repro_test.go:47	0x535cd5		31d2			XORL DX, DX							
  repro_test.go:47	0x535cd7		eb2d			JMP 0x535d06							
  repro_test.go:47	0x535cd9		48894c2410		MOVQ CX, 0x10(SP)						
  repro_test.go:47	0x535cde		668954240e		MOVW DX, 0xe(SP)						
  repro_test.go:48	0x535ce3		4889c8			MOVQ CX, AX							
  repro_test.go:48	0x535ce6		e895f9ffff		CALL example.com/pq-small-arithmetic.BitsOriginal(SB)		
  repro_test.go:49	0x535ceb		8d1403			LEAL 0(BX)(AX*1), DX						
  repro_test.go:49	0x535cee		01d1			ADDL DX, CX							
  repro_test.go:49	0x535cf0		01f9			ADDL DI, CX							
  repro_test.go:49	0x535cf2		0fb754240e		MOVZX 0xe(SP), DX						
  repro_test.go:49	0x535cf7		01ca			ADDL CX, DX							
  repro_test.go:47	0x535cf9		488b4c2410		MOVQ 0x10(SP), CX						
  repro_test.go:47	0x535cfe		48ffc1			INCQ CX								
  repro_test.go:47	0x535d01		488b442428		MOVQ 0x28(SP), AX						
  repro_test.go:47	0x535d06		48398810020000		CMPQ 0x210(AX), CX						
  repro_test.go:47	0x535d0d		7fca			JG 0x535cd9							
  repro_test.go:51	0x535d0f		668915be0c1b00		MOVW DX, example.com/pq-small-arithmetic.sink(SB)		
  repro_test.go:52	0x535d16		c9			LEAVE								
  repro_test.go:52	0x535d17		c3			RET								
  repro_test.go:45	0x535d18		4889442408		MOVQ AX, 0x8(SP)						
  repro_test.go:45	0x535d1d		0f1f00			NOPL 0(AX)							
  repro_test.go:45	0x535d20		e8db35f5ff		CALL runtime.morestack_noctxt.abi0(SB)				
  repro_test.go:45	0x535d25		488b442408		MOVQ 0x8(SP), AX						
  repro_test.go:45	0x535d2a		eb94			JMP example.com/pq-small-arithmetic.BenchmarkBitsOriginal(SB)	

TEXT example.com/pq-small-arithmetic.BenchmarkBitsWide(SB) /home/exedev/crypto-audit/round4/issues/pq-small-arithmetic/repro_test.go
  repro_test.go:54	0x535d40		493b6610		CMPQ SP, 0x10(R14)						
  repro_test.go:54	0x535d44		7652			JBE 0x535d98							
  repro_test.go:54	0x535d46		55			PUSHQ BP							
  repro_test.go:54	0x535d47		4889e5			MOVQ SP, BP							
  repro_test.go:54	0x535d4a		4883ec18		SUBQ $0x18, SP							
  repro_test.go:56	0x535d4e		4889442428		MOVQ AX, 0x28(SP)						
  repro_test.go:56	0x535d53		31c9			XORL CX, CX							
  repro_test.go:56	0x535d55		31d2			XORL DX, DX							
  repro_test.go:56	0x535d57		eb2d			JMP 0x535d86							
  repro_test.go:56	0x535d59		48894c2410		MOVQ CX, 0x10(SP)						
  repro_test.go:56	0x535d5e		668954240e		MOVW DX, 0xe(SP)						
  repro_test.go:57	0x535d63		4889c8			MOVQ CX, AX							
  repro_test.go:57	0x535d66		e895f9ffff		CALL example.com/pq-small-arithmetic.BitsWide(SB)		
  repro_test.go:58	0x535d6b		8d1403			LEAL 0(BX)(AX*1), DX						
  repro_test.go:58	0x535d6e		01d1			ADDL DX, CX							
  repro_test.go:58	0x535d70		01f9			ADDL DI, CX							
  repro_test.go:58	0x535d72		0fb754240e		MOVZX 0xe(SP), DX						
  repro_test.go:58	0x535d77		01ca			ADDL CX, DX							
  repro_test.go:56	0x535d79		488b4c2410		MOVQ 0x10(SP), CX						
  repro_test.go:56	0x535d7e		48ffc1			INCQ CX								
  repro_test.go:56	0x535d81		488b442428		MOVQ 0x28(SP), AX						
  repro_test.go:56	0x535d86		48398810020000		CMPQ 0x210(AX), CX						
  repro_test.go:56	0x535d8d		7fca			JG 0x535d59							
  repro_test.go:60	0x535d8f		6689153e0c1b00		MOVW DX, example.com/pq-small-arithmetic.sink(SB)		
  repro_test.go:61	0x535d96		c9			LEAVE								
  repro_test.go:61	0x535d97		c3			RET								
  repro_test.go:54	0x535d98		4889442408		MOVQ AX, 0x8(SP)						
  repro_test.go:54	0x535d9d		0f1f00			NOPL 0(AX)							
  repro_test.go:54	0x535da0		e85b35f5ff		CALL runtime.morestack_noctxt.abi0(SB)				
  repro_test.go:54	0x535da5		488b442408		MOVQ 0x8(SP), AX						
  repro_test.go:54	0x535daa		eb94			JMP example.com/pq-small-arithmetic.BenchmarkBitsWide(SB)	

TEXT example.com/pq-small-arithmetic.TestSub16(SB) /home/exedev/crypto-audit/round4/issues/pq-small-arithmetic/subtraction_test.go
  subtraction_test.go:5		0x535dc0		4c8d6424f0		LEAQ -0x10(SP), R12					
  subtraction_test.go:5		0x535dc5		4d3b6610		CMPQ R12, 0x10(R14)					
  subtraction_test.go:5		0x535dc9		0f86ff020000		JBE 0x5360ce						
  subtraction_test.go:5		0x535dcf		55			PUSHQ BP						
  subtraction_test.go:5		0x535dd0		4889e5			MOVQ SP, BP						
  subtraction_test.go:5		0x535dd3		4881ec88000000		SUBQ $0x88, SP						
  subtraction_test.go:6		0x535dda		4889842498000000	MOVQ AX, 0x98(SP)					
  subtraction_test.go:6		0x535de2		31c9			XORL CX, CX						
  subtraction_test.go:6		0x535de4		eb04			JMP 0x535dea						
  subtraction_test.go:6		0x535de6		488d4a01		LEAQ 0x1(DX), CX					
  subtraction_test.go:6		0x535dea		4881f9010d0000		CMPQ CX, $0xd01						
  subtraction_test.go:6		0x535df1		0f8d31020000		JGE 0x536028						
  subtraction_test.go:6		0x535df7		48894c2440		MOVQ CX, 0x40(SP)					
  subtraction_test.go:12	0x535dfc		4889ca			MOVQ CX, DX						
  subtraction_test.go:12	0x535dff		81e1ff070000		ANDL $0x7ff, CX						
  subtraction_test.go:12	0x535e05		48894c2450		MOVQ CX, 0x50(SP)					
  subtraction_test.go:12	0x535e0a		31db			XORL BX, BX						
  subtraction_test.go:7		0x535e0c		eb12			JMP 0x535e20						
  subtraction_test.go:7		0x535e0e		498d5801		LEAQ 0x1(R8), BX					
  subtraction_test.go:9		0x535e12		488b542440		MOVQ 0x40(SP), DX					
  subtraction_test.go:9		0x535e17		660f1f840000000000	NOPW 0(AX)(AX*1)					
  subtraction_test.go:7		0x535e20		4881fb010d0000		CMPQ BX, $0xd01						
  subtraction_test.go:7		0x535e27		7dbd			JGE 0x535de6						
  subtraction_test.go:7		0x535e29		48895c2438		MOVQ BX, 0x38(SP)					
  subtraction_test.go:9		0x535e2e		4889d0			MOVQ DX, AX						
  subtraction_test.go:9		0x535e31		e88af9ffff		CALL example.com/pq-small-arithmetic.Sub16Original(SB)	
  subtraction_test.go:8		0x535e36		488b4c2440		MOVQ 0x40(SP), CX					
  subtraction_test.go:8		0x535e3b		488b5c2438		MOVQ 0x38(SP), BX					
  subtraction_test.go:8		0x535e40		4889ca			MOVQ CX, DX						
  subtraction_test.go:8		0x535e43		4829d9			SUBQ BX, CX						
  subtraction_test.go:8		0x535e46		488db1010d0000		LEAQ 0xd01(CX), SI					
  subtraction_test.go:9		0x535e4d		89c7			MOVL AX, DI						
  subtraction_test.go:8		0x535e4f		48b82fa7825d40bb7d9d	MOVQ $0x9d7dbb405d82a72f, AX				
  subtraction_test.go:6		0x535e59		4989d0			MOVQ DX, R8						
  subtraction_test.go:8		0x535e5c		48f7e6			MULQ SI							
  subtraction_test.go:8		0x535e5f		48c1ea0b		SHRQ $0xb, DX						
  subtraction_test.go:8		0x535e63		4885d2			TESTQ DX, DX						
  subtraction_test.go:8		0x535e66		ba00000000		MOVL $0x0, DX						
  subtraction_test.go:8		0x535e6b		be010d0000		MOVL $0xd01, SI						
  subtraction_test.go:8		0x535e70		480f45d6		CMOVNE SI, DX						
  subtraction_test.go:8		0x535e74		4829d1			SUBQ DX, CX						
  subtraction_test.go:8		0x535e77		4881c1010d0000		ADDQ $0xd01, CX						
  subtraction_test.go:8		0x535e7e		6690			NOPW							
  subtraction_test.go:9		0x535e80		6639cf			CMPW DI, CX						
  subtraction_test.go:9		0x535e83		7407			JE 0x535e8c						
  subtraction_test.go:9		0x535e85		b901000000		MOVL $0x1, CX						
  subtraction_test.go:9		0x535e8a		eb4e			JMP 0x535eda						
  subtraction_test.go:8		0x535e8c		48894c2448		MOVQ CX, 0x48(SP)					
  subtraction_test.go:9		0x535e91		4c89c0			MOVQ R8, AX						
  subtraction_test.go:9		0x535e94		e867f9ffff		CALL example.com/pq-small-arithmetic.Sub16Direct(SB)	
  subtraction_test.go:9		0x535e99		488b4c2448		MOVQ 0x48(SP), CX					
  subtraction_test.go:9		0x535e9e		6690			NOPW							
  subtraction_test.go:9		0x535ea0		6639c8			CMPW AX, CX						
  subtraction_test.go:9		0x535ea3		7411			JE 0x535eb6						
  subtraction_test.go:13	0x535ea5		488b5c2438		MOVQ 0x38(SP), BX					
  subtraction_test.go:13	0x535eaa		4c8b442440		MOVQ 0x40(SP), R8					
  subtraction_test.go:13	0x535eaf		b901000000		MOVL $0x1, CX						
  subtraction_test.go:9		0x535eb4		eb24			JMP 0x535eda						
  subtraction_test.go:9		0x535eb6		488b442440		MOVQ 0x40(SP), AX					
  subtraction_test.go:9		0x535ebb		488b5c2438		MOVQ 0x38(SP), BX					
  subtraction_test.go:9		0x535ec0		e85bf9ffff		CALL example.com/pq-small-arithmetic.Sub16Guarded(SB)	
  subtraction_test.go:9		0x535ec5		488b4c2448		MOVQ 0x48(SP), CX					
  subtraction_test.go:9		0x535eca		6639c8			CMPW AX, CX						
  subtraction_test.go:9		0x535ecd		0f95c1			SETNE CL						
  subtraction_test.go:13	0x535ed0		488b5c2438		MOVQ 0x38(SP), BX					
  subtraction_test.go:13	0x535ed5		4c8b442440		MOVQ 0x40(SP), R8					
  subtraction_test.go:9		0x535eda		84c9			TESTL CL, CL						
  subtraction_test.go:9		0x535edc		7474			JE 0x535f52						
  subtraction_test.go:10	0x535ede		488d4c2458		LEAQ 0x58(SP), CX					
  subtraction_test.go:10	0x535ee3		440f1139		MOVUPS X15, 0(CX)					
  subtraction_test.go:10	0x535ee7		440f117910		MOVUPS X15, 0x10(CX)					
  subtraction_test.go:10	0x535eec		4c89c0			MOVQ R8, AX						
  subtraction_test.go:10	0x535eef		e82cccf4ff		CALL runtime.convT64(SB)				
  subtraction_test.go:10	0x535ef4		488d0ddd001500		LEAQ 0x1500dd(IP), CX					
  subtraction_test.go:10	0x535efb		48894c2458		MOVQ CX, 0x58(SP)					
  subtraction_test.go:10	0x535f00		4889442460		MOVQ AX, 0x60(SP)					
  subtraction_test.go:10	0x535f05		488b442438		MOVQ 0x38(SP), AX					
  subtraction_test.go:10	0x535f0a		e811ccf4ff		CALL runtime.convT64(SB)				
  subtraction_test.go:10	0x535f0f		488d0dc2001500		LEAQ 0x1500c2(IP), CX					
  subtraction_test.go:10	0x535f16		48894c2468		MOVQ CX, 0x68(SP)					
  subtraction_test.go:10	0x535f1b		4889442470		MOVQ AX, 0x70(SP)					
  subtraction_test.go:10	0x535f20		488b842498000000	MOVQ 0x98(SP), AX					
  subtraction_test.go:10	0x535f28		8400			TESTB AL, 0(AX)						
  subtraction_test.go:10	0x535f2a		488d1d8f400000		LEAQ 0x408f(IP), BX					
  subtraction_test.go:10	0x535f31		b909000000		MOVL $0x9, CX						
  subtraction_test.go:10	0x535f36		488d7c2458		LEAQ 0x58(SP), DI					
  subtraction_test.go:10	0x535f3b		be02000000		MOVL $0x2, SI						
  subtraction_test.go:10	0x535f40		4189f0			MOVL SI, R8						
  subtraction_test.go:10	0x535f43		e8b8dffaff		CALL testing.(*common).Fatalf(SB)			
  subtraction_test.go:13	0x535f48		488b5c2438		MOVQ 0x38(SP), BX					
  subtraction_test.go:13	0x535f4d		4c8b442440		MOVQ 0x40(SP), R8					
  subtraction_test.go:13	0x535f52		4c89c0			MOVQ R8, AX						
  subtraction_test.go:13	0x535f55		e806f9ffff		CALL example.com/pq-small-arithmetic.Sub16Masked(SB)	
  subtraction_test.go:12	0x535f5a		488b4c2438		MOVQ 0x38(SP), CX					
  subtraction_test.go:12	0x535f5f		4889ca			MOVQ CX, DX						
  subtraction_test.go:12	0x535f62		81e1ff070000		ANDL $0x7ff, CX						
  subtraction_test.go:12	0x535f68		488b742450		MOVQ 0x50(SP), SI					
  subtraction_test.go:12	0x535f6d		4829ce			SUBQ CX, SI						
  subtraction_test.go:12	0x535f70		488d8e010d0000		LEAQ 0xd01(SI), CX					
  subtraction_test.go:13	0x535f77		89c3			MOVL AX, BX						
  subtraction_test.go:12	0x535f79		48b82fa7825d40bb7d9d	MOVQ $0x9d7dbb405d82a72f, AX				
  subtraction_test.go:7		0x535f83		4989d0			MOVQ DX, R8						
  subtraction_test.go:12	0x535f86		48f7e1			MULQ CX							
  subtraction_test.go:12	0x535f89		48c1ea0b		SHRQ $0xb, DX						
  subtraction_test.go:12	0x535f8d		4885d2			TESTQ DX, DX						
  subtraction_test.go:12	0x535f90		b900000000		MOVL $0x0, CX						
  subtraction_test.go:12	0x535f95		ba010d0000		MOVL $0xd01, DX						
  subtraction_test.go:12	0x535f9a		480f45ca		CMOVNE DX, CX						
  subtraction_test.go:12	0x535f9e		4829ce			SUBQ CX, SI						
  subtraction_test.go:12	0x535fa1		488d8e010d0000		LEAQ 0xd01(SI), CX					
  subtraction_test.go:13	0x535fa8		6639cb			CMPW BX, CX						
  subtraction_test.go:13	0x535fab		0f845dfeffff		JE 0x535e0e						
  subtraction_test.go:14	0x535fb1		488d4c2458		LEAQ 0x58(SP), CX					
  subtraction_test.go:14	0x535fb6		440f1139		MOVUPS X15, 0(CX)					
  subtraction_test.go:14	0x535fba		440f117910		MOVUPS X15, 0x10(CX)					
  subtraction_test.go:14	0x535fbf		488b442440		MOVQ 0x40(SP), AX					
  subtraction_test.go:14	0x535fc4		e857cbf4ff		CALL runtime.convT64(SB)				
  subtraction_test.go:14	0x535fc9		488d0d08001500		LEAQ 0x150008(IP), CX					
  subtraction_test.go:14	0x535fd0		48894c2458		MOVQ CX, 0x58(SP)					
  subtraction_test.go:14	0x535fd5		4889442460		MOVQ AX, 0x60(SP)					
  subtraction_test.go:14	0x535fda		488b442438		MOVQ 0x38(SP), AX					
  subtraction_test.go:14	0x535fdf		90			NOPL							
  subtraction_test.go:14	0x535fe0		e83bcbf4ff		CALL runtime.convT64(SB)				
  subtraction_test.go:14	0x535fe5		488d0decff1400		LEAQ 0x14ffec(IP), CX					
  subtraction_test.go:14	0x535fec		48894c2468		MOVQ CX, 0x68(SP)					
  subtraction_test.go:14	0x535ff1		4889442470		MOVQ AX, 0x70(SP)					
  subtraction_test.go:14	0x535ff6		488b842498000000	MOVQ 0x98(SP), AX					
  subtraction_test.go:14	0x535ffe		8400			TESTB AL, 0(AX)						
  subtraction_test.go:14	0x536000		488d1ddc600000		LEAQ 0x60dc(IP), BX					
  subtraction_test.go:14	0x536007		b910000000		MOVL $0x10, CX						
  subtraction_test.go:14	0x53600c		488d7c2458		LEAQ 0x58(SP), DI					
  subtraction_test.go:14	0x536011		be02000000		MOVL $0x2, SI						
  subtraction_test.go:14	0x536016		4189f0			MOVL SI, R8						
  subtraction_test.go:14	0x536019		e8e2defaff		CALL testing.(*common).Fatalf(SB)			
  subtraction_test.go:7		0x53601e		4c8b442438		MOVQ 0x38(SP), R8					
  subtraction_test.go:14	0x536023		e9e6fdffff		JMP 0x535e0e						
  subtraction_test.go:18	0x536028		b8ffffffff		MOVL $-0x1, AX						
  subtraction_test.go:18	0x53602d		31db			XORL BX, BX						
  subtraction_test.go:18	0x53602f		e88cf7ffff		CALL example.com/pq-small-arithmetic.Sub16Original(SB)	
  subtraction_test.go:18	0x536034		6689442436		MOVW AX, 0x36(SP)					
  subtraction_test.go:18	0x536039		b8ffffffff		MOVL $-0x1, AX						
  subtraction_test.go:18	0x53603e		31db			XORL BX, BX						
  subtraction_test.go:18	0x536040		e8bbf7ffff		CALL example.com/pq-small-arithmetic.Sub16Direct(SB)	
  subtraction_test.go:18	0x536045		0fb74c2436		MOVZX 0x36(SP), CX					
  subtraction_test.go:18	0x53604a		6639c8			CMPW AX, CX						
  subtraction_test.go:18	0x53604d		7536			JNE 0x536085						
  subtraction_test.go:19	0x53604f		488d1542fd1400		LEAQ 0x14fd42(IP), DX					
  subtraction_test.go:19	0x536056		4889542478		MOVQ DX, 0x78(SP)					
  subtraction_test.go:19	0x53605b		488d155e1f0100		LEAQ 0x11f5e(IP), DX					
  subtraction_test.go:19	0x536062		4889942480000000	MOVQ DX, 0x80(SP)					
  subtraction_test.go:19	0x53606a		488b842498000000	MOVQ 0x98(SP), AX					
  subtraction_test.go:19	0x536072		8400			TESTB AL, 0(AX)						
  subtraction_test.go:19	0x536074		488d5c2478		LEAQ 0x78(SP), BX					
  subtraction_test.go:19	0x536079		b901000000		MOVL $0x1, CX						
  subtraction_test.go:19	0x53607e		89cf			MOVL CX, DI						
  subtraction_test.go:19	0x536080		e87bddfaff		CALL testing.(*common).Fatal(SB)			
  subtraction_test.go:21	0x536085		b8ffffffff		MOVL $-0x1, AX						
  subtraction_test.go:21	0x53608a		31db			XORL BX, BX						
  subtraction_test.go:21	0x53608c		e88ff7ffff		CALL example.com/pq-small-arithmetic.Sub16Guarded(SB)	
  subtraction_test.go:21	0x536091		6685c0			TESTW AX, AX						
  subtraction_test.go:21	0x536094		7436			JE 0x5360cc						
  subtraction_test.go:22	0x536096		488d15fbfc1400		LEAQ 0x14fcfb(IP), DX					
  subtraction_test.go:22	0x53609d		4889542478		MOVQ DX, 0x78(SP)					
  subtraction_test.go:22	0x5360a2		488d15271f0100		LEAQ 0x11f27(IP), DX					
  subtraction_test.go:22	0x5360a9		4889942480000000	MOVQ DX, 0x80(SP)					
  subtraction_test.go:22	0x5360b1		488b842498000000	MOVQ 0x98(SP), AX					
  subtraction_test.go:22	0x5360b9		8400			TESTB AL, 0(AX)						
  subtraction_test.go:22	0x5360bb		488d5c2478		LEAQ 0x78(SP), BX					
  subtraction_test.go:22	0x5360c0		b901000000		MOVL $0x1, CX						
  subtraction_test.go:22	0x5360c5		89cf			MOVL CX, DI						
  subtraction_test.go:22	0x5360c7		e834ddfaff		CALL testing.(*common).Fatal(SB)			
  subtraction_test.go:24	0x5360cc		c9			LEAVE							
  subtraction_test.go:24	0x5360cd		c3			RET							
  subtraction_test.go:5		0x5360ce		4889442408		MOVQ AX, 0x8(SP)					
  subtraction_test.go:5		0x5360d3		e82832f5ff		CALL runtime.morestack_noctxt.abi0(SB)			
  subtraction_test.go:5		0x5360d8		488b442408		MOVQ 0x8(SP), AX					
  subtraction_test.go:5		0x5360dd		0f1f00			NOPL 0(AX)						
  subtraction_test.go:5		0x5360e0		e9dbfcffff		JMP example.com/pq-small-arithmetic.TestSub16(SB)	
