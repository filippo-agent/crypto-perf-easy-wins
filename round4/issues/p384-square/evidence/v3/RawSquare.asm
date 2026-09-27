TEXT example.com/p384issue.RawSquare(SB) /home/exedev/crypto-audit/round4/issues/p384-square/raw.go
  raw.go:707		0x5f1600		4c8da42460fcffff	LEAQ 0xfffffc60(SP), R12		
  raw.go:707		0x5f1608		4d3b6610		CMPQ R12, 0x10(R14)			
  raw.go:707		0x5f160c		0f86490e0000		JBE 0x5f245b				
  raw.go:707		0x5f1612		55			PUSHQ BP				
  raw.go:707		0x5f1613		4889e5			MOVQ SP, BP				
  raw.go:707		0x5f1616		4881ec18040000		SUBQ $0x418, SP				
  raw.go:1402		0x5f161d		4889842428040000	MOVQ AX, 0x428(SP)			
  raw.go:708		0x5f1625		488b4b10		MOVQ 0x10(BX), CX			
  raw.go:728		0x5f1629		488b5308		MOVQ 0x8(BX), DX			
  raw.go:815		0x5f162d		c4e2c3f6f1		MULXQ CX, DI, SI			
  raw.go:815		0x5f1632		4889742450		MOVQ SI, 0x50(SP)			
  raw.go:815		0x5f1637		48897c2458		MOVQ DI, 0x58(SP)			
  raw.go:818		0x5f163c		c462b3f6c2		MULXQ DX, R9, R8			
  raw.go:818		0x5f1641		4c89442440		MOVQ R8, 0x40(SP)			
  raw.go:818		0x5f1646		4c894c2448		MOVQ R9, 0x48(SP)			
  raw.go:728		0x5f164b		4989d2			MOVQ DX, R10				
  raw.go:927		0x5f164e		4889ca			MOVQ CX, DX				
  raw.go:927		0x5f1651		c4629bf6d9		MULXQ CX, R12, R11			
  raw.go:927		0x5f1656		4c899c2488030000	MOVQ R11, 0x388(SP)			
  raw.go:927		0x5f165e		4c89a42490030000	MOVQ R12, 0x390(SP)			
  raw.go:1030		0x5f1666		4c8b6b28		MOVQ 0x28(BX), R13			
  raw.go:806		0x5f166a		4c89ea			MOVQ R13, DX				
  raw.go:806		0x5f166d		c442fbf6fa		MULXQ R10, AX, R15			
  raw.go:806		0x5f1672		4c897c2460		MOVQ R15, 0x60(SP)			
  raw.go:806		0x5f1677		4889442468		MOVQ AX, 0x68(SP)			
  raw.go:1036		0x5f167c		4c8b5b18		MOVQ 0x18(BX), R11			
  raw.go:812		0x5f1680		4c89da			MOVQ R11, DX				
  raw.go:812		0x5f1683		c44283f6e2		MULXQ R10, R15, R12			
  raw.go:1042		0x5f1688		4c89a424b8020000	MOVQ R12, 0x2b8(SP)			
  raw.go:1042		0x5f1690		4c89bc24c0020000	MOVQ R15, 0x2c0(SP)			
  raw.go:924		0x5f1698		c4e29bf6c1		MULXQ CX, R12, AX			
  raw.go:924		0x5f169d		4c89a42498030000	MOVQ R12, 0x398(SP)			
  raw.go:1039		0x5f16a5		48898424c8020000	MOVQ AX, 0x2c8(SP)			
  raw.go:1036		0x5f16ad		c4e29bf6c2		MULXQ DX, R12, AX			
  raw.go:1036		0x5f16b2		48898424d0020000	MOVQ AX, 0x2d0(SP)			
  raw.go:1036		0x5f16ba		4c89a424d8020000	MOVQ R12, 0x2d8(SP)			
  raw.go:1145		0x5f16c2		488b4320		MOVQ 0x20(BX), AX			
  raw.go:1142		0x5f16c6		4889c2			MOVQ AX, DX				
  raw.go:1142		0x5f16c9		c442cbf6e5		MULXQ R13, SI, R12			
  raw.go:1142		0x5f16ce		4c89a42420020000	MOVQ R12, 0x220(SP)			
  raw.go:1257		0x5f16d6		4889b42448010000	MOVQ SI, 0x148(SP)			
  raw.go:1145		0x5f16de		c462cbf6e0		MULXQ AX, SI, R12			
  raw.go:1145		0x5f16e3		4c89a42410020000	MOVQ R12, 0x210(SP)			
  raw.go:1145		0x5f16eb		4889b42418020000	MOVQ SI, 0x218(SP)			
  raw.go:1148		0x5f16f3		c442cbf6e3		MULXQ R11, SI, R12			
  raw.go:1033		0x5f16f8		4889b424e0020000	MOVQ SI, 0x2e0(SP)			
  raw.go:1148		0x5f1700		4c89a42408020000	MOVQ R12, 0x208(SP)			
  raw.go:1151		0x5f1708		c462cbf6e1		MULXQ CX, SI, R12			
  raw.go:921		0x5f170d		4c89a424a0030000	MOVQ R12, 0x3a0(SP)			
  raw.go:1151		0x5f1715		4889b42400020000	MOVQ SI, 0x200(SP)			
  raw.go:1154		0x5f171d		c442cbf6e2		MULXQ R10, SI, R12			
  raw.go:1154		0x5f1722		4c89a424f0010000	MOVQ R12, 0x1f0(SP)			
  raw.go:1154		0x5f172a		4889b424f8010000	MOVQ SI, 0x1f8(SP)			
  raw.go:1157		0x5f1732		488b1b			MOVQ 0(BX), BX				
  raw.go:716		0x5f1735		4889da			MOVQ BX, DX				
  raw.go:716		0x5f1738		c442cbf6e5		MULXQ R13, SI, R12			
  raw.go:1269		0x5f173d		4c89a42420010000	MOVQ R12, 0x120(SP)			
  raw.go:1269		0x5f1745		4889b42428010000	MOVQ SI, 0x128(SP)			
  raw.go:725		0x5f174d		c462c3f6f9		MULXQ CX, DI, R15			
  raw.go:725		0x5f1752		4c89bc24c8030000	MOVQ R15, 0x3c8(SP)			
  raw.go:933		0x5f175a		4889bc2480030000	MOVQ DI, 0x380(SP)			
  raw.go:731		0x5f1762		c462b3f6c2		MULXQ DX, R9, R8			
  raw.go:731		0x5f1767		4c898c2440030000	MOVQ R9, 0x340(SP)			
  raw.go:749		0x5f176f		48ba0100000001000000	MOVQ $0x100000001, DX			
  raw.go:749		0x5f1779		c4c2b3f6d1		MULXQ R9, R9, DX			
  raw.go:758		0x5f177e		48c7c2ffffffff		MOVQ $-0x1, DX				
  raw.go:758		0x5f1785		c4c29bf6d1		MULXQ R9, R12, DX			
  raw.go:755		0x5f178a		48899424a0010000	MOVQ DX, 0x1a0(SP)			
  raw.go:758		0x5f1792		4c89a42498010000	MOVQ R12, 0x198(SP)			
  raw.go:761		0x5f179a		48c7c2feffffff		MOVQ $-0x2, DX				
  raw.go:761		0x5f17a1		c4c29bf6d1		MULXQ R9, R12, DX			
  raw.go:761		0x5f17a6		4889942410010000	MOVQ DX, 0x110(SP)			
  raw.go:761		0x5f17ae		4c89a42440010000	MOVQ R12, 0x140(SP)			
  raw.go:764		0x5f17b6		48ba00000000ffffffff	MOVQ $0xffffffff00000000, DX		
  raw.go:764		0x5f17c0		c4c29bf6d1		MULXQ R9, R12, DX			
  raw.go:764		0x5f17c5		48899424d0000000	MOVQ DX, 0xd0(SP)			
  raw.go:764		0x5f17cd		4c89a424e0000000	MOVQ R12, 0xe0(SP)			
  raw.go:767		0x5f17d5		baffffffff		MOVL $-0x1, DX				
  raw.go:767		0x5f17da		c442ebf6c9		MULXQ R9, DX, R9			
  raw.go:767		0x5f17df		4c898c24b0000000	MOVQ R9, 0xb0(SP)			
  raw.go:767		0x5f17e7		48899424b8000000	MOVQ DX, 0xb8(SP)			
  raw.go:821		0x5f17ef		4889da			MOVQ BX, DX				
  raw.go:821		0x5f17f2		c442b3f6d2		MULXQ R10, R9, R10			
  raw.go:728		0x5f17f7		4c89942470030000	MOVQ R10, 0x370(SP)			
  raw.go:821		0x5f17ff		4c894c2438		MOVQ R9, 0x38(SP)			
  raw.go:1045		0x5f1804		c442cbf6e3		MULXQ R11, SI, R12			
  raw.go:722		0x5f1809		4c89a424f0030000	MOVQ R12, 0x3f0(SP)			
  raw.go:1045		0x5f1811		4889b424b0020000	MOVQ SI, 0x2b0(SP)			
  raw.go:1157		0x5f1819		c4e2e3f6c0		MULXQ AX, BX, AX			
  raw.go:719		0x5f181e		4889842410040000	MOVQ AX, 0x410(SP)			
  raw.go:719		0x5f1826		48895c2408		MOVQ BX, 0x8(SP)			
  raw.go:1254		0x5f182b		4c89ea			MOVQ R13, DX				
  raw.go:1254		0x5f182e		c4e2e3f6c2		MULXQ DX, BX, AX			
  raw.go:1254		0x5f1833		4889842450010000	MOVQ AX, 0x150(SP)			
  raw.go:1254		0x5f183b		48899c2458010000	MOVQ BX, 0x158(SP)			
  raw.go:1260		0x5f1843		4c89da			MOVQ R11, DX				
  raw.go:1260		0x5f1846		c442ebf6dd		MULXQ R13, DX, R11			
  raw.go:1030		0x5f184b		48899424e8020000	MOVQ DX, 0x2e8(SP)			
  raw.go:1260		0x5f1853		4c899c2438010000	MOVQ R11, 0x138(SP)			
  raw.go:1263		0x5f185b		4c89ea			MOVQ R13, DX				
  raw.go:1263		0x5f185e		c4e293f6c9		MULXQ CX, R13, CX			
  raw.go:918		0x5f1863		4c89ac24a8030000	MOVQ R13, 0x3a8(SP)			
  raw.go:1263		0x5f186b		48898c2430010000	MOVQ CX, 0x130(SP)			
  raw.go:1385		0x5f1873		90			NOPL					
  raw.go:1387		0x5f1874		90			NOPL					
  raw.go:1389		0x5f1875		90			NOPL					
  raw.go:1391		0x5f1876		90			NOPL					
  raw.go:1393		0x5f1877		90			NOPL					
  raw.go:1395		0x5f1878		90			NOPL					
  raw.go:734		0x5f1879		4d01c8			ADDQ R9, R8				
  raw.go:737		0x5f187c		4c11d7			ADCQ R10, DI				
  raw.go:740		0x5f187f		4c11fe			ADCQ R15, SI				
  raw.go:743		0x5f1882		488b442408		MOVQ 0x8(SP), AX			
  raw.go:743		0x5f1887		4911c4			ADCQ AX, R12				
  raw.go:746		0x5f188a		488b9c2428010000	MOVQ 0x128(SP), BX			
  raw.go:746		0x5f1892		488b842410040000	MOVQ 0x410(SP), AX			
  raw.go:746		0x5f189a		4811c3			ADCQ AX, BX				
  raw.go:747		0x5f189d		488b842420010000	MOVQ 0x120(SP), AX			
  raw.go:747		0x5f18a5		4883d000		ADCQ $0x0, AX				
  raw.go:747		0x5f18a9		4889842450020000	MOVQ AX, 0x250(SP)			
  raw.go:770		0x5f18b1		4c8b9c24b0000000	MOVQ 0xb0(SP), R11			
  raw.go:770		0x5f18b9		488b8c24e0000000	MOVQ 0xe0(SP), CX			
  raw.go:770		0x5f18c1		4901cb			ADDQ CX, R11				
  raw.go:773		0x5f18c4		488b8c24d0000000	MOVQ 0xd0(SP), CX			
  raw.go:773		0x5f18cc		4c8bac2440010000	MOVQ 0x140(SP), R13			
  raw.go:773		0x5f18d4		4c11e9			ADCQ R13, CX				
  raw.go:776		0x5f18d7		4c8bac2410010000	MOVQ 0x110(SP), R13			
  raw.go:776		0x5f18df		4c8bbc2498010000	MOVQ 0x198(SP), R15			
  raw.go:776		0x5f18e7		4d11fd			ADCQ R15, R13				
  raw.go:779		0x5f18ea		4c8b8c24a0010000	MOVQ 0x1a0(SP), R9			
  raw.go:779		0x5f18f2		4d11cf			ADCQ R9, R15				
  raw.go:782		0x5f18f5		4c8b942498010000	MOVQ 0x198(SP), R10			
  raw.go:782		0x5f18fd		4d11ca			ADCQ R9, R10				
  raw.go:783		0x5f1900		4983d100		ADCQ $0x0, R9				
  raw.go:783		0x5f1904		4c898c24a8000000	MOVQ R9, 0xa8(SP)			
  raw.go:785		0x5f190c		488b842440030000	MOVQ 0x340(SP), AX			
  raw.go:785		0x5f1914		4c8b8c24b8000000	MOVQ 0xb8(SP), R9			
  raw.go:785		0x5f191c		4c01c8			ADDQ R9, AX				
  raw.go:788		0x5f191f		4d11c3			ADCQ R8, R11				
  raw.go:788		0x5f1922		4c899c24a0000000	MOVQ R11, 0xa0(SP)			
  raw.go:791		0x5f192a		4811f9			ADCQ DI, CX				
  raw.go:791		0x5f192d		48898c2498000000	MOVQ CX, 0x98(SP)			
  raw.go:794		0x5f1935		4911f5			ADCQ SI, R13				
  raw.go:794		0x5f1938		4c89ac2490000000	MOVQ R13, 0x90(SP)			
  raw.go:797		0x5f1940		4d11e7			ADCQ R12, R15				
  raw.go:797		0x5f1943		4c89bc2488000000	MOVQ R15, 0x88(SP)			
  raw.go:800		0x5f194b		4911da			ADCQ BX, R10				
  raw.go:800		0x5f194e		4c89942480000000	MOVQ R10, 0x80(SP)			
  raw.go:803		0x5f1956		488b8424a8000000	MOVQ 0xa8(SP), AX			
  raw.go:803		0x5f195e		488b9c2450020000	MOVQ 0x250(SP), BX			
  raw.go:803		0x5f1966		4811d8			ADCQ BX, AX				
  raw.go:803		0x5f1969		4889442478		MOVQ AX, 0x78(SP)			
  raw.go:803		0x5f196e		0f92c3			SETB BL					
  raw.go:803		0x5f1971		0fb6db			MOVZX BL, BX				
  raw.go:803		0x5f1974		48895c2470		MOVQ BX, 0x70(SP)			
  raw.go:824		0x5f1979		488b742448		MOVQ 0x48(SP), SI			
  raw.go:824		0x5f197e		488bbc2470030000	MOVQ 0x370(SP), DI			
  raw.go:824		0x5f1986		4801fe			ADDQ DI, SI				
  raw.go:824		0x5f1989		4889742430		MOVQ SI, 0x30(SP)			
  raw.go:827		0x5f198e		488b7c2440		MOVQ 0x40(SP), DI			
  raw.go:827		0x5f1993		4c8b442458		MOVQ 0x58(SP), R8			
  raw.go:827		0x5f1998		4c11c7			ADCQ R8, DI				
  raw.go:827		0x5f199b		48897c2428		MOVQ DI, 0x28(SP)			
  raw.go:830		0x5f19a0		4c8b8c24c0020000	MOVQ 0x2c0(SP), R9			
  raw.go:830		0x5f19a8		4c8b642450		MOVQ 0x50(SP), R12			
  raw.go:830		0x5f19ad		4d11e1			ADCQ R12, R9				
  raw.go:830		0x5f19b0		4c894c2420		MOVQ R9, 0x20(SP)			
  raw.go:833		0x5f19b5		4c8ba424f8010000	MOVQ 0x1f8(SP), R12			
  raw.go:833		0x5f19bd		4c8b8424b8020000	MOVQ 0x2b8(SP), R8			
  raw.go:833		0x5f19c5		4d11c4			ADCQ R8, R12				
  raw.go:833		0x5f19c8		4c89642418		MOVQ R12, 0x18(SP)			
  raw.go:836		0x5f19cd		4c8b8424f0010000	MOVQ 0x1f0(SP), R8			
  raw.go:836		0x5f19d5		488b5c2468		MOVQ 0x68(SP), BX			
  raw.go:836		0x5f19da		4911d8			ADCQ BX, R8				
  raw.go:836		0x5f19dd		4c89442410		MOVQ R8, 0x10(SP)			
  raw.go:837		0x5f19e2		488b5c2460		MOVQ 0x60(SP), BX			
  raw.go:837		0x5f19e7		4883d300		ADCQ $0x0, BX				
  raw.go:837		0x5f19eb		48891c24		MOVQ BX, 0(SP)				
  raw.go:840		0x5f19ef		488b5c2438		MOVQ 0x38(SP), BX			
  raw.go:840		0x5f19f4		4c01db			ADDQ R11, BX				
  raw.go:843		0x5f19f7		4811ce			ADCQ CX, SI				
  raw.go:846		0x5f19fa		4c11ef			ADCQ R13, DI				
  raw.go:849		0x5f19fd		4d11f9			ADCQ R15, R9				
  raw.go:852		0x5f1a00		4d11d4			ADCQ R10, R12				
  raw.go:852		0x5f1a03		4c89a42408040000	MOVQ R12, 0x408(SP)			
  raw.go:855		0x5f1a0b		4911c0			ADCQ AX, R8				
  raw.go:855		0x5f1a0e		4c89842400040000	MOVQ R8, 0x400(SP)			
  raw.go:858		0x5f1a16		488b0424		MOVQ 0(SP), AX				
  raw.go:858		0x5f1a1a		4c8b542470		MOVQ 0x70(SP), R10			
  raw.go:858		0x5f1a1f		4c11d0			ADCQ R10, AX				
  raw.go:858		0x5f1a22		48898424f8030000	MOVQ AX, 0x3f8(SP)			
  raw.go:860		0x5f1a2a		4889da			MOVQ BX, DX				
  raw.go:860		0x5f1a2d		49ba0100000001000000	MOVQ $0x100000001, R10			
  raw.go:860		0x5f1a37		c44283f6d2		MULXQ R10, R15, R10			
  raw.go:863		0x5f1a3c		4c89fa			MOVQ R15, DX				
  raw.go:863		0x5f1a3f		49c7c2ffffffff		MOVQ $-0x1, R10				
  raw.go:863		0x5f1a46		c44293f6d2		MULXQ R10, R13, R10			
  raw.go:872		0x5f1a4b		48c7c1feffffff		MOVQ $-0x2, CX				
  raw.go:872		0x5f1a52		c4e2a3f6c9		MULXQ CX, R11, CX			
  raw.go:875		0x5f1a57		48b800000000ffffffff	MOVQ $0xffffffff00000000, AX		
  raw.go:875		0x5f1a61		c4e2bbf6c0		MULXQ AX, R8, AX			
  raw.go:878		0x5f1a66		41bcffffffff		MOVL $-0x1, R12				
  raw.go:878		0x5f1a6c		c4c283f6d4		MULXQ R12, R15, DX			
  raw.go:881		0x5f1a71		4c01c2			ADDQ R8, DX				
  raw.go:884		0x5f1a74		4c11d8			ADCQ R11, AX				
  raw.go:887		0x5f1a77		4c11e9			ADCQ R13, CX				
  raw.go:890		0x5f1a7a		4d89e8			MOVQ R13, R8				
  raw.go:890		0x5f1a7d		4d11d5			ADCQ R10, R13				
  raw.go:893		0x5f1a80		4d11d0			ADCQ R10, R8				
  raw.go:894		0x5f1a83		4983d200		ADCQ $0x0, R10				
  raw.go:896		0x5f1a87		4c01fb			ADDQ R15, BX				
  raw.go:899		0x5f1a8a		4811f2			ADCQ SI, DX				
  raw.go:899		0x5f1a8d		48899424e8030000	MOVQ DX, 0x3e8(SP)			
  raw.go:902		0x5f1a95		4811f8			ADCQ DI, AX				
  raw.go:902		0x5f1a98		48898424e0030000	MOVQ AX, 0x3e0(SP)			
  raw.go:905		0x5f1aa0		4c11c9			ADCQ R9, CX				
  raw.go:905		0x5f1aa3		48898c24d8030000	MOVQ CX, 0x3d8(SP)			
  raw.go:908		0x5f1aab		488b9c2408040000	MOVQ 0x408(SP), BX			
  raw.go:908		0x5f1ab3		4911dd			ADCQ BX, R13				
  raw.go:908		0x5f1ab6		4c89ac24d0030000	MOVQ R13, 0x3d0(SP)			
  raw.go:911		0x5f1abe		488b9c2400040000	MOVQ 0x400(SP), BX			
  raw.go:911		0x5f1ac6		4911d8			ADCQ BX, R8				
  raw.go:911		0x5f1ac9		4c898424c0030000	MOVQ R8, 0x3c0(SP)			
  raw.go:914		0x5f1ad1		488b9c24f8030000	MOVQ 0x3f8(SP), BX			
  raw.go:914		0x5f1ad9		4911da			ADCQ BX, R10				
  raw.go:914		0x5f1adc		4c899424b8030000	MOVQ R10, 0x3b8(SP)			
  raw.go:914		0x5f1ae4		0f92c3			SETB BL					
  raw.go:914		0x5f1ae7		0fb6db			MOVZX BL, BX				
  raw.go:840		0x5f1aea		488b742438		MOVQ 0x38(SP), SI			
  raw.go:840		0x5f1aef		488bbc24a0000000	MOVQ 0xa0(SP), DI			
  raw.go:840		0x5f1af7		4801fe			ADDQ DI, SI				
  raw.go:843		0x5f1afa		488b742430		MOVQ 0x30(SP), SI			
  raw.go:843		0x5f1aff		488bbc2498000000	MOVQ 0x98(SP), DI			
  raw.go:843		0x5f1b07		4811fe			ADCQ DI, SI				
  raw.go:846		0x5f1b0a		488b742428		MOVQ 0x28(SP), SI			
  raw.go:846		0x5f1b0f		488bbc2490000000	MOVQ 0x90(SP), DI			
  raw.go:846		0x5f1b17		4811fe			ADCQ DI, SI				
  raw.go:849		0x5f1b1a		488b742420		MOVQ 0x20(SP), SI			
  raw.go:849		0x5f1b1f		488bbc2488000000	MOVQ 0x88(SP), DI			
  raw.go:849		0x5f1b27		4811fe			ADCQ DI, SI				
  raw.go:852		0x5f1b2a		488b742418		MOVQ 0x18(SP), SI			
  raw.go:852		0x5f1b2f		488bbc2480000000	MOVQ 0x80(SP), DI			
  raw.go:852		0x5f1b37		4811fe			ADCQ DI, SI				
  raw.go:855		0x5f1b3a		488b742410		MOVQ 0x10(SP), SI			
  raw.go:855		0x5f1b3f		488b7c2478		MOVQ 0x78(SP), DI			
  raw.go:855		0x5f1b44		4811fe			ADCQ DI, SI				
  raw.go:858		0x5f1b47		488b3424		MOVQ 0(SP), SI				
  raw.go:858		0x5f1b4b		488b7c2470		MOVQ 0x70(SP), DI			
  raw.go:858		0x5f1b50		4811fe			ADCQ DI, SI				
  raw.go:915		0x5f1b53		4883d300		ADCQ $0x0, BX				
  raw.go:915		0x5f1b57		48899c24b0030000	MOVQ BX, 0x3b0(SP)			
  raw.go:936		0x5f1b5f		488b742458		MOVQ 0x58(SP), SI			
  raw.go:936		0x5f1b64		488bbc24c8030000	MOVQ 0x3c8(SP), DI			
  raw.go:936		0x5f1b6c		4801fe			ADDQ DI, SI				
  raw.go:936		0x5f1b6f		4889b42478030000	MOVQ SI, 0x378(SP)			
  raw.go:939		0x5f1b77		488bbc2490030000	MOVQ 0x390(SP), DI			
  raw.go:939		0x5f1b7f		4c8b4c2450		MOVQ 0x50(SP), R9			
  raw.go:939		0x5f1b84		4c11cf			ADCQ R9, DI				
  raw.go:939		0x5f1b87		4889bc2468030000	MOVQ DI, 0x368(SP)			
  raw.go:942		0x5f1b8f		4c8b8c2488030000	MOVQ 0x388(SP), R9			
  raw.go:942		0x5f1b97		4c8b9c2498030000	MOVQ 0x398(SP), R11			
  raw.go:942		0x5f1b9f		4d11d9			ADCQ R11, R9				
  raw.go:942		0x5f1ba2		4c898c2460030000	MOVQ R9, 0x360(SP)			
  raw.go:945		0x5f1baa		4c8bbc2400020000	MOVQ 0x200(SP), R15			
  raw.go:945		0x5f1bb2		4c8b9c24c8020000	MOVQ 0x2c8(SP), R11			
  raw.go:945		0x5f1bba		4d11df			ADCQ R11, R15				
  raw.go:945		0x5f1bbd		4c89bc2458030000	MOVQ R15, 0x358(SP)			
  raw.go:948		0x5f1bc5		4c8b9c24a0030000	MOVQ 0x3a0(SP), R11			
  raw.go:948		0x5f1bcd		4c8ba424a8030000	MOVQ 0x3a8(SP), R12			
  raw.go:948		0x5f1bd5		4d11e3			ADCQ R12, R11				
  raw.go:948		0x5f1bd8		4c899c2450030000	MOVQ R11, 0x350(SP)			
  raw.go:949		0x5f1be0		4c8ba42430010000	MOVQ 0x130(SP), R12			
  raw.go:949		0x5f1be8		4983d400		ADCQ $0x0, R12				
  raw.go:949		0x5f1bec		4c89a42448030000	MOVQ R12, 0x348(SP)			
  raw.go:952		0x5f1bf4		488b9c2480030000	MOVQ 0x380(SP), BX			
  raw.go:952		0x5f1bfc		4801d3			ADDQ DX, BX				
  raw.go:955		0x5f1bff		4811c6			ADCQ AX, SI				
  raw.go:958		0x5f1c02		4811cf			ADCQ CX, DI				
  raw.go:961		0x5f1c05		4d11e9			ADCQ R13, R9				
  raw.go:964		0x5f1c08		4d11c7			ADCQ R8, R15				
  raw.go:964		0x5f1c0b		4c89bc2438030000	MOVQ R15, 0x338(SP)			
  raw.go:967		0x5f1c13		4d11d3			ADCQ R10, R11				
  raw.go:967		0x5f1c16		4c899c2430030000	MOVQ R11, 0x330(SP)			
  raw.go:970		0x5f1c1e		4c8b9424b0030000	MOVQ 0x3b0(SP), R10			
  raw.go:970		0x5f1c26		4d11d4			ADCQ R10, R12				
  raw.go:970		0x5f1c29		4c89a42428030000	MOVQ R12, 0x328(SP)			
  raw.go:972		0x5f1c31		4889da			MOVQ BX, DX				
  raw.go:972		0x5f1c34		49ba0100000001000000	MOVQ $0x100000001, R10			
  raw.go:972		0x5f1c3e		c442bbf6d2		MULXQ R10, R8, R10			
  raw.go:975		0x5f1c43		4c89c2			MOVQ R8, DX				
  raw.go:975		0x5f1c46		49c7c2ffffffff		MOVQ $-0x1, R10				
  raw.go:975		0x5f1c4d		c44293f6d2		MULXQ R10, R13, R10			
  raw.go:984		0x5f1c52		48c7c1feffffff		MOVQ $-0x2, CX				
  raw.go:984		0x5f1c59		c4e2fbf6c9		MULXQ CX, AX, CX			
  raw.go:987		0x5f1c5e		49bc00000000ffffffff	MOVQ $0xffffffff00000000, R12		
  raw.go:987		0x5f1c68		c442a3f6e4		MULXQ R12, R11, R12			
  raw.go:990		0x5f1c6d		41bfffffffff		MOVL $-0x1, R15				
  raw.go:990		0x5f1c73		c4c2bbf6d7		MULXQ R15, R8, DX			
  raw.go:993		0x5f1c78		4c01da			ADDQ R11, DX				
  raw.go:996		0x5f1c7b		4911c4			ADCQ AX, R12				
  raw.go:999		0x5f1c7e		4c11e9			ADCQ R13, CX				
  raw.go:1002		0x5f1c81		4c89e8			MOVQ R13, AX				
  raw.go:1002		0x5f1c84		4d11d5			ADCQ R10, R13				
  raw.go:1005		0x5f1c87		4c11d0			ADCQ R10, AX				
  raw.go:1006		0x5f1c8a		4983d200		ADCQ $0x0, R10				
  raw.go:1008		0x5f1c8e		4c01c3			ADDQ R8, BX				
  raw.go:1011		0x5f1c91		4811f2			ADCQ SI, DX				
  raw.go:1011		0x5f1c94		4889942420030000	MOVQ DX, 0x320(SP)			
  raw.go:1014		0x5f1c9c		4911fc			ADCQ DI, R12				
  raw.go:1014		0x5f1c9f		4c89a42418030000	MOVQ R12, 0x318(SP)			
  raw.go:1017		0x5f1ca7		4c11c9			ADCQ R9, CX				
  raw.go:1017		0x5f1caa		48898c2410030000	MOVQ CX, 0x310(SP)			
  raw.go:1020		0x5f1cb2		488b9c2438030000	MOVQ 0x338(SP), BX			
  raw.go:1020		0x5f1cba		4911dd			ADCQ BX, R13				
  raw.go:1020		0x5f1cbd		4c89ac2408030000	MOVQ R13, 0x308(SP)			
  raw.go:1023		0x5f1cc5		488b9c2430030000	MOVQ 0x330(SP), BX			
  raw.go:1023		0x5f1ccd		4811d8			ADCQ BX, AX				
  raw.go:1023		0x5f1cd0		4889842400030000	MOVQ AX, 0x300(SP)			
  raw.go:1026		0x5f1cd8		488b9c2428030000	MOVQ 0x328(SP), BX			
  raw.go:1026		0x5f1ce0		4911da			ADCQ BX, R10				
  raw.go:1026		0x5f1ce3		4c899424f8020000	MOVQ R10, 0x2f8(SP)			
  raw.go:1026		0x5f1ceb		0f92c3			SETB BL					
  raw.go:1026		0x5f1cee		0fb6db			MOVZX BL, BX				
  raw.go:952		0x5f1cf1		488bb42480030000	MOVQ 0x380(SP), SI			
  raw.go:952		0x5f1cf9		488bbc24e8030000	MOVQ 0x3e8(SP), DI			
  raw.go:952		0x5f1d01		4801fe			ADDQ DI, SI				
  raw.go:955		0x5f1d04		488bb42478030000	MOVQ 0x378(SP), SI			
  raw.go:955		0x5f1d0c		488bbc24e0030000	MOVQ 0x3e0(SP), DI			
  raw.go:955		0x5f1d14		4811fe			ADCQ DI, SI				
  raw.go:958		0x5f1d17		488bb42468030000	MOVQ 0x368(SP), SI			
  raw.go:958		0x5f1d1f		488bbc24d8030000	MOVQ 0x3d8(SP), DI			
  raw.go:958		0x5f1d27		4811fe			ADCQ DI, SI				
  raw.go:961		0x5f1d2a		488bb42460030000	MOVQ 0x360(SP), SI			
  raw.go:961		0x5f1d32		488bbc24d0030000	MOVQ 0x3d0(SP), DI			
  raw.go:961		0x5f1d3a		4811fe			ADCQ DI, SI				
  raw.go:964		0x5f1d3d		488bb42458030000	MOVQ 0x358(SP), SI			
  raw.go:964		0x5f1d45		488bbc24c0030000	MOVQ 0x3c0(SP), DI			
  raw.go:964		0x5f1d4d		4811fe			ADCQ DI, SI				
  raw.go:967		0x5f1d50		488bb42450030000	MOVQ 0x350(SP), SI			
  raw.go:967		0x5f1d58		488bbc24b8030000	MOVQ 0x3b8(SP), DI			
  raw.go:967		0x5f1d60		4811fe			ADCQ DI, SI				
  raw.go:970		0x5f1d63		488bb42448030000	MOVQ 0x348(SP), SI			
  raw.go:970		0x5f1d6b		488bbc24b0030000	MOVQ 0x3b0(SP), DI			
  raw.go:970		0x5f1d73		4811fe			ADCQ DI, SI				
  raw.go:1027		0x5f1d76		4883d300		ADCQ $0x0, BX				
  raw.go:1027		0x5f1d7a		48899c24f0020000	MOVQ BX, 0x2f0(SP)			
  raw.go:1048		0x5f1d82		488bb424c0020000	MOVQ 0x2c0(SP), SI			
  raw.go:1048		0x5f1d8a		488bbc24f0030000	MOVQ 0x3f0(SP), DI			
  raw.go:1048		0x5f1d92		4801fe			ADDQ DI, SI				
  raw.go:1048		0x5f1d95		4889b424a8020000	MOVQ SI, 0x2a8(SP)			
  raw.go:1051		0x5f1d9d		488bbc24b8020000	MOVQ 0x2b8(SP), DI			
  raw.go:1051		0x5f1da5		4c8b842498030000	MOVQ 0x398(SP), R8			
  raw.go:1051		0x5f1dad		4c11c7			ADCQ R8, DI				
  raw.go:1051		0x5f1db0		4889bc24a0020000	MOVQ DI, 0x2a0(SP)			
  raw.go:1054		0x5f1db8		4c8b8424c8020000	MOVQ 0x2c8(SP), R8			
  raw.go:1054		0x5f1dc0		4c8b8c24d8020000	MOVQ 0x2d8(SP), R9			
  raw.go:1054		0x5f1dc8		4d11c8			ADCQ R9, R8				
  raw.go:1054		0x5f1dcb		4c89842498020000	MOVQ R8, 0x298(SP)			
  raw.go:1057		0x5f1dd3		4c8b8c24d0020000	MOVQ 0x2d0(SP), R9			
  raw.go:1057		0x5f1ddb		4c8b9c24e0020000	MOVQ 0x2e0(SP), R11			
  raw.go:1057		0x5f1de3		4d11d9			ADCQ R11, R9				
  raw.go:1057		0x5f1de6		4c898c2490020000	MOVQ R9, 0x290(SP)			
  raw.go:1060		0x5f1dee		4c8b9c2408020000	MOVQ 0x208(SP), R11			
  raw.go:1060		0x5f1df6		4c8bbc24e8020000	MOVQ 0x2e8(SP), R15			
  raw.go:1060		0x5f1dfe		4d11fb			ADCQ R15, R11				
  raw.go:1060		0x5f1e01		4c899c2488020000	MOVQ R11, 0x288(SP)			
  raw.go:1061		0x5f1e09		4c8bbc2438010000	MOVQ 0x138(SP), R15			
  raw.go:1061		0x5f1e11		4983d700		ADCQ $0x0, R15				
  raw.go:1061		0x5f1e15		4c89bc2480020000	MOVQ R15, 0x280(SP)			
  raw.go:1064		0x5f1e1d		488b9c24b0020000	MOVQ 0x2b0(SP), BX			
  raw.go:1064		0x5f1e25		4801d3			ADDQ DX, BX				
  raw.go:1067		0x5f1e28		4c11e6			ADCQ R12, SI				
  raw.go:1070		0x5f1e2b		4811cf			ADCQ CX, DI				
  raw.go:1073		0x5f1e2e		4d11e8			ADCQ R13, R8				
  raw.go:1076		0x5f1e31		4911c1			ADCQ AX, R9				
  raw.go:1076		0x5f1e34		4c898c2478020000	MOVQ R9, 0x278(SP)			
  raw.go:1079		0x5f1e3c		4d11d3			ADCQ R10, R11				
  raw.go:1079		0x5f1e3f		4c899c2470020000	MOVQ R11, 0x270(SP)			
  raw.go:1082		0x5f1e47		4c8b9424f0020000	MOVQ 0x2f0(SP), R10			
  raw.go:1082		0x5f1e4f		4d11d7			ADCQ R10, R15				
  raw.go:1082		0x5f1e52		4c89bc2468020000	MOVQ R15, 0x268(SP)			
  raw.go:1084		0x5f1e5a		4889da			MOVQ BX, DX				
  raw.go:1084		0x5f1e5d		49ba0100000001000000	MOVQ $0x100000001, R10			
  raw.go:1084		0x5f1e67		c442fbf6d2		MULXQ R10, AX, R10			
  raw.go:1093		0x5f1e6c		4889c2			MOVQ AX, DX				
  raw.go:1093		0x5f1e6f		49c7c2ffffffff		MOVQ $-0x1, R10				
  raw.go:1093		0x5f1e76		c44293f6d2		MULXQ R10, R13, R10			
  raw.go:1096		0x5f1e7b		48c7c1feffffff		MOVQ $-0x2, CX				
  raw.go:1096		0x5f1e82		c4e29bf6c9		MULXQ CX, R12, CX			
  raw.go:1099		0x5f1e87		49bf00000000ffffffff	MOVQ $0xffffffff00000000, R15		
  raw.go:1099		0x5f1e91		c442a3f6ff		MULXQ R15, R11, R15			
  raw.go:1102		0x5f1e96		41b9ffffffff		MOVL $-0x1, R9				
  raw.go:1102		0x5f1e9c		c4c2fbf6d1		MULXQ R9, AX, DX			
  raw.go:1105		0x5f1ea1		4c01da			ADDQ R11, DX				
  raw.go:1108		0x5f1ea4		4d11e7			ADCQ R12, R15				
  raw.go:1111		0x5f1ea7		4c11e9			ADCQ R13, CX				
  raw.go:1114		0x5f1eaa		4d89d3			MOVQ R10, R11				
  raw.go:1114		0x5f1ead		4d11ea			ADCQ R13, R10				
  raw.go:1117		0x5f1eb0		4d11dd			ADCQ R11, R13				
  raw.go:1118		0x5f1eb3		4983d300		ADCQ $0x0, R11				
  raw.go:1120		0x5f1eb7		4801c3			ADDQ AX, BX				
  raw.go:1123		0x5f1eba		4811f2			ADCQ SI, DX				
  raw.go:1123		0x5f1ebd		4889942460020000	MOVQ DX, 0x260(SP)			
  raw.go:1126		0x5f1ec5		4911ff			ADCQ DI, R15				
  raw.go:1126		0x5f1ec8		4c89bc2458020000	MOVQ R15, 0x258(SP)			
  raw.go:1129		0x5f1ed0		4c11c1			ADCQ R8, CX				
  raw.go:1129		0x5f1ed3		48898c2448020000	MOVQ CX, 0x248(SP)			
  raw.go:1132		0x5f1edb		488b842478020000	MOVQ 0x278(SP), AX			
  raw.go:1132		0x5f1ee3		4911c2			ADCQ AX, R10				
  raw.go:1132		0x5f1ee6		4c89942440020000	MOVQ R10, 0x240(SP)			
  raw.go:1135		0x5f1eee		488b842470020000	MOVQ 0x270(SP), AX			
  raw.go:1135		0x5f1ef6		4911c5			ADCQ AX, R13				
  raw.go:1135		0x5f1ef9		4c89ac2438020000	MOVQ R13, 0x238(SP)			
  raw.go:1138		0x5f1f01		488b842468020000	MOVQ 0x268(SP), AX			
  raw.go:1138		0x5f1f09		4911c3			ADCQ AX, R11				
  raw.go:1138		0x5f1f0c		4c899c2430020000	MOVQ R11, 0x230(SP)			
  raw.go:1138		0x5f1f14		0f92c0			SETB AL					
  raw.go:1138		0x5f1f17		0fb6c0			MOVZX AL, AX				
  raw.go:1064		0x5f1f1a		488b9c24b0020000	MOVQ 0x2b0(SP), BX			
  raw.go:1064		0x5f1f22		488bb42420030000	MOVQ 0x320(SP), SI			
  raw.go:1064		0x5f1f2a		4801f3			ADDQ SI, BX				
  raw.go:1067		0x5f1f2d		488b9c24a8020000	MOVQ 0x2a8(SP), BX			
  raw.go:1067		0x5f1f35		488bb42418030000	MOVQ 0x318(SP), SI			
  raw.go:1067		0x5f1f3d		4811f3			ADCQ SI, BX				
  raw.go:1070		0x5f1f40		488b9c24a0020000	MOVQ 0x2a0(SP), BX			
  raw.go:1070		0x5f1f48		488bb42410030000	MOVQ 0x310(SP), SI			
  raw.go:1070		0x5f1f50		4811f3			ADCQ SI, BX				
  raw.go:1073		0x5f1f53		488b9c2498020000	MOVQ 0x298(SP), BX			
  raw.go:1073		0x5f1f5b		488bb42408030000	MOVQ 0x308(SP), SI			
  raw.go:1073		0x5f1f63		4811f3			ADCQ SI, BX				
  raw.go:1076		0x5f1f66		488b9c2490020000	MOVQ 0x290(SP), BX			
  raw.go:1076		0x5f1f6e		488bb42400030000	MOVQ 0x300(SP), SI			
  raw.go:1076		0x5f1f76		4811f3			ADCQ SI, BX				
  raw.go:1079		0x5f1f79		488b9c2488020000	MOVQ 0x288(SP), BX			
  raw.go:1079		0x5f1f81		488bb424f8020000	MOVQ 0x2f8(SP), SI			
  raw.go:1079		0x5f1f89		4811f3			ADCQ SI, BX				
  raw.go:1082		0x5f1f8c		488b9c2480020000	MOVQ 0x280(SP), BX			
  raw.go:1082		0x5f1f94		488bb424f0020000	MOVQ 0x2f0(SP), SI			
  raw.go:1082		0x5f1f9c		4811f3			ADCQ SI, BX				
  raw.go:1139		0x5f1f9f		4883d000		ADCQ $0x0, AX				
  raw.go:1139		0x5f1fa3		4889842428020000	MOVQ AX, 0x228(SP)			
  raw.go:1160		0x5f1fab		488b9c24f8010000	MOVQ 0x1f8(SP), BX			
  raw.go:1160		0x5f1fb3		488bb42410040000	MOVQ 0x410(SP), SI			
  raw.go:1160		0x5f1fbb		4801f3			ADDQ SI, BX				
  raw.go:1160		0x5f1fbe		48899c24e8010000	MOVQ BX, 0x1e8(SP)			
  raw.go:1163		0x5f1fc6		488bb424f0010000	MOVQ 0x1f0(SP), SI			
  raw.go:1163		0x5f1fce		488bbc2400020000	MOVQ 0x200(SP), DI			
  raw.go:1163		0x5f1fd6		4811fe			ADCQ DI, SI				
  raw.go:1163		0x5f1fd9		4889b424e0010000	MOVQ SI, 0x1e0(SP)			
  raw.go:1166		0x5f1fe1		488bbc24e0020000	MOVQ 0x2e0(SP), DI			
  raw.go:1166		0x5f1fe9		4c8b8424a0030000	MOVQ 0x3a0(SP), R8			
  raw.go:1166		0x5f1ff1		4c11c7			ADCQ R8, DI				
  raw.go:1166		0x5f1ff4		4889bc24d8010000	MOVQ DI, 0x1d8(SP)			
  raw.go:1169		0x5f1ffc		4c8b842408020000	MOVQ 0x208(SP), R8			
  raw.go:1169		0x5f2004		4c8ba42418020000	MOVQ 0x218(SP), R12			
  raw.go:1169		0x5f200c		4d11e0			ADCQ R12, R8				
  raw.go:1169		0x5f200f		4c898424d0010000	MOVQ R8, 0x1d0(SP)			
  raw.go:1172		0x5f2017		4c8ba42448010000	MOVQ 0x148(SP), R12			
  raw.go:1172		0x5f201f		4c8b8c2410020000	MOVQ 0x210(SP), R9			
  raw.go:1172		0x5f2027		4d11e1			ADCQ R12, R9				
  raw.go:1172		0x5f202a		4c898c24c8010000	MOVQ R9, 0x1c8(SP)			
  raw.go:1173		0x5f2032		4c8ba42420020000	MOVQ 0x220(SP), R12			
  raw.go:1173		0x5f203a		4983d400		ADCQ $0x0, R12				
  raw.go:1173		0x5f203e		4c89a424c0010000	MOVQ R12, 0x1c0(SP)			
  raw.go:1176		0x5f2046		488b442408		MOVQ 0x8(SP), AX			
  raw.go:1176		0x5f204b		4801c2			ADDQ AX, DX				
  raw.go:1179		0x5f204e		4c11fb			ADCQ R15, BX				
  raw.go:1182		0x5f2051		4811ce			ADCQ CX, SI				
  raw.go:1185		0x5f2054		4c11d7			ADCQ R10, DI				
  raw.go:1188		0x5f2057		4d11e8			ADCQ R13, R8				
  raw.go:1188		0x5f205a		4c898424b8010000	MOVQ R8, 0x1b8(SP)			
  raw.go:1191		0x5f2062		4d11d9			ADCQ R11, R9				
  raw.go:1191		0x5f2065		4c898c24b0010000	MOVQ R9, 0x1b0(SP)			
  raw.go:1194		0x5f206d		4c8b9c2428020000	MOVQ 0x228(SP), R11			
  raw.go:1194		0x5f2075		4d11dc			ADCQ R11, R12				
  raw.go:1194		0x5f2078		4c89a424a8010000	MOVQ R12, 0x1a8(SP)			
  raw.go:1196		0x5f2080		49bb0100000001000000	MOVQ $0x100000001, R11			
  raw.go:1196		0x5f208a		c44293f6db		MULXQ R11, R13, R11			
  raw.go:1176		0x5f208f		4989d3			MOVQ DX, R11				
  raw.go:1205		0x5f2092		4c89ea			MOVQ R13, DX				
  raw.go:1205		0x5f2095		49c7c2ffffffff		MOVQ $-0x1, R10				
  raw.go:1205		0x5f209c		c442f3f6d2		MULXQ R10, CX, R10			
  raw.go:1208		0x5f20a1		49c7c7feffffff		MOVQ $-0x2, R15				
  raw.go:1208		0x5f20a8		c442fbf6ff		MULXQ R15, AX, R15			
  raw.go:1211		0x5f20ad		49bc00000000ffffffff	MOVQ $0xffffffff00000000, R12		
  raw.go:1211		0x5f20b7		c442b3f6e4		MULXQ R12, R9, R12			
  raw.go:1214		0x5f20bc		41b8ffffffff		MOVL $-0x1, R8				
  raw.go:1214		0x5f20c2		c4c293f6d0		MULXQ R8, R13, DX			
  raw.go:1217		0x5f20c7		4c01ca			ADDQ R9, DX				
  raw.go:1220		0x5f20ca		4911c4			ADCQ AX, R12				
  raw.go:1223		0x5f20cd		4911cf			ADCQ CX, R15				
  raw.go:1226		0x5f20d0		4889c8			MOVQ CX, AX				
  raw.go:1226		0x5f20d3		4c11d1			ADCQ R10, CX				
  raw.go:1229		0x5f20d6		4c11d0			ADCQ R10, AX				
  raw.go:1230		0x5f20d9		4983d200		ADCQ $0x0, R10				
  raw.go:1232		0x5f20dd		4d01eb			ADDQ R13, R11				
  raw.go:1235		0x5f20e0		4811da			ADCQ BX, DX				
  raw.go:1235		0x5f20e3		4889942490010000	MOVQ DX, 0x190(SP)			
  raw.go:1238		0x5f20eb		4911f4			ADCQ SI, R12				
  raw.go:1238		0x5f20ee		4c89a42488010000	MOVQ R12, 0x188(SP)			
  raw.go:1241		0x5f20f6		4911ff			ADCQ DI, R15				
  raw.go:1241		0x5f20f9		4c89bc2480010000	MOVQ R15, 0x180(SP)			
  raw.go:1244		0x5f2101		488b9c24b8010000	MOVQ 0x1b8(SP), BX			
  raw.go:1244		0x5f2109		4811d9			ADCQ BX, CX				
  raw.go:1244		0x5f210c		48898c2478010000	MOVQ CX, 0x178(SP)			
  raw.go:1247		0x5f2114		488b9c24b0010000	MOVQ 0x1b0(SP), BX			
  raw.go:1247		0x5f211c		4811d8			ADCQ BX, AX				
  raw.go:1247		0x5f211f		4889842470010000	MOVQ AX, 0x170(SP)			
  raw.go:1250		0x5f2127		488b9c24a8010000	MOVQ 0x1a8(SP), BX			
  raw.go:1250		0x5f212f		4911da			ADCQ BX, R10				
  raw.go:1250		0x5f2132		4c89942468010000	MOVQ R10, 0x168(SP)			
  raw.go:1250		0x5f213a		0f92c3			SETB BL					
  raw.go:1250		0x5f213d		0fb6db			MOVZX BL, BX				
  raw.go:1176		0x5f2140		488bb42460020000	MOVQ 0x260(SP), SI			
  raw.go:1176		0x5f2148		488b7c2408		MOVQ 0x8(SP), DI			
  raw.go:1176		0x5f214d		4801fe			ADDQ DI, SI				
  raw.go:1179		0x5f2150		488bb424e8010000	MOVQ 0x1e8(SP), SI			
  raw.go:1179		0x5f2158		488bbc2458020000	MOVQ 0x258(SP), DI			
  raw.go:1179		0x5f2160		4811fe			ADCQ DI, SI				
  raw.go:1182		0x5f2163		488bb424e0010000	MOVQ 0x1e0(SP), SI			
  raw.go:1182		0x5f216b		488bbc2448020000	MOVQ 0x248(SP), DI			
  raw.go:1182		0x5f2173		4811fe			ADCQ DI, SI				
  raw.go:1185		0x5f2176		488bb424d8010000	MOVQ 0x1d8(SP), SI			
  raw.go:1185		0x5f217e		488bbc2440020000	MOVQ 0x240(SP), DI			
  raw.go:1185		0x5f2186		4811fe			ADCQ DI, SI				
  raw.go:1188		0x5f2189		488bb424d0010000	MOVQ 0x1d0(SP), SI			
  raw.go:1188		0x5f2191		488bbc2438020000	MOVQ 0x238(SP), DI			
  raw.go:1188		0x5f2199		4811fe			ADCQ DI, SI				
  raw.go:1191		0x5f219c		488bb424c8010000	MOVQ 0x1c8(SP), SI			
  raw.go:1191		0x5f21a4		488bbc2430020000	MOVQ 0x230(SP), DI			
  raw.go:1191		0x5f21ac		4811fe			ADCQ DI, SI				
  raw.go:1194		0x5f21af		488bb424c0010000	MOVQ 0x1c0(SP), SI			
  raw.go:1194		0x5f21b7		488bbc2428020000	MOVQ 0x228(SP), DI			
  raw.go:1194		0x5f21bf		4811fe			ADCQ DI, SI				
  raw.go:1251		0x5f21c2		4883d300		ADCQ $0x0, BX				
  raw.go:1251		0x5f21c6		48899c2460010000	MOVQ BX, 0x160(SP)			
  raw.go:1272		0x5f21ce		488bb42420010000	MOVQ 0x120(SP), SI			
  raw.go:1272		0x5f21d6		488b7c2468		MOVQ 0x68(SP), DI			
  raw.go:1272		0x5f21db		4801fe			ADDQ DI, SI				
  raw.go:1272		0x5f21de		4889b42418010000	MOVQ SI, 0x118(SP)			
  raw.go:1275		0x5f21e6		488bbc24a8030000	MOVQ 0x3a8(SP), DI			
  raw.go:1275		0x5f21ee		4c8b4c2460		MOVQ 0x60(SP), R9			
  raw.go:1275		0x5f21f3		4c11cf			ADCQ R9, DI				
  raw.go:1275		0x5f21f6		4889bc2408010000	MOVQ DI, 0x108(SP)			
  raw.go:1278		0x5f21fe		4c8b8c2430010000	MOVQ 0x130(SP), R9			
  raw.go:1278		0x5f2206		4c8b9c24e8020000	MOVQ 0x2e8(SP), R11			
  raw.go:1278		0x5f220e		4d11d9			ADCQ R11, R9				
  raw.go:1278		0x5f2211		4c898c2400010000	MOVQ R9, 0x100(SP)			
  raw.go:1281		0x5f2219		4c8b9c2438010000	MOVQ 0x138(SP), R11			
  raw.go:1281		0x5f2221		4c8bac2448010000	MOVQ 0x148(SP), R13			
  raw.go:1281		0x5f2229		4d11eb			ADCQ R13, R11				
  raw.go:1281		0x5f222c		4c899c24f8000000	MOVQ R11, 0xf8(SP)			
  raw.go:1284		0x5f2234		4c8bac2458010000	MOVQ 0x158(SP), R13			
  raw.go:1284		0x5f223c		4c8b842420020000	MOVQ 0x220(SP), R8			
  raw.go:1284		0x5f2244		4d11c5			ADCQ R8, R13				
  raw.go:1284		0x5f2247		4c89ac24f0000000	MOVQ R13, 0xf0(SP)			
  raw.go:1285		0x5f224f		4c8b842450010000	MOVQ 0x150(SP), R8			
  raw.go:1285		0x5f2257		4983d000		ADCQ $0x0, R8				
  raw.go:1285		0x5f225b		4c898424e8000000	MOVQ R8, 0xe8(SP)			
  raw.go:1288		0x5f2263		488b9c2428010000	MOVQ 0x128(SP), BX			
  raw.go:1288		0x5f226b		4801d3			ADDQ DX, BX				
  raw.go:1291		0x5f226e		4c11e6			ADCQ R12, SI				
  raw.go:1294		0x5f2271		4c11ff			ADCQ R15, DI				
  raw.go:1297		0x5f2274		4911c9			ADCQ CX, R9				
  raw.go:1300		0x5f2277		4911c3			ADCQ AX, R11				
  raw.go:1300		0x5f227a		4c899c24d8000000	MOVQ R11, 0xd8(SP)			
  raw.go:1303		0x5f2282		4d11d5			ADCQ R10, R13				
  raw.go:1303		0x5f2285		4c89ac24c8000000	MOVQ R13, 0xc8(SP)			
  raw.go:1306		0x5f228d		4c8b942460010000	MOVQ 0x160(SP), R10			
  raw.go:1306		0x5f2295		4d11d0			ADCQ R10, R8				
  raw.go:1306		0x5f2298		4c898424c0000000	MOVQ R8, 0xc0(SP)			
  raw.go:1308		0x5f22a0		4889da			MOVQ BX, DX				
  raw.go:1308		0x5f22a3		49ba0100000001000000	MOVQ $0x100000001, R10			
  raw.go:1308		0x5f22ad		c442fbf6d2		MULXQ R10, AX, R10			
  raw.go:1311		0x5f22b2		4889c2			MOVQ AX, DX				
  raw.go:1311		0x5f22b5		49c7c2ffffffff		MOVQ $-0x1, R10				
  raw.go:1311		0x5f22bc		c442f3f6d2		MULXQ R10, CX, R10			
  raw.go:1320		0x5f22c1		49c7c7feffffff		MOVQ $-0x2, R15				
  raw.go:1320		0x5f22c8		c4429bf6ff		MULXQ R15, R12, R15			
  raw.go:1323		0x5f22cd		49b800000000ffffffff	MOVQ $0xffffffff00000000, R8		
  raw.go:1323		0x5f22d7		c44293f6c0		MULXQ R8, R13, R8			
  raw.go:1326		0x5f22dc		41bbffffffff		MOVL $-0x1, R11				
  raw.go:1326		0x5f22e2		c4c2ebf6c3		MULXQ R11, DX, AX			
  raw.go:1329		0x5f22e7		4c01e8			ADDQ R13, AX				
  raw.go:1332		0x5f22ea		4d11e0			ADCQ R12, R8				
  raw.go:1335		0x5f22ed		4911cf			ADCQ CX, R15				
  raw.go:1338		0x5f22f0		4989cc			MOVQ CX, R12				
  raw.go:1338		0x5f22f3		4c11d1			ADCQ R10, CX				
  raw.go:1341		0x5f22f6		4d11d4			ADCQ R10, R12				
  raw.go:1342		0x5f22f9		4983d200		ADCQ $0x0, R10				
  raw.go:1344		0x5f22fd		4801d3			ADDQ DX, BX				
  raw.go:1347		0x5f2300		4811f0			ADCQ SI, AX				
  raw.go:1350		0x5f2303		4911f8			ADCQ DI, R8				
  raw.go:1353		0x5f2306		4d11cf			ADCQ R9, R15				
  raw.go:1356		0x5f2309		488b9c24d8000000	MOVQ 0xd8(SP), BX			
  raw.go:1356		0x5f2311		4811d9			ADCQ BX, CX				
  raw.go:1359		0x5f2314		488b9c24c8000000	MOVQ 0xc8(SP), BX			
  raw.go:1359		0x5f231c		4911dc			ADCQ BX, R12				
  raw.go:1362		0x5f231f		488b9c24c0000000	MOVQ 0xc0(SP), BX			
  raw.go:1362		0x5f2327		4911da			ADCQ BX, R10				
  raw.go:1362		0x5f232a		0f92c3			SETB BL					
  raw.go:1362		0x5f232d		0fb6db			MOVZX BL, BX				
  raw.go:1288		0x5f2330		488bb42428010000	MOVQ 0x128(SP), SI			
  raw.go:1288		0x5f2338		488bbc2490010000	MOVQ 0x190(SP), DI			
  raw.go:1288		0x5f2340		4801fe			ADDQ DI, SI				
  raw.go:1291		0x5f2343		488bb42418010000	MOVQ 0x118(SP), SI			
  raw.go:1291		0x5f234b		488bbc2488010000	MOVQ 0x188(SP), DI			
  raw.go:1291		0x5f2353		4811fe			ADCQ DI, SI				
  raw.go:1294		0x5f2356		488bb42408010000	MOVQ 0x108(SP), SI			
  raw.go:1294		0x5f235e		488bbc2480010000	MOVQ 0x180(SP), DI			
  raw.go:1294		0x5f2366		4811fe			ADCQ DI, SI				
  raw.go:1297		0x5f2369		488bb42400010000	MOVQ 0x100(SP), SI			
  raw.go:1297		0x5f2371		488bbc2478010000	MOVQ 0x178(SP), DI			
  raw.go:1297		0x5f2379		4811fe			ADCQ DI, SI				
  raw.go:1300		0x5f237c		488bb424f8000000	MOVQ 0xf8(SP), SI			
  raw.go:1300		0x5f2384		488bbc2470010000	MOVQ 0x170(SP), DI			
  raw.go:1300		0x5f238c		4811fe			ADCQ DI, SI				
  raw.go:1303		0x5f238f		488bb424f0000000	MOVQ 0xf0(SP), SI			
  raw.go:1303		0x5f2397		488bbc2468010000	MOVQ 0x168(SP), DI			
  raw.go:1303		0x5f239f		4811fe			ADCQ DI, SI				
  raw.go:1306		0x5f23a2		488bb424e8000000	MOVQ 0xe8(SP), SI			
  raw.go:1306		0x5f23aa		488bbc2460010000	MOVQ 0x160(SP), DI			
  raw.go:1306		0x5f23b2		4811fe			ADCQ DI, SI				
  raw.go:1363		0x5f23b5		4883d300		ADCQ $0x0, BX				
  raw.go:1366		0x5f23b9		4889c6			MOVQ AX, SI				
  raw.go:1366		0x5f23bc		4c29d8			SUBQ R11, AX				
  raw.go:1369		0x5f23bf		48bf00000000ffffffff	MOVQ $0xffffffff00000000, DI		
  raw.go:1369		0x5f23c9		4d89c1			MOVQ R8, R9				
  raw.go:1369		0x5f23cc		4919f8			SBBQ DI, R8				
  raw.go:1372		0x5f23cf		4c89ff			MOVQ R15, DI				
  raw.go:1372		0x5f23d2		4983dffe		SBBQ $-0x2, R15				
  raw.go:1375		0x5f23d6		4989cb			MOVQ CX, R11				
  raw.go:1375		0x5f23d9		4883d9ff		SBBQ $-0x1, CX				
  raw.go:1378		0x5f23dd		4d89e5			MOVQ R12, R13				
  raw.go:1378		0x5f23e0		4983dcff		SBBQ $-0x1, R12				
  raw.go:1381		0x5f23e4		4c89d2			MOVQ R10, DX				
  raw.go:1381		0x5f23e7		4983daff		SBBQ $-0x1, R10				
  raw.go:1383		0x5f23eb		4883db00		SBBQ $0x0, BX				
  raw.go:1383		0x5f23ef		0f92c3			SETB BL					
  raw.go:1383		0x5f23f2		0fb6db			MOVZX BL, BX				
  common.go:7		0x5f23f5		48f7db			NEGQ BX					
  common.go:8		0x5f23f8		4821de			ANDQ BX, SI				
  common.go:8		0x5f23fb		c4e2e0f2c0		ANDNQ AX, BX, AX			
  common.go:8		0x5f2400		4809c6			ORQ AX, SI				
  raw.go:1396		0x5f2403		488b842428040000	MOVQ 0x428(SP), AX			
  raw.go:1396		0x5f240b		488930			MOVQ SI, 0(AX)				
  common.go:8		0x5f240e		4921d9			ANDQ BX, R9				
  common.go:8		0x5f2411		c4c2e0f2f0		ANDNQ R8, BX, SI			
  common.go:8		0x5f2416		4909f1			ORQ SI, R9				
  raw.go:1397		0x5f2419		4c894808		MOVQ R9, 0x8(AX)			
  common.go:8		0x5f241d		4821df			ANDQ BX, DI				
  common.go:8		0x5f2420		c4c2e0f2f7		ANDNQ R15, BX, SI			
  common.go:8		0x5f2425		4809f7			ORQ SI, DI				
  raw.go:1398		0x5f2428		48897810		MOVQ DI, 0x10(AX)			
  common.go:8		0x5f242c		4921db			ANDQ BX, R11				
  common.go:8		0x5f242f		c4e2e0f2c9		ANDNQ CX, BX, CX			
  common.go:8		0x5f2434		4c09d9			ORQ R11, CX				
  raw.go:1399		0x5f2437		48894818		MOVQ CX, 0x18(AX)			
  common.go:8		0x5f243b		4921dd			ANDQ BX, R13				
  common.go:8		0x5f243e		c4c2e0f2cc		ANDNQ R12, BX, CX			
  common.go:8		0x5f2443		4909cd			ORQ CX, R13				
  raw.go:1400		0x5f2446		4c896820		MOVQ R13, 0x20(AX)			
  common.go:8		0x5f244a		4821da			ANDQ BX, DX				
  common.go:8		0x5f244d		c4c2e0f2ca		ANDNQ R10, BX, CX			
  common.go:8		0x5f2452		4809ca			ORQ CX, DX				
  raw.go:1401		0x5f2455		48895028		MOVQ DX, 0x28(AX)			
  raw.go:1402		0x5f2459		c9			LEAVE					
  raw.go:1402		0x5f245a		c3			RET					
  raw.go:707		0x5f245b		4889442408		MOVQ AX, 0x8(SP)			
  raw.go:707		0x5f2460		48895c2410		MOVQ BX, 0x10(SP)			
  raw.go:707		0x5f2465		e8b686e9ff		CALL runtime.morestack_noctxt.abi0(SB)	
  raw.go:707		0x5f246a		488b442408		MOVQ 0x8(SP), AX			
  raw.go:707		0x5f246f		488b5c2410		MOVQ 0x10(SP), BX			
  raw.go:707		0x5f2474		e987f1ffff		JMP example.com/p384issue.RawSquare(SB)	
