TEXT example.com/carrysumprobe.IndependentAB(SB) /home/exedev/crypto-audit/round4/issues/p384-square/small-carry/carry.go
  carry.go:10		0x12cf80		f9400b90		MOVD 16(R28), R16				
  carry.go:10		0x12cf84		d10083f1		SUB $32, RSP, R17				
  carry.go:10		0x12cf88		eb10023f		CMP R16, R17					
  carry.go:10		0x12cf8c		540007e9		BLS 63(PC)					
  carry.go:10		0x12cf90		f8160ffe		MOVD.W R30, -160(RSP)				
  carry.go:10		0x12cf94		f81f83fd		MOVD R29, -8(RSP)				
  carry.go:10		0x12cf98		d10023fd		SUB $8, RSP, R29				
  carry.go:26		0x12cf9c		f90057e0		MOVD R0, 168(RSP)				
  carry.go:11		0x12cfa0		a9401023		LDP (R1), (R3, R4)				
  carry.go:11		0x12cfa4		a9401845		LDP (R2), (R5, R6)				
  carry.go:13		0x12cfa8		a9412027		LDP 16(R1), (R7, R8)				
  carry.go:13		0x12cfac		a9412849		LDP 16(R2), (R9, R10)				
  carry.go:15		0x12cfb0		a942302b		LDP 32(R1), (R11, R12)				
  carry.go:15		0x12cfb4		a942384d		LDP 32(R2), (R13, R14)				
  carry.go:17		0x12cfb8		a943402f		LDP 48(R1), (R15, R16)				
  carry.go:17		0x12cfbc		a9434c51		LDP 48(R2), (R17, R19)				
  carry.go:19		0x12cfc0		a9445434		LDP 64(R1), (R20, R21)				
  carry.go:19		0x12cfc4		a9445c56		LDP 64(R2), (R22, R23)				
  carry.go:21		0x12cfc8		a9456438		LDP 80(R1), (R24, R25)				
  carry.go:21		0x12cfcc		a945005a		LDP 80(R2), (R26, R0)				
  carry.go:22		0x12cfd0		f9000fe0		MOVD R0, 24(RSP)				
  carry.go:23		0x12cfd4		a9460021		LDP 96(R1), (R1, R0)				
  carry.go:24		0x12cfd8		f9000be0		MOVD R0, 16(RSP)				
  carry.go:23		0x12cfdc		a9460042		LDP 96(R2), (R2, R0)				
  carry.go:11		0x12cfe0		ab0300a3		ADDS R3, R5, R3					
  carry.go:12		0x12cfe4		ba0400c4		ADCS R4, R6, R4					
  carry.go:25		0x12cfe8		a90213e3		STP (R3, R4), 32(RSP)				
  carry.go:13		0x12cfec		ba070123		ADCS R7, R9, R3					
  carry.go:14		0x12cff0		ba080144		ADCS R8, R10, R4				
  carry.go:25		0x12cff4		a90313e3		STP (R3, R4), 48(RSP)				
  carry.go:15		0x12cff8		ba0b01a3		ADCS R11, R13, R3				
  carry.go:16		0x12cffc		ba0c01c4		ADCS R12, R14, R4				
  carry.go:25		0x12d000		a90413e3		STP (R3, R4), 64(RSP)				
  carry.go:17		0x12d004		ba0f0223		ADCS R15, R17, R3				
  carry.go:17		0x12d008		9a1f03e4		ADC ZR, ZR, R4					
  carry.go:18		0x12d00c		ab100265		ADDS R16, R19, R5				
  carry.go:25		0x12d010		a90517e3		STP (R3, R5), 80(RSP)				
  carry.go:19		0x12d014		ba1402c3		ADCS R20, R22, R3				
  carry.go:20		0x12d018		ba1502e5		ADCS R21, R23, R5				
  carry.go:25		0x12d01c		a90617e3		STP (R3, R5), 96(RSP)				
  carry.go:21		0x12d020		ba180343		ADCS R24, R26, R3				
  carry.go:22		0x12d024		f9400fe5		MOVD 24(RSP), R5				
  carry.go:22		0x12d028		ba1900a5		ADCS R25, R5, R5				
  carry.go:25		0x12d02c		a90717e3		STP (R3, R5), 112(RSP)				
  carry.go:23		0x12d030		ba010041		ADCS R1, R2, R1					
  carry.go:24		0x12d034		f9400be2		MOVD 16(RSP), R2				
  carry.go:24		0x12d038		ba020000		ADCS R2, R0, R0					
  carry.go:25		0x12d03c		a90803e1		STP (R1, R0), 128(RSP)				
  carry.go:24		0x12d040		9a1f03e0		ADC ZR, ZR, R0					
  carry.go:25		0x12d044		8b000080		ADD R0, R4, R0					
  carry.go:25		0x12d048		f9004be0		MOVD R0, 144(RSP)				
  carry.go:25		0x12d04c		f94057e0		MOVD 168(RSP), R0				
  carry.go:25		0x12d050		910083e1		ADD $32, RSP, R1				
  carry.go:25		0x12d054		ad404430		FLDPQ (R1), (F16, F17)				
  carry.go:25		0x12d058		ad004410		FSTPQ (F16, F17), (R0)				
  carry.go:25		0x12d05c		ad414430		FLDPQ 32(R1), (F16, F17)			
  carry.go:25		0x12d060		ad014410		FSTPQ (F16, F17), 32(R0)			
  carry.go:25		0x12d064		ad424430		FLDPQ 64(R1), (F16, F17)			
  carry.go:25		0x12d068		ad024410		FSTPQ (F16, F17), 64(R0)			
  carry.go:25		0x12d06c		3dc01830		FMOVQ 96(R1), F16				
  carry.go:25		0x12d070		3d801810		FMOVQ F16, 96(R0)				
  carry.go:25		0x12d074		f9403839		MOVD 112(R1), R25				
  carry.go:25		0x12d078		f9003819		MOVD R25, 112(R0)				
  carry.go:26		0x12d07c		910263fd		ADD $152, RSP, R29				
  carry.go:26		0x12d080		910283ff		ADD $160, RSP, RSP				
  carry.go:26		0x12d084		d65f03c0		RET						
  carry.go:10		0x12d088		a90087e0		STP (R0, R1), 8(RSP)				
  carry.go:10		0x12d08c		f9000fe2		MOVD R2, 24(RSP)				
  carry.go:10		0x12d090		aa1e03e3		MOVD R30, R3					
  carry.go:10		0x12d094		97fd97df		CALL runtime.morestack_noctxt.abi0(SB)		
  carry.go:10		0x12d098		a94087e0		LDP 8(RSP), (R0, R1)				
  carry.go:10		0x12d09c		f9400fe2		MOVD 24(RSP), R2				
  carry.go:10		0x12d0a0		17ffffb8		JMP example.com/carrysumprobe.IndependentAB(SB)	
  carry.go:10		0x12d0a4		00000000		?						
  carry.go:10		0x12d0a8		00000000		?						
  carry.go:10		0x12d0ac		00000000		?						

