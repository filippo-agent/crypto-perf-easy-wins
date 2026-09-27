TEXT crypto/internal/fips140/nistec/fiat.p384Mul(SB) /home/exedev/go-crypto/src/crypto/internal/fips140/nistec/fiat/p384_fiat64.go
  p384_fiat64.go:88	0x55b0c0		4c8da424a8faffff	LEAQ 0xfffffaa8(SP), R12				
  p384_fiat64.go:88	0x55b0c8		4d3b6610		CMPQ R12, 0x10(R14)					
  p384_fiat64.go:88	0x55b0cc		0f86fc110000		JBE 0x55c2ce						
  p384_fiat64.go:88	0x55b0d2		55			PUSHQ BP						
  p384_fiat64.go:88	0x55b0d3		4889e5			MOVQ SP, BP						
  p384_fiat64.go:88	0x55b0d6		4881ecd0050000		SUBQ $0x5d0, SP						
  p384_fiat64.go:783	0x55b0dd		48898424e0050000	MOVQ AX, 0x5e0(SP)					
  p384_fiat64.go:89	0x55b0e5		488b5308		MOVQ 0x8(BX), DX					
  p384_fiat64.go:90	0x55b0e9		488b7310		MOVQ 0x10(BX), SI					
  p384_fiat64.go:91	0x55b0ed		488b7b18		MOVQ 0x18(BX), DI					
  p384_fiat64.go:92	0x55b0f1		4c8b4320		MOVQ 0x20(BX), R8					
  p384_fiat64.go:93	0x55b0f5		4c8b4b28		MOVQ 0x28(BX), R9					
  p384_fiat64.go:94	0x55b0f9		488b1b			MOVQ 0(BX), BX						
  p384_fiat64.go:97	0x55b0fc		4c8b5108		MOVQ 0x8(CX), R10					
  p384_fiat64.go:109	0x55b100		4c89d0			MOVQ R10, AX						
  p384_fiat64.go:89	0x55b103		4989d4			MOVQ DX, R12						
  p384_fiat64.go:109	0x55b106		48f7e3			MULQ BX							
  p384_fiat64.go:109	0x55b109		4989c5			MOVQ AX, R13						
  p384_fiat64.go:199	0x55b10c		4c89e0			MOVQ R12, AX						
  p384_fiat64.go:109	0x55b10f		4989d7			MOVQ DX, R15						
  p384_fiat64.go:199	0x55b112		49f7e2			MULQ R10						
  p384_fiat64.go:199	0x55b115		4889542450		MOVQ DX, 0x50(SP)					
  p384_fiat64.go:199	0x55b11a		4889442458		MOVQ AX, 0x58(SP)					
  p384_fiat64.go:308	0x55b11f		4c8b5910		MOVQ 0x10(CX), R11					
  p384_fiat64.go:106	0x55b123		4c89d8			MOVQ R11, AX						
  p384_fiat64.go:106	0x55b126		48f7e3			MULQ BX							
  p384_fiat64.go:106	0x55b129		4889942428050000	MOVQ DX, 0x528(SP)					
  p384_fiat64.go:106	0x55b131		4889842450050000	MOVQ AX, 0x550(SP)					
  p384_fiat64.go:196	0x55b139		4c89d8			MOVQ R11, AX						
  p384_fiat64.go:196	0x55b13c		49f7e4			MULQ R12						
  p384_fiat64.go:196	0x55b13f		4889542460		MOVQ DX, 0x60(SP)					
  p384_fiat64.go:196	0x55b144		4889442468		MOVQ AX, 0x68(SP)					
  p384_fiat64.go:308	0x55b149		4889f0			MOVQ SI, AX						
  p384_fiat64.go:308	0x55b14c		49f7e3			MULQ R11						
  p384_fiat64.go:308	0x55b14f		48899424d0040000	MOVQ DX, 0x4d0(SP)					
  p384_fiat64.go:308	0x55b157		48898424d8040000	MOVQ AX, 0x4d8(SP)					
  p384_fiat64.go:311	0x55b15f		4c89d0			MOVQ R10, AX						
  p384_fiat64.go:311	0x55b162		48f7e6			MULQ SI							
  p384_fiat64.go:311	0x55b165		48899424c0040000	MOVQ DX, 0x4c0(SP)					
  p384_fiat64.go:311	0x55b16d		48898424c8040000	MOVQ AX, 0x4c8(SP)					
  p384_fiat64.go:411	0x55b175		488b5128		MOVQ 0x28(CX), DX					
  p384_fiat64.go:411	0x55b179		48899424c8050000	MOVQ DX, 0x5c8(SP)					
  p384_fiat64.go:97	0x55b181		4889d0			MOVQ DX, AX						
  p384_fiat64.go:97	0x55b184		48f7e3			MULQ BX							
  p384_fiat64.go:97	0x55b187		4889542440		MOVQ DX, 0x40(SP)					
  p384_fiat64.go:97	0x55b18c		4889842498000000	MOVQ AX, 0x98(SP)					
  p384_fiat64.go:187	0x55b194		488b8424c8050000	MOVQ 0x5c8(SP), AX					
  p384_fiat64.go:187	0x55b19c		49f7e4			MULQ R12						
  p384_fiat64.go:187	0x55b19f		4889942490000000	MOVQ DX, 0x90(SP)					
  p384_fiat64.go:187	0x55b1a7		48898424a0000000	MOVQ AX, 0xa0(SP)					
  p384_fiat64.go:299	0x55b1af		488b8424c8050000	MOVQ 0x5c8(SP), AX					
  p384_fiat64.go:299	0x55b1b7		48f7e6			MULQ SI							
  p384_fiat64.go:299	0x55b1ba		4889942400050000	MOVQ DX, 0x500(SP)					
  p384_fiat64.go:299	0x55b1c2		4889842408050000	MOVQ AX, 0x508(SP)					
  p384_fiat64.go:411	0x55b1ca		488b8424c8050000	MOVQ 0x5c8(SP), AX					
  p384_fiat64.go:411	0x55b1d2		48f7e7			MULQ DI							
  p384_fiat64.go:411	0x55b1d5		48899424e8030000	MOVQ DX, 0x3e8(SP)					
  p384_fiat64.go:411	0x55b1dd		48898424f0030000	MOVQ AX, 0x3f0(SP)					
  p384_fiat64.go:417	0x55b1e5		488b5118		MOVQ 0x18(CX), DX					
  p384_fiat64.go:417	0x55b1e9		48899424c0050000	MOVQ DX, 0x5c0(SP)					
  p384_fiat64.go:103	0x55b1f1		4889d0			MOVQ DX, AX						
  p384_fiat64.go:103	0x55b1f4		48f7e3			MULQ BX							
  p384_fiat64.go:103	0x55b1f7		4889942458050000	MOVQ DX, 0x558(SP)					
  p384_fiat64.go:103	0x55b1ff		4889842490050000	MOVQ AX, 0x590(SP)					
  p384_fiat64.go:193	0x55b207		488b8424c0050000	MOVQ 0x5c0(SP), AX					
  p384_fiat64.go:193	0x55b20f		49f7e4			MULQ R12						
  p384_fiat64.go:193	0x55b212		4889542470		MOVQ DX, 0x70(SP)					
  p384_fiat64.go:193	0x55b217		4889442478		MOVQ AX, 0x78(SP)					
  p384_fiat64.go:305	0x55b21c		488b8424c0050000	MOVQ 0x5c0(SP), AX					
  p384_fiat64.go:305	0x55b224		48f7e6			MULQ SI							
  p384_fiat64.go:305	0x55b227		48899424e0040000	MOVQ DX, 0x4e0(SP)					
  p384_fiat64.go:305	0x55b22f		48898424e8040000	MOVQ AX, 0x4e8(SP)					
  p384_fiat64.go:417	0x55b237		4889f8			MOVQ DI, AX						
  p384_fiat64.go:417	0x55b23a		488b9424c0050000	MOVQ 0x5c0(SP), DX					
  p384_fiat64.go:417	0x55b242		48f7e2			MULQ DX							
  p384_fiat64.go:417	0x55b245		48899424c8030000	MOVQ DX, 0x3c8(SP)					
  p384_fiat64.go:417	0x55b24d		48898424d0030000	MOVQ AX, 0x3d0(SP)					
  p384_fiat64.go:420	0x55b255		4c89d8			MOVQ R11, AX						
  p384_fiat64.go:420	0x55b258		48f7e7			MULQ DI							
  p384_fiat64.go:420	0x55b25b		48899424b8030000	MOVQ DX, 0x3b8(SP)					
  p384_fiat64.go:420	0x55b263		48898424c0030000	MOVQ AX, 0x3c0(SP)					
  p384_fiat64.go:423	0x55b26b		4c89d0			MOVQ R10, AX						
  p384_fiat64.go:423	0x55b26e		48f7e7			MULQ DI							
  p384_fiat64.go:423	0x55b271		48899424a8030000	MOVQ DX, 0x3a8(SP)					
  p384_fiat64.go:423	0x55b279		48898424b0030000	MOVQ AX, 0x3b0(SP)					
  p384_fiat64.go:523	0x55b281		488b8424c8050000	MOVQ 0x5c8(SP), AX					
  p384_fiat64.go:523	0x55b289		49f7e0			MULQ R8							
  p384_fiat64.go:523	0x55b28c		48899424d0020000	MOVQ DX, 0x2d0(SP)					
  p384_fiat64.go:523	0x55b294		48898424d8020000	MOVQ AX, 0x2d8(SP)					
  p384_fiat64.go:526	0x55b29c		488b5120		MOVQ 0x20(CX), DX					
  p384_fiat64.go:526	0x55b2a0		48899424b8050000	MOVQ DX, 0x5b8(SP)					
  p384_fiat64.go:100	0x55b2a8		4889d0			MOVQ DX, AX						
  p384_fiat64.go:100	0x55b2ab		48f7e3			MULQ BX							
  p384_fiat64.go:100	0x55b2ae		48899424a8050000	MOVQ DX, 0x5a8(SP)					
  p384_fiat64.go:100	0x55b2b6		4889442408		MOVQ AX, 0x8(SP)					
  p384_fiat64.go:190	0x55b2bb		488b8424b8050000	MOVQ 0x5b8(SP), AX					
  p384_fiat64.go:190	0x55b2c3		49f7e4			MULQ R12						
  p384_fiat64.go:190	0x55b2c6		4889942480000000	MOVQ DX, 0x80(SP)					
  p384_fiat64.go:190	0x55b2ce		4889842488000000	MOVQ AX, 0x88(SP)					
  p384_fiat64.go:302	0x55b2d6		488b8424b8050000	MOVQ 0x5b8(SP), AX					
  p384_fiat64.go:302	0x55b2de		48f7e6			MULQ SI							
  p384_fiat64.go:302	0x55b2e1		48899424f0040000	MOVQ DX, 0x4f0(SP)					
  p384_fiat64.go:302	0x55b2e9		48898424f8040000	MOVQ AX, 0x4f8(SP)					
  p384_fiat64.go:414	0x55b2f1		488b8424b8050000	MOVQ 0x5b8(SP), AX					
  p384_fiat64.go:414	0x55b2f9		48f7e7			MULQ DI							
  p384_fiat64.go:414	0x55b2fc		48899424d8030000	MOVQ DX, 0x3d8(SP)					
  p384_fiat64.go:414	0x55b304		48898424e0030000	MOVQ AX, 0x3e0(SP)					
  p384_fiat64.go:526	0x55b30c		4c89c0			MOVQ R8, AX						
  p384_fiat64.go:526	0x55b30f		488b9424b8050000	MOVQ 0x5b8(SP), DX					
  p384_fiat64.go:526	0x55b317		48f7e2			MULQ DX							
  p384_fiat64.go:526	0x55b31a		48899424c0020000	MOVQ DX, 0x2c0(SP)					
  p384_fiat64.go:526	0x55b322		48898424c8020000	MOVQ AX, 0x2c8(SP)					
  p384_fiat64.go:529	0x55b32a		488b8424c0050000	MOVQ 0x5c0(SP), AX					
  p384_fiat64.go:529	0x55b332		49f7e0			MULQ R8							
  p384_fiat64.go:529	0x55b335		48899424b0020000	MOVQ DX, 0x2b0(SP)					
  p384_fiat64.go:529	0x55b33d		48898424b8020000	MOVQ AX, 0x2b8(SP)					
  p384_fiat64.go:532	0x55b345		4c89d8			MOVQ R11, AX						
  p384_fiat64.go:532	0x55b348		49f7e0			MULQ R8							
  p384_fiat64.go:532	0x55b34b		48899424a0020000	MOVQ DX, 0x2a0(SP)					
  p384_fiat64.go:532	0x55b353		48898424a8020000	MOVQ AX, 0x2a8(SP)					
  p384_fiat64.go:535	0x55b35b		4c89d0			MOVQ R10, AX						
  p384_fiat64.go:535	0x55b35e		49f7e0			MULQ R8							
  p384_fiat64.go:535	0x55b361		4889942490020000	MOVQ DX, 0x290(SP)					
  p384_fiat64.go:535	0x55b369		4889842498020000	MOVQ AX, 0x298(SP)					
  p384_fiat64.go:538	0x55b371		488b09			MOVQ 0(CX), CX						
  p384_fiat64.go:112	0x55b374		4889d8			MOVQ BX, AX						
  p384_fiat64.go:112	0x55b377		48f7e1			MULQ CX							
  p384_fiat64.go:112	0x55b37a		4889842478040000	MOVQ AX, 0x478(SP)					
  p384_fiat64.go:112	0x55b382		4889942470040000	MOVQ DX, 0x470(SP)					
  p384_fiat64.go:130	0x55b38a		48b80100000001000000	MOVQ $0x100000001, AX					
  p384_fiat64.go:130	0x55b394		488b9c2478040000	MOVQ 0x478(SP), BX					
  p384_fiat64.go:130	0x55b39c		48f7e3			MULQ BX							
  p384_fiat64.go:130	0x55b39f		48898424e0020000	MOVQ AX, 0x2e0(SP)					
  p384_fiat64.go:130	0x55b3a7		4889c2			MOVQ AX, DX						
  p384_fiat64.go:139	0x55b3aa		48c7c0ffffffff		MOVQ $-0x1, AX						
  p384_fiat64.go:139	0x55b3b1		48f7e2			MULQ DX							
  p384_fiat64.go:136	0x55b3b4		4889942408020000	MOVQ DX, 0x208(SP)					
  p384_fiat64.go:139	0x55b3bc		4889842400020000	MOVQ AX, 0x200(SP)					
  p384_fiat64.go:142	0x55b3c4		48c7c0feffffff		MOVQ $-0x2, AX						
  p384_fiat64.go:142	0x55b3cb		488b9c24e0020000	MOVQ 0x2e0(SP), BX					
  p384_fiat64.go:142	0x55b3d3		48f7e3			MULQ BX							
  p384_fiat64.go:142	0x55b3d6		4889942450010000	MOVQ DX, 0x150(SP)					
  p384_fiat64.go:142	0x55b3de		48898424a8010000	MOVQ AX, 0x1a8(SP)					
  p384_fiat64.go:145	0x55b3e6		48b800000000ffffffff	MOVQ $0xffffffff00000000, AX				
  p384_fiat64.go:145	0x55b3f0		48f7e3			MULQ BX							
  p384_fiat64.go:145	0x55b3f3		4889942418010000	MOVQ DX, 0x118(SP)					
  p384_fiat64.go:145	0x55b3fb		4889842420010000	MOVQ AX, 0x120(SP)					
  p384_fiat64.go:148	0x55b403		b8ffffffff		MOVL $-0x1, AX						
  p384_fiat64.go:148	0x55b408		48f7e3			MULQ BX							
  p384_fiat64.go:148	0x55b40b		48899424e8000000	MOVQ DX, 0xe8(SP)					
  p384_fiat64.go:148	0x55b413		4889c3			MOVQ AX, BX						
  p384_fiat64.go:202	0x55b416		4889c8			MOVQ CX, AX						
  p384_fiat64.go:202	0x55b419		49f7e4			MULQ R12						
  p384_fiat64.go:202	0x55b41c		4889542438		MOVQ DX, 0x38(SP)					
  p384_fiat64.go:202	0x55b421		4889442448		MOVQ AX, 0x48(SP)					
  p384_fiat64.go:314	0x55b426		4889c8			MOVQ CX, AX						
  p384_fiat64.go:314	0x55b429		48f7e6			MULQ SI							
  p384_fiat64.go:314	0x55b42c		48899424b0040000	MOVQ DX, 0x4b0(SP)					
  p384_fiat64.go:314	0x55b434		48898424b8040000	MOVQ AX, 0x4b8(SP)					
  p384_fiat64.go:426	0x55b43c		4889c8			MOVQ CX, AX						
  p384_fiat64.go:426	0x55b43f		48f7e7			MULQ DI							
  p384_fiat64.go:426	0x55b442		4889942498030000	MOVQ DX, 0x398(SP)					
  p384_fiat64.go:426	0x55b44a		48898424a0030000	MOVQ AX, 0x3a0(SP)					
  p384_fiat64.go:538	0x55b452		4889c8			MOVQ CX, AX						
  p384_fiat64.go:538	0x55b455		49f7e0			MULQ R8							
  p384_fiat64.go:538	0x55b458		4889942480020000	MOVQ DX, 0x280(SP)					
  p384_fiat64.go:538	0x55b460		4889842488020000	MOVQ AX, 0x288(SP)					
  p384_fiat64.go:635	0x55b468		4c89c8			MOVQ R9, AX						
  p384_fiat64.go:635	0x55b46b		4c8b8424c8050000	MOVQ 0x5c8(SP), R8					
  p384_fiat64.go:635	0x55b473		49f7e0			MULQ R8							
  p384_fiat64.go:635	0x55b476		48899424b8010000	MOVQ DX, 0x1b8(SP)					
  p384_fiat64.go:635	0x55b47e		48898424c0010000	MOVQ AX, 0x1c0(SP)					
  p384_fiat64.go:638	0x55b486		488b8424b8050000	MOVQ 0x5b8(SP), AX					
  p384_fiat64.go:638	0x55b48e		49f7e1			MULQ R9							
  p384_fiat64.go:638	0x55b491		48899424a0010000	MOVQ DX, 0x1a0(SP)					
  p384_fiat64.go:638	0x55b499		48898424b0010000	MOVQ AX, 0x1b0(SP)					
  p384_fiat64.go:641	0x55b4a1		488b8424c0050000	MOVQ 0x5c0(SP), AX					
  p384_fiat64.go:641	0x55b4a9		49f7e1			MULQ R9							
  p384_fiat64.go:641	0x55b4ac		4889942490010000	MOVQ DX, 0x190(SP)					
  p384_fiat64.go:641	0x55b4b4		4889842498010000	MOVQ AX, 0x198(SP)					
  p384_fiat64.go:644	0x55b4bc		4c89d8			MOVQ R11, AX						
  p384_fiat64.go:644	0x55b4bf		49f7e1			MULQ R9							
  p384_fiat64.go:644	0x55b4c2		4889942480010000	MOVQ DX, 0x180(SP)					
  p384_fiat64.go:644	0x55b4ca		4889842488010000	MOVQ AX, 0x188(SP)					
  p384_fiat64.go:647	0x55b4d2		4c89d0			MOVQ R10, AX						
  p384_fiat64.go:647	0x55b4d5		49f7e1			MULQ R9							
  p384_fiat64.go:647	0x55b4d8		4889942470010000	MOVQ DX, 0x170(SP)					
  p384_fiat64.go:647	0x55b4e0		4889842478010000	MOVQ AX, 0x178(SP)					
  p384_fiat64.go:650	0x55b4e8		4889c8			MOVQ CX, AX						
  p384_fiat64.go:650	0x55b4eb		49f7e1			MULQ R9							
  p384_fiat64.go:650	0x55b4ee		4889942460010000	MOVQ DX, 0x160(SP)					
  p384_fiat64.go:650	0x55b4f6		4889842468010000	MOVQ AX, 0x168(SP)					
  p384_fiat64.go:766	0x55b4fe		90			NOPL							
  p384_fiat64.go:768	0x55b4ff		90			NOPL							
  p384_fiat64.go:770	0x55b500		90			NOPL							
  p384_fiat64.go:772	0x55b501		90			NOPL							
  p384_fiat64.go:774	0x55b502		90			NOPL							
  p384_fiat64.go:776	0x55b503		90			NOPL							
  p384_fiat64.go:115	0x55b504		4c8b8c2470040000	MOVQ 0x470(SP), R9					
  p384_fiat64.go:115	0x55b50c		4d01e9			ADDQ R13, R9						
  p384_fiat64.go:118	0x55b50f		4c8bac2450050000	MOVQ 0x550(SP), R13					
  p384_fiat64.go:118	0x55b517		4d11ef			ADCQ R13, R15						
  p384_fiat64.go:121	0x55b51a		4c8bac2428050000	MOVQ 0x528(SP), R13					
  p384_fiat64.go:121	0x55b522		4c8b842490050000	MOVQ 0x590(SP), R8					
  p384_fiat64.go:121	0x55b52a		4d11c5			ADCQ R8, R13						
  p384_fiat64.go:124	0x55b52d		4c8b842458050000	MOVQ 0x558(SP), R8					
  p384_fiat64.go:124	0x55b535		4c8b5c2408		MOVQ 0x8(SP), R11					
  p384_fiat64.go:124	0x55b53a		4d11d8			ADCQ R11, R8						
  p384_fiat64.go:127	0x55b53d		4c8b9c24a8050000	MOVQ 0x5a8(SP), R11					
  p384_fiat64.go:127	0x55b545		4c8b942498000000	MOVQ 0x98(SP), R10					
  p384_fiat64.go:127	0x55b54d		4d11d3			ADCQ R10, R11						
  p384_fiat64.go:128	0x55b550		4c8b542440		MOVQ 0x40(SP), R10					
  p384_fiat64.go:128	0x55b555		4983d200		ADCQ $0x0, R10						
  p384_fiat64.go:128	0x55b559		4c89942410030000	MOVQ R10, 0x310(SP)					
  p384_fiat64.go:151	0x55b561		488b8c24e8000000	MOVQ 0xe8(SP), CX					
  p384_fiat64.go:151	0x55b569		488b942420010000	MOVQ 0x120(SP), DX					
  p384_fiat64.go:151	0x55b571		4801d1			ADDQ DX, CX						
  p384_fiat64.go:154	0x55b574		488b942418010000	MOVQ 0x118(SP), DX					
  p384_fiat64.go:154	0x55b57c		488bbc24a8010000	MOVQ 0x1a8(SP), DI					
  p384_fiat64.go:154	0x55b584		4811fa			ADCQ DI, DX						
  p384_fiat64.go:157	0x55b587		488bbc2450010000	MOVQ 0x150(SP), DI					
  p384_fiat64.go:157	0x55b58f		488bb42400020000	MOVQ 0x200(SP), SI					
  p384_fiat64.go:157	0x55b597		4811f7			ADCQ SI, DI						
  p384_fiat64.go:160	0x55b59a		4c8ba42408020000	MOVQ 0x208(SP), R12					
  p384_fiat64.go:160	0x55b5a2		4c11e6			ADCQ R12, SI						
  p384_fiat64.go:163	0x55b5a5		4c8b942400020000	MOVQ 0x200(SP), R10					
  p384_fiat64.go:163	0x55b5ad		4d11e2			ADCQ R12, R10						
  p384_fiat64.go:164	0x55b5b0		4983d400		ADCQ $0x0, R12						
  p384_fiat64.go:164	0x55b5b4		4c89a424e0000000	MOVQ R12, 0xe0(SP)					
  p384_fiat64.go:166	0x55b5bc		4c8ba42478040000	MOVQ 0x478(SP), R12					
  p384_fiat64.go:166	0x55b5c4		4901dc			ADDQ BX, R12						
  p384_fiat64.go:169	0x55b5c7		4c11c9			ADCQ R9, CX						
  p384_fiat64.go:169	0x55b5ca		48898c24d8000000	MOVQ CX, 0xd8(SP)					
  p384_fiat64.go:172	0x55b5d2		4c11fa			ADCQ R15, DX						
  p384_fiat64.go:172	0x55b5d5		48899424d0000000	MOVQ DX, 0xd0(SP)					
  p384_fiat64.go:175	0x55b5dd		4c11ef			ADCQ R13, DI						
  p384_fiat64.go:175	0x55b5e0		4889bc24c8000000	MOVQ DI, 0xc8(SP)					
  p384_fiat64.go:178	0x55b5e8		4c11c6			ADCQ R8, SI						
  p384_fiat64.go:178	0x55b5eb		4889b424c0000000	MOVQ SI, 0xc0(SP)					
  p384_fiat64.go:181	0x55b5f3		4d11da			ADCQ R11, R10						
  p384_fiat64.go:181	0x55b5f6		4c899424b8000000	MOVQ R10, 0xb8(SP)					
  p384_fiat64.go:184	0x55b5fe		488b9c24e0000000	MOVQ 0xe0(SP), BX					
  p384_fiat64.go:184	0x55b606		4c8b842410030000	MOVQ 0x310(SP), R8					
  p384_fiat64.go:184	0x55b60e		4c11c3			ADCQ R8, BX						
  p384_fiat64.go:184	0x55b611		48899c24b0000000	MOVQ BX, 0xb0(SP)					
  p384_fiat64.go:184	0x55b619		410f92c0		SETB R8							
  p384_fiat64.go:184	0x55b61d		450fb6c0		MOVZX R8, R8						
  p384_fiat64.go:184	0x55b621		4c898424a8000000	MOVQ R8, 0xa8(SP)					
  p384_fiat64.go:205	0x55b629		4c8b4c2438		MOVQ 0x38(SP), R9					
  p384_fiat64.go:205	0x55b62e		4c8b5c2458		MOVQ 0x58(SP), R11					
  p384_fiat64.go:205	0x55b633		4d01d9			ADDQ R11, R9						
  p384_fiat64.go:205	0x55b636		4c894c2430		MOVQ R9, 0x30(SP)					
  p384_fiat64.go:208	0x55b63b		4c8b5c2450		MOVQ 0x50(SP), R11					
  p384_fiat64.go:208	0x55b640		4c8b642468		MOVQ 0x68(SP), R12					
  p384_fiat64.go:208	0x55b645		4d11e3			ADCQ R12, R11						
  p384_fiat64.go:208	0x55b648		4c895c2428		MOVQ R11, 0x28(SP)					
  p384_fiat64.go:211	0x55b64d		4c8b642460		MOVQ 0x60(SP), R12					
  p384_fiat64.go:211	0x55b652		4c8b6c2478		MOVQ 0x78(SP), R13					
  p384_fiat64.go:211	0x55b657		4d11ec			ADCQ R13, R12						
  p384_fiat64.go:211	0x55b65a		4c89642420		MOVQ R12, 0x20(SP)					
  p384_fiat64.go:214	0x55b65f		4c8b6c2470		MOVQ 0x70(SP), R13					
  p384_fiat64.go:214	0x55b664		4c8bbc2488000000	MOVQ 0x88(SP), R15					
  p384_fiat64.go:214	0x55b66c		4d11fd			ADCQ R15, R13						
  p384_fiat64.go:214	0x55b66f		4c896c2418		MOVQ R13, 0x18(SP)					
  p384_fiat64.go:217	0x55b674		4c8bbc2480000000	MOVQ 0x80(SP), R15					
  p384_fiat64.go:217	0x55b67c		4c8b8424a0000000	MOVQ 0xa0(SP), R8					
  p384_fiat64.go:217	0x55b684		4d11c7			ADCQ R8, R15						
  p384_fiat64.go:217	0x55b687		4c897c2410		MOVQ R15, 0x10(SP)					
  p384_fiat64.go:218	0x55b68c		4c8b842490000000	MOVQ 0x90(SP), R8					
  p384_fiat64.go:218	0x55b694		4983d000		ADCQ $0x0, R8						
  p384_fiat64.go:218	0x55b698		4c890424		MOVQ R8, 0(SP)						
  p384_fiat64.go:221	0x55b69c		4c8b442448		MOVQ 0x48(SP), R8					
  p384_fiat64.go:221	0x55b6a1		4901c8			ADDQ CX, R8						
  p384_fiat64.go:224	0x55b6a4		4911d1			ADCQ DX, R9						
  p384_fiat64.go:227	0x55b6a7		4911fb			ADCQ DI, R11						
  p384_fiat64.go:230	0x55b6aa		4911f4			ADCQ SI, R12						
  p384_fiat64.go:233	0x55b6ad		4d11d5			ADCQ R10, R13						
  p384_fiat64.go:236	0x55b6b0		4911df			ADCQ BX, R15						
  p384_fiat64.go:239	0x55b6b3		488b1c24		MOVQ 0(SP), BX						
  p384_fiat64.go:239	0x55b6b7		4c8b9424a8000000	MOVQ 0xa8(SP), R10					
  p384_fiat64.go:239	0x55b6bf		4c11d3			ADCQ R10, BX						
  p384_fiat64.go:239	0x55b6c2		48899c24a0050000	MOVQ BX, 0x5a0(SP)					
  p384_fiat64.go:241	0x55b6ca		4c89c0			MOVQ R8, AX						
  p384_fiat64.go:241	0x55b6cd		49ba0100000001000000	MOVQ $0x100000001, R10					
  p384_fiat64.go:241	0x55b6d7		49f7e2			MULQ R10						
  p384_fiat64.go:241	0x55b6da		4889842498050000	MOVQ AX, 0x598(SP)					
  p384_fiat64.go:244	0x55b6e2		48c7c2ffffffff		MOVQ $-0x1, DX						
  p384_fiat64.go:244	0x55b6e9		48f7e2			MULQ DX							
  p384_fiat64.go:247	0x55b6ec		4889942488050000	MOVQ DX, 0x588(SP)					
  p384_fiat64.go:250	0x55b6f4		4889842480050000	MOVQ AX, 0x580(SP)					
  p384_fiat64.go:253	0x55b6fc		488b842498050000	MOVQ 0x598(SP), AX					
  p384_fiat64.go:253	0x55b704		49c7c2feffffff		MOVQ $-0x2, R10						
  p384_fiat64.go:253	0x55b70b		49f7e2			MULQ R10						
  p384_fiat64.go:253	0x55b70e		4889942470050000	MOVQ DX, 0x570(SP)					
  p384_fiat64.go:253	0x55b716		4889842478050000	MOVQ AX, 0x578(SP)					
  p384_fiat64.go:256	0x55b71e		488b842498050000	MOVQ 0x598(SP), AX					
  p384_fiat64.go:256	0x55b726		49ba00000000ffffffff	MOVQ $0xffffffff00000000, R10				
  p384_fiat64.go:256	0x55b730		49f7e2			MULQ R10						
  p384_fiat64.go:256	0x55b733		4889942460050000	MOVQ DX, 0x560(SP)					
  p384_fiat64.go:256	0x55b73b		4889842468050000	MOVQ AX, 0x568(SP)					
  p384_fiat64.go:259	0x55b743		488b842498050000	MOVQ 0x598(SP), AX					
  p384_fiat64.go:259	0x55b74b		41baffffffff		MOVL $-0x1, R10						
  p384_fiat64.go:259	0x55b751		49f7e2			MULQ R10						
  p384_fiat64.go:262	0x55b754		4c8b942468050000	MOVQ 0x568(SP), R10					
  p384_fiat64.go:262	0x55b75c		4c01d2			ADDQ R10, DX						
  p384_fiat64.go:265	0x55b75f		4c8b942460050000	MOVQ 0x560(SP), R10					
  p384_fiat64.go:265	0x55b767		488bb42478050000	MOVQ 0x578(SP), SI					
  p384_fiat64.go:265	0x55b76f		4911f2			ADCQ SI, R10						
  p384_fiat64.go:268	0x55b772		488bb42470050000	MOVQ 0x570(SP), SI					
  p384_fiat64.go:268	0x55b77a		488bbc2480050000	MOVQ 0x580(SP), DI					
  p384_fiat64.go:268	0x55b782		4811fe			ADCQ DI, SI						
  p384_fiat64.go:271	0x55b785		488b8c2488050000	MOVQ 0x588(SP), CX					
  p384_fiat64.go:271	0x55b78d		4811cf			ADCQ CX, DI						
  p384_fiat64.go:274	0x55b790		488b9c2480050000	MOVQ 0x580(SP), BX					
  p384_fiat64.go:274	0x55b798		4811cb			ADCQ CX, BX						
  p384_fiat64.go:275	0x55b79b		4883d100		ADCQ $0x0, CX						
  p384_fiat64.go:277	0x55b79f		4901c0			ADDQ AX, R8						
  p384_fiat64.go:280	0x55b7a2		4c11ca			ADCQ R9, DX						
  p384_fiat64.go:280	0x55b7a5		4889942448050000	MOVQ DX, 0x548(SP)					
  p384_fiat64.go:283	0x55b7ad		4d11da			ADCQ R11, R10						
  p384_fiat64.go:283	0x55b7b0		4c89942440050000	MOVQ R10, 0x540(SP)					
  p384_fiat64.go:286	0x55b7b8		4c11e6			ADCQ R12, SI						
  p384_fiat64.go:286	0x55b7bb		4889b42438050000	MOVQ SI, 0x538(SP)					
  p384_fiat64.go:289	0x55b7c3		4c11ef			ADCQ R13, DI						
  p384_fiat64.go:289	0x55b7c6		4889bc2430050000	MOVQ DI, 0x530(SP)					
  p384_fiat64.go:292	0x55b7ce		4c11fb			ADCQ R15, BX						
  p384_fiat64.go:292	0x55b7d1		48899c2420050000	MOVQ BX, 0x520(SP)					
  p384_fiat64.go:295	0x55b7d9		4c8b8424a0050000	MOVQ 0x5a0(SP), R8					
  p384_fiat64.go:295	0x55b7e1		4c11c1			ADCQ R8, CX						
  p384_fiat64.go:295	0x55b7e4		48898c2418050000	MOVQ CX, 0x518(SP)					
  p384_fiat64.go:295	0x55b7ec		410f92c0		SETB R8							
  p384_fiat64.go:295	0x55b7f0		450fb6c0		MOVZX R8, R8						
  p384_fiat64.go:221	0x55b7f4		4c8b4c2448		MOVQ 0x48(SP), R9					
  p384_fiat64.go:221	0x55b7f9		4c8b9c24d8000000	MOVQ 0xd8(SP), R11					
  p384_fiat64.go:221	0x55b801		4d01d9			ADDQ R11, R9						
  p384_fiat64.go:224	0x55b804		4c8b4c2430		MOVQ 0x30(SP), R9					
  p384_fiat64.go:224	0x55b809		4c8b9c24d0000000	MOVQ 0xd0(SP), R11					
  p384_fiat64.go:224	0x55b811		4d11d9			ADCQ R11, R9						
  p384_fiat64.go:227	0x55b814		4c8b4c2428		MOVQ 0x28(SP), R9					
  p384_fiat64.go:227	0x55b819		4c8b9c24c8000000	MOVQ 0xc8(SP), R11					
  p384_fiat64.go:227	0x55b821		4d11d9			ADCQ R11, R9						
  p384_fiat64.go:230	0x55b824		4c8b4c2420		MOVQ 0x20(SP), R9					
  p384_fiat64.go:230	0x55b829		4c8b9c24c0000000	MOVQ 0xc0(SP), R11					
  p384_fiat64.go:230	0x55b831		4d11d9			ADCQ R11, R9						
  p384_fiat64.go:233	0x55b834		4c8b4c2418		MOVQ 0x18(SP), R9					
  p384_fiat64.go:233	0x55b839		4c8b9c24b8000000	MOVQ 0xb8(SP), R11					
  p384_fiat64.go:233	0x55b841		4d11d9			ADCQ R11, R9						
  p384_fiat64.go:236	0x55b844		4c8b4c2410		MOVQ 0x10(SP), R9					
  p384_fiat64.go:236	0x55b849		4c8b9c24b0000000	MOVQ 0xb0(SP), R11					
  p384_fiat64.go:236	0x55b851		4d11d9			ADCQ R11, R9						
  p384_fiat64.go:239	0x55b854		4c8b0c24		MOVQ 0(SP), R9						
  p384_fiat64.go:239	0x55b858		4c8b9c24a8000000	MOVQ 0xa8(SP), R11					
  p384_fiat64.go:239	0x55b860		4d11d9			ADCQ R11, R9						
  p384_fiat64.go:296	0x55b863		4983d000		ADCQ $0x0, R8						
  p384_fiat64.go:296	0x55b867		4c89842410050000	MOVQ R8, 0x510(SP)					
  p384_fiat64.go:317	0x55b86f		4c8b8c24b0040000	MOVQ 0x4b0(SP), R9					
  p384_fiat64.go:317	0x55b877		4c8b9c24c8040000	MOVQ 0x4c8(SP), R11					
  p384_fiat64.go:317	0x55b87f		4d01d9			ADDQ R11, R9						
  p384_fiat64.go:317	0x55b882		4c898c24a8040000	MOVQ R9, 0x4a8(SP)					
  p384_fiat64.go:320	0x55b88a		4c8b9c24c0040000	MOVQ 0x4c0(SP), R11					
  p384_fiat64.go:320	0x55b892		4c8ba424d8040000	MOVQ 0x4d8(SP), R12					
  p384_fiat64.go:320	0x55b89a		4d11e3			ADCQ R12, R11						
  p384_fiat64.go:320	0x55b89d		4c899c24a0040000	MOVQ R11, 0x4a0(SP)					
  p384_fiat64.go:323	0x55b8a5		4c8ba424d0040000	MOVQ 0x4d0(SP), R12					
  p384_fiat64.go:323	0x55b8ad		4c8bac24e8040000	MOVQ 0x4e8(SP), R13					
  p384_fiat64.go:323	0x55b8b5		4d11ec			ADCQ R13, R12						
  p384_fiat64.go:323	0x55b8b8		4c89a42498040000	MOVQ R12, 0x498(SP)					
  p384_fiat64.go:326	0x55b8c0		4c8bac24e0040000	MOVQ 0x4e0(SP), R13					
  p384_fiat64.go:326	0x55b8c8		4c8bbc24f8040000	MOVQ 0x4f8(SP), R15					
  p384_fiat64.go:326	0x55b8d0		4d11fd			ADCQ R15, R13						
  p384_fiat64.go:326	0x55b8d3		4c89ac2490040000	MOVQ R13, 0x490(SP)					
  p384_fiat64.go:329	0x55b8db		4c8bbc24f0040000	MOVQ 0x4f0(SP), R15					
  p384_fiat64.go:296	0x55b8e3		4c89c0			MOVQ R8, AX						
  p384_fiat64.go:329	0x55b8e6		4c8b842408050000	MOVQ 0x508(SP), R8					
  p384_fiat64.go:329	0x55b8ee		4d11c7			ADCQ R8, R15						
  p384_fiat64.go:329	0x55b8f1		4c89bc2488040000	MOVQ R15, 0x488(SP)					
  p384_fiat64.go:330	0x55b8f9		4c8b842400050000	MOVQ 0x500(SP), R8					
  p384_fiat64.go:330	0x55b901		4983d000		ADCQ $0x0, R8						
  p384_fiat64.go:330	0x55b905		4c89842480040000	MOVQ R8, 0x480(SP)					
  p384_fiat64.go:333	0x55b90d		4c8b8424b8040000	MOVQ 0x4b8(SP), R8					
  p384_fiat64.go:333	0x55b915		4901d0			ADDQ DX, R8						
  p384_fiat64.go:336	0x55b918		4d11d1			ADCQ R10, R9						
  p384_fiat64.go:339	0x55b91b		4911f3			ADCQ SI, R11						
  p384_fiat64.go:342	0x55b91e		4911fc			ADCQ DI, R12						
  p384_fiat64.go:345	0x55b921		4911dd			ADCQ BX, R13						
  p384_fiat64.go:348	0x55b924		4911cf			ADCQ CX, R15						
  p384_fiat64.go:351	0x55b927		488b8c2480040000	MOVQ 0x480(SP), CX					
  p384_fiat64.go:351	0x55b92f		4811c1			ADCQ AX, CX						
  p384_fiat64.go:351	0x55b932		48898c2468040000	MOVQ CX, 0x468(SP)					
  p384_fiat64.go:353	0x55b93a		4c89c0			MOVQ R8, AX						
  p384_fiat64.go:353	0x55b93d		48bb0100000001000000	MOVQ $0x100000001, BX					
  p384_fiat64.go:353	0x55b947		48f7e3			MULQ BX							
  p384_fiat64.go:353	0x55b94a		4889842460040000	MOVQ AX, 0x460(SP)					
  p384_fiat64.go:356	0x55b952		48c7c2ffffffff		MOVQ $-0x1, DX						
  p384_fiat64.go:356	0x55b959		48f7e2			MULQ DX							
  p384_fiat64.go:362	0x55b95c		4889842458040000	MOVQ AX, 0x458(SP)					
  p384_fiat64.go:362	0x55b964		4889942450040000	MOVQ DX, 0x450(SP)					
  p384_fiat64.go:365	0x55b96c		488b842460040000	MOVQ 0x460(SP), AX					
  p384_fiat64.go:365	0x55b974		48c7c3feffffff		MOVQ $-0x2, BX						
  p384_fiat64.go:365	0x55b97b		48f7e3			MULQ BX							
  p384_fiat64.go:365	0x55b97e		4889942440040000	MOVQ DX, 0x440(SP)					
  p384_fiat64.go:365	0x55b986		4889842448040000	MOVQ AX, 0x448(SP)					
  p384_fiat64.go:368	0x55b98e		488b842460040000	MOVQ 0x460(SP), AX					
  p384_fiat64.go:368	0x55b996		48bb00000000ffffffff	MOVQ $0xffffffff00000000, BX				
  p384_fiat64.go:368	0x55b9a0		48f7e3			MULQ BX							
  p384_fiat64.go:368	0x55b9a3		4889942430040000	MOVQ DX, 0x430(SP)					
  p384_fiat64.go:368	0x55b9ab		4889842438040000	MOVQ AX, 0x438(SP)					
  p384_fiat64.go:371	0x55b9b3		488b842460040000	MOVQ 0x460(SP), AX					
  p384_fiat64.go:371	0x55b9bb		bbffffffff		MOVL $-0x1, BX						
  p384_fiat64.go:371	0x55b9c0		48f7e3			MULQ BX							
  p384_fiat64.go:374	0x55b9c3		488b9c2438040000	MOVQ 0x438(SP), BX					
  p384_fiat64.go:374	0x55b9cb		4801da			ADDQ BX, DX						
  p384_fiat64.go:377	0x55b9ce		488b9c2430040000	MOVQ 0x430(SP), BX					
  p384_fiat64.go:377	0x55b9d6		488bbc2448040000	MOVQ 0x448(SP), DI					
  p384_fiat64.go:377	0x55b9de		4811fb			ADCQ DI, BX						
  p384_fiat64.go:380	0x55b9e1		488bbc2440040000	MOVQ 0x440(SP), DI					
  p384_fiat64.go:380	0x55b9e9		488bb42458040000	MOVQ 0x458(SP), SI					
  p384_fiat64.go:380	0x55b9f1		4811f7			ADCQ SI, DI						
  p384_fiat64.go:383	0x55b9f4		4c8b942450040000	MOVQ 0x450(SP), R10					
  p384_fiat64.go:383	0x55b9fc		4c11d6			ADCQ R10, SI						
  p384_fiat64.go:386	0x55b9ff		488b8c2458040000	MOVQ 0x458(SP), CX					
  p384_fiat64.go:386	0x55ba07		4c11d1			ADCQ R10, CX						
  p384_fiat64.go:387	0x55ba0a		4983d200		ADCQ $0x0, R10						
  p384_fiat64.go:389	0x55ba0e		4901c0			ADDQ AX, R8						
  p384_fiat64.go:392	0x55ba11		4c11ca			ADCQ R9, DX						
  p384_fiat64.go:392	0x55ba14		4889942428040000	MOVQ DX, 0x428(SP)					
  p384_fiat64.go:395	0x55ba1c		4c11db			ADCQ R11, BX						
  p384_fiat64.go:395	0x55ba1f		48899c2420040000	MOVQ BX, 0x420(SP)					
  p384_fiat64.go:398	0x55ba27		4c11e7			ADCQ R12, DI						
  p384_fiat64.go:398	0x55ba2a		4889bc2418040000	MOVQ DI, 0x418(SP)					
  p384_fiat64.go:401	0x55ba32		4c11ee			ADCQ R13, SI						
  p384_fiat64.go:401	0x55ba35		4889b42410040000	MOVQ SI, 0x410(SP)					
  p384_fiat64.go:404	0x55ba3d		4c11f9			ADCQ R15, CX						
  p384_fiat64.go:404	0x55ba40		48898c2408040000	MOVQ CX, 0x408(SP)					
  p384_fiat64.go:407	0x55ba48		4c8b842468040000	MOVQ 0x468(SP), R8					
  p384_fiat64.go:407	0x55ba50		4d11c2			ADCQ R8, R10						
  p384_fiat64.go:407	0x55ba53		4c89942400040000	MOVQ R10, 0x400(SP)					
  p384_fiat64.go:407	0x55ba5b		410f92c0		SETB R8							
  p384_fiat64.go:407	0x55ba5f		450fb6c0		MOVZX R8, R8						
  p384_fiat64.go:333	0x55ba63		4c8b8c24b8040000	MOVQ 0x4b8(SP), R9					
  p384_fiat64.go:333	0x55ba6b		4c8b9c2448050000	MOVQ 0x548(SP), R11					
  p384_fiat64.go:333	0x55ba73		4d01d9			ADDQ R11, R9						
  p384_fiat64.go:336	0x55ba76		4c8b8c24a8040000	MOVQ 0x4a8(SP), R9					
  p384_fiat64.go:336	0x55ba7e		4c8b9c2440050000	MOVQ 0x540(SP), R11					
  p384_fiat64.go:336	0x55ba86		4d11d9			ADCQ R11, R9						
  p384_fiat64.go:339	0x55ba89		4c8b8c24a0040000	MOVQ 0x4a0(SP), R9					
  p384_fiat64.go:339	0x55ba91		4c8b9c2438050000	MOVQ 0x538(SP), R11					
  p384_fiat64.go:339	0x55ba99		4d11d9			ADCQ R11, R9						
  p384_fiat64.go:342	0x55ba9c		4c8b8c2498040000	MOVQ 0x498(SP), R9					
  p384_fiat64.go:342	0x55baa4		4c8b9c2430050000	MOVQ 0x530(SP), R11					
  p384_fiat64.go:342	0x55baac		4d11d9			ADCQ R11, R9						
  p384_fiat64.go:345	0x55baaf		4c8b8c2490040000	MOVQ 0x490(SP), R9					
  p384_fiat64.go:345	0x55bab7		4c8b9c2420050000	MOVQ 0x520(SP), R11					
  p384_fiat64.go:345	0x55babf		4d11d9			ADCQ R11, R9						
  p384_fiat64.go:348	0x55bac2		4c8b8c2488040000	MOVQ 0x488(SP), R9					
  p384_fiat64.go:348	0x55baca		4c8b9c2418050000	MOVQ 0x518(SP), R11					
  p384_fiat64.go:348	0x55bad2		4d11d9			ADCQ R11, R9						
  p384_fiat64.go:351	0x55bad5		4c8b8c2480040000	MOVQ 0x480(SP), R9					
  p384_fiat64.go:351	0x55badd		4c8b9c2410050000	MOVQ 0x510(SP), R11					
  p384_fiat64.go:351	0x55bae5		4d11d9			ADCQ R11, R9						
  p384_fiat64.go:408	0x55bae8		4983d000		ADCQ $0x0, R8						
  p384_fiat64.go:408	0x55baec		4c898424f8030000	MOVQ R8, 0x3f8(SP)					
  p384_fiat64.go:429	0x55baf4		4c8b8c2498030000	MOVQ 0x398(SP), R9					
  p384_fiat64.go:429	0x55bafc		4c8b9c24b0030000	MOVQ 0x3b0(SP), R11					
  p384_fiat64.go:429	0x55bb04		4d01d9			ADDQ R11, R9						
  p384_fiat64.go:429	0x55bb07		4c898c2490030000	MOVQ R9, 0x390(SP)					
  p384_fiat64.go:432	0x55bb0f		4c8b9c24a8030000	MOVQ 0x3a8(SP), R11					
  p384_fiat64.go:432	0x55bb17		4c8ba424c0030000	MOVQ 0x3c0(SP), R12					
  p384_fiat64.go:432	0x55bb1f		4d11e3			ADCQ R12, R11						
  p384_fiat64.go:432	0x55bb22		4c899c2488030000	MOVQ R11, 0x388(SP)					
  p384_fiat64.go:435	0x55bb2a		4c8ba424b8030000	MOVQ 0x3b8(SP), R12					
  p384_fiat64.go:435	0x55bb32		4c8bac24d0030000	MOVQ 0x3d0(SP), R13					
  p384_fiat64.go:435	0x55bb3a		4d11ec			ADCQ R13, R12						
  p384_fiat64.go:435	0x55bb3d		4c89a42480030000	MOVQ R12, 0x380(SP)					
  p384_fiat64.go:438	0x55bb45		4c8bac24c8030000	MOVQ 0x3c8(SP), R13					
  p384_fiat64.go:438	0x55bb4d		4c8bbc24e0030000	MOVQ 0x3e0(SP), R15					
  p384_fiat64.go:438	0x55bb55		4d11fd			ADCQ R15, R13						
  p384_fiat64.go:438	0x55bb58		4c89ac2478030000	MOVQ R13, 0x378(SP)					
  p384_fiat64.go:441	0x55bb60		4c8bbc24d8030000	MOVQ 0x3d8(SP), R15					
  p384_fiat64.go:408	0x55bb68		4c89c0			MOVQ R8, AX						
  p384_fiat64.go:441	0x55bb6b		4c8b8424f0030000	MOVQ 0x3f0(SP), R8					
  p384_fiat64.go:441	0x55bb73		4d11c7			ADCQ R8, R15						
  p384_fiat64.go:441	0x55bb76		4c89bc2470030000	MOVQ R15, 0x370(SP)					
  p384_fiat64.go:442	0x55bb7e		4c8b8424e8030000	MOVQ 0x3e8(SP), R8					
  p384_fiat64.go:442	0x55bb86		4983d000		ADCQ $0x0, R8						
  p384_fiat64.go:442	0x55bb8a		4c89842468030000	MOVQ R8, 0x368(SP)					
  p384_fiat64.go:445	0x55bb92		4c8b8424a0030000	MOVQ 0x3a0(SP), R8					
  p384_fiat64.go:445	0x55bb9a		4901d0			ADDQ DX, R8						
  p384_fiat64.go:448	0x55bb9d		4911d9			ADCQ BX, R9						
  p384_fiat64.go:451	0x55bba0		4911fb			ADCQ DI, R11						
  p384_fiat64.go:454	0x55bba3		4911f4			ADCQ SI, R12						
  p384_fiat64.go:457	0x55bba6		4911cd			ADCQ CX, R13						
  p384_fiat64.go:460	0x55bba9		4d11d7			ADCQ R10, R15						
  p384_fiat64.go:463	0x55bbac		4c8b942468030000	MOVQ 0x368(SP), R10					
  p384_fiat64.go:463	0x55bbb4		4911c2			ADCQ AX, R10						
  p384_fiat64.go:463	0x55bbb7		4c89942460030000	MOVQ R10, 0x360(SP)					
  p384_fiat64.go:465	0x55bbbf		4c89c0			MOVQ R8, AX						
  p384_fiat64.go:465	0x55bbc2		48b90100000001000000	MOVQ $0x100000001, CX					
  p384_fiat64.go:465	0x55bbcc		48f7e1			MULQ CX							
  p384_fiat64.go:465	0x55bbcf		4889842458030000	MOVQ AX, 0x358(SP)					
  p384_fiat64.go:474	0x55bbd7		48c7c2ffffffff		MOVQ $-0x1, DX						
  p384_fiat64.go:474	0x55bbde		48f7e2			MULQ DX							
  p384_fiat64.go:471	0x55bbe1		4889842450030000	MOVQ AX, 0x350(SP)					
  p384_fiat64.go:474	0x55bbe9		4889942448030000	MOVQ DX, 0x348(SP)					
  p384_fiat64.go:477	0x55bbf1		488b842458030000	MOVQ 0x358(SP), AX					
  p384_fiat64.go:477	0x55bbf9		48c7c1feffffff		MOVQ $-0x2, CX						
  p384_fiat64.go:477	0x55bc00		48f7e1			MULQ CX							
  p384_fiat64.go:477	0x55bc03		4889942438030000	MOVQ DX, 0x338(SP)					
  p384_fiat64.go:477	0x55bc0b		4889842440030000	MOVQ AX, 0x340(SP)					
  p384_fiat64.go:480	0x55bc13		488b842458030000	MOVQ 0x358(SP), AX					
  p384_fiat64.go:480	0x55bc1b		48b900000000ffffffff	MOVQ $0xffffffff00000000, CX				
  p384_fiat64.go:480	0x55bc25		48f7e1			MULQ CX							
  p384_fiat64.go:480	0x55bc28		4889942428030000	MOVQ DX, 0x328(SP)					
  p384_fiat64.go:480	0x55bc30		4889842430030000	MOVQ AX, 0x330(SP)					
  p384_fiat64.go:483	0x55bc38		488b842458030000	MOVQ 0x358(SP), AX					
  p384_fiat64.go:483	0x55bc40		b9ffffffff		MOVL $-0x1, CX						
  p384_fiat64.go:483	0x55bc45		48f7e1			MULQ CX							
  p384_fiat64.go:486	0x55bc48		488b8c2430030000	MOVQ 0x330(SP), CX					
  p384_fiat64.go:486	0x55bc50		4801ca			ADDQ CX, DX						
  p384_fiat64.go:489	0x55bc53		488b8c2428030000	MOVQ 0x328(SP), CX					
  p384_fiat64.go:489	0x55bc5b		488bb42440030000	MOVQ 0x340(SP), SI					
  p384_fiat64.go:489	0x55bc63		4811f1			ADCQ SI, CX						
  p384_fiat64.go:492	0x55bc66		488bb42438030000	MOVQ 0x338(SP), SI					
  p384_fiat64.go:492	0x55bc6e		488bbc2450030000	MOVQ 0x350(SP), DI					
  p384_fiat64.go:492	0x55bc76		4811fe			ADCQ DI, SI						
  p384_fiat64.go:495	0x55bc79		488b9c2448030000	MOVQ 0x348(SP), BX					
  p384_fiat64.go:495	0x55bc81		4811fb			ADCQ DI, BX						
  p384_fiat64.go:498	0x55bc84		4c8b942448030000	MOVQ 0x348(SP), R10					
  p384_fiat64.go:498	0x55bc8c		4c11d7			ADCQ R10, DI						
  p384_fiat64.go:499	0x55bc8f		4983d200		ADCQ $0x0, R10						
  p384_fiat64.go:501	0x55bc93		4901c0			ADDQ AX, R8						
  p384_fiat64.go:504	0x55bc96		4c11ca			ADCQ R9, DX						
  p384_fiat64.go:504	0x55bc99		4889942420030000	MOVQ DX, 0x320(SP)					
  p384_fiat64.go:507	0x55bca1		4c11d9			ADCQ R11, CX						
  p384_fiat64.go:507	0x55bca4		48898c2418030000	MOVQ CX, 0x318(SP)					
  p384_fiat64.go:510	0x55bcac		4c11e6			ADCQ R12, SI						
  p384_fiat64.go:510	0x55bcaf		4889b42408030000	MOVQ SI, 0x308(SP)					
  p384_fiat64.go:513	0x55bcb7		4c11eb			ADCQ R13, BX						
  p384_fiat64.go:513	0x55bcba		48899c2400030000	MOVQ BX, 0x300(SP)					
  p384_fiat64.go:516	0x55bcc2		4c11ff			ADCQ R15, DI						
  p384_fiat64.go:516	0x55bcc5		4889bc24f8020000	MOVQ DI, 0x2f8(SP)					
  p384_fiat64.go:519	0x55bccd		4c8b842460030000	MOVQ 0x360(SP), R8					
  p384_fiat64.go:519	0x55bcd5		4d11c2			ADCQ R8, R10						
  p384_fiat64.go:519	0x55bcd8		4c899424f0020000	MOVQ R10, 0x2f0(SP)					
  p384_fiat64.go:519	0x55bce0		410f92c0		SETB R8							
  p384_fiat64.go:519	0x55bce4		450fb6c0		MOVZX R8, R8						
  p384_fiat64.go:445	0x55bce8		4c8b8c24a0030000	MOVQ 0x3a0(SP), R9					
  p384_fiat64.go:445	0x55bcf0		4c8b9c2428040000	MOVQ 0x428(SP), R11					
  p384_fiat64.go:445	0x55bcf8		4d01d9			ADDQ R11, R9						
  p384_fiat64.go:448	0x55bcfb		4c8b8c2490030000	MOVQ 0x390(SP), R9					
  p384_fiat64.go:448	0x55bd03		4c8b9c2420040000	MOVQ 0x420(SP), R11					
  p384_fiat64.go:448	0x55bd0b		4d11d9			ADCQ R11, R9						
  p384_fiat64.go:451	0x55bd0e		4c8b8c2488030000	MOVQ 0x388(SP), R9					
  p384_fiat64.go:451	0x55bd16		4c8b9c2418040000	MOVQ 0x418(SP), R11					
  p384_fiat64.go:451	0x55bd1e		4d11d9			ADCQ R11, R9						
  p384_fiat64.go:454	0x55bd21		4c8b8c2480030000	MOVQ 0x380(SP), R9					
  p384_fiat64.go:454	0x55bd29		4c8b9c2410040000	MOVQ 0x410(SP), R11					
  p384_fiat64.go:454	0x55bd31		4d11d9			ADCQ R11, R9						
  p384_fiat64.go:457	0x55bd34		4c8b8c2478030000	MOVQ 0x378(SP), R9					
  p384_fiat64.go:457	0x55bd3c		4c8b9c2408040000	MOVQ 0x408(SP), R11					
  p384_fiat64.go:457	0x55bd44		4d11d9			ADCQ R11, R9						
  p384_fiat64.go:460	0x55bd47		4c8b8c2470030000	MOVQ 0x370(SP), R9					
  p384_fiat64.go:460	0x55bd4f		4c8b9c2400040000	MOVQ 0x400(SP), R11					
  p384_fiat64.go:460	0x55bd57		4d11d9			ADCQ R11, R9						
  p384_fiat64.go:463	0x55bd5a		4c8b8c2468030000	MOVQ 0x368(SP), R9					
  p384_fiat64.go:463	0x55bd62		4c8b9c24f8030000	MOVQ 0x3f8(SP), R11					
  p384_fiat64.go:463	0x55bd6a		4d11d9			ADCQ R11, R9						
  p384_fiat64.go:520	0x55bd6d		4983d000		ADCQ $0x0, R8						
  p384_fiat64.go:520	0x55bd71		4c898424e8020000	MOVQ R8, 0x2e8(SP)					
  p384_fiat64.go:541	0x55bd79		4c8b8c2480020000	MOVQ 0x280(SP), R9					
  p384_fiat64.go:541	0x55bd81		4c8b9c2498020000	MOVQ 0x298(SP), R11					
  p384_fiat64.go:541	0x55bd89		4d01d9			ADDQ R11, R9						
  p384_fiat64.go:541	0x55bd8c		4c898c2478020000	MOVQ R9, 0x278(SP)					
  p384_fiat64.go:544	0x55bd94		4c8b9c2490020000	MOVQ 0x290(SP), R11					
  p384_fiat64.go:544	0x55bd9c		4c8ba424a8020000	MOVQ 0x2a8(SP), R12					
  p384_fiat64.go:544	0x55bda4		4d11e3			ADCQ R12, R11						
  p384_fiat64.go:544	0x55bda7		4c899c2470020000	MOVQ R11, 0x270(SP)					
  p384_fiat64.go:547	0x55bdaf		4c8ba424a0020000	MOVQ 0x2a0(SP), R12					
  p384_fiat64.go:547	0x55bdb7		4c8bac24b8020000	MOVQ 0x2b8(SP), R13					
  p384_fiat64.go:547	0x55bdbf		4d11ec			ADCQ R13, R12						
  p384_fiat64.go:547	0x55bdc2		4c89a42468020000	MOVQ R12, 0x268(SP)					
  p384_fiat64.go:550	0x55bdca		4c8bac24b0020000	MOVQ 0x2b0(SP), R13					
  p384_fiat64.go:550	0x55bdd2		4c8bbc24c8020000	MOVQ 0x2c8(SP), R15					
  p384_fiat64.go:550	0x55bdda		4d11fd			ADCQ R15, R13						
  p384_fiat64.go:550	0x55bddd		4c89ac2460020000	MOVQ R13, 0x260(SP)					
  p384_fiat64.go:553	0x55bde5		4c8bbc24c0020000	MOVQ 0x2c0(SP), R15					
  p384_fiat64.go:520	0x55bded		4c89c0			MOVQ R8, AX						
  p384_fiat64.go:553	0x55bdf0		4c8b8424d8020000	MOVQ 0x2d8(SP), R8					
  p384_fiat64.go:553	0x55bdf8		4d11c7			ADCQ R8, R15						
  p384_fiat64.go:553	0x55bdfb		4c89bc2458020000	MOVQ R15, 0x258(SP)					
  p384_fiat64.go:554	0x55be03		4c8b8424d0020000	MOVQ 0x2d0(SP), R8					
  p384_fiat64.go:554	0x55be0b		4983d000		ADCQ $0x0, R8						
  p384_fiat64.go:554	0x55be0f		4c89842450020000	MOVQ R8, 0x250(SP)					
  p384_fiat64.go:557	0x55be17		4c8b842488020000	MOVQ 0x288(SP), R8					
  p384_fiat64.go:557	0x55be1f		4901d0			ADDQ DX, R8						
  p384_fiat64.go:560	0x55be22		4911c9			ADCQ CX, R9						
  p384_fiat64.go:563	0x55be25		4911f3			ADCQ SI, R11						
  p384_fiat64.go:566	0x55be28		4911dc			ADCQ BX, R12						
  p384_fiat64.go:569	0x55be2b		4911fd			ADCQ DI, R13						
  p384_fiat64.go:572	0x55be2e		4d11d7			ADCQ R10, R15						
  p384_fiat64.go:575	0x55be31		4c8b942450020000	MOVQ 0x250(SP), R10					
  p384_fiat64.go:575	0x55be39		4911c2			ADCQ AX, R10						
  p384_fiat64.go:575	0x55be3c		4c89942448020000	MOVQ R10, 0x248(SP)					
  p384_fiat64.go:577	0x55be44		4c89c0			MOVQ R8, AX						
  p384_fiat64.go:577	0x55be47		48bf0100000001000000	MOVQ $0x100000001, DI					
  p384_fiat64.go:577	0x55be51		48f7e7			MULQ DI							
  p384_fiat64.go:577	0x55be54		4889842440020000	MOVQ AX, 0x240(SP)					
  p384_fiat64.go:586	0x55be5c		48c7c2ffffffff		MOVQ $-0x1, DX						
  p384_fiat64.go:586	0x55be63		48f7e2			MULQ DX							
  p384_fiat64.go:580	0x55be66		4889842438020000	MOVQ AX, 0x238(SP)					
  p384_fiat64.go:580	0x55be6e		4889942430020000	MOVQ DX, 0x230(SP)					
  p384_fiat64.go:589	0x55be76		488b842440020000	MOVQ 0x240(SP), AX					
  p384_fiat64.go:589	0x55be7e		48c7c7feffffff		MOVQ $-0x2, DI						
  p384_fiat64.go:589	0x55be85		48f7e7			MULQ DI							
  p384_fiat64.go:589	0x55be88		4889942420020000	MOVQ DX, 0x220(SP)					
  p384_fiat64.go:589	0x55be90		4889842428020000	MOVQ AX, 0x228(SP)					
  p384_fiat64.go:592	0x55be98		488b842440020000	MOVQ 0x240(SP), AX					
  p384_fiat64.go:592	0x55bea0		48bf00000000ffffffff	MOVQ $0xffffffff00000000, DI				
  p384_fiat64.go:592	0x55beaa		48f7e7			MULQ DI							
  p384_fiat64.go:592	0x55bead		4889942410020000	MOVQ DX, 0x210(SP)					
  p384_fiat64.go:592	0x55beb5		4889842418020000	MOVQ AX, 0x218(SP)					
  p384_fiat64.go:595	0x55bebd		488b842440020000	MOVQ 0x240(SP), AX					
  p384_fiat64.go:595	0x55bec5		bfffffffff		MOVL $-0x1, DI						
  p384_fiat64.go:595	0x55beca		48f7e7			MULQ DI							
  p384_fiat64.go:598	0x55becd		488bbc2418020000	MOVQ 0x218(SP), DI					
  p384_fiat64.go:598	0x55bed5		4801fa			ADDQ DI, DX						
  p384_fiat64.go:601	0x55bed8		488bbc2410020000	MOVQ 0x210(SP), DI					
  p384_fiat64.go:601	0x55bee0		488b9c2428020000	MOVQ 0x228(SP), BX					
  p384_fiat64.go:601	0x55bee8		4811df			ADCQ BX, DI						
  p384_fiat64.go:604	0x55beeb		488b9c2420020000	MOVQ 0x220(SP), BX					
  p384_fiat64.go:604	0x55bef3		488bb42438020000	MOVQ 0x238(SP), SI					
  p384_fiat64.go:604	0x55befb		4811f3			ADCQ SI, BX						
  p384_fiat64.go:607	0x55befe		488b8c2430020000	MOVQ 0x230(SP), CX					
  p384_fiat64.go:607	0x55bf06		4811ce			ADCQ CX, SI						
  p384_fiat64.go:610	0x55bf09		4c8b942438020000	MOVQ 0x238(SP), R10					
  p384_fiat64.go:610	0x55bf11		4911ca			ADCQ CX, R10						
  p384_fiat64.go:611	0x55bf14		4883d100		ADCQ $0x0, CX						
  p384_fiat64.go:613	0x55bf18		4901c0			ADDQ AX, R8						
  p384_fiat64.go:616	0x55bf1b		4c11ca			ADCQ R9, DX						
  p384_fiat64.go:616	0x55bf1e		48899424f8010000	MOVQ DX, 0x1f8(SP)					
  p384_fiat64.go:619	0x55bf26		4c11df			ADCQ R11, DI						
  p384_fiat64.go:619	0x55bf29		4889bc24f0010000	MOVQ DI, 0x1f0(SP)					
  p384_fiat64.go:622	0x55bf31		4c11e3			ADCQ R12, BX						
  p384_fiat64.go:622	0x55bf34		48899c24e8010000	MOVQ BX, 0x1e8(SP)					
  p384_fiat64.go:625	0x55bf3c		4c11ee			ADCQ R13, SI						
  p384_fiat64.go:625	0x55bf3f		4889b424e0010000	MOVQ SI, 0x1e0(SP)					
  p384_fiat64.go:628	0x55bf47		4d11fa			ADCQ R15, R10						
  p384_fiat64.go:628	0x55bf4a		4c899424d8010000	MOVQ R10, 0x1d8(SP)					
  p384_fiat64.go:631	0x55bf52		4c8b842448020000	MOVQ 0x248(SP), R8					
  p384_fiat64.go:631	0x55bf5a		4c11c1			ADCQ R8, CX						
  p384_fiat64.go:631	0x55bf5d		48898c24d0010000	MOVQ CX, 0x1d0(SP)					
  p384_fiat64.go:631	0x55bf65		410f92c0		SETB R8							
  p384_fiat64.go:631	0x55bf69		450fb6c0		MOVZX R8, R8						
  p384_fiat64.go:557	0x55bf6d		4c8b8c2488020000	MOVQ 0x288(SP), R9					
  p384_fiat64.go:557	0x55bf75		4c8b9c2420030000	MOVQ 0x320(SP), R11					
  p384_fiat64.go:557	0x55bf7d		4d01d9			ADDQ R11, R9						
  p384_fiat64.go:560	0x55bf80		4c8b8c2478020000	MOVQ 0x278(SP), R9					
  p384_fiat64.go:560	0x55bf88		4c8b9c2418030000	MOVQ 0x318(SP), R11					
  p384_fiat64.go:560	0x55bf90		4d11d9			ADCQ R11, R9						
  p384_fiat64.go:563	0x55bf93		4c8b8c2470020000	MOVQ 0x270(SP), R9					
  p384_fiat64.go:563	0x55bf9b		4c8b9c2408030000	MOVQ 0x308(SP), R11					
  p384_fiat64.go:563	0x55bfa3		4d11d9			ADCQ R11, R9						
  p384_fiat64.go:566	0x55bfa6		4c8b8c2468020000	MOVQ 0x268(SP), R9					
  p384_fiat64.go:566	0x55bfae		4c8b9c2400030000	MOVQ 0x300(SP), R11					
  p384_fiat64.go:566	0x55bfb6		4d11d9			ADCQ R11, R9						
  p384_fiat64.go:569	0x55bfb9		4c8b8c2460020000	MOVQ 0x260(SP), R9					
  p384_fiat64.go:569	0x55bfc1		4c8b9c24f8020000	MOVQ 0x2f8(SP), R11					
  p384_fiat64.go:569	0x55bfc9		4d11d9			ADCQ R11, R9						
  p384_fiat64.go:572	0x55bfcc		4c8b8c2458020000	MOVQ 0x258(SP), R9					
  p384_fiat64.go:572	0x55bfd4		4c8b9c24f0020000	MOVQ 0x2f0(SP), R11					
  p384_fiat64.go:572	0x55bfdc		4d11d9			ADCQ R11, R9						
  p384_fiat64.go:575	0x55bfdf		4c8b8c2450020000	MOVQ 0x250(SP), R9					
  p384_fiat64.go:575	0x55bfe7		4c8b9c24e8020000	MOVQ 0x2e8(SP), R11					
  p384_fiat64.go:575	0x55bfef		4d11d9			ADCQ R11, R9						
  p384_fiat64.go:632	0x55bff2		4983d000		ADCQ $0x0, R8						
  p384_fiat64.go:632	0x55bff6		4c898424c8010000	MOVQ R8, 0x1c8(SP)					
  p384_fiat64.go:653	0x55bffe		4c8b8c2460010000	MOVQ 0x160(SP), R9					
  p384_fiat64.go:653	0x55c006		4c8b9c2478010000	MOVQ 0x178(SP), R11					
  p384_fiat64.go:653	0x55c00e		4d01d9			ADDQ R11, R9						
  p384_fiat64.go:653	0x55c011		4c898c2458010000	MOVQ R9, 0x158(SP)					
  p384_fiat64.go:656	0x55c019		4c8b9c2470010000	MOVQ 0x170(SP), R11					
  p384_fiat64.go:656	0x55c021		4c8ba42488010000	MOVQ 0x188(SP), R12					
  p384_fiat64.go:656	0x55c029		4d11e3			ADCQ R12, R11						
  p384_fiat64.go:656	0x55c02c		4c899c2448010000	MOVQ R11, 0x148(SP)					
  p384_fiat64.go:659	0x55c034		4c8ba42480010000	MOVQ 0x180(SP), R12					
  p384_fiat64.go:659	0x55c03c		4c8bac2498010000	MOVQ 0x198(SP), R13					
  p384_fiat64.go:659	0x55c044		4d11ec			ADCQ R13, R12						
  p384_fiat64.go:659	0x55c047		4c89a42440010000	MOVQ R12, 0x140(SP)					
  p384_fiat64.go:662	0x55c04f		4c8bac2490010000	MOVQ 0x190(SP), R13					
  p384_fiat64.go:662	0x55c057		4c8bbc24b0010000	MOVQ 0x1b0(SP), R15					
  p384_fiat64.go:662	0x55c05f		4d11fd			ADCQ R15, R13						
  p384_fiat64.go:662	0x55c062		4c89ac2438010000	MOVQ R13, 0x138(SP)					
  p384_fiat64.go:665	0x55c06a		4c8bbc24a0010000	MOVQ 0x1a0(SP), R15					
  p384_fiat64.go:632	0x55c072		4c89c0			MOVQ R8, AX						
  p384_fiat64.go:665	0x55c075		4c8b8424c0010000	MOVQ 0x1c0(SP), R8					
  p384_fiat64.go:665	0x55c07d		4d11c7			ADCQ R8, R15						
  p384_fiat64.go:665	0x55c080		4c89bc2430010000	MOVQ R15, 0x130(SP)					
  p384_fiat64.go:666	0x55c088		4c8b8424b8010000	MOVQ 0x1b8(SP), R8					
  p384_fiat64.go:666	0x55c090		4983d000		ADCQ $0x0, R8						
  p384_fiat64.go:666	0x55c094		4c89842428010000	MOVQ R8, 0x128(SP)					
  p384_fiat64.go:669	0x55c09c		4c8b842468010000	MOVQ 0x168(SP), R8					
  p384_fiat64.go:669	0x55c0a4		4901d0			ADDQ DX, R8						
  p384_fiat64.go:672	0x55c0a7		4911f9			ADCQ DI, R9						
  p384_fiat64.go:675	0x55c0aa		4911db			ADCQ BX, R11						
  p384_fiat64.go:678	0x55c0ad		4911f4			ADCQ SI, R12						
  p384_fiat64.go:681	0x55c0b0		4d11d5			ADCQ R10, R13						
  p384_fiat64.go:684	0x55c0b3		4911cf			ADCQ CX, R15						
  p384_fiat64.go:687	0x55c0b6		488b8c2428010000	MOVQ 0x128(SP), CX					
  p384_fiat64.go:687	0x55c0be		4811c1			ADCQ AX, CX						
  p384_fiat64.go:687	0x55c0c1		48898c2410010000	MOVQ CX, 0x110(SP)					
  p384_fiat64.go:689	0x55c0c9		4c89c0			MOVQ R8, AX						
  p384_fiat64.go:689	0x55c0cc		49ba0100000001000000	MOVQ $0x100000001, R10					
  p384_fiat64.go:689	0x55c0d6		49f7e2			MULQ R10						
  p384_fiat64.go:692	0x55c0d9		48c7c2ffffffff		MOVQ $-0x1, DX						
  p384_fiat64.go:689	0x55c0e0		4989c2			MOVQ AX, R10						
  p384_fiat64.go:692	0x55c0e3		48f7e2			MULQ DX							
  p384_fiat64.go:698	0x55c0e6		4889842408010000	MOVQ AX, 0x108(SP)					
  p384_fiat64.go:698	0x55c0ee		4889942400010000	MOVQ DX, 0x100(SP)					
  p384_fiat64.go:701	0x55c0f6		4c89d0			MOVQ R10, AX						
  p384_fiat64.go:701	0x55c0f9		48c7c6feffffff		MOVQ $-0x2, SI						
  p384_fiat64.go:701	0x55c100		48f7e6			MULQ SI							
  p384_fiat64.go:701	0x55c103		48899424f8000000	MOVQ DX, 0xf8(SP)					
  p384_fiat64.go:701	0x55c10b		4889c6			MOVQ AX, SI						
  p384_fiat64.go:704	0x55c10e		4c89d0			MOVQ R10, AX						
  p384_fiat64.go:704	0x55c111		48bb00000000ffffffff	MOVQ $0xffffffff00000000, BX				
  p384_fiat64.go:704	0x55c11b		48f7e3			MULQ BX							
  p384_fiat64.go:704	0x55c11e		48898424f0000000	MOVQ AX, 0xf0(SP)					
  p384_fiat64.go:707	0x55c126		4c89d0			MOVQ R10, AX						
  p384_fiat64.go:707	0x55c129		bbffffffff		MOVL $-0x1, BX						
  p384_fiat64.go:704	0x55c12e		4989d2			MOVQ DX, R10						
  p384_fiat64.go:707	0x55c131		48f7e3			MULQ BX							
  p384_fiat64.go:710	0x55c134		488b9c24f0000000	MOVQ 0xf0(SP), BX					
  p384_fiat64.go:710	0x55c13c		4801da			ADDQ BX, DX						
  p384_fiat64.go:713	0x55c13f		4911f2			ADCQ SI, R10						
  p384_fiat64.go:716	0x55c142		488b9c24f8000000	MOVQ 0xf8(SP), BX					
  p384_fiat64.go:716	0x55c14a		488bb42408010000	MOVQ 0x108(SP), SI					
  p384_fiat64.go:716	0x55c152		4811f3			ADCQ SI, BX						
  p384_fiat64.go:719	0x55c155		488bbc2400010000	MOVQ 0x100(SP), DI					
  p384_fiat64.go:719	0x55c15d		4811fe			ADCQ DI, SI						
  p384_fiat64.go:722	0x55c160		488b8c2408010000	MOVQ 0x108(SP), CX					
  p384_fiat64.go:722	0x55c168		4811f9			ADCQ DI, CX						
  p384_fiat64.go:723	0x55c16b		4883d700		ADCQ $0x0, DI						
  p384_fiat64.go:725	0x55c16f		4901c0			ADDQ AX, R8						
  p384_fiat64.go:728	0x55c172		4c11ca			ADCQ R9, DX						
  p384_fiat64.go:731	0x55c175		4d11da			ADCQ R11, R10						
  p384_fiat64.go:734	0x55c178		4c11e3			ADCQ R12, BX						
  p384_fiat64.go:737	0x55c17b		4c11ee			ADCQ R13, SI						
  p384_fiat64.go:740	0x55c17e		4c11f9			ADCQ R15, CX						
  p384_fiat64.go:743	0x55c181		4c8b842410010000	MOVQ 0x110(SP), R8					
  p384_fiat64.go:743	0x55c189		4c11c7			ADCQ R8, DI						
  p384_fiat64.go:743	0x55c18c		410f92c0		SETB R8							
  p384_fiat64.go:743	0x55c190		450fb6c0		MOVZX R8, R8						
  p384_fiat64.go:669	0x55c194		4c8b8c2468010000	MOVQ 0x168(SP), R9					
  p384_fiat64.go:669	0x55c19c		4c8b9c24f8010000	MOVQ 0x1f8(SP), R11					
  p384_fiat64.go:669	0x55c1a4		4d01d9			ADDQ R11, R9						
  p384_fiat64.go:672	0x55c1a7		4c8b8c2458010000	MOVQ 0x158(SP), R9					
  p384_fiat64.go:672	0x55c1af		4c8b9c24f0010000	MOVQ 0x1f0(SP), R11					
  p384_fiat64.go:672	0x55c1b7		4d11d9			ADCQ R11, R9						
  p384_fiat64.go:675	0x55c1ba		4c8b8c2448010000	MOVQ 0x148(SP), R9					
  p384_fiat64.go:675	0x55c1c2		4c8b9c24e8010000	MOVQ 0x1e8(SP), R11					
  p384_fiat64.go:675	0x55c1ca		4d11d9			ADCQ R11, R9						
  p384_fiat64.go:678	0x55c1cd		4c8b8c2440010000	MOVQ 0x140(SP), R9					
  p384_fiat64.go:678	0x55c1d5		4c8b9c24e0010000	MOVQ 0x1e0(SP), R11					
  p384_fiat64.go:678	0x55c1dd		4d11d9			ADCQ R11, R9						
  p384_fiat64.go:681	0x55c1e0		4c8b8c2438010000	MOVQ 0x138(SP), R9					
  p384_fiat64.go:681	0x55c1e8		4c8b9c24d8010000	MOVQ 0x1d8(SP), R11					
  p384_fiat64.go:681	0x55c1f0		4d11d9			ADCQ R11, R9						
  p384_fiat64.go:684	0x55c1f3		4c8b8c2430010000	MOVQ 0x130(SP), R9					
  p384_fiat64.go:684	0x55c1fb		4c8b9c24d0010000	MOVQ 0x1d0(SP), R11					
  p384_fiat64.go:684	0x55c203		4d11d9			ADCQ R11, R9						
  p384_fiat64.go:687	0x55c206		4c8b8c2428010000	MOVQ 0x128(SP), R9					
  p384_fiat64.go:687	0x55c20e		4c8b9c24c8010000	MOVQ 0x1c8(SP), R11					
  p384_fiat64.go:687	0x55c216		4d11d9			ADCQ R11, R9						
  p384_fiat64.go:744	0x55c219		4983d000		ADCQ $0x0, R8						
  p384_fiat64.go:747	0x55c21d		41b9ffffffff		MOVL $-0x1, R9						
  p384_fiat64.go:747	0x55c223		4989d3			MOVQ DX, R11						
  p384_fiat64.go:747	0x55c226		4c29ca			SUBQ R9, DX						
  p384_fiat64.go:750	0x55c229		49b900000000ffffffff	MOVQ $0xffffffff00000000, R9				
  p384_fiat64.go:750	0x55c233		4d89d4			MOVQ R10, R12						
  p384_fiat64.go:750	0x55c236		4d19ca			SBBQ R9, R10						
  p384_fiat64.go:753	0x55c239		4989d9			MOVQ BX, R9						
  p384_fiat64.go:753	0x55c23c		4883dbfe		SBBQ $-0x2, BX						
  p384_fiat64.go:756	0x55c240		4989f5			MOVQ SI, R13						
  p384_fiat64.go:756	0x55c243		4883deff		SBBQ $-0x1, SI						
  p384_fiat64.go:759	0x55c247		4989cf			MOVQ CX, R15						
  p384_fiat64.go:759	0x55c24a		4883d9ff		SBBQ $-0x1, CX						
  p384_fiat64.go:762	0x55c24e		4889f8			MOVQ DI, AX						
  p384_fiat64.go:762	0x55c251		4883dfff		SBBQ $-0x1, DI						
  p384_fiat64.go:764	0x55c255		4983d800		SBBQ $0x0, R8						
  p384_fiat64.go:764	0x55c259		410f92c0		SETB R8							
  p384_fiat64.go:764	0x55c25d		450fb6c0		MOVZX R8, R8						
  p384_fiat64.go:72	0x55c261		49f7d8			NEGQ R8							
  p384_fiat64.go:72	0x55c264		4c898424b0050000	MOVQ R8, 0x5b0(SP)					
  p384_fiat64.go:73	0x55c26c		4d21c3			ANDQ R8, R11						
  p384_fiat64.go:73	0x55c26f		49f7d0			NOTQ R8							
  p384_fiat64.go:73	0x55c272		4c21c2			ANDQ R8, DX						
  p384_fiat64.go:73	0x55c275		4c09da			ORQ R11, DX						
  p384_fiat64.go:777	0x55c278		4c8b9c24e0050000	MOVQ 0x5e0(SP), R11					
  p384_fiat64.go:777	0x55c280		498913			MOVQ DX, 0(R11)						
  p384_fiat64.go:73	0x55c283		488b9424b0050000	MOVQ 0x5b0(SP), DX					
  p384_fiat64.go:73	0x55c28b		4921d4			ANDQ DX, R12						
  p384_fiat64.go:73	0x55c28e		4d21c2			ANDQ R8, R10						
  p384_fiat64.go:73	0x55c291		4d09e2			ORQ R12, R10						
  p384_fiat64.go:778	0x55c294		4d895308		MOVQ R10, 0x8(R11)					
  p384_fiat64.go:73	0x55c298		4921d1			ANDQ DX, R9						
  p384_fiat64.go:73	0x55c29b		4c21c3			ANDQ R8, BX						
  p384_fiat64.go:73	0x55c29e		4c09cb			ORQ R9, BX						
  p384_fiat64.go:779	0x55c2a1		49895b10		MOVQ BX, 0x10(R11)					
  p384_fiat64.go:73	0x55c2a5		4921d5			ANDQ DX, R13						
  p384_fiat64.go:73	0x55c2a8		4c21c6			ANDQ R8, SI						
  p384_fiat64.go:73	0x55c2ab		4c09ee			ORQ R13, SI						
  p384_fiat64.go:780	0x55c2ae		49897318		MOVQ SI, 0x18(R11)					
  p384_fiat64.go:73	0x55c2b2		4921d7			ANDQ DX, R15						
  p384_fiat64.go:73	0x55c2b5		4c21c1			ANDQ R8, CX						
  p384_fiat64.go:73	0x55c2b8		4c09f9			ORQ R15, CX						
  p384_fiat64.go:781	0x55c2bb		49894b20		MOVQ CX, 0x20(R11)					
  p384_fiat64.go:73	0x55c2bf		4821c2			ANDQ AX, DX						
  p384_fiat64.go:73	0x55c2c2		4921f8			ANDQ DI, R8						
  p384_fiat64.go:73	0x55c2c5		4c09c2			ORQ R8, DX						
  p384_fiat64.go:782	0x55c2c8		49895328		MOVQ DX, 0x28(R11)					
  p384_fiat64.go:783	0x55c2cc		c9			LEAVE							
  p384_fiat64.go:783	0x55c2cd		c3			RET							
  p384_fiat64.go:88	0x55c2ce		4889442408		MOVQ AX, 0x8(SP)					
  p384_fiat64.go:88	0x55c2d3		48895c2410		MOVQ BX, 0x10(SP)					
  p384_fiat64.go:88	0x55c2d8		48894c2418		MOVQ CX, 0x18(SP)					
  p384_fiat64.go:88	0x55c2dd		0f1f00			NOPL 0(AX)						
  p384_fiat64.go:88	0x55c2e0		e8bbd3f2ff		CALL runtime.morestack_noctxt.abi0(SB)			
  p384_fiat64.go:88	0x55c2e5		488b442408		MOVQ 0x8(SP), AX					
  p384_fiat64.go:88	0x55c2ea		488b5c2410		MOVQ 0x10(SP), BX					
  p384_fiat64.go:88	0x55c2ef		488b4c2418		MOVQ 0x18(SP), CX					
  p384_fiat64.go:88	0x55c2f4		e9c7edffff		JMP crypto/internal/fips140/nistec/fiat.p384Mul(SB)	

