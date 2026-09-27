TEXT example.com/paddingrange.Branch256(SB) /home/exedev/crypto-audit/round4/issues/sha2-padding-range/repro.go
  repro.go:6		0x535460		55			PUSHQ BP			
  repro.go:6		0x535461		4889e5			MOVQ SP, BP			
  repro.go:6		0x535464		488d4c2410		LEAQ 0x10(SP), CX		
  repro.go:6		0x535469		440f1139		MOVUPS X15, 0(CX)		
  repro.go:6		0x53546d		440f117910		MOVUPS X15, 0x10(CX)		
  repro.go:6		0x535472		440f117920		MOVUPS X15, 0x20(CX)		
  repro.go:6		0x535477		440f117930		MOVUPS X15, 0x30(CX)		
  repro.go:6		0x53547c		440f117938		MOVUPS X15, 0x38(CX)		
  repro.go:8		0x535481		c644241080		MOVB $0x80, 0x10(SP)		
  repro.go:10		0x535486		4889c1			MOVQ AX, CX			
  repro.go:10		0x535489		83e13f			ANDL $0x3f, CX			
  repro.go:10		0x53548c		488d51c8		LEAQ -0x38(CX), DX		
  repro.go:10		0x535490		48f7da			NEGQ DX				
  repro.go:10		0x535493		488d5988		LEAQ -0x78(CX), BX		
  repro.go:10		0x535497		48f7db			NEGQ BX				
  repro.go:10		0x53549a		4883f938		CMPQ CX, $0x38			
  repro.go:11		0x53549e		480f42da		CMOVB DX, BX			
  repro.go:11		0x5354a2		488d4b08		LEAQ 0x8(BX), CX		
  repro.go:11		0x5354a6		4883f948		CMPQ CX, $0x48			
  repro.go:10		0x5354aa		7726			JA 0x5354d2			
  repro.go:12		0x5354ac		4839cb			CMPQ BX, CX			
  repro.go:12		0x5354af		771c			JA 0x5354cd			
  repro.go:12		0x5354b1		488d53b8		LEAQ -0x48(BX), DX		
  repro.go:12		0x5354b5		48c1fa3f		SARQ $0x3f, DX			
  repro.go:12		0x5354b9		4821d3			ANDQ DX, BX			
  repro.go:12		0x5354bc		48c1e003		SHLQ $0x3, AX			
  binary.go:217		0x5354c0		480fc8			BSWAP AX			
  binary.go:210		0x5354c3		4889441c10		MOVQ AX, 0x10(SP)(BX*1)		
  repro.go:13		0x5354c8		4889c8			MOVQ CX, AX			
  repro.go:13		0x5354cb		5d			POPQ BP				
  repro.go:13		0x5354cc		c3			RET				
  repro.go:12		0x5354cd		e86e5af5ff		CALL runtime.panicBounds(SB)	
  repro.go:11		0x5354d2		b848000000		MOVL $0x48, AX			
  repro.go:11		0x5354d7		e8645af5ff		CALL runtime.panicBounds(SB)	
  repro.go:11		0x5354dc		90			NOPL				

TEXT example.com/paddingrange.Mask256(SB) /home/exedev/crypto-audit/round4/issues/sha2-padding-range/repro.go
  repro.go:17		0x5354e0		488d4c2408		LEAQ 0x8(SP), CX	
  repro.go:17		0x5354e5		440f1139		MOVUPS X15, 0(CX)	
  repro.go:17		0x5354e9		440f117910		MOVUPS X15, 0x10(CX)	
  repro.go:17		0x5354ee		440f117920		MOVUPS X15, 0x20(CX)	
  repro.go:17		0x5354f3		440f117930		MOVUPS X15, 0x30(CX)	
  repro.go:17		0x5354f8		440f117938		MOVUPS X15, 0x38(CX)	
  repro.go:19		0x5354fd		c644240880		MOVB $0x80, 0x8(SP)	
  repro.go:20		0x535502		488d48c9		LEAQ -0x37(AX), CX	
  repro.go:20		0x535506		48f7d9			NEGQ CX			
  repro.go:20		0x535509		83e13f			ANDL $0x3f, CX		
  repro.go:21		0x53550c		488d5109		LEAQ 0x9(CX), DX	
  repro.go:22		0x535510		48c1e003		SHLQ $0x3, AX		
  binary.go:217		0x535514		480fc8			BSWAP AX		
  binary.go:210		0x535517		4889440c09		MOVQ AX, 0x9(SP)(CX*1)	
  repro.go:23		0x53551c		4889d0			MOVQ DX, AX		
  repro.go:23		0x53551f		90			NOPL			
  repro.go:23		0x535520		c3			RET			