TEXT example.com/carrysumprobe.IndependentBA(SB) /home/exedev/crypto-audit/round4/issues/p384-square/small-carry/carry.go
  carry.go:29		0x12d0b0		f9400b90		MOVD 16(R28), R16				
  carry.go:29		0x12d0b4		d10083f1		SUB $32, RSP, R17				
  carry.go:29		0x12d0b8		eb10023f		CMP R16, R17					
  carry.go:29		0x12d0bc		540007e9		BLS 63(PC)					
  carry.go:29		0x12d0c0		f8160ffe		MOVD.W R30, -160(RSP)				
  carry.go:29		0x12d0c4		f81f83fd		MOVD R29, -8(RSP)				
  carry.go:29		0x12d0c8		d10023fd		SUB $8, RSP, R29				
  carry.go:45		0x12d0cc		f90057e0		MOVD R0, 168(RSP)				
  carry.go:30		0x12d0d0		a9401023		LDP (R1), (R3, R4)				
  carry.go:30		0x12d0d4		a9401845		LDP (R2), (R5, R6)				
  carry.go:32		0x12d0d8		a9412027		LDP 16(R1), (R7, R8)				
  carry.go:32		0x12d0dc		a9412849		LDP 16(R2), (R9, R10)				
  carry.go:34		0x12d0e0		a942302b		LDP 32(R1), (R11, R12)				
  carry.go:34		0x12d0e4		a942384d		LDP 32(R2), (R13, R14)				
  carry.go:36		0x12d0e8		a943402f		LDP 48(R1), (R15, R16)				
  carry.go:36		0x12d0ec		a9434c51		LDP 48(R2), (R17, R19)				
  carry.go:38		0x12d0f0		a9445434		LDP 64(R1), (R20, R21)				
  carry.go:38		0x12d0f4		a9445c56		LDP 64(R2), (R22, R23)				
  carry.go:40		0x12d0f8		a9456438		LDP 80(R1), (R24, R25)				
  carry.go:40		0x12d0fc		a945005a		LDP 80(R2), (R26, R0)				
  carry.go:41		0x12d100		f9000fe0		MOVD R0, 24(RSP)				
  carry.go:42		0x12d104		a9460021		LDP 96(R1), (R1, R0)				
  carry.go:43		0x12d108		f9000be0		MOVD R0, 16(RSP)				
  carry.go:42		0x12d10c		a9460042		LDP 96(R2), (R2, R0)				
  carry.go:30		0x12d110		ab0300a3		ADDS R3, R5, R3					
  carry.go:31		0x12d114		ba0400c4		ADCS R4, R6, R4					
  carry.go:44		0x12d118		a90213e3		STP (R3, R4), 32(RSP)				
  carry.go:32		0x12d11c		ba070123		ADCS R7, R9, R3					
  carry.go:33		0x12d120		ba080144		ADCS R8, R10, R4				
  carry.go:44		0x12d124		a90313e3		STP (R3, R4), 48(RSP)				
  carry.go:34		0x12d128		ba0b01a3		ADCS R11, R13, R3				
  carry.go:35		0x12d12c		ba0c01c4		ADCS R12, R14, R4				
  carry.go:44		0x12d130		a90413e3		STP (R3, R4), 64(RSP)				
  carry.go:36		0x12d134		ba0f0223		ADCS R15, R17, R3				
  carry.go:36		0x12d138		9a1f03e4		ADC ZR, ZR, R4					
  carry.go:37		0x12d13c		ab100265		ADDS R16, R19, R5				
  carry.go:44		0x12d140		a90517e3		STP (R3, R5), 80(RSP)				
  carry.go:38		0x12d144		ba1402c3		ADCS R20, R22, R3				
  carry.go:39		0x12d148		ba1502e5		ADCS R21, R23, R5				
  carry.go:44		0x12d14c		a90617e3		STP (R3, R5), 96(RSP)				
  carry.go:40		0x12d150		ba180343		ADCS R24, R26, R3				
  carry.go:41		0x12d154		f9400fe5		MOVD 24(RSP), R5				
  carry.go:41		0x12d158		ba1900a5		ADCS R25, R5, R5				
  carry.go:44		0x12d15c		a90717e3		STP (R3, R5), 112(RSP)				
  carry.go:42		0x12d160		ba010041		ADCS R1, R2, R1					
  carry.go:43		0x12d164		f9400be2		MOVD 16(RSP), R2				
  carry.go:43		0x12d168		ba020000		ADCS R2, R0, R0					
  carry.go:44		0x12d16c		a90803e1		STP (R1, R0), 128(RSP)				
  carry.go:43		0x12d170		9a1f03e0		ADC ZR, ZR, R0					
  carry.go:44		0x12d174		8b040000		ADD R4, R0, R0					
  carry.go:44		0x12d178		f9004be0		MOVD R0, 144(RSP)				
  carry.go:44		0x12d17c		f94057e0		MOVD 168(RSP), R0				
  carry.go:44		0x12d180		910083e1		ADD $32, RSP, R1				
  carry.go:44		0x12d184		ad404430		FLDPQ (R1), (F16, F17)				
  carry.go:44		0x12d188		ad004410		FSTPQ (F16, F17), (R0)				
  carry.go:44		0x12d18c		ad414430		FLDPQ 32(R1), (F16, F17)			
  carry.go:44		0x12d190		ad014410		FSTPQ (F16, F17), 32(R0)			
  carry.go:44		0x12d194		ad424430		FLDPQ 64(R1), (F16, F17)			
  carry.go:44		0x12d198		ad024410		FSTPQ (F16, F17), 64(R0)			
  carry.go:44		0x12d19c		3dc01830		FMOVQ 96(R1), F16				
  carry.go:44		0x12d1a0		3d801810		FMOVQ F16, 96(R0)				
  carry.go:44		0x12d1a4		f9403839		MOVD 112(R1), R25				
  carry.go:44		0x12d1a8		f9003819		MOVD R25, 112(R0)				
  carry.go:45		0x12d1ac		910263fd		ADD $152, RSP, R29				
  carry.go:45		0x12d1b0		910283ff		ADD $160, RSP, RSP				
  carry.go:45		0x12d1b4		d65f03c0		RET						
  carry.go:29		0x12d1b8		a90087e0		STP (R0, R1), 8(RSP)				
  carry.go:29		0x12d1bc		f9000fe2		MOVD R2, 24(RSP)				
  carry.go:29		0x12d1c0		aa1e03e3		MOVD R30, R3					
  carry.go:29		0x12d1c4		97fd9793		CALL runtime.morestack_noctxt.abi0(SB)		
  carry.go:29		0x12d1c8		a94087e0		LDP 8(RSP), (R0, R1)				
  carry.go:29		0x12d1cc		f9400fe2		MOVD 24(RSP), R2				
  carry.go:29		0x12d1d0		17ffffb8		JMP example.com/carrysumprobe.IndependentBA(SB)	
  carry.go:29		0x12d1d4		00000000		?						
  carry.go:29		0x12d1d8		00000000		?						
  carry.go:29		0x12d1dc		00000000		?						

