TEXT example.com/p384issue.Mul(SB) /home/exedev/crypto-audit/round4/issues/p384-square/compact.go
  compact.go:7		0x5f1080		4c8da424a8faffff	LEAQ 0xfffffaa8(SP), R12		
  compact.go:7		0x5f1088		4d3b6610		CMPQ R12, 0x10(R14)			
  compact.go:7		0x5f108c		0f86cf110000		JBE 0x5f2261				
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
  compact.go:14		0x5f10bc		4c8b5120		MOVQ 0x20(CX), R10			
  compact.go:15		0x5f10c0		4889d8			MOVQ BX, AX				
  compact.go:8		0x5f10c3		4989d4			MOVQ DX, R12				
  compact.go:15		0x5f10c6		49f7e2			MULQ R10				
  compact.go:15		0x5f10c9		48899424b8050000	MOVQ DX, 0x5b8(SP)			
  compact.go:15		0x5f10d1		4889442408		MOVQ AX, 0x8(SP)			
  compact.go:16		0x5f10d6		4c8b6918		MOVQ 0x18(CX), R13			
  compact.go:16		0x5f10da		4889d8			MOVQ BX, AX				
  compact.go:16		0x5f10dd		49f7e5			MULQ R13				
  compact.go:16		0x5f10e0		4889942468050000	MOVQ DX, 0x568(SP)			
  compact.go:16		0x5f10e8		4889842490050000	MOVQ AX, 0x590(SP)			
  compact.go:17		0x5f10f0		4c8b5910		MOVQ 0x10(CX), R11			
  compact.go:17		0x5f10f4		4889d8			MOVQ BX, AX				
  compact.go:17		0x5f10f7		49f7e3			MULQ R11				
  compact.go:17		0x5f10fa		4889942438050000	MOVQ DX, 0x538(SP)			
  compact.go:17		0x5f1102		4889842460050000	MOVQ AX, 0x560(SP)			
  compact.go:18		0x5f110a		4c8b7908		MOVQ 0x8(CX), R15			
  compact.go:18		0x5f110e		4889d8			MOVQ BX, AX				
  compact.go:18		0x5f1111		49f7e7			MULQ R15				
  compact.go:18		0x5f1114		48899424a8040000	MOVQ DX, 0x4a8(SP)			
  compact.go:18		0x5f111c		48898424f8040000	MOVQ AX, 0x4f8(SP)			
  compact.go:19		0x5f1124		488b11			MOVQ 0(CX), DX				
  compact.go:19		0x5f1127		48899424c8050000	MOVQ DX, 0x5c8(SP)			
  compact.go:19		0x5f112f		4889d8			MOVQ BX, AX				
  compact.go:19		0x5f1132		48f7e2			MULQ DX					
  compact.go:19		0x5f1135		4889842478040000	MOVQ AX, 0x478(SP)			
  compact.go:19		0x5f113d		4889942470040000	MOVQ DX, 0x470(SP)			
  compact.go:26		0x5f1145		48b80100000001000000	MOVQ $0x100000001, AX			
  compact.go:26		0x5f114f		488b942478040000	MOVQ 0x478(SP), DX			
  compact.go:26		0x5f1157		48f7e2			MULQ DX					
  compact.go:26		0x5f115a		48898424e0020000	MOVQ AX, 0x2e0(SP)			
  compact.go:26		0x5f1162		4889c2			MOVQ AX, DX				
  compact.go:29		0x5f1165		48c7c0ffffffff		MOVQ $-0x1, AX				
  compact.go:29		0x5f116c		48f7e2			MULQ DX					
  compact.go:27		0x5f116f		4889842458020000	MOVQ AX, 0x258(SP)			
  compact.go:27		0x5f1177		4889942440020000	MOVQ DX, 0x240(SP)			
  compact.go:30		0x5f117f		48c7c0feffffff		MOVQ $-0x2, AX				
  compact.go:30		0x5f1186		488b9424e0020000	MOVQ 0x2e0(SP), DX			
  compact.go:30		0x5f118e		48f7e2			MULQ DX					
  compact.go:30		0x5f1191		4889942450010000	MOVQ DX, 0x150(SP)			
  compact.go:30		0x5f1199		48898424a8010000	MOVQ AX, 0x1a8(SP)			
  compact.go:31		0x5f11a1		48b800000000ffffffff	MOVQ $0xffffffff00000000, AX		
  compact.go:31		0x5f11ab		488b9424e0020000	MOVQ 0x2e0(SP), DX			
  compact.go:31		0x5f11b3		48f7e2			MULQ DX					
  compact.go:31		0x5f11b6		4889942418010000	MOVQ DX, 0x118(SP)			
  compact.go:31		0x5f11be		4889842420010000	MOVQ AX, 0x120(SP)			
  compact.go:32		0x5f11c6		b8ffffffff		MOVL $-0x1, AX				
  compact.go:32		0x5f11cb		488b9424e0020000	MOVQ 0x2e0(SP), DX			
  compact.go:32		0x5f11d3		48f7e2			MULQ DX					
  compact.go:32		0x5f11d6		48898424f8000000	MOVQ AX, 0xf8(SP)			
  compact.go:46		0x5f11de		488b4928		MOVQ 0x28(CX), CX			
  compact.go:14		0x5f11e2		4889d8			MOVQ BX, AX				
  compact.go:32		0x5f11e5		4889d3			MOVQ DX, BX				
  compact.go:14		0x5f11e8		48f7e1			MULQ CX					
  compact.go:14		0x5f11eb		4889542440		MOVQ DX, 0x40(SP)			
  compact.go:14		0x5f11f0		4889842498000000	MOVQ AX, 0x98(SP)			
  compact.go:46		0x5f11f8		4c89e0			MOVQ R12, AX				
  compact.go:46		0x5f11fb		48f7e1			MULQ CX					
  compact.go:46		0x5f11fe		4889942490000000	MOVQ DX, 0x90(SP)			
  compact.go:46		0x5f1206		48898424a0000000	MOVQ AX, 0xa0(SP)			
  compact.go:47		0x5f120e		4c89e0			MOVQ R12, AX				
  compact.go:47		0x5f1211		49f7e2			MULQ R10				
  compact.go:47		0x5f1214		4889942480000000	MOVQ DX, 0x80(SP)			
  compact.go:47		0x5f121c		4889842488000000	MOVQ AX, 0x88(SP)			
  compact.go:48		0x5f1224		4c89e0			MOVQ R12, AX				
  compact.go:48		0x5f1227		49f7e5			MULQ R13				
  compact.go:48		0x5f122a		4889542470		MOVQ DX, 0x70(SP)			
  compact.go:48		0x5f122f		4889442478		MOVQ AX, 0x78(SP)			
  compact.go:49		0x5f1234		4c89e0			MOVQ R12, AX				
  compact.go:49		0x5f1237		49f7e3			MULQ R11				
  compact.go:49		0x5f123a		4889542460		MOVQ DX, 0x60(SP)			
  compact.go:49		0x5f123f		4889442468		MOVQ AX, 0x68(SP)			
  compact.go:50		0x5f1244		4c89e0			MOVQ R12, AX				
  compact.go:50		0x5f1247		49f7e7			MULQ R15				
  compact.go:50		0x5f124a		4889542450		MOVQ DX, 0x50(SP)			
  compact.go:50		0x5f124f		4889442458		MOVQ AX, 0x58(SP)			
  compact.go:51		0x5f1254		4c89e0			MOVQ R12, AX				
  compact.go:51		0x5f1257		488b9424c8050000	MOVQ 0x5c8(SP), DX			
  compact.go:19		0x5f125f		4989d4			MOVQ DX, R12				
  compact.go:51		0x5f1262		48f7e2			MULQ DX					
  compact.go:51		0x5f1265		4889542438		MOVQ DX, 0x38(SP)			
  compact.go:51		0x5f126a		4889442448		MOVQ AX, 0x48(SP)			
  compact.go:86		0x5f126f		4889f0			MOVQ SI, AX				
  compact.go:86		0x5f1272		48f7e1			MULQ CX					
  compact.go:86		0x5f1275		4889942410050000	MOVQ DX, 0x510(SP)			
  compact.go:86		0x5f127d		4889842418050000	MOVQ AX, 0x518(SP)			
  compact.go:87		0x5f1285		4889f0			MOVQ SI, AX				
  compact.go:87		0x5f1288		49f7e2			MULQ R10				
  compact.go:87		0x5f128b		4889942400050000	MOVQ DX, 0x500(SP)			
  compact.go:87		0x5f1293		4889842408050000	MOVQ AX, 0x508(SP)			
  compact.go:88		0x5f129b		4889f0			MOVQ SI, AX				
  compact.go:88		0x5f129e		49f7e5			MULQ R13				
  compact.go:88		0x5f12a1		48899424e8040000	MOVQ DX, 0x4e8(SP)			
  compact.go:88		0x5f12a9		48898424f0040000	MOVQ AX, 0x4f0(SP)			
  compact.go:89		0x5f12b1		4889f0			MOVQ SI, AX				
  compact.go:89		0x5f12b4		49f7e3			MULQ R11				
  compact.go:89		0x5f12b7		48899424d8040000	MOVQ DX, 0x4d8(SP)			
  compact.go:89		0x5f12bf		48898424e0040000	MOVQ AX, 0x4e0(SP)			
  compact.go:90		0x5f12c7		4889f0			MOVQ SI, AX				
  compact.go:90		0x5f12ca		49f7e7			MULQ R15				
  compact.go:90		0x5f12cd		48899424c8040000	MOVQ DX, 0x4c8(SP)			
  compact.go:90		0x5f12d5		48898424d0040000	MOVQ AX, 0x4d0(SP)			
  compact.go:91		0x5f12dd		4889f0			MOVQ SI, AX				
  compact.go:91		0x5f12e0		49f7e4			MULQ R12				
  compact.go:91		0x5f12e3		48899424b8040000	MOVQ DX, 0x4b8(SP)			
  compact.go:91		0x5f12eb		48898424c0040000	MOVQ AX, 0x4c0(SP)			
  compact.go:126	0x5f12f3		4889f8			MOVQ DI, AX				
  compact.go:126	0x5f12f6		48f7e1			MULQ CX					
  compact.go:126	0x5f12f9		48899424e8030000	MOVQ DX, 0x3e8(SP)			
  compact.go:126	0x5f1301		48898424f0030000	MOVQ AX, 0x3f0(SP)			
  compact.go:127	0x5f1309		4889f8			MOVQ DI, AX				
  compact.go:127	0x5f130c		49f7e2			MULQ R10				
  compact.go:127	0x5f130f		48899424d8030000	MOVQ DX, 0x3d8(SP)			
  compact.go:127	0x5f1317		48898424e0030000	MOVQ AX, 0x3e0(SP)			
  compact.go:128	0x5f131f		4889f8			MOVQ DI, AX				
  compact.go:128	0x5f1322		49f7e5			MULQ R13				
  compact.go:128	0x5f1325		48899424c8030000	MOVQ DX, 0x3c8(SP)			
  compact.go:128	0x5f132d		48898424d0030000	MOVQ AX, 0x3d0(SP)			
  compact.go:129	0x5f1335		4889f8			MOVQ DI, AX				
  compact.go:129	0x5f1338		49f7e3			MULQ R11				
  compact.go:129	0x5f133b		48899424b8030000	MOVQ DX, 0x3b8(SP)			
  compact.go:129	0x5f1343		48898424c0030000	MOVQ AX, 0x3c0(SP)			
  compact.go:130	0x5f134b		4889f8			MOVQ DI, AX				
  compact.go:130	0x5f134e		49f7e7			MULQ R15				
  compact.go:130	0x5f1351		48899424a8030000	MOVQ DX, 0x3a8(SP)			
  compact.go:130	0x5f1359		48898424b0030000	MOVQ AX, 0x3b0(SP)			
  compact.go:131	0x5f1361		4889f8			MOVQ DI, AX				
  compact.go:131	0x5f1364		49f7e4			MULQ R12				
  compact.go:131	0x5f1367		4889942498030000	MOVQ DX, 0x398(SP)			
  compact.go:131	0x5f136f		48898424a0030000	MOVQ AX, 0x3a0(SP)			
  compact.go:166	0x5f1377		4c89c0			MOVQ R8, AX				
  compact.go:166	0x5f137a		48f7e1			MULQ CX					
  compact.go:166	0x5f137d		48899424d0020000	MOVQ DX, 0x2d0(SP)			
  compact.go:166	0x5f1385		48898424d8020000	MOVQ AX, 0x2d8(SP)			
  compact.go:167	0x5f138d		4c89c0			MOVQ R8, AX				
  compact.go:167	0x5f1390		49f7e2			MULQ R10				
  compact.go:167	0x5f1393		48899424c0020000	MOVQ DX, 0x2c0(SP)			
  compact.go:167	0x5f139b		48898424c8020000	MOVQ AX, 0x2c8(SP)			
  compact.go:168	0x5f13a3		4c89c0			MOVQ R8, AX				
  compact.go:168	0x5f13a6		49f7e5			MULQ R13				
  compact.go:168	0x5f13a9		48899424b0020000	MOVQ DX, 0x2b0(SP)			
  compact.go:168	0x5f13b1		48898424b8020000	MOVQ AX, 0x2b8(SP)			
  compact.go:169	0x5f13b9		4c89c0			MOVQ R8, AX				
  compact.go:169	0x5f13bc		49f7e3			MULQ R11				
  compact.go:169	0x5f13bf		48899424a0020000	MOVQ DX, 0x2a0(SP)			
  compact.go:169	0x5f13c7		48898424a8020000	MOVQ AX, 0x2a8(SP)			
  compact.go:170	0x5f13cf		4c89c0			MOVQ R8, AX				
  compact.go:170	0x5f13d2		49f7e7			MULQ R15				
  compact.go:170	0x5f13d5		4889942490020000	MOVQ DX, 0x290(SP)			
  compact.go:170	0x5f13dd		4889842498020000	MOVQ AX, 0x298(SP)			
  compact.go:171	0x5f13e5		4c89c0			MOVQ R8, AX				
  compact.go:171	0x5f13e8		49f7e4			MULQ R12				
  compact.go:171	0x5f13eb		4889942480020000	MOVQ DX, 0x280(SP)			
  compact.go:171	0x5f13f3		4889842488020000	MOVQ AX, 0x288(SP)			
  compact.go:206	0x5f13fb		4c89c8			MOVQ R9, AX				
  compact.go:206	0x5f13fe		48f7e1			MULQ CX					
  compact.go:206	0x5f1401		48899424b8010000	MOVQ DX, 0x1b8(SP)			
  compact.go:206	0x5f1409		48898424c0010000	MOVQ AX, 0x1c0(SP)			
  compact.go:207	0x5f1411		4c89c8			MOVQ R9, AX				
  compact.go:207	0x5f1414		49f7e2			MULQ R10				
  compact.go:207	0x5f1417		48899424a0010000	MOVQ DX, 0x1a0(SP)			
  compact.go:207	0x5f141f		48898424b0010000	MOVQ AX, 0x1b0(SP)			
  compact.go:208	0x5f1427		4c89c8			MOVQ R9, AX				
  compact.go:208	0x5f142a		49f7e5			MULQ R13				
  compact.go:208	0x5f142d		4889942490010000	MOVQ DX, 0x190(SP)			
  compact.go:208	0x5f1435		4889842498010000	MOVQ AX, 0x198(SP)			
  compact.go:209	0x5f143d		4c89c8			MOVQ R9, AX				
  compact.go:209	0x5f1440		49f7e3			MULQ R11				
  compact.go:209	0x5f1443		4889942480010000	MOVQ DX, 0x180(SP)			
  compact.go:209	0x5f144b		4889842488010000	MOVQ AX, 0x188(SP)			
  compact.go:210	0x5f1453		4c89c8			MOVQ R9, AX				
  compact.go:210	0x5f1456		49f7e7			MULQ R15				
  compact.go:210	0x5f1459		4889942470010000	MOVQ DX, 0x170(SP)			
  compact.go:210	0x5f1461		4889842478010000	MOVQ AX, 0x178(SP)			
  compact.go:211	0x5f1469		4c89c8			MOVQ R9, AX				
  compact.go:211	0x5f146c		49f7e4			MULQ R12				
  compact.go:211	0x5f146f		4889942460010000	MOVQ DX, 0x160(SP)			
  compact.go:211	0x5f1477		4889842468010000	MOVQ AX, 0x168(SP)			
  compact.go:254	0x5f147f		90			NOPL					
  compact.go:256	0x5f1480		90			NOPL					
  compact.go:258	0x5f1481		90			NOPL					
  compact.go:260	0x5f1482		90			NOPL					
  compact.go:262	0x5f1483		90			NOPL					
  compact.go:264	0x5f1484		90			NOPL					
  compact.go:20		0x5f1485		4c8ba42470040000	MOVQ 0x470(SP), R12			
  compact.go:20		0x5f148d		488b8c24f8040000	MOVQ 0x4f8(SP), CX			
  compact.go:20		0x5f1495		4901cc			ADDQ CX, R12				
  compact.go:21		0x5f1498		488b8c24a8040000	MOVQ 0x4a8(SP), CX			
  compact.go:21		0x5f14a0		4c8b942460050000	MOVQ 0x560(SP), R10			
  compact.go:21		0x5f14a8		4c11d1			ADCQ R10, CX				
  compact.go:22		0x5f14ab		4c8b942438050000	MOVQ 0x538(SP), R10			
  compact.go:22		0x5f14b3		4c8bac2490050000	MOVQ 0x590(SP), R13			
  compact.go:22		0x5f14bb		4d11ea			ADCQ R13, R10				
  compact.go:23		0x5f14be		4c8bac2468050000	MOVQ 0x568(SP), R13			
  compact.go:23		0x5f14c6		4c8b4c2408		MOVQ 0x8(SP), R9			
  compact.go:23		0x5f14cb		4d11cd			ADCQ R9, R13				
  compact.go:24		0x5f14ce		4c8b8c24b8050000	MOVQ 0x5b8(SP), R9			
  compact.go:24		0x5f14d6		4c8b9c2498000000	MOVQ 0x98(SP), R11			
  compact.go:24		0x5f14de		4d11d9			ADCQ R11, R9				
  compact.go:25		0x5f14e1		4c8b5c2440		MOVQ 0x40(SP), R11			
  compact.go:25		0x5f14e6		4983d300		ADCQ $0x0, R11				
  compact.go:25		0x5f14ea		4c899c2410030000	MOVQ R11, 0x310(SP)			
  compact.go:33		0x5f14f2		488b942420010000	MOVQ 0x120(SP), DX			
  compact.go:33		0x5f14fa		4801d3			ADDQ DX, BX				
  compact.go:34		0x5f14fd		488b942418010000	MOVQ 0x118(SP), DX			
  compact.go:34		0x5f1505		4c8bbc24a8010000	MOVQ 0x1a8(SP), R15			
  compact.go:34		0x5f150d		4c11fa			ADCQ R15, DX				
  compact.go:35		0x5f1510		4c8bbc2450010000	MOVQ 0x150(SP), R15			
  compact.go:35		0x5f1518		4c8b842458020000	MOVQ 0x258(SP), R8			
  compact.go:35		0x5f1520		4d11c7			ADCQ R8, R15				
  compact.go:36		0x5f1523		488bbc2440020000	MOVQ 0x240(SP), DI			
  compact.go:36		0x5f152b		4c11c7			ADCQ R8, DI				
  compact.go:37		0x5f152e		488bb42440020000	MOVQ 0x240(SP), SI			
  compact.go:37		0x5f1536		4911f0			ADCQ SI, R8				
  compact.go:38		0x5f1539		4883d600		ADCQ $0x0, SI				
  compact.go:38		0x5f153d		4889b424e0000000	MOVQ SI, 0xe0(SP)			
  compact.go:39		0x5f1545		488bb42478040000	MOVQ 0x478(SP), SI			
  compact.go:39		0x5f154d		4c8b9c24f8000000	MOVQ 0xf8(SP), R11			
  compact.go:39		0x5f1555		4c01de			ADDQ R11, SI				
  compact.go:40		0x5f1558		4c11e3			ADCQ R12, BX				
  compact.go:40		0x5f155b		48899c24d8000000	MOVQ BX, 0xd8(SP)			
  compact.go:41		0x5f1563		4811ca			ADCQ CX, DX				
  compact.go:41		0x5f1566		48899424d0000000	MOVQ DX, 0xd0(SP)			
  compact.go:42		0x5f156e		4d11d7			ADCQ R10, R15				
  compact.go:42		0x5f1571		4c89bc24c8000000	MOVQ R15, 0xc8(SP)			
  compact.go:43		0x5f1579		4c11ef			ADCQ R13, DI				
  compact.go:43		0x5f157c		4889bc24c0000000	MOVQ DI, 0xc0(SP)			
  compact.go:44		0x5f1584		4d11c8			ADCQ R9, R8				
  compact.go:44		0x5f1587		4c898424b8000000	MOVQ R8, 0xb8(SP)			
  compact.go:45		0x5f158f		488b8c24e0000000	MOVQ 0xe0(SP), CX			
  compact.go:45		0x5f1597		488bb42410030000	MOVQ 0x310(SP), SI			
  compact.go:45		0x5f159f		4811f1			ADCQ SI, CX				
  compact.go:45		0x5f15a2		48898c24b0000000	MOVQ CX, 0xb0(SP)			
  compact.go:45		0x5f15aa		400f92c6		SETB SI					
  compact.go:45		0x5f15ae		400fb6f6		MOVZX SI, SI				
  compact.go:45		0x5f15b2		4889b424a8000000	MOVQ SI, 0xa8(SP)			
  compact.go:52		0x5f15ba		4c8b4c2438		MOVQ 0x38(SP), R9			
  compact.go:52		0x5f15bf		4c8b542458		MOVQ 0x58(SP), R10			
  compact.go:52		0x5f15c4		4d01d1			ADDQ R10, R9				
  compact.go:52		0x5f15c7		4c894c2430		MOVQ R9, 0x30(SP)			
  compact.go:53		0x5f15cc		4c8b542450		MOVQ 0x50(SP), R10			
  compact.go:53		0x5f15d1		4c8b5c2468		MOVQ 0x68(SP), R11			
  compact.go:53		0x5f15d6		4d11da			ADCQ R11, R10				
  compact.go:53		0x5f15d9		4c89542428		MOVQ R10, 0x28(SP)			
  compact.go:54		0x5f15de		4c8b5c2460		MOVQ 0x60(SP), R11			
  compact.go:54		0x5f15e3		4c8b642478		MOVQ 0x78(SP), R12			
  compact.go:54		0x5f15e8		4d11e3			ADCQ R12, R11				
  compact.go:54		0x5f15eb		4c895c2420		MOVQ R11, 0x20(SP)			
  compact.go:55		0x5f15f0		4c8b642470		MOVQ 0x70(SP), R12			
  compact.go:55		0x5f15f5		4c8bac2488000000	MOVQ 0x88(SP), R13			
  compact.go:55		0x5f15fd		4d11ec			ADCQ R13, R12				
  compact.go:55		0x5f1600		4c89642418		MOVQ R12, 0x18(SP)			
  compact.go:56		0x5f1605		4c8bac2480000000	MOVQ 0x80(SP), R13			
  compact.go:56		0x5f160d		488bb424a0000000	MOVQ 0xa0(SP), SI			
  compact.go:56		0x5f1615		4911f5			ADCQ SI, R13				
  compact.go:56		0x5f1618		4c896c2410		MOVQ R13, 0x10(SP)			
  compact.go:57		0x5f161d		488bb42490000000	MOVQ 0x90(SP), SI			
  compact.go:57		0x5f1625		4883d600		ADCQ $0x0, SI				
  compact.go:57		0x5f1629		48893424		MOVQ SI, 0(SP)				
  compact.go:58		0x5f162d		488b742448		MOVQ 0x48(SP), SI			
  compact.go:58		0x5f1632		4801de			ADDQ BX, SI				
  compact.go:59		0x5f1635		4911d1			ADCQ DX, R9				
  compact.go:60		0x5f1638		4d11fa			ADCQ R15, R10				
  compact.go:61		0x5f163b		4911fb			ADCQ DI, R11				
  compact.go:62		0x5f163e		4d11c4			ADCQ R8, R12				
  compact.go:63		0x5f1641		4911cd			ADCQ CX, R13				
  compact.go:64		0x5f1644		488b0c24		MOVQ 0(SP), CX				
  compact.go:64		0x5f1648		4c8b8424a8000000	MOVQ 0xa8(SP), R8			
  compact.go:64		0x5f1650		4c11c1			ADCQ R8, CX				
  compact.go:64		0x5f1653		48898c24b0050000	MOVQ CX, 0x5b0(SP)			
  compact.go:65		0x5f165b		4889f0			MOVQ SI, AX				
  compact.go:65		0x5f165e		49b80100000001000000	MOVQ $0x100000001, R8			
  compact.go:65		0x5f1668		49f7e0			MULQ R8					
  compact.go:65		0x5f166b		48898424a8050000	MOVQ AX, 0x5a8(SP)			
  compact.go:66		0x5f1673		48c7c2ffffffff		MOVQ $-0x1, DX				
  compact.go:66		0x5f167a		48f7e2			MULQ DX					
  compact.go:66		0x5f167d		4889942498050000	MOVQ DX, 0x598(SP)			
  compact.go:66		0x5f1685		48898424a0050000	MOVQ AX, 0x5a0(SP)			
  compact.go:69		0x5f168d		488b8424a8050000	MOVQ 0x5a8(SP), AX			
  compact.go:69		0x5f1695		49c7c0feffffff		MOVQ $-0x2, R8				
  compact.go:69		0x5f169c		49f7e0			MULQ R8					
  compact.go:69		0x5f169f		4889942480050000	MOVQ DX, 0x580(SP)			
  compact.go:69		0x5f16a7		4889842488050000	MOVQ AX, 0x588(SP)			
  compact.go:70		0x5f16af		488b8424a8050000	MOVQ 0x5a8(SP), AX			
  compact.go:70		0x5f16b7		49b800000000ffffffff	MOVQ $0xffffffff00000000, R8		
  compact.go:70		0x5f16c1		49f7e0			MULQ R8					
  compact.go:70		0x5f16c4		4889942470050000	MOVQ DX, 0x570(SP)			
  compact.go:70		0x5f16cc		4889842478050000	MOVQ AX, 0x578(SP)			
  compact.go:71		0x5f16d4		488b8424a8050000	MOVQ 0x5a8(SP), AX			
  compact.go:71		0x5f16dc		41b8ffffffff		MOVL $-0x1, R8				
  compact.go:71		0x5f16e2		49f7e0			MULQ R8					
  compact.go:72		0x5f16e5		4c8b842478050000	MOVQ 0x578(SP), R8			
  compact.go:72		0x5f16ed		4c01c2			ADDQ R8, DX				
  compact.go:73		0x5f16f0		4c8b842470050000	MOVQ 0x570(SP), R8			
  compact.go:73		0x5f16f8		488bbc2488050000	MOVQ 0x588(SP), DI			
  compact.go:73		0x5f1700		4911f8			ADCQ DI, R8				
  compact.go:74		0x5f1703		488bbc2480050000	MOVQ 0x580(SP), DI			
  compact.go:74		0x5f170b		4c8bbc24a0050000	MOVQ 0x5a0(SP), R15			
  compact.go:74		0x5f1713		4c11ff			ADCQ R15, DI				
  compact.go:75		0x5f1716		488b9c2498050000	MOVQ 0x598(SP), BX			
  compact.go:75		0x5f171e		4c11fb			ADCQ R15, BX				
  compact.go:76		0x5f1721		488b8c2498050000	MOVQ 0x598(SP), CX			
  compact.go:76		0x5f1729		4911cf			ADCQ CX, R15				
  compact.go:77		0x5f172c		4883d100		ADCQ $0x0, CX				
  compact.go:78		0x5f1730		4801c6			ADDQ AX, SI				
  compact.go:79		0x5f1733		4c11ca			ADCQ R9, DX				
  compact.go:79		0x5f1736		4889942458050000	MOVQ DX, 0x558(SP)			
  compact.go:80		0x5f173e		4d11d0			ADCQ R10, R8				
  compact.go:80		0x5f1741		4c89842450050000	MOVQ R8, 0x550(SP)			
  compact.go:81		0x5f1749		4c11df			ADCQ R11, DI				
  compact.go:81		0x5f174c		4889bc2448050000	MOVQ DI, 0x548(SP)			
  compact.go:82		0x5f1754		4c11e3			ADCQ R12, BX				
  compact.go:82		0x5f1757		48899c2440050000	MOVQ BX, 0x540(SP)			
  compact.go:83		0x5f175f		4d11ef			ADCQ R13, R15				
  compact.go:83		0x5f1762		4c89bc2430050000	MOVQ R15, 0x530(SP)			
  compact.go:84		0x5f176a		488bb424b0050000	MOVQ 0x5b0(SP), SI			
  compact.go:84		0x5f1772		4811f1			ADCQ SI, CX				
  compact.go:84		0x5f1775		48898c2428050000	MOVQ CX, 0x528(SP)			
  compact.go:84		0x5f177d		400f92c6		SETB SI					
  compact.go:84		0x5f1781		400fb6f6		MOVZX SI, SI				
  compact.go:58		0x5f1785		4c8b4c2448		MOVQ 0x48(SP), R9			
  compact.go:58		0x5f178a		4c8b9424d8000000	MOVQ 0xd8(SP), R10			
  compact.go:58		0x5f1792		4d01d1			ADDQ R10, R9				
  compact.go:59		0x5f1795		4c8b4c2430		MOVQ 0x30(SP), R9			
  compact.go:59		0x5f179a		4c8b9424d0000000	MOVQ 0xd0(SP), R10			
  compact.go:59		0x5f17a2		4d11d1			ADCQ R10, R9				
  compact.go:60		0x5f17a5		4c8b4c2428		MOVQ 0x28(SP), R9			
  compact.go:60		0x5f17aa		4c8b9424c8000000	MOVQ 0xc8(SP), R10			
  compact.go:60		0x5f17b2		4d11d1			ADCQ R10, R9				
  compact.go:61		0x5f17b5		4c8b4c2420		MOVQ 0x20(SP), R9			
  compact.go:61		0x5f17ba		4c8b9424c0000000	MOVQ 0xc0(SP), R10			
  compact.go:61		0x5f17c2		4d11d1			ADCQ R10, R9				
  compact.go:62		0x5f17c5		4c8b4c2418		MOVQ 0x18(SP), R9			
  compact.go:62		0x5f17ca		4c8b9424b8000000	MOVQ 0xb8(SP), R10			
  compact.go:62		0x5f17d2		4d11d1			ADCQ R10, R9				
  compact.go:63		0x5f17d5		4c8b4c2410		MOVQ 0x10(SP), R9			
  compact.go:63		0x5f17da		4c8b9424b0000000	MOVQ 0xb0(SP), R10			
  compact.go:63		0x5f17e2		4d11d1			ADCQ R10, R9				
  compact.go:64		0x5f17e5		4c8b0c24		MOVQ 0(SP), R9				
  compact.go:64		0x5f17e9		4c8b9424a8000000	MOVQ 0xa8(SP), R10			
  compact.go:64		0x5f17f1		4d11d1			ADCQ R10, R9				
  compact.go:85		0x5f17f4		4883d600		ADCQ $0x0, SI				
  compact.go:85		0x5f17f8		4889b42420050000	MOVQ SI, 0x520(SP)			
  compact.go:92		0x5f1800		4c8b8c24b8040000	MOVQ 0x4b8(SP), R9			
  compact.go:92		0x5f1808		4c8b9424d0040000	MOVQ 0x4d0(SP), R10			
  compact.go:92		0x5f1810		4d01d1			ADDQ R10, R9				
  compact.go:92		0x5f1813		4c898c24b0040000	MOVQ R9, 0x4b0(SP)			
  compact.go:93		0x5f181b		4c8b9424c8040000	MOVQ 0x4c8(SP), R10			
  compact.go:93		0x5f1823		4c8b9c24e0040000	MOVQ 0x4e0(SP), R11			
  compact.go:93		0x5f182b		4d11da			ADCQ R11, R10				
  compact.go:93		0x5f182e		4c899424a0040000	MOVQ R10, 0x4a0(SP)			
  compact.go:94		0x5f1836		4c8b9c24d8040000	MOVQ 0x4d8(SP), R11			
  compact.go:94		0x5f183e		4c8ba424f0040000	MOVQ 0x4f0(SP), R12			
  compact.go:94		0x5f1846		4d11e3			ADCQ R12, R11				
  compact.go:94		0x5f1849		4c899c2498040000	MOVQ R11, 0x498(SP)			
  compact.go:95		0x5f1851		4c8ba424e8040000	MOVQ 0x4e8(SP), R12			
  compact.go:95		0x5f1859		4c8bac2408050000	MOVQ 0x508(SP), R13			
  compact.go:95		0x5f1861		4d11ec			ADCQ R13, R12				
  compact.go:95		0x5f1864		4c89a42490040000	MOVQ R12, 0x490(SP)			
  compact.go:96		0x5f186c		4c8bac2400050000	MOVQ 0x500(SP), R13			
  compact.go:85		0x5f1874		4889f0			MOVQ SI, AX				
  compact.go:96		0x5f1877		488bb42418050000	MOVQ 0x518(SP), SI			
  compact.go:96		0x5f187f		4911f5			ADCQ SI, R13				
  compact.go:96		0x5f1882		4c89ac2488040000	MOVQ R13, 0x488(SP)			
  compact.go:97		0x5f188a		488bb42410050000	MOVQ 0x510(SP), SI			
  compact.go:97		0x5f1892		4883d600		ADCQ $0x0, SI				
  compact.go:97		0x5f1896		4889b42480040000	MOVQ SI, 0x480(SP)			
  compact.go:98		0x5f189e		488bb424c0040000	MOVQ 0x4c0(SP), SI			
  compact.go:98		0x5f18a6		4801d6			ADDQ DX, SI				
  compact.go:99		0x5f18a9		4d11c1			ADCQ R8, R9				
  compact.go:100	0x5f18ac		4911fa			ADCQ DI, R10				
  compact.go:101	0x5f18af		4911db			ADCQ BX, R11				
  compact.go:102	0x5f18b2		4d11fc			ADCQ R15, R12				
  compact.go:103	0x5f18b5		4911cd			ADCQ CX, R13				
  compact.go:104	0x5f18b8		488b8c2480040000	MOVQ 0x480(SP), CX			
  compact.go:104	0x5f18c0		4811c1			ADCQ AX, CX				
  compact.go:104	0x5f18c3		48898c2468040000	MOVQ CX, 0x468(SP)			
  compact.go:105	0x5f18cb		4889f0			MOVQ SI, AX				
  compact.go:105	0x5f18ce		49bf0100000001000000	MOVQ $0x100000001, R15			
  compact.go:105	0x5f18d8		49f7e7			MULQ R15				
  compact.go:105	0x5f18db		4889842460040000	MOVQ AX, 0x460(SP)			
  compact.go:106	0x5f18e3		48c7c2ffffffff		MOVQ $-0x1, DX				
  compact.go:106	0x5f18ea		48f7e2			MULQ DX					
  compact.go:106	0x5f18ed		4889942450040000	MOVQ DX, 0x450(SP)			
  compact.go:106	0x5f18f5		4889842458040000	MOVQ AX, 0x458(SP)			
  compact.go:109	0x5f18fd		488b842460040000	MOVQ 0x460(SP), AX			
  compact.go:109	0x5f1905		49c7c7feffffff		MOVQ $-0x2, R15				
  compact.go:109	0x5f190c		49f7e7			MULQ R15				
  compact.go:109	0x5f190f		4889942440040000	MOVQ DX, 0x440(SP)			
  compact.go:109	0x5f1917		4889842448040000	MOVQ AX, 0x448(SP)			
  compact.go:110	0x5f191f		488b842460040000	MOVQ 0x460(SP), AX			
  compact.go:110	0x5f1927		49bf00000000ffffffff	MOVQ $0xffffffff00000000, R15		
  compact.go:110	0x5f1931		49f7e7			MULQ R15				
  compact.go:110	0x5f1934		4889942430040000	MOVQ DX, 0x430(SP)			
  compact.go:110	0x5f193c		4889842438040000	MOVQ AX, 0x438(SP)			
  compact.go:111	0x5f1944		488b842460040000	MOVQ 0x460(SP), AX			
  compact.go:111	0x5f194c		41bfffffffff		MOVL $-0x1, R15				
  compact.go:111	0x5f1952		49f7e7			MULQ R15				
  compact.go:112	0x5f1955		4c8bbc2438040000	MOVQ 0x438(SP), R15			
  compact.go:112	0x5f195d		4c01fa			ADDQ R15, DX				
  compact.go:113	0x5f1960		4c8bbc2430040000	MOVQ 0x430(SP), R15			
  compact.go:113	0x5f1968		488b9c2448040000	MOVQ 0x448(SP), BX			
  compact.go:113	0x5f1970		4911df			ADCQ BX, R15				
  compact.go:114	0x5f1973		488b9c2440040000	MOVQ 0x440(SP), BX			
  compact.go:114	0x5f197b		488bbc2458040000	MOVQ 0x458(SP), DI			
  compact.go:114	0x5f1983		4811fb			ADCQ DI, BX				
  compact.go:115	0x5f1986		4c8b842450040000	MOVQ 0x450(SP), R8			
  compact.go:115	0x5f198e		4911f8			ADCQ DI, R8				
  compact.go:116	0x5f1991		488b8c2450040000	MOVQ 0x450(SP), CX			
  compact.go:116	0x5f1999		4811cf			ADCQ CX, DI				
  compact.go:117	0x5f199c		4883d100		ADCQ $0x0, CX				
  compact.go:118	0x5f19a0		4801c6			ADDQ AX, SI				
  compact.go:119	0x5f19a3		4c11ca			ADCQ R9, DX				
  compact.go:119	0x5f19a6		4889942428040000	MOVQ DX, 0x428(SP)			
  compact.go:120	0x5f19ae		4d11d7			ADCQ R10, R15				
  compact.go:120	0x5f19b1		4c89bc2420040000	MOVQ R15, 0x420(SP)			
  compact.go:121	0x5f19b9		4c11db			ADCQ R11, BX				
  compact.go:121	0x5f19bc		48899c2418040000	MOVQ BX, 0x418(SP)			
  compact.go:122	0x5f19c4		4d11e0			ADCQ R12, R8				
  compact.go:122	0x5f19c7		4c89842410040000	MOVQ R8, 0x410(SP)			
  compact.go:123	0x5f19cf		4c11ef			ADCQ R13, DI				
  compact.go:123	0x5f19d2		4889bc2408040000	MOVQ DI, 0x408(SP)			
  compact.go:124	0x5f19da		488bb42468040000	MOVQ 0x468(SP), SI			
  compact.go:124	0x5f19e2		4811f1			ADCQ SI, CX				
  compact.go:124	0x5f19e5		48898c2400040000	MOVQ CX, 0x400(SP)			
  compact.go:124	0x5f19ed		400f92c6		SETB SI					
  compact.go:124	0x5f19f1		400fb6f6		MOVZX SI, SI				
  compact.go:98		0x5f19f5		4c8b8c24c0040000	MOVQ 0x4c0(SP), R9			
  compact.go:98		0x5f19fd		4c8b942458050000	MOVQ 0x558(SP), R10			
  compact.go:98		0x5f1a05		4d01d1			ADDQ R10, R9				
  compact.go:99		0x5f1a08		4c8b8c24b0040000	MOVQ 0x4b0(SP), R9			
  compact.go:99		0x5f1a10		4c8b942450050000	MOVQ 0x550(SP), R10			
  compact.go:99		0x5f1a18		4d11d1			ADCQ R10, R9				
  compact.go:100	0x5f1a1b		4c8b8c24a0040000	MOVQ 0x4a0(SP), R9			
  compact.go:100	0x5f1a23		4c8b942448050000	MOVQ 0x548(SP), R10			
  compact.go:100	0x5f1a2b		4d11d1			ADCQ R10, R9				
  compact.go:101	0x5f1a2e		4c8b8c2498040000	MOVQ 0x498(SP), R9			
  compact.go:101	0x5f1a36		4c8b942440050000	MOVQ 0x540(SP), R10			
  compact.go:101	0x5f1a3e		4d11d1			ADCQ R10, R9				
  compact.go:102	0x5f1a41		4c8b8c2490040000	MOVQ 0x490(SP), R9			
  compact.go:102	0x5f1a49		4c8b942430050000	MOVQ 0x530(SP), R10			
  compact.go:102	0x5f1a51		4d11d1			ADCQ R10, R9				
  compact.go:103	0x5f1a54		4c8b8c2488040000	MOVQ 0x488(SP), R9			
  compact.go:103	0x5f1a5c		4c8b942428050000	MOVQ 0x528(SP), R10			
  compact.go:103	0x5f1a64		4d11d1			ADCQ R10, R9				
  compact.go:104	0x5f1a67		4c8b8c2480040000	MOVQ 0x480(SP), R9			
  compact.go:104	0x5f1a6f		4c8b942420050000	MOVQ 0x520(SP), R10			
  compact.go:104	0x5f1a77		4d11d1			ADCQ R10, R9				
  compact.go:125	0x5f1a7a		4883d600		ADCQ $0x0, SI				
  compact.go:125	0x5f1a7e		4889b424f8030000	MOVQ SI, 0x3f8(SP)			
  compact.go:132	0x5f1a86		4c8b8c2498030000	MOVQ 0x398(SP), R9			
  compact.go:132	0x5f1a8e		4c8b9424b0030000	MOVQ 0x3b0(SP), R10			
  compact.go:132	0x5f1a96		4d01d1			ADDQ R10, R9				
  compact.go:132	0x5f1a99		4c898c2490030000	MOVQ R9, 0x390(SP)			
  compact.go:133	0x5f1aa1		4c8b9424a8030000	MOVQ 0x3a8(SP), R10			
  compact.go:133	0x5f1aa9		4c8b9c24c0030000	MOVQ 0x3c0(SP), R11			
  compact.go:133	0x5f1ab1		4d11da			ADCQ R11, R10				
  compact.go:133	0x5f1ab4		4c89942488030000	MOVQ R10, 0x388(SP)			
  compact.go:134	0x5f1abc		4c8b9c24b8030000	MOVQ 0x3b8(SP), R11			
  compact.go:134	0x5f1ac4		4c8ba424d0030000	MOVQ 0x3d0(SP), R12			
  compact.go:134	0x5f1acc		4d11e3			ADCQ R12, R11				
  compact.go:134	0x5f1acf		4c899c2480030000	MOVQ R11, 0x380(SP)			
  compact.go:135	0x5f1ad7		4c8ba424c8030000	MOVQ 0x3c8(SP), R12			
  compact.go:135	0x5f1adf		4c8bac24e0030000	MOVQ 0x3e0(SP), R13			
  compact.go:135	0x5f1ae7		4d11ec			ADCQ R13, R12				
  compact.go:135	0x5f1aea		4c89a42478030000	MOVQ R12, 0x378(SP)			
  compact.go:136	0x5f1af2		4c8bac24d8030000	MOVQ 0x3d8(SP), R13			
  compact.go:125	0x5f1afa		4889f0			MOVQ SI, AX				
  compact.go:136	0x5f1afd		488bb424f0030000	MOVQ 0x3f0(SP), SI			
  compact.go:136	0x5f1b05		4911f5			ADCQ SI, R13				
  compact.go:136	0x5f1b08		4c89ac2470030000	MOVQ R13, 0x370(SP)			
  compact.go:137	0x5f1b10		488bb424e8030000	MOVQ 0x3e8(SP), SI			
  compact.go:137	0x5f1b18		4883d600		ADCQ $0x0, SI				
  compact.go:137	0x5f1b1c		4889b42468030000	MOVQ SI, 0x368(SP)			
  compact.go:138	0x5f1b24		488bb424a0030000	MOVQ 0x3a0(SP), SI			
  compact.go:138	0x5f1b2c		4801d6			ADDQ DX, SI				
  compact.go:139	0x5f1b2f		4d11f9			ADCQ R15, R9				
  compact.go:140	0x5f1b32		4911da			ADCQ BX, R10				
  compact.go:141	0x5f1b35		4d11c3			ADCQ R8, R11				
  compact.go:142	0x5f1b38		4911fc			ADCQ DI, R12				
  compact.go:143	0x5f1b3b		4911cd			ADCQ CX, R13				
  compact.go:144	0x5f1b3e		488b8c2468030000	MOVQ 0x368(SP), CX			
  compact.go:144	0x5f1b46		4811c1			ADCQ AX, CX				
  compact.go:144	0x5f1b49		48898c2460030000	MOVQ CX, 0x360(SP)			
  compact.go:145	0x5f1b51		4889f0			MOVQ SI, AX				
  compact.go:145	0x5f1b54		48bf0100000001000000	MOVQ $0x100000001, DI			
  compact.go:145	0x5f1b5e		48f7e7			MULQ DI					
  compact.go:145	0x5f1b61		4889842458030000	MOVQ AX, 0x358(SP)			
  compact.go:147	0x5f1b69		48c7c2ffffffff		MOVQ $-0x1, DX				
  compact.go:147	0x5f1b70		48f7e2			MULQ DX					
  compact.go:146	0x5f1b73		4889842450030000	MOVQ AX, 0x350(SP)			
  compact.go:146	0x5f1b7b		4889942448030000	MOVQ DX, 0x348(SP)			
  compact.go:149	0x5f1b83		488b842458030000	MOVQ 0x358(SP), AX			
  compact.go:149	0x5f1b8b		48c7c7feffffff		MOVQ $-0x2, DI				
  compact.go:149	0x5f1b92		48f7e7			MULQ DI					
  compact.go:149	0x5f1b95		4889942438030000	MOVQ DX, 0x338(SP)			
  compact.go:149	0x5f1b9d		4889842440030000	MOVQ AX, 0x340(SP)			
  compact.go:150	0x5f1ba5		488b842458030000	MOVQ 0x358(SP), AX			
  compact.go:150	0x5f1bad		48bf00000000ffffffff	MOVQ $0xffffffff00000000, DI		
  compact.go:150	0x5f1bb7		48f7e7			MULQ DI					
  compact.go:150	0x5f1bba		4889942428030000	MOVQ DX, 0x328(SP)			
  compact.go:150	0x5f1bc2		4889842430030000	MOVQ AX, 0x330(SP)			
  compact.go:151	0x5f1bca		488b842458030000	MOVQ 0x358(SP), AX			
  compact.go:151	0x5f1bd2		bfffffffff		MOVL $-0x1, DI				
  compact.go:151	0x5f1bd7		48f7e7			MULQ DI					
  compact.go:152	0x5f1bda		488bbc2430030000	MOVQ 0x330(SP), DI			
  compact.go:152	0x5f1be2		4801fa			ADDQ DI, DX				
  compact.go:153	0x5f1be5		488bbc2428030000	MOVQ 0x328(SP), DI			
  compact.go:153	0x5f1bed		4c8b842440030000	MOVQ 0x340(SP), R8			
  compact.go:153	0x5f1bf5		4c11c7			ADCQ R8, DI				
  compact.go:154	0x5f1bf8		4c8b842438030000	MOVQ 0x338(SP), R8			
  compact.go:154	0x5f1c00		488b9c2450030000	MOVQ 0x350(SP), BX			
  compact.go:154	0x5f1c08		4911d8			ADCQ BX, R8				
  compact.go:155	0x5f1c0b		4c8bbc2448030000	MOVQ 0x348(SP), R15			
  compact.go:155	0x5f1c13		4911df			ADCQ BX, R15				
  compact.go:156	0x5f1c16		488b8c2448030000	MOVQ 0x348(SP), CX			
  compact.go:156	0x5f1c1e		4811cb			ADCQ CX, BX				
  compact.go:157	0x5f1c21		4883d100		ADCQ $0x0, CX				
  compact.go:158	0x5f1c25		4801c6			ADDQ AX, SI				
  compact.go:159	0x5f1c28		4c11ca			ADCQ R9, DX				
  compact.go:159	0x5f1c2b		4889942420030000	MOVQ DX, 0x320(SP)			
  compact.go:160	0x5f1c33		4c11d7			ADCQ R10, DI				
  compact.go:160	0x5f1c36		4889bc2418030000	MOVQ DI, 0x318(SP)			
  compact.go:161	0x5f1c3e		4d11d8			ADCQ R11, R8				
  compact.go:161	0x5f1c41		4c89842408030000	MOVQ R8, 0x308(SP)			
  compact.go:162	0x5f1c49		4d11e7			ADCQ R12, R15				
  compact.go:162	0x5f1c4c		4c89bc2400030000	MOVQ R15, 0x300(SP)			
  compact.go:163	0x5f1c54		4c11eb			ADCQ R13, BX				
  compact.go:163	0x5f1c57		48899c24f8020000	MOVQ BX, 0x2f8(SP)			
  compact.go:164	0x5f1c5f		488bb42460030000	MOVQ 0x360(SP), SI			
  compact.go:164	0x5f1c67		4811f1			ADCQ SI, CX				
  compact.go:164	0x5f1c6a		48898c24f0020000	MOVQ CX, 0x2f0(SP)			
  compact.go:164	0x5f1c72		400f92c6		SETB SI					
  compact.go:164	0x5f1c76		400fb6f6		MOVZX SI, SI				
  compact.go:138	0x5f1c7a		4c8b8c24a0030000	MOVQ 0x3a0(SP), R9			
  compact.go:138	0x5f1c82		4c8b942428040000	MOVQ 0x428(SP), R10			
  compact.go:138	0x5f1c8a		4d01d1			ADDQ R10, R9				
  compact.go:139	0x5f1c8d		4c8b8c2490030000	MOVQ 0x390(SP), R9			
  compact.go:139	0x5f1c95		4c8b942420040000	MOVQ 0x420(SP), R10			
  compact.go:139	0x5f1c9d		4d11d1			ADCQ R10, R9				
  compact.go:140	0x5f1ca0		4c8b8c2488030000	MOVQ 0x388(SP), R9			
  compact.go:140	0x5f1ca8		4c8b942418040000	MOVQ 0x418(SP), R10			
  compact.go:140	0x5f1cb0		4d11d1			ADCQ R10, R9				
  compact.go:141	0x5f1cb3		4c8b8c2480030000	MOVQ 0x380(SP), R9			
  compact.go:141	0x5f1cbb		4c8b942410040000	MOVQ 0x410(SP), R10			
  compact.go:141	0x5f1cc3		4d11d1			ADCQ R10, R9				
  compact.go:142	0x5f1cc6		4c8b8c2478030000	MOVQ 0x378(SP), R9			
  compact.go:142	0x5f1cce		4c8b942408040000	MOVQ 0x408(SP), R10			
  compact.go:142	0x5f1cd6		4d11d1			ADCQ R10, R9				
  compact.go:143	0x5f1cd9		4c8b8c2470030000	MOVQ 0x370(SP), R9			
  compact.go:143	0x5f1ce1		4c8b942400040000	MOVQ 0x400(SP), R10			
  compact.go:143	0x5f1ce9		4d11d1			ADCQ R10, R9				
  compact.go:144	0x5f1cec		4c8b8c2468030000	MOVQ 0x368(SP), R9			
  compact.go:144	0x5f1cf4		4c8b9424f8030000	MOVQ 0x3f8(SP), R10			
  compact.go:144	0x5f1cfc		4d11d1			ADCQ R10, R9				
  compact.go:165	0x5f1cff		4883d600		ADCQ $0x0, SI				
  compact.go:165	0x5f1d03		4889b424e8020000	MOVQ SI, 0x2e8(SP)			
  compact.go:172	0x5f1d0b		4c8b8c2480020000	MOVQ 0x280(SP), R9			
  compact.go:172	0x5f1d13		4c8b942498020000	MOVQ 0x298(SP), R10			
  compact.go:172	0x5f1d1b		4d01d1			ADDQ R10, R9				
  compact.go:172	0x5f1d1e		4c898c2478020000	MOVQ R9, 0x278(SP)			
  compact.go:173	0x5f1d26		4c8b942490020000	MOVQ 0x290(SP), R10			
  compact.go:173	0x5f1d2e		4c8b9c24a8020000	MOVQ 0x2a8(SP), R11			
  compact.go:173	0x5f1d36		4d11da			ADCQ R11, R10				
  compact.go:173	0x5f1d39		4c89942470020000	MOVQ R10, 0x270(SP)			
  compact.go:174	0x5f1d41		4c8b9c24a0020000	MOVQ 0x2a0(SP), R11			
  compact.go:174	0x5f1d49		4c8ba424b8020000	MOVQ 0x2b8(SP), R12			
  compact.go:174	0x5f1d51		4d11e3			ADCQ R12, R11				
  compact.go:174	0x5f1d54		4c899c2468020000	MOVQ R11, 0x268(SP)			
  compact.go:175	0x5f1d5c		4c8ba424b0020000	MOVQ 0x2b0(SP), R12			
  compact.go:175	0x5f1d64		4c8bac24c8020000	MOVQ 0x2c8(SP), R13			
  compact.go:175	0x5f1d6c		4d11ec			ADCQ R13, R12				
  compact.go:175	0x5f1d6f		4c89a42460020000	MOVQ R12, 0x260(SP)			
  compact.go:176	0x5f1d77		4c8bac24c0020000	MOVQ 0x2c0(SP), R13			
  compact.go:165	0x5f1d7f		4889f0			MOVQ SI, AX				
  compact.go:176	0x5f1d82		488bb424d8020000	MOVQ 0x2d8(SP), SI			
  compact.go:176	0x5f1d8a		4911f5			ADCQ SI, R13				
  compact.go:176	0x5f1d8d		4c89ac2450020000	MOVQ R13, 0x250(SP)			
  compact.go:177	0x5f1d95		488bb424d0020000	MOVQ 0x2d0(SP), SI			
  compact.go:177	0x5f1d9d		4883d600		ADCQ $0x0, SI				
  compact.go:177	0x5f1da1		4889b42448020000	MOVQ SI, 0x248(SP)			
  compact.go:178	0x5f1da9		488bb42488020000	MOVQ 0x288(SP), SI			
  compact.go:178	0x5f1db1		4801d6			ADDQ DX, SI				
  compact.go:179	0x5f1db4		4911f9			ADCQ DI, R9				
  compact.go:180	0x5f1db7		4d11c2			ADCQ R8, R10				
  compact.go:181	0x5f1dba		4d11fb			ADCQ R15, R11				
  compact.go:182	0x5f1dbd		4911dc			ADCQ BX, R12				
  compact.go:183	0x5f1dc0		4911cd			ADCQ CX, R13				
  compact.go:184	0x5f1dc3		488b8c2448020000	MOVQ 0x248(SP), CX			
  compact.go:184	0x5f1dcb		4811c1			ADCQ AX, CX				
  compact.go:184	0x5f1dce		48898c2438020000	MOVQ CX, 0x238(SP)			
  compact.go:185	0x5f1dd6		4889f0			MOVQ SI, AX				
  compact.go:185	0x5f1dd9		48bb0100000001000000	MOVQ $0x100000001, BX			
  compact.go:185	0x5f1de3		48f7e3			MULQ BX					
  compact.go:185	0x5f1de6		4889842430020000	MOVQ AX, 0x230(SP)			
  compact.go:188	0x5f1dee		48c7c2ffffffff		MOVQ $-0x1, DX				
  compact.go:188	0x5f1df5		48f7e2			MULQ DX					
  compact.go:186	0x5f1df8		4889842428020000	MOVQ AX, 0x228(SP)			
  compact.go:186	0x5f1e00		4889942420020000	MOVQ DX, 0x220(SP)			
  compact.go:189	0x5f1e08		488b842430020000	MOVQ 0x230(SP), AX			
  compact.go:189	0x5f1e10		48c7c3feffffff		MOVQ $-0x2, BX				
  compact.go:189	0x5f1e17		48f7e3			MULQ BX					
  compact.go:189	0x5f1e1a		4889942410020000	MOVQ DX, 0x210(SP)			
  compact.go:189	0x5f1e22		4889842418020000	MOVQ AX, 0x218(SP)			
  compact.go:190	0x5f1e2a		488b842430020000	MOVQ 0x230(SP), AX			
  compact.go:190	0x5f1e32		48bb00000000ffffffff	MOVQ $0xffffffff00000000, BX		
  compact.go:190	0x5f1e3c		48f7e3			MULQ BX					
  compact.go:190	0x5f1e3f		4889942400020000	MOVQ DX, 0x200(SP)			
  compact.go:190	0x5f1e47		4889842408020000	MOVQ AX, 0x208(SP)			
  compact.go:191	0x5f1e4f		488b842430020000	MOVQ 0x230(SP), AX			
  compact.go:191	0x5f1e57		bbffffffff		MOVL $-0x1, BX				
  compact.go:191	0x5f1e5c		48f7e3			MULQ BX					
  compact.go:192	0x5f1e5f		488b9c2408020000	MOVQ 0x208(SP), BX			
  compact.go:192	0x5f1e67		4801da			ADDQ BX, DX				
  compact.go:193	0x5f1e6a		488b9c2400020000	MOVQ 0x200(SP), BX			
  compact.go:193	0x5f1e72		4c8bbc2418020000	MOVQ 0x218(SP), R15			
  compact.go:193	0x5f1e7a		4c11fb			ADCQ R15, BX				
  compact.go:194	0x5f1e7d		4c8bbc2410020000	MOVQ 0x210(SP), R15			
  compact.go:194	0x5f1e85		4c8b842428020000	MOVQ 0x228(SP), R8			
  compact.go:194	0x5f1e8d		4d11c7			ADCQ R8, R15				
  compact.go:195	0x5f1e90		488bbc2420020000	MOVQ 0x220(SP), DI			
  compact.go:195	0x5f1e98		4c11c7			ADCQ R8, DI				
  compact.go:196	0x5f1e9b		488b8c2420020000	MOVQ 0x220(SP), CX			
  compact.go:196	0x5f1ea3		4911c8			ADCQ CX, R8				
  compact.go:197	0x5f1ea6		4883d100		ADCQ $0x0, CX				
  compact.go:198	0x5f1eaa		4801c6			ADDQ AX, SI				
  compact.go:199	0x5f1ead		4c11ca			ADCQ R9, DX				
  compact.go:199	0x5f1eb0		48899424f8010000	MOVQ DX, 0x1f8(SP)			
  compact.go:200	0x5f1eb8		4c11d3			ADCQ R10, BX				
  compact.go:200	0x5f1ebb		48899c24f0010000	MOVQ BX, 0x1f0(SP)			
  compact.go:201	0x5f1ec3		4d11df			ADCQ R11, R15				
  compact.go:201	0x5f1ec6		4c89bc24e8010000	MOVQ R15, 0x1e8(SP)			
  compact.go:202	0x5f1ece		4c11e7			ADCQ R12, DI				
  compact.go:202	0x5f1ed1		4889bc24e0010000	MOVQ DI, 0x1e0(SP)			
  compact.go:203	0x5f1ed9		4d11e8			ADCQ R13, R8				
  compact.go:203	0x5f1edc		4c898424d8010000	MOVQ R8, 0x1d8(SP)			
  compact.go:204	0x5f1ee4		488bb42438020000	MOVQ 0x238(SP), SI			
  compact.go:204	0x5f1eec		4811f1			ADCQ SI, CX				
  compact.go:204	0x5f1eef		48898c24d0010000	MOVQ CX, 0x1d0(SP)			
  compact.go:204	0x5f1ef7		400f92c6		SETB SI					
  compact.go:204	0x5f1efb		400fb6f6		MOVZX SI, SI				
  compact.go:178	0x5f1eff		4c8b8c2488020000	MOVQ 0x288(SP), R9			
  compact.go:178	0x5f1f07		4c8b942420030000	MOVQ 0x320(SP), R10			
  compact.go:178	0x5f1f0f		4d01d1			ADDQ R10, R9				
  compact.go:179	0x5f1f12		4c8b8c2478020000	MOVQ 0x278(SP), R9			
  compact.go:179	0x5f1f1a		4c8b942418030000	MOVQ 0x318(SP), R10			
  compact.go:179	0x5f1f22		4d11d1			ADCQ R10, R9				
  compact.go:180	0x5f1f25		4c8b8c2470020000	MOVQ 0x270(SP), R9			
  compact.go:180	0x5f1f2d		4c8b942408030000	MOVQ 0x308(SP), R10			
  compact.go:180	0x5f1f35		4d11d1			ADCQ R10, R9				
  compact.go:181	0x5f1f38		4c8b8c2468020000	MOVQ 0x268(SP), R9			
  compact.go:181	0x5f1f40		4c8b942400030000	MOVQ 0x300(SP), R10			
  compact.go:181	0x5f1f48		4d11d1			ADCQ R10, R9				
  compact.go:182	0x5f1f4b		4c8b8c2460020000	MOVQ 0x260(SP), R9			
  compact.go:182	0x5f1f53		4c8b9424f8020000	MOVQ 0x2f8(SP), R10			
  compact.go:182	0x5f1f5b		4d11d1			ADCQ R10, R9				
  compact.go:183	0x5f1f5e		4c8b8c2450020000	MOVQ 0x250(SP), R9			
  compact.go:183	0x5f1f66		4c8b9424f0020000	MOVQ 0x2f0(SP), R10			
  compact.go:183	0x5f1f6e		4d11d1			ADCQ R10, R9				
  compact.go:184	0x5f1f71		4c8b8c2448020000	MOVQ 0x248(SP), R9			
  compact.go:184	0x5f1f79		4c8b9424e8020000	MOVQ 0x2e8(SP), R10			
  compact.go:184	0x5f1f81		4d11d1			ADCQ R10, R9				
  compact.go:205	0x5f1f84		4883d600		ADCQ $0x0, SI				
  compact.go:205	0x5f1f88		4889b424c8010000	MOVQ SI, 0x1c8(SP)			
  compact.go:212	0x5f1f90		4c8b8c2460010000	MOVQ 0x160(SP), R9			
  compact.go:212	0x5f1f98		4c8b942478010000	MOVQ 0x178(SP), R10			
  compact.go:212	0x5f1fa0		4d01d1			ADDQ R10, R9				
  compact.go:212	0x5f1fa3		4c898c2458010000	MOVQ R9, 0x158(SP)			
  compact.go:213	0x5f1fab		4c8b942470010000	MOVQ 0x170(SP), R10			
  compact.go:213	0x5f1fb3		4c8b9c2488010000	MOVQ 0x188(SP), R11			
  compact.go:213	0x5f1fbb		4d11da			ADCQ R11, R10				
  compact.go:213	0x5f1fbe		4c89942448010000	MOVQ R10, 0x148(SP)			
  compact.go:214	0x5f1fc6		4c8b9c2480010000	MOVQ 0x180(SP), R11			
  compact.go:214	0x5f1fce		4c8ba42498010000	MOVQ 0x198(SP), R12			
  compact.go:214	0x5f1fd6		4d11e3			ADCQ R12, R11				
  compact.go:214	0x5f1fd9		4c899c2440010000	MOVQ R11, 0x140(SP)			
  compact.go:215	0x5f1fe1		4c8ba42490010000	MOVQ 0x190(SP), R12			
  compact.go:215	0x5f1fe9		4c8bac24b0010000	MOVQ 0x1b0(SP), R13			
  compact.go:215	0x5f1ff1		4d11ec			ADCQ R13, R12				
  compact.go:215	0x5f1ff4		4c89a42438010000	MOVQ R12, 0x138(SP)			
  compact.go:216	0x5f1ffc		4c8bac24a0010000	MOVQ 0x1a0(SP), R13			
  compact.go:205	0x5f2004		4889f0			MOVQ SI, AX				
  compact.go:216	0x5f2007		488bb424c0010000	MOVQ 0x1c0(SP), SI			
  compact.go:216	0x5f200f		4911f5			ADCQ SI, R13				
  compact.go:216	0x5f2012		4c89ac2430010000	MOVQ R13, 0x130(SP)			
  compact.go:217	0x5f201a		488bb424b8010000	MOVQ 0x1b8(SP), SI			
  compact.go:217	0x5f2022		4883d600		ADCQ $0x0, SI				
  compact.go:217	0x5f2026		4889b42428010000	MOVQ SI, 0x128(SP)			
  compact.go:218	0x5f202e		488bb42468010000	MOVQ 0x168(SP), SI			
  compact.go:218	0x5f2036		4801d6			ADDQ DX, SI				
  compact.go:219	0x5f2039		4911d9			ADCQ BX, R9				
  compact.go:220	0x5f203c		4d11fa			ADCQ R15, R10				
  compact.go:221	0x5f203f		4911fb			ADCQ DI, R11				
  compact.go:222	0x5f2042		4d11c4			ADCQ R8, R12				
  compact.go:223	0x5f2045		4911cd			ADCQ CX, R13				
  compact.go:224	0x5f2048		488b8c2428010000	MOVQ 0x128(SP), CX			
  compact.go:224	0x5f2050		4811c1			ADCQ AX, CX				
  compact.go:224	0x5f2053		48898c2410010000	MOVQ CX, 0x110(SP)			
  compact.go:225	0x5f205b		4889f0			MOVQ SI, AX				
  compact.go:225	0x5f205e		49b80100000001000000	MOVQ $0x100000001, R8			
  compact.go:225	0x5f2068		49f7e0			MULQ R8					
  compact.go:226	0x5f206b		48c7c2ffffffff		MOVQ $-0x1, DX				
  compact.go:225	0x5f2072		4989c0			MOVQ AX, R8				
  compact.go:226	0x5f2075		48f7e2			MULQ DX					
  compact.go:226	0x5f2078		4889942400010000	MOVQ DX, 0x100(SP)			
  compact.go:226	0x5f2080		4889842408010000	MOVQ AX, 0x108(SP)			
  compact.go:229	0x5f2088		4c89c0			MOVQ R8, AX				
  compact.go:229	0x5f208b		48c7c7feffffff		MOVQ $-0x2, DI				
  compact.go:229	0x5f2092		48f7e7			MULQ DI					
  compact.go:229	0x5f2095		48899424f0000000	MOVQ DX, 0xf0(SP)			
  compact.go:229	0x5f209d		4889c7			MOVQ AX, DI				
  compact.go:230	0x5f20a0		4c89c0			MOVQ R8, AX				
  compact.go:230	0x5f20a3		49bf00000000ffffffff	MOVQ $0xffffffff00000000, R15		
  compact.go:230	0x5f20ad		49f7e7			MULQ R15				
  compact.go:230	0x5f20b0		48898424e8000000	MOVQ AX, 0xe8(SP)			
  compact.go:231	0x5f20b8		4c89c0			MOVQ R8, AX				
  compact.go:231	0x5f20bb		41bfffffffff		MOVL $-0x1, R15				
  compact.go:230	0x5f20c1		4989d0			MOVQ DX, R8				
  compact.go:231	0x5f20c4		49f7e7			MULQ R15				
  compact.go:232	0x5f20c7		4c8bbc24e8000000	MOVQ 0xe8(SP), R15			
  compact.go:232	0x5f20cf		4c01fa			ADDQ R15, DX				
  compact.go:233	0x5f20d2		4911f8			ADCQ DI, R8				
  compact.go:234	0x5f20d5		488bbc24f0000000	MOVQ 0xf0(SP), DI			
  compact.go:234	0x5f20dd		4c8bbc2408010000	MOVQ 0x108(SP), R15			
  compact.go:234	0x5f20e5		4c11ff			ADCQ R15, DI				
  compact.go:235	0x5f20e8		488b9c2400010000	MOVQ 0x100(SP), BX			
  compact.go:235	0x5f20f0		4c11fb			ADCQ R15, BX				
  compact.go:236	0x5f20f3		488b8c2400010000	MOVQ 0x100(SP), CX			
  compact.go:236	0x5f20fb		4911cf			ADCQ CX, R15				
  compact.go:237	0x5f20fe		4883d100		ADCQ $0x0, CX				
  compact.go:238	0x5f2102		4801c6			ADDQ AX, SI				
  compact.go:239	0x5f2105		4c11ca			ADCQ R9, DX				
  compact.go:240	0x5f2108		4d11d0			ADCQ R10, R8				
  compact.go:241	0x5f210b		4c11df			ADCQ R11, DI				
  compact.go:242	0x5f210e		4c11e3			ADCQ R12, BX				
  compact.go:243	0x5f2111		4d11ef			ADCQ R13, R15				
  compact.go:244	0x5f2114		488bb42410010000	MOVQ 0x110(SP), SI			
  compact.go:244	0x5f211c		4811f1			ADCQ SI, CX				
  compact.go:244	0x5f211f		400f92c6		SETB SI					
  compact.go:244	0x5f2123		400fb6f6		MOVZX SI, SI				
  compact.go:218	0x5f2127		4c8b8c2468010000	MOVQ 0x168(SP), R9			
  compact.go:218	0x5f212f		4c8b9424f8010000	MOVQ 0x1f8(SP), R10			
  compact.go:218	0x5f2137		4d01d1			ADDQ R10, R9				
  compact.go:219	0x5f213a		4c8b8c2458010000	MOVQ 0x158(SP), R9			
  compact.go:219	0x5f2142		4c8b9424f0010000	MOVQ 0x1f0(SP), R10			
  compact.go:219	0x5f214a		4d11d1			ADCQ R10, R9				
  compact.go:220	0x5f214d		4c8b8c2448010000	MOVQ 0x148(SP), R9			
  compact.go:220	0x5f2155		4c8b9424e8010000	MOVQ 0x1e8(SP), R10			
  compact.go:220	0x5f215d		4d11d1			ADCQ R10, R9				
  compact.go:221	0x5f2160		4c8b8c2440010000	MOVQ 0x140(SP), R9			
  compact.go:221	0x5f2168		4c8b9424e0010000	MOVQ 0x1e0(SP), R10			
  compact.go:221	0x5f2170		4d11d1			ADCQ R10, R9				
  compact.go:222	0x5f2173		4c8b8c2438010000	MOVQ 0x138(SP), R9			
  compact.go:222	0x5f217b		4c8b9424d8010000	MOVQ 0x1d8(SP), R10			
  compact.go:222	0x5f2183		4d11d1			ADCQ R10, R9				
  compact.go:223	0x5f2186		4c8b8c2430010000	MOVQ 0x130(SP), R9			
  compact.go:223	0x5f218e		4c8b9424d0010000	MOVQ 0x1d0(SP), R10			
  compact.go:223	0x5f2196		4d11d1			ADCQ R10, R9				
  compact.go:224	0x5f2199		4c8b8c2428010000	MOVQ 0x128(SP), R9			
  compact.go:224	0x5f21a1		4c8b9424c8010000	MOVQ 0x1c8(SP), R10			
  compact.go:224	0x5f21a9		4d11d1			ADCQ R10, R9				
  compact.go:245	0x5f21ac		4883d600		ADCQ $0x0, SI				
  compact.go:246	0x5f21b0		41b9ffffffff		MOVL $-0x1, R9				
  compact.go:246	0x5f21b6		4989d2			MOVQ DX, R10				
  compact.go:246	0x5f21b9		4c29ca			SUBQ R9, DX				
  compact.go:247	0x5f21bc		49b900000000ffffffff	MOVQ $0xffffffff00000000, R9		
  compact.go:247	0x5f21c6		4d89c3			MOVQ R8, R11				
  compact.go:247	0x5f21c9		4d19c8			SBBQ R9, R8				
  compact.go:248	0x5f21cc		4989f9			MOVQ DI, R9				
  compact.go:248	0x5f21cf		4883dffe		SBBQ $-0x2, DI				
  compact.go:249	0x5f21d3		4989dc			MOVQ BX, R12				
  compact.go:249	0x5f21d6		4883dbff		SBBQ $-0x1, BX				
  compact.go:250	0x5f21da		4d89fd			MOVQ R15, R13				
  compact.go:250	0x5f21dd		4983dfff		SBBQ $-0x1, R15				
  compact.go:251	0x5f21e1		4889c8			MOVQ CX, AX				
  compact.go:251	0x5f21e4		4883d9ff		SBBQ $-0x1, CX				
  compact.go:252	0x5f21e8		4883de00		SBBQ $0x0, SI				
  compact.go:252	0x5f21ec		400f92c6		SETB SI					
  compact.go:252	0x5f21f0		400fb6f6		MOVZX SI, SI				
  common.go:7		0x5f21f4		48f7de			NEGQ SI					
  common.go:7		0x5f21f7		4889b424c0050000	MOVQ SI, 0x5c0(SP)			
  common.go:8		0x5f21ff		4921f2			ANDQ SI, R10				
  common.go:8		0x5f2202		48f7d6			NOTQ SI					
  common.go:8		0x5f2205		4821f2			ANDQ SI, DX				
  common.go:8		0x5f2208		4909d2			ORQ DX, R10				
  compact.go:265	0x5f220b		488b9424e0050000	MOVQ 0x5e0(SP), DX			
  compact.go:265	0x5f2213		4c8912			MOVQ R10, 0(DX)				
  common.go:8		0x5f2216		4c8b9424c0050000	MOVQ 0x5c0(SP), R10			
  common.go:8		0x5f221e		4d21d3			ANDQ R10, R11				
  common.go:8		0x5f2221		4921f0			ANDQ SI, R8				
  common.go:8		0x5f2224		4d09d8			ORQ R11, R8				
  compact.go:266	0x5f2227		4c894208		MOVQ R8, 0x8(DX)			
  common.go:8		0x5f222b		4d21d1			ANDQ R10, R9				
  common.go:8		0x5f222e		4821f7			ANDQ SI, DI				
  common.go:8		0x5f2231		4c09cf			ORQ R9, DI				
  compact.go:267	0x5f2234		48897a10		MOVQ DI, 0x10(DX)			
  common.go:8		0x5f2238		4d21d4			ANDQ R10, R12				
  common.go:8		0x5f223b		4821f3			ANDQ SI, BX				
  common.go:8		0x5f223e		4c09e3			ORQ R12, BX				
  compact.go:268	0x5f2241		48895a18		MOVQ BX, 0x18(DX)			
  common.go:8		0x5f2245		4d21d5			ANDQ R10, R13				
  common.go:8		0x5f2248		4921f7			ANDQ SI, R15				
  common.go:8		0x5f224b		4d09ef			ORQ R13, R15				
  compact.go:269	0x5f224e		4c897a20		MOVQ R15, 0x20(DX)			
  common.go:8		0x5f2252		4921c2			ANDQ AX, R10				
  common.go:8		0x5f2255		4821f1			ANDQ SI, CX				
  common.go:8		0x5f2258		4c09d1			ORQ R10, CX				
  compact.go:270	0x5f225b		48894a28		MOVQ CX, 0x28(DX)			
  compact.go:271	0x5f225f		c9			LEAVE					
  compact.go:271	0x5f2260		c3			RET					
  compact.go:7		0x5f2261		4889442408		MOVQ AX, 0x8(SP)			
  compact.go:7		0x5f2266		48895c2410		MOVQ BX, 0x10(SP)			
  compact.go:7		0x5f226b		48894c2418		MOVQ CX, 0x18(SP)			
  compact.go:7		0x5f2270		e8cba8e9ff		CALL runtime.morestack_noctxt.abi0(SB)	
  compact.go:7		0x5f2275		488b442408		MOVQ 0x8(SP), AX			
  compact.go:7		0x5f227a		488b5c2410		MOVQ 0x10(SP), BX			
  compact.go:7		0x5f227f		488b4c2418		MOVQ 0x18(SP), CX			
  compact.go:7		0x5f2284		e9f7edffff		JMP example.com/p384issue.Mul(SB)	
