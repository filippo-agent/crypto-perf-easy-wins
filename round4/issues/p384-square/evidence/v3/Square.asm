TEXT example.com/p384issue.Square(SB) /home/exedev/crypto-audit/round4/issues/p384-square/compact.go
  compact.go:274	0x5ef720		4c8da42460fcffff	LEAQ 0xfffffc60(SP), R12		
  compact.go:274	0x5ef728		4d3b6610		CMPQ R12, 0x10(R14)			
  compact.go:274	0x5ef72c		0f86490e0000		JBE 0x5f057b				
  compact.go:274	0x5ef732		55			PUSHQ BP				
  compact.go:274	0x5ef733		4889e5			MOVQ SP, BP				
  compact.go:274	0x5ef736		4881ec18040000		SUBQ $0x418, SP				
  compact.go:538	0x5ef73d		4889842428040000	MOVQ AX, 0x428(SP)			
  compact.go:275	0x5ef745		488b4b10		MOVQ 0x10(BX), CX			
  compact.go:285	0x5ef749		488b5308		MOVQ 0x8(BX), DX			
  compact.go:316	0x5ef74d		c4e2c3f6f1		MULXQ CX, DI, SI			
  compact.go:316	0x5ef752		4889742450		MOVQ SI, 0x50(SP)			
  compact.go:316	0x5ef757		48897c2458		MOVQ DI, 0x58(SP)			
  compact.go:317	0x5ef75c		c462b3f6c2		MULXQ DX, R9, R8			
  compact.go:317	0x5ef761		4c89442440		MOVQ R8, 0x40(SP)			
  compact.go:317	0x5ef766		4c894c2448		MOVQ R9, 0x48(SP)			
  compact.go:285	0x5ef76b		4989d2			MOVQ DX, R10				
  compact.go:356	0x5ef76e		4889ca			MOVQ CX, DX				
  compact.go:356	0x5ef771		c4629bf6d9		MULXQ CX, R12, R11			
  compact.go:356	0x5ef776		4c899c2488030000	MOVQ R11, 0x388(SP)			
  compact.go:356	0x5ef77e		4c89a42490030000	MOVQ R12, 0x390(SP)			
  compact.go:393	0x5ef786		4c8b6b28		MOVQ 0x28(BX), R13			
  compact.go:313	0x5ef78a		4c89ea			MOVQ R13, DX				
  compact.go:313	0x5ef78d		c442fbf6fa		MULXQ R10, AX, R15			
  compact.go:313	0x5ef792		4c897c2460		MOVQ R15, 0x60(SP)			
  compact.go:313	0x5ef797		4889442468		MOVQ AX, 0x68(SP)			
  compact.go:395	0x5ef79c		4c8b5b18		MOVQ 0x18(BX), R11			
  compact.go:315	0x5ef7a0		4c89da			MOVQ R11, DX				
  compact.go:315	0x5ef7a3		c44283f6e2		MULXQ R10, R15, R12			
  compact.go:397	0x5ef7a8		4c89a424b8020000	MOVQ R12, 0x2b8(SP)			
  compact.go:397	0x5ef7b0		4c89bc24c0020000	MOVQ R15, 0x2c0(SP)			
  compact.go:355	0x5ef7b8		c4e29bf6c1		MULXQ CX, R12, AX			
  compact.go:355	0x5ef7bd		4c89a42498030000	MOVQ R12, 0x398(SP)			
  compact.go:396	0x5ef7c5		48898424c8020000	MOVQ AX, 0x2c8(SP)			
  compact.go:395	0x5ef7cd		c4e29bf6c2		MULXQ DX, R12, AX			
  compact.go:395	0x5ef7d2		48898424d0020000	MOVQ AX, 0x2d0(SP)			
  compact.go:395	0x5ef7da		4c89a424d8020000	MOVQ R12, 0x2d8(SP)			
  compact.go:434	0x5ef7e2		488b4320		MOVQ 0x20(BX), AX			
  compact.go:433	0x5ef7e6		4889c2			MOVQ AX, DX				
  compact.go:433	0x5ef7e9		c442cbf6e5		MULXQ R13, SI, R12			
  compact.go:433	0x5ef7ee		4c89a42420020000	MOVQ R12, 0x220(SP)			
  compact.go:474	0x5ef7f6		4889b42448010000	MOVQ SI, 0x148(SP)			
  compact.go:434	0x5ef7fe		c462cbf6e0		MULXQ AX, SI, R12			
  compact.go:434	0x5ef803		4c89a42410020000	MOVQ R12, 0x210(SP)			
  compact.go:434	0x5ef80b		4889b42418020000	MOVQ SI, 0x218(SP)			
  compact.go:435	0x5ef813		c442cbf6e3		MULXQ R11, SI, R12			
  compact.go:394	0x5ef818		4889b424e0020000	MOVQ SI, 0x2e0(SP)			
  compact.go:435	0x5ef820		4c89a42408020000	MOVQ R12, 0x208(SP)			
  compact.go:436	0x5ef828		c462cbf6e1		MULXQ CX, SI, R12			
  compact.go:354	0x5ef82d		4c89a424a0030000	MOVQ R12, 0x3a0(SP)			
  compact.go:436	0x5ef835		4889b42400020000	MOVQ SI, 0x200(SP)			
  compact.go:437	0x5ef83d		c442cbf6e2		MULXQ R10, SI, R12			
  compact.go:437	0x5ef842		4c89a424f0010000	MOVQ R12, 0x1f0(SP)			
  compact.go:437	0x5ef84a		4889b424f8010000	MOVQ SI, 0x1f8(SP)			
  compact.go:438	0x5ef852		488b1b			MOVQ 0(BX), BX				
  compact.go:281	0x5ef855		4889da			MOVQ BX, DX				
  compact.go:281	0x5ef858		c442cbf6e5		MULXQ R13, SI, R12			
  compact.go:478	0x5ef85d		4c89a42420010000	MOVQ R12, 0x120(SP)			
  compact.go:478	0x5ef865		4889b42428010000	MOVQ SI, 0x128(SP)			
  compact.go:284	0x5ef86d		c462c3f6f9		MULXQ CX, DI, R15			
  compact.go:284	0x5ef872		4c89bc24c8030000	MOVQ R15, 0x3c8(SP)			
  compact.go:358	0x5ef87a		4889bc2480030000	MOVQ DI, 0x380(SP)			
  compact.go:286	0x5ef882		c462b3f6c2		MULXQ DX, R9, R8			
  compact.go:286	0x5ef887		4c898c2440030000	MOVQ R9, 0x340(SP)			
  compact.go:293	0x5ef88f		48ba0100000001000000	MOVQ $0x100000001, DX			
  compact.go:293	0x5ef899		c4c2b3f6d1		MULXQ R9, R9, DX			
  compact.go:296	0x5ef89e		48c7c2ffffffff		MOVQ $-0x1, DX				
  compact.go:296	0x5ef8a5		c4c29bf6d1		MULXQ R9, R12, DX			
  compact.go:295	0x5ef8aa		48899424a0010000	MOVQ DX, 0x1a0(SP)			
  compact.go:296	0x5ef8b2		4c89a42498010000	MOVQ R12, 0x198(SP)			
  compact.go:297	0x5ef8ba		48c7c2feffffff		MOVQ $-0x2, DX				
  compact.go:297	0x5ef8c1		c4c29bf6d1		MULXQ R9, R12, DX			
  compact.go:297	0x5ef8c6		4889942410010000	MOVQ DX, 0x110(SP)			
  compact.go:297	0x5ef8ce		4c89a42440010000	MOVQ R12, 0x140(SP)			
  compact.go:298	0x5ef8d6		48ba00000000ffffffff	MOVQ $0xffffffff00000000, DX		
  compact.go:298	0x5ef8e0		c4c29bf6d1		MULXQ R9, R12, DX			
  compact.go:298	0x5ef8e5		48899424d0000000	MOVQ DX, 0xd0(SP)			
  compact.go:298	0x5ef8ed		4c89a424e0000000	MOVQ R12, 0xe0(SP)			
  compact.go:299	0x5ef8f5		baffffffff		MOVL $-0x1, DX				
  compact.go:299	0x5ef8fa		c442ebf6c9		MULXQ R9, DX, R9			
  compact.go:299	0x5ef8ff		4c898c24b0000000	MOVQ R9, 0xb0(SP)			
  compact.go:299	0x5ef907		48899424b8000000	MOVQ DX, 0xb8(SP)			
  compact.go:318	0x5ef90f		4889da			MOVQ BX, DX				
  compact.go:318	0x5ef912		c442b3f6d2		MULXQ R10, R9, R10			
  compact.go:285	0x5ef917		4c89942470030000	MOVQ R10, 0x370(SP)			
  compact.go:318	0x5ef91f		4c894c2438		MOVQ R9, 0x38(SP)			
  compact.go:398	0x5ef924		c442cbf6e3		MULXQ R11, SI, R12			
  compact.go:283	0x5ef929		4c89a424f0030000	MOVQ R12, 0x3f0(SP)			
  compact.go:398	0x5ef931		4889b424b0020000	MOVQ SI, 0x2b0(SP)			
  compact.go:438	0x5ef939		c4e2e3f6c0		MULXQ AX, BX, AX			
  compact.go:282	0x5ef93e		4889842410040000	MOVQ AX, 0x410(SP)			
  compact.go:282	0x5ef946		48895c2408		MOVQ BX, 0x8(SP)			
  compact.go:473	0x5ef94b		4c89ea			MOVQ R13, DX				
  compact.go:473	0x5ef94e		c4e2e3f6c2		MULXQ DX, BX, AX			
  compact.go:473	0x5ef953		4889842450010000	MOVQ AX, 0x150(SP)			
  compact.go:473	0x5ef95b		48899c2458010000	MOVQ BX, 0x158(SP)			
  compact.go:475	0x5ef963		4c89da			MOVQ R11, DX				
  compact.go:475	0x5ef966		c442ebf6dd		MULXQ R13, DX, R11			
  compact.go:393	0x5ef96b		48899424e8020000	MOVQ DX, 0x2e8(SP)			
  compact.go:475	0x5ef973		4c899c2438010000	MOVQ R11, 0x138(SP)			
  compact.go:476	0x5ef97b		4c89ea			MOVQ R13, DX				
  compact.go:476	0x5ef97e		c4e293f6c9		MULXQ CX, R13, CX			
  compact.go:353	0x5ef983		4c89ac24a8030000	MOVQ R13, 0x3a8(SP)			
  compact.go:476	0x5ef98b		48898c2430010000	MOVQ CX, 0x130(SP)			
  compact.go:521	0x5ef993		90			NOPL					
  compact.go:523	0x5ef994		90			NOPL					
  compact.go:525	0x5ef995		90			NOPL					
  compact.go:527	0x5ef996		90			NOPL					
  compact.go:529	0x5ef997		90			NOPL					
  compact.go:531	0x5ef998		90			NOPL					
  compact.go:287	0x5ef999		4d01c8			ADDQ R9, R8				
  compact.go:288	0x5ef99c		4c11d7			ADCQ R10, DI				
  compact.go:289	0x5ef99f		4c11fe			ADCQ R15, SI				
  compact.go:290	0x5ef9a2		488b442408		MOVQ 0x8(SP), AX			
  compact.go:290	0x5ef9a7		4911c4			ADCQ AX, R12				
  compact.go:291	0x5ef9aa		488b9c2428010000	MOVQ 0x128(SP), BX			
  compact.go:291	0x5ef9b2		488b842410040000	MOVQ 0x410(SP), AX			
  compact.go:291	0x5ef9ba		4811c3			ADCQ AX, BX				
  compact.go:292	0x5ef9bd		488b842420010000	MOVQ 0x120(SP), AX			
  compact.go:292	0x5ef9c5		4883d000		ADCQ $0x0, AX				
  compact.go:292	0x5ef9c9		4889842450020000	MOVQ AX, 0x250(SP)			
  compact.go:300	0x5ef9d1		4c8b9c24b0000000	MOVQ 0xb0(SP), R11			
  compact.go:300	0x5ef9d9		488b8c24e0000000	MOVQ 0xe0(SP), CX			
  compact.go:300	0x5ef9e1		4901cb			ADDQ CX, R11				
  compact.go:301	0x5ef9e4		488b8c24d0000000	MOVQ 0xd0(SP), CX			
  compact.go:301	0x5ef9ec		4c8bac2440010000	MOVQ 0x140(SP), R13			
  compact.go:301	0x5ef9f4		4c11e9			ADCQ R13, CX				
  compact.go:302	0x5ef9f7		4c8bac2410010000	MOVQ 0x110(SP), R13			
  compact.go:302	0x5ef9ff		4c8bbc2498010000	MOVQ 0x198(SP), R15			
  compact.go:302	0x5efa07		4d11fd			ADCQ R15, R13				
  compact.go:303	0x5efa0a		4c8b8c24a0010000	MOVQ 0x1a0(SP), R9			
  compact.go:303	0x5efa12		4d11cf			ADCQ R9, R15				
  compact.go:304	0x5efa15		4c8b942498010000	MOVQ 0x198(SP), R10			
  compact.go:304	0x5efa1d		4d11ca			ADCQ R9, R10				
  compact.go:305	0x5efa20		4983d100		ADCQ $0x0, R9				
  compact.go:305	0x5efa24		4c898c24a8000000	MOVQ R9, 0xa8(SP)			
  compact.go:306	0x5efa2c		488b842440030000	MOVQ 0x340(SP), AX			
  compact.go:306	0x5efa34		4c8b8c24b8000000	MOVQ 0xb8(SP), R9			
  compact.go:306	0x5efa3c		4c01c8			ADDQ R9, AX				
  compact.go:307	0x5efa3f		4d11c3			ADCQ R8, R11				
  compact.go:307	0x5efa42		4c899c24a0000000	MOVQ R11, 0xa0(SP)			
  compact.go:308	0x5efa4a		4811f9			ADCQ DI, CX				
  compact.go:308	0x5efa4d		48898c2498000000	MOVQ CX, 0x98(SP)			
  compact.go:309	0x5efa55		4911f5			ADCQ SI, R13				
  compact.go:309	0x5efa58		4c89ac2490000000	MOVQ R13, 0x90(SP)			
  compact.go:310	0x5efa60		4d11e7			ADCQ R12, R15				
  compact.go:310	0x5efa63		4c89bc2488000000	MOVQ R15, 0x88(SP)			
  compact.go:311	0x5efa6b		4911da			ADCQ BX, R10				
  compact.go:311	0x5efa6e		4c89942480000000	MOVQ R10, 0x80(SP)			
  compact.go:312	0x5efa76		488b8424a8000000	MOVQ 0xa8(SP), AX			
  compact.go:312	0x5efa7e		488b9c2450020000	MOVQ 0x250(SP), BX			
  compact.go:312	0x5efa86		4811d8			ADCQ BX, AX				
  compact.go:312	0x5efa89		4889442478		MOVQ AX, 0x78(SP)			
  compact.go:312	0x5efa8e		0f92c3			SETB BL					
  compact.go:312	0x5efa91		0fb6db			MOVZX BL, BX				
  compact.go:312	0x5efa94		48895c2470		MOVQ BX, 0x70(SP)			
  compact.go:319	0x5efa99		488b742448		MOVQ 0x48(SP), SI			
  compact.go:319	0x5efa9e		488bbc2470030000	MOVQ 0x370(SP), DI			
  compact.go:319	0x5efaa6		4801fe			ADDQ DI, SI				
  compact.go:319	0x5efaa9		4889742430		MOVQ SI, 0x30(SP)			
  compact.go:320	0x5efaae		488b7c2440		MOVQ 0x40(SP), DI			
  compact.go:320	0x5efab3		4c8b442458		MOVQ 0x58(SP), R8			
  compact.go:320	0x5efab8		4c11c7			ADCQ R8, DI				
  compact.go:320	0x5efabb		48897c2428		MOVQ DI, 0x28(SP)			
  compact.go:321	0x5efac0		4c8b8c24c0020000	MOVQ 0x2c0(SP), R9			
  compact.go:321	0x5efac8		4c8b642450		MOVQ 0x50(SP), R12			
  compact.go:321	0x5efacd		4d11e1			ADCQ R12, R9				
  compact.go:321	0x5efad0		4c894c2420		MOVQ R9, 0x20(SP)			
  compact.go:322	0x5efad5		4c8ba424f8010000	MOVQ 0x1f8(SP), R12			
  compact.go:322	0x5efadd		4c8b8424b8020000	MOVQ 0x2b8(SP), R8			
  compact.go:322	0x5efae5		4d11c4			ADCQ R8, R12				
  compact.go:322	0x5efae8		4c89642418		MOVQ R12, 0x18(SP)			
  compact.go:323	0x5efaed		4c8b8424f0010000	MOVQ 0x1f0(SP), R8			
  compact.go:323	0x5efaf5		488b5c2468		MOVQ 0x68(SP), BX			
  compact.go:323	0x5efafa		4911d8			ADCQ BX, R8				
  compact.go:323	0x5efafd		4c89442410		MOVQ R8, 0x10(SP)			
  compact.go:324	0x5efb02		488b5c2460		MOVQ 0x60(SP), BX			
  compact.go:324	0x5efb07		4883d300		ADCQ $0x0, BX				
  compact.go:324	0x5efb0b		48891c24		MOVQ BX, 0(SP)				
  compact.go:325	0x5efb0f		488b5c2438		MOVQ 0x38(SP), BX			
  compact.go:325	0x5efb14		4c01db			ADDQ R11, BX				
  compact.go:326	0x5efb17		4811ce			ADCQ CX, SI				
  compact.go:327	0x5efb1a		4c11ef			ADCQ R13, DI				
  compact.go:328	0x5efb1d		4d11f9			ADCQ R15, R9				
  compact.go:329	0x5efb20		4d11d4			ADCQ R10, R12				
  compact.go:329	0x5efb23		4c89a42408040000	MOVQ R12, 0x408(SP)			
  compact.go:330	0x5efb2b		4911c0			ADCQ AX, R8				
  compact.go:330	0x5efb2e		4c89842400040000	MOVQ R8, 0x400(SP)			
  compact.go:331	0x5efb36		488b0424		MOVQ 0(SP), AX				
  compact.go:331	0x5efb3a		4c8b542470		MOVQ 0x70(SP), R10			
  compact.go:331	0x5efb3f		4c11d0			ADCQ R10, AX				
  compact.go:331	0x5efb42		48898424f8030000	MOVQ AX, 0x3f8(SP)			
  compact.go:332	0x5efb4a		4889da			MOVQ BX, DX				
  compact.go:332	0x5efb4d		49ba0100000001000000	MOVQ $0x100000001, R10			
  compact.go:332	0x5efb57		c44283f6d2		MULXQ R10, R15, R10			
  compact.go:333	0x5efb5c		4c89fa			MOVQ R15, DX				
  compact.go:333	0x5efb5f		49c7c2ffffffff		MOVQ $-0x1, R10				
  compact.go:333	0x5efb66		c44293f6d2		MULXQ R10, R13, R10			
  compact.go:336	0x5efb6b		48c7c1feffffff		MOVQ $-0x2, CX				
  compact.go:336	0x5efb72		c4e2a3f6c9		MULXQ CX, R11, CX			
  compact.go:337	0x5efb77		48b800000000ffffffff	MOVQ $0xffffffff00000000, AX		
  compact.go:337	0x5efb81		c4e2bbf6c0		MULXQ AX, R8, AX			
  compact.go:338	0x5efb86		41bcffffffff		MOVL $-0x1, R12				
  compact.go:338	0x5efb8c		c4c283f6d4		MULXQ R12, R15, DX			
  compact.go:339	0x5efb91		4c01c2			ADDQ R8, DX				
  compact.go:340	0x5efb94		4c11d8			ADCQ R11, AX				
  compact.go:341	0x5efb97		4c11e9			ADCQ R13, CX				
  compact.go:342	0x5efb9a		4d89e8			MOVQ R13, R8				
  compact.go:342	0x5efb9d		4d11d5			ADCQ R10, R13				
  compact.go:343	0x5efba0		4d11d0			ADCQ R10, R8				
  compact.go:344	0x5efba3		4983d200		ADCQ $0x0, R10				
  compact.go:345	0x5efba7		4c01fb			ADDQ R15, BX				
  compact.go:346	0x5efbaa		4811f2			ADCQ SI, DX				
  compact.go:346	0x5efbad		48899424e8030000	MOVQ DX, 0x3e8(SP)			
  compact.go:347	0x5efbb5		4811f8			ADCQ DI, AX				
  compact.go:347	0x5efbb8		48898424e0030000	MOVQ AX, 0x3e0(SP)			
  compact.go:348	0x5efbc0		4c11c9			ADCQ R9, CX				
  compact.go:348	0x5efbc3		48898c24d8030000	MOVQ CX, 0x3d8(SP)			
  compact.go:349	0x5efbcb		488b9c2408040000	MOVQ 0x408(SP), BX			
  compact.go:349	0x5efbd3		4911dd			ADCQ BX, R13				
  compact.go:349	0x5efbd6		4c89ac24d0030000	MOVQ R13, 0x3d0(SP)			
  compact.go:350	0x5efbde		488b9c2400040000	MOVQ 0x400(SP), BX			
  compact.go:350	0x5efbe6		4911d8			ADCQ BX, R8				
  compact.go:350	0x5efbe9		4c898424c0030000	MOVQ R8, 0x3c0(SP)			
  compact.go:351	0x5efbf1		488b9c24f8030000	MOVQ 0x3f8(SP), BX			
  compact.go:351	0x5efbf9		4911da			ADCQ BX, R10				
  compact.go:351	0x5efbfc		4c899424b8030000	MOVQ R10, 0x3b8(SP)			
  compact.go:351	0x5efc04		0f92c3			SETB BL					
  compact.go:351	0x5efc07		0fb6db			MOVZX BL, BX				
  compact.go:325	0x5efc0a		488b742438		MOVQ 0x38(SP), SI			
  compact.go:325	0x5efc0f		488bbc24a0000000	MOVQ 0xa0(SP), DI			
  compact.go:325	0x5efc17		4801fe			ADDQ DI, SI				
  compact.go:326	0x5efc1a		488b742430		MOVQ 0x30(SP), SI			
  compact.go:326	0x5efc1f		488bbc2498000000	MOVQ 0x98(SP), DI			
  compact.go:326	0x5efc27		4811fe			ADCQ DI, SI				
  compact.go:327	0x5efc2a		488b742428		MOVQ 0x28(SP), SI			
  compact.go:327	0x5efc2f		488bbc2490000000	MOVQ 0x90(SP), DI			
  compact.go:327	0x5efc37		4811fe			ADCQ DI, SI				
  compact.go:328	0x5efc3a		488b742420		MOVQ 0x20(SP), SI			
  compact.go:328	0x5efc3f		488bbc2488000000	MOVQ 0x88(SP), DI			
  compact.go:328	0x5efc47		4811fe			ADCQ DI, SI				
  compact.go:329	0x5efc4a		488b742418		MOVQ 0x18(SP), SI			
  compact.go:329	0x5efc4f		488bbc2480000000	MOVQ 0x80(SP), DI			
  compact.go:329	0x5efc57		4811fe			ADCQ DI, SI				
  compact.go:330	0x5efc5a		488b742410		MOVQ 0x10(SP), SI			
  compact.go:330	0x5efc5f		488b7c2478		MOVQ 0x78(SP), DI			
  compact.go:330	0x5efc64		4811fe			ADCQ DI, SI				
  compact.go:331	0x5efc67		488b3424		MOVQ 0(SP), SI				
  compact.go:331	0x5efc6b		488b7c2470		MOVQ 0x70(SP), DI			
  compact.go:331	0x5efc70		4811fe			ADCQ DI, SI				
  compact.go:352	0x5efc73		4883d300		ADCQ $0x0, BX				
  compact.go:352	0x5efc77		48899c24b0030000	MOVQ BX, 0x3b0(SP)			
  compact.go:359	0x5efc7f		488b742458		MOVQ 0x58(SP), SI			
  compact.go:359	0x5efc84		488bbc24c8030000	MOVQ 0x3c8(SP), DI			
  compact.go:359	0x5efc8c		4801fe			ADDQ DI, SI				
  compact.go:359	0x5efc8f		4889b42478030000	MOVQ SI, 0x378(SP)			
  compact.go:360	0x5efc97		488bbc2490030000	MOVQ 0x390(SP), DI			
  compact.go:360	0x5efc9f		4c8b4c2450		MOVQ 0x50(SP), R9			
  compact.go:360	0x5efca4		4c11cf			ADCQ R9, DI				
  compact.go:360	0x5efca7		4889bc2468030000	MOVQ DI, 0x368(SP)			
  compact.go:361	0x5efcaf		4c8b8c2488030000	MOVQ 0x388(SP), R9			
  compact.go:361	0x5efcb7		4c8b9c2498030000	MOVQ 0x398(SP), R11			
  compact.go:361	0x5efcbf		4d11d9			ADCQ R11, R9				
  compact.go:361	0x5efcc2		4c898c2460030000	MOVQ R9, 0x360(SP)			
  compact.go:362	0x5efcca		4c8bbc2400020000	MOVQ 0x200(SP), R15			
  compact.go:362	0x5efcd2		4c8b9c24c8020000	MOVQ 0x2c8(SP), R11			
  compact.go:362	0x5efcda		4d11df			ADCQ R11, R15				
  compact.go:362	0x5efcdd		4c89bc2458030000	MOVQ R15, 0x358(SP)			
  compact.go:363	0x5efce5		4c8b9c24a0030000	MOVQ 0x3a0(SP), R11			
  compact.go:363	0x5efced		4c8ba424a8030000	MOVQ 0x3a8(SP), R12			
  compact.go:363	0x5efcf5		4d11e3			ADCQ R12, R11				
  compact.go:363	0x5efcf8		4c899c2450030000	MOVQ R11, 0x350(SP)			
  compact.go:364	0x5efd00		4c8ba42430010000	MOVQ 0x130(SP), R12			
  compact.go:364	0x5efd08		4983d400		ADCQ $0x0, R12				
  compact.go:364	0x5efd0c		4c89a42448030000	MOVQ R12, 0x348(SP)			
  compact.go:365	0x5efd14		488b9c2480030000	MOVQ 0x380(SP), BX			
  compact.go:365	0x5efd1c		4801d3			ADDQ DX, BX				
  compact.go:366	0x5efd1f		4811c6			ADCQ AX, SI				
  compact.go:367	0x5efd22		4811cf			ADCQ CX, DI				
  compact.go:368	0x5efd25		4d11e9			ADCQ R13, R9				
  compact.go:369	0x5efd28		4d11c7			ADCQ R8, R15				
  compact.go:369	0x5efd2b		4c89bc2438030000	MOVQ R15, 0x338(SP)			
  compact.go:370	0x5efd33		4d11d3			ADCQ R10, R11				
  compact.go:370	0x5efd36		4c899c2430030000	MOVQ R11, 0x330(SP)			
  compact.go:371	0x5efd3e		4c8b9424b0030000	MOVQ 0x3b0(SP), R10			
  compact.go:371	0x5efd46		4d11d4			ADCQ R10, R12				
  compact.go:371	0x5efd49		4c89a42428030000	MOVQ R12, 0x328(SP)			
  compact.go:372	0x5efd51		4889da			MOVQ BX, DX				
  compact.go:372	0x5efd54		49ba0100000001000000	MOVQ $0x100000001, R10			
  compact.go:372	0x5efd5e		c442bbf6d2		MULXQ R10, R8, R10			
  compact.go:373	0x5efd63		4c89c2			MOVQ R8, DX				
  compact.go:373	0x5efd66		49c7c2ffffffff		MOVQ $-0x1, R10				
  compact.go:373	0x5efd6d		c44293f6d2		MULXQ R10, R13, R10			
  compact.go:376	0x5efd72		48c7c1feffffff		MOVQ $-0x2, CX				
  compact.go:376	0x5efd79		c4e2fbf6c9		MULXQ CX, AX, CX			
  compact.go:377	0x5efd7e		49bc00000000ffffffff	MOVQ $0xffffffff00000000, R12		
  compact.go:377	0x5efd88		c442a3f6e4		MULXQ R12, R11, R12			
  compact.go:378	0x5efd8d		41bfffffffff		MOVL $-0x1, R15				
  compact.go:378	0x5efd93		c4c2bbf6d7		MULXQ R15, R8, DX			
  compact.go:379	0x5efd98		4c01da			ADDQ R11, DX				
  compact.go:380	0x5efd9b		4911c4			ADCQ AX, R12				
  compact.go:381	0x5efd9e		4c11e9			ADCQ R13, CX				
  compact.go:382	0x5efda1		4c89e8			MOVQ R13, AX				
  compact.go:382	0x5efda4		4d11d5			ADCQ R10, R13				
  compact.go:383	0x5efda7		4c11d0			ADCQ R10, AX				
  compact.go:384	0x5efdaa		4983d200		ADCQ $0x0, R10				
  compact.go:385	0x5efdae		4c01c3			ADDQ R8, BX				
  compact.go:386	0x5efdb1		4811f2			ADCQ SI, DX				
  compact.go:386	0x5efdb4		4889942420030000	MOVQ DX, 0x320(SP)			
  compact.go:387	0x5efdbc		4911fc			ADCQ DI, R12				
  compact.go:387	0x5efdbf		4c89a42418030000	MOVQ R12, 0x318(SP)			
  compact.go:388	0x5efdc7		4c11c9			ADCQ R9, CX				
  compact.go:388	0x5efdca		48898c2410030000	MOVQ CX, 0x310(SP)			
  compact.go:389	0x5efdd2		488b9c2438030000	MOVQ 0x338(SP), BX			
  compact.go:389	0x5efdda		4911dd			ADCQ BX, R13				
  compact.go:389	0x5efddd		4c89ac2408030000	MOVQ R13, 0x308(SP)			
  compact.go:390	0x5efde5		488b9c2430030000	MOVQ 0x330(SP), BX			
  compact.go:390	0x5efded		4811d8			ADCQ BX, AX				
  compact.go:390	0x5efdf0		4889842400030000	MOVQ AX, 0x300(SP)			
  compact.go:391	0x5efdf8		488b9c2428030000	MOVQ 0x328(SP), BX			
  compact.go:391	0x5efe00		4911da			ADCQ BX, R10				
  compact.go:391	0x5efe03		4c899424f8020000	MOVQ R10, 0x2f8(SP)			
  compact.go:391	0x5efe0b		0f92c3			SETB BL					
  compact.go:391	0x5efe0e		0fb6db			MOVZX BL, BX				
  compact.go:365	0x5efe11		488bb42480030000	MOVQ 0x380(SP), SI			
  compact.go:365	0x5efe19		488bbc24e8030000	MOVQ 0x3e8(SP), DI			
  compact.go:365	0x5efe21		4801fe			ADDQ DI, SI				
  compact.go:366	0x5efe24		488bb42478030000	MOVQ 0x378(SP), SI			
  compact.go:366	0x5efe2c		488bbc24e0030000	MOVQ 0x3e0(SP), DI			
  compact.go:366	0x5efe34		4811fe			ADCQ DI, SI				
  compact.go:367	0x5efe37		488bb42468030000	MOVQ 0x368(SP), SI			
  compact.go:367	0x5efe3f		488bbc24d8030000	MOVQ 0x3d8(SP), DI			
  compact.go:367	0x5efe47		4811fe			ADCQ DI, SI				
  compact.go:368	0x5efe4a		488bb42460030000	MOVQ 0x360(SP), SI			
  compact.go:368	0x5efe52		488bbc24d0030000	MOVQ 0x3d0(SP), DI			
  compact.go:368	0x5efe5a		4811fe			ADCQ DI, SI				
  compact.go:369	0x5efe5d		488bb42458030000	MOVQ 0x358(SP), SI			
  compact.go:369	0x5efe65		488bbc24c0030000	MOVQ 0x3c0(SP), DI			
  compact.go:369	0x5efe6d		4811fe			ADCQ DI, SI				
  compact.go:370	0x5efe70		488bb42450030000	MOVQ 0x350(SP), SI			
  compact.go:370	0x5efe78		488bbc24b8030000	MOVQ 0x3b8(SP), DI			
  compact.go:370	0x5efe80		4811fe			ADCQ DI, SI				
  compact.go:371	0x5efe83		488bb42448030000	MOVQ 0x348(SP), SI			
  compact.go:371	0x5efe8b		488bbc24b0030000	MOVQ 0x3b0(SP), DI			
  compact.go:371	0x5efe93		4811fe			ADCQ DI, SI				
  compact.go:392	0x5efe96		4883d300		ADCQ $0x0, BX				
  compact.go:392	0x5efe9a		48899c24f0020000	MOVQ BX, 0x2f0(SP)			
  compact.go:399	0x5efea2		488bb424c0020000	MOVQ 0x2c0(SP), SI			
  compact.go:399	0x5efeaa		488bbc24f0030000	MOVQ 0x3f0(SP), DI			
  compact.go:399	0x5efeb2		4801fe			ADDQ DI, SI				
  compact.go:399	0x5efeb5		4889b424a8020000	MOVQ SI, 0x2a8(SP)			
  compact.go:400	0x5efebd		488bbc24b8020000	MOVQ 0x2b8(SP), DI			
  compact.go:400	0x5efec5		4c8b842498030000	MOVQ 0x398(SP), R8			
  compact.go:400	0x5efecd		4c11c7			ADCQ R8, DI				
  compact.go:400	0x5efed0		4889bc24a0020000	MOVQ DI, 0x2a0(SP)			
  compact.go:401	0x5efed8		4c8b8424c8020000	MOVQ 0x2c8(SP), R8			
  compact.go:401	0x5efee0		4c8b8c24d8020000	MOVQ 0x2d8(SP), R9			
  compact.go:401	0x5efee8		4d11c8			ADCQ R9, R8				
  compact.go:401	0x5efeeb		4c89842498020000	MOVQ R8, 0x298(SP)			
  compact.go:402	0x5efef3		4c8b8c24d0020000	MOVQ 0x2d0(SP), R9			
  compact.go:402	0x5efefb		4c8b9c24e0020000	MOVQ 0x2e0(SP), R11			
  compact.go:402	0x5eff03		4d11d9			ADCQ R11, R9				
  compact.go:402	0x5eff06		4c898c2490020000	MOVQ R9, 0x290(SP)			
  compact.go:403	0x5eff0e		4c8b9c2408020000	MOVQ 0x208(SP), R11			
  compact.go:403	0x5eff16		4c8bbc24e8020000	MOVQ 0x2e8(SP), R15			
  compact.go:403	0x5eff1e		4d11fb			ADCQ R15, R11				
  compact.go:403	0x5eff21		4c899c2488020000	MOVQ R11, 0x288(SP)			
  compact.go:404	0x5eff29		4c8bbc2438010000	MOVQ 0x138(SP), R15			
  compact.go:404	0x5eff31		4983d700		ADCQ $0x0, R15				
  compact.go:404	0x5eff35		4c89bc2480020000	MOVQ R15, 0x280(SP)			
  compact.go:405	0x5eff3d		488b9c24b0020000	MOVQ 0x2b0(SP), BX			
  compact.go:405	0x5eff45		4801d3			ADDQ DX, BX				
  compact.go:406	0x5eff48		4c11e6			ADCQ R12, SI				
  compact.go:407	0x5eff4b		4811cf			ADCQ CX, DI				
  compact.go:408	0x5eff4e		4d11e8			ADCQ R13, R8				
  compact.go:409	0x5eff51		4911c1			ADCQ AX, R9				
  compact.go:409	0x5eff54		4c898c2478020000	MOVQ R9, 0x278(SP)			
  compact.go:410	0x5eff5c		4d11d3			ADCQ R10, R11				
  compact.go:410	0x5eff5f		4c899c2470020000	MOVQ R11, 0x270(SP)			
  compact.go:411	0x5eff67		4c8b9424f0020000	MOVQ 0x2f0(SP), R10			
  compact.go:411	0x5eff6f		4d11d7			ADCQ R10, R15				
  compact.go:411	0x5eff72		4c89bc2468020000	MOVQ R15, 0x268(SP)			
  compact.go:412	0x5eff7a		4889da			MOVQ BX, DX				
  compact.go:412	0x5eff7d		49ba0100000001000000	MOVQ $0x100000001, R10			
  compact.go:412	0x5eff87		c442fbf6d2		MULXQ R10, AX, R10			
  compact.go:415	0x5eff8c		4889c2			MOVQ AX, DX				
  compact.go:415	0x5eff8f		49c7c2ffffffff		MOVQ $-0x1, R10				
  compact.go:415	0x5eff96		c44293f6d2		MULXQ R10, R13, R10			
  compact.go:416	0x5eff9b		48c7c1feffffff		MOVQ $-0x2, CX				
  compact.go:416	0x5effa2		c4e29bf6c9		MULXQ CX, R12, CX			
  compact.go:417	0x5effa7		49bf00000000ffffffff	MOVQ $0xffffffff00000000, R15		
  compact.go:417	0x5effb1		c442a3f6ff		MULXQ R15, R11, R15			
  compact.go:418	0x5effb6		41b9ffffffff		MOVL $-0x1, R9				
  compact.go:418	0x5effbc		c4c2fbf6d1		MULXQ R9, AX, DX			
  compact.go:419	0x5effc1		4c01da			ADDQ R11, DX				
  compact.go:420	0x5effc4		4d11e7			ADCQ R12, R15				
  compact.go:421	0x5effc7		4c11e9			ADCQ R13, CX				
  compact.go:422	0x5effca		4d89d3			MOVQ R10, R11				
  compact.go:422	0x5effcd		4d11ea			ADCQ R13, R10				
  compact.go:423	0x5effd0		4d11dd			ADCQ R11, R13				
  compact.go:424	0x5effd3		4983d300		ADCQ $0x0, R11				
  compact.go:425	0x5effd7		4801c3			ADDQ AX, BX				
  compact.go:426	0x5effda		4811f2			ADCQ SI, DX				
  compact.go:426	0x5effdd		4889942460020000	MOVQ DX, 0x260(SP)			
  compact.go:427	0x5effe5		4911ff			ADCQ DI, R15				
  compact.go:427	0x5effe8		4c89bc2458020000	MOVQ R15, 0x258(SP)			
  compact.go:428	0x5efff0		4c11c1			ADCQ R8, CX				
  compact.go:428	0x5efff3		48898c2448020000	MOVQ CX, 0x248(SP)			
  compact.go:429	0x5efffb		488b842478020000	MOVQ 0x278(SP), AX			
  compact.go:429	0x5f0003		4911c2			ADCQ AX, R10				
  compact.go:429	0x5f0006		4c89942440020000	MOVQ R10, 0x240(SP)			
  compact.go:430	0x5f000e		488b842470020000	MOVQ 0x270(SP), AX			
  compact.go:430	0x5f0016		4911c5			ADCQ AX, R13				
  compact.go:430	0x5f0019		4c89ac2438020000	MOVQ R13, 0x238(SP)			
  compact.go:431	0x5f0021		488b842468020000	MOVQ 0x268(SP), AX			
  compact.go:431	0x5f0029		4911c3			ADCQ AX, R11				
  compact.go:431	0x5f002c		4c899c2430020000	MOVQ R11, 0x230(SP)			
  compact.go:431	0x5f0034		0f92c0			SETB AL					
  compact.go:431	0x5f0037		0fb6c0			MOVZX AL, AX				
  compact.go:405	0x5f003a		488b9c24b0020000	MOVQ 0x2b0(SP), BX			
  compact.go:405	0x5f0042		488bb42420030000	MOVQ 0x320(SP), SI			
  compact.go:405	0x5f004a		4801f3			ADDQ SI, BX				
  compact.go:406	0x5f004d		488b9c24a8020000	MOVQ 0x2a8(SP), BX			
  compact.go:406	0x5f0055		488bb42418030000	MOVQ 0x318(SP), SI			
  compact.go:406	0x5f005d		4811f3			ADCQ SI, BX				
  compact.go:407	0x5f0060		488b9c24a0020000	MOVQ 0x2a0(SP), BX			
  compact.go:407	0x5f0068		488bb42410030000	MOVQ 0x310(SP), SI			
  compact.go:407	0x5f0070		4811f3			ADCQ SI, BX				
  compact.go:408	0x5f0073		488b9c2498020000	MOVQ 0x298(SP), BX			
  compact.go:408	0x5f007b		488bb42408030000	MOVQ 0x308(SP), SI			
  compact.go:408	0x5f0083		4811f3			ADCQ SI, BX				
  compact.go:409	0x5f0086		488b9c2490020000	MOVQ 0x290(SP), BX			
  compact.go:409	0x5f008e		488bb42400030000	MOVQ 0x300(SP), SI			
  compact.go:409	0x5f0096		4811f3			ADCQ SI, BX				
  compact.go:410	0x5f0099		488b9c2488020000	MOVQ 0x288(SP), BX			
  compact.go:410	0x5f00a1		488bb424f8020000	MOVQ 0x2f8(SP), SI			
  compact.go:410	0x5f00a9		4811f3			ADCQ SI, BX				
  compact.go:411	0x5f00ac		488b9c2480020000	MOVQ 0x280(SP), BX			
  compact.go:411	0x5f00b4		488bb424f0020000	MOVQ 0x2f0(SP), SI			
  compact.go:411	0x5f00bc		4811f3			ADCQ SI, BX				
  compact.go:432	0x5f00bf		4883d000		ADCQ $0x0, AX				
  compact.go:432	0x5f00c3		4889842428020000	MOVQ AX, 0x228(SP)			
  compact.go:439	0x5f00cb		488b9c24f8010000	MOVQ 0x1f8(SP), BX			
  compact.go:439	0x5f00d3		488bb42410040000	MOVQ 0x410(SP), SI			
  compact.go:439	0x5f00db		4801f3			ADDQ SI, BX				
  compact.go:439	0x5f00de		48899c24e8010000	MOVQ BX, 0x1e8(SP)			
  compact.go:440	0x5f00e6		488bb424f0010000	MOVQ 0x1f0(SP), SI			
  compact.go:440	0x5f00ee		488bbc2400020000	MOVQ 0x200(SP), DI			
  compact.go:440	0x5f00f6		4811fe			ADCQ DI, SI				
  compact.go:440	0x5f00f9		4889b424e0010000	MOVQ SI, 0x1e0(SP)			
  compact.go:441	0x5f0101		488bbc24e0020000	MOVQ 0x2e0(SP), DI			
  compact.go:441	0x5f0109		4c8b8424a0030000	MOVQ 0x3a0(SP), R8			
  compact.go:441	0x5f0111		4c11c7			ADCQ R8, DI				
  compact.go:441	0x5f0114		4889bc24d8010000	MOVQ DI, 0x1d8(SP)			
  compact.go:442	0x5f011c		4c8b842408020000	MOVQ 0x208(SP), R8			
  compact.go:442	0x5f0124		4c8ba42418020000	MOVQ 0x218(SP), R12			
  compact.go:442	0x5f012c		4d11e0			ADCQ R12, R8				
  compact.go:442	0x5f012f		4c898424d0010000	MOVQ R8, 0x1d0(SP)			
  compact.go:443	0x5f0137		4c8ba42448010000	MOVQ 0x148(SP), R12			
  compact.go:443	0x5f013f		4c8b8c2410020000	MOVQ 0x210(SP), R9			
  compact.go:443	0x5f0147		4d11e1			ADCQ R12, R9				
  compact.go:443	0x5f014a		4c898c24c8010000	MOVQ R9, 0x1c8(SP)			
  compact.go:444	0x5f0152		4c8ba42420020000	MOVQ 0x220(SP), R12			
  compact.go:444	0x5f015a		4983d400		ADCQ $0x0, R12				
  compact.go:444	0x5f015e		4c89a424c0010000	MOVQ R12, 0x1c0(SP)			
  compact.go:445	0x5f0166		488b442408		MOVQ 0x8(SP), AX			
  compact.go:445	0x5f016b		4801c2			ADDQ AX, DX				
  compact.go:446	0x5f016e		4c11fb			ADCQ R15, BX				
  compact.go:447	0x5f0171		4811ce			ADCQ CX, SI				
  compact.go:448	0x5f0174		4c11d7			ADCQ R10, DI				
  compact.go:449	0x5f0177		4d11e8			ADCQ R13, R8				
  compact.go:449	0x5f017a		4c898424b8010000	MOVQ R8, 0x1b8(SP)			
  compact.go:450	0x5f0182		4d11d9			ADCQ R11, R9				
  compact.go:450	0x5f0185		4c898c24b0010000	MOVQ R9, 0x1b0(SP)			
  compact.go:451	0x5f018d		4c8b9c2428020000	MOVQ 0x228(SP), R11			
  compact.go:451	0x5f0195		4d11dc			ADCQ R11, R12				
  compact.go:451	0x5f0198		4c89a424a8010000	MOVQ R12, 0x1a8(SP)			
  compact.go:452	0x5f01a0		49bb0100000001000000	MOVQ $0x100000001, R11			
  compact.go:452	0x5f01aa		c44293f6db		MULXQ R11, R13, R11			
  compact.go:445	0x5f01af		4989d3			MOVQ DX, R11				
  compact.go:455	0x5f01b2		4c89ea			MOVQ R13, DX				
  compact.go:455	0x5f01b5		49c7c2ffffffff		MOVQ $-0x1, R10				
  compact.go:455	0x5f01bc		c442f3f6d2		MULXQ R10, CX, R10			
  compact.go:456	0x5f01c1		49c7c7feffffff		MOVQ $-0x2, R15				
  compact.go:456	0x5f01c8		c442fbf6ff		MULXQ R15, AX, R15			
  compact.go:457	0x5f01cd		49bc00000000ffffffff	MOVQ $0xffffffff00000000, R12		
  compact.go:457	0x5f01d7		c442b3f6e4		MULXQ R12, R9, R12			
  compact.go:458	0x5f01dc		41b8ffffffff		MOVL $-0x1, R8				
  compact.go:458	0x5f01e2		c4c293f6d0		MULXQ R8, R13, DX			
  compact.go:459	0x5f01e7		4c01ca			ADDQ R9, DX				
  compact.go:460	0x5f01ea		4911c4			ADCQ AX, R12				
  compact.go:461	0x5f01ed		4911cf			ADCQ CX, R15				
  compact.go:462	0x5f01f0		4889c8			MOVQ CX, AX				
  compact.go:462	0x5f01f3		4c11d1			ADCQ R10, CX				
  compact.go:463	0x5f01f6		4c11d0			ADCQ R10, AX				
  compact.go:464	0x5f01f9		4983d200		ADCQ $0x0, R10				
  compact.go:465	0x5f01fd		4d01eb			ADDQ R13, R11				
  compact.go:466	0x5f0200		4811da			ADCQ BX, DX				
  compact.go:466	0x5f0203		4889942490010000	MOVQ DX, 0x190(SP)			
  compact.go:467	0x5f020b		4911f4			ADCQ SI, R12				
  compact.go:467	0x5f020e		4c89a42488010000	MOVQ R12, 0x188(SP)			
  compact.go:468	0x5f0216		4911ff			ADCQ DI, R15				
  compact.go:468	0x5f0219		4c89bc2480010000	MOVQ R15, 0x180(SP)			
  compact.go:469	0x5f0221		488b9c24b8010000	MOVQ 0x1b8(SP), BX			
  compact.go:469	0x5f0229		4811d9			ADCQ BX, CX				
  compact.go:469	0x5f022c		48898c2478010000	MOVQ CX, 0x178(SP)			
  compact.go:470	0x5f0234		488b9c24b0010000	MOVQ 0x1b0(SP), BX			
  compact.go:470	0x5f023c		4811d8			ADCQ BX, AX				
  compact.go:470	0x5f023f		4889842470010000	MOVQ AX, 0x170(SP)			
  compact.go:471	0x5f0247		488b9c24a8010000	MOVQ 0x1a8(SP), BX			
  compact.go:471	0x5f024f		4911da			ADCQ BX, R10				
  compact.go:471	0x5f0252		4c89942468010000	MOVQ R10, 0x168(SP)			
  compact.go:471	0x5f025a		0f92c3			SETB BL					
  compact.go:471	0x5f025d		0fb6db			MOVZX BL, BX				
  compact.go:445	0x5f0260		488bb42460020000	MOVQ 0x260(SP), SI			
  compact.go:445	0x5f0268		488b7c2408		MOVQ 0x8(SP), DI			
  compact.go:445	0x5f026d		4801fe			ADDQ DI, SI				
  compact.go:446	0x5f0270		488bb424e8010000	MOVQ 0x1e8(SP), SI			
  compact.go:446	0x5f0278		488bbc2458020000	MOVQ 0x258(SP), DI			
  compact.go:446	0x5f0280		4811fe			ADCQ DI, SI				
  compact.go:447	0x5f0283		488bb424e0010000	MOVQ 0x1e0(SP), SI			
  compact.go:447	0x5f028b		488bbc2448020000	MOVQ 0x248(SP), DI			
  compact.go:447	0x5f0293		4811fe			ADCQ DI, SI				
  compact.go:448	0x5f0296		488bb424d8010000	MOVQ 0x1d8(SP), SI			
  compact.go:448	0x5f029e		488bbc2440020000	MOVQ 0x240(SP), DI			
  compact.go:448	0x5f02a6		4811fe			ADCQ DI, SI				
  compact.go:449	0x5f02a9		488bb424d0010000	MOVQ 0x1d0(SP), SI			
  compact.go:449	0x5f02b1		488bbc2438020000	MOVQ 0x238(SP), DI			
  compact.go:449	0x5f02b9		4811fe			ADCQ DI, SI				
  compact.go:450	0x5f02bc		488bb424c8010000	MOVQ 0x1c8(SP), SI			
  compact.go:450	0x5f02c4		488bbc2430020000	MOVQ 0x230(SP), DI			
  compact.go:450	0x5f02cc		4811fe			ADCQ DI, SI				
  compact.go:451	0x5f02cf		488bb424c0010000	MOVQ 0x1c0(SP), SI			
  compact.go:451	0x5f02d7		488bbc2428020000	MOVQ 0x228(SP), DI			
  compact.go:451	0x5f02df		4811fe			ADCQ DI, SI				
  compact.go:472	0x5f02e2		4883d300		ADCQ $0x0, BX				
  compact.go:472	0x5f02e6		48899c2460010000	MOVQ BX, 0x160(SP)			
  compact.go:479	0x5f02ee		488bb42420010000	MOVQ 0x120(SP), SI			
  compact.go:479	0x5f02f6		488b7c2468		MOVQ 0x68(SP), DI			
  compact.go:479	0x5f02fb		4801fe			ADDQ DI, SI				
  compact.go:479	0x5f02fe		4889b42418010000	MOVQ SI, 0x118(SP)			
  compact.go:480	0x5f0306		488bbc24a8030000	MOVQ 0x3a8(SP), DI			
  compact.go:480	0x5f030e		4c8b4c2460		MOVQ 0x60(SP), R9			
  compact.go:480	0x5f0313		4c11cf			ADCQ R9, DI				
  compact.go:480	0x5f0316		4889bc2408010000	MOVQ DI, 0x108(SP)			
  compact.go:481	0x5f031e		4c8b8c2430010000	MOVQ 0x130(SP), R9			
  compact.go:481	0x5f0326		4c8b9c24e8020000	MOVQ 0x2e8(SP), R11			
  compact.go:481	0x5f032e		4d11d9			ADCQ R11, R9				
  compact.go:481	0x5f0331		4c898c2400010000	MOVQ R9, 0x100(SP)			
  compact.go:482	0x5f0339		4c8b9c2438010000	MOVQ 0x138(SP), R11			
  compact.go:482	0x5f0341		4c8bac2448010000	MOVQ 0x148(SP), R13			
  compact.go:482	0x5f0349		4d11eb			ADCQ R13, R11				
  compact.go:482	0x5f034c		4c899c24f8000000	MOVQ R11, 0xf8(SP)			
  compact.go:483	0x5f0354		4c8bac2458010000	MOVQ 0x158(SP), R13			
  compact.go:483	0x5f035c		4c8b842420020000	MOVQ 0x220(SP), R8			
  compact.go:483	0x5f0364		4d11c5			ADCQ R8, R13				
  compact.go:483	0x5f0367		4c89ac24f0000000	MOVQ R13, 0xf0(SP)			
  compact.go:484	0x5f036f		4c8b842450010000	MOVQ 0x150(SP), R8			
  compact.go:484	0x5f0377		4983d000		ADCQ $0x0, R8				
  compact.go:484	0x5f037b		4c898424e8000000	MOVQ R8, 0xe8(SP)			
  compact.go:485	0x5f0383		488b9c2428010000	MOVQ 0x128(SP), BX			
  compact.go:485	0x5f038b		4801d3			ADDQ DX, BX				
  compact.go:486	0x5f038e		4c11e6			ADCQ R12, SI				
  compact.go:487	0x5f0391		4c11ff			ADCQ R15, DI				
  compact.go:488	0x5f0394		4911c9			ADCQ CX, R9				
  compact.go:489	0x5f0397		4911c3			ADCQ AX, R11				
  compact.go:489	0x5f039a		4c899c24d8000000	MOVQ R11, 0xd8(SP)			
  compact.go:490	0x5f03a2		4d11d5			ADCQ R10, R13				
  compact.go:490	0x5f03a5		4c89ac24c8000000	MOVQ R13, 0xc8(SP)			
  compact.go:491	0x5f03ad		4c8b942460010000	MOVQ 0x160(SP), R10			
  compact.go:491	0x5f03b5		4d11d0			ADCQ R10, R8				
  compact.go:491	0x5f03b8		4c898424c0000000	MOVQ R8, 0xc0(SP)			
  compact.go:492	0x5f03c0		4889da			MOVQ BX, DX				
  compact.go:492	0x5f03c3		49ba0100000001000000	MOVQ $0x100000001, R10			
  compact.go:492	0x5f03cd		c442fbf6d2		MULXQ R10, AX, R10			
  compact.go:493	0x5f03d2		4889c2			MOVQ AX, DX				
  compact.go:493	0x5f03d5		49c7c2ffffffff		MOVQ $-0x1, R10				
  compact.go:493	0x5f03dc		c442f3f6d2		MULXQ R10, CX, R10			
  compact.go:496	0x5f03e1		49c7c7feffffff		MOVQ $-0x2, R15				
  compact.go:496	0x5f03e8		c4429bf6ff		MULXQ R15, R12, R15			
  compact.go:497	0x5f03ed		49b800000000ffffffff	MOVQ $0xffffffff00000000, R8		
  compact.go:497	0x5f03f7		c44293f6c0		MULXQ R8, R13, R8			
  compact.go:498	0x5f03fc		41bbffffffff		MOVL $-0x1, R11				
  compact.go:498	0x5f0402		c4c2ebf6c3		MULXQ R11, DX, AX			
  compact.go:499	0x5f0407		4c01e8			ADDQ R13, AX				
  compact.go:500	0x5f040a		4d11e0			ADCQ R12, R8				
  compact.go:501	0x5f040d		4911cf			ADCQ CX, R15				
  compact.go:502	0x5f0410		4989cc			MOVQ CX, R12				
  compact.go:502	0x5f0413		4c11d1			ADCQ R10, CX				
  compact.go:503	0x5f0416		4d11d4			ADCQ R10, R12				
  compact.go:504	0x5f0419		4983d200		ADCQ $0x0, R10				
  compact.go:505	0x5f041d		4801d3			ADDQ DX, BX				
  compact.go:506	0x5f0420		4811f0			ADCQ SI, AX				
  compact.go:507	0x5f0423		4911f8			ADCQ DI, R8				
  compact.go:508	0x5f0426		4d11cf			ADCQ R9, R15				
  compact.go:509	0x5f0429		488b9c24d8000000	MOVQ 0xd8(SP), BX			
  compact.go:509	0x5f0431		4811d9			ADCQ BX, CX				
  compact.go:510	0x5f0434		488b9c24c8000000	MOVQ 0xc8(SP), BX			
  compact.go:510	0x5f043c		4911dc			ADCQ BX, R12				
  compact.go:511	0x5f043f		488b9c24c0000000	MOVQ 0xc0(SP), BX			
  compact.go:511	0x5f0447		4911da			ADCQ BX, R10				
  compact.go:511	0x5f044a		0f92c3			SETB BL					
  compact.go:511	0x5f044d		0fb6db			MOVZX BL, BX				
  compact.go:485	0x5f0450		488bb42428010000	MOVQ 0x128(SP), SI			
  compact.go:485	0x5f0458		488bbc2490010000	MOVQ 0x190(SP), DI			
  compact.go:485	0x5f0460		4801fe			ADDQ DI, SI				
  compact.go:486	0x5f0463		488bb42418010000	MOVQ 0x118(SP), SI			
  compact.go:486	0x5f046b		488bbc2488010000	MOVQ 0x188(SP), DI			
  compact.go:486	0x5f0473		4811fe			ADCQ DI, SI				
  compact.go:487	0x5f0476		488bb42408010000	MOVQ 0x108(SP), SI			
  compact.go:487	0x5f047e		488bbc2480010000	MOVQ 0x180(SP), DI			
  compact.go:487	0x5f0486		4811fe			ADCQ DI, SI				
  compact.go:488	0x5f0489		488bb42400010000	MOVQ 0x100(SP), SI			
  compact.go:488	0x5f0491		488bbc2478010000	MOVQ 0x178(SP), DI			
  compact.go:488	0x5f0499		4811fe			ADCQ DI, SI				
  compact.go:489	0x5f049c		488bb424f8000000	MOVQ 0xf8(SP), SI			
  compact.go:489	0x5f04a4		488bbc2470010000	MOVQ 0x170(SP), DI			
  compact.go:489	0x5f04ac		4811fe			ADCQ DI, SI				
  compact.go:490	0x5f04af		488bb424f0000000	MOVQ 0xf0(SP), SI			
  compact.go:490	0x5f04b7		488bbc2468010000	MOVQ 0x168(SP), DI			
  compact.go:490	0x5f04bf		4811fe			ADCQ DI, SI				
  compact.go:491	0x5f04c2		488bb424e8000000	MOVQ 0xe8(SP), SI			
  compact.go:491	0x5f04ca		488bbc2460010000	MOVQ 0x160(SP), DI			
  compact.go:491	0x5f04d2		4811fe			ADCQ DI, SI				
  compact.go:512	0x5f04d5		4883d300		ADCQ $0x0, BX				
  compact.go:513	0x5f04d9		4889c6			MOVQ AX, SI				
  compact.go:513	0x5f04dc		4c29d8			SUBQ R11, AX				
  compact.go:514	0x5f04df		48bf00000000ffffffff	MOVQ $0xffffffff00000000, DI		
  compact.go:514	0x5f04e9		4d89c1			MOVQ R8, R9				
  compact.go:514	0x5f04ec		4919f8			SBBQ DI, R8				
  compact.go:515	0x5f04ef		4c89ff			MOVQ R15, DI				
  compact.go:515	0x5f04f2		4983dffe		SBBQ $-0x2, R15				
  compact.go:516	0x5f04f6		4989cb			MOVQ CX, R11				
  compact.go:516	0x5f04f9		4883d9ff		SBBQ $-0x1, CX				
  compact.go:517	0x5f04fd		4d89e5			MOVQ R12, R13				
  compact.go:517	0x5f0500		4983dcff		SBBQ $-0x1, R12				
  compact.go:518	0x5f0504		4c89d2			MOVQ R10, DX				
  compact.go:518	0x5f0507		4983daff		SBBQ $-0x1, R10				
  compact.go:519	0x5f050b		4883db00		SBBQ $0x0, BX				
  compact.go:519	0x5f050f		0f92c3			SETB BL					
  compact.go:519	0x5f0512		0fb6db			MOVZX BL, BX				
  common.go:7		0x5f0515		48f7db			NEGQ BX					
  common.go:8		0x5f0518		4821de			ANDQ BX, SI				
  common.go:8		0x5f051b		c4e2e0f2c0		ANDNQ AX, BX, AX			
  common.go:8		0x5f0520		4809c6			ORQ AX, SI				
  compact.go:532	0x5f0523		488b842428040000	MOVQ 0x428(SP), AX			
  compact.go:532	0x5f052b		488930			MOVQ SI, 0(AX)				
  common.go:8		0x5f052e		4921d9			ANDQ BX, R9				
  common.go:8		0x5f0531		c4c2e0f2f0		ANDNQ R8, BX, SI			
  common.go:8		0x5f0536		4909f1			ORQ SI, R9				
  compact.go:533	0x5f0539		4c894808		MOVQ R9, 0x8(AX)			
  common.go:8		0x5f053d		4821df			ANDQ BX, DI				
  common.go:8		0x5f0540		c4c2e0f2f7		ANDNQ R15, BX, SI			
  common.go:8		0x5f0545		4809f7			ORQ SI, DI				
  compact.go:534	0x5f0548		48897810		MOVQ DI, 0x10(AX)			
  common.go:8		0x5f054c		4921db			ANDQ BX, R11				
  common.go:8		0x5f054f		c4e2e0f2c9		ANDNQ CX, BX, CX			
  common.go:8		0x5f0554		4c09d9			ORQ R11, CX				
  compact.go:535	0x5f0557		48894818		MOVQ CX, 0x18(AX)			
  common.go:8		0x5f055b		4921dd			ANDQ BX, R13				
  common.go:8		0x5f055e		c4c2e0f2cc		ANDNQ R12, BX, CX			
  common.go:8		0x5f0563		4909cd			ORQ CX, R13				
  compact.go:536	0x5f0566		4c896820		MOVQ R13, 0x20(AX)			
  common.go:8		0x5f056a		4821da			ANDQ BX, DX				
  common.go:8		0x5f056d		c4c2e0f2ca		ANDNQ R10, BX, CX			
  common.go:8		0x5f0572		4809ca			ORQ CX, DX				
  compact.go:537	0x5f0575		48895028		MOVQ DX, 0x28(AX)			
  compact.go:538	0x5f0579		c9			LEAVE					
  compact.go:538	0x5f057a		c3			RET					
  compact.go:274	0x5f057b		4889442408		MOVQ AX, 0x8(SP)			
  compact.go:274	0x5f0580		48895c2410		MOVQ BX, 0x10(SP)			
  compact.go:274	0x5f0585		e896a5e9ff		CALL runtime.morestack_noctxt.abi0(SB)	
  compact.go:274	0x5f058a		488b442408		MOVQ 0x8(SP), AX			
  compact.go:274	0x5f058f		488b5c2410		MOVQ 0x10(SP), BX			
  compact.go:274	0x5f0594		e987f1ffff		JMP example.com/p384issue.Square(SB)	