TEXT example.com/carrysumprobe.ReorderedAB(SB) /home/exedev/crypto-audit/round4/issues/p384-square/small-carry/carry.go
  carry.go:48		0x12d1e0		f9400b90		MOVD 16(R28), R16				
  carry.go:48		0x12d1e4		d10083f1		SUB $32, RSP, R17				
  carry.go:48		0x12d1e8		eb10023f		CMP R16, R17					
  carry.go:48		0x12d1ec		540007e9		BLS 63(PC)					
  carry.go:48		0x12d1f0		f8160ffe		MOVD.W R30, -160(RSP)				
  carry.go:48		0x12d1f4		f81f83fd		MOVD R29, -8(RSP)				
  carry.go:48		0x12d1f8		d10023fd		SUB $8, RSP, R29				
  carry.go:64		0x12d1fc		f90057e0		MOVD R0, 168(RSP)				
  carry.go:49		0x12d200		a9441023		LDP 64(R1), (R3, R4)				
  carry.go:49		0x12d204		a9441845		LDP 64(R2), (R5, R6)				
  carry.go:52		0x12d208		a9452027		LDP 80(R1), (R7, R8)				
  carry.go:52		0x12d20c		a9452849		LDP 80(R2), (R9, R10)				
  carry.go:54		0x12d210		a946302b		LDP 96(R1), (R11, R12)				
  carry.go:54		0x12d214		a946384d		LDP 96(R2), (R13, R14)				
  carry.go:56		0x12d218		a940402f		LDP (R1), (R15, R16)				
  carry.go:56		0x12d21c		a9404c51		LDP (R2), (R17, R19)				
  carry.go:58		0x12d220		a9415434		LDP 16(R1), (R20, R21)				
  carry.go:58		0x12d224		a9415c56		LDP 16(R2), (R22, R23)				
  carry.go:60		0x12d228		a9426438		LDP 32(R1), (R24, R25)				
  carry.go:60		0x12d22c		a942005a		LDP 32(R2), (R26, R0)				
  carry.go:61		0x12d230		f9000fe0		MOVD R0, 24(RSP)				
  carry.go:62		0x12d234		a9430021		LDP 48(R1), (R1, R0)				
  carry.go:62		0x12d238		f9000be1		MOVD R1, 16(RSP)				
  carry.go:62		0x12d23c		a9430442		LDP 48(R2), (R2, R1)				
  carry.go:49		0x12d240		ab000020		ADDS R0, R1, R0					
  carry.go:50		0x12d244		ba0300a1		ADCS R3, R5, R1					
  carry.go:51		0x12d248		ba0400c3		ADCS R4, R6, R3					
  carry.go:52		0x12d24c		ba070124		ADCS R7, R9, R4					
  carry.go:53		0x12d250		ba080145		ADCS R8, R10, R5				
  carry.go:54		0x12d254		ba0b01a6		ADCS R11, R13, R6				
  carry.go:55		0x12d258		ba0c01c7		ADCS R12, R14, R7				
  carry.go:55		0x12d25c		9a1f03e8		ADC ZR, ZR, R8					
  carry.go:56		0x12d260		ab0f0229		ADDS R15, R17, R9				
  carry.go:57		0x12d264		ba10026a		ADCS R16, R19, R10				
  carry.go:63		0x12d268		a9022be9		STP (R9, R10), 32(RSP)				
  carry.go:58		0x12d26c		ba1402c9		ADCS R20, R22, R9				
  carry.go:59		0x12d270		ba1502ea		ADCS R21, R23, R10				
  carry.go:63		0x12d274		a9032be9		STP (R9, R10), 48(RSP)				
  carry.go:60		0x12d278		ba180349		ADCS R24, R26, R9				
  carry.go:61		0x12d27c		f9400fea		MOVD 24(RSP), R10				
  carry.go:61		0x12d280		ba19014a		ADCS R25, R10, R10				
  carry.go:63		0x12d284		a9042be9		STP (R9, R10), 64(RSP)				
  carry.go:62		0x12d288		f9400be9		MOVD 16(RSP), R9				
  carry.go:62		0x12d28c		ba090042		ADCS R9, R2, R2					
  carry.go:63		0x12d290		a90503e2		STP (R2, R0), 80(RSP)				
  carry.go:63		0x12d294		a9060fe1		STP (R1, R3), 96(RSP)				
  carry.go:63		0x12d298		a90717e4		STP (R4, R5), 112(RSP)				
  carry.go:63		0x12d29c		a9081fe6		STP (R6, R7), 128(RSP)				
  carry.go:62		0x12d2a0		9a1f03e0		ADC ZR, ZR, R0					
  carry.go:63		0x12d2a4		8b080000		ADD R8, R0, R0					
  carry.go:63		0x12d2a8		f9004be0		MOVD R0, 144(RSP)				
  carry.go:63		0x12d2ac		f94057e0		MOVD 168(RSP), R0				
  carry.go:63		0x12d2b0		910083e1		ADD $32, RSP, R1				
  carry.go:63		0x12d2b4		ad404430		FLDPQ (R1), (F16, F17)				
  carry.go:63		0x12d2b8		ad004410		FSTPQ (F16, F17), (R0)				
  carry.go:63		0x12d2bc		ad414430		FLDPQ 32(R1), (F16, F17)			
  carry.go:63		0x12d2c0		ad014410		FSTPQ (F16, F17), 32(R0)			
  carry.go:63		0x12d2c4		ad424430		FLDPQ 64(R1), (F16, F17)			
  carry.go:63		0x12d2c8		ad024410		FSTPQ (F16, F17), 64(R0)			
  carry.go:63		0x12d2cc		3dc01830		FMOVQ 96(R1), F16				
  carry.go:63		0x12d2d0		3d801810		FMOVQ F16, 96(R0)				
  carry.go:63		0x12d2d4		f9403839		MOVD 112(R1), R25				
  carry.go:63		0x12d2d8		f9003819		MOVD R25, 112(R0)				
  carry.go:64		0x12d2dc		910263fd		ADD $152, RSP, R29				
  carry.go:64		0x12d2e0		910283ff		ADD $160, RSP, RSP				
  carry.go:64		0x12d2e4		d65f03c0		RET						
  carry.go:48		0x12d2e8		a90087e0		STP (R0, R1), 8(RSP)				
  carry.go:48		0x12d2ec		f9000fe2		MOVD R2, 24(RSP)				
  carry.go:48		0x12d2f0		aa1e03e3		MOVD R30, R3					
  carry.go:48		0x12d2f4		97fd9747		CALL runtime.morestack_noctxt.abi0(SB)		
  carry.go:48		0x12d2f8		a94087e0		LDP 8(RSP), (R0, R1)				
  carry.go:48		0x12d2fc		f9400fe2		MOVD 24(RSP), R2				
  carry.go:48		0x12d300		17ffffb8		JMP example.com/carrysumprobe.ReorderedAB(SB)	
  carry.go:48		0x12d304		00000000		?						
  carry.go:48		0x12d308		00000000		?						
  carry.go:48		0x12d30c		00000000		?						

