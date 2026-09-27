TEXT example.com/p384issue.Prefix6Mul(SB) /home/exedev/crypto-audit/round4/issues/p384-square/prefix.go
  prefix.go:1209	0x5f8920		4c8da42418fcffff	LEAQ 0xfffffc18(SP), R12			
  prefix.go:1209	0x5f8928		4d3b6610		CMPQ R12, 0x10(R14)				
  prefix.go:1209	0x5f892c		0f86b00d0000		JBE 0x5f96e2					
  prefix.go:1209	0x5f8932		55			PUSHQ BP					
  prefix.go:1209	0x5f8933		4889e5			MOVQ SP, BP					
  prefix.go:1209	0x5f8936		4881ec60040000		SUBQ $0x460, SP					
  prefix.go:1449	0x5f893d		4889842470040000	MOVQ AX, 0x470(SP)				
  prefix.go:1210	0x5f8945		488b5308		MOVQ 0x8(BX), DX				
  prefix.go:1211	0x5f8949		488b7310		MOVQ 0x10(BX), SI				
  prefix.go:1212	0x5f894d		488b7b18		MOVQ 0x18(BX), DI				
  prefix.go:1213	0x5f8951		4c8b4320		MOVQ 0x20(BX), R8				
  prefix.go:1214	0x5f8955		4c8b4b28		MOVQ 0x28(BX), R9				
  prefix.go:1215	0x5f8959		488b1b			MOVQ 0(BX), BX					
  prefix.go:1216	0x5f895c		4c8b5120		MOVQ 0x20(CX), R10				
  prefix.go:1217	0x5f8960		4c89d0			MOVQ R10, AX					
  prefix.go:1210	0x5f8963		4989d4			MOVQ DX, R12					
  prefix.go:1217	0x5f8966		48f7e3			MULQ BX						
  prefix.go:1217	0x5f8969		4889942410040000	MOVQ DX, 0x410(SP)				
  prefix.go:1217	0x5f8971		4889442408		MOVQ AX, 0x8(SP)				
  prefix.go:1220	0x5f8976		4c8b6908		MOVQ 0x8(CX), R13				
  prefix.go:1220	0x5f897a		4c89e8			MOVQ R13, AX					
  prefix.go:1220	0x5f897d		48f7e3			MULQ BX						
  prefix.go:1220	0x5f8980		4889942440030000	MOVQ DX, 0x340(SP)				
  prefix.go:1220	0x5f8988		4889842488030000	MOVQ AX, 0x388(SP)				
  prefix.go:1221	0x5f8990		4c8b19			MOVQ 0(CX), R11					
  prefix.go:1221	0x5f8993		4889d8			MOVQ BX, AX					
  prefix.go:1221	0x5f8996		49f7e3			MULQ R11					
  prefix.go:1221	0x5f8999		4889842430030000	MOVQ AX, 0x330(SP)				
  prefix.go:1221	0x5f89a1		4889942428030000	MOVQ DX, 0x328(SP)				
  prefix.go:1228	0x5f89a9		48b80100000001000000	MOVQ $0x100000001, AX				
  prefix.go:1228	0x5f89b3		4c8bbc2430030000	MOVQ 0x330(SP), R15				
  prefix.go:1228	0x5f89bb		49f7e7			MULQ R15					
  prefix.go:1228	0x5f89be		4889842440020000	MOVQ AX, 0x240(SP)				
  prefix.go:1228	0x5f89c6		4889c2			MOVQ AX, DX					
  prefix.go:1231	0x5f89c9		48c7c0ffffffff		MOVQ $-0x1, AX					
  prefix.go:1231	0x5f89d0		48f7e2			MULQ DX						
  prefix.go:1230	0x5f89d3		4889942498010000	MOVQ DX, 0x198(SP)				
  prefix.go:1231	0x5f89db		4889842490010000	MOVQ AX, 0x190(SP)				
  prefix.go:1232	0x5f89e3		48c7c0feffffff		MOVQ $-0x2, AX					
  prefix.go:1232	0x5f89ea		4c8bbc2440020000	MOVQ 0x240(SP), R15				
  prefix.go:1232	0x5f89f2		49f7e7			MULQ R15					
  prefix.go:1232	0x5f89f5		4889942420010000	MOVQ DX, 0x120(SP)				
  prefix.go:1232	0x5f89fd		4889842470010000	MOVQ AX, 0x170(SP)				
  prefix.go:1233	0x5f8a05		48b800000000ffffffff	MOVQ $0xffffffff00000000, AX			
  prefix.go:1233	0x5f8a0f		49f7e7			MULQ R15					
  prefix.go:1233	0x5f8a12		4889942408010000	MOVQ DX, 0x108(SP)				
  prefix.go:1233	0x5f8a1a		4889842410010000	MOVQ AX, 0x110(SP)				
  prefix.go:1234	0x5f8a22		b8ffffffff		MOVL $-0x1, AX					
  prefix.go:1234	0x5f8a27		49f7e7			MULQ R15					
  prefix.go:1234	0x5f8a2a		48899424e0000000	MOVQ DX, 0xe0(SP)				
  prefix.go:1234	0x5f8a32		4989c7			MOVQ AX, R15					
  prefix.go:1249	0x5f8a35		4c89d0			MOVQ R10, AX					
  prefix.go:1249	0x5f8a38		49f7e4			MULQ R12					
  prefix.go:1249	0x5f8a3b		4889942480000000	MOVQ DX, 0x80(SP)				
  prefix.go:1249	0x5f8a43		4889842488000000	MOVQ AX, 0x88(SP)				
  prefix.go:1252	0x5f8a4b		4c89e0			MOVQ R12, AX					
  prefix.go:1252	0x5f8a4e		49f7e5			MULQ R13					
  prefix.go:1252	0x5f8a51		4889542450		MOVQ DX, 0x50(SP)				
  prefix.go:1252	0x5f8a56		4889442458		MOVQ AX, 0x58(SP)				
  prefix.go:1253	0x5f8a5b		4c89d8			MOVQ R11, AX					
  prefix.go:1253	0x5f8a5e		49f7e4			MULQ R12					
  prefix.go:1253	0x5f8a61		4889542438		MOVQ DX, 0x38(SP)				
  prefix.go:1253	0x5f8a66		4889442448		MOVQ AX, 0x48(SP)				
  prefix.go:1289	0x5f8a6b		4c89d0			MOVQ R10, AX					
  prefix.go:1289	0x5f8a6e		48f7e6			MULQ SI						
  prefix.go:1289	0x5f8a71		4889942490030000	MOVQ DX, 0x390(SP)				
  prefix.go:1289	0x5f8a79		4889842498030000	MOVQ AX, 0x398(SP)				
  prefix.go:1290	0x5f8a81		488b5118		MOVQ 0x18(CX), DX				
  prefix.go:1290	0x5f8a85		4889942420040000	MOVQ DX, 0x420(SP)				
  prefix.go:1218	0x5f8a8d		4889d0			MOVQ DX, AX					
  prefix.go:1218	0x5f8a90		48f7e3			MULQ BX						
  prefix.go:1218	0x5f8a93		48899424c0030000	MOVQ DX, 0x3c0(SP)				
  prefix.go:1218	0x5f8a9b		48898424f0030000	MOVQ AX, 0x3f0(SP)				
  prefix.go:1250	0x5f8aa3		488b842420040000	MOVQ 0x420(SP), AX				
  prefix.go:1250	0x5f8aab		49f7e4			MULQ R12					
  prefix.go:1250	0x5f8aae		4889542470		MOVQ DX, 0x70(SP)				
  prefix.go:1250	0x5f8ab3		4889442478		MOVQ AX, 0x78(SP)				
  prefix.go:1290	0x5f8ab8		488b842420040000	MOVQ 0x420(SP), AX				
  prefix.go:1290	0x5f8ac0		48f7e6			MULQ SI						
  prefix.go:1290	0x5f8ac3		4889942478030000	MOVQ DX, 0x378(SP)				
  prefix.go:1290	0x5f8acb		4889842480030000	MOVQ AX, 0x380(SP)				
  prefix.go:1292	0x5f8ad3		4c89e8			MOVQ R13, AX					
  prefix.go:1292	0x5f8ad6		48f7e6			MULQ SI						
  prefix.go:1292	0x5f8ad9		4889942458030000	MOVQ DX, 0x358(SP)				
  prefix.go:1292	0x5f8ae1		4889842460030000	MOVQ AX, 0x360(SP)				
  prefix.go:1293	0x5f8ae9		4c89d8			MOVQ R11, AX					
  prefix.go:1293	0x5f8aec		48f7e6			MULQ SI						
  prefix.go:1293	0x5f8aef		4889942448030000	MOVQ DX, 0x348(SP)				
  prefix.go:1293	0x5f8af7		4889842450030000	MOVQ AX, 0x350(SP)				
  prefix.go:1329	0x5f8aff		4c89d0			MOVQ R10, AX					
  prefix.go:1329	0x5f8b02		48f7e7			MULQ DI						
  prefix.go:1329	0x5f8b05		48899424d0020000	MOVQ DX, 0x2d0(SP)				
  prefix.go:1329	0x5f8b0d		48898424d8020000	MOVQ AX, 0x2d8(SP)				
  prefix.go:1330	0x5f8b15		4889f8			MOVQ DI, AX					
  prefix.go:1330	0x5f8b18		488b942420040000	MOVQ 0x420(SP), DX				
  prefix.go:1330	0x5f8b20		48f7e2			MULQ DX						
  prefix.go:1330	0x5f8b23		48899424c0020000	MOVQ DX, 0x2c0(SP)				
  prefix.go:1330	0x5f8b2b		48898424c8020000	MOVQ AX, 0x2c8(SP)				
  prefix.go:1331	0x5f8b33		488b5110		MOVQ 0x10(CX), DX				
  prefix.go:1331	0x5f8b37		4889942418040000	MOVQ DX, 0x418(SP)				
  prefix.go:1219	0x5f8b3f		4889d0			MOVQ DX, AX					
  prefix.go:1219	0x5f8b42		48f7e3			MULQ BX						
  prefix.go:1219	0x5f8b45		48899424b0030000	MOVQ DX, 0x3b0(SP)				
  prefix.go:1219	0x5f8b4d		48898424b8030000	MOVQ AX, 0x3b8(SP)				
  prefix.go:1251	0x5f8b55		488b842418040000	MOVQ 0x418(SP), AX				
  prefix.go:1251	0x5f8b5d		49f7e4			MULQ R12					
  prefix.go:1251	0x5f8b60		4889542460		MOVQ DX, 0x60(SP)				
  prefix.go:1251	0x5f8b65		4889442468		MOVQ AX, 0x68(SP)				
  prefix.go:1291	0x5f8b6a		4889f0			MOVQ SI, AX					
  prefix.go:1291	0x5f8b6d		488b942418040000	MOVQ 0x418(SP), DX				
  prefix.go:1291	0x5f8b75		48f7e2			MULQ DX						
  prefix.go:1291	0x5f8b78		4889942468030000	MOVQ DX, 0x368(SP)				
  prefix.go:1291	0x5f8b80		4889842470030000	MOVQ AX, 0x370(SP)				
  prefix.go:1331	0x5f8b88		488b842418040000	MOVQ 0x418(SP), AX				
  prefix.go:1331	0x5f8b90		48f7e7			MULQ DI						
  prefix.go:1331	0x5f8b93		48899424b0020000	MOVQ DX, 0x2b0(SP)				
  prefix.go:1331	0x5f8b9b		48898424b8020000	MOVQ AX, 0x2b8(SP)				
  prefix.go:1332	0x5f8ba3		4c89e8			MOVQ R13, AX					
  prefix.go:1332	0x5f8ba6		48f7e7			MULQ DI						
  prefix.go:1332	0x5f8ba9		48899424a0020000	MOVQ DX, 0x2a0(SP)				
  prefix.go:1332	0x5f8bb1		48898424a8020000	MOVQ AX, 0x2a8(SP)				
  prefix.go:1333	0x5f8bb9		4c89d8			MOVQ R11, AX					
  prefix.go:1333	0x5f8bbc		48f7e7			MULQ DI						
  prefix.go:1333	0x5f8bbf		4889942490020000	MOVQ DX, 0x290(SP)				
  prefix.go:1333	0x5f8bc7		4889842498020000	MOVQ AX, 0x298(SP)				
  prefix.go:1369	0x5f8bcf		4c89c0			MOVQ R8, AX					
  prefix.go:1369	0x5f8bd2		49f7e2			MULQ R10					
  prefix.go:1369	0x5f8bd5		4889942420020000	MOVQ DX, 0x220(SP)				
  prefix.go:1369	0x5f8bdd		4889842428020000	MOVQ AX, 0x228(SP)				
  prefix.go:1370	0x5f8be5		488b842420040000	MOVQ 0x420(SP), AX				
  prefix.go:1370	0x5f8bed		49f7e0			MULQ R8						
  prefix.go:1370	0x5f8bf0		4889942410020000	MOVQ DX, 0x210(SP)				
  prefix.go:1370	0x5f8bf8		4889842418020000	MOVQ AX, 0x218(SP)				
  prefix.go:1371	0x5f8c00		488b842418040000	MOVQ 0x418(SP), AX				
  prefix.go:1371	0x5f8c08		49f7e0			MULQ R8						
  prefix.go:1371	0x5f8c0b		4889942400020000	MOVQ DX, 0x200(SP)				
  prefix.go:1371	0x5f8c13		4889842408020000	MOVQ AX, 0x208(SP)				
  prefix.go:1372	0x5f8c1b		4c89e8			MOVQ R13, AX					
  prefix.go:1372	0x5f8c1e		49f7e0			MULQ R8						
  prefix.go:1372	0x5f8c21		48899424f0010000	MOVQ DX, 0x1f0(SP)				
  prefix.go:1372	0x5f8c29		48898424f8010000	MOVQ AX, 0x1f8(SP)				
  prefix.go:1373	0x5f8c31		4c89d8			MOVQ R11, AX					
  prefix.go:1373	0x5f8c34		49f7e0			MULQ R8						
  prefix.go:1373	0x5f8c37		48899424e0010000	MOVQ DX, 0x1e0(SP)				
  prefix.go:1373	0x5f8c3f		48898424e8010000	MOVQ AX, 0x1e8(SP)				
  prefix.go:1408	0x5f8c47		488b4928		MOVQ 0x28(CX), CX				
  prefix.go:1216	0x5f8c4b		4889c8			MOVQ CX, AX					
  prefix.go:1216	0x5f8c4e		48f7e3			MULQ BX						
  prefix.go:1216	0x5f8c51		4889542440		MOVQ DX, 0x40(SP)				
  prefix.go:1216	0x5f8c56		4889c3			MOVQ AX, BX					
  prefix.go:1248	0x5f8c59		4889c8			MOVQ CX, AX					
  prefix.go:1248	0x5f8c5c		49f7e4			MULQ R12					
  prefix.go:1248	0x5f8c5f		4889942490000000	MOVQ DX, 0x90(SP)				
  prefix.go:1248	0x5f8c67		4889842498000000	MOVQ AX, 0x98(SP)				
  prefix.go:1288	0x5f8c6f		4889c8			MOVQ CX, AX					
  prefix.go:1288	0x5f8c72		48f7e6			MULQ SI						
  prefix.go:1288	0x5f8c75		48899424a0030000	MOVQ DX, 0x3a0(SP)				
  prefix.go:1288	0x5f8c7d		48898424a8030000	MOVQ AX, 0x3a8(SP)				
  prefix.go:1328	0x5f8c85		4889c8			MOVQ CX, AX					
  prefix.go:1328	0x5f8c88		48f7e7			MULQ DI						
  prefix.go:1328	0x5f8c8b		48899424e0020000	MOVQ DX, 0x2e0(SP)				
  prefix.go:1328	0x5f8c93		48898424e8020000	MOVQ AX, 0x2e8(SP)				
  prefix.go:1368	0x5f8c9b		4889c8			MOVQ CX, AX					
  prefix.go:1368	0x5f8c9e		49f7e0			MULQ R8						
  prefix.go:1368	0x5f8ca1		4889942430020000	MOVQ DX, 0x230(SP)				
  prefix.go:1368	0x5f8ca9		4889842438020000	MOVQ AX, 0x238(SP)				
  prefix.go:1408	0x5f8cb1		4c89c8			MOVQ R9, AX					
  prefix.go:1408	0x5f8cb4		48f7e1			MULQ CX						
  prefix.go:1408	0x5f8cb7		4889942480010000	MOVQ DX, 0x180(SP)				
  prefix.go:1408	0x5f8cbf		4889842488010000	MOVQ AX, 0x188(SP)				
  prefix.go:1409	0x5f8cc7		4c89d0			MOVQ R10, AX					
  prefix.go:1409	0x5f8cca		49f7e1			MULQ R9						
  prefix.go:1409	0x5f8ccd		4889942468010000	MOVQ DX, 0x168(SP)				
  prefix.go:1409	0x5f8cd5		4889842478010000	MOVQ AX, 0x178(SP)				
  prefix.go:1410	0x5f8cdd		488b842420040000	MOVQ 0x420(SP), AX				
  prefix.go:1410	0x5f8ce5		49f7e1			MULQ R9						
  prefix.go:1410	0x5f8ce8		4889942458010000	MOVQ DX, 0x158(SP)				
  prefix.go:1410	0x5f8cf0		4889842460010000	MOVQ AX, 0x160(SP)				
  prefix.go:1411	0x5f8cf8		488b842418040000	MOVQ 0x418(SP), AX				
  prefix.go:1411	0x5f8d00		49f7e1			MULQ R9						
  prefix.go:1411	0x5f8d03		4889942448010000	MOVQ DX, 0x148(SP)				
  prefix.go:1411	0x5f8d0b		4889842450010000	MOVQ AX, 0x150(SP)				
  prefix.go:1412	0x5f8d13		4c89e8			MOVQ R13, AX					
  prefix.go:1412	0x5f8d16		49f7e1			MULQ R9						
  prefix.go:1412	0x5f8d19		4889942438010000	MOVQ DX, 0x138(SP)				
  prefix.go:1412	0x5f8d21		4889842440010000	MOVQ AX, 0x140(SP)				
  prefix.go:1413	0x5f8d29		4c89d8			MOVQ R11, AX					
  prefix.go:1413	0x5f8d2c		49f7e1			MULQ R9						
  prefix.go:1413	0x5f8d2f		4889942428010000	MOVQ DX, 0x128(SP)				
  prefix.go:1413	0x5f8d37		4889842430010000	MOVQ AX, 0x130(SP)				
  prefix.go:1222	0x5f8d3f		4c8b8c2428030000	MOVQ 0x328(SP), R9				
  prefix.go:1222	0x5f8d47		4c8b942488030000	MOVQ 0x388(SP), R10				
  prefix.go:1222	0x5f8d4f		4d01d1			ADDQ R10, R9					
  prefix.go:1223	0x5f8d52		4c8b942440030000	MOVQ 0x340(SP), R10				
  prefix.go:1223	0x5f8d5a		488b8c24b8030000	MOVQ 0x3b8(SP), CX				
  prefix.go:1223	0x5f8d62		4911ca			ADCQ CX, R10					
  prefix.go:1224	0x5f8d65		488b8c24b0030000	MOVQ 0x3b0(SP), CX				
  prefix.go:1224	0x5f8d6d		4c8bac24f0030000	MOVQ 0x3f0(SP), R13				
  prefix.go:1224	0x5f8d75		4c11e9			ADCQ R13, CX					
  prefix.go:1225	0x5f8d78		4c8bac24c0030000	MOVQ 0x3c0(SP), R13				
  prefix.go:1225	0x5f8d80		4c8b5c2408		MOVQ 0x8(SP), R11				
  prefix.go:1225	0x5f8d85		4d11dd			ADCQ R11, R13					
  prefix.go:1226	0x5f8d88		4c8b9c2410040000	MOVQ 0x410(SP), R11				
  prefix.go:1226	0x5f8d90		4911db			ADCQ BX, R11					
  prefix.go:1227	0x5f8d93		488b5c2440		MOVQ 0x40(SP), BX				
  prefix.go:1227	0x5f8d98		4883d300		ADCQ $0x0, BX					
  prefix.go:1227	0x5f8d9c		48899c2448020000	MOVQ BX, 0x248(SP)				
  prefix.go:1235	0x5f8da4		488b9424e0000000	MOVQ 0xe0(SP), DX				
  prefix.go:1235	0x5f8dac		4c8b842410010000	MOVQ 0x110(SP), R8				
  prefix.go:1235	0x5f8db4		4c01c2			ADDQ R8, DX					
  prefix.go:1236	0x5f8db7		4c8b842408010000	MOVQ 0x108(SP), R8				
  prefix.go:1236	0x5f8dbf		488bbc2470010000	MOVQ 0x170(SP), DI				
  prefix.go:1236	0x5f8dc7		4911f8			ADCQ DI, R8					
  prefix.go:1237	0x5f8dca		488bbc2420010000	MOVQ 0x120(SP), DI				
  prefix.go:1237	0x5f8dd2		488bb42490010000	MOVQ 0x190(SP), SI				
  prefix.go:1237	0x5f8dda		4811f7			ADCQ SI, DI					
  prefix.go:1238	0x5f8ddd		4c8ba42498010000	MOVQ 0x198(SP), R12				
  prefix.go:1238	0x5f8de5		4c11e6			ADCQ R12, SI					
  prefix.go:1239	0x5f8de8		488b9c2490010000	MOVQ 0x190(SP), BX				
  prefix.go:1239	0x5f8df0		4c11e3			ADCQ R12, BX					
  prefix.go:1240	0x5f8df3		4983d400		ADCQ $0x0, R12					
  prefix.go:1240	0x5f8df7		4c89a424d8000000	MOVQ R12, 0xd8(SP)				
  prefix.go:1241	0x5f8dff		4c8ba42430030000	MOVQ 0x330(SP), R12				
  prefix.go:1241	0x5f8e07		4d01fc			ADDQ R15, R12					
  prefix.go:1242	0x5f8e0a		4c11ca			ADCQ R9, DX					
  prefix.go:1242	0x5f8e0d		48899424d0000000	MOVQ DX, 0xd0(SP)				
  prefix.go:1243	0x5f8e15		4d11d0			ADCQ R10, R8					
  prefix.go:1243	0x5f8e18		4c898424c8000000	MOVQ R8, 0xc8(SP)				
  prefix.go:1244	0x5f8e20		4811cf			ADCQ CX, DI					
  prefix.go:1244	0x5f8e23		4889bc24c0000000	MOVQ DI, 0xc0(SP)				
  prefix.go:1245	0x5f8e2b		4c11ee			ADCQ R13, SI					
  prefix.go:1245	0x5f8e2e		4889b424b8000000	MOVQ SI, 0xb8(SP)				
  prefix.go:1246	0x5f8e36		4c11db			ADCQ R11, BX					
  prefix.go:1246	0x5f8e39		48899c24b0000000	MOVQ BX, 0xb0(SP)				
  prefix.go:1247	0x5f8e41		488b8c24d8000000	MOVQ 0xd8(SP), CX				
  prefix.go:1247	0x5f8e49		4c8b8c2448020000	MOVQ 0x248(SP), R9				
  prefix.go:1247	0x5f8e51		4c11c9			ADCQ R9, CX					
  prefix.go:1247	0x5f8e54		48898c24a8000000	MOVQ CX, 0xa8(SP)				
  prefix.go:1247	0x5f8e5c		410f92c1		SETB R9						
  prefix.go:1247	0x5f8e60		450fb6c9		MOVZX R9, R9					
  prefix.go:1247	0x5f8e64		4c898c24a0000000	MOVQ R9, 0xa0(SP)				
  prefix.go:1254	0x5f8e6c		4c8b542438		MOVQ 0x38(SP), R10				
  prefix.go:1254	0x5f8e71		4c8b5c2458		MOVQ 0x58(SP), R11				
  prefix.go:1254	0x5f8e76		4d01da			ADDQ R11, R10					
  prefix.go:1254	0x5f8e79		4c89542430		MOVQ R10, 0x30(SP)				
  prefix.go:1255	0x5f8e7e		4c8b5c2450		MOVQ 0x50(SP), R11				
  prefix.go:1255	0x5f8e83		4c8b642468		MOVQ 0x68(SP), R12				
  prefix.go:1255	0x5f8e88		4d11e3			ADCQ R12, R11					
  prefix.go:1255	0x5f8e8b		4c895c2428		MOVQ R11, 0x28(SP)				
  prefix.go:1256	0x5f8e90		4c8b642460		MOVQ 0x60(SP), R12				
  prefix.go:1256	0x5f8e95		4c8b6c2478		MOVQ 0x78(SP), R13				
  prefix.go:1256	0x5f8e9a		4d11ec			ADCQ R13, R12					
  prefix.go:1256	0x5f8e9d		4c89642420		MOVQ R12, 0x20(SP)				
  prefix.go:1257	0x5f8ea2		4c8b6c2470		MOVQ 0x70(SP), R13				
  prefix.go:1257	0x5f8ea7		4c8bbc2488000000	MOVQ 0x88(SP), R15				
  prefix.go:1257	0x5f8eaf		4d11fd			ADCQ R15, R13					
  prefix.go:1257	0x5f8eb2		4c896c2418		MOVQ R13, 0x18(SP)				
  prefix.go:1258	0x5f8eb7		4c8bbc2480000000	MOVQ 0x80(SP), R15				
  prefix.go:1258	0x5f8ebf		4c8b8c2498000000	MOVQ 0x98(SP), R9				
  prefix.go:1258	0x5f8ec7		4d11cf			ADCQ R9, R15					
  prefix.go:1258	0x5f8eca		4c897c2410		MOVQ R15, 0x10(SP)				
  prefix.go:1259	0x5f8ecf		4c8b8c2490000000	MOVQ 0x90(SP), R9				
  prefix.go:1259	0x5f8ed7		4983d100		ADCQ $0x0, R9					
  prefix.go:1259	0x5f8edb		4c890c24		MOVQ R9, 0(SP)					
  prefix.go:1260	0x5f8edf		4c8b4c2448		MOVQ 0x48(SP), R9				
  prefix.go:1260	0x5f8ee4		4901d1			ADDQ DX, R9					
  prefix.go:1261	0x5f8ee7		4d11c2			ADCQ R8, R10					
  prefix.go:1262	0x5f8eea		4911fb			ADCQ DI, R11					
  prefix.go:1263	0x5f8eed		4911f4			ADCQ SI, R12					
  prefix.go:1264	0x5f8ef0		4911dd			ADCQ BX, R13					
  prefix.go:1265	0x5f8ef3		4911cf			ADCQ CX, R15					
  prefix.go:1266	0x5f8ef6		488b0c24		MOVQ 0(SP), CX					
  prefix.go:1266	0x5f8efa		488b9c24a0000000	MOVQ 0xa0(SP), BX				
  prefix.go:1266	0x5f8f02		4811d9			ADCQ BX, CX					
  prefix.go:1266	0x5f8f05		48898c2408040000	MOVQ CX, 0x408(SP)				
  prefix.go:1267	0x5f8f0d		4c89c8			MOVQ R9, AX					
  prefix.go:1267	0x5f8f10		48bb0100000001000000	MOVQ $0x100000001, BX				
  prefix.go:1267	0x5f8f1a		48f7e3			MULQ BX						
  prefix.go:1267	0x5f8f1d		4889842400040000	MOVQ AX, 0x400(SP)				
  prefix.go:1268	0x5f8f25		48c7c2ffffffff		MOVQ $-0x1, DX					
  prefix.go:1268	0x5f8f2c		48f7e2			MULQ DX						
  prefix.go:1268	0x5f8f2f		48899424f8030000	MOVQ DX, 0x3f8(SP)				
  prefix.go:1270	0x5f8f37		48898424e8030000	MOVQ AX, 0x3e8(SP)				
  prefix.go:1271	0x5f8f3f		488b842400040000	MOVQ 0x400(SP), AX				
  prefix.go:1271	0x5f8f47		48c7c3feffffff		MOVQ $-0x2, BX					
  prefix.go:1271	0x5f8f4e		48f7e3			MULQ BX						
  prefix.go:1271	0x5f8f51		48899424d8030000	MOVQ DX, 0x3d8(SP)				
  prefix.go:1271	0x5f8f59		48898424e0030000	MOVQ AX, 0x3e0(SP)				
  prefix.go:1272	0x5f8f61		488b842400040000	MOVQ 0x400(SP), AX				
  prefix.go:1272	0x5f8f69		48bb00000000ffffffff	MOVQ $0xffffffff00000000, BX			
  prefix.go:1272	0x5f8f73		48f7e3			MULQ BX						
  prefix.go:1272	0x5f8f76		48899424c8030000	MOVQ DX, 0x3c8(SP)				
  prefix.go:1272	0x5f8f7e		48898424d0030000	MOVQ AX, 0x3d0(SP)				
  prefix.go:1273	0x5f8f86		488b842400040000	MOVQ 0x400(SP), AX				
  prefix.go:1273	0x5f8f8e		bbffffffff		MOVL $-0x1, BX					
  prefix.go:1273	0x5f8f93		48f7e3			MULQ BX						
  prefix.go:1274	0x5f8f96		488b9c24d0030000	MOVQ 0x3d0(SP), BX				
  prefix.go:1274	0x5f8f9e		4801da			ADDQ BX, DX					
  prefix.go:1275	0x5f8fa1		488b9c24c8030000	MOVQ 0x3c8(SP), BX				
  prefix.go:1275	0x5f8fa9		488bb424e0030000	MOVQ 0x3e0(SP), SI				
  prefix.go:1275	0x5f8fb1		4811f3			ADCQ SI, BX					
  prefix.go:1276	0x5f8fb4		488bb424d8030000	MOVQ 0x3d8(SP), SI				
  prefix.go:1276	0x5f8fbc		488bbc24e8030000	MOVQ 0x3e8(SP), DI				
  prefix.go:1276	0x5f8fc4		4811fe			ADCQ DI, SI					
  prefix.go:1277	0x5f8fc7		4c8b8424f8030000	MOVQ 0x3f8(SP), R8				
  prefix.go:1277	0x5f8fcf		4c11c7			ADCQ R8, DI					
  prefix.go:1278	0x5f8fd2		488b8c24e8030000	MOVQ 0x3e8(SP), CX				
  prefix.go:1278	0x5f8fda		4c11c1			ADCQ R8, CX					
  prefix.go:1279	0x5f8fdd		4983d000		ADCQ $0x0, R8					
  prefix.go:1280	0x5f8fe1		4901c1			ADDQ AX, R9					
  prefix.go:1281	0x5f8fe4		4c11d2			ADCQ R10, DX					
  prefix.go:1282	0x5f8fe7		4c11db			ADCQ R11, BX					
  prefix.go:1283	0x5f8fea		4c11e6			ADCQ R12, SI					
  prefix.go:1284	0x5f8fed		4c11ef			ADCQ R13, DI					
  prefix.go:1285	0x5f8ff0		4c11f9			ADCQ R15, CX					
  prefix.go:1286	0x5f8ff3		4c8b8c2408040000	MOVQ 0x408(SP), R9				
  prefix.go:1286	0x5f8ffb		4d11c8			ADCQ R9, R8					
  prefix.go:1286	0x5f8ffe		410f92c1		SETB R9						
  prefix.go:1286	0x5f9002		450fb6c9		MOVZX R9, R9					
  prefix.go:1260	0x5f9006		4c8b542448		MOVQ 0x48(SP), R10				
  prefix.go:1260	0x5f900b		4c8b9c24d0000000	MOVQ 0xd0(SP), R11				
  prefix.go:1260	0x5f9013		4d01da			ADDQ R11, R10					
  prefix.go:1261	0x5f9016		4c8b542430		MOVQ 0x30(SP), R10				
  prefix.go:1261	0x5f901b		4c8b9c24c8000000	MOVQ 0xc8(SP), R11				
  prefix.go:1261	0x5f9023		4d11da			ADCQ R11, R10					
  prefix.go:1262	0x5f9026		4c8b542428		MOVQ 0x28(SP), R10				
  prefix.go:1262	0x5f902b		4c8b9c24c0000000	MOVQ 0xc0(SP), R11				
  prefix.go:1262	0x5f9033		4d11da			ADCQ R11, R10					
  prefix.go:1263	0x5f9036		4c8b542420		MOVQ 0x20(SP), R10				
  prefix.go:1263	0x5f903b		4c8b9c24b8000000	MOVQ 0xb8(SP), R11				
  prefix.go:1263	0x5f9043		4d11da			ADCQ R11, R10					
  prefix.go:1264	0x5f9046		4c8b542418		MOVQ 0x18(SP), R10				
  prefix.go:1264	0x5f904b		4c8b9c24b0000000	MOVQ 0xb0(SP), R11				
  prefix.go:1264	0x5f9053		4d11da			ADCQ R11, R10					
  prefix.go:1265	0x5f9056		4c8b542410		MOVQ 0x10(SP), R10				
  prefix.go:1265	0x5f905b		4c8b9c24a8000000	MOVQ 0xa8(SP), R11				
  prefix.go:1265	0x5f9063		4d11da			ADCQ R11, R10					
  prefix.go:1266	0x5f9066		4c8b1424		MOVQ 0(SP), R10					
  prefix.go:1266	0x5f906a		4c8b9c24a0000000	MOVQ 0xa0(SP), R11				
  prefix.go:1266	0x5f9072		4d11da			ADCQ R11, R10					
  prefix.go:1287	0x5f9075		4983d100		ADCQ $0x0, R9					
  prefix.go:1294	0x5f9079		4c8b942448030000	MOVQ 0x348(SP), R10				
  prefix.go:1294	0x5f9081		4c8b9c2460030000	MOVQ 0x360(SP), R11				
  prefix.go:1294	0x5f9089		4d01da			ADDQ R11, R10					
  prefix.go:1295	0x5f908c		4c8b9c2458030000	MOVQ 0x358(SP), R11				
  prefix.go:1295	0x5f9094		4c8ba42470030000	MOVQ 0x370(SP), R12				
  prefix.go:1295	0x5f909c		4d11e3			ADCQ R12, R11					
  prefix.go:1296	0x5f909f		4c8ba42468030000	MOVQ 0x368(SP), R12				
  prefix.go:1296	0x5f90a7		4c8bac2480030000	MOVQ 0x380(SP), R13				
  prefix.go:1296	0x5f90af		4d11ec			ADCQ R13, R12					
  prefix.go:1297	0x5f90b2		4c8bac2478030000	MOVQ 0x378(SP), R13				
  prefix.go:1297	0x5f90ba		4c8bbc2498030000	MOVQ 0x398(SP), R15				
  prefix.go:1297	0x5f90c2		4d11fd			ADCQ R15, R13					
  prefix.go:1298	0x5f90c5		4c8bbc2490030000	MOVQ 0x390(SP), R15				
  prefix.go:1287	0x5f90cd		4c89c8			MOVQ R9, AX					
  prefix.go:1298	0x5f90d0		4c8b8c24a8030000	MOVQ 0x3a8(SP), R9				
  prefix.go:1298	0x5f90d8		4d11cf			ADCQ R9, R15					
  prefix.go:1299	0x5f90db		4c8b8c24a0030000	MOVQ 0x3a0(SP), R9				
  prefix.go:1299	0x5f90e3		4983d100		ADCQ $0x0, R9					
  prefix.go:1299	0x5f90e7		4c898c2438030000	MOVQ R9, 0x338(SP)				
  prefix.go:1300	0x5f90ef		4c8b8c2450030000	MOVQ 0x350(SP), R9				
  prefix.go:1300	0x5f90f7		4901d1			ADDQ DX, R9					
  prefix.go:1301	0x5f90fa		4911da			ADCQ BX, R10					
  prefix.go:1302	0x5f90fd		4911f3			ADCQ SI, R11					
  prefix.go:1303	0x5f9100		4911fc			ADCQ DI, R12					
  prefix.go:1304	0x5f9103		4911cd			ADCQ CX, R13					
  prefix.go:1305	0x5f9106		4d11c7			ADCQ R8, R15					
  prefix.go:1306	0x5f9109		488b8c2438030000	MOVQ 0x338(SP), CX				
  prefix.go:1306	0x5f9111		4811c1			ADCQ AX, CX					
  prefix.go:1306	0x5f9114		48898c2420030000	MOVQ CX, 0x320(SP)				
  prefix.go:1306	0x5f911c		0f92c2			SETB DL						
  prefix.go:1306	0x5f911f		0fb6d2			MOVZX DL, DX					
  prefix.go:1306	0x5f9122		4889942418030000	MOVQ DX, 0x318(SP)				
  prefix.go:1307	0x5f912a		4c89c8			MOVQ R9, AX					
  prefix.go:1307	0x5f912d		48bb0100000001000000	MOVQ $0x100000001, BX				
  prefix.go:1307	0x5f9137		48f7e3			MULQ BX						
  prefix.go:1308	0x5f913a		48c7c2ffffffff		MOVQ $-0x1, DX					
  prefix.go:1307	0x5f9141		4889c7			MOVQ AX, DI					
  prefix.go:1308	0x5f9144		48f7e2			MULQ DX						
  prefix.go:1308	0x5f9147		4889942410030000	MOVQ DX, 0x310(SP)				
  prefix.go:1310	0x5f914f		4889842408030000	MOVQ AX, 0x308(SP)				
  prefix.go:1310	0x5f9157		4989c0			MOVQ AX, R8					
  prefix.go:1311	0x5f915a		4889f8			MOVQ DI, AX					
  prefix.go:1311	0x5f915d		48c7c3feffffff		MOVQ $-0x2, BX					
  prefix.go:1311	0x5f9164		48f7e3			MULQ BX						
  prefix.go:1311	0x5f9167		48899424f8020000	MOVQ DX, 0x2f8(SP)				
  prefix.go:1311	0x5f916f		4889842400030000	MOVQ AX, 0x300(SP)				
  prefix.go:1312	0x5f9177		4889f8			MOVQ DI, AX					
  prefix.go:1312	0x5f917a		48bb00000000ffffffff	MOVQ $0xffffffff00000000, BX			
  prefix.go:1312	0x5f9184		48f7e3			MULQ BX						
  prefix.go:1312	0x5f9187		48898424f0020000	MOVQ AX, 0x2f0(SP)				
  prefix.go:1313	0x5f918f		4889f8			MOVQ DI, AX					
  prefix.go:1313	0x5f9192		bbffffffff		MOVL $-0x1, BX					
  prefix.go:1312	0x5f9197		4889d7			MOVQ DX, DI					
  prefix.go:1313	0x5f919a		48f7e3			MULQ BX						
  prefix.go:1314	0x5f919d		488b9c24f0020000	MOVQ 0x2f0(SP), BX				
  prefix.go:1314	0x5f91a5		4801da			ADDQ BX, DX					
  prefix.go:1315	0x5f91a8		488b9c2400030000	MOVQ 0x300(SP), BX				
  prefix.go:1315	0x5f91b0		4811df			ADCQ BX, DI					
  prefix.go:1316	0x5f91b3		488b9c24f8020000	MOVQ 0x2f8(SP), BX				
  prefix.go:1316	0x5f91bb		4c11c3			ADCQ R8, BX					
  prefix.go:1317	0x5f91be		488bb42410030000	MOVQ 0x310(SP), SI				
  prefix.go:1317	0x5f91c6		4911f0			ADCQ SI, R8					
  prefix.go:1318	0x5f91c9		488b8c2408030000	MOVQ 0x308(SP), CX				
  prefix.go:1318	0x5f91d1		4811f1			ADCQ SI, CX					
  prefix.go:1319	0x5f91d4		4883d600		ADCQ $0x0, SI					
  prefix.go:1320	0x5f91d8		4901c1			ADDQ AX, R9					
  prefix.go:1321	0x5f91db		4c11d2			ADCQ R10, DX					
  prefix.go:1322	0x5f91de		4c11df			ADCQ R11, DI					
  prefix.go:1323	0x5f91e1		4c11e3			ADCQ R12, BX					
  prefix.go:1324	0x5f91e4		4d11e8			ADCQ R13, R8					
  prefix.go:1325	0x5f91e7		4c11f9			ADCQ R15, CX					
  prefix.go:1326	0x5f91ea		4c8b8c2420030000	MOVQ 0x320(SP), R9				
  prefix.go:1326	0x5f91f2		4c11ce			ADCQ R9, SI					
  prefix.go:1327	0x5f91f5		4c8b8c2418030000	MOVQ 0x318(SP), R9				
  prefix.go:1327	0x5f91fd		4983d100		ADCQ $0x0, R9					
  prefix.go:1334	0x5f9201		4c8b942490020000	MOVQ 0x290(SP), R10				
  prefix.go:1334	0x5f9209		4c8b9c24a8020000	MOVQ 0x2a8(SP), R11				
  prefix.go:1334	0x5f9211		4d01da			ADDQ R11, R10					
  prefix.go:1335	0x5f9214		4c8b9c24a0020000	MOVQ 0x2a0(SP), R11				
  prefix.go:1335	0x5f921c		4c8ba424b8020000	MOVQ 0x2b8(SP), R12				
  prefix.go:1335	0x5f9224		4d11e3			ADCQ R12, R11					
  prefix.go:1336	0x5f9227		4c8ba424b0020000	MOVQ 0x2b0(SP), R12				
  prefix.go:1336	0x5f922f		4c8bac24c8020000	MOVQ 0x2c8(SP), R13				
  prefix.go:1336	0x5f9237		4d11ec			ADCQ R13, R12					
  prefix.go:1337	0x5f923a		4c8bac24c0020000	MOVQ 0x2c0(SP), R13				
  prefix.go:1337	0x5f9242		4c8bbc24d8020000	MOVQ 0x2d8(SP), R15				
  prefix.go:1337	0x5f924a		4d11fd			ADCQ R15, R13					
  prefix.go:1338	0x5f924d		4c8bbc24d0020000	MOVQ 0x2d0(SP), R15				
  prefix.go:1327	0x5f9255		4c89c8			MOVQ R9, AX					
  prefix.go:1338	0x5f9258		4c8b8c24e8020000	MOVQ 0x2e8(SP), R9				
  prefix.go:1338	0x5f9260		4d11cf			ADCQ R9, R15					
  prefix.go:1339	0x5f9263		4c8b8c24e0020000	MOVQ 0x2e0(SP), R9				
  prefix.go:1339	0x5f926b		4983d100		ADCQ $0x0, R9					
  prefix.go:1339	0x5f926f		4c898c2488020000	MOVQ R9, 0x288(SP)				
  prefix.go:1340	0x5f9277		4c8b8c2498020000	MOVQ 0x298(SP), R9				
  prefix.go:1340	0x5f927f		4901d1			ADDQ DX, R9					
  prefix.go:1341	0x5f9282		4911fa			ADCQ DI, R10					
  prefix.go:1342	0x5f9285		4911db			ADCQ BX, R11					
  prefix.go:1343	0x5f9288		4d11c4			ADCQ R8, R12					
  prefix.go:1344	0x5f928b		4911cd			ADCQ CX, R13					
  prefix.go:1345	0x5f928e		4911f7			ADCQ SI, R15					
  prefix.go:1346	0x5f9291		488b8c2488020000	MOVQ 0x288(SP), CX				
  prefix.go:1346	0x5f9299		4811c1			ADCQ AX, CX					
  prefix.go:1346	0x5f929c		48898c2480020000	MOVQ CX, 0x280(SP)				
  prefix.go:1346	0x5f92a4		0f92c2			SETB DL						
  prefix.go:1346	0x5f92a7		0fb6d2			MOVZX DL, DX					
  prefix.go:1346	0x5f92aa		4889942478020000	MOVQ DX, 0x278(SP)				
  prefix.go:1347	0x5f92b2		4c89c8			MOVQ R9, AX					
  prefix.go:1347	0x5f92b5		48bb0100000001000000	MOVQ $0x100000001, BX				
  prefix.go:1347	0x5f92bf		48f7e3			MULQ BX						
  prefix.go:1349	0x5f92c2		48c7c2ffffffff		MOVQ $-0x1, DX					
  prefix.go:1347	0x5f92c9		4889c7			MOVQ AX, DI					
  prefix.go:1349	0x5f92cc		48f7e2			MULQ DX						
  prefix.go:1350	0x5f92cf		4889842470020000	MOVQ AX, 0x270(SP)				
  prefix.go:1350	0x5f92d7		4889942468020000	MOVQ DX, 0x268(SP)				
  prefix.go:1350	0x5f92df		4989c0			MOVQ AX, R8					
  prefix.go:1351	0x5f92e2		4889f8			MOVQ DI, AX					
  prefix.go:1351	0x5f92e5		48c7c3feffffff		MOVQ $-0x2, BX					
  prefix.go:1351	0x5f92ec		48f7e3			MULQ BX						
  prefix.go:1351	0x5f92ef		4889942458020000	MOVQ DX, 0x258(SP)				
  prefix.go:1351	0x5f92f7		4889842460020000	MOVQ AX, 0x260(SP)				
  prefix.go:1352	0x5f92ff		4889f8			MOVQ DI, AX					
  prefix.go:1352	0x5f9302		48bb00000000ffffffff	MOVQ $0xffffffff00000000, BX			
  prefix.go:1352	0x5f930c		48f7e3			MULQ BX						
  prefix.go:1352	0x5f930f		4889842450020000	MOVQ AX, 0x250(SP)				
  prefix.go:1353	0x5f9317		4889f8			MOVQ DI, AX					
  prefix.go:1353	0x5f931a		bbffffffff		MOVL $-0x1, BX					
  prefix.go:1352	0x5f931f		4889d7			MOVQ DX, DI					
  prefix.go:1353	0x5f9322		48f7e3			MULQ BX						
  prefix.go:1354	0x5f9325		488b9c2450020000	MOVQ 0x250(SP), BX				
  prefix.go:1354	0x5f932d		4801da			ADDQ BX, DX					
  prefix.go:1355	0x5f9330		488b9c2460020000	MOVQ 0x260(SP), BX				
  prefix.go:1355	0x5f9338		4811df			ADCQ BX, DI					
  prefix.go:1356	0x5f933b		488b9c2458020000	MOVQ 0x258(SP), BX				
  prefix.go:1356	0x5f9343		4c11c3			ADCQ R8, BX					
  prefix.go:1357	0x5f9346		488bb42468020000	MOVQ 0x268(SP), SI				
  prefix.go:1357	0x5f934e		4911f0			ADCQ SI, R8					
  prefix.go:1358	0x5f9351		488b8c2470020000	MOVQ 0x270(SP), CX				
  prefix.go:1358	0x5f9359		4811f1			ADCQ SI, CX					
  prefix.go:1359	0x5f935c		4883d600		ADCQ $0x0, SI					
  prefix.go:1360	0x5f9360		4901c1			ADDQ AX, R9					
  prefix.go:1361	0x5f9363		4c11d2			ADCQ R10, DX					
  prefix.go:1362	0x5f9366		4c11df			ADCQ R11, DI					
  prefix.go:1363	0x5f9369		4c11e3			ADCQ R12, BX					
  prefix.go:1364	0x5f936c		4d11e8			ADCQ R13, R8					
  prefix.go:1365	0x5f936f		4c11f9			ADCQ R15, CX					
  prefix.go:1366	0x5f9372		4c8b8c2480020000	MOVQ 0x280(SP), R9				
  prefix.go:1366	0x5f937a		4c11ce			ADCQ R9, SI					
  prefix.go:1367	0x5f937d		4c8b8c2478020000	MOVQ 0x278(SP), R9				
  prefix.go:1367	0x5f9385		4983d100		ADCQ $0x0, R9					
  prefix.go:1374	0x5f9389		4c8b9424e0010000	MOVQ 0x1e0(SP), R10				
  prefix.go:1374	0x5f9391		4c8b9c24f8010000	MOVQ 0x1f8(SP), R11				
  prefix.go:1374	0x5f9399		4d01da			ADDQ R11, R10					
  prefix.go:1375	0x5f939c		4c8b9c24f0010000	MOVQ 0x1f0(SP), R11				
  prefix.go:1375	0x5f93a4		4c8ba42408020000	MOVQ 0x208(SP), R12				
  prefix.go:1375	0x5f93ac		4d11e3			ADCQ R12, R11					
  prefix.go:1376	0x5f93af		4c8ba42400020000	MOVQ 0x200(SP), R12				
  prefix.go:1376	0x5f93b7		4c8bac2418020000	MOVQ 0x218(SP), R13				
  prefix.go:1376	0x5f93bf		4d11ec			ADCQ R13, R12					
  prefix.go:1377	0x5f93c2		4c8bac2410020000	MOVQ 0x210(SP), R13				
  prefix.go:1377	0x5f93ca		4c8bbc2428020000	MOVQ 0x228(SP), R15				
  prefix.go:1377	0x5f93d2		4d11fd			ADCQ R15, R13					
  prefix.go:1378	0x5f93d5		4c8bbc2420020000	MOVQ 0x220(SP), R15				
  prefix.go:1367	0x5f93dd		4c89c8			MOVQ R9, AX					
  prefix.go:1378	0x5f93e0		4c8b8c2438020000	MOVQ 0x238(SP), R9				
  prefix.go:1378	0x5f93e8		4d11cf			ADCQ R9, R15					
  prefix.go:1379	0x5f93eb		4c8b8c2430020000	MOVQ 0x230(SP), R9				
  prefix.go:1379	0x5f93f3		4983d100		ADCQ $0x0, R9					
  prefix.go:1379	0x5f93f7		4c898c24d8010000	MOVQ R9, 0x1d8(SP)				
  prefix.go:1380	0x5f93ff		4c8b8c24e8010000	MOVQ 0x1e8(SP), R9				
  prefix.go:1380	0x5f9407		4901d1			ADDQ DX, R9					
  prefix.go:1381	0x5f940a		4911fa			ADCQ DI, R10					
  prefix.go:1382	0x5f940d		4911db			ADCQ BX, R11					
  prefix.go:1383	0x5f9410		4d11c4			ADCQ R8, R12					
  prefix.go:1384	0x5f9413		4911cd			ADCQ CX, R13					
  prefix.go:1385	0x5f9416		4911f7			ADCQ SI, R15					
  prefix.go:1386	0x5f9419		488b8c24d8010000	MOVQ 0x1d8(SP), CX				
  prefix.go:1386	0x5f9421		4811c1			ADCQ AX, CX					
  prefix.go:1386	0x5f9424		48898c24d0010000	MOVQ CX, 0x1d0(SP)				
  prefix.go:1386	0x5f942c		0f92c2			SETB DL						
  prefix.go:1386	0x5f942f		0fb6d2			MOVZX DL, DX					
  prefix.go:1386	0x5f9432		48899424c8010000	MOVQ DX, 0x1c8(SP)				
  prefix.go:1387	0x5f943a		4c89c8			MOVQ R9, AX					
  prefix.go:1387	0x5f943d		48bb0100000001000000	MOVQ $0x100000001, BX				
  prefix.go:1387	0x5f9447		48f7e3			MULQ BX						
  prefix.go:1390	0x5f944a		48c7c2ffffffff		MOVQ $-0x1, DX					
  prefix.go:1387	0x5f9451		4889c7			MOVQ AX, DI					
  prefix.go:1390	0x5f9454		48f7e2			MULQ DX						
  prefix.go:1388	0x5f9457		48898424c0010000	MOVQ AX, 0x1c0(SP)				
  prefix.go:1388	0x5f945f		48899424b8010000	MOVQ DX, 0x1b8(SP)				
  prefix.go:1388	0x5f9467		4989c0			MOVQ AX, R8					
  prefix.go:1391	0x5f946a		4889f8			MOVQ DI, AX					
  prefix.go:1391	0x5f946d		48c7c3feffffff		MOVQ $-0x2, BX					
  prefix.go:1391	0x5f9474		48f7e3			MULQ BX						
  prefix.go:1391	0x5f9477		48899424a8010000	MOVQ DX, 0x1a8(SP)				
  prefix.go:1391	0x5f947f		48898424b0010000	MOVQ AX, 0x1b0(SP)				
  prefix.go:1392	0x5f9487		4889f8			MOVQ DI, AX					
  prefix.go:1392	0x5f948a		48bb00000000ffffffff	MOVQ $0xffffffff00000000, BX			
  prefix.go:1392	0x5f9494		48f7e3			MULQ BX						
  prefix.go:1392	0x5f9497		48898424a0010000	MOVQ AX, 0x1a0(SP)				
  prefix.go:1393	0x5f949f		4889f8			MOVQ DI, AX					
  prefix.go:1393	0x5f94a2		bbffffffff		MOVL $-0x1, BX					
  prefix.go:1392	0x5f94a7		4889d7			MOVQ DX, DI					
  prefix.go:1393	0x5f94aa		48f7e3			MULQ BX						
  prefix.go:1394	0x5f94ad		488b9c24a0010000	MOVQ 0x1a0(SP), BX				
  prefix.go:1394	0x5f94b5		4801da			ADDQ BX, DX					
  prefix.go:1395	0x5f94b8		488b9c24b0010000	MOVQ 0x1b0(SP), BX				
  prefix.go:1395	0x5f94c0		4811df			ADCQ BX, DI					
  prefix.go:1396	0x5f94c3		488b9c24a8010000	MOVQ 0x1a8(SP), BX				
  prefix.go:1396	0x5f94cb		4c11c3			ADCQ R8, BX					
  prefix.go:1397	0x5f94ce		488bb424b8010000	MOVQ 0x1b8(SP), SI				
  prefix.go:1397	0x5f94d6		4911f0			ADCQ SI, R8					
  prefix.go:1398	0x5f94d9		488b8c24c0010000	MOVQ 0x1c0(SP), CX				
  prefix.go:1398	0x5f94e1		4811f1			ADCQ SI, CX					
  prefix.go:1399	0x5f94e4		4883d600		ADCQ $0x0, SI					
  prefix.go:1400	0x5f94e8		4901c1			ADDQ AX, R9					
  prefix.go:1401	0x5f94eb		4c11d2			ADCQ R10, DX					
  prefix.go:1402	0x5f94ee		4c11df			ADCQ R11, DI					
  prefix.go:1403	0x5f94f1		4c11e3			ADCQ R12, BX					
  prefix.go:1404	0x5f94f4		4d11e8			ADCQ R13, R8					
  prefix.go:1405	0x5f94f7		4c11f9			ADCQ R15, CX					
  prefix.go:1406	0x5f94fa		4c8b8c24d0010000	MOVQ 0x1d0(SP), R9				
  prefix.go:1406	0x5f9502		4c11ce			ADCQ R9, SI					
  prefix.go:1407	0x5f9505		4c8b8c24c8010000	MOVQ 0x1c8(SP), R9				
  prefix.go:1407	0x5f950d		4983d100		ADCQ $0x0, R9					
  prefix.go:1414	0x5f9511		4c8b942428010000	MOVQ 0x128(SP), R10				
  prefix.go:1414	0x5f9519		4c8b9c2440010000	MOVQ 0x140(SP), R11				
  prefix.go:1414	0x5f9521		4d01da			ADDQ R11, R10					
  prefix.go:1415	0x5f9524		4c8b9c2438010000	MOVQ 0x138(SP), R11				
  prefix.go:1415	0x5f952c		4c8ba42450010000	MOVQ 0x150(SP), R12				
  prefix.go:1415	0x5f9534		4d11e3			ADCQ R12, R11					
  prefix.go:1416	0x5f9537		4c8ba42448010000	MOVQ 0x148(SP), R12				
  prefix.go:1416	0x5f953f		4c8bac2460010000	MOVQ 0x160(SP), R13				
  prefix.go:1416	0x5f9547		4d11ec			ADCQ R13, R12					
  prefix.go:1417	0x5f954a		4c8bac2458010000	MOVQ 0x158(SP), R13				
  prefix.go:1417	0x5f9552		4c8bbc2478010000	MOVQ 0x178(SP), R15				
  prefix.go:1417	0x5f955a		4d11fd			ADCQ R15, R13					
  prefix.go:1418	0x5f955d		4c8bbc2468010000	MOVQ 0x168(SP), R15				
  prefix.go:1407	0x5f9565		4c89c8			MOVQ R9, AX					
  prefix.go:1418	0x5f9568		4c8b8c2488010000	MOVQ 0x188(SP), R9				
  prefix.go:1418	0x5f9570		4d11cf			ADCQ R9, R15					
  prefix.go:1419	0x5f9573		4c8b8c2480010000	MOVQ 0x180(SP), R9				
  prefix.go:1419	0x5f957b		4983d100		ADCQ $0x0, R9					
  prefix.go:1419	0x5f957f		4c898c2418010000	MOVQ R9, 0x118(SP)				
  prefix.go:1420	0x5f9587		4c8b8c2430010000	MOVQ 0x130(SP), R9				
  prefix.go:1420	0x5f958f		4901d1			ADDQ DX, R9					
  prefix.go:1421	0x5f9592		4911fa			ADCQ DI, R10					
  prefix.go:1422	0x5f9595		4911db			ADCQ BX, R11					
  prefix.go:1423	0x5f9598		4d11c4			ADCQ R8, R12					
  prefix.go:1424	0x5f959b		4911cd			ADCQ CX, R13					
  prefix.go:1425	0x5f959e		4911f7			ADCQ SI, R15					
  prefix.go:1426	0x5f95a1		488b8c2418010000	MOVQ 0x118(SP), CX				
  prefix.go:1426	0x5f95a9		4811c1			ADCQ AX, CX					
  prefix.go:1426	0x5f95ac		48898c2400010000	MOVQ CX, 0x100(SP)				
  prefix.go:1426	0x5f95b4		0f92c2			SETB DL						
  prefix.go:1426	0x5f95b7		0fb6d2			MOVZX DL, DX					
  prefix.go:1426	0x5f95ba		48899424f8000000	MOVQ DX, 0xf8(SP)				
  prefix.go:1427	0x5f95c2		4c89c8			MOVQ R9, AX					
  prefix.go:1427	0x5f95c5		48bb0100000001000000	MOVQ $0x100000001, BX				
  prefix.go:1427	0x5f95cf		48f7e3			MULQ BX						
  prefix.go:1428	0x5f95d2		48c7c2ffffffff		MOVQ $-0x1, DX					
  prefix.go:1427	0x5f95d9		4889c3			MOVQ AX, BX					
  prefix.go:1428	0x5f95dc		48f7e2			MULQ DX						
  prefix.go:1429	0x5f95df		48899424f0000000	MOVQ DX, 0xf0(SP)				
  prefix.go:1429	0x5f95e7		4889c7			MOVQ AX, DI					
  prefix.go:1431	0x5f95ea		4889d8			MOVQ BX, AX					
  prefix.go:1431	0x5f95ed		49c7c0feffffff		MOVQ $-0x2, R8					
  prefix.go:1431	0x5f95f4		49f7e0			MULQ R8						
  prefix.go:1431	0x5f95f7		48899424e8000000	MOVQ DX, 0xe8(SP)				
  prefix.go:1431	0x5f95ff		4989c0			MOVQ AX, R8					
  prefix.go:1432	0x5f9602		4889d8			MOVQ BX, AX					
  prefix.go:1432	0x5f9605		48be00000000ffffffff	MOVQ $0xffffffff00000000, SI			
  prefix.go:1432	0x5f960f		48f7e6			MULQ SI						
  prefix.go:1432	0x5f9612		4889c6			MOVQ AX, SI					
  prefix.go:1433	0x5f9615		4889d8			MOVQ BX, AX					
  prefix.go:1433	0x5f9618		b9ffffffff		MOVL $-0x1, CX					
  prefix.go:1432	0x5f961d		4889d3			MOVQ DX, BX					
  prefix.go:1433	0x5f9620		48f7e1			MULQ CX						
  prefix.go:1434	0x5f9623		4801f2			ADDQ SI, DX					
  prefix.go:1435	0x5f9626		4c11c3			ADCQ R8, BX					
  prefix.go:1436	0x5f9629		488b8c24e8000000	MOVQ 0xe8(SP), CX				
  prefix.go:1436	0x5f9631		4811f9			ADCQ DI, CX					
  prefix.go:1437	0x5f9634		488bb424f0000000	MOVQ 0xf0(SP), SI				
  prefix.go:1437	0x5f963c		4989f8			MOVQ DI, R8					
  prefix.go:1437	0x5f963f		4811f7			ADCQ SI, DI					
  prefix.go:1438	0x5f9642		4911f0			ADCQ SI, R8					
  prefix.go:1439	0x5f9645		4883d600		ADCQ $0x0, SI					
  prefix.go:1440	0x5f9649		4901c1			ADDQ AX, R9					
  prefix.go:1441	0x5f964c		4c11d2			ADCQ R10, DX					
  prefix.go:1448	0x5f964f		4889942428040000	MOVQ DX, 0x428(SP)				
  prefix.go:1442	0x5f9657		4c11db			ADCQ R11, BX					
  prefix.go:1448	0x5f965a		48899c2430040000	MOVQ BX, 0x430(SP)				
  prefix.go:1443	0x5f9662		4c11e1			ADCQ R12, CX					
  prefix.go:1448	0x5f9665		48898c2438040000	MOVQ CX, 0x438(SP)				
  prefix.go:1444	0x5f966d		4c11ef			ADCQ R13, DI					
  prefix.go:1448	0x5f9670		4889bc2440040000	MOVQ DI, 0x440(SP)				
  prefix.go:1445	0x5f9678		4d11f8			ADCQ R15, R8					
  prefix.go:1448	0x5f967b		4c89842448040000	MOVQ R8, 0x448(SP)				
  prefix.go:1446	0x5f9683		488b8c2400010000	MOVQ 0x100(SP), CX				
  prefix.go:1446	0x5f968b		4811ce			ADCQ CX, SI					
  prefix.go:1448	0x5f968e		4889b42450040000	MOVQ SI, 0x450(SP)				
  prefix.go:1447	0x5f9696		488b8c24f8000000	MOVQ 0xf8(SP), CX				
  prefix.go:1447	0x5f969e		4883d100		ADCQ $0x0, CX					
  prefix.go:1448	0x5f96a2		48898c2458040000	MOVQ CX, 0x458(SP)				
  prefix.go:1448	0x5f96aa		488b8c2470040000	MOVQ 0x470(SP), CX				
  prefix.go:1448	0x5f96b2		488d942428040000	LEAQ 0x428(SP), DX				
  prefix.go:1448	0x5f96ba		440f1032		MOVUPS 0(DX), X14				
  prefix.go:1448	0x5f96be		440f1131		MOVUPS X14, 0(CX)				
  prefix.go:1448	0x5f96c2		440f107210		MOVUPS 0x10(DX), X14				
  prefix.go:1448	0x5f96c7		440f117110		MOVUPS X14, 0x10(CX)				
  prefix.go:1448	0x5f96cc		440f107220		MOVUPS 0x20(DX), X14				
  prefix.go:1448	0x5f96d1		440f117120		MOVUPS X14, 0x20(CX)				
  prefix.go:1448	0x5f96d6		440f107228		MOVUPS 0x28(DX), X14				
  prefix.go:1448	0x5f96db		440f117128		MOVUPS X14, 0x28(CX)				
  prefix.go:1449	0x5f96e0		c9			LEAVE						
  prefix.go:1449	0x5f96e1		c3			RET						
  prefix.go:1209	0x5f96e2		4889442408		MOVQ AX, 0x8(SP)				
  prefix.go:1209	0x5f96e7		48895c2410		MOVQ BX, 0x10(SP)				
  prefix.go:1209	0x5f96ec		48894c2418		MOVQ CX, 0x18(SP)				
  prefix.go:1209	0x5f96f1		e84a34e9ff		CALL runtime.morestack_noctxt.abi0(SB)		
  prefix.go:1209	0x5f96f6		488b442408		MOVQ 0x8(SP), AX				
  prefix.go:1209	0x5f96fb		488b5c2410		MOVQ 0x10(SP), BX				
  prefix.go:1209	0x5f9700		488b4c2418		MOVQ 0x18(SP), CX				
  prefix.go:1209	0x5f9705		e916f2ffff		JMP example.com/p384issue.Prefix6Mul(SB)	