TEXT example.com/paddingrange.Branch512(SB) /home/exedev/crypto-audit/round4/issues/sha2-padding-range/repro.go
  repro.go:27		0x535540		55			PUSHQ BP			
  repro.go:27		0x535541		4889e5			MOVQ SP, BP			
  repro.go:27		0x535544		488d4c2410		LEAQ 0x10(SP), CX		
  repro.go:27		0x535549		440f1139		MOVUPS X15, 0(CX)		
  repro.go:27		0x53554d		440f117910		MOVUPS X15, 0x10(CX)		
  repro.go:27		0x535552		440f117920		MOVUPS X15, 0x20(CX)		
  repro.go:27		0x535557		440f117930		MOVUPS X15, 0x30(CX)		
  repro.go:27		0x53555c		440f117940		MOVUPS X15, 0x40(CX)		
  repro.go:27		0x535561		440f117950		MOVUPS X15, 0x50(CX)		
  repro.go:27		0x535566		440f117960		MOVUPS X15, 0x60(CX)		
  repro.go:27		0x53556b		440f117970		MOVUPS X15, 0x70(CX)		
  repro.go:27		0x535570		440f11b980000000	MOVUPS X15, 0x80(CX)		
  repro.go:29		0x535578		c644241080		MOVB $0x80, 0x10(SP)		
  repro.go:31		0x53557d		4889c1			MOVQ AX, CX			
  repro.go:31		0x535580		83e17f			ANDL $0x7f, CX			
  repro.go:31		0x535583		488d5190		LEAQ -0x70(CX), DX		
  repro.go:31		0x535587		48f7da			NEGQ DX				
  repro.go:31		0x53558a		488d9910ffffff		LEAQ 0xffffff10(CX), BX		
  repro.go:31		0x535591		48f7db			NEGQ BX				
  repro.go:31		0x535594		4883f970		CMPQ CX, $0x70			
  repro.go:32		0x535598		480f42da		CMOVB DX, BX			
  repro.go:32		0x53559c		488d4b10		LEAQ 0x10(BX), CX		
  repro.go:32		0x5355a0		4881f990000000		CMPQ CX, $0x90			
  repro.go:31		0x5355a7		772d			JA 0x5355d6			
  repro.go:33		0x5355a9		488d5308		LEAQ 0x8(BX), DX		
  repro.go:33		0x5355ad		4839ca			CMPQ DX, CX			
  repro.go:33		0x5355b0		771f			JA 0x5355d1			
  repro.go:33		0x5355b2		4881c378ffffff		ADDQ $-0x88, BX			
  repro.go:33		0x5355b9		48c1fb3f		SARQ $0x3f, BX			
  repro.go:33		0x5355bd		4821da			ANDQ BX, DX			
  repro.go:33		0x5355c0		48c1e003		SHLQ $0x3, AX			
  binary.go:217		0x5355c4		480fc8			BSWAP AX			
  binary.go:210		0x5355c7		4889441410		MOVQ AX, 0x10(SP)(DX*1)		
  repro.go:34		0x5355cc		4889c8			MOVQ CX, AX			
  repro.go:34		0x5355cf		5d			POPQ BP				
  repro.go:34		0x5355d0		c3			RET				
  repro.go:33		0x5355d1		e86a59f5ff		CALL runtime.panicBounds(SB)	
  repro.go:32		0x5355d6		b890000000		MOVL $0x90, AX			
  repro.go:32		0x5355db		0f1f440000		NOPL 0(AX)(AX*1)		
  repro.go:32		0x5355e0		e85b59f5ff		CALL runtime.panicBounds(SB)	
  repro.go:32		0x5355e5		90			NOPL				

TEXT example.com/paddingrange.Mask512(SB) /home/exedev/crypto-audit/round4/issues/sha2-padding-range/repro.go
  repro.go:38		0x535600		488d4c2408		LEAQ 0x8(SP), CX	
  repro.go:38		0x535605		440f1139		MOVUPS X15, 0(CX)	
  repro.go:38		0x535609		440f117910		MOVUPS X15, 0x10(CX)	
  repro.go:38		0x53560e		440f117920		MOVUPS X15, 0x20(CX)	
  repro.go:38		0x535613		440f117930		MOVUPS X15, 0x30(CX)	
  repro.go:38		0x535618		440f117940		MOVUPS X15, 0x40(CX)	
  repro.go:38		0x53561d		440f117950		MOVUPS X15, 0x50(CX)	
  repro.go:38		0x535622		440f117960		MOVUPS X15, 0x60(CX)	
  repro.go:38		0x535627		440f117970		MOVUPS X15, 0x70(CX)	
  repro.go:38		0x53562c		440f11b980000000	MOVUPS X15, 0x80(CX)	
  repro.go:40		0x535634		c644240880		MOVB $0x80, 0x8(SP)	
  repro.go:41		0x535639		488d4891		LEAQ -0x6f(AX), CX	
  repro.go:41		0x53563d		48f7d9			NEGQ CX			
  repro.go:41		0x535640		83e17f			ANDL $0x7f, CX		
  repro.go:42		0x535643		488d5111		LEAQ 0x11(CX), DX	
  repro.go:43		0x535647		48c1e003		SHLQ $0x3, AX		
  binary.go:217		0x53564b		480fc8			BSWAP AX		
  binary.go:210		0x53564e		4889440c11		MOVQ AX, 0x11(SP)(CX*1)	
  repro.go:44		0x535653		4889d0			MOVQ DX, AX		
  repro.go:44		0x535656		c3			RET			