TEXT example.com/carrysumprobe.ReorderedBA(SB) /home/exedev/crypto-audit/round4/issues/p384-square/small-carry/carry.go
  carry.go:67		0x12d310		f9400b90		MOVD 16(R28), R16				
  carry.go:67		0x12d314		d10083f1		SUB $32, RSP, R17				
  carry.go:67		0x12d318		eb10023f		CMP R16, R17					
  carry.go:67		0x12d31c		540007e9		BLS 63(PC)					
  carry.go:67		0x12d320		f8160ffe		MOVD.W R30, -160(RSP)				
  carry.go:67		0x12d324		f81f83fd		MOVD R29, -8(RSP)				
  carry.go:67		0x12d328		d10023fd		SUB $8, RSP, R29				
  carry.go:83		0x12d32c		f90057e0		MOVD R0, 168(RSP)				
  carry.go:68		0x12d330		a9441023		LDP 64(R1), (R3, R4)				
  carry.go:68		0x12d334		a9441845		LDP 64(R2), (R5, R6)				
  carry.go:71		0x12d338		a9452027		LDP 80(R1), (R7, R8)				
  carry.go:71		0x12d33c		a9452849		LDP 80(R2), (R9, R10)				
  carry.go:73		0x12d340		a946302b		LDP 96(R1), (R11, R12)				
  carry.go:73		0x12d344		a946384d		LDP 96(R2), (R13, R14)				
  carry.go:75		0x12d348		a940402f		LDP (R1), (R15, R16)				
  carry.go:75		0x12d34c		a9404c51		LDP (R2), (R17, R19)				
  carry.go:77		0x12d350		a9415434		LDP 16(R1), (R20, R21)				
  carry.go:77		0x12d354		a9415c56		LDP 16(R2), (R22, R23)				
  carry.go:79		0x12d358		a9426438		LDP 32(R1), (R24, R25)				
  carry.go:79		0x12d35c		a942005a		LDP 32(R2), (R26, R0)				
  carry.go:80		0x12d360		f9000fe0		MOVD R0, 24(RSP)				
  carry.go:81		0x12d364		a9430021		LDP 48(R1), (R1, R0)				
  carry.go:81		0x12d368		f9000be1		MOVD R1, 16(RSP)				
  carry.go:81		0x12d36c		a9430442		LDP 48(R2), (R2, R1)				
  carry.go:68		0x12d370		ab000020		ADDS R0, R1, R0					
  carry.go:69		0x12d374		ba0300a1		ADCS R3, R5, R1					
  carry.go:70		0x12d378		ba0400c3		ADCS R4, R6, R3					
  carry.go:71		0x12d37c		ba070124		ADCS R7, R9, R4					
  carry.go:72		0x12d380		ba080145		ADCS R8, R10, R5				
  carry.go:73		0x12d384		ba0b01a6		ADCS R11, R13, R6				
  carry.go:74		0x12d388		ba0c01c7		ADCS R12, R14, R7				
  carry.go:74		0x12d38c		9a1f03e8		ADC ZR, ZR, R8					
  carry.go:75		0x12d390		ab0f0229		ADDS R15, R17, R9				
  carry.go:76		0x12d394		ba10026a		ADCS R16, R19, R10				
  carry.go:82		0x12d398		a9022be9		STP (R9, R10), 32(RSP)				
  carry.go:77		0x12d39c		ba1402c9		ADCS R20, R22, R9				
  carry.go:78		0x12d3a0		ba1502ea		ADCS R21, R23, R10				
  carry.go:82		0x12d3a4		a9032be9		STP (R9, R10), 48(RSP)				
  carry.go:79		0x12d3a8		ba180349		ADCS R24, R26, R9				
  carry.go:80		0x12d3ac		f9400fea		MOVD 24(RSP), R10				
  carry.go:80		0x12d3b0		ba19014a		ADCS R25, R10, R10				
  carry.go:82		0x12d3b4		a9042be9		STP (R9, R10), 64(RSP)				
  carry.go:81		0x12d3b8		f9400be9		MOVD 16(RSP), R9				
  carry.go:81		0x12d3bc		ba090042		ADCS R9, R2, R2					
  carry.go:82		0x12d3c0		a90503e2		STP (R2, R0), 80(RSP)				
  carry.go:82		0x12d3c4		a9060fe1		STP (R1, R3), 96(RSP)				
  carry.go:82		0x12d3c8		a90717e4		STP (R4, R5), 112(RSP)				
  carry.go:82		0x12d3cc		a9081fe6		STP (R6, R7), 128(RSP)				
  carry.go:81		0x12d3d0		9a1f03e0		ADC ZR, ZR, R0					
  carry.go:82		0x12d3d4		8b000100		ADD R0, R8, R0					
  carry.go:82		0x12d3d8		f9004be0		MOVD R0, 144(RSP)				
  carry.go:82		0x12d3dc		f94057e0		MOVD 168(RSP), R0				
  carry.go:82		0x12d3e0		910083e1		ADD $32, RSP, R1				
  carry.go:82		0x12d3e4		ad404430		FLDPQ (R1), (F16, F17)				
  carry.go:82		0x12d3e8		ad004410		FSTPQ (F16, F17), (R0)				
  carry.go:82		0x12d3ec		ad414430		FLDPQ 32(R1), (F16, F17)			
  carry.go:82		0x12d3f0		ad014410		FSTPQ (F16, F17), 32(R0)			
  carry.go:82		0x12d3f4		ad424430		FLDPQ 64(R1), (F16, F17)			
  carry.go:82		0x12d3f8		ad024410		FSTPQ (F16, F17), 64(R0)			
  carry.go:82		0x12d3fc		3dc01830		FMOVQ 96(R1), F16				
  carry.go:82		0x12d400		3d801810		FMOVQ F16, 96(R0)				
  carry.go:82		0x12d404		f9403839		MOVD 112(R1), R25				
  carry.go:82		0x12d408		f9003819		MOVD R25, 112(R0)				
  carry.go:83		0x12d40c		910263fd		ADD $152, RSP, R29				
  carry.go:83		0x12d410		910283ff		ADD $160, RSP, RSP				
  carry.go:83		0x12d414		d65f03c0		RET						
  carry.go:67		0x12d418		a90087e0		STP (R0, R1), 8(RSP)				
  carry.go:67		0x12d41c		f9000fe2		MOVD R2, 24(RSP)				
  carry.go:67		0x12d420		aa1e03e3		MOVD R30, R3					
  carry.go:67		0x12d424		97fd96fb		CALL runtime.morestack_noctxt.abi0(SB)		
  carry.go:67		0x12d428		a94087e0		LDP 8(RSP), (R0, R1)				
  carry.go:67		0x12d42c		f9400fe2		MOVD 24(RSP), R2				
  carry.go:67		0x12d430		17ffffb8		JMP example.com/carrysumprobe.ReorderedBA(SB)	
  carry.go:67		0x12d434		00000000		?						
  carry.go:67		0x12d438		00000000		?						
  carry.go:67		0x12d43c		00000000		?						

