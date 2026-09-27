TEXT example.com/p384issue.Mul(SB) /home/exedev/crypto-audit/round4/issues/p384-square/compact.go
  compact.go:7		0x5f1080		4c8da424a8faffff	LEAQ 0xfffffaa8(SP), R12		
  compact.go:7		0x5f1088		4d3b6610		CMPQ R12, 0x10(R14)			
  compact.go:7		0x5f108c		0f86fc110000		JBE 0x5f228e				
  compact.go:7		0x5f1092		55			PUSHQ BP				
  compact.go:7		0x5f1093		4889e5			MOVQ SP, BP				
  compact.go:7		0x5f1096		4881ecd0050000		SUBQ $0x5d0, SP				
  compact.go:271	0x5f109d		48898424e0050000	MOVQ AX, 0x5e0(SP)			
  compact.go:8		0x5f10a5		488b5308		MOVQ 0x8(BX), DX			
  compact.go:9		0x5f10a9		488b7310		MOVQ 0x10(BX), SI			
  compact.go:10		0x5f10ad		488b7b18		MOVQ 0x18(BX), DI			
  compact.go:11		0x5f10b1		4c8b4320		MOVQ 0x20(BX), R8			
  compact.go:12		0x5f10b5		4c8b4b28		MOVQ 0x28(BX), R9			
  compact.go:13		0x5f10b9		488b1b			MOVQ 0(BX), BX				
  compact.go:14		0x5f10bc		4c8b5108		MOVQ 0x8(CX), R10			
  compact.go:18		0x5f10c0		4c89d0			MOVQ R10, AX				
  compact.go:8		0x5f10c3		4989d4			MOVQ DX, R12				
  compact.go:18		0x5f10c6		48f7e3			MULQ BX					
  compact.go:18		0x5f10c9		4989c5			MOVQ AX, R13				
  compact.go:50		0x5f10cc		4c89e0			MOVQ R12, AX				
  compact.go:18		0x5f10cf		4989d7			MOVQ DX, R15				
  compact.go:50		0x5f10d2		49f7e2			MULQ R10				
  compact.go:50		0x5f10d5		4889542450		MOVQ DX, 0x50(SP)			
  compact.go:50		0x5f10da		4889442458		MOVQ AX, 0x58(SP)			
  compact.go:89		0x5f10df		4c8b5910		MOVQ 0x10(CX), R11			
  compact.go:17		0x5f10e3		4c89d8			MOVQ R11, AX				
  compact.go:17		0x5f10e6		48f7e3			MULQ BX					
  compact.go:17		0x5f10e9		4889942428050000	MOVQ DX, 0x528(SP)			
  compact.go:17		0x5f10f1		4889842450050000	MOVQ AX, 0x550(SP)			
  compact.go:49		0x5f10f9		4c89d8			MOVQ R11, AX				
  compact.go:49		0x5f10fc		49f7e4			MULQ R12				
  compact.go:49		0x5f10ff		4889542460		MOVQ DX, 0x60(SP)			
  compact.go:49		0x5f1104		4889442468		MOVQ AX, 0x68(SP)			
  compact.go:89		0x5f1109		4889f0			MOVQ SI, AX				
  compact.go:89		0x5f110c		49f7e3			MULQ R11				
  compact.go:89		0x5f110f		48899424d0040000	MOVQ DX, 0x4d0(SP)			
  compact.go:89		0x5f1117		48898424d8040000	MOVQ AX, 0x4d8(SP)			
  compact.go:90		0x5f111f		4c89d0			MOVQ R10, AX				
  compact.go:90		0x5f1122		48f7e6			MULQ SI					
  compact.go:90		0x5f1125		48899424c0040000	MOVQ DX, 0x4c0(SP)			
  compact.go:90		0x5f112d		48898424c8040000	MOVQ AX, 0x4c8(SP)			
  compact.go:126	0x5f1135		488b5128		MOVQ 0x28(CX), DX			
  compact.go:126	0x5f1139		48899424c8050000	MOVQ DX, 0x5c8(SP)			
  compact.go:14		0x5f1141		4889d0			MOVQ DX, AX				
  compact.go:14		0x5f1144		48f7e3			MULQ BX					
  compact.go:14		0x5f1147		4889542440		MOVQ DX, 0x40(SP)			
  compact.go:14		0x5f114c		4889842498000000	MOVQ AX, 0x98(SP)			
  compact.go:46		0x5f1154		488b8424c8050000	MOVQ 0x5c8(SP), AX			
  compact.go:46		0x5f115c		49f7e4			MULQ R12				
  compact.go:46		0x5f115f		4889942490000000	MOVQ DX, 0x90(SP)			
  compact.go:46		0x5f1167		48898424a0000000	MOVQ AX, 0xa0(SP)			
  compact.go:86		0x5f116f		488b8424c8050000	MOVQ 0x5c8(SP), AX			
  compact.go:86		0x5f1177		48f7e6			MULQ SI					
  compact.go:86		0x5f117a		4889942400050000	MOVQ DX, 0x500(SP)			
  compact.go:86		0x5f1182		4889842408050000	MOVQ AX, 0x508(SP)			
  compact.go:126	0x5f118a		488b8424c8050000	MOVQ 0x5c8(SP), AX			
  compact.go:126	0x5f1192		48f7e7			MULQ DI					
  compact.go:126	0x5f1195		48899424e8030000	MOVQ DX, 0x3e8(SP)			
  compact.go:126	0x5f119d		48898424f0030000	MOVQ AX, 0x3f0(SP)			
  compact.go:128	0x5f11a5		488b5118		MOVQ 0x18(CX), DX			
  compact.go:128	0x5f11a9		48899424c0050000	MOVQ DX, 0x5c0(SP)			
  compact.go:16		0x5f11b1		4889d0			MOVQ DX, AX				
  compact.go:16		0x5f11b4		48f7e3			MULQ BX					
  compact.go:16		0x5f11b7		4889942458050000	MOVQ DX, 0x558(SP)			
  compact.go:16		0x5f11bf		4889842490050000	MOVQ AX, 0x590(SP)			
  compact.go:48		0x5f11c7		488b8424c0050000	MOVQ 0x5c0(SP), AX			
  compact.go:48		0x5f11cf		49f7e4			MULQ R12				
  compact.go:48		0x5f11d2		4889542470		MOVQ DX, 0x70(SP)			
  compact.go:48		0x5f11d7		4889442478		MOVQ AX, 0x78(SP)			
  compact.go:88		0x5f11dc		488b8424c0050000	MOVQ 0x5c0(SP), AX			
  compact.go:88		0x5f11e4		48f7e6			MULQ SI					
  compact.go:88		0x5f11e7		48899424e0040000	MOVQ DX, 0x4e0(SP)			
  compact.go:88		0x5f11ef		48898424e8040000	MOVQ AX, 0x4e8(SP)			
  compact.go:128	0x5f11f7		4889f8			MOVQ DI, AX				
  compact.go:128	0x5f11fa		488b9424c0050000	MOVQ 0x5c0(SP), DX			
  compact.go:128	0x5f1202		48f7e2			MULQ DX					
  compact.go:128	0x5f1205		48899424c8030000	MOVQ DX, 0x3c8(SP)			
  compact.go:128	0x5f120d		48898424d0030000	MOVQ AX, 0x3d0(SP)			
  compact.go:129	0x5f1215		4c89d8			MOVQ R11, AX				
  compact.go:129	0x5f1218		48f7e7			MULQ DI					
  compact.go:129	0x5f121b		48899424b8030000	MOVQ DX, 0x3b8(SP)			
  compact.go:129	0x5f1223		48898424c0030000	MOVQ AX, 0x3c0(SP)			
  compact.go:130	0x5f122b		4c89d0			MOVQ R10, AX				
  compact.go:130	0x5f122e		48f7e7			MULQ DI					
  compact.go:130	0x5f1231		48899424a8030000	MOVQ DX, 0x3a8(SP)			
  compact.go:130	0x5f1239		48898424b0030000	MOVQ AX, 0x3b0(SP)			
  compact.go:166	0x5f1241		488b8424c8050000	MOVQ 0x5c8(SP), AX			
  compact.go:166	0x5f1249		49f7e0			MULQ R8					
  compact.go:166	0x5f124c		48899424d0020000	MOVQ DX, 0x2d0(SP)			
  compact.go:166	0x5f1254		48898424d8020000	MOVQ AX, 0x2d8(SP)			
  compact.go:167	0x5f125c		488b5120		MOVQ 0x20(CX), DX			
  compact.go:167	0x5f1260		48899424b8050000	MOVQ DX, 0x5b8(SP)			
  compact.go:15		0x5f1268		4889d0			MOVQ DX, AX				
  compact.go:15		0x5f126b		48f7e3			MULQ BX					
  compact.go:15		0x5f126e		48899424a8050000	MOVQ DX, 0x5a8(SP)			
  compact.go:15		0x5f1276		4889442408		MOVQ AX, 0x8(SP)			
  compact.go:47		0x5f127b		488b8424b8050000	MOVQ 0x5b8(SP), AX			
  compact.go:47		0x5f1283		49f7e4			MULQ R12				
  compact.go:47		0x5f1286		4889942480000000	MOVQ DX, 0x80(SP)			
  compact.go:47		0x5f128e		4889842488000000	MOVQ AX, 0x88(SP)			
  compact.go:87		0x5f1296		488b8424b8050000	MOVQ 0x5b8(SP), AX			
  compact.go:87		0x5f129e		48f7e6			MULQ SI					
  compact.go:87		0x5f12a1		48899424f0040000	MOVQ DX, 0x4f0(SP)			
  compact.go:87		0x5f12a9		48898424f8040000	MOVQ AX, 0x4f8(SP)			
  compact.go:127	0x5f12b1		488b8424b8050000	MOVQ 0x5b8(SP), AX			
  compact.go:127	0x5f12b9		48f7e7			MULQ DI					
  compact.go:127	0x5f12bc		48899424d8030000	MOVQ DX, 0x3d8(SP)			
  compact.go:127	0x5f12c4		48898424e0030000	MOVQ AX, 0x3e0(SP)			
  compact.go:167	0x5f12cc		4c89c0			MOVQ R8, AX				
  compact.go:167	0x5f12cf		488b9424b8050000	MOVQ 0x5b8(SP), DX			
  compact.go:167	0x5f12d7		48f7e2			MULQ DX					
  compact.go:167	0x5f12da		48899424c0020000	MOVQ DX, 0x2c0(SP)			
  compact.go:167	0x5f12e2		48898424c8020000	MOVQ AX, 0x2c8(SP)			
  compact.go:168	0x5f12ea		488b8424c0050000	MOVQ 0x5c0(SP), AX			
  compact.go:168	0x5f12f2		49f7e0			MULQ R8					
  compact.go:168	0x5f12f5		48899424b0020000	MOVQ DX, 0x2b0(SP)			
  compact.go:168	0x5f12fd		48898424b8020000	MOVQ AX, 0x2b8(SP)			
  compact.go:169	0x5f1305		4c89d8			MOVQ R11, AX				
  compact.go:169	0x5f1308		49f7e0			MULQ R8					
  compact.go:169	0x5f130b		48899424a0020000	MOVQ DX, 0x2a0(SP)			
  compact.go:169	0x5f1313		48898424a8020000	MOVQ AX, 0x2a8(SP)			
  compact.go:170	0x5f131b		4c89d0			MOVQ R10, AX				
  compact.go:170	0x5f131e		49f7e0			MULQ R8					
  compact.go:170	0x5f1321		4889942490020000	MOVQ DX, 0x290(SP)			
  compact.go:170	0x5f1329		4889842498020000	MOVQ AX, 0x298(SP)			
  compact.go:171	0x5f1331		488b09			MOVQ 0(CX), CX				
  compact.go:19		0x5f1334		4889d8			MOVQ BX, AX				
  compact.go:19		0x5f1337		48f7e1			MULQ CX					
  compact.go:19		0x5f133a		4889842478040000	MOVQ AX, 0x478(SP)			
  compact.go:19		0x5f1342		4889942470040000	MOVQ DX, 0x470(SP)			
  compact.go:26		0x5f134a		48b80100000001000000	MOVQ $0x100000001, AX			
  compact.go:26		0x5f1354		488b9c2478040000	MOVQ 0x478(SP), BX			
  compact.go:26		0x5f135c		48f7e3			MULQ BX					
  compact.go:26		0x5f135f		48898424e0020000	MOVQ AX, 0x2e0(SP)			
  compact.go:26		0x5f1367		4889c2			MOVQ AX, DX				
  compact.go:29		0x5f136a		48c7c0ffffffff		MOVQ $-0x1, AX				
  compact.go:29		0x5f1371		48f7e2			MULQ DX					
  compact.go:28		0x5f1374		4889942408020000	MOVQ DX, 0x208(SP)			
  compact.go:29		0x5f137c		4889842400020000	MOVQ AX, 0x200(SP)			
  compact.go:30		0x5f1384		48c7c0feffffff		MOVQ $-0x2, AX				
  compact.go:30		0x5f138b		488b9c24e0020000	MOVQ 0x2e0(SP), BX			
  compact.go:30		0x5f1393		48f7e3			MULQ BX					
  compact.go:30		0x5f1396		4889942450010000	MOVQ DX, 0x150(SP)			
  compact.go:30		0x5f139e		48898424a8010000	MOVQ AX, 0x1a8(SP)			
  compact.go:31		0x5f13a6		48b800000000ffffffff	MOVQ $0xffffffff00000000, AX		
  compact.go:31		0x5f13b0		48f7e3			MULQ BX					
  compact.go:31		0x5f13b3		4889942418010000	MOVQ DX, 0x118(SP)			
  compact.go:31		0x5f13bb		4889842420010000	MOVQ AX, 0x120(SP)			
  compact.go:32		0x5f13c3		b8ffffffff		MOVL $-0x1, AX				
  compact.go:32		0x5f13c8		48f7e3			MULQ BX					
  compact.go:32		0x5f13cb		48899424e8000000	MOVQ DX, 0xe8(SP)			
  compact.go:32		0x5f13d3		4889c3			MOVQ AX, BX				
  compact.go:51		0x5f13d6		4889c8			MOVQ CX, AX				
  compact.go:51		0x5f13d9		49f7e4			MULQ R12				
  compact.go:51		0x5f13dc		4889542438		MOVQ DX, 0x38(SP)			
  compact.go:51		0x5f13e1		4889442448		MOVQ AX, 0x48(SP)			
  compact.go:91		0x5f13e6		4889c8			MOVQ CX, AX				
  compact.go:91		0x5f13e9		48f7e6			MULQ SI					
  compact.go:91		0x5f13ec		48899424b0040000	MOVQ DX, 0x4b0(SP)			
  compact.go:91		0x5f13f4		48898424b8040000	MOVQ AX, 0x4b8(SP)			
  compact.go:131	0x5f13fc		4889c8			MOVQ CX, AX				
  compact.go:131	0x5f13ff		48f7e7			MULQ DI					
  compact.go:131	0x5f1402		4889942498030000	MOVQ DX, 0x398(SP)			
  compact.go:131	0x5f140a		48898424a0030000	MOVQ AX, 0x3a0(SP)			
  compact.go:171	0x5f1412		4889c8			MOVQ CX, AX				
  compact.go:171	0x5f1415		49f7e0			MULQ R8					
  compact.go:171	0x5f1418		4889942480020000	MOVQ DX, 0x280(SP)			
  compact.go:171	0x5f1420		4889842488020000	MOVQ AX, 0x288(SP)			
  compact.go:206	0x5f1428		4c89c8			MOVQ R9, AX				
  compact.go:206	0x5f142b		4c8b8424c8050000	MOVQ 0x5c8(SP), R8			
  compact.go:206	0x5f1433		49f7e0			MULQ R8					
  compact.go:206	0x5f1436		48899424b8010000	MOVQ DX, 0x1b8(SP)			
  compact.go:206	0x5f143e		48898424c0010000	MOVQ AX, 0x1c0(SP)			
  compact.go:207	0x5f1446		488b8424b8050000	MOVQ 0x5b8(SP), AX			
  compact.go:207	0x5f144e		49f7e1			MULQ R9					
  compact.go:207	0x5f1451		48899424a0010000	MOVQ DX, 0x1a0(SP)			
  compact.go:207	0x5f1459		48898424b0010000	MOVQ AX, 0x1b0(SP)			
  compact.go:208	0x5f1461		488b8424c0050000	MOVQ 0x5c0(SP), AX			
  compact.go:208	0x5f1469		49f7e1			MULQ R9					
  compact.go:208	0x5f146c		4889942490010000	MOVQ DX, 0x190(SP)			
  compact.go:208	0x5f1474		4889842498010000	MOVQ AX, 0x198(SP)			
  compact.go:209	0x5f147c		4c89d8			MOVQ R11, AX				
  compact.go:209	0x5f147f		49f7e1			MULQ R9					
  compact.go:209	0x5f1482		4889942480010000	MOVQ DX, 0x180(SP)			
  compact.go:209	0x5f148a		4889842488010000	MOVQ AX, 0x188(SP)			
  compact.go:210	0x5f1492		4c89d0			MOVQ R10, AX				
  compact.go:210	0x5f1495		49f7e1			MULQ R9					
  compact.go:210	0x5f1498		4889942470010000	MOVQ DX, 0x170(SP)			
  compact.go:210	0x5f14a0		4889842478010000	MOVQ AX, 0x178(SP)			
  compact.go:211	0x5f14a8		4889c8			MOVQ CX, AX				
  compact.go:211	0x5f14ab		49f7e1			MULQ R9					
  compact.go:211	0x5f14ae		4889942460010000	MOVQ DX, 0x160(SP)			
  compact.go:211	0x5f14b6		4889842468010000	MOVQ AX, 0x168(SP)			
  compact.go:254	0x5f14be		90			NOPL					
  compact.go:256	0x5f14bf		90			NOPL					
  compact.go:258	0x5f14c0		90			NOPL					
  compact.go:260	0x5f14c1		90			NOPL					
  compact.go:262	0x5f14c2		90			NOPL					
  compact.go:264	0x5f14c3		90			NOPL					
  compact.go:20		0x5f14c4		4c8b8c2470040000	MOVQ 0x470(SP), R9			
  compact.go:20		0x5f14cc		4d01e9			ADDQ R13, R9				
  compact.go:21		0x5f14cf		4c8bac2450050000	MOVQ 0x550(SP), R13			
  compact.go:21		0x5f14d7		4d11ef			ADCQ R13, R15				
  compact.go:22		0x5f14da		4c8bac2428050000	MOVQ 0x528(SP), R13			
  compact.go:22		0x5f14e2		4c8b842490050000	MOVQ 0x590(SP), R8			
  compact.go:22		0x5f14ea		4d11c5			ADCQ R8, R13				
  compact.go:23		0x5f14ed		4c8b842458050000	MOVQ 0x558(SP), R8			
  compact.go:23		0x5f14f5		4c8b5c2408		MOVQ 0x8(SP), R11			
  compact.go:23		0x5f14fa		4d11d8			ADCQ R11, R8				
  compact.go:24		0x5f14fd		4c8b9c24a8050000	MOVQ 0x5a8(SP), R11			
  compact.go:24		0x5f1505		4c8b942498000000	MOVQ 0x98(SP), R10			
  compact.go:24		0x5f150d		4d11d3			ADCQ R10, R11				
  compact.go:25		0x5f1510		4c8b542440		MOVQ 0x40(SP), R10			
  compact.go:25		0x5f1515		4983d200		ADCQ $0x0, R10				
  compact.go:25		0x5f1519		4c89942410030000	MOVQ R10, 0x310(SP)			
  compact.go:33		0x5f1521		488b8c24e8000000	MOVQ 0xe8(SP), CX			
  compact.go:33		0x5f1529		488b942420010000	MOVQ 0x120(SP), DX			
  compact.go:33		0x5f1531		4801d1			ADDQ DX, CX				
  compact.go:34		0x5f1534		488b942418010000	MOVQ 0x118(SP), DX			
  compact.go:34		0x5f153c		488bbc24a8010000	MOVQ 0x1a8(SP), DI			
  compact.go:34		0x5f1544		4811fa			ADCQ DI, DX				
  compact.go:35		0x5f1547		488bbc2450010000	MOVQ 0x150(SP), DI			
  compact.go:35		0x5f154f		488bb42400020000	MOVQ 0x200(SP), SI			
  compact.go:35		0x5f1557		4811f7			ADCQ SI, DI				
  compact.go:36		0x5f155a		4c8ba42408020000	MOVQ 0x208(SP), R12			
  compact.go:36		0x5f1562		4c11e6			ADCQ R12, SI				
  compact.go:37		0x5f1565		4c8b942400020000	MOVQ 0x200(SP), R10			
  compact.go:37		0x5f156d		4d11e2			ADCQ R12, R10				
  compact.go:38		0x5f1570		4983d400		ADCQ $0x0, R12				
  compact.go:38		0x5f1574		4c89a424e0000000	MOVQ R12, 0xe0(SP)			
  compact.go:39		0x5f157c		4c8ba42478040000	MOVQ 0x478(SP), R12			
  compact.go:39		0x5f1584		4901dc			ADDQ BX, R12				
  compact.go:40		0x5f1587		4c11c9			ADCQ R9, CX				
  compact.go:40		0x5f158a		48898c24d8000000	MOVQ CX, 0xd8(SP)			
  compact.go:41		0x5f1592		4c11fa			ADCQ R15, DX				
  compact.go:41		0x5f1595		48899424d0000000	MOVQ DX, 0xd0(SP)			
  compact.go:42		0x5f159d		4c11ef			ADCQ R13, DI				
  compact.go:42		0x5f15a0		4889bc24c8000000	MOVQ DI, 0xc8(SP)			
  compact.go:43		0x5f15a8		4c11c6			ADCQ R8, SI				
  compact.go:43		0x5f15ab		4889b424c0000000	MOVQ SI, 0xc0(SP)			
  compact.go:44		0x5f15b3		4d11da			ADCQ R11, R10				
  compact.go:44		0x5f15b6		4c899424b8000000	MOVQ R10, 0xb8(SP)			
  compact.go:45		0x5f15be		488b9c24e0000000	MOVQ 0xe0(SP), BX			
  compact.go:45		0x5f15c6		4c8b842410030000	MOVQ 0x310(SP), R8			
  compact.go:45		0x5f15ce		4c11c3			ADCQ R8, BX				
  compact.go:45		0x5f15d1		48899c24b0000000	MOVQ BX, 0xb0(SP)			
  compact.go:45		0x5f15d9		410f92c0		SETB R8					
  compact.go:45		0x5f15dd		450fb6c0		MOVZX R8, R8				
  compact.go:45		0x5f15e1		4c898424a8000000	MOVQ R8, 0xa8(SP)			
  compact.go:52		0x5f15e9		4c8b4c2438		MOVQ 0x38(SP), R9			
  compact.go:52		0x5f15ee		4c8b5c2458		MOVQ 0x58(SP), R11			
  compact.go:52		0x5f15f3		4d01d9			ADDQ R11, R9				
  compact.go:52		0x5f15f6		4c894c2430		MOVQ R9, 0x30(SP)			
  compact.go:53		0x5f15fb		4c8b5c2450		MOVQ 0x50(SP), R11			
  compact.go:53		0x5f1600		4c8b642468		MOVQ 0x68(SP), R12			
  compact.go:53		0x5f1605		4d11e3			ADCQ R12, R11				
  compact.go:53		0x5f1608		4c895c2428		MOVQ R11, 0x28(SP)			
  compact.go:54		0x5f160d		4c8b642460		MOVQ 0x60(SP), R12			
  compact.go:54		0x5f1612		4c8b6c2478		MOVQ 0x78(SP), R13			
  compact.go:54		0x5f1617		4d11ec			ADCQ R13, R12				
  compact.go:54		0x5f161a		4c89642420		MOVQ R12, 0x20(SP)			
  compact.go:55		0x5f161f		4c8b6c2470		MOVQ 0x70(SP), R13			
  compact.go:55		0x5f1624		4c8bbc2488000000	MOVQ 0x88(SP), R15			
  compact.go:55		0x5f162c		4d11fd			ADCQ R15, R13				
  compact.go:55		0x5f162f		4c896c2418		MOVQ R13, 0x18(SP)			
  compact.go:56		0x5f1634		4c8bbc2480000000	MOVQ 0x80(SP), R15			
  compact.go:56		0x5f163c		4c8b8424a0000000	MOVQ 0xa0(SP), R8			
  compact.go:56		0x5f1644		4d11c7			ADCQ R8, R15				
  compact.go:56		0x5f1647		4c897c2410		MOVQ R15, 0x10(SP)			
  compact.go:57		0x5f164c		4c8b842490000000	MOVQ 0x90(SP), R8			
  compact.go:57		0x5f1654		4983d000		ADCQ $0x0, R8				
  compact.go:57		0x5f1658		4c890424		MOVQ R8, 0(SP)				
  compact.go:58		0x5f165c		4c8b442448		MOVQ 0x48(SP), R8			
  compact.go:58		0x5f1661		4901c8			ADDQ CX, R8				
  compact.go:59		0x5f1664		4911d1			ADCQ DX, R9				
  compact.go:60		0x5f1667		4911fb			ADCQ DI, R11				
  compact.go:61		0x5f166a		4911f4			ADCQ SI, R12				
  compact.go:62		0x5f166d		4d11d5			ADCQ R10, R13				
  compact.go:63		0x5f1670		4911df			ADCQ BX, R15				
  compact.go:64		0x5f1673		488b1c24		MOVQ 0(SP), BX				
  compact.go:64		0x5f1677		4c8b9424a8000000	MOVQ 0xa8(SP), R10			
  compact.go:64		0x5f167f		4c11d3			ADCQ R10, BX				
  compact.go:64		0x5f1682		48899c24a0050000	MOVQ BX, 0x5a0(SP)			
  compact.go:65		0x5f168a		4c89c0			MOVQ R8, AX				
  compact.go:65		0x5f168d		49ba0100000001000000	MOVQ $0x100000001, R10			
  compact.go:65		0x5f1697		49f7e2			MULQ R10				
  compact.go:65		0x5f169a		4889842498050000	MOVQ AX, 0x598(SP)			
  compact.go:66		0x5f16a2		48c7c2ffffffff		MOVQ $-0x1, DX				
  compact.go:66		0x5f16a9		48f7e2			MULQ DX					
  compact.go:67		0x5f16ac		4889942488050000	MOVQ DX, 0x588(SP)			
  compact.go:68		0x5f16b4		4889842480050000	MOVQ AX, 0x580(SP)			
  compact.go:69		0x5f16bc		488b842498050000	MOVQ 0x598(SP), AX			
  compact.go:69		0x5f16c4		49c7c2feffffff		MOVQ $-0x2, R10				
  compact.go:69		0x5f16cb		49f7e2			MULQ R10				
  compact.go:69		0x5f16ce		4889942470050000	MOVQ DX, 0x570(SP)			
  compact.go:69		0x5f16d6		4889842478050000	MOVQ AX, 0x578(SP)			
  compact.go:70		0x5f16de		488b842498050000	MOVQ 0x598(SP), AX			
  compact.go:70		0x5f16e6		49ba00000000ffffffff	MOVQ $0xffffffff00000000, R10		
  compact.go:70		0x5f16f0		49f7e2			MULQ R10				
  compact.go:70		0x5f16f3		4889942460050000	MOVQ DX, 0x560(SP)			
  compact.go:70		0x5f16fb		4889842468050000	MOVQ AX, 0x568(SP)			
  compact.go:71		0x5f1703		488b842498050000	MOVQ 0x598(SP), AX			
  compact.go:71		0x5f170b		41baffffffff		MOVL $-0x1, R10				
  compact.go:71		0x5f1711		49f7e2			MULQ R10				
  compact.go:72		0x5f1714		4c8b942468050000	MOVQ 0x568(SP), R10			
  compact.go:72		0x5f171c		4c01d2			ADDQ R10, DX				
  compact.go:73		0x5f171f		4c8b942460050000	MOVQ 0x560(SP), R10			
  compact.go:73		0x5f1727		488bb42478050000	MOVQ 0x578(SP), SI			
  compact.go:73		0x5f172f		4911f2			ADCQ SI, R10				
  compact.go:74		0x5f1732		488bb42470050000	MOVQ 0x570(SP), SI			
  compact.go:74		0x5f173a		488bbc2480050000	MOVQ 0x580(SP), DI			
  compact.go:74		0x5f1742		4811fe			ADCQ DI, SI				
  compact.go:75		0x5f1745		488b8c2488050000	MOVQ 0x588(SP), CX			
  compact.go:75		0x5f174d		4811cf			ADCQ CX, DI				
  compact.go:76		0x5f1750		488b9c2480050000	MOVQ 0x580(SP), BX			
  compact.go:76		0x5f1758		4811cb			ADCQ CX, BX				
  compact.go:77		0x5f175b		4883d100		ADCQ $0x0, CX				
  compact.go:78		0x5f175f		4901c0			ADDQ AX, R8				
  compact.go:79		0x5f1762		4c11ca			ADCQ R9, DX				
  compact.go:79		0x5f1765		4889942448050000	MOVQ DX, 0x548(SP)			
  compact.go:80		0x5f176d		4d11da			ADCQ R11, R10				
  compact.go:80		0x5f1770		4c89942440050000	MOVQ R10, 0x540(SP)			
  compact.go:81		0x5f1778		4c11e6			ADCQ R12, SI				
  compact.go:81		0x5f177b		4889b42438050000	MOVQ SI, 0x538(SP)			
  compact.go:82		0x5f1783		4c11ef			ADCQ R13, DI				
  compact.go:82		0x5f1786		4889bc2430050000	MOVQ DI, 0x530(SP)			
  compact.go:83		0x5f178e		4c11fb			ADCQ R15, BX				
  compact.go:83		0x5f1791		48899c2420050000	MOVQ BX, 0x520(SP)			
  compact.go:84		0x5f1799		4c8b8424a0050000	MOVQ 0x5a0(SP), R8			
  compact.go:84		0x5f17a1		4c11c1			ADCQ R8, CX				
  compact.go:84		0x5f17a4		48898c2418050000	MOVQ CX, 0x518(SP)			
  compact.go:84		0x5f17ac		410f92c0		SETB R8					
  compact.go:84		0x5f17b0		450fb6c0		MOVZX R8, R8				
  compact.go:58		0x5f17b4		4c8b4c2448		MOVQ 0x48(SP), R9			
  compact.go:58		0x5f17b9		4c8b9c24d8000000	MOVQ 0xd8(SP), R11			
  compact.go:58		0x5f17c1		4d01d9			ADDQ R11, R9				
  compact.go:59		0x5f17c4		4c8b4c2430		MOVQ 0x30(SP), R9			
  compact.go:59		0x5f17c9		4c8b9c24d0000000	MOVQ 0xd0(SP), R11			
  compact.go:59		0x5f17d1		4d11d9			ADCQ R11, R9				
  compact.go:60		0x5f17d4		4c8b4c2428		MOVQ 0x28(SP), R9			
  compact.go:60		0x5f17d9		4c8b9c24c8000000	MOVQ 0xc8(SP), R11			
  compact.go:60		0x5f17e1		4d11d9			ADCQ R11, R9				
  compact.go:61		0x5f17e4		4c8b4c2420		MOVQ 0x20(SP), R9			
  compact.go:61		0x5f17e9		4c8b9c24c0000000	MOVQ 0xc0(SP), R11			
  compact.go:61		0x5f17f1		4d11d9			ADCQ R11, R9				
  compact.go:62		0x5f17f4		4c8b4c2418		MOVQ 0x18(SP), R9			
  compact.go:62		0x5f17f9		4c8b9c24b8000000	MOVQ 0xb8(SP), R11			
  compact.go:62		0x5f1801		4d11d9			ADCQ R11, R9				
  compact.go:63		0x5f1804		4c8b4c2410		MOVQ 0x10(SP), R9			
  compact.go:63		0x5f1809		4c8b9c24b0000000	MOVQ 0xb0(SP), R11			
  compact.go:63		0x5f1811		4d11d9			ADCQ R11, R9				
  compact.go:64		0x5f1814		4c8b0c24		MOVQ 0(SP), R9				
  compact.go:64		0x5f1818		4c8b9c24a8000000	MOVQ 0xa8(SP), R11			
  compact.go:64		0x5f1820		4d11d9			ADCQ R11, R9				
  compact.go:85		0x5f1823		4983d000		ADCQ $0x0, R8				
  compact.go:85		0x5f1827		4c89842410050000	MOVQ R8, 0x510(SP)			
  compact.go:92		0x5f182f		4c8b8c24b0040000	MOVQ 0x4b0(SP), R9			
  compact.go:92		0x5f1837		4c8b9c24c8040000	MOVQ 0x4c8(SP), R11			
  compact.go:92		0x5f183f		4d01d9			ADDQ R11, R9				
  compact.go:92		0x5f1842		4c898c24a8040000	MOVQ R9, 0x4a8(SP)			
  compact.go:93		0x5f184a		4c8b9c24c0040000	MOVQ 0x4c0(SP), R11			
  compact.go:93		0x5f1852		4c8ba424d8040000	MOVQ 0x4d8(SP), R12			
  compact.go:93		0x5f185a		4d11e3			ADCQ R12, R11				
  compact.go:93		0x5f185d		4c899c24a0040000	MOVQ R11, 0x4a0(SP)			
  compact.go:94		0x5f1865		4c8ba424d0040000	MOVQ 0x4d0(SP), R12			
  compact.go:94		0x5f186d		4c8bac24e8040000	MOVQ 0x4e8(SP), R13			
  compact.go:94		0x5f1875		4d11ec			ADCQ R13, R12				
  compact.go:94		0x5f1878		4c89a42498040000	MOVQ R12, 0x498(SP)			
  compact.go:95		0x5f1880		4c8bac24e0040000	MOVQ 0x4e0(SP), R13			
  compact.go:95		0x5f1888		4c8bbc24f8040000	MOVQ 0x4f8(SP), R15			
  compact.go:95		0x5f1890		4d11fd			ADCQ R15, R13				
  compact.go:95		0x5f1893		4c89ac2490040000	MOVQ R13, 0x490(SP)			
  compact.go:96		0x5f189b		4c8bbc24f0040000	MOVQ 0x4f0(SP), R15			
  compact.go:85		0x5f18a3		4c89c0			MOVQ R8, AX				
  compact.go:96		0x5f18a6		4c8b842408050000	MOVQ 0x508(SP), R8			
  compact.go:96		0x5f18ae		4d11c7			ADCQ R8, R15				
  compact.go:96		0x5f18b1		4c89bc2488040000	MOVQ R15, 0x488(SP)			
  compact.go:97		0x5f18b9		4c8b842400050000	MOVQ 0x500(SP), R8			
  compact.go:97		0x5f18c1		4983d000		ADCQ $0x0, R8				
  compact.go:97		0x5f18c5		4c89842480040000	MOVQ R8, 0x480(SP)			
  compact.go:98		0x5f18cd		4c8b8424b8040000	MOVQ 0x4b8(SP), R8			
  compact.go:98		0x5f18d5		4901d0			ADDQ DX, R8				
  compact.go:99		0x5f18d8		4d11d1			ADCQ R10, R9				
  compact.go:100	0x5f18db		4911f3			ADCQ SI, R11				
  compact.go:101	0x5f18de		4911fc			ADCQ DI, R12				
  compact.go:102	0x5f18e1		4911dd			ADCQ BX, R13				
  compact.go:103	0x5f18e4		4911cf			ADCQ CX, R15				
  compact.go:104	0x5f18e7		488b8c2480040000	MOVQ 0x480(SP), CX			
  compact.go:104	0x5f18ef		4811c1			ADCQ AX, CX				
  compact.go:104	0x5f18f2		48898c2468040000	MOVQ CX, 0x468(SP)			
  compact.go:105	0x5f18fa		4c89c0			MOVQ R8, AX				
  compact.go:105	0x5f18fd		48bb0100000001000000	MOVQ $0x100000001, BX			
  compact.go:105	0x5f1907		48f7e3			MULQ BX					
  compact.go:105	0x5f190a		4889842460040000	MOVQ AX, 0x460(SP)			
  compact.go:106	0x5f1912		48c7c2ffffffff		MOVQ $-0x1, DX				
  compact.go:106	0x5f1919		48f7e2			MULQ DX					
  compact.go:108	0x5f191c		4889842458040000	MOVQ AX, 0x458(SP)			
  compact.go:108	0x5f1924		4889942450040000	MOVQ DX, 0x450(SP)			
  compact.go:109	0x5f192c		488b842460040000	MOVQ 0x460(SP), AX			
  compact.go:109	0x5f1934		48c7c3feffffff		MOVQ $-0x2, BX				
  compact.go:109	0x5f193b		48f7e3			MULQ BX					
  compact.go:109	0x5f193e		4889942440040000	MOVQ DX, 0x440(SP)			
  compact.go:109	0x5f1946		4889842448040000	MOVQ AX, 0x448(SP)			
  compact.go:110	0x5f194e		488b842460040000	MOVQ 0x460(SP), AX			
  compact.go:110	0x5f1956		48bb00000000ffffffff	MOVQ $0xffffffff00000000, BX		
  compact.go:110	0x5f1960		48f7e3			MULQ BX					
  compact.go:110	0x5f1963		4889942430040000	MOVQ DX, 0x430(SP)			
  compact.go:110	0x5f196b		4889842438040000	MOVQ AX, 0x438(SP)			
  compact.go:111	0x5f1973		488b842460040000	MOVQ 0x460(SP), AX			
  compact.go:111	0x5f197b		bbffffffff		MOVL $-0x1, BX				
  compact.go:111	0x5f1980		48f7e3			MULQ BX					
  compact.go:112	0x5f1983		488b9c2438040000	MOVQ 0x438(SP), BX			
  compact.go:112	0x5f198b		4801da			ADDQ BX, DX				
  compact.go:113	0x5f198e		488b9c2430040000	MOVQ 0x430(SP), BX			
  compact.go:113	0x5f1996		488bbc2448040000	MOVQ 0x448(SP), DI			
  compact.go:113	0x5f199e		4811fb			ADCQ DI, BX				
  compact.go:114	0x5f19a1		488bbc2440040000	MOVQ 0x440(SP), DI			
  compact.go:114	0x5f19a9		488bb42458040000	MOVQ 0x458(SP), SI			
  compact.go:114	0x5f19b1		4811f7			ADCQ SI, DI				
  compact.go:115	0x5f19b4		4c8b942450040000	MOVQ 0x450(SP), R10			
  compact.go:115	0x5f19bc		4c11d6			ADCQ R10, SI				
  compact.go:116	0x5f19bf		488b8c2458040000	MOVQ 0x458(SP), CX			
  compact.go:116	0x5f19c7		4c11d1			ADCQ R10, CX				
  compact.go:117	0x5f19ca		4983d200		ADCQ $0x0, R10				
  compact.go:118	0x5f19ce		4901c0			ADDQ AX, R8				
  compact.go:119	0x5f19d1		4c11ca			ADCQ R9, DX				
  compact.go:119	0x5f19d4		4889942428040000	MOVQ DX, 0x428(SP)			
  compact.go:120	0x5f19dc		4c11db			ADCQ R11, BX				
  compact.go:120	0x5f19df		48899c2420040000	MOVQ BX, 0x420(SP)			
  compact.go:121	0x5f19e7		4c11e7			ADCQ R12, DI				
  compact.go:121	0x5f19ea		4889bc2418040000	MOVQ DI, 0x418(SP)			
  compact.go:122	0x5f19f2		4c11ee			ADCQ R13, SI				
  compact.go:122	0x5f19f5		4889b42410040000	MOVQ SI, 0x410(SP)			
  compact.go:123	0x5f19fd		4c11f9			ADCQ R15, CX				
  compact.go:123	0x5f1a00		48898c2408040000	MOVQ CX, 0x408(SP)			
  compact.go:124	0x5f1a08		4c8b842468040000	MOVQ 0x468(SP), R8			
  compact.go:124	0x5f1a10		4d11c2			ADCQ R8, R10				
  compact.go:124	0x5f1a13		4c89942400040000	MOVQ R10, 0x400(SP)			
  compact.go:124	0x5f1a1b		410f92c0		SETB R8					
  compact.go:124	0x5f1a1f		450fb6c0		MOVZX R8, R8				
  compact.go:98		0x5f1a23		4c8b8c24b8040000	MOVQ 0x4b8(SP), R9			
  compact.go:98		0x5f1a2b		4c8b9c2448050000	MOVQ 0x548(SP), R11			
  compact.go:98		0x5f1a33		4d01d9			ADDQ R11, R9				
  compact.go:99		0x5f1a36		4c8b8c24a8040000	MOVQ 0x4a8(SP), R9			
  compact.go:99		0x5f1a3e		4c8b9c2440050000	MOVQ 0x540(SP), R11			
  compact.go:99		0x5f1a46		4d11d9			ADCQ R11, R9				
  compact.go:100	0x5f1a49		4c8b8c24a0040000	MOVQ 0x4a0(SP), R9			
  compact.go:100	0x5f1a51		4c8b9c2438050000	MOVQ 0x538(SP), R11			
  compact.go:100	0x5f1a59		4d11d9			ADCQ R11, R9				
  compact.go:101	0x5f1a5c		4c8b8c2498040000	MOVQ 0x498(SP), R9			
  compact.go:101	0x5f1a64		4c8b9c2430050000	MOVQ 0x530(SP), R11			
  compact.go:101	0x5f1a6c		4d11d9			ADCQ R11, R9				
  compact.go:102	0x5f1a6f		4c8b8c2490040000	MOVQ 0x490(SP), R9			
  compact.go:102	0x5f1a77		4c8b9c2420050000	MOVQ 0x520(SP), R11			
  compact.go:102	0x5f1a7f		4d11d9			ADCQ R11, R9				
  compact.go:103	0x5f1a82		4c8b8c2488040000	MOVQ 0x488(SP), R9			
  compact.go:103	0x5f1a8a		4c8b9c2418050000	MOVQ 0x518(SP), R11			
  compact.go:103	0x5f1a92		4d11d9			ADCQ R11, R9				
  compact.go:104	0x5f1a95		4c8b8c2480040000	MOVQ 0x480(SP), R9			
  compact.go:104	0x5f1a9d		4c8b9c2410050000	MOVQ 0x510(SP), R11			
  compact.go:104	0x5f1aa5		4d11d9			ADCQ R11, R9				
  compact.go:125	0x5f1aa8		4983d000		ADCQ $0x0, R8				
  compact.go:125	0x5f1aac		4c898424f8030000	MOVQ R8, 0x3f8(SP)			
  compact.go:132	0x5f1ab4		4c8b8c2498030000	MOVQ 0x398(SP), R9			
  compact.go:132	0x5f1abc		4c8b9c24b0030000	MOVQ 0x3b0(SP), R11			
  compact.go:132	0x5f1ac4		4d01d9			ADDQ R11, R9				
  compact.go:132	0x5f1ac7		4c898c2490030000	MOVQ R9, 0x390(SP)			
  compact.go:133	0x5f1acf		4c8b9c24a8030000	MOVQ 0x3a8(SP), R11			
  compact.go:133	0x5f1ad7		4c8ba424c0030000	MOVQ 0x3c0(SP), R12			
  compact.go:133	0x5f1adf		4d11e3			ADCQ R12, R11				
  compact.go:133	0x5f1ae2		4c899c2488030000	MOVQ R11, 0x388(SP)			
  compact.go:134	0x5f1aea		4c8ba424b8030000	MOVQ 0x3b8(SP), R12			
  compact.go:134	0x5f1af2		4c8bac24d0030000	MOVQ 0x3d0(SP), R13			
  compact.go:134	0x5f1afa		4d11ec			ADCQ R13, R12				
  compact.go:134	0x5f1afd		4c89a42480030000	MOVQ R12, 0x380(SP)			
  compact.go:135	0x5f1b05		4c8bac24c8030000	MOVQ 0x3c8(SP), R13			
  compact.go:135	0x5f1b0d		4c8bbc24e0030000	MOVQ 0x3e0(SP), R15			
  compact.go:135	0x5f1b15		4d11fd			ADCQ R15, R13				
  compact.go:135	0x5f1b18		4c89ac2478030000	MOVQ R13, 0x378(SP)			
  compact.go:136	0x5f1b20		4c8bbc24d8030000	MOVQ 0x3d8(SP), R15			
  compact.go:125	0x5f1b28		4c89c0			MOVQ R8, AX				
  compact.go:136	0x5f1b2b		4c8b8424f0030000	MOVQ 0x3f0(SP), R8			
  compact.go:136	0x5f1b33		4d11c7			ADCQ R8, R15				
  compact.go:136	0x5f1b36		4c89bc2470030000	MOVQ R15, 0x370(SP)			
  compact.go:137	0x5f1b3e		4c8b8424e8030000	MOVQ 0x3e8(SP), R8			
  compact.go:137	0x5f1b46		4983d000		ADCQ $0x0, R8				
  compact.go:137	0x5f1b4a		4c89842468030000	MOVQ R8, 0x368(SP)			
  compact.go:138	0x5f1b52		4c8b8424a0030000	MOVQ 0x3a0(SP), R8			
  compact.go:138	0x5f1b5a		4901d0			ADDQ DX, R8				
  compact.go:139	0x5f1b5d		4911d9			ADCQ BX, R9				
  compact.go:140	0x5f1b60		4911fb			ADCQ DI, R11				
  compact.go:141	0x5f1b63		4911f4			ADCQ SI, R12				
  compact.go:142	0x5f1b66		4911cd			ADCQ CX, R13				
  compact.go:143	0x5f1b69		4d11d7			ADCQ R10, R15				
  compact.go:144	0x5f1b6c		4c8b942468030000	MOVQ 0x368(SP), R10			
  compact.go:144	0x5f1b74		4911c2			ADCQ AX, R10				
  compact.go:144	0x5f1b77		4c89942460030000	MOVQ R10, 0x360(SP)			
  compact.go:145	0x5f1b7f		4c89c0			MOVQ R8, AX				
  compact.go:145	0x5f1b82		48b90100000001000000	MOVQ $0x100000001, CX			
  compact.go:145	0x5f1b8c		48f7e1			MULQ CX					
  compact.go:145	0x5f1b8f		4889842458030000	MOVQ AX, 0x358(SP)			
  compact.go:148	0x5f1b97		48c7c2ffffffff		MOVQ $-0x1, DX				
  compact.go:148	0x5f1b9e		48f7e2			MULQ DX					
  compact.go:147	0x5f1ba1		4889842450030000	MOVQ AX, 0x350(SP)			
  compact.go:148	0x5f1ba9		4889942448030000	MOVQ DX, 0x348(SP)			
  compact.go:149	0x5f1bb1		488b842458030000	MOVQ 0x358(SP), AX			
  compact.go:149	0x5f1bb9		48c7c1feffffff		MOVQ $-0x2, CX				
  compact.go:149	0x5f1bc0		48f7e1			MULQ CX					
  compact.go:149	0x5f1bc3		4889942438030000	MOVQ DX, 0x338(SP)			
  compact.go:149	0x5f1bcb		4889842440030000	MOVQ AX, 0x340(SP)			
  compact.go:150	0x5f1bd3		488b842458030000	MOVQ 0x358(SP), AX			
  compact.go:150	0x5f1bdb		48b900000000ffffffff	MOVQ $0xffffffff00000000, CX		
  compact.go:150	0x5f1be5		48f7e1			MULQ CX					
  compact.go:150	0x5f1be8		4889942428030000	MOVQ DX, 0x328(SP)			
  compact.go:150	0x5f1bf0		4889842430030000	MOVQ AX, 0x330(SP)			
  compact.go:151	0x5f1bf8		488b842458030000	MOVQ 0x358(SP), AX			
  compact.go:151	0x5f1c00		b9ffffffff		MOVL $-0x1, CX				
  compact.go:151	0x5f1c05		48f7e1			MULQ CX					
  compact.go:152	0x5f1c08		488b8c2430030000	MOVQ 0x330(SP), CX			
  compact.go:152	0x5f1c10		4801ca			ADDQ CX, DX				
  compact.go:153	0x5f1c13		488b8c2428030000	MOVQ 0x328(SP), CX			
  compact.go:153	0x5f1c1b		488bb42440030000	MOVQ 0x340(SP), SI			
  compact.go:153	0x5f1c23		4811f1			ADCQ SI, CX				
  compact.go:154	0x5f1c26		488bb42438030000	MOVQ 0x338(SP), SI			
  compact.go:154	0x5f1c2e		488bbc2450030000	MOVQ 0x350(SP), DI			
  compact.go:154	0x5f1c36		4811fe			ADCQ DI, SI				
  compact.go:155	0x5f1c39		488b9c2448030000	MOVQ 0x348(SP), BX			
  compact.go:155	0x5f1c41		4811fb			ADCQ DI, BX				
  compact.go:156	0x5f1c44		4c8b942448030000	MOVQ 0x348(SP), R10			
  compact.go:156	0x5f1c4c		4c11d7			ADCQ R10, DI				
  compact.go:157	0x5f1c4f		4983d200		ADCQ $0x0, R10				
  compact.go:158	0x5f1c53		4901c0			ADDQ AX, R8				
  compact.go:159	0x5f1c56		4c11ca			ADCQ R9, DX				
  compact.go:159	0x5f1c59		4889942420030000	MOVQ DX, 0x320(SP)			
  compact.go:160	0x5f1c61		4c11d9			ADCQ R11, CX				
  compact.go:160	0x5f1c64		48898c2418030000	MOVQ CX, 0x318(SP)			
  compact.go:161	0x5f1c6c		4c11e6			ADCQ R12, SI				
  compact.go:161	0x5f1c6f		4889b42408030000	MOVQ SI, 0x308(SP)			
  compact.go:162	0x5f1c77		4c11eb			ADCQ R13, BX				
  compact.go:162	0x5f1c7a		48899c2400030000	MOVQ BX, 0x300(SP)			
  compact.go:163	0x5f1c82		4c11ff			ADCQ R15, DI				
  compact.go:163	0x5f1c85		4889bc24f8020000	MOVQ DI, 0x2f8(SP)			
  compact.go:164	0x5f1c8d		4c8b842460030000	MOVQ 0x360(SP), R8			
  compact.go:164	0x5f1c95		4d11c2			ADCQ R8, R10				
  compact.go:164	0x5f1c98		4c899424f0020000	MOVQ R10, 0x2f0(SP)			
  compact.go:164	0x5f1ca0		410f92c0		SETB R8					
  compact.go:164	0x5f1ca4		450fb6c0		MOVZX R8, R8				
  compact.go:138	0x5f1ca8		4c8b8c24a0030000	MOVQ 0x3a0(SP), R9			
  compact.go:138	0x5f1cb0		4c8b9c2428040000	MOVQ 0x428(SP), R11			
  compact.go:138	0x5f1cb8		4d01d9			ADDQ R11, R9				
  compact.go:139	0x5f1cbb		4c8b8c2490030000	MOVQ 0x390(SP), R9			
  compact.go:139	0x5f1cc3		4c8b9c2420040000	MOVQ 0x420(SP), R11			
  compact.go:139	0x5f1ccb		4d11d9			ADCQ R11, R9				
  compact.go:140	0x5f1cce		4c8b8c2488030000	MOVQ 0x388(SP), R9			
  compact.go:140	0x5f1cd6		4c8b9c2418040000	MOVQ 0x418(SP), R11			
  compact.go:140	0x5f1cde		4d11d9			ADCQ R11, R9				
  compact.go:141	0x5f1ce1		4c8b8c2480030000	MOVQ 0x380(SP), R9			
  compact.go:141	0x5f1ce9		4c8b9c2410040000	MOVQ 0x410(SP), R11			
  compact.go:141	0x5f1cf1		4d11d9			ADCQ R11, R9				
  compact.go:142	0x5f1cf4		4c8b8c2478030000	MOVQ 0x378(SP), R9			
  compact.go:142	0x5f1cfc		4c8b9c2408040000	MOVQ 0x408(SP), R11			
  compact.go:142	0x5f1d04		4d11d9			ADCQ R11, R9				
  compact.go:143	0x5f1d07		4c8b8c2470030000	MOVQ 0x370(SP), R9			
  compact.go:143	0x5f1d0f		4c8b9c2400040000	MOVQ 0x400(SP), R11			
  compact.go:143	0x5f1d17		4d11d9			ADCQ R11, R9				
  compact.go:144	0x5f1d1a		4c8b8c2468030000	MOVQ 0x368(SP), R9			
  compact.go:144	0x5f1d22		4c8b9c24f8030000	MOVQ 0x3f8(SP), R11			
  compact.go:144	0x5f1d2a		4d11d9			ADCQ R11, R9				
  compact.go:165	0x5f1d2d		4983d000		ADCQ $0x0, R8				
  compact.go:165	0x5f1d31		4c898424e8020000	MOVQ R8, 0x2e8(SP)			
  compact.go:172	0x5f1d39		4c8b8c2480020000	MOVQ 0x280(SP), R9			
  compact.go:172	0x5f1d41		4c8b9c2498020000	MOVQ 0x298(SP), R11			
  compact.go:172	0x5f1d49		4d01d9			ADDQ R11, R9				
  compact.go:172	0x5f1d4c		4c898c2478020000	MOVQ R9, 0x278(SP)			
  compact.go:173	0x5f1d54		4c8b9c2490020000	MOVQ 0x290(SP), R11			
  compact.go:173	0x5f1d5c		4c8ba424a8020000	MOVQ 0x2a8(SP), R12			
  compact.go:173	0x5f1d64		4d11e3			ADCQ R12, R11				
  compact.go:173	0x5f1d67		4c899c2470020000	MOVQ R11, 0x270(SP)			
  compact.go:174	0x5f1d6f		4c8ba424a0020000	MOVQ 0x2a0(SP), R12			
  compact.go:174	0x5f1d77		4c8bac24b8020000	MOVQ 0x2b8(SP), R13			
  compact.go:174	0x5f1d7f		4d11ec			ADCQ R13, R12				
  compact.go:174	0x5f1d82		4c89a42468020000	MOVQ R12, 0x268(SP)			
  compact.go:175	0x5f1d8a		4c8bac24b0020000	MOVQ 0x2b0(SP), R13			
  compact.go:175	0x5f1d92		4c8bbc24c8020000	MOVQ 0x2c8(SP), R15			
  compact.go:175	0x5f1d9a		4d11fd			ADCQ R15, R13				
  compact.go:175	0x5f1d9d		4c89ac2460020000	MOVQ R13, 0x260(SP)			
  compact.go:176	0x5f1da5		4c8bbc24c0020000	MOVQ 0x2c0(SP), R15			
  compact.go:165	0x5f1dad		4c89c0			MOVQ R8, AX				
  compact.go:176	0x5f1db0		4c8b8424d8020000	MOVQ 0x2d8(SP), R8			
  compact.go:176	0x5f1db8		4d11c7			ADCQ R8, R15				
  compact.go:176	0x5f1dbb		4c89bc2458020000	MOVQ R15, 0x258(SP)			
  compact.go:177	0x5f1dc3		4c8b8424d0020000	MOVQ 0x2d0(SP), R8			
  compact.go:177	0x5f1dcb		4983d000		ADCQ $0x0, R8				
  compact.go:177	0x5f1dcf		4c89842450020000	MOVQ R8, 0x250(SP)			
  compact.go:178	0x5f1dd7		4c8b842488020000	MOVQ 0x288(SP), R8			
  compact.go:178	0x5f1ddf		4901d0			ADDQ DX, R8				
  compact.go:179	0x5f1de2		4911c9			ADCQ CX, R9				
  compact.go:180	0x5f1de5		4911f3			ADCQ SI, R11				
  compact.go:181	0x5f1de8		4911dc			ADCQ BX, R12				
  compact.go:182	0x5f1deb		4911fd			ADCQ DI, R13				
  compact.go:183	0x5f1dee		4d11d7			ADCQ R10, R15				
  compact.go:184	0x5f1df1		4c8b942450020000	MOVQ 0x250(SP), R10			
  compact.go:184	0x5f1df9		4911c2			ADCQ AX, R10				
  compact.go:184	0x5f1dfc		4c89942448020000	MOVQ R10, 0x248(SP)			
  compact.go:185	0x5f1e04		4c89c0			MOVQ R8, AX				
  compact.go:185	0x5f1e07		48bf0100000001000000	MOVQ $0x100000001, DI			
  compact.go:185	0x5f1e11		48f7e7			MULQ DI					
  compact.go:185	0x5f1e14		4889842440020000	MOVQ AX, 0x240(SP)			
  compact.go:188	0x5f1e1c		48c7c2ffffffff		MOVQ $-0x1, DX				
  compact.go:188	0x5f1e23		48f7e2			MULQ DX					
  compact.go:186	0x5f1e26		4889842438020000	MOVQ AX, 0x238(SP)			
  compact.go:186	0x5f1e2e		4889942430020000	MOVQ DX, 0x230(SP)			
  compact.go:189	0x5f1e36		488b842440020000	MOVQ 0x240(SP), AX			
  compact.go:189	0x5f1e3e		48c7c7feffffff		MOVQ $-0x2, DI				
  compact.go:189	0x5f1e45		48f7e7			MULQ DI					
  compact.go:189	0x5f1e48		4889942420020000	MOVQ DX, 0x220(SP)			
  compact.go:189	0x5f1e50		4889842428020000	MOVQ AX, 0x228(SP)			
  compact.go:190	0x5f1e58		488b842440020000	MOVQ 0x240(SP), AX			
  compact.go:190	0x5f1e60		48bf00000000ffffffff	MOVQ $0xffffffff00000000, DI		
  compact.go:190	0x5f1e6a		48f7e7			MULQ DI					
  compact.go:190	0x5f1e6d		4889942410020000	MOVQ DX, 0x210(SP)			
  compact.go:190	0x5f1e75		4889842418020000	MOVQ AX, 0x218(SP)			
  compact.go:191	0x5f1e7d		488b842440020000	MOVQ 0x240(SP), AX			
  compact.go:191	0x5f1e85		bfffffffff		MOVL $-0x1, DI				
  compact.go:191	0x5f1e8a		48f7e7			MULQ DI					
  compact.go:192	0x5f1e8d		488bbc2418020000	MOVQ 0x218(SP), DI			
  compact.go:192	0x5f1e95		4801fa			ADDQ DI, DX				
  compact.go:193	0x5f1e98		488bbc2410020000	MOVQ 0x210(SP), DI			
  compact.go:193	0x5f1ea0		488b9c2428020000	MOVQ 0x228(SP), BX			
  compact.go:193	0x5f1ea8		4811df			ADCQ BX, DI				
  compact.go:194	0x5f1eab		488b9c2420020000	MOVQ 0x220(SP), BX			
  compact.go:194	0x5f1eb3		488bb42438020000	MOVQ 0x238(SP), SI			
  compact.go:194	0x5f1ebb		4811f3			ADCQ SI, BX				
  compact.go:195	0x5f1ebe		488b8c2430020000	MOVQ 0x230(SP), CX			
  compact.go:195	0x5f1ec6		4811ce			ADCQ CX, SI				
  compact.go:196	0x5f1ec9		4c8b942438020000	MOVQ 0x238(SP), R10			
  compact.go:196	0x5f1ed1		4911ca			ADCQ CX, R10				
  compact.go:197	0x5f1ed4		4883d100		ADCQ $0x0, CX				
  compact.go:198	0x5f1ed8		4901c0			ADDQ AX, R8				
  compact.go:199	0x5f1edb		4c11ca			ADCQ R9, DX				
  compact.go:199	0x5f1ede		48899424f8010000	MOVQ DX, 0x1f8(SP)			
  compact.go:200	0x5f1ee6		4c11df			ADCQ R11, DI				
  compact.go:200	0x5f1ee9		4889bc24f0010000	MOVQ DI, 0x1f0(SP)			
  compact.go:201	0x5f1ef1		4c11e3			ADCQ R12, BX				
  compact.go:201	0x5f1ef4		48899c24e8010000	MOVQ BX, 0x1e8(SP)			
  compact.go:202	0x5f1efc		4c11ee			ADCQ R13, SI				
  compact.go:202	0x5f1eff		4889b424e0010000	MOVQ SI, 0x1e0(SP)			
  compact.go:203	0x5f1f07		4d11fa			ADCQ R15, R10				
  compact.go:203	0x5f1f0a		4c899424d8010000	MOVQ R10, 0x1d8(SP)			
  compact.go:204	0x5f1f12		4c8b842448020000	MOVQ 0x248(SP), R8			
  compact.go:204	0x5f1f1a		4c11c1			ADCQ R8, CX				
  compact.go:204	0x5f1f1d		48898c24d0010000	MOVQ CX, 0x1d0(SP)			
  compact.go:204	0x5f1f25		410f92c0		SETB R8					
  compact.go:204	0x5f1f29		450fb6c0		MOVZX R8, R8				
  compact.go:178	0x5f1f2d		4c8b8c2488020000	MOVQ 0x288(SP), R9			
  compact.go:178	0x5f1f35		4c8b9c2420030000	MOVQ 0x320(SP), R11			
  compact.go:178	0x5f1f3d		4d01d9			ADDQ R11, R9				
  compact.go:179	0x5f1f40		4c8b8c2478020000	MOVQ 0x278(SP), R9			
  compact.go:179	0x5f1f48		4c8b9c2418030000	MOVQ 0x318(SP), R11			
  compact.go:179	0x5f1f50		4d11d9			ADCQ R11, R9				
  compact.go:180	0x5f1f53		4c8b8c2470020000	MOVQ 0x270(SP), R9			
  compact.go:180	0x5f1f5b		4c8b9c2408030000	MOVQ 0x308(SP), R11			
  compact.go:180	0x5f1f63		4d11d9			ADCQ R11, R9				
  compact.go:181	0x5f1f66		4c8b8c2468020000	MOVQ 0x268(SP), R9			
  compact.go:181	0x5f1f6e		4c8b9c2400030000	MOVQ 0x300(SP), R11			
  compact.go:181	0x5f1f76		4d11d9			ADCQ R11, R9				
  compact.go:182	0x5f1f79		4c8b8c2460020000	MOVQ 0x260(SP), R9			
  compact.go:182	0x5f1f81		4c8b9c24f8020000	MOVQ 0x2f8(SP), R11			
  compact.go:182	0x5f1f89		4d11d9			ADCQ R11, R9				
  compact.go:183	0x5f1f8c		4c8b8c2458020000	MOVQ 0x258(SP), R9			
  compact.go:183	0x5f1f94		4c8b9c24f0020000	MOVQ 0x2f0(SP), R11			
  compact.go:183	0x5f1f9c		4d11d9			ADCQ R11, R9				
  compact.go:184	0x5f1f9f		4c8b8c2450020000	MOVQ 0x250(SP), R9			
  compact.go:184	0x5f1fa7		4c8b9c24e8020000	MOVQ 0x2e8(SP), R11			
  compact.go:184	0x5f1faf		4d11d9			ADCQ R11, R9				
  compact.go:205	0x5f1fb2		4983d000		ADCQ $0x0, R8				
  compact.go:205	0x5f1fb6		4c898424c8010000	MOVQ R8, 0x1c8(SP)			
  compact.go:212	0x5f1fbe		4c8b8c2460010000	MOVQ 0x160(SP), R9			
  compact.go:212	0x5f1fc6		4c8b9c2478010000	MOVQ 0x178(SP), R11			
  compact.go:212	0x5f1fce		4d01d9			ADDQ R11, R9				
  compact.go:212	0x5f1fd1		4c898c2458010000	MOVQ R9, 0x158(SP)			
  compact.go:213	0x5f1fd9		4c8b9c2470010000	MOVQ 0x170(SP), R11			
  compact.go:213	0x5f1fe1		4c8ba42488010000	MOVQ 0x188(SP), R12			
  compact.go:213	0x5f1fe9		4d11e3			ADCQ R12, R11				
  compact.go:213	0x5f1fec		4c899c2448010000	MOVQ R11, 0x148(SP)			
  compact.go:214	0x5f1ff4		4c8ba42480010000	MOVQ 0x180(SP), R12			
  compact.go:214	0x5f1ffc		4c8bac2498010000	MOVQ 0x198(SP), R13			
  compact.go:214	0x5f2004		4d11ec			ADCQ R13, R12				
  compact.go:214	0x5f2007		4c89a42440010000	MOVQ R12, 0x140(SP)			
  compact.go:215	0x5f200f		4c8bac2490010000	MOVQ 0x190(SP), R13			
  compact.go:215	0x5f2017		4c8bbc24b0010000	MOVQ 0x1b0(SP), R15			
  compact.go:215	0x5f201f		4d11fd			ADCQ R15, R13				
  compact.go:215	0x5f2022		4c89ac2438010000	MOVQ R13, 0x138(SP)			
  compact.go:216	0x5f202a		4c8bbc24a0010000	MOVQ 0x1a0(SP), R15			
  compact.go:205	0x5f2032		4c89c0			MOVQ R8, AX				
  compact.go:216	0x5f2035		4c8b8424c0010000	MOVQ 0x1c0(SP), R8			
  compact.go:216	0x5f203d		4d11c7			ADCQ R8, R15				
  compact.go:216	0x5f2040		4c89bc2430010000	MOVQ R15, 0x130(SP)			
  compact.go:217	0x5f2048		4c8b8424b8010000	MOVQ 0x1b8(SP), R8			
  compact.go:217	0x5f2050		4983d000		ADCQ $0x0, R8				
  compact.go:217	0x5f2054		4c89842428010000	MOVQ R8, 0x128(SP)			
  compact.go:218	0x5f205c		4c8b842468010000	MOVQ 0x168(SP), R8			
  compact.go:218	0x5f2064		4901d0			ADDQ DX, R8				
  compact.go:219	0x5f2067		4911f9			ADCQ DI, R9				
  compact.go:220	0x5f206a		4911db			ADCQ BX, R11				
  compact.go:221	0x5f206d		4911f4			ADCQ SI, R12				
  compact.go:222	0x5f2070		4d11d5			ADCQ R10, R13				
  compact.go:223	0x5f2073		4911cf			ADCQ CX, R15				
  compact.go:224	0x5f2076		488b8c2428010000	MOVQ 0x128(SP), CX			
  compact.go:224	0x5f207e		4811c1			ADCQ AX, CX				
  compact.go:224	0x5f2081		48898c2410010000	MOVQ CX, 0x110(SP)			
  compact.go:225	0x5f2089		4c89c0			MOVQ R8, AX				
  compact.go:225	0x5f208c		49ba0100000001000000	MOVQ $0x100000001, R10			
  compact.go:225	0x5f2096		49f7e2			MULQ R10				
  compact.go:226	0x5f2099		48c7c2ffffffff		MOVQ $-0x1, DX				
  compact.go:225	0x5f20a0		4989c2			MOVQ AX, R10				
  compact.go:226	0x5f20a3		48f7e2			MULQ DX					
  compact.go:228	0x5f20a6		4889842408010000	MOVQ AX, 0x108(SP)			
  compact.go:228	0x5f20ae		4889942400010000	MOVQ DX, 0x100(SP)			
  compact.go:229	0x5f20b6		4c89d0			MOVQ R10, AX				
  compact.go:229	0x5f20b9		48c7c6feffffff		MOVQ $-0x2, SI				
  compact.go:229	0x5f20c0		48f7e6			MULQ SI					
  compact.go:229	0x5f20c3		48899424f8000000	MOVQ DX, 0xf8(SP)			
  compact.go:229	0x5f20cb		4889c6			MOVQ AX, SI				
  compact.go:230	0x5f20ce		4c89d0			MOVQ R10, AX				
  compact.go:230	0x5f20d1		48bb00000000ffffffff	MOVQ $0xffffffff00000000, BX		
  compact.go:230	0x5f20db		48f7e3			MULQ BX					
  compact.go:230	0x5f20de		48898424f0000000	MOVQ AX, 0xf0(SP)			
  compact.go:231	0x5f20e6		4c89d0			MOVQ R10, AX				
  compact.go:231	0x5f20e9		bbffffffff		MOVL $-0x1, BX				
  compact.go:230	0x5f20ee		4989d2			MOVQ DX, R10				
  compact.go:231	0x5f20f1		48f7e3			MULQ BX					
  compact.go:232	0x5f20f4		488b9c24f0000000	MOVQ 0xf0(SP), BX			
  compact.go:232	0x5f20fc		4801da			ADDQ BX, DX				
  compact.go:233	0x5f20ff		4911f2			ADCQ SI, R10				
  compact.go:234	0x5f2102		488b9c24f8000000	MOVQ 0xf8(SP), BX			
  compact.go:234	0x5f210a		488bb42408010000	MOVQ 0x108(SP), SI			
  compact.go:234	0x5f2112		4811f3			ADCQ SI, BX				
  compact.go:235	0x5f2115		488bbc2400010000	MOVQ 0x100(SP), DI			
  compact.go:235	0x5f211d		4811fe			ADCQ DI, SI				
  compact.go:236	0x5f2120		488b8c2408010000	MOVQ 0x108(SP), CX			
  compact.go:236	0x5f2128		4811f9			ADCQ DI, CX				
  compact.go:237	0x5f212b		4883d700		ADCQ $0x0, DI				
  compact.go:238	0x5f212f		4901c0			ADDQ AX, R8				
  compact.go:239	0x5f2132		4c11ca			ADCQ R9, DX				
  compact.go:240	0x5f2135		4d11da			ADCQ R11, R10				
  compact.go:241	0x5f2138		4c11e3			ADCQ R12, BX				
  compact.go:242	0x5f213b		4c11ee			ADCQ R13, SI				
  compact.go:243	0x5f213e		4c11f9			ADCQ R15, CX				
  compact.go:244	0x5f2141		4c8b842410010000	MOVQ 0x110(SP), R8			
  compact.go:244	0x5f2149		4c11c7			ADCQ R8, DI				
  compact.go:244	0x5f214c		410f92c0		SETB R8					
  compact.go:244	0x5f2150		450fb6c0		MOVZX R8, R8				
  compact.go:218	0x5f2154		4c8b8c2468010000	MOVQ 0x168(SP), R9			
  compact.go:218	0x5f215c		4c8b9c24f8010000	MOVQ 0x1f8(SP), R11			
  compact.go:218	0x5f2164		4d01d9			ADDQ R11, R9				
  compact.go:219	0x5f2167		4c8b8c2458010000	MOVQ 0x158(SP), R9			
  compact.go:219	0x5f216f		4c8b9c24f0010000	MOVQ 0x1f0(SP), R11			
  compact.go:219	0x5f2177		4d11d9			ADCQ R11, R9				
  compact.go:220	0x5f217a		4c8b8c2448010000	MOVQ 0x148(SP), R9			
  compact.go:220	0x5f2182		4c8b9c24e8010000	MOVQ 0x1e8(SP), R11			
  compact.go:220	0x5f218a		4d11d9			ADCQ R11, R9				
  compact.go:221	0x5f218d		4c8b8c2440010000	MOVQ 0x140(SP), R9			
  compact.go:221	0x5f2195		4c8b9c24e0010000	MOVQ 0x1e0(SP), R11			
  compact.go:221	0x5f219d		4d11d9			ADCQ R11, R9				
  compact.go:222	0x5f21a0		4c8b8c2438010000	MOVQ 0x138(SP), R9			
  compact.go:222	0x5f21a8		4c8b9c24d8010000	MOVQ 0x1d8(SP), R11			
  compact.go:222	0x5f21b0		4d11d9			ADCQ R11, R9				
  compact.go:223	0x5f21b3		4c8b8c2430010000	MOVQ 0x130(SP), R9			
  compact.go:223	0x5f21bb		4c8b9c24d0010000	MOVQ 0x1d0(SP), R11			
  compact.go:223	0x5f21c3		4d11d9			ADCQ R11, R9				
  compact.go:224	0x5f21c6		4c8b8c2428010000	MOVQ 0x128(SP), R9			
  compact.go:224	0x5f21ce		4c8b9c24c8010000	MOVQ 0x1c8(SP), R11			
  compact.go:224	0x5f21d6		4d11d9			ADCQ R11, R9				
  compact.go:245	0x5f21d9		4983d000		ADCQ $0x0, R8				
  compact.go:246	0x5f21dd		41b9ffffffff		MOVL $-0x1, R9				
  compact.go:246	0x5f21e3		4989d3			MOVQ DX, R11				
  compact.go:246	0x5f21e6		4c29ca			SUBQ R9, DX				
  compact.go:247	0x5f21e9		49b900000000ffffffff	MOVQ $0xffffffff00000000, R9		
  compact.go:247	0x5f21f3		4d89d4			MOVQ R10, R12				
  compact.go:247	0x5f21f6		4d19ca			SBBQ R9, R10				
  compact.go:248	0x5f21f9		4989d9			MOVQ BX, R9				
  compact.go:248	0x5f21fc		4883dbfe		SBBQ $-0x2, BX				
  compact.go:249	0x5f2200		4989f5			MOVQ SI, R13				
  compact.go:249	0x5f2203		4883deff		SBBQ $-0x1, SI				
  compact.go:250	0x5f2207		4989cf			MOVQ CX, R15				
  compact.go:250	0x5f220a		4883d9ff		SBBQ $-0x1, CX				
  compact.go:251	0x5f220e		4889f8			MOVQ DI, AX				
  compact.go:251	0x5f2211		4883dfff		SBBQ $-0x1, DI				
  compact.go:252	0x5f2215		4983d800		SBBQ $0x0, R8				
  compact.go:252	0x5f2219		410f92c0		SETB R8					
  compact.go:252	0x5f221d		450fb6c0		MOVZX R8, R8				
  common.go:7		0x5f2221		49f7d8			NEGQ R8					
  common.go:7		0x5f2224		4c898424b0050000	MOVQ R8, 0x5b0(SP)			
  common.go:8		0x5f222c		4d21c3			ANDQ R8, R11				
  common.go:8		0x5f222f		49f7d0			NOTQ R8					
  common.go:8		0x5f2232		4c21c2			ANDQ R8, DX				
  common.go:8		0x5f2235		4c09da			ORQ R11, DX				
  compact.go:265	0x5f2238		4c8b9c24e0050000	MOVQ 0x5e0(SP), R11			
  compact.go:265	0x5f2240		498913			MOVQ DX, 0(R11)				
  common.go:8		0x5f2243		488b9424b0050000	MOVQ 0x5b0(SP), DX			
  common.go:8		0x5f224b		4921d4			ANDQ DX, R12				
  common.go:8		0x5f224e		4d21c2			ANDQ R8, R10				
  common.go:8		0x5f2251		4d09e2			ORQ R12, R10				
  compact.go:266	0x5f2254		4d895308		MOVQ R10, 0x8(R11)			
  common.go:8		0x5f2258		4921d1			ANDQ DX, R9				
  common.go:8		0x5f225b		4c21c3			ANDQ R8, BX				
  common.go:8		0x5f225e		4c09cb			ORQ R9, BX				
  compact.go:267	0x5f2261		49895b10		MOVQ BX, 0x10(R11)			
  common.go:8		0x5f2265		4921d5			ANDQ DX, R13				
  common.go:8		0x5f2268		4c21c6			ANDQ R8, SI				
  common.go:8		0x5f226b		4c09ee			ORQ R13, SI				
  compact.go:268	0x5f226e		49897318		MOVQ SI, 0x18(R11)			
  common.go:8		0x5f2272		4921d7			ANDQ DX, R15				
  common.go:8		0x5f2275		4c21c1			ANDQ R8, CX				
  common.go:8		0x5f2278		4c09f9			ORQ R15, CX				
  compact.go:269	0x5f227b		49894b20		MOVQ CX, 0x20(R11)			
  common.go:8		0x5f227f		4821c2			ANDQ AX, DX				
  common.go:8		0x5f2282		4921f8			ANDQ DI, R8				
  common.go:8		0x5f2285		4c09c2			ORQ R8, DX				
  compact.go:270	0x5f2288		49895328		MOVQ DX, 0x28(R11)			
  compact.go:271	0x5f228c		c9			LEAVE					
  compact.go:271	0x5f228d		c3			RET					
  compact.go:7		0x5f228e		4889442408		MOVQ AX, 0x8(SP)			
  compact.go:7		0x5f2293		48895c2410		MOVQ BX, 0x10(SP)			
  compact.go:7		0x5f2298		48894c2418		MOVQ CX, 0x18(SP)			
  compact.go:7		0x5f229d		0f1f00			NOPL 0(AX)				
  compact.go:7		0x5f22a0		e89ba8e9ff		CALL runtime.morestack_noctxt.abi0(SB)	
  compact.go:7		0x5f22a5		488b442408		MOVQ 0x8(SP), AX			
  compact.go:7		0x5f22aa		488b5c2410		MOVQ 0x10(SP), BX			
  compact.go:7		0x5f22af		488b4c2418		MOVQ 0x18(SP), CX			
  compact.go:7		0x5f22b4		e9c7edffff		JMP example.com/p384issue.Mul(SB)	