TEXT example.com/paddingrange.TestPadding(SB) /home/exedev/crypto-audit/round4/issues/sha2-padding-range/repro_test.go
  repro_test.go:5	0x535660		4c8da42400fdffff		LEAQ 0xfffffd00(SP), R12			
  repro_test.go:5	0x535668		4d3b6610			CMPQ R12, 0x10(R14)				
  repro_test.go:5	0x53566c		0f86cb080000			JBE 0x535f3d					
  repro_test.go:5	0x535672		55				PUSHQ BP					
  repro_test.go:5	0x535673		4889e5				MOVQ SP, BP					
  repro_test.go:5	0x535676		4881ec78030000			SUBQ $0x378, SP					
  repro_test.go:7	0x53567d		4889842488030000		MOVQ AX, 0x388(SP)				
  repro_test.go:7	0x535685		488db424f8020000		LEAQ 0x2f8(SP), SI				
  repro_test.go:7	0x53568d		440f113e			MOVUPS X15, 0(SI)				
  repro_test.go:7	0x535691		440f117e10			MOVUPS X15, 0x10(SI)				
  repro_test.go:7	0x535696		440f117e18			MOVUPS X15, 0x18(SI)				
  repro_test.go:7	0x53569b		48c784240003000000040000	MOVQ $0x400, 0x300(SP)				
  repro_test.go:7	0x5356a7		48be0000000001000000		MOVQ $0x100000000, SI				
  repro_test.go:7	0x5356b1		4889b42408030000		MOVQ SI, 0x308(SP)				
  repro_test.go:7	0x5356b9		48be0000000000000080		MOVQ $0x8000000000000000, SI			
  repro_test.go:7	0x5356c3		4889b42410030000		MOVQ SI, 0x310(SP)				
  repro_test.go:7	0x5356cb		48c784241803000000fcffff	MOVQ $-0x400, 0x318(SP)				
  repro_test.go:7	0x5356d7		31f6				XORL SI, SI					
  repro_test.go:7	0x5356d9		eb05				JMP 0x5356e0					
  repro_test.go:7	0x5356db		48ffc6				INCQ SI						
  repro_test.go:7	0x5356de		6690				NOPW						
  repro_test.go:7	0x5356e0		4883fe05			CMPQ SI, $0x5					
  repro_test.go:7	0x5356e4		0f8d84050000			JGE 0x535c6e					
  repro_test.go:7	0x5356ea		4889b424c0020000		MOVQ SI, 0x2c0(SP)				
  repro_test.go:7	0x5356f2		488bbcf4f8020000		MOVQ 0x2f8(SP)(SI*8), DI			
  repro_test.go:7	0x5356fa		4889bc2490020000		MOVQ DI, 0x290(SP)				
  repro_test.go:8	0x535702		4531c0				XORL R8, R8					
  repro_test.go:8	0x535705		eb03				JMP 0x53570a					
  repro_test.go:8	0x535707		49ffc0				INCQ R8						
  repro_test.go:8	0x53570a		4981f800040000			CMPQ R8, $0x400					
  repro_test.go:8	0x535711		73c8				JAE 0x5356db					
  repro_test.go:8	0x535713		4c89842458020000		MOVQ R8, 0x258(SP)				
  repro_test.go:12	0x53571b		48c78424e802000040000000	MOVQ $0x40, 0x2e8(SP)				
  repro_test.go:12	0x535727		48c78424f002000080000000	MOVQ $0x80, 0x2f0(SP)				
  repro_test.go:9	0x535733		4d8d0c38			LEAQ 0(R8)(DI*1), R9				
  repro_test.go:9	0x535737		4c898c2460020000		MOVQ R9, 0x260(SP)				
  repro_test.go:12	0x53573f		4531d2				XORL R10, R10					
  repro_test.go:12	0x535742		eb2e				JMP 0x535772					
  repro_test.go:12	0x535744		4c8b9424b8020000		MOVQ 0x2b8(SP), R10				
  repro_test.go:12	0x53574c		49ffc2				INCQ R10					
  repro_test.go:23	0x53574f		488b842488030000		MOVQ 0x388(SP), AX				
  repro_test.go:7	0x535757		488bb424c0020000		MOVQ 0x2c0(SP), SI				
  repro_test.go:9	0x53575f		488bbc2490020000		MOVQ 0x290(SP), DI				
  repro_test.go:8	0x535767		4c8b842458020000		MOVQ 0x258(SP), R8				
  repro_test.go:16	0x53576f		4d89e1				MOVQ R12, R9					
  repro_test.go:12	0x535772		4983fa02			CMPQ R10, $0x2					
  repro_test.go:12	0x535776		7d8f				JGE 0x535707					
  repro_test.go:12	0x535778		4e8b9cd4e8020000		MOVQ 0x2e8(SP)(R10*8), R11			
  repro_test.go:13	0x535780		4d89dc				MOVQ R11, R12					
  repro_test.go:13	0x535783		49c1eb03			SHRQ $0x3, R11					
  repro_test.go:14	0x535787		4d89e5				MOVQ R12, R13					
  repro_test.go:14	0x53578a		4d29dc				SUBQ R11, R12					
  repro_test.go:16	0x53578d		41bf01000000			MOVL $0x1, R15					
  repro_test.go:16	0x535793		eb06				JMP 0x53579b					
  repro_test.go:16	0x535795		49ffc7				INCQ R15					
  repro_test.go:23	0x535798		4889c8				MOVQ CX, AX					
  repro_test.go:16	0x53579b		4b8d0c0f			LEAQ 0(R15)(R9*1), CX				
  repro_test.go:16	0x53579f		90				NOPL						
  repro_test.go:16	0x5357a0		4d85ed				TESTQ R13, R13					
  repro_test.go:16	0x5357a3		0f848e070000			JE 0x535f37					
  repro_test.go:7	0x5357a9		4889c2				MOVQ AX, DX					
  repro_test.go:16	0x5357ac		4889c8				MOVQ CX, AX					
  repro_test.go:7	0x5357af		4889d1				MOVQ DX, CX					
  repro_test.go:16	0x5357b2		31d2				XORL DX, DX					
  repro_test.go:16	0x5357b4		49f7f5				DIVQ R13					
  repro_test.go:16	0x5357b7		4c39e2				CMPQ DX, R12					
  repro_test.go:16	0x5357ba		75d9				JNE 0x535795					
  repro_test.go:12	0x5357bc		4c899424b8020000		MOVQ R10, 0x2b8(SP)				
  repro_test.go:12	0x5357c4		4c89ac24b0020000		MOVQ R13, 0x2b0(SP)				
  repro_test.go:13	0x5357cc		4c899c2448020000		MOVQ R11, 0x248(SP)				
  repro_test.go:16	0x5357d4		4c89bc2450020000		MOVQ R15, 0x250(SP)				
  repro_test.go:17	0x5357dc		4b8d1c2b			LEAQ 0(R11)(R13*1), BX				
  repro_test.go:17	0x5357e0		48899c24a8020000		MOVQ BX, 0x2a8(SP)				
  repro_test.go:17	0x5357e8		4883fb20			CMPQ BX, $0x20					
  repro_test.go:17	0x5357ec		771d				JA 0x53580b					
  repro_test.go:17	0x5357ee		4c8da424c8020000		LEAQ 0x2c8(SP), R12				
  repro_test.go:17	0x5357f6		450f113c24			MOVUPS X15, 0(R12)				
  repro_test.go:17	0x5357fb		450f117c2410			MOVUPS X15, 0x10(R12)				
  repro_test.go:17	0x535801		488d8424c8020000		LEAQ 0x2c8(SP), AX				
  repro_test.go:17	0x535809		eb3f				JMP 0x53584a					
  repro_test.go:17	0x53580b		488d0566fa1400			LEAQ 0x14fa66(IP), AX				
  repro_test.go:17	0x535812		4889d9				MOVQ BX, CX					
  repro_test.go:17	0x535815		e8460af5ff			CALL runtime.makeslice(SB)			
  repro_test.go:18	0x53581a		488b9c24a8020000		MOVQ 0x2a8(SP), BX				
  repro_test.go:7	0x535822		488bb424c0020000		MOVQ 0x2c0(SP), SI				
  repro_test.go:19	0x53582a		4c8b8c2460020000		MOVQ 0x260(SP), R9				
  repro_test.go:19	0x535832		4c8b9c2448020000		MOVQ 0x248(SP), R11				
  repro_test.go:20	0x53583a		4c8bac24b0020000		MOVQ 0x2b0(SP), R13				
  repro_test.go:19	0x535842		4c8bbc2450020000		MOVQ 0x250(SP), R15				
  repro_test.go:18	0x53584a		4885db				TESTQ BX, BX					
  repro_test.go:18	0x53584d		0f86df060000			JBE 0x535f32					
  repro_test.go:18	0x535853		c60080				MOVB $0x80, 0(AX)				
  repro_test.go:19	0x535856		4d89cc				MOVQ R9, R12					
  repro_test.go:19	0x535859		49c1e103			SHLQ $0x3, R9					
  repro_test.go:19	0x53585d		31f6				XORL SI, SI					
  repro_test.go:19	0x53585f		90				NOPL						
  repro_test.go:19	0x535860		eb17				JMP 0x535879					
  repro_test.go:19	0x535862		488b8c24a0020000		MOVQ 0x2a0(SP), CX				
  repro_test.go:19	0x53586a		44884c01f8			MOVB R9, -0x8(CX)(AX*1)				
  repro_test.go:19	0x53586f		488d4f01			LEAQ 0x1(DI), CX				
  repro_test.go:19	0x535873		4989f1				MOVQ SI, R9					
  repro_test.go:19	0x535876		4889ce				MOVQ CX, SI					
  repro_test.go:19	0x535879		4883fe08			CMPQ SI, $0x8					
  repro_test.go:19	0x53587d		7346				JAE 0x5358c5					
  repro_test.go:19	0x53587f		4889b42478020000		MOVQ SI, 0x278(SP)				
  repro_test.go:19	0x535887		4b8d0c1f			LEAQ 0(R15)(R11*1), CX				
  repro_test.go:19	0x53588b		488d540ef8			LEAQ -0x8(SI)(CX*1), DX				
  repro_test.go:19	0x535890		48c1e603			SHLQ $0x3, SI					
  repro_test.go:19	0x535894		4883c6c8			ADDQ $-0x38, SI					
  repro_test.go:19	0x535898		48f7de				NEGQ SI						
  repro_test.go:19	0x53589b		488bbc2478020000		MOVQ 0x278(SP), DI				
  repro_test.go:19	0x5358a3		4801f9				ADDQ DI, CX					
  repro_test.go:19	0x5358a6		48898c24a0020000		MOVQ CX, 0x2a0(SP)				
  repro_test.go:19	0x5358ae		4889f1				MOVQ SI, CX					
  repro_test.go:19	0x5358b1		4c89ce				MOVQ R9, SI					
  repro_test.go:19	0x5358b4		49d3e9				SHRQ CL, R9					
  repro_test.go:19	0x5358b7		4839da				CMPQ DX, BX					
  repro_test.go:19	0x5358ba		72a6				JB 0x535862					
  repro_test.go:19	0x5358bc		0f1f4000			NOPL 0(AX)					
  repro_test.go:19	0x5358c0		e968060000			JMP 0x535f2d					
  repro_test.go:18	0x5358c5		4889842420030000		MOVQ AX, 0x320(SP)				
  repro_test.go:20	0x5358cd		4983fd40			CMPQ R13, $0x40					
  repro_test.go:20	0x5358d1		7526				JNE 0x5358f9					
  repro_test.go:21	0x5358d3		488d3526e31600			LEAQ 0x16e326(IP), SI				
  repro_test.go:21	0x5358da		4889b42438030000		MOVQ SI, 0x338(SP)				
  repro_test.go:21	0x5358e2		4c8d0d27e31600			LEAQ 0x16e327(IP), R9				
  repro_test.go:21	0x5358e9		4c898c2440030000		MOVQ R9, 0x340(SP)				
  repro_test.go:21	0x5358f1		4531ed				XORL R13, R13					
  repro_test.go:21	0x5358f4		e98f030000			JMP 0x535c88					
  repro_test.go:27	0x5358f9		488d3508e31600			LEAQ 0x16e308(IP), SI				
  repro_test.go:27	0x535900		4889b42428030000		MOVQ SI, 0x328(SP)				
  repro_test.go:27	0x535908		4c8d0d09e31600			LEAQ 0x16e309(IP), R9				
  repro_test.go:27	0x53590f		4c898c2430030000		MOVQ R9, 0x330(SP)				
  repro_test.go:27	0x535917		31f6				XORL SI, SI					
  repro_test.go:27	0x535919		4889b42498020000		MOVQ SI, 0x298(SP)				
  repro_test.go:27	0x535921		eb1b				JMP 0x53593e					
  repro_test.go:27	0x535923		488bb42498020000		MOVQ 0x298(SP), SI				
  repro_test.go:27	0x53592b		48ffc6				INCQ SI						
  repro_test.go:28	0x53592e		4c8ba42460020000		MOVQ 0x260(SP), R12				
  repro_test.go:27	0x535936		4889b42498020000		MOVQ SI, 0x298(SP)				
  repro_test.go:27	0x53593e		488bb42498020000		MOVQ 0x298(SP), SI				
  repro_test.go:27	0x535946		4883fe02			CMPQ SI, $0x2					
  repro_test.go:27	0x53594a		0f8df4fdffff			JGE 0x535744					
  repro_test.go:27	0x535950		488b94f428030000		MOVQ 0x328(SP)(SI*8), DX			
  repro_test.go:28	0x535958		488b0a				MOVQ 0(DX), CX					
  repro_test.go:28	0x53595b		4c89e0				MOVQ R12, AX					
  repro_test.go:28	0x53595e		6690				NOPW						
  repro_test.go:28	0x535960		ffd1				CALL CX						
  repro_test.go:28	0x535962		488d8c2470010000		LEAQ 0x170(SP), CX				
  repro_test.go:28	0x53596a		4889e3				MOVQ SP, BX					
  repro_test.go:28	0x53596d		440f1033			MOVUPS 0(BX), X14				
  repro_test.go:28	0x535971		440f1131			MOVUPS X14, 0(CX)				
  repro_test.go:28	0x535975		440f107310			MOVUPS 0x10(BX), X14				
  repro_test.go:28	0x53597a		440f117110			MOVUPS X14, 0x10(CX)				
  repro_test.go:28	0x53597f		440f107320			MOVUPS 0x20(BX), X14				
  repro_test.go:28	0x535984		440f117120			MOVUPS X14, 0x20(CX)				
  repro_test.go:28	0x535989		440f107330			MOVUPS 0x30(BX), X14				
  repro_test.go:28	0x53598e		440f117130			MOVUPS X14, 0x30(CX)				
  repro_test.go:28	0x535993		440f107340			MOVUPS 0x40(BX), X14				
  repro_test.go:28	0x535998		440f117140			MOVUPS X14, 0x40(CX)				
  repro_test.go:28	0x53599d		440f107350			MOVUPS 0x50(BX), X14				
  repro_test.go:28	0x5359a2		440f117150			MOVUPS X14, 0x50(CX)				
  repro_test.go:28	0x5359a7		440f107360			MOVUPS 0x60(BX), X14				
  repro_test.go:28	0x5359ac		440f117160			MOVUPS X14, 0x60(CX)				
  repro_test.go:28	0x5359b1		440f107370			MOVUPS 0x70(BX), X14				
  repro_test.go:28	0x5359b6		440f117170			MOVUPS X14, 0x70(CX)				
  repro_test.go:28	0x5359bb		440f10b380000000		MOVUPS 0x80(BX), X14				
  repro_test.go:28	0x5359c3		440f11b180000000		MOVUPS X14, 0x80(CX)				
  repro_test.go:28	0x5359cb		488db42498000000		LEAQ 0x98(SP), SI				
  repro_test.go:28	0x5359d3		440f1031			MOVUPS 0(CX), X14				
  repro_test.go:28	0x5359d7		440f1136			MOVUPS X14, 0(SI)				
  repro_test.go:28	0x5359db		440f107110			MOVUPS 0x10(CX), X14				
  repro_test.go:28	0x5359e0		440f117610			MOVUPS X14, 0x10(SI)				
  repro_test.go:28	0x5359e5		440f107120			MOVUPS 0x20(CX), X14				
  repro_test.go:28	0x5359ea		440f117620			MOVUPS X14, 0x20(SI)				
  repro_test.go:28	0x5359ef		440f107130			MOVUPS 0x30(CX), X14				
  repro_test.go:28	0x5359f4		440f117630			MOVUPS X14, 0x30(SI)				
  repro_test.go:28	0x5359f9		440f107140			MOVUPS 0x40(CX), X14				
  repro_test.go:28	0x5359fe		440f117640			MOVUPS X14, 0x40(SI)				
  repro_test.go:28	0x535a03		440f107150			MOVUPS 0x50(CX), X14				
  repro_test.go:28	0x535a08		440f117650			MOVUPS X14, 0x50(SI)				
  repro_test.go:28	0x535a0d		440f107160			MOVUPS 0x60(CX), X14				
  repro_test.go:28	0x535a12		440f117660			MOVUPS X14, 0x60(SI)				
  repro_test.go:28	0x535a17		440f107170			MOVUPS 0x70(CX), X14				
  repro_test.go:28	0x535a1c		440f117670			MOVUPS X14, 0x70(SI)				
  repro_test.go:28	0x535a21		440f10b180000000		MOVUPS 0x80(CX), X14				
  repro_test.go:28	0x535a29		440f11b680000000		MOVUPS X14, 0x80(SI)				
  repro_test.go:29	0x535a31		488bbc2448020000		MOVQ 0x248(SP), DI				
  repro_test.go:29	0x535a39		4c8b842450020000		MOVQ 0x250(SP), R8				
  repro_test.go:29	0x535a41		4d8d0c38			LEAQ 0(R8)(DI*1), R9				
  repro_test.go:29	0x535a45		4c39c8				CMPQ AX, R9					
  repro_test.go:29	0x535a48		0f84bc000000			JE 0x535b0a					
  repro_test.go:28	0x535a4e		4889842468020000		MOVQ AX, 0x268(SP)				
  repro_test.go:29	0x535a56		488d8c2448030000		LEAQ 0x348(SP), CX				
  repro_test.go:29	0x535a5e		440f1139			MOVUPS X15, 0(CX)				
  repro_test.go:29	0x535a62		440f117910			MOVUPS X15, 0x10(CX)				
  repro_test.go:29	0x535a67		440f117920			MOVUPS X15, 0x20(CX)				
  repro_test.go:29	0x535a6c		488b842460020000		MOVQ 0x260(SP), AX				
  repro_test.go:29	0x535a74		e8a7d0f4ff			CALL runtime.convT64(SB)			
  repro_test.go:29	0x535a79		488d0d78f91400			LEAQ 0x14f978(IP), CX				
  repro_test.go:29	0x535a80		48898c2448030000		MOVQ CX, 0x348(SP)				
  repro_test.go:29	0x535a88		4889842450030000		MOVQ AX, 0x350(SP)				
  repro_test.go:29	0x535a90		488b8424b0020000		MOVQ 0x2b0(SP), AX				
  repro_test.go:29	0x535a98		e883d0f4ff			CALL runtime.convT64(SB)			
  repro_test.go:29	0x535a9d		488d0d54f91400			LEAQ 0x14f954(IP), CX				
  repro_test.go:29	0x535aa4		48898c2458030000		MOVQ CX, 0x358(SP)				
  repro_test.go:29	0x535aac		4889842460030000		MOVQ AX, 0x360(SP)				
  repro_test.go:29	0x535ab4		488b842468020000		MOVQ 0x268(SP), AX				
  repro_test.go:29	0x535abc		0f1f4000			NOPL 0(AX)					
  repro_test.go:29	0x535ac0		e85bd0f4ff			CALL runtime.convT64(SB)			
  repro_test.go:29	0x535ac5		488d0d2cf91400			LEAQ 0x14f92c(IP), CX				
  repro_test.go:29	0x535acc		48898c2468030000		MOVQ CX, 0x368(SP)				
  repro_test.go:29	0x535ad4		4889842470030000		MOVQ AX, 0x370(SP)				
  repro_test.go:29	0x535adc		488b842488030000		MOVQ 0x388(SP), AX				
  repro_test.go:29	0x535ae4		8400				TESTB AL, 0(AX)					
  repro_test.go:29	0x535ae6		488d9c2448030000		LEAQ 0x348(SP), BX				
  repro_test.go:29	0x535aee		b903000000			MOVL $0x3, CX					
  repro_test.go:29	0x535af3		89cf				MOVL CX, DI					
  repro_test.go:29	0x535af5		e806e3faff			CALL testing.(*common).Fatal(SB)		
  repro_test.go:28	0x535afa		488d8c2470010000		LEAQ 0x170(SP), CX				
  repro_test.go:28	0x535b02		488db42498000000		LEAQ 0x98(SP), SI				
  repro_test.go:30	0x535b0a		440f1036			MOVUPS 0(SI), X14				
  repro_test.go:30	0x535b0e		440f1131			MOVUPS X14, 0(CX)				
  repro_test.go:30	0x535b12		440f107610			MOVUPS 0x10(SI), X14				
  repro_test.go:30	0x535b17		440f117110			MOVUPS X14, 0x10(CX)				
  repro_test.go:30	0x535b1c		440f107620			MOVUPS 0x20(SI), X14				
  repro_test.go:30	0x535b21		440f117120			MOVUPS X14, 0x20(CX)				
  repro_test.go:30	0x535b26		440f107630			MOVUPS 0x30(SI), X14				
  repro_test.go:30	0x535b2b		440f117130			MOVUPS X14, 0x30(CX)				
  repro_test.go:30	0x535b30		440f107640			MOVUPS 0x40(SI), X14				
  repro_test.go:30	0x535b35		440f117140			MOVUPS X14, 0x40(CX)				
  repro_test.go:30	0x535b3a		440f107650			MOVUPS 0x50(SI), X14				
  repro_test.go:30	0x535b3f		440f117150			MOVUPS X14, 0x50(CX)				
  repro_test.go:30	0x535b44		440f107660			MOVUPS 0x60(SI), X14				
  repro_test.go:30	0x535b49		440f117160			MOVUPS X14, 0x60(CX)				
  repro_test.go:30	0x535b4e		440f107670			MOVUPS 0x70(SI), X14				
  repro_test.go:30	0x535b53		440f117170			MOVUPS X14, 0x70(CX)				
  repro_test.go:30	0x535b58		440f10b680000000		MOVUPS 0x80(SI), X14				
  repro_test.go:30	0x535b60		440f11b180000000		MOVUPS X14, 0x80(CX)				
  repro_test.go:30	0x535b68		31f6				XORL SI, SI					
  repro_test.go:30	0x535b6a		4c8b8c24a8020000		MOVQ 0x2a8(SP), R9				
  repro_test.go:30	0x535b72		4c8b942420030000		MOVQ 0x320(SP), R10				
  repro_test.go:30	0x535b7a		eb04				JMP 0x535b80					
  repro_test.go:30	0x535b7c		48ffc6				INCQ SI						
  repro_test.go:30	0x535b7f		90				NOPL						
  repro_test.go:30	0x535b80		4881fe90000000			CMPQ SI, $0x90					
  repro_test.go:30	0x535b87		0f8d96fdffff			JGE 0x535923					
  repro_test.go:30	0x535b8d		4c39ce				CMPQ SI, R9					
  repro_test.go:30	0x535b90		0f83da000000			JAE 0x535c70					
  repro_test.go:30	0x535b96		440fb69c3470010000		MOVZX 0x170(SP)(SI*1), R11			
  repro_test.go:30	0x535b9f		460fb62416			MOVZX 0(SI)(R10*1), R12				
  repro_test.go:30	0x535ba4		4538dc				CMPL R12, R11					
  repro_test.go:30	0x535ba7		74d3				JE 0x535b7c					
  repro_test.go:30	0x535ba9		4889b42480020000		MOVQ SI, 0x280(SP)				
  repro_test.go:30	0x535bb1		488d8c2448030000		LEAQ 0x348(SP), CX				
  repro_test.go:30	0x535bb9		440f1139			MOVUPS X15, 0(CX)				
  repro_test.go:30	0x535bbd		440f117910			MOVUPS X15, 0x10(CX)				
  repro_test.go:30	0x535bc2		440f117920			MOVUPS X15, 0x20(CX)				
  repro_test.go:30	0x535bc7		488b842460020000		MOVQ 0x260(SP), AX				
  repro_test.go:30	0x535bcf		e84ccff4ff			CALL runtime.convT64(SB)			
  repro_test.go:30	0x535bd4		488d0d1df81400			LEAQ 0x14f81d(IP), CX				
  repro_test.go:30	0x535bdb		48898c2448030000		MOVQ CX, 0x348(SP)				
  repro_test.go:30	0x535be3		4889842450030000		MOVQ AX, 0x350(SP)				
  repro_test.go:30	0x535beb		488b8424b0020000		MOVQ 0x2b0(SP), AX				
  repro_test.go:30	0x535bf3		e828cff4ff			CALL runtime.convT64(SB)			
  repro_test.go:30	0x535bf8		488d0df9f71400			LEAQ 0x14f7f9(IP), CX				
  repro_test.go:30	0x535bff		48898c2458030000		MOVQ CX, 0x358(SP)				
  repro_test.go:30	0x535c07		4889842460030000		MOVQ AX, 0x360(SP)				
  repro_test.go:30	0x535c0f		488b842480020000		MOVQ 0x280(SP), AX				
  repro_test.go:30	0x535c17		e804cff4ff			CALL runtime.convT64(SB)			
  repro_test.go:30	0x535c1c		488d0d15f81400			LEAQ 0x14f815(IP), CX				
  repro_test.go:30	0x535c23		48898c2468030000		MOVQ CX, 0x368(SP)				
  repro_test.go:30	0x535c2b		4889842470030000		MOVQ AX, 0x370(SP)				
  repro_test.go:30	0x535c33		488b842488030000		MOVQ 0x388(SP), AX				
  repro_test.go:30	0x535c3b		8400				TESTB AL, 0(AX)					
  repro_test.go:30	0x535c3d		488d9c2448030000		LEAQ 0x348(SP), BX				
  repro_test.go:30	0x535c45		b903000000			MOVL $0x3, CX					
  repro_test.go:30	0x535c4a		89cf				MOVL CX, DI					
  repro_test.go:30	0x535c4c		e8afe1faff			CALL testing.(*common).Fatal(SB)		
  repro_test.go:30	0x535c51		488bb42480020000		MOVQ 0x280(SP), SI				
  repro_test.go:30	0x535c59		4c8b8c24a8020000		MOVQ 0x2a8(SP), R9				
  repro_test.go:30	0x535c61		4c8b942420030000		MOVQ 0x320(SP), R10				
  repro_test.go:30	0x535c69		e90effffff			JMP 0x535b7c					
  repro_test.go:36	0x535c6e		c9				LEAVE						
  repro_test.go:36	0x535c6f		c3				RET						
  repro_test.go:30	0x535c70		e8cb52f5ff			CALL runtime.panicBounds(SB)			
  repro_test.go:21	0x535c75		4c8bac2498020000		MOVQ 0x298(SP), R13				
  repro_test.go:21	0x535c7d		49ffc5				INCQ R13					
  repro_test.go:22	0x535c80		4c8ba42460020000		MOVQ 0x260(SP), R12				
  repro_test.go:21	0x535c88		4983fd02			CMPQ R13, $0x2					
  repro_test.go:21	0x535c8c		0f8db2faffff			JGE 0x535744					
  repro_test.go:21	0x535c92		4c89ac2498020000		MOVQ R13, 0x298(SP)				
  repro_test.go:21	0x535c9a		4a8b94ec38030000		MOVQ 0x338(SP)(R13*8), DX			
  repro_test.go:22	0x535ca2		488b0a				MOVQ 0(DX), CX					
  repro_test.go:22	0x535ca5		4c89e0				MOVQ R12, AX					
  repro_test.go:22	0x535ca8		ffd1				CALL CX						
  repro_test.go:22	0x535caa		488d8c2400020000		LEAQ 0x200(SP), CX				
  repro_test.go:22	0x535cb2		4889e3				MOVQ SP, BX					
  repro_test.go:22	0x535cb5		440f1033			MOVUPS 0(BX), X14				
  repro_test.go:22	0x535cb9		440f1131			MOVUPS X14, 0(CX)				
  repro_test.go:22	0x535cbd		440f107310			MOVUPS 0x10(BX), X14				
  repro_test.go:22	0x535cc2		440f117110			MOVUPS X14, 0x10(CX)				
  repro_test.go:22	0x535cc7		440f107320			MOVUPS 0x20(BX), X14				
  repro_test.go:22	0x535ccc		440f117120			MOVUPS X14, 0x20(CX)				
  repro_test.go:22	0x535cd1		440f107330			MOVUPS 0x30(BX), X14				
  repro_test.go:22	0x535cd6		440f117130			MOVUPS X14, 0x30(CX)				
  repro_test.go:22	0x535cdb		440f107338			MOVUPS 0x38(BX), X14				
  repro_test.go:22	0x535ce0		440f117138			MOVUPS X14, 0x38(CX)				
  repro_test.go:22	0x535ce5		488db42428010000		LEAQ 0x128(SP), SI				
  repro_test.go:22	0x535ced		440f1031			MOVUPS 0(CX), X14				
  repro_test.go:22	0x535cf1		440f1136			MOVUPS X14, 0(SI)				
  repro_test.go:22	0x535cf5		440f107110			MOVUPS 0x10(CX), X14				
  repro_test.go:22	0x535cfa		440f117610			MOVUPS X14, 0x10(SI)				
  repro_test.go:22	0x535cff		440f107120			MOVUPS 0x20(CX), X14				
  repro_test.go:22	0x535d04		440f117620			MOVUPS X14, 0x20(SI)				
  repro_test.go:22	0x535d09		440f107130			MOVUPS 0x30(CX), X14				
  repro_test.go:22	0x535d0e		440f117630			MOVUPS X14, 0x30(SI)				
  repro_test.go:22	0x535d13		440f107138			MOVUPS 0x38(CX), X14				
  repro_test.go:22	0x535d18		440f117638			MOVUPS X14, 0x38(SI)				
  repro_test.go:23	0x535d1d		488bbc2448020000		MOVQ 0x248(SP), DI				
  repro_test.go:23	0x535d25		4c8b842450020000		MOVQ 0x250(SP), R8				
  repro_test.go:23	0x535d2d		4d8d0c38			LEAQ 0(R8)(DI*1), R9				
  repro_test.go:23	0x535d31		4c39c8				CMPQ AX, R9					
  repro_test.go:23	0x535d34		0f84b5000000			JE 0x535def					
  repro_test.go:22	0x535d3a		4889842470020000		MOVQ AX, 0x270(SP)				
  repro_test.go:23	0x535d42		488d8c2448030000		LEAQ 0x348(SP), CX				
  repro_test.go:23	0x535d4a		440f1139			MOVUPS X15, 0(CX)				
  repro_test.go:23	0x535d4e		440f117910			MOVUPS X15, 0x10(CX)				
  repro_test.go:23	0x535d53		440f117920			MOVUPS X15, 0x20(CX)				
  repro_test.go:23	0x535d58		488b842460020000		MOVQ 0x260(SP), AX				
  repro_test.go:23	0x535d60		e8bbcdf4ff			CALL runtime.convT64(SB)			
  repro_test.go:23	0x535d65		488d0d8cf61400			LEAQ 0x14f68c(IP), CX				
  repro_test.go:23	0x535d6c		48898c2448030000		MOVQ CX, 0x348(SP)				
  repro_test.go:23	0x535d74		4889842450030000		MOVQ AX, 0x350(SP)				
  repro_test.go:23	0x535d7c		b840000000			MOVL $0x40, AX					
  repro_test.go:23	0x535d81		e89acdf4ff			CALL runtime.convT64(SB)			
  repro_test.go:23	0x535d86		488d0d6bf61400			LEAQ 0x14f66b(IP), CX				
  repro_test.go:23	0x535d8d		48898c2458030000		MOVQ CX, 0x358(SP)				
  repro_test.go:23	0x535d95		4889842460030000		MOVQ AX, 0x360(SP)				
  repro_test.go:23	0x535d9d		488b842470020000		MOVQ 0x270(SP), AX				
  repro_test.go:23	0x535da5		e876cdf4ff			CALL runtime.convT64(SB)			
  repro_test.go:23	0x535daa		488d0d47f61400			LEAQ 0x14f647(IP), CX				
  repro_test.go:23	0x535db1		48898c2468030000		MOVQ CX, 0x368(SP)				
  repro_test.go:23	0x535db9		4889842470030000		MOVQ AX, 0x370(SP)				
  repro_test.go:23	0x535dc1		488b842488030000		MOVQ 0x388(SP), AX				
  repro_test.go:23	0x535dc9		8400				TESTB AL, 0(AX)					
  repro_test.go:23	0x535dcb		488d9c2448030000		LEAQ 0x348(SP), BX				
  repro_test.go:23	0x535dd3		b903000000			MOVL $0x3, CX					
  repro_test.go:23	0x535dd8		89cf				MOVL CX, DI					
  repro_test.go:23	0x535dda		e821e0faff			CALL testing.(*common).Fatal(SB)		
  repro_test.go:22	0x535ddf		488d8c2400020000		LEAQ 0x200(SP), CX				
  repro_test.go:22	0x535de7		488db42428010000		LEAQ 0x128(SP), SI				
  repro_test.go:24	0x535def		440f1036			MOVUPS 0(SI), X14				
  repro_test.go:24	0x535df3		440f1131			MOVUPS X14, 0(CX)				
  repro_test.go:24	0x535df7		440f107610			MOVUPS 0x10(SI), X14				
  repro_test.go:24	0x535dfc		440f117110			MOVUPS X14, 0x10(CX)				
  repro_test.go:24	0x535e01		440f107620			MOVUPS 0x20(SI), X14				
  repro_test.go:24	0x535e06		440f117120			MOVUPS X14, 0x20(CX)				
  repro_test.go:24	0x535e0b		440f107630			MOVUPS 0x30(SI), X14				
  repro_test.go:24	0x535e10		440f117130			MOVUPS X14, 0x30(CX)				
  repro_test.go:24	0x535e15		440f107638			MOVUPS 0x38(SI), X14				
  repro_test.go:24	0x535e1a		440f117138			MOVUPS X14, 0x38(CX)				
  repro_test.go:24	0x535e1f		31f6				XORL SI, SI					
  repro_test.go:24	0x535e21		4c8b8c24a8020000		MOVQ 0x2a8(SP), R9				
  repro_test.go:24	0x535e29		4c8b942420030000		MOVQ 0x320(SP), R10				
  repro_test.go:24	0x535e31		eb0d				JMP 0x535e40					
  repro_test.go:24	0x535e33		48ffc6				INCQ SI						
  repro_test.go:24	0x535e36		660f1f840000000000		NOPW 0(AX)(AX*1)				
  repro_test.go:24	0x535e3f		90				NOPL						
  repro_test.go:24	0x535e40		4883fe48			CMPQ SI, $0x48					
  repro_test.go:24	0x535e44		0f8d2bfeffff			JGE 0x535c75					
  repro_test.go:24	0x535e4a		4c39ce				CMPQ SI, R9					
  repro_test.go:24	0x535e4d		0f83d5000000			JAE 0x535f28					
  repro_test.go:24	0x535e53		440fb69c3400020000		MOVZX 0x200(SP)(SI*1), R11			
  repro_test.go:24	0x535e5c		460fb62416			MOVZX 0(SI)(R10*1), R12				
  repro_test.go:24	0x535e61		4538dc				CMPL R12, R11					
  repro_test.go:24	0x535e64		74cd				JE 0x535e33					
  repro_test.go:24	0x535e66		4889b42488020000		MOVQ SI, 0x288(SP)				
  repro_test.go:24	0x535e6e		488d8c2448030000		LEAQ 0x348(SP), CX				
  repro_test.go:24	0x535e76		440f1139			MOVUPS X15, 0(CX)				
  repro_test.go:24	0x535e7a		440f117910			MOVUPS X15, 0x10(CX)				
  repro_test.go:24	0x535e7f		440f117920			MOVUPS X15, 0x20(CX)				
  repro_test.go:24	0x535e84		488b842460020000		MOVQ 0x260(SP), AX				
  repro_test.go:24	0x535e8c		e88fccf4ff			CALL runtime.convT64(SB)			
  repro_test.go:24	0x535e91		488d0d60f51400			LEAQ 0x14f560(IP), CX				
  repro_test.go:24	0x535e98		48898c2448030000		MOVQ CX, 0x348(SP)				
  repro_test.go:24	0x535ea0		4889842450030000		MOVQ AX, 0x350(SP)				
  repro_test.go:24	0x535ea8		b840000000			MOVL $0x40, AX					
  repro_test.go:24	0x535ead		e86eccf4ff			CALL runtime.convT64(SB)			
  repro_test.go:24	0x535eb2		488d0d3ff51400			LEAQ 0x14f53f(IP), CX				
  repro_test.go:24	0x535eb9		48898c2458030000		MOVQ CX, 0x358(SP)				
  repro_test.go:24	0x535ec1		4889842460030000		MOVQ AX, 0x360(SP)				
  repro_test.go:24	0x535ec9		488b842488020000		MOVQ 0x288(SP), AX				
  repro_test.go:24	0x535ed1		e84accf4ff			CALL runtime.convT64(SB)			
  repro_test.go:24	0x535ed6		488d0d5bf51400			LEAQ 0x14f55b(IP), CX				
  repro_test.go:24	0x535edd		48898c2468030000		MOVQ CX, 0x368(SP)				
  repro_test.go:24	0x535ee5		4889842470030000		MOVQ AX, 0x370(SP)				
  repro_test.go:24	0x535eed		488b842488030000		MOVQ 0x388(SP), AX				
  repro_test.go:24	0x535ef5		8400				TESTB AL, 0(AX)					
  repro_test.go:24	0x535ef7		488d9c2448030000		LEAQ 0x348(SP), BX				
  repro_test.go:24	0x535eff		b903000000			MOVL $0x3, CX					
  repro_test.go:24	0x535f04		89cf				MOVL CX, DI					
  repro_test.go:24	0x535f06		e8f5defaff			CALL testing.(*common).Fatal(SB)		
  repro_test.go:24	0x535f0b		488bb42488020000		MOVQ 0x288(SP), SI				
  repro_test.go:24	0x535f13		4c8b8c24a8020000		MOVQ 0x2a8(SP), R9				
  repro_test.go:24	0x535f1b		4c8b942420030000		MOVQ 0x320(SP), R10				
  repro_test.go:24	0x535f23		e90bffffff			JMP 0x535e33					
  repro_test.go:24	0x535f28		e81350f5ff			CALL runtime.panicBounds(SB)			
  repro_test.go:19	0x535f2d		e80e50f5ff			CALL runtime.panicBounds(SB)			
  repro_test.go:18	0x535f32		e80950f5ff			CALL runtime.panicBounds(SB)			
  repro_test.go:16	0x535f37		e8842ef1ff			CALL runtime.panicdivide(SB)			
  repro_test.go:16	0x535f3c		90				NOPL						
  repro_test.go:5	0x535f3d		4889442408			MOVQ AX, 0x8(SP)				
  repro_test.go:5	0x535f42		e8b933f5ff			CALL runtime.morestack_noctxt.abi0(SB)		
  repro_test.go:5	0x535f47		488b442408			MOVQ 0x8(SP), AX				
  repro_test.go:5	0x535f4c		e90ff7ffff			JMP example.com/paddingrange.TestPadding(SB)	