TEXT example.com/carrysumprobe.DependentAB(SB) /home/exedev/crypto-audit/round4/issues/p384-square/small-carry/carry.go
  carry.go:86		0x12d440		f9400b90		MOVD 16(R28), R16				
  carry.go:86		0x12d444		d10043f1		SUB $16, RSP, R17				
  carry.go:86		0x12d448		eb10023f		CMP R16, R17					
  carry.go:86		0x12d44c		540007a9		BLS 61(PC)					
  carry.go:86		0x12d450		f8170ffe		MOVD.W R30, -144(RSP)				
  carry.go:86		0x12d454		f81f83fd		MOVD R29, -8(RSP)				
  carry.go:86		0x12d458		d10023fd		SUB $8, RSP, R29				
  carry.go:102		0x12d45c		f9004fe0		MOVD R0, 152(RSP)				
  carry.go:87		0x12d460		a9401023		LDP (R1), (R3, R4)				
  carry.go:87		0x12d464		a9401845		LDP (R2), (R5, R6)				
  carry.go:89		0x12d468		a9412027		LDP 16(R1), (R7, R8)				
  carry.go:89		0x12d46c		a9412849		LDP 16(R2), (R9, R10)				
  carry.go:91		0x12d470		a942302b		LDP 32(R1), (R11, R12)				
  carry.go:91		0x12d474		a942384d		LDP 32(R2), (R13, R14)				
  carry.go:93		0x12d478		a943402f		LDP 48(R1), (R15, R16)				
  carry.go:93		0x12d47c		f9401851		MOVD 48(R2), R17				
  carry.go:95		0x12d480		a9445033		LDP 64(R1), (R19, R20)				
  carry.go:95		0x12d484		a9445855		LDP 64(R2), (R21, R22)				
  carry.go:97		0x12d488		a9456037		LDP 80(R1), (R23, R24)				
  carry.go:97		0x12d48c		a9456859		LDP 80(R2), (R25, R26)				
  carry.go:99		0x12d490		a9460021		LDP 96(R1), (R1, R0)				
  carry.go:100		0x12d494		f90007e0		MOVD R0, 8(RSP)					
  carry.go:99		0x12d498		a9460042		LDP 96(R2), (R2, R0)				
  carry.go:87		0x12d49c		ab0300a3		ADDS R3, R5, R3					
  carry.go:88		0x12d4a0		ba0400c4		ADCS R4, R6, R4					
  carry.go:101		0x12d4a4		a90113e3		STP (R3, R4), 16(RSP)				
  carry.go:89		0x12d4a8		ba070123		ADCS R7, R9, R3					
  carry.go:90		0x12d4ac		ba080144		ADCS R8, R10, R4				
  carry.go:101		0x12d4b0		a90213e3		STP (R3, R4), 32(RSP)				
  carry.go:91		0x12d4b4		ba0b01a3		ADCS R11, R13, R3				
  carry.go:92		0x12d4b8		ba0c01c4		ADCS R12, R14, R4				
  carry.go:101		0x12d4bc		a90313e3		STP (R3, R4), 48(RSP)				
  carry.go:93		0x12d4c0		ba0f0223		ADCS R15, R17, R3				
  carry.go:93		0x12d4c4		9a1f03e4		ADC ZR, ZR, R4					
  carry.go:94		0x12d4c8		ab030205		ADDS R3, R16, R5				
  carry.go:101		0x12d4cc		a90417e3		STP (R3, R5), 64(RSP)				
  carry.go:95		0x12d4d0		ba1302a3		ADCS R19, R21, R3				
  carry.go:96		0x12d4d4		ba1402c5		ADCS R20, R22, R5				
  carry.go:101		0x12d4d8		a90517e3		STP (R3, R5), 80(RSP)				
  carry.go:97		0x12d4dc		ba170323		ADCS R23, R25, R3				
  carry.go:98		0x12d4e0		ba180345		ADCS R24, R26, R5				
  carry.go:101		0x12d4e4		a90617e3		STP (R3, R5), 96(RSP)				
  carry.go:99		0x12d4e8		ba010041		ADCS R1, R2, R1					
  carry.go:100		0x12d4ec		f94007e2		MOVD 8(RSP), R2					
  carry.go:100		0x12d4f0		ba020000		ADCS R2, R0, R0					
  carry.go:101		0x12d4f4		a90703e1		STP (R1, R0), 112(RSP)				
  carry.go:100		0x12d4f8		9a1f03e0		ADC ZR, ZR, R0					
  carry.go:101		0x12d4fc		8b000080		ADD R0, R4, R0					
  carry.go:101		0x12d500		f90043e0		MOVD R0, 128(RSP)				
  carry.go:101		0x12d504		f9404fe0		MOVD 152(RSP), R0				
  carry.go:101		0x12d508		910043e1		ADD $16, RSP, R1				
  carry.go:101		0x12d50c		ad404430		FLDPQ (R1), (F16, F17)				
  carry.go:101		0x12d510		ad004410		FSTPQ (F16, F17), (R0)				
  carry.go:101		0x12d514		ad414430		FLDPQ 32(R1), (F16, F17)			
  carry.go:101		0x12d518		ad014410		FSTPQ (F16, F17), 32(R0)			
  carry.go:101		0x12d51c		ad424430		FLDPQ 64(R1), (F16, F17)			
  carry.go:101		0x12d520		ad024410		FSTPQ (F16, F17), 64(R0)			
  carry.go:101		0x12d524		3dc01830		FMOVQ 96(R1), F16				
  carry.go:101		0x12d528		3d801810		FMOVQ F16, 96(R0)				
  carry.go:101		0x12d52c		f9403839		MOVD 112(R1), R25				
  carry.go:101		0x12d530		f9003819		MOVD R25, 112(R0)				
  carry.go:102		0x12d534		910223fd		ADD $136, RSP, R29				
  carry.go:102		0x12d538		910243ff		ADD $144, RSP, RSP				
  carry.go:102		0x12d53c		d65f03c0		RET						
  carry.go:86		0x12d540		a90087e0		STP (R0, R1), 8(RSP)				
  carry.go:86		0x12d544		f9000fe2		MOVD R2, 24(RSP)				
  carry.go:86		0x12d548		aa1e03e3		MOVD R30, R3					
  carry.go:86		0x12d54c		97fd96b1		CALL runtime.morestack_noctxt.abi0(SB)		
  carry.go:86		0x12d550		a94087e0		LDP 8(RSP), (R0, R1)				
  carry.go:86		0x12d554		f9400fe2		MOVD 24(RSP), R2				
  carry.go:86		0x12d558		17ffffba		JMP example.com/carrysumprobe.DependentAB(SB)	
  carry.go:86		0x12d55c		00000000		?						