TEXT crypto/internal/fips140/nistec/fiat.p384Square(SB) /home/exedev/go-crypto/src/crypto/internal/fips140/nistec/fiat/p384_fiat64.go
  p384_fiat64.go:795	0x55c300		4c8da42490fbffff	LEAQ 0xfffffb90(SP), R12				
  p384_fiat64.go:795	0x55c308		4d3b6610		CMPQ R12, 0x10(R14)					
  p384_fiat64.go:795	0x55c30c		0f863b100000		JBE 0x55d34d						
  p384_fiat64.go:795	0x55c312		55			PUSHQ BP						
  p384_fiat64.go:795	0x55c313		4889e5			MOVQ SP, BP						
  p384_fiat64.go:795	0x55c316		4881ece8040000		SUBQ $0x4e8, SP						
  p384_fiat64.go:1490	0x55c31d		48898424f8040000	MOVQ AX, 0x4f8(SP)					
  p384_fiat64.go:796	0x55c325		488b4b10		MOVQ 0x10(BX), CX					
  p384_fiat64.go:816	0x55c329		488b5308		MOVQ 0x8(BX), DX					
  p384_fiat64.go:903	0x55c32d		4889d0			MOVQ DX, AX						
  p384_fiat64.go:816	0x55c330		4889c7			MOVQ AX, DI						
  p384_fiat64.go:903	0x55c333		48f7e1			MULQ CX							
  p384_fiat64.go:903	0x55c336		4889542458		MOVQ DX, 0x58(SP)					
  p384_fiat64.go:903	0x55c33b		4889442460		MOVQ AX, 0x60(SP)					
  p384_fiat64.go:906	0x55c340		4889f8			MOVQ DI, AX						
  p384_fiat64.go:906	0x55c343		48f7e0			MULQ AX							
  p384_fiat64.go:906	0x55c346		4889542448		MOVQ DX, 0x48(SP)					
  p384_fiat64.go:906	0x55c34b		4889442450		MOVQ AX, 0x50(SP)					
  p384_fiat64.go:1015	0x55c350		4889c8			MOVQ CX, AX						
  p384_fiat64.go:1015	0x55c353		48f7e0			MULQ AX							
  p384_fiat64.go:1015	0x55c356		4889942428040000	MOVQ DX, 0x428(SP)					
  p384_fiat64.go:1015	0x55c35e		4889842430040000	MOVQ AX, 0x430(SP)					
  p384_fiat64.go:1118	0x55c366		4c8b6328		MOVQ 0x28(BX), R12					
  p384_fiat64.go:894	0x55c36a		4c89e0			MOVQ R12, AX						
  p384_fiat64.go:894	0x55c36d		48f7e7			MULQ DI							
  p384_fiat64.go:894	0x55c370		4889542468		MOVQ DX, 0x68(SP)					
  p384_fiat64.go:894	0x55c375		4889442470		MOVQ AX, 0x70(SP)					
  p384_fiat64.go:1124	0x55c37a		488b7318		MOVQ 0x18(BX), SI					
  p384_fiat64.go:900	0x55c37e		4889f0			MOVQ SI, AX						
  p384_fiat64.go:900	0x55c381		48f7e7			MULQ DI							
  p384_fiat64.go:1130	0x55c384		4889942428030000	MOVQ DX, 0x328(SP)					
  p384_fiat64.go:1130	0x55c38c		4889842430030000	MOVQ AX, 0x330(SP)					
  p384_fiat64.go:1012	0x55c394		4889f0			MOVQ SI, AX						
  p384_fiat64.go:1012	0x55c397		48f7e1			MULQ CX							
  p384_fiat64.go:1012	0x55c39a		4889842438040000	MOVQ AX, 0x438(SP)					
  p384_fiat64.go:1127	0x55c3a2		4889942438030000	MOVQ DX, 0x338(SP)					
  p384_fiat64.go:1124	0x55c3aa		4889f0			MOVQ SI, AX						
  p384_fiat64.go:1124	0x55c3ad		48f7e0			MULQ AX							
  p384_fiat64.go:1124	0x55c3b0		4889942440030000	MOVQ DX, 0x340(SP)					
  p384_fiat64.go:1124	0x55c3b8		4889842448030000	MOVQ AX, 0x348(SP)					
  p384_fiat64.go:1233	0x55c3c0		488b5320		MOVQ 0x20(BX), DX					
  p384_fiat64.go:1233	0x55c3c4		48899424e0040000	MOVQ DX, 0x4e0(SP)					
  p384_fiat64.go:1230	0x55c3cc		4889d0			MOVQ DX, AX						
  p384_fiat64.go:1230	0x55c3cf		49f7e4			MULQ R12						
  p384_fiat64.go:1230	0x55c3d2		4889942458020000	MOVQ DX, 0x258(SP)					
  p384_fiat64.go:1345	0x55c3da		4889842450010000	MOVQ AX, 0x150(SP)					
  p384_fiat64.go:1233	0x55c3e2		488b8424e0040000	MOVQ 0x4e0(SP), AX					
  p384_fiat64.go:1233	0x55c3ea		48f7e0			MULQ AX							
  p384_fiat64.go:1233	0x55c3ed		4889942448020000	MOVQ DX, 0x248(SP)					
  p384_fiat64.go:1233	0x55c3f5		4889842450020000	MOVQ AX, 0x250(SP)					
  p384_fiat64.go:1236	0x55c3fd		488b8424e0040000	MOVQ 0x4e0(SP), AX					
  p384_fiat64.go:1236	0x55c405		48f7e6			MULQ SI							
  p384_fiat64.go:1121	0x55c408		4889842450030000	MOVQ AX, 0x350(SP)					
  p384_fiat64.go:1236	0x55c410		4889942440020000	MOVQ DX, 0x240(SP)					
  p384_fiat64.go:1239	0x55c418		488b8424e0040000	MOVQ 0x4e0(SP), AX					
  p384_fiat64.go:1239	0x55c420		48f7e1			MULQ CX							
  p384_fiat64.go:1009	0x55c423		4889942440040000	MOVQ DX, 0x440(SP)					
  p384_fiat64.go:1239	0x55c42b		4889842438020000	MOVQ AX, 0x238(SP)					
  p384_fiat64.go:1242	0x55c433		488b8424e0040000	MOVQ 0x4e0(SP), AX					
  p384_fiat64.go:1242	0x55c43b		48f7e7			MULQ DI							
  p384_fiat64.go:1242	0x55c43e		4889942428020000	MOVQ DX, 0x228(SP)					
  p384_fiat64.go:1242	0x55c446		4889842430020000	MOVQ AX, 0x230(SP)					
  p384_fiat64.go:1245	0x55c44e		488b1b			MOVQ 0(BX), BX						
  p384_fiat64.go:804	0x55c451		4889d8			MOVQ BX, AX						
  p384_fiat64.go:804	0x55c454		49f7e4			MULQ R12						
  p384_fiat64.go:1357	0x55c457		4889942428010000	MOVQ DX, 0x128(SP)					
  p384_fiat64.go:1357	0x55c45f		4889842430010000	MOVQ AX, 0x130(SP)					
  p384_fiat64.go:813	0x55c467		4889d8			MOVQ BX, AX						
  p384_fiat64.go:813	0x55c46a		48f7e1			MULQ CX							
  p384_fiat64.go:813	0x55c46d		4889942468040000	MOVQ DX, 0x468(SP)					
  p384_fiat64.go:1021	0x55c475		4889842420040000	MOVQ AX, 0x420(SP)					
  p384_fiat64.go:819	0x55c47d		4889d8			MOVQ BX, AX						
  p384_fiat64.go:819	0x55c480		48f7e0			MULQ AX							
  p384_fiat64.go:819	0x55c483		48898424e0030000	MOVQ AX, 0x3e0(SP)					
  p384_fiat64.go:819	0x55c48b		48899424d0030000	MOVQ DX, 0x3d0(SP)					
  p384_fiat64.go:837	0x55c493		48b80100000001000000	MOVQ $0x100000001, AX					
  p384_fiat64.go:837	0x55c49d		4c8bbc24e0030000	MOVQ 0x3e0(SP), R15					
  p384_fiat64.go:837	0x55c4a5		49f7e7			MULQ R15						
  p384_fiat64.go:837	0x55c4a8		4889842460020000	MOVQ AX, 0x260(SP)					
  p384_fiat64.go:837	0x55c4b0		4889c2			MOVQ AX, DX						
  p384_fiat64.go:846	0x55c4b3		48c7c0ffffffff		MOVQ $-0x1, AX						
  p384_fiat64.go:846	0x55c4ba		48f7e2			MULQ DX							
  p384_fiat64.go:843	0x55c4bd		48899424a8010000	MOVQ DX, 0x1a8(SP)					
  p384_fiat64.go:846	0x55c4c5		48898424a0010000	MOVQ AX, 0x1a0(SP)					
  p384_fiat64.go:849	0x55c4cd		48c7c0feffffff		MOVQ $-0x2, AX						
  p384_fiat64.go:849	0x55c4d4		4c8bac2460020000	MOVQ 0x260(SP), R13					
  p384_fiat64.go:849	0x55c4dc		49f7e5			MULQ R13						
  p384_fiat64.go:849	0x55c4df		4889942418010000	MOVQ DX, 0x118(SP)					
  p384_fiat64.go:849	0x55c4e7		4889842448010000	MOVQ AX, 0x148(SP)					
  p384_fiat64.go:852	0x55c4ef		48b800000000ffffffff	MOVQ $0xffffffff00000000, AX				
  p384_fiat64.go:852	0x55c4f9		49f7e5			MULQ R13						
  p384_fiat64.go:852	0x55c4fc		48899424d8000000	MOVQ DX, 0xd8(SP)					
  p384_fiat64.go:852	0x55c504		48898424e8000000	MOVQ AX, 0xe8(SP)					
  p384_fiat64.go:855	0x55c50c		b8ffffffff		MOVL $-0x1, AX						
  p384_fiat64.go:855	0x55c511		49f7e5			MULQ R13						
  p384_fiat64.go:855	0x55c514		48899424b0000000	MOVQ DX, 0xb0(SP)					
  p384_fiat64.go:855	0x55c51c		4989c5			MOVQ AX, R13						
  p384_fiat64.go:909	0x55c51f		4889d8			MOVQ BX, AX						
  p384_fiat64.go:909	0x55c522		48f7e7			MULQ DI							
  p384_fiat64.go:816	0x55c525		4889942410040000	MOVQ DX, 0x410(SP)					
  p384_fiat64.go:909	0x55c52d		4889442440		MOVQ AX, 0x40(SP)					
  p384_fiat64.go:909	0x55c532		4889c7			MOVQ AX, DI						
  p384_fiat64.go:1133	0x55c535		4889d8			MOVQ BX, AX						
  p384_fiat64.go:1133	0x55c538		48f7e6			MULQ SI							
  p384_fiat64.go:810	0x55c53b		4889942490040000	MOVQ DX, 0x490(SP)					
  p384_fiat64.go:1133	0x55c543		4889842420030000	MOVQ AX, 0x320(SP)					
  p384_fiat64.go:1245	0x55c54b		4889d8			MOVQ BX, AX						
  p384_fiat64.go:1245	0x55c54e		4c8b8c24e0040000	MOVQ 0x4e0(SP), R9					
  p384_fiat64.go:810	0x55c556		4889d3			MOVQ DX, BX						
  p384_fiat64.go:1245	0x55c559		49f7e1			MULQ R9							
  p384_fiat64.go:807	0x55c55c		48899424d0040000	MOVQ DX, 0x4d0(SP)					
  p384_fiat64.go:807	0x55c564		4889442410		MOVQ AX, 0x10(SP)					
  p384_fiat64.go:807	0x55c569		4989c1			MOVQ AX, R9						
  p384_fiat64.go:1342	0x55c56c		4c89e0			MOVQ R12, AX						
  p384_fiat64.go:1342	0x55c56f		48f7e0			MULQ AX							
  p384_fiat64.go:1342	0x55c572		4889942458010000	MOVQ DX, 0x158(SP)					
  p384_fiat64.go:1342	0x55c57a		4889842460010000	MOVQ AX, 0x160(SP)					
  p384_fiat64.go:1348	0x55c582		4889f0			MOVQ SI, AX						
  p384_fiat64.go:1348	0x55c585		49f7e4			MULQ R12						
  p384_fiat64.go:1118	0x55c588		4889842458030000	MOVQ AX, 0x358(SP)					
  p384_fiat64.go:1348	0x55c590		4889942440010000	MOVQ DX, 0x140(SP)					
  p384_fiat64.go:1351	0x55c598		4c89e0			MOVQ R12, AX						
  p384_fiat64.go:1351	0x55c59b		48f7e1			MULQ CX							
  p384_fiat64.go:1006	0x55c59e		4889842448040000	MOVQ AX, 0x448(SP)					
  p384_fiat64.go:1351	0x55c5a6		4889942438010000	MOVQ DX, 0x138(SP)					
  p384_fiat64.go:1473	0x55c5ae		90			NOPL							
  p384_fiat64.go:1475	0x55c5af		90			NOPL							
  p384_fiat64.go:1477	0x55c5b0		90			NOPL							
  p384_fiat64.go:1479	0x55c5b1		90			NOPL							
  p384_fiat64.go:1481	0x55c5b2		90			NOPL							
  p384_fiat64.go:1483	0x55c5b3		90			NOPL							
  p384_fiat64.go:822	0x55c5b4		488b8c24d0030000	MOVQ 0x3d0(SP), CX					
  p384_fiat64.go:822	0x55c5bc		4801f9			ADDQ DI, CX						
  p384_fiat64.go:825	0x55c5bf		488bb42420040000	MOVQ 0x420(SP), SI					
  p384_fiat64.go:825	0x55c5c7		4c8ba42410040000	MOVQ 0x410(SP), R12					
  p384_fiat64.go:825	0x55c5cf		4c11e6			ADCQ R12, SI						
  p384_fiat64.go:828	0x55c5d2		488b942420030000	MOVQ 0x320(SP), DX					
  p384_fiat64.go:828	0x55c5da		488bbc2468040000	MOVQ 0x468(SP), DI					
  p384_fiat64.go:828	0x55c5e2		4811fa			ADCQ DI, DX						
  p384_fiat64.go:831	0x55c5e5		4c11cb			ADCQ R9, BX						
  p384_fiat64.go:834	0x55c5e8		4c8b8c2430010000	MOVQ 0x130(SP), R9					
  p384_fiat64.go:834	0x55c5f0		488bbc24d0040000	MOVQ 0x4d0(SP), DI					
  p384_fiat64.go:834	0x55c5f8		4911f9			ADCQ DI, R9						
  p384_fiat64.go:834	0x55c5fb		4c898c24b8020000	MOVQ R9, 0x2b8(SP)					
  p384_fiat64.go:835	0x55c603		488bbc2428010000	MOVQ 0x128(SP), DI					
  p384_fiat64.go:835	0x55c60b		4883d700		ADCQ $0x0, DI						
  p384_fiat64.go:835	0x55c60f		4889bc2490020000	MOVQ DI, 0x290(SP)					
  p384_fiat64.go:858	0x55c617		4c8b8424b0000000	MOVQ 0xb0(SP), R8					
  p384_fiat64.go:858	0x55c61f		4c8b9c24e8000000	MOVQ 0xe8(SP), R11					
  p384_fiat64.go:858	0x55c627		4d01d8			ADDQ R11, R8						
  p384_fiat64.go:861	0x55c62a		4c8b9c24d8000000	MOVQ 0xd8(SP), R11					
  p384_fiat64.go:861	0x55c632		4c8b942448010000	MOVQ 0x148(SP), R10					
  p384_fiat64.go:861	0x55c63a		4d11d3			ADCQ R10, R11						
  p384_fiat64.go:864	0x55c63d		4c8b942418010000	MOVQ 0x118(SP), R10					
  p384_fiat64.go:864	0x55c645		4c8ba424a0010000	MOVQ 0x1a0(SP), R12					
  p384_fiat64.go:864	0x55c64d		4d11e2			ADCQ R12, R10						
  p384_fiat64.go:867	0x55c650		488bbc24a8010000	MOVQ 0x1a8(SP), DI					
  p384_fiat64.go:867	0x55c658		4911fc			ADCQ DI, R12						
  p384_fiat64.go:870	0x55c65b		4c8b8c24a0010000	MOVQ 0x1a0(SP), R9					
  p384_fiat64.go:870	0x55c663		4911f9			ADCQ DI, R9						
  p384_fiat64.go:871	0x55c666		4883d700		ADCQ $0x0, DI						
  p384_fiat64.go:873	0x55c66a		4d01ef			ADDQ R13, R15						
  p384_fiat64.go:876	0x55c66d		4911c8			ADCQ CX, R8						
  p384_fiat64.go:876	0x55c670		4c898424a8000000	MOVQ R8, 0xa8(SP)					
  p384_fiat64.go:879	0x55c678		4911f3			ADCQ SI, R11						
  p384_fiat64.go:879	0x55c67b		4c899c24a0000000	MOVQ R11, 0xa0(SP)					
  p384_fiat64.go:882	0x55c683		4911d2			ADCQ DX, R10						
  p384_fiat64.go:882	0x55c686		4c89942498000000	MOVQ R10, 0x98(SP)					
  p384_fiat64.go:885	0x55c68e		4911dc			ADCQ BX, R12						
  p384_fiat64.go:885	0x55c691		4c89a42490000000	MOVQ R12, 0x90(SP)					
  p384_fiat64.go:888	0x55c699		488b8c24b8020000	MOVQ 0x2b8(SP), CX					
  p384_fiat64.go:888	0x55c6a1		4911c9			ADCQ CX, R9						
  p384_fiat64.go:888	0x55c6a4		4c898c2488000000	MOVQ R9, 0x88(SP)					
  p384_fiat64.go:891	0x55c6ac		488b8c2490020000	MOVQ 0x290(SP), CX					
  p384_fiat64.go:891	0x55c6b4		4811cf			ADCQ CX, DI						
  p384_fiat64.go:891	0x55c6b7		4889bc2480000000	MOVQ DI, 0x80(SP)					
  p384_fiat64.go:891	0x55c6bf		0f92c1			SETB CL							
  p384_fiat64.go:891	0x55c6c2		0fb6c9			MOVZX CL, CX						
  p384_fiat64.go:891	0x55c6c5		48894c2478		MOVQ CX, 0x78(SP)					
  p384_fiat64.go:912	0x55c6ca		488b542450		MOVQ 0x50(SP), DX					
  p384_fiat64.go:912	0x55c6cf		488b9c2410040000	MOVQ 0x410(SP), BX					
  p384_fiat64.go:912	0x55c6d7		4801da			ADDQ BX, DX						
  p384_fiat64.go:912	0x55c6da		4889542438		MOVQ DX, 0x38(SP)					
  p384_fiat64.go:915	0x55c6df		488b5c2448		MOVQ 0x48(SP), BX					
  p384_fiat64.go:915	0x55c6e4		488b742460		MOVQ 0x60(SP), SI					
  p384_fiat64.go:915	0x55c6e9		4811f3			ADCQ SI, BX						
  p384_fiat64.go:915	0x55c6ec		48895c2430		MOVQ BX, 0x30(SP)					
  p384_fiat64.go:918	0x55c6f1		4c8bac2430030000	MOVQ 0x330(SP), R13					
  p384_fiat64.go:918	0x55c6f9		4c8b7c2458		MOVQ 0x58(SP), R15					
  p384_fiat64.go:918	0x55c6fe		4d11fd			ADCQ R15, R13						
  p384_fiat64.go:918	0x55c701		4c896c2428		MOVQ R13, 0x28(SP)					
  p384_fiat64.go:921	0x55c706		4c8bbc2430020000	MOVQ 0x230(SP), R15					
  p384_fiat64.go:921	0x55c70e		488bb42428030000	MOVQ 0x328(SP), SI					
  p384_fiat64.go:921	0x55c716		4911f7			ADCQ SI, R15						
  p384_fiat64.go:921	0x55c719		4c897c2420		MOVQ R15, 0x20(SP)					
  p384_fiat64.go:924	0x55c71e		488bb42428020000	MOVQ 0x228(SP), SI					
  p384_fiat64.go:924	0x55c726		488b4c2470		MOVQ 0x70(SP), CX					
  p384_fiat64.go:924	0x55c72b		4811ce			ADCQ CX, SI						
  p384_fiat64.go:924	0x55c72e		4889742418		MOVQ SI, 0x18(SP)					
  p384_fiat64.go:925	0x55c733		488b4c2468		MOVQ 0x68(SP), CX					
  p384_fiat64.go:925	0x55c738		4883d100		ADCQ $0x0, CX						
  p384_fiat64.go:925	0x55c73c		48894c2408		MOVQ CX, 0x8(SP)					
  p384_fiat64.go:928	0x55c741		488b4c2440		MOVQ 0x40(SP), CX					
  p384_fiat64.go:928	0x55c746		4c01c1			ADDQ R8, CX						
  p384_fiat64.go:931	0x55c749		4c11da			ADCQ R11, DX						
  p384_fiat64.go:931	0x55c74c		48891424		MOVQ DX, 0(SP)						
  p384_fiat64.go:934	0x55c750		4c11d3			ADCQ R10, BX						
  p384_fiat64.go:937	0x55c753		4d11e5			ADCQ R12, R13						
  p384_fiat64.go:940	0x55c756		4d11cf			ADCQ R9, R15						
  p384_fiat64.go:943	0x55c759		4811fe			ADCQ DI, SI						
  p384_fiat64.go:946	0x55c75c		488b7c2408		MOVQ 0x8(SP), DI					
  p384_fiat64.go:946	0x55c761		4c8b4c2478		MOVQ 0x78(SP), R9					
  p384_fiat64.go:946	0x55c766		4c11cf			ADCQ R9, DI						
  p384_fiat64.go:948	0x55c769		4889c8			MOVQ CX, AX						
  p384_fiat64.go:948	0x55c76c		49b90100000001000000	MOVQ $0x100000001, R9					
  p384_fiat64.go:948	0x55c776		49f7e1			MULQ R9							
  p384_fiat64.go:948	0x55c779		48898424c8040000	MOVQ AX, 0x4c8(SP)					
  p384_fiat64.go:951	0x55c781		48c7c2ffffffff		MOVQ $-0x1, DX						
  p384_fiat64.go:951	0x55c788		48f7e2			MULQ DX							
  p384_fiat64.go:954	0x55c78b		48899424c0040000	MOVQ DX, 0x4c0(SP)					
  p384_fiat64.go:957	0x55c793		48898424b8040000	MOVQ AX, 0x4b8(SP)					
  p384_fiat64.go:960	0x55c79b		488b8424c8040000	MOVQ 0x4c8(SP), AX					
  p384_fiat64.go:960	0x55c7a3		49c7c1feffffff		MOVQ $-0x2, R9						
  p384_fiat64.go:960	0x55c7aa		49f7e1			MULQ R9							
  p384_fiat64.go:960	0x55c7ad		48899424a8040000	MOVQ DX, 0x4a8(SP)					
  p384_fiat64.go:960	0x55c7b5		48898424b0040000	MOVQ AX, 0x4b0(SP)					
  p384_fiat64.go:963	0x55c7bd		488b8424c8040000	MOVQ 0x4c8(SP), AX					
  p384_fiat64.go:963	0x55c7c5		49b900000000ffffffff	MOVQ $0xffffffff00000000, R9				
  p384_fiat64.go:963	0x55c7cf		49f7e1			MULQ R9							
  p384_fiat64.go:963	0x55c7d2		4889942498040000	MOVQ DX, 0x498(SP)					
  p384_fiat64.go:963	0x55c7da		48898424a0040000	MOVQ AX, 0x4a0(SP)					
  p384_fiat64.go:966	0x55c7e2		488b8424c8040000	MOVQ 0x4c8(SP), AX					
  p384_fiat64.go:966	0x55c7ea		41b9ffffffff		MOVL $-0x1, R9						
  p384_fiat64.go:966	0x55c7f0		49f7e1			MULQ R9							
  p384_fiat64.go:969	0x55c7f3		4c8b8c24a0040000	MOVQ 0x4a0(SP), R9					
  p384_fiat64.go:969	0x55c7fb		4c01ca			ADDQ R9, DX						
  p384_fiat64.go:972	0x55c7fe		4c8b8c2498040000	MOVQ 0x498(SP), R9					
  p384_fiat64.go:972	0x55c806		4c8ba424b0040000	MOVQ 0x4b0(SP), R12					
  p384_fiat64.go:972	0x55c80e		4d11e1			ADCQ R12, R9						
  p384_fiat64.go:975	0x55c811		4c8ba424a8040000	MOVQ 0x4a8(SP), R12					
  p384_fiat64.go:975	0x55c819		4c8b9424b8040000	MOVQ 0x4b8(SP), R10					
  p384_fiat64.go:975	0x55c821		4d11d4			ADCQ R10, R12						
  p384_fiat64.go:978	0x55c824		4c8b9c24c0040000	MOVQ 0x4c0(SP), R11					
  p384_fiat64.go:978	0x55c82c		4d11da			ADCQ R11, R10						
  p384_fiat64.go:981	0x55c82f		4c8b8424b8040000	MOVQ 0x4b8(SP), R8					
  p384_fiat64.go:981	0x55c837		4d11d8			ADCQ R11, R8						
  p384_fiat64.go:982	0x55c83a		4983d300		ADCQ $0x0, R11						
  p384_fiat64.go:984	0x55c83e		4801c1			ADDQ AX, CX						
  p384_fiat64.go:987	0x55c841		488b0424		MOVQ 0(SP), AX						
  p384_fiat64.go:987	0x55c845		4811d0			ADCQ DX, AX						
  p384_fiat64.go:987	0x55c848		4889842488040000	MOVQ AX, 0x488(SP)					
  p384_fiat64.go:990	0x55c850		4911d9			ADCQ BX, R9						
  p384_fiat64.go:990	0x55c853		4c898c2480040000	MOVQ R9, 0x480(SP)					
  p384_fiat64.go:993	0x55c85b		4d11ec			ADCQ R13, R12						
  p384_fiat64.go:993	0x55c85e		4c89a42478040000	MOVQ R12, 0x478(SP)					
  p384_fiat64.go:996	0x55c866		4d11fa			ADCQ R15, R10						
  p384_fiat64.go:996	0x55c869		4c89942470040000	MOVQ R10, 0x470(SP)					
  p384_fiat64.go:999	0x55c871		4911f0			ADCQ SI, R8						
  p384_fiat64.go:999	0x55c874		4c89842460040000	MOVQ R8, 0x460(SP)					
  p384_fiat64.go:1002	0x55c87c		4911fb			ADCQ DI, R11						
  p384_fiat64.go:1002	0x55c87f		4c899c2458040000	MOVQ R11, 0x458(SP)					
  p384_fiat64.go:1002	0x55c887		0f92c1			SETB CL							
  p384_fiat64.go:1002	0x55c88a		0fb6c9			MOVZX CL, CX						
  p384_fiat64.go:928	0x55c88d		488b542440		MOVQ 0x40(SP), DX					
  p384_fiat64.go:928	0x55c892		488b9c24a8000000	MOVQ 0xa8(SP), BX					
  p384_fiat64.go:928	0x55c89a		4801da			ADDQ BX, DX						
  p384_fiat64.go:931	0x55c89d		488b542438		MOVQ 0x38(SP), DX					
  p384_fiat64.go:931	0x55c8a2		488b9c24a0000000	MOVQ 0xa0(SP), BX					
  p384_fiat64.go:931	0x55c8aa		4811da			ADCQ BX, DX						
  p384_fiat64.go:934	0x55c8ad		488b542430		MOVQ 0x30(SP), DX					
  p384_fiat64.go:934	0x55c8b2		488b9c2498000000	MOVQ 0x98(SP), BX					
  p384_fiat64.go:934	0x55c8ba		4811da			ADCQ BX, DX						
  p384_fiat64.go:937	0x55c8bd		488b542428		MOVQ 0x28(SP), DX					
  p384_fiat64.go:937	0x55c8c2		488b9c2490000000	MOVQ 0x90(SP), BX					
  p384_fiat64.go:937	0x55c8ca		4811da			ADCQ BX, DX						
  p384_fiat64.go:940	0x55c8cd		488b542420		MOVQ 0x20(SP), DX					
  p384_fiat64.go:940	0x55c8d2		488b9c2488000000	MOVQ 0x88(SP), BX					
  p384_fiat64.go:940	0x55c8da		4811da			ADCQ BX, DX						
  p384_fiat64.go:943	0x55c8dd		488b542418		MOVQ 0x18(SP), DX					
  p384_fiat64.go:943	0x55c8e2		488b9c2480000000	MOVQ 0x80(SP), BX					
  p384_fiat64.go:943	0x55c8ea		4811da			ADCQ BX, DX						
  p384_fiat64.go:946	0x55c8ed		488b542408		MOVQ 0x8(SP), DX					
  p384_fiat64.go:946	0x55c8f2		488b5c2478		MOVQ 0x78(SP), BX					
  p384_fiat64.go:946	0x55c8f7		4811da			ADCQ BX, DX						
  p384_fiat64.go:1003	0x55c8fa		4883d100		ADCQ $0x0, CX						
  p384_fiat64.go:1003	0x55c8fe		48898c2450040000	MOVQ CX, 0x450(SP)					
  p384_fiat64.go:1024	0x55c906		488b542460		MOVQ 0x60(SP), DX					
  p384_fiat64.go:1024	0x55c90b		488b9c2468040000	MOVQ 0x468(SP), BX					
  p384_fiat64.go:1024	0x55c913		4801da			ADDQ BX, DX						
  p384_fiat64.go:1024	0x55c916		4889942418040000	MOVQ DX, 0x418(SP)					
  p384_fiat64.go:1027	0x55c91e		488b9c2430040000	MOVQ 0x430(SP), BX					
  p384_fiat64.go:1027	0x55c926		488b742458		MOVQ 0x58(SP), SI					
  p384_fiat64.go:1027	0x55c92b		4811f3			ADCQ SI, BX						
  p384_fiat64.go:1027	0x55c92e		48899c2408040000	MOVQ BX, 0x408(SP)					
  p384_fiat64.go:1030	0x55c936		488bb42428040000	MOVQ 0x428(SP), SI					
  p384_fiat64.go:1030	0x55c93e		488bbc2438040000	MOVQ 0x438(SP), DI					
  p384_fiat64.go:1030	0x55c946		4811fe			ADCQ DI, SI						
  p384_fiat64.go:1030	0x55c949		4889b42400040000	MOVQ SI, 0x400(SP)					
  p384_fiat64.go:1033	0x55c951		4c8bac2438020000	MOVQ 0x238(SP), R13					
  p384_fiat64.go:1033	0x55c959		4c8bbc2438030000	MOVQ 0x338(SP), R15					
  p384_fiat64.go:1033	0x55c961		4d11fd			ADCQ R15, R13						
  p384_fiat64.go:1033	0x55c964		4c89ac24f8030000	MOVQ R13, 0x3f8(SP)					
  p384_fiat64.go:1036	0x55c96c		4c8bbc2440040000	MOVQ 0x440(SP), R15					
  p384_fiat64.go:1036	0x55c974		488bbc2448040000	MOVQ 0x448(SP), DI					
  p384_fiat64.go:1036	0x55c97c		4911ff			ADCQ DI, R15						
  p384_fiat64.go:1036	0x55c97f		4c89bc24f0030000	MOVQ R15, 0x3f0(SP)					
  p384_fiat64.go:1037	0x55c987		488bbc2438010000	MOVQ 0x138(SP), DI					
  p384_fiat64.go:1037	0x55c98f		4883d700		ADCQ $0x0, DI						
  p384_fiat64.go:1037	0x55c993		4889bc24e8030000	MOVQ DI, 0x3e8(SP)					
  p384_fiat64.go:1040	0x55c99b		488b8c2420040000	MOVQ 0x420(SP), CX					
  p384_fiat64.go:1040	0x55c9a3		4801c1			ADDQ AX, CX						
  p384_fiat64.go:1043	0x55c9a6		4c11ca			ADCQ R9, DX						
  p384_fiat64.go:1043	0x55c9a9		48899424d8030000	MOVQ DX, 0x3d8(SP)					
  p384_fiat64.go:1046	0x55c9b1		4c11e3			ADCQ R12, BX						
  p384_fiat64.go:1049	0x55c9b4		4c11d6			ADCQ R10, SI						
  p384_fiat64.go:1052	0x55c9b7		4d11c5			ADCQ R8, R13						
  p384_fiat64.go:1055	0x55c9ba		4d11df			ADCQ R11, R15						
  p384_fiat64.go:1058	0x55c9bd		4c8b9c2450040000	MOVQ 0x450(SP), R11					
  p384_fiat64.go:1058	0x55c9c5		4c11df			ADCQ R11, DI						
  p384_fiat64.go:1060	0x55c9c8		4889c8			MOVQ CX, AX						
  p384_fiat64.go:1060	0x55c9cb		49bb0100000001000000	MOVQ $0x100000001, R11					
  p384_fiat64.go:1060	0x55c9d5		49f7e3			MULQ R11						
  p384_fiat64.go:1060	0x55c9d8		48898424c8030000	MOVQ AX, 0x3c8(SP)					
  p384_fiat64.go:1063	0x55c9e0		48c7c2ffffffff		MOVQ $-0x1, DX						
  p384_fiat64.go:1063	0x55c9e7		48f7e2			MULQ DX							
  p384_fiat64.go:1069	0x55c9ea		48898424c0030000	MOVQ AX, 0x3c0(SP)					
  p384_fiat64.go:1069	0x55c9f2		48899424b8030000	MOVQ DX, 0x3b8(SP)					
  p384_fiat64.go:1072	0x55c9fa		488b8424c8030000	MOVQ 0x3c8(SP), AX					
  p384_fiat64.go:1072	0x55ca02		49c7c3feffffff		MOVQ $-0x2, R11						
  p384_fiat64.go:1072	0x55ca09		49f7e3			MULQ R11						
  p384_fiat64.go:1072	0x55ca0c		48899424a8030000	MOVQ DX, 0x3a8(SP)					
  p384_fiat64.go:1072	0x55ca14		48898424b0030000	MOVQ AX, 0x3b0(SP)					
  p384_fiat64.go:1075	0x55ca1c		488b8424c8030000	MOVQ 0x3c8(SP), AX					
  p384_fiat64.go:1075	0x55ca24		49bb00000000ffffffff	MOVQ $0xffffffff00000000, R11				
  p384_fiat64.go:1075	0x55ca2e		49f7e3			MULQ R11						
  p384_fiat64.go:1075	0x55ca31		4889942498030000	MOVQ DX, 0x398(SP)					
  p384_fiat64.go:1075	0x55ca39		48898424a0030000	MOVQ AX, 0x3a0(SP)					
  p384_fiat64.go:1078	0x55ca41		488b8424c8030000	MOVQ 0x3c8(SP), AX					
  p384_fiat64.go:1078	0x55ca49		41bbffffffff		MOVL $-0x1, R11						
  p384_fiat64.go:1078	0x55ca4f		49f7e3			MULQ R11						
  p384_fiat64.go:1081	0x55ca52		4c8b9c24a0030000	MOVQ 0x3a0(SP), R11					
  p384_fiat64.go:1081	0x55ca5a		4c01da			ADDQ R11, DX						
  p384_fiat64.go:1084	0x55ca5d		4c8b9c2498030000	MOVQ 0x398(SP), R11					
  p384_fiat64.go:1084	0x55ca65		4c8b8424b0030000	MOVQ 0x3b0(SP), R8					
  p384_fiat64.go:1084	0x55ca6d		4d11c3			ADCQ R8, R11						
  p384_fiat64.go:1087	0x55ca70		4c8b8424a8030000	MOVQ 0x3a8(SP), R8					
  p384_fiat64.go:1087	0x55ca78		4c8b9424c0030000	MOVQ 0x3c0(SP), R10					
  p384_fiat64.go:1087	0x55ca80		4d11d0			ADCQ R10, R8						
  p384_fiat64.go:1090	0x55ca83		4c8ba424b8030000	MOVQ 0x3b8(SP), R12					
  p384_fiat64.go:1090	0x55ca8b		4d11e2			ADCQ R12, R10						
  p384_fiat64.go:1093	0x55ca8e		4c8b8c24c0030000	MOVQ 0x3c0(SP), R9					
  p384_fiat64.go:1093	0x55ca96		4d11e1			ADCQ R12, R9						
  p384_fiat64.go:1094	0x55ca99		4983d400		ADCQ $0x0, R12						
  p384_fiat64.go:1096	0x55ca9d		4801c1			ADDQ AX, CX						
  p384_fiat64.go:1099	0x55caa0		488b8424d8030000	MOVQ 0x3d8(SP), AX					
  p384_fiat64.go:1099	0x55caa8		4811d0			ADCQ DX, AX						
  p384_fiat64.go:1099	0x55caab		4889842490030000	MOVQ AX, 0x390(SP)					
  p384_fiat64.go:1102	0x55cab3		4911db			ADCQ BX, R11						
  p384_fiat64.go:1102	0x55cab6		4c899c2488030000	MOVQ R11, 0x388(SP)					
  p384_fiat64.go:1105	0x55cabe		4911f0			ADCQ SI, R8						
  p384_fiat64.go:1105	0x55cac1		4c89842480030000	MOVQ R8, 0x380(SP)					
  p384_fiat64.go:1108	0x55cac9		4d11ea			ADCQ R13, R10						
  p384_fiat64.go:1108	0x55cacc		4c89942478030000	MOVQ R10, 0x378(SP)					
  p384_fiat64.go:1111	0x55cad4		4d11f9			ADCQ R15, R9						
  p384_fiat64.go:1111	0x55cad7		4c898c2470030000	MOVQ R9, 0x370(SP)					
  p384_fiat64.go:1114	0x55cadf		4911fc			ADCQ DI, R12						
  p384_fiat64.go:1114	0x55cae2		4c89a42468030000	MOVQ R12, 0x368(SP)					
  p384_fiat64.go:1114	0x55caea		0f92c1			SETB CL							
  p384_fiat64.go:1114	0x55caed		0fb6c9			MOVZX CL, CX						
  p384_fiat64.go:1040	0x55caf0		488b942420040000	MOVQ 0x420(SP), DX					
  p384_fiat64.go:1040	0x55caf8		488b9c2488040000	MOVQ 0x488(SP), BX					
  p384_fiat64.go:1040	0x55cb00		4801da			ADDQ BX, DX						
  p384_fiat64.go:1043	0x55cb03		488b942418040000	MOVQ 0x418(SP), DX					
  p384_fiat64.go:1043	0x55cb0b		488b9c2480040000	MOVQ 0x480(SP), BX					
  p384_fiat64.go:1043	0x55cb13		4811da			ADCQ BX, DX						
  p384_fiat64.go:1046	0x55cb16		488b942408040000	MOVQ 0x408(SP), DX					
  p384_fiat64.go:1046	0x55cb1e		488b9c2478040000	MOVQ 0x478(SP), BX					
  p384_fiat64.go:1046	0x55cb26		4811da			ADCQ BX, DX						
  p384_fiat64.go:1049	0x55cb29		488b942400040000	MOVQ 0x400(SP), DX					
  p384_fiat64.go:1049	0x55cb31		488b9c2470040000	MOVQ 0x470(SP), BX					
  p384_fiat64.go:1049	0x55cb39		4811da			ADCQ BX, DX						
  p384_fiat64.go:1052	0x55cb3c		488b9424f8030000	MOVQ 0x3f8(SP), DX					
  p384_fiat64.go:1052	0x55cb44		488b9c2460040000	MOVQ 0x460(SP), BX					
  p384_fiat64.go:1052	0x55cb4c		4811da			ADCQ BX, DX						
  p384_fiat64.go:1055	0x55cb4f		488b9424f0030000	MOVQ 0x3f0(SP), DX					
  p384_fiat64.go:1055	0x55cb57		488b9c2458040000	MOVQ 0x458(SP), BX					
  p384_fiat64.go:1055	0x55cb5f		4811da			ADCQ BX, DX						
  p384_fiat64.go:1058	0x55cb62		488b9424e8030000	MOVQ 0x3e8(SP), DX					
  p384_fiat64.go:1058	0x55cb6a		488b9c2450040000	MOVQ 0x450(SP), BX					
  p384_fiat64.go:1058	0x55cb72		4811da			ADCQ BX, DX						
  p384_fiat64.go:1115	0x55cb75		4883d100		ADCQ $0x0, CX						
  p384_fiat64.go:1115	0x55cb79		48898c2460030000	MOVQ CX, 0x360(SP)					
  p384_fiat64.go:1136	0x55cb81		488b942430030000	MOVQ 0x330(SP), DX					
  p384_fiat64.go:1136	0x55cb89		488b9c2490040000	MOVQ 0x490(SP), BX					
  p384_fiat64.go:1136	0x55cb91		4801da			ADDQ BX, DX						
  p384_fiat64.go:1136	0x55cb94		4889942418030000	MOVQ DX, 0x318(SP)					
  p384_fiat64.go:1139	0x55cb9c		488b9c2428030000	MOVQ 0x328(SP), BX					
  p384_fiat64.go:1139	0x55cba4		488bb42438040000	MOVQ 0x438(SP), SI					
  p384_fiat64.go:1139	0x55cbac		4811f3			ADCQ SI, BX						
  p384_fiat64.go:1139	0x55cbaf		48899c2410030000	MOVQ BX, 0x310(SP)					
  p384_fiat64.go:1142	0x55cbb7		488bb42438030000	MOVQ 0x338(SP), SI					
  p384_fiat64.go:1142	0x55cbbf		488bbc2448030000	MOVQ 0x348(SP), DI					
  p384_fiat64.go:1142	0x55cbc7		4811fe			ADCQ DI, SI						
  p384_fiat64.go:1142	0x55cbca		4889b42408030000	MOVQ SI, 0x308(SP)					
  p384_fiat64.go:1145	0x55cbd2		488bbc2440030000	MOVQ 0x340(SP), DI					
  p384_fiat64.go:1145	0x55cbda		4c8bac2450030000	MOVQ 0x350(SP), R13					
  p384_fiat64.go:1145	0x55cbe2		4c11ef			ADCQ R13, DI						
  p384_fiat64.go:1145	0x55cbe5		4889bc2400030000	MOVQ DI, 0x300(SP)					
  p384_fiat64.go:1148	0x55cbed		4c8bbc2440020000	MOVQ 0x240(SP), R15					
  p384_fiat64.go:1148	0x55cbf5		4c8bac2458030000	MOVQ 0x358(SP), R13					
  p384_fiat64.go:1148	0x55cbfd		4d11ef			ADCQ R13, R15						
  p384_fiat64.go:1148	0x55cc00		4c89bc24f8020000	MOVQ R15, 0x2f8(SP)					
  p384_fiat64.go:1149	0x55cc08		4c8bac2440010000	MOVQ 0x140(SP), R13					
  p384_fiat64.go:1149	0x55cc10		4983d500		ADCQ $0x0, R13						
  p384_fiat64.go:1149	0x55cc14		4c89ac24f0020000	MOVQ R13, 0x2f0(SP)					
  p384_fiat64.go:1152	0x55cc1c		488b8c2420030000	MOVQ 0x320(SP), CX					
  p384_fiat64.go:1152	0x55cc24		4801c1			ADDQ AX, CX						
  p384_fiat64.go:1155	0x55cc27		4c11da			ADCQ R11, DX						
  p384_fiat64.go:1155	0x55cc2a		48899424e8020000	MOVQ DX, 0x2e8(SP)					
  p384_fiat64.go:1158	0x55cc32		4c11c3			ADCQ R8, BX						
  p384_fiat64.go:1161	0x55cc35		4c11d6			ADCQ R10, SI						
  p384_fiat64.go:1164	0x55cc38		4c11cf			ADCQ R9, DI						
  p384_fiat64.go:1167	0x55cc3b		4d11e7			ADCQ R12, R15						
  p384_fiat64.go:1170	0x55cc3e		4c8ba42460030000	MOVQ 0x360(SP), R12					
  p384_fiat64.go:1170	0x55cc46		4d11e5			ADCQ R12, R13						
  p384_fiat64.go:1172	0x55cc49		4889c8			MOVQ CX, AX						
  p384_fiat64.go:1172	0x55cc4c		49bc0100000001000000	MOVQ $0x100000001, R12					
  p384_fiat64.go:1172	0x55cc56		49f7e4			MULQ R12						
  p384_fiat64.go:1172	0x55cc59		48898424e0020000	MOVQ AX, 0x2e0(SP)					
  p384_fiat64.go:1181	0x55cc61		48c7c2ffffffff		MOVQ $-0x1, DX						
  p384_fiat64.go:1181	0x55cc68		48f7e2			MULQ DX							
  p384_fiat64.go:1178	0x55cc6b		48898424d8020000	MOVQ AX, 0x2d8(SP)					
  p384_fiat64.go:1181	0x55cc73		48899424d0020000	MOVQ DX, 0x2d0(SP)					
  p384_fiat64.go:1184	0x55cc7b		488b8424e0020000	MOVQ 0x2e0(SP), AX					
  p384_fiat64.go:1184	0x55cc83		49c7c4feffffff		MOVQ $-0x2, R12						
  p384_fiat64.go:1184	0x55cc8a		49f7e4			MULQ R12						
  p384_fiat64.go:1184	0x55cc8d		48899424c0020000	MOVQ DX, 0x2c0(SP)					
  p384_fiat64.go:1184	0x55cc95		48898424c8020000	MOVQ AX, 0x2c8(SP)					
  p384_fiat64.go:1187	0x55cc9d		488b8424e0020000	MOVQ 0x2e0(SP), AX					
  p384_fiat64.go:1187	0x55cca5		49bc00000000ffffffff	MOVQ $0xffffffff00000000, R12				
  p384_fiat64.go:1187	0x55ccaf		49f7e4			MULQ R12						
  p384_fiat64.go:1187	0x55ccb2		48899424a8020000	MOVQ DX, 0x2a8(SP)					
  p384_fiat64.go:1187	0x55ccba		48898424b0020000	MOVQ AX, 0x2b0(SP)					
  p384_fiat64.go:1190	0x55ccc2		488b8424e0020000	MOVQ 0x2e0(SP), AX					
  p384_fiat64.go:1190	0x55ccca		41bcffffffff		MOVL $-0x1, R12						
  p384_fiat64.go:1190	0x55ccd0		49f7e4			MULQ R12						
  p384_fiat64.go:1193	0x55ccd3		4c8ba424b0020000	MOVQ 0x2b0(SP), R12					
  p384_fiat64.go:1193	0x55ccdb		4c01e2			ADDQ R12, DX						
  p384_fiat64.go:1196	0x55ccde		4c8ba424a8020000	MOVQ 0x2a8(SP), R12					
  p384_fiat64.go:1196	0x55cce6		4c8b8c24c8020000	MOVQ 0x2c8(SP), R9					
  p384_fiat64.go:1196	0x55ccee		4d11cc			ADCQ R9, R12						
  p384_fiat64.go:1199	0x55ccf1		4c8b8c24c0020000	MOVQ 0x2c0(SP), R9					
  p384_fiat64.go:1199	0x55ccf9		4c8b9424d8020000	MOVQ 0x2d8(SP), R10					
  p384_fiat64.go:1199	0x55cd01		4d11d1			ADCQ R10, R9						
  p384_fiat64.go:1202	0x55cd04		4c8b8424d0020000	MOVQ 0x2d0(SP), R8					
  p384_fiat64.go:1202	0x55cd0c		4d11d0			ADCQ R10, R8						
  p384_fiat64.go:1205	0x55cd0f		4c8b9c24d0020000	MOVQ 0x2d0(SP), R11					
  p384_fiat64.go:1205	0x55cd17		4d11da			ADCQ R11, R10						
  p384_fiat64.go:1206	0x55cd1a		4983d300		ADCQ $0x0, R11						
  p384_fiat64.go:1208	0x55cd1e		4801c1			ADDQ AX, CX						
  p384_fiat64.go:1211	0x55cd21		488b8424e8020000	MOVQ 0x2e8(SP), AX					
  p384_fiat64.go:1211	0x55cd29		4811d0			ADCQ DX, AX						
  p384_fiat64.go:1211	0x55cd2c		48898424a0020000	MOVQ AX, 0x2a0(SP)					
  p384_fiat64.go:1214	0x55cd34		4911dc			ADCQ BX, R12						
  p384_fiat64.go:1214	0x55cd37		4c89a42498020000	MOVQ R12, 0x298(SP)					
  p384_fiat64.go:1217	0x55cd3f		4911f1			ADCQ SI, R9						
  p384_fiat64.go:1217	0x55cd42		4c898c2488020000	MOVQ R9, 0x288(SP)					
  p384_fiat64.go:1220	0x55cd4a		4911f8			ADCQ DI, R8						
  p384_fiat64.go:1220	0x55cd4d		4c89842480020000	MOVQ R8, 0x280(SP)					
  p384_fiat64.go:1223	0x55cd55		4d11fa			ADCQ R15, R10						
  p384_fiat64.go:1223	0x55cd58		4c89942478020000	MOVQ R10, 0x278(SP)					
  p384_fiat64.go:1226	0x55cd60		4d11eb			ADCQ R13, R11						
  p384_fiat64.go:1226	0x55cd63		4c899c2470020000	MOVQ R11, 0x270(SP)					
  p384_fiat64.go:1226	0x55cd6b		0f92c1			SETB CL							
  p384_fiat64.go:1226	0x55cd6e		0fb6c9			MOVZX CL, CX						
  p384_fiat64.go:1152	0x55cd71		488b942420030000	MOVQ 0x320(SP), DX					
  p384_fiat64.go:1152	0x55cd79		488b9c2490030000	MOVQ 0x390(SP), BX					
  p384_fiat64.go:1152	0x55cd81		4801da			ADDQ BX, DX						
  p384_fiat64.go:1155	0x55cd84		488b942418030000	MOVQ 0x318(SP), DX					
  p384_fiat64.go:1155	0x55cd8c		488b9c2488030000	MOVQ 0x388(SP), BX					
  p384_fiat64.go:1155	0x55cd94		4811da			ADCQ BX, DX						
  p384_fiat64.go:1158	0x55cd97		488b942410030000	MOVQ 0x310(SP), DX					
  p384_fiat64.go:1158	0x55cd9f		488b9c2480030000	MOVQ 0x380(SP), BX					
  p384_fiat64.go:1158	0x55cda7		4811da			ADCQ BX, DX						
  p384_fiat64.go:1161	0x55cdaa		488b942408030000	MOVQ 0x308(SP), DX					
  p384_fiat64.go:1161	0x55cdb2		488b9c2478030000	MOVQ 0x378(SP), BX					
  p384_fiat64.go:1161	0x55cdba		4811da			ADCQ BX, DX						
  p384_fiat64.go:1164	0x55cdbd		488b942400030000	MOVQ 0x300(SP), DX					
  p384_fiat64.go:1164	0x55cdc5		488b9c2470030000	MOVQ 0x370(SP), BX					
  p384_fiat64.go:1164	0x55cdcd		4811da			ADCQ BX, DX						
  p384_fiat64.go:1167	0x55cdd0		488b9424f8020000	MOVQ 0x2f8(SP), DX					
  p384_fiat64.go:1167	0x55cdd8		488b9c2468030000	MOVQ 0x368(SP), BX					
  p384_fiat64.go:1167	0x55cde0		4811da			ADCQ BX, DX						
  p384_fiat64.go:1170	0x55cde3		488b9424f0020000	MOVQ 0x2f0(SP), DX					
  p384_fiat64.go:1170	0x55cdeb		488b9c2460030000	MOVQ 0x360(SP), BX					
  p384_fiat64.go:1170	0x55cdf3		4811da			ADCQ BX, DX						
  p384_fiat64.go:1227	0x55cdf6		4883d100		ADCQ $0x0, CX						
  p384_fiat64.go:1227	0x55cdfa		48898c2468020000	MOVQ CX, 0x268(SP)					
  p384_fiat64.go:1248	0x55ce02		488b942430020000	MOVQ 0x230(SP), DX					
  p384_fiat64.go:1248	0x55ce0a		488b9c24d0040000	MOVQ 0x4d0(SP), BX					
  p384_fiat64.go:1248	0x55ce12		4801da			ADDQ BX, DX						
  p384_fiat64.go:1248	0x55ce15		4889942420020000	MOVQ DX, 0x220(SP)					
  p384_fiat64.go:1251	0x55ce1d		488b9c2428020000	MOVQ 0x228(SP), BX					
  p384_fiat64.go:1251	0x55ce25		488bb42438020000	MOVQ 0x238(SP), SI					
  p384_fiat64.go:1251	0x55ce2d		4811f3			ADCQ SI, BX						
  p384_fiat64.go:1251	0x55ce30		48899c2418020000	MOVQ BX, 0x218(SP)					
  p384_fiat64.go:1254	0x55ce38		488bb42450030000	MOVQ 0x350(SP), SI					
  p384_fiat64.go:1254	0x55ce40		488bbc2440040000	MOVQ 0x440(SP), DI					
  p384_fiat64.go:1254	0x55ce48		4811fe			ADCQ DI, SI						
  p384_fiat64.go:1254	0x55ce4b		4889b42410020000	MOVQ SI, 0x210(SP)					
  p384_fiat64.go:1257	0x55ce53		488bbc2440020000	MOVQ 0x240(SP), DI					
  p384_fiat64.go:1257	0x55ce5b		4c8bac2450020000	MOVQ 0x250(SP), R13					
  p384_fiat64.go:1257	0x55ce63		4c11ef			ADCQ R13, DI						
  p384_fiat64.go:1257	0x55ce66		4889bc2408020000	MOVQ DI, 0x208(SP)					
  p384_fiat64.go:1260	0x55ce6e		4c8bac2450010000	MOVQ 0x150(SP), R13					
  p384_fiat64.go:1260	0x55ce76		4c8bbc2448020000	MOVQ 0x248(SP), R15					
  p384_fiat64.go:1260	0x55ce7e		4d11ef			ADCQ R13, R15						
  p384_fiat64.go:1260	0x55ce81		4c89bc2400020000	MOVQ R15, 0x200(SP)					
  p384_fiat64.go:1261	0x55ce89		4c8bac2458020000	MOVQ 0x258(SP), R13					
  p384_fiat64.go:1261	0x55ce91		4983d500		ADCQ $0x0, R13						
  p384_fiat64.go:1261	0x55ce95		4c89ac24f8010000	MOVQ R13, 0x1f8(SP)					
  p384_fiat64.go:1264	0x55ce9d		488b4c2410		MOVQ 0x10(SP), CX					
  p384_fiat64.go:1264	0x55cea2		4801c8			ADDQ CX, AX						
  p384_fiat64.go:1264	0x55cea5		48898424f0010000	MOVQ AX, 0x1f0(SP)					
  p384_fiat64.go:1267	0x55cead		4c11e2			ADCQ R12, DX						
  p384_fiat64.go:1267	0x55ceb0		48899424e8010000	MOVQ DX, 0x1e8(SP)					
  p384_fiat64.go:1270	0x55ceb8		4c11cb			ADCQ R9, BX						
  p384_fiat64.go:1273	0x55cebb		4c11c6			ADCQ R8, SI						
  p384_fiat64.go:1276	0x55cebe		4c11d7			ADCQ R10, DI						
  p384_fiat64.go:1279	0x55cec1		4d11df			ADCQ R11, R15						
  p384_fiat64.go:1282	0x55cec4		4c8b9c2468020000	MOVQ 0x268(SP), R11					
  p384_fiat64.go:1282	0x55cecc		4d11dd			ADCQ R11, R13						
  p384_fiat64.go:1284	0x55cecf		49bb0100000001000000	MOVQ $0x100000001, R11					
  p384_fiat64.go:1284	0x55ced9		49f7e3			MULQ R11						
  p384_fiat64.go:1284	0x55cedc		48898424e0010000	MOVQ AX, 0x1e0(SP)					
  p384_fiat64.go:1293	0x55cee4		48c7c2ffffffff		MOVQ $-0x1, DX						
  p384_fiat64.go:1293	0x55ceeb		48f7e2			MULQ DX							
  p384_fiat64.go:1287	0x55ceee		48898424d8010000	MOVQ AX, 0x1d8(SP)					
  p384_fiat64.go:1287	0x55cef6		48899424d0010000	MOVQ DX, 0x1d0(SP)					
  p384_fiat64.go:1296	0x55cefe		488b8424e0010000	MOVQ 0x1e0(SP), AX					
  p384_fiat64.go:1296	0x55cf06		49c7c3feffffff		MOVQ $-0x2, R11						
  p384_fiat64.go:1296	0x55cf0d		49f7e3			MULQ R11						
  p384_fiat64.go:1296	0x55cf10		48899424c0010000	MOVQ DX, 0x1c0(SP)					
  p384_fiat64.go:1296	0x55cf18		48898424c8010000	MOVQ AX, 0x1c8(SP)					
  p384_fiat64.go:1299	0x55cf20		488b8424e0010000	MOVQ 0x1e0(SP), AX					
  p384_fiat64.go:1299	0x55cf28		49bb00000000ffffffff	MOVQ $0xffffffff00000000, R11				
  p384_fiat64.go:1299	0x55cf32		49f7e3			MULQ R11						
  p384_fiat64.go:1299	0x55cf35		48899424b0010000	MOVQ DX, 0x1b0(SP)					
  p384_fiat64.go:1299	0x55cf3d		48898424b8010000	MOVQ AX, 0x1b8(SP)					
  p384_fiat64.go:1302	0x55cf45		488b8424e0010000	MOVQ 0x1e0(SP), AX					
  p384_fiat64.go:1302	0x55cf4d		41bbffffffff		MOVL $-0x1, R11						
  p384_fiat64.go:1302	0x55cf53		49f7e3			MULQ R11						
  p384_fiat64.go:1305	0x55cf56		4c8b9c24b8010000	MOVQ 0x1b8(SP), R11					
  p384_fiat64.go:1305	0x55cf5e		4c01da			ADDQ R11, DX						
  p384_fiat64.go:1308	0x55cf61		4c8b9c24b0010000	MOVQ 0x1b0(SP), R11					
  p384_fiat64.go:1308	0x55cf69		4c8b9424c8010000	MOVQ 0x1c8(SP), R10					
  p384_fiat64.go:1308	0x55cf71		4d11d3			ADCQ R10, R11						
  p384_fiat64.go:1311	0x55cf74		4c8b9424c0010000	MOVQ 0x1c0(SP), R10					
  p384_fiat64.go:1311	0x55cf7c		4c8b8424d8010000	MOVQ 0x1d8(SP), R8					
  p384_fiat64.go:1311	0x55cf84		4d11c2			ADCQ R8, R10						
  p384_fiat64.go:1314	0x55cf87		4c8b8c24d0010000	MOVQ 0x1d0(SP), R9					
  p384_fiat64.go:1314	0x55cf8f		4d11c8			ADCQ R9, R8						
  p384_fiat64.go:1317	0x55cf92		4c8ba424d8010000	MOVQ 0x1d8(SP), R12					
  p384_fiat64.go:1317	0x55cf9a		4d11cc			ADCQ R9, R12						
  p384_fiat64.go:1318	0x55cf9d		4983d100		ADCQ $0x0, R9						
  p384_fiat64.go:1320	0x55cfa1		488b8c24f0010000	MOVQ 0x1f0(SP), CX					
  p384_fiat64.go:1320	0x55cfa9		4801c1			ADDQ AX, CX						
  p384_fiat64.go:1323	0x55cfac		488b8424e8010000	MOVQ 0x1e8(SP), AX					
  p384_fiat64.go:1323	0x55cfb4		4811d0			ADCQ DX, AX						
  p384_fiat64.go:1323	0x55cfb7		4889842498010000	MOVQ AX, 0x198(SP)					
  p384_fiat64.go:1326	0x55cfbf		4911db			ADCQ BX, R11						
  p384_fiat64.go:1326	0x55cfc2		4c899c2490010000	MOVQ R11, 0x190(SP)					
  p384_fiat64.go:1329	0x55cfca		4911f2			ADCQ SI, R10						
  p384_fiat64.go:1329	0x55cfcd		4c89942488010000	MOVQ R10, 0x188(SP)					
  p384_fiat64.go:1332	0x55cfd5		4911f8			ADCQ DI, R8						
  p384_fiat64.go:1332	0x55cfd8		4c89842480010000	MOVQ R8, 0x180(SP)					
  p384_fiat64.go:1335	0x55cfe0		4d11fc			ADCQ R15, R12						
  p384_fiat64.go:1335	0x55cfe3		4c89a42478010000	MOVQ R12, 0x178(SP)					
  p384_fiat64.go:1338	0x55cfeb		4d11e9			ADCQ R13, R9						
  p384_fiat64.go:1338	0x55cfee		4c898c2470010000	MOVQ R9, 0x170(SP)					
  p384_fiat64.go:1338	0x55cff6		0f92c1			SETB CL							
  p384_fiat64.go:1338	0x55cff9		0fb6c9			MOVZX CL, CX						
  p384_fiat64.go:1264	0x55cffc		488b9424a0020000	MOVQ 0x2a0(SP), DX					
  p384_fiat64.go:1264	0x55d004		488b5c2410		MOVQ 0x10(SP), BX					
  p384_fiat64.go:1264	0x55d009		4801da			ADDQ BX, DX						
  p384_fiat64.go:1267	0x55d00c		488b942420020000	MOVQ 0x220(SP), DX					
  p384_fiat64.go:1267	0x55d014		488b9c2498020000	MOVQ 0x298(SP), BX					
  p384_fiat64.go:1267	0x55d01c		4811da			ADCQ BX, DX						
  p384_fiat64.go:1270	0x55d01f		488b942418020000	MOVQ 0x218(SP), DX					
  p384_fiat64.go:1270	0x55d027		488b9c2488020000	MOVQ 0x288(SP), BX					
  p384_fiat64.go:1270	0x55d02f		4811da			ADCQ BX, DX						
  p384_fiat64.go:1273	0x55d032		488b942410020000	MOVQ 0x210(SP), DX					
  p384_fiat64.go:1273	0x55d03a		488b9c2480020000	MOVQ 0x280(SP), BX					
  p384_fiat64.go:1273	0x55d042		4811da			ADCQ BX, DX						
  p384_fiat64.go:1276	0x55d045		488b942408020000	MOVQ 0x208(SP), DX					
  p384_fiat64.go:1276	0x55d04d		488b9c2478020000	MOVQ 0x278(SP), BX					
  p384_fiat64.go:1276	0x55d055		4811da			ADCQ BX, DX						
  p384_fiat64.go:1279	0x55d058		488b942400020000	MOVQ 0x200(SP), DX					
  p384_fiat64.go:1279	0x55d060		488b9c2470020000	MOVQ 0x270(SP), BX					
  p384_fiat64.go:1279	0x55d068		4811da			ADCQ BX, DX						
  p384_fiat64.go:1282	0x55d06b		488b9424f8010000	MOVQ 0x1f8(SP), DX					
  p384_fiat64.go:1282	0x55d073		488b9c2468020000	MOVQ 0x268(SP), BX					
  p384_fiat64.go:1282	0x55d07b		4811da			ADCQ BX, DX						
  p384_fiat64.go:1339	0x55d07e		4883d100		ADCQ $0x0, CX						
  p384_fiat64.go:1339	0x55d082		48898c2468010000	MOVQ CX, 0x168(SP)					
  p384_fiat64.go:1360	0x55d08a		488b942428010000	MOVQ 0x128(SP), DX					
  p384_fiat64.go:1360	0x55d092		488b5c2470		MOVQ 0x70(SP), BX					
  p384_fiat64.go:1360	0x55d097		4801da			ADDQ BX, DX						
  p384_fiat64.go:1360	0x55d09a		4889942420010000	MOVQ DX, 0x120(SP)					
  p384_fiat64.go:1363	0x55d0a2		488b9c2448040000	MOVQ 0x448(SP), BX					
  p384_fiat64.go:1363	0x55d0aa		488b742468		MOVQ 0x68(SP), SI					
  p384_fiat64.go:1363	0x55d0af		4811f3			ADCQ SI, BX						
  p384_fiat64.go:1363	0x55d0b2		48899c2410010000	MOVQ BX, 0x110(SP)					
  p384_fiat64.go:1366	0x55d0ba		488bb42438010000	MOVQ 0x138(SP), SI					
  p384_fiat64.go:1366	0x55d0c2		488bbc2458030000	MOVQ 0x358(SP), DI					
  p384_fiat64.go:1366	0x55d0ca		4811fe			ADCQ DI, SI						
  p384_fiat64.go:1366	0x55d0cd		4889b42408010000	MOVQ SI, 0x108(SP)					
  p384_fiat64.go:1369	0x55d0d5		488bbc2440010000	MOVQ 0x140(SP), DI					
  p384_fiat64.go:1369	0x55d0dd		4c8bac2450010000	MOVQ 0x150(SP), R13					
  p384_fiat64.go:1369	0x55d0e5		4c11ef			ADCQ R13, DI						
  p384_fiat64.go:1369	0x55d0e8		4889bc2400010000	MOVQ DI, 0x100(SP)					
  p384_fiat64.go:1372	0x55d0f0		4c8bac2460010000	MOVQ 0x160(SP), R13					
  p384_fiat64.go:1372	0x55d0f8		4c8bbc2458020000	MOVQ 0x258(SP), R15					
  p384_fiat64.go:1372	0x55d100		4d11fd			ADCQ R15, R13						
  p384_fiat64.go:1372	0x55d103		4c89ac24f8000000	MOVQ R13, 0xf8(SP)					
  p384_fiat64.go:1373	0x55d10b		4c8bbc2458010000	MOVQ 0x158(SP), R15					
  p384_fiat64.go:1373	0x55d113		4983d700		ADCQ $0x0, R15						
  p384_fiat64.go:1373	0x55d117		4c89bc24f0000000	MOVQ R15, 0xf0(SP)					
  p384_fiat64.go:1376	0x55d11f		488b8c2430010000	MOVQ 0x130(SP), CX					
  p384_fiat64.go:1376	0x55d127		4801c1			ADDQ AX, CX						
  p384_fiat64.go:1379	0x55d12a		4c11da			ADCQ R11, DX						
  p384_fiat64.go:1379	0x55d12d		48899424e0000000	MOVQ DX, 0xe0(SP)					
  p384_fiat64.go:1382	0x55d135		4c11d3			ADCQ R10, BX						
  p384_fiat64.go:1385	0x55d138		4c11c6			ADCQ R8, SI						
  p384_fiat64.go:1388	0x55d13b		4c11e7			ADCQ R12, DI						
  p384_fiat64.go:1391	0x55d13e		4d11cd			ADCQ R9, R13						
  p384_fiat64.go:1394	0x55d141		4c8b8c2468010000	MOVQ 0x168(SP), R9					
  p384_fiat64.go:1394	0x55d149		4d11cf			ADCQ R9, R15						
  p384_fiat64.go:1396	0x55d14c		4889c8			MOVQ CX, AX						
  p384_fiat64.go:1396	0x55d14f		49b90100000001000000	MOVQ $0x100000001, R9					
  p384_fiat64.go:1396	0x55d159		49f7e1			MULQ R9							
  p384_fiat64.go:1399	0x55d15c		48c7c2ffffffff		MOVQ $-0x1, DX						
  p384_fiat64.go:1396	0x55d163		4989c1			MOVQ AX, R9						
  p384_fiat64.go:1399	0x55d166		48f7e2			MULQ DX							
  p384_fiat64.go:1405	0x55d169		48898424d0000000	MOVQ AX, 0xd0(SP)					
  p384_fiat64.go:1405	0x55d171		48899424c8000000	MOVQ DX, 0xc8(SP)					
  p384_fiat64.go:1408	0x55d179		4c89c8			MOVQ R9, AX						
  p384_fiat64.go:1408	0x55d17c		49c7c4feffffff		MOVQ $-0x2, R12						
  p384_fiat64.go:1408	0x55d183		49f7e4			MULQ R12						
  p384_fiat64.go:1408	0x55d186		48899424c0000000	MOVQ DX, 0xc0(SP)					
  p384_fiat64.go:1408	0x55d18e		4989c4			MOVQ AX, R12						
  p384_fiat64.go:1411	0x55d191		4c89c8			MOVQ R9, AX						
  p384_fiat64.go:1411	0x55d194		49b800000000ffffffff	MOVQ $0xffffffff00000000, R8				
  p384_fiat64.go:1411	0x55d19e		49f7e0			MULQ R8							
  p384_fiat64.go:1411	0x55d1a1		48898424b8000000	MOVQ AX, 0xb8(SP)					
  p384_fiat64.go:1414	0x55d1a9		4c89c8			MOVQ R9, AX						
  p384_fiat64.go:1414	0x55d1ac		41b8ffffffff		MOVL $-0x1, R8						
  p384_fiat64.go:1411	0x55d1b2		4989d1			MOVQ DX, R9						
  p384_fiat64.go:1414	0x55d1b5		49f7e0			MULQ R8							
  p384_fiat64.go:1417	0x55d1b8		4c8b8424b8000000	MOVQ 0xb8(SP), R8					
  p384_fiat64.go:1417	0x55d1c0		4c01c2			ADDQ R8, DX						
  p384_fiat64.go:1420	0x55d1c3		4d11e1			ADCQ R12, R9						
  p384_fiat64.go:1423	0x55d1c6		4c8b8424c0000000	MOVQ 0xc0(SP), R8					
  p384_fiat64.go:1423	0x55d1ce		4c8ba424d0000000	MOVQ 0xd0(SP), R12					
  p384_fiat64.go:1423	0x55d1d6		4d11e0			ADCQ R12, R8						
  p384_fiat64.go:1426	0x55d1d9		4c8b9424c8000000	MOVQ 0xc8(SP), R10					
  p384_fiat64.go:1426	0x55d1e1		4d11d4			ADCQ R10, R12						
  p384_fiat64.go:1429	0x55d1e4		4c8b9c24d0000000	MOVQ 0xd0(SP), R11					
  p384_fiat64.go:1429	0x55d1ec		4d11d3			ADCQ R10, R11						
  p384_fiat64.go:1430	0x55d1ef		4983d200		ADCQ $0x0, R10						
  p384_fiat64.go:1432	0x55d1f3		4801c1			ADDQ AX, CX						
  p384_fiat64.go:1435	0x55d1f6		488b8c24e0000000	MOVQ 0xe0(SP), CX					
  p384_fiat64.go:1435	0x55d1fe		4811ca			ADCQ CX, DX						
  p384_fiat64.go:1438	0x55d201		4911d9			ADCQ BX, R9						
  p384_fiat64.go:1441	0x55d204		4911f0			ADCQ SI, R8						
  p384_fiat64.go:1444	0x55d207		4911fc			ADCQ DI, R12						
  p384_fiat64.go:1447	0x55d20a		4d11eb			ADCQ R13, R11						
  p384_fiat64.go:1450	0x55d20d		4d11fa			ADCQ R15, R10						
  p384_fiat64.go:1450	0x55d210		0f92c1			SETB CL							
  p384_fiat64.go:1450	0x55d213		0fb6c9			MOVZX CL, CX						
  p384_fiat64.go:1376	0x55d216		488b9c2430010000	MOVQ 0x130(SP), BX					
  p384_fiat64.go:1376	0x55d21e		488bb42498010000	MOVQ 0x198(SP), SI					
  p384_fiat64.go:1376	0x55d226		4801f3			ADDQ SI, BX						
  p384_fiat64.go:1379	0x55d229		488b9c2420010000	MOVQ 0x120(SP), BX					
  p384_fiat64.go:1379	0x55d231		488bb42490010000	MOVQ 0x190(SP), SI					
  p384_fiat64.go:1379	0x55d239		4811f3			ADCQ SI, BX						
  p384_fiat64.go:1382	0x55d23c		488b9c2410010000	MOVQ 0x110(SP), BX					
  p384_fiat64.go:1382	0x55d244		488bb42488010000	MOVQ 0x188(SP), SI					
  p384_fiat64.go:1382	0x55d24c		4811f3			ADCQ SI, BX						
  p384_fiat64.go:1385	0x55d24f		488b9c2408010000	MOVQ 0x108(SP), BX					
  p384_fiat64.go:1385	0x55d257		488bb42480010000	MOVQ 0x180(SP), SI					
  p384_fiat64.go:1385	0x55d25f		4811f3			ADCQ SI, BX						
  p384_fiat64.go:1388	0x55d262		488b9c2400010000	MOVQ 0x100(SP), BX					
  p384_fiat64.go:1388	0x55d26a		488bb42478010000	MOVQ 0x178(SP), SI					
  p384_fiat64.go:1388	0x55d272		4811f3			ADCQ SI, BX						
  p384_fiat64.go:1391	0x55d275		488b9c24f8000000	MOVQ 0xf8(SP), BX					
  p384_fiat64.go:1391	0x55d27d		488bb42470010000	MOVQ 0x170(SP), SI					
  p384_fiat64.go:1391	0x55d285		4811f3			ADCQ SI, BX						
  p384_fiat64.go:1394	0x55d288		488b9c24f0000000	MOVQ 0xf0(SP), BX					
  p384_fiat64.go:1394	0x55d290		488bb42468010000	MOVQ 0x168(SP), SI					
  p384_fiat64.go:1394	0x55d298		4811f3			ADCQ SI, BX						
  p384_fiat64.go:1451	0x55d29b		4883d100		ADCQ $0x0, CX						
  p384_fiat64.go:1454	0x55d29f		bbffffffff		MOVL $-0x1, BX						
  p384_fiat64.go:1454	0x55d2a4		4889d6			MOVQ DX, SI						
  p384_fiat64.go:1454	0x55d2a7		4829da			SUBQ BX, DX						
  p384_fiat64.go:1457	0x55d2aa		48bb00000000ffffffff	MOVQ $0xffffffff00000000, BX				
  p384_fiat64.go:1457	0x55d2b4		4c89cf			MOVQ R9, DI						
  p384_fiat64.go:1457	0x55d2b7		4919d9			SBBQ BX, R9						
  p384_fiat64.go:1460	0x55d2ba		4c89c3			MOVQ R8, BX						
  p384_fiat64.go:1460	0x55d2bd		4983d8fe		SBBQ $-0x2, R8						
  p384_fiat64.go:1463	0x55d2c1		4d89e5			MOVQ R12, R13						
  p384_fiat64.go:1463	0x55d2c4		4983dcff		SBBQ $-0x1, R12						
  p384_fiat64.go:1466	0x55d2c8		4d89df			MOVQ R11, R15						
  p384_fiat64.go:1466	0x55d2cb		4983dbff		SBBQ $-0x1, R11						
  p384_fiat64.go:1469	0x55d2cf		4c89d0			MOVQ R10, AX						
  p384_fiat64.go:1469	0x55d2d2		4983daff		SBBQ $-0x1, R10						
  p384_fiat64.go:1471	0x55d2d6		4883d900		SBBQ $0x0, CX						
  p384_fiat64.go:1471	0x55d2da		0f92c1			SETB CL							
  p384_fiat64.go:1471	0x55d2dd		0fb6c9			MOVZX CL, CX						
  p384_fiat64.go:72	0x55d2e0		48f7d9			NEGQ CX							
  p384_fiat64.go:72	0x55d2e3		48898c24d8040000	MOVQ CX, 0x4d8(SP)					
  p384_fiat64.go:73	0x55d2eb		4821ce			ANDQ CX, SI						
  p384_fiat64.go:73	0x55d2ee		48f7d1			NOTQ CX							
  p384_fiat64.go:73	0x55d2f1		4821ca			ANDQ CX, DX						
  p384_fiat64.go:73	0x55d2f4		4809f2			ORQ SI, DX						
  p384_fiat64.go:1484	0x55d2f7		488bb424f8040000	MOVQ 0x4f8(SP), SI					
  p384_fiat64.go:1484	0x55d2ff		488916			MOVQ DX, 0(SI)						
  p384_fiat64.go:73	0x55d302		488b9424d8040000	MOVQ 0x4d8(SP), DX					
  p384_fiat64.go:73	0x55d30a		4821d7			ANDQ DX, DI						
  p384_fiat64.go:73	0x55d30d		4921c9			ANDQ CX, R9						
  p384_fiat64.go:73	0x55d310		4909f9			ORQ DI, R9						
  p384_fiat64.go:1485	0x55d313		4c894e08		MOVQ R9, 0x8(SI)					
  p384_fiat64.go:73	0x55d317		4821d3			ANDQ DX, BX						
  p384_fiat64.go:73	0x55d31a		4921c8			ANDQ CX, R8						
  p384_fiat64.go:73	0x55d31d		4909d8			ORQ BX, R8						
  p384_fiat64.go:1486	0x55d320		4c894610		MOVQ R8, 0x10(SI)					
  p384_fiat64.go:73	0x55d324		4921d5			ANDQ DX, R13						
  p384_fiat64.go:73	0x55d327		4921cc			ANDQ CX, R12						
  p384_fiat64.go:73	0x55d32a		4d09ec			ORQ R13, R12						
  p384_fiat64.go:1487	0x55d32d		4c896618		MOVQ R12, 0x18(SI)					
  p384_fiat64.go:73	0x55d331		4921d7			ANDQ DX, R15						
  p384_fiat64.go:73	0x55d334		4921cb			ANDQ CX, R11						
  p384_fiat64.go:73	0x55d337		4d09fb			ORQ R15, R11						
  p384_fiat64.go:1488	0x55d33a		4c895e20		MOVQ R11, 0x20(SI)					
  p384_fiat64.go:73	0x55d33e		4821c2			ANDQ AX, DX						
  p384_fiat64.go:73	0x55d341		4c21d1			ANDQ R10, CX						
  p384_fiat64.go:73	0x55d344		4809ca			ORQ CX, DX						
  p384_fiat64.go:1489	0x55d347		48895628		MOVQ DX, 0x28(SI)					
  p384_fiat64.go:1490	0x55d34b		c9			LEAVE							
  p384_fiat64.go:1490	0x55d34c		c3			RET							
  p384_fiat64.go:795	0x55d34d		4889442408		MOVQ AX, 0x8(SP)					
  p384_fiat64.go:795	0x55d352		48895c2410		MOVQ BX, 0x10(SP)					
  p384_fiat64.go:795	0x55d357		e844c3f2ff		CALL runtime.morestack_noctxt.abi0(SB)			
  p384_fiat64.go:795	0x55d35c		488b442408		MOVQ 0x8(SP), AX					
  p384_fiat64.go:795	0x55d361		488b5c2410		MOVQ 0x10(SP), BX					
  p384_fiat64.go:795	0x55d366		e995efffff		JMP crypto/internal/fips140/nistec/fiat.p384Square(SB)	