TEXT example.com/carrysumprobe.DependentBA(SB) /home/exedev/crypto-audit/round4/issues/p384-square/small-carry/carry.go
  carry.go:105		0x12d560		f9400b90		MOVD 16(R28), R16				
  carry.go:105		0x12d564		d10043f1		SUB $16, RSP, R17				
  carry.go:105		0x12d568		eb10023f		CMP R16, R17					
  carry.go:105		0x12d56c		540007a9		BLS 61(PC)					
  carry.go:105		0x12d570		f8170ffe		MOVD.W R30, -144(RSP)				
  carry.go:105		0x12d574		f81f83fd		MOVD R29, -8(RSP)				
  carry.go:105		0x12d578		d10023fd		SUB $8, RSP, R29				
  carry.go:121		0x12d57c		f9004fe0		MOVD R0, 152(RSP)				
  carry.go:106		0x12d580		a9401023		LDP (R1), (R3, R4)				
  carry.go:106		0x12d584		a9401845		LDP (R2), (R5, R6)				
  carry.go:108		0x12d588		a9412027		LDP 16(R1), (R7, R8)				
  carry.go:108		0x12d58c		a9412849		LDP 16(R2), (R9, R10)				
  carry.go:110		0x12d590		a942302b		LDP 32(R1), (R11, R12)				
  carry.go:110		0x12d594		a942384d		LDP 32(R2), (R13, R14)				
  carry.go:112		0x12d598		a943402f		LDP 48(R1), (R15, R16)				
  carry.go:112		0x12d59c		f9401851		MOVD 48(R2), R17				
  carry.go:114		0x12d5a0		a9445033		LDP 64(R1), (R19, R20)				
  carry.go:114		0x12d5a4		a9445855		LDP 64(R2), (R21, R22)				
  carry.go:116		0x12d5a8		a9456037		LDP 80(R1), (R23, R24)				
  carry.go:116		0x12d5ac		a9456859		LDP 80(R2), (R25, R26)				
  carry.go:118		0x12d5b0		a9460021		LDP 96(R1), (R1, R0)				
  carry.go:119		0x12d5b4		f90007e0		MOVD R0, 8(RSP)					
  carry.go:118		0x12d5b8		a9460042		LDP 96(R2), (R2, R0)				
  carry.go:106		0x12d5bc		ab0300a3		ADDS R3, R5, R3					
  carry.go:107		0x12d5c0		ba0400c4		ADCS R4, R6, R4					
  carry.go:120		0x12d5c4		a90113e3		STP (R3, R4), 16(RSP)				
  carry.go:108		0x12d5c8		ba070123		ADCS R7, R9, R3					
  carry.go:109		0x12d5cc		ba080144		ADCS R8, R10, R4				
  carry.go:120		0x12d5d0		a90213e3		STP (R3, R4), 32(RSP)				
  carry.go:110		0x12d5d4		ba0b01a3		ADCS R11, R13, R3				
  carry.go:111		0x12d5d8		ba0c01c4		ADCS R12, R14, R4				
  carry.go:120		0x12d5dc		a90313e3		STP (R3, R4), 48(RSP)				
  carry.go:112		0x12d5e0		ba0f0223		ADCS R15, R17, R3				
  carry.go:112		0x12d5e4		9a1f03e4		ADC ZR, ZR, R4					
  carry.go:113		0x12d5e8		ab030205		ADDS R3, R16, R5				
  carry.go:120		0x12d5ec		a90417e3		STP (R3, R5), 64(RSP)				
  carry.go:114		0x12d5f0		ba1302a3		ADCS R19, R21, R3				
  carry.go:115		0x12d5f4		ba1402c5		ADCS R20, R22, R5				
  carry.go:120		0x12d5f8		a90517e3		STP (R3, R5), 80(RSP)				
  carry.go:116		0x12d5fc		ba170323		ADCS R23, R25, R3				
  carry.go:117		0x12d600		ba180345		ADCS R24, R26, R5				
  carry.go:120		0x12d604		a90617e3		STP (R3, R5), 96(RSP)				
  carry.go:118		0x12d608		ba010041		ADCS R1, R2, R1					
  carry.go:119		0x12d60c		f94007e2		MOVD 8(RSP), R2					
  carry.go:119		0x12d610		ba020000		ADCS R2, R0, R0					
  carry.go:120		0x12d614		a90703e1		STP (R1, R0), 112(RSP)				
  carry.go:119		0x12d618		9a1f03e0		ADC ZR, ZR, R0					
  carry.go:120		0x12d61c		8b040000		ADD R4, R0, R0					
  carry.go:120		0x12d620		f90043e0		MOVD R0, 128(RSP)				
  carry.go:120		0x12d624		f9404fe0		MOVD 152(RSP), R0				
  carry.go:120		0x12d628		910043e1		ADD $16, RSP, R1				
  carry.go:120		0x12d62c		ad404430		FLDPQ (R1), (F16, F17)				
  carry.go:120		0x12d630		ad004410		FSTPQ (F16, F17), (R0)				
  carry.go:120		0x12d634		ad414430		FLDPQ 32(R1), (F16, F17)			
  carry.go:120		0x12d638		ad014410		FSTPQ (F16, F17), 32(R0)			
  carry.go:120		0x12d63c		ad424430		FLDPQ 64(R1), (F16, F17)			
  carry.go:120		0x12d640		ad024410		FSTPQ (F16, F17), 64(R0)			
  carry.go:120		0x12d644		3dc01830		FMOVQ 96(R1), F16				
  carry.go:120		0x12d648		3d801810		FMOVQ F16, 96(R0)				
  carry.go:120		0x12d64c		f9403839		MOVD 112(R1), R25				
  carry.go:120		0x12d650		f9003819		MOVD R25, 112(R0)				
  carry.go:121		0x12d654		910223fd		ADD $136, RSP, R29				
  carry.go:121		0x12d658		910243ff		ADD $144, RSP, RSP				
  carry.go:121		0x12d65c		d65f03c0		RET						
  carry.go:105		0x12d660		a90087e0		STP (R0, R1), 8(RSP)				
  carry.go:105		0x12d664		f9000fe2		MOVD R2, 24(RSP)				
  carry.go:105		0x12d668		aa1e03e3		MOVD R30, R3					
  carry.go:105		0x12d66c		97fd9669		CALL runtime.morestack_noctxt.abi0(SB)		
  carry.go:105		0x12d670		a94087e0		LDP 8(RSP), (R0, R1)				
  carry.go:105		0x12d674		f9400fe2		MOVD 24(RSP), R2				
  carry.go:105		0x12d678		17ffffba		JMP example.com/carrysumprobe.DependentBA(SB)	
  carry.go:105		0x12d67c		00000000		?						
