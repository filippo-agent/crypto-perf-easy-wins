TEXT crypto/internal/fips140/mldsa.inverseNTT(SB) /home/exedev/go-pq-stack/src/crypto/internal/fips140/mldsa/field.go
  field.go:281		0x5d43c0		55			PUSHQ BP						
  field.go:281		0x5d43c1		4889e5			MOVQ SP, BP						
  field.go:281		0x5d43c4		488d842410040000	LEAQ 0x410(SP), AX					
  field.go:281		0x5d43cc		b910000000		MOVL $0x10, CX						
  field.go:281		0x5d43d1		440f1138		MOVUPS X15, 0(AX)					
  field.go:281		0x5d43d5		440f117810		MOVUPS X15, 0x10(AX)					
  field.go:281		0x5d43da		440f117820		MOVUPS X15, 0x20(AX)					
  field.go:281		0x5d43df		440f117830		MOVUPS X15, 0x30(AX)					
  field.go:281		0x5d43e4		4883c040		ADDQ $0x40, AX						
  field.go:281		0x5d43e8		ffc9			DECL CX							
  field.go:281		0x5d43ea		75e5			JNE 0x5d43d1						
  field.go:293		0x5d43ec		b8ffffffff		MOVL $-0x1, AX						
  field.go:293		0x5d43f1		31c9			XORL CX, CX						
  field.go:293		0x5d43f3		eb4b			JMP 0x5d4440						
  field.go:294		0x5d43f5		0fb6d0			MOVZX AL, DX						
  field.go:294		0x5d43f8		488d1d81762300		LEAQ crypto/internal/fips140/mldsa.zetas(SB), BX	
  field.go:294		0x5d43ff		8b1493			MOVL 0(BX)(DX*4), DX					
  field.go:297		0x5d4402		8b748c10		MOVL 0x10(SP)(CX*4), SI					
  field.go:298		0x5d4406		8b7c8c14		MOVL 0x14(SP)(CX*4), DI					
  field.go:298		0x5d440a		01f7			ADDL SI, DI						
  field.go:298		0x5d440c		897c8c10		MOVL DI, 0x10(SP)(CX*4)					
  field.go:299		0x5d4410		8b7c8c14		MOVL 0x14(SP)(CX*4), DI					
  field.go:299		0x5d4414		29f7			SUBL SI, DI						
  field.go:299		0x5d4416		8db70001e07f		LEAL 0x7fe00100(DI), SI					
  field.go:135		0x5d441c		480fafd6		IMULQ SI, DX						
  field.go:144		0x5d4420		69f2ffdf7ffc		IMULL $-0x3802001, DX, SI				
  field.go:145		0x5d4426		4869f601e07f00		IMULQ $0x7fe001, SI, SI					
  field.go:145		0x5d442d		4801f2			ADDQ SI, DX						
  field.go:145		0x5d4430		48c1ea20		SHRQ $0x20, DX						
  field.go:300		0x5d4434		89548c14		MOVL DX, 0x14(SP)(CX*4)					
  field.go:293		0x5d4438		4883c102		ADDQ $0x2, CX						
  field.go:295		0x5d443c		ffc8			DECL AX							
  field.go:295		0x5d443e		6690			NOPW							
  field.go:293		0x5d4440		4881f900010000		CMPQ CX, $0x100						
  field.go:293		0x5d4447		7cac			JL 0x5d43f5						
  field.go:293		0x5d4449		31c9			XORL CX, CX						
  field.go:293		0x5d444b		eb7f			JMP 0x5d44cc						
  field.go:303		0x5d444d		0fb6d0			MOVZX AL, DX						
  field.go:303		0x5d4450		488d1d29762300		LEAQ crypto/internal/fips140/mldsa.zetas(SB), BX	
  field.go:303		0x5d4457		8b1493			MOVL 0(BX)(DX*4), DX					
  field.go:306		0x5d445a		8b748c10		MOVL 0x10(SP)(CX*4), SI					
  field.go:307		0x5d445e		8b7c8c18		MOVL 0x18(SP)(CX*4), DI					
  field.go:307		0x5d4462		01f7			ADDL SI, DI						
  field.go:307		0x5d4464		897c8c10		MOVL DI, 0x10(SP)(CX*4)					
  field.go:308		0x5d4468		8b7c8c18		MOVL 0x18(SP)(CX*4), DI					
  field.go:308		0x5d446c		29f7			SUBL SI, DI						
  field.go:308		0x5d446e		8db70001e07f		LEAL 0x7fe00100(DI), SI					
  field.go:135		0x5d4474		480faff2		IMULQ DX, SI						
  field.go:144		0x5d4478		69feffdf7ffc		IMULL $-0x3802001, SI, DI				
  field.go:145		0x5d447e		4869ff01e07f00		IMULQ $0x7fe001, DI, DI					
  field.go:145		0x5d4485		4801fe			ADDQ DI, SI						
  field.go:145		0x5d4488		48c1ee20		SHRQ $0x20, SI						
  field.go:309		0x5d448c		89748c18		MOVL SI, 0x18(SP)(CX*4)					
  field.go:311		0x5d4490		8b748c14		MOVL 0x14(SP)(CX*4), SI					
  field.go:312		0x5d4494		8b7c8c1c		MOVL 0x1c(SP)(CX*4), DI					
  field.go:312		0x5d4498		01f7			ADDL SI, DI						
  field.go:312		0x5d449a		897c8c14		MOVL DI, 0x14(SP)(CX*4)					
  field.go:313		0x5d449e		8b7c8c1c		MOVL 0x1c(SP)(CX*4), DI					
  field.go:313		0x5d44a2		29f7			SUBL SI, DI						
  field.go:313		0x5d44a4		8db70001e07f		LEAL 0x7fe00100(DI), SI					
  field.go:135		0x5d44aa		480fafd6		IMULQ SI, DX						
  field.go:144		0x5d44ae		69f2ffdf7ffc		IMULL $-0x3802001, DX, SI				
  field.go:145		0x5d44b4		4869f601e07f00		IMULQ $0x7fe001, SI, SI					
  field.go:145		0x5d44bb		4801f2			ADDQ SI, DX						
  field.go:145		0x5d44be		48c1ea20		SHRQ $0x20, DX						
  field.go:314		0x5d44c2		89548c1c		MOVL DX, 0x1c(SP)(CX*4)					
  field.go:302		0x5d44c6		4883c104		ADDQ $0x4, CX						
  field.go:304		0x5d44ca		ffc8			DECL AX							
  field.go:302		0x5d44cc		4881f900010000		CMPQ CX, $0x100						
  field.go:302		0x5d44d3		0f8c74ffffff		JL 0x5d444d						
  field.go:302		0x5d44d9		31c9			XORL CX, CX						
  field.go:302		0x5d44db		0f1f440000		NOPL 0(AX)(AX*1)					
  field.go:302		0x5d44e0		e9eb000000		JMP 0x5d45d0						
  field.go:317		0x5d44e5		0fb6d0			MOVZX AL, DX						
  field.go:317		0x5d44e8		488d1d91752300		LEAQ crypto/internal/fips140/mldsa.zetas(SB), BX	
  field.go:317		0x5d44ef		8b1493			MOVL 0(BX)(DX*4), DX					
  field.go:320		0x5d44f2		8b748c10		MOVL 0x10(SP)(CX*4), SI					
  field.go:321		0x5d44f6		8b7c8c20		MOVL 0x20(SP)(CX*4), DI					
  field.go:321		0x5d44fa		01f7			ADDL SI, DI						
  field.go:321		0x5d44fc		897c8c10		MOVL DI, 0x10(SP)(CX*4)					
  field.go:322		0x5d4500		8b7c8c20		MOVL 0x20(SP)(CX*4), DI					
  field.go:322		0x5d4504		29f7			SUBL SI, DI						
  field.go:322		0x5d4506		8db70001e07f		LEAL 0x7fe00100(DI), SI					
  field.go:135		0x5d450c		480faff2		IMULQ DX, SI						
  field.go:144		0x5d4510		69feffdf7ffc		IMULL $-0x3802001, SI, DI				
  field.go:145		0x5d4516		4869ff01e07f00		IMULQ $0x7fe001, DI, DI					
  field.go:145		0x5d451d		4801fe			ADDQ DI, SI						
  field.go:145		0x5d4520		48c1ee20		SHRQ $0x20, SI						
  field.go:323		0x5d4524		89748c20		MOVL SI, 0x20(SP)(CX*4)					
  field.go:325		0x5d4528		8b748c14		MOVL 0x14(SP)(CX*4), SI					
  field.go:326		0x5d452c		8b7c8c24		MOVL 0x24(SP)(CX*4), DI					
  field.go:326		0x5d4530		01f7			ADDL SI, DI						
  field.go:326		0x5d4532		897c8c14		MOVL DI, 0x14(SP)(CX*4)					
  field.go:327		0x5d4536		8b7c8c24		MOVL 0x24(SP)(CX*4), DI					
  field.go:327		0x5d453a		29f7			SUBL SI, DI						
  field.go:327		0x5d453c		8db70001e07f		LEAL 0x7fe00100(DI), SI					
  field.go:135		0x5d4542		480faff2		IMULQ DX, SI						
  field.go:144		0x5d4546		69feffdf7ffc		IMULL $-0x3802001, SI, DI				
  field.go:145		0x5d454c		4869ff01e07f00		IMULQ $0x7fe001, DI, DI					
  field.go:145		0x5d4553		4801fe			ADDQ DI, SI						
  field.go:145		0x5d4556		48c1ee20		SHRQ $0x20, SI						
  field.go:328		0x5d455a		89748c24		MOVL SI, 0x24(SP)(CX*4)					
  field.go:330		0x5d455e		8b748c18		MOVL 0x18(SP)(CX*4), SI					
  field.go:331		0x5d4562		8b7c8c28		MOVL 0x28(SP)(CX*4), DI					
  field.go:331		0x5d4566		01f7			ADDL SI, DI						
  field.go:331		0x5d4568		897c8c18		MOVL DI, 0x18(SP)(CX*4)					
  field.go:332		0x5d456c		8b7c8c28		MOVL 0x28(SP)(CX*4), DI					
  field.go:332		0x5d4570		29f7			SUBL SI, DI						
  field.go:332		0x5d4572		8db70001e07f		LEAL 0x7fe00100(DI), SI					
  field.go:135		0x5d4578		480faff2		IMULQ DX, SI						
  field.go:144		0x5d457c		69feffdf7ffc		IMULL $-0x3802001, SI, DI				
  field.go:145		0x5d4582		4869ff01e07f00		IMULQ $0x7fe001, DI, DI					
  field.go:145		0x5d4589		4801fe			ADDQ DI, SI						
  field.go:145		0x5d458c		48c1ee20		SHRQ $0x20, SI						
  field.go:333		0x5d4590		89748c28		MOVL SI, 0x28(SP)(CX*4)					
  field.go:335		0x5d4594		8b748c1c		MOVL 0x1c(SP)(CX*4), SI					
  field.go:336		0x5d4598		8b7c8c2c		MOVL 0x2c(SP)(CX*4), DI					
  field.go:336		0x5d459c		01f7			ADDL SI, DI						
  field.go:336		0x5d459e		897c8c1c		MOVL DI, 0x1c(SP)(CX*4)					
  field.go:337		0x5d45a2		8b7c8c2c		MOVL 0x2c(SP)(CX*4), DI					
  field.go:337		0x5d45a6		29f7			SUBL SI, DI						
  field.go:337		0x5d45a8		8db70001e07f		LEAL 0x7fe00100(DI), SI					
  field.go:135		0x5d45ae		480faff2		IMULQ DX, SI						
  field.go:144		0x5d45b2		69d6ffdf7ffc		IMULL $-0x3802001, SI, DX				
  field.go:145		0x5d45b8		4869d201e07f00		IMULQ $0x7fe001, DX, DX					
  field.go:145		0x5d45bf		4801f2			ADDQ SI, DX						
  field.go:145		0x5d45c2		48c1ea20		SHRQ $0x20, DX						
  field.go:338		0x5d45c6		89548c2c		MOVL DX, 0x2c(SP)(CX*4)					
  field.go:316		0x5d45ca		4883c108		ADDQ $0x8, CX						
  field.go:318		0x5d45ce		ffc8			DECL AX							
  field.go:316		0x5d45d0		4881f900010000		CMPQ CX, $0x100						
  field.go:316		0x5d45d7		0f8c08ffffff		JL 0x5d44e5						
  field.go:316		0x5d45dd		b908000000		MOVL $0x8, CX						
  field.go:316		0x5d45e2		eb03			JMP 0x5d45e7						
  field.go:341		0x5d45e4		4801c9			ADDQ CX, CX						
  field.go:341		0x5d45e7		4881f900010000		CMPQ CX, $0x100						
  field.go:341		0x5d45ee		0f8d24010000		JGE 0x5d4718						
  field.go:342		0x5d45f4		31d2			XORL DX, DX						
  field.go:342		0x5d45f6		eb08			JMP 0x5d4600						
  field.go:344		0x5d45f8		ffc8			DECL AX							
  field.go:342		0x5d45fa		4c89c2			MOVQ R8, DX						
  field.go:342		0x5d45fd		0f1f00			NOPL 0(AX)						
  field.go:342		0x5d4600		4881fa00010000		CMPQ DX, $0x100						
  field.go:342		0x5d4607		7ddb			JGE 0x5d45e4						
  field.go:343		0x5d4609		0fb6d8			MOVZX AL, BX						
  field.go:347		0x5d460c		488d340a		LEAQ 0(DX)(CX*1), SI					
  field.go:343		0x5d4610		488d3d69742300		LEAQ crypto/internal/fips140/mldsa.zetas(SB), DI	
  field.go:343		0x5d4617		8b1c9f			MOVL 0(DI)(BX*4), BX					
  field.go:343		0x5d461a		660f1f440000		NOPW 0(AX)(AX*1)					
  field.go:347		0x5d4620		4881fe00010000		CMPQ SI, $0x100						
  field.go:347		0x5d4627		0f8781010000		JA 0x5d47ae						
  field.go:347		0x5d462d		4839f2			CMPQ DX, SI						
  field.go:347		0x5d4630		0f8773010000		JA 0x5d47a9						
  field.go:347		0x5d4636		4c8d044a		LEAQ 0(DX)(CX*2), R8					
  field.go:347		0x5d463a		660f1f440000		NOPW 0(AX)(AX*1)					
  field.go:347		0x5d4640		4981f800010000		CMPQ R8, $0x100						
  field.go:347		0x5d4647		0f8752010000		JA 0x5d479f						
  field.go:347		0x5d464d		4939f0			CMPQ R8, SI						
  field.go:347		0x5d4650		0f8244010000		JB 0x5d479a						
  field.go:347		0x5d4656		4c8d8c0a00ffffff	LEAQ 0xffffff00(DX)(CX*1), R9				
  field.go:347		0x5d465e		48c1e602		SHLQ $0x2, SI						
  field.go:347		0x5d4662		49c1f93f		SARQ $0x3f, R9						
  field.go:347		0x5d4666		4c21ce			ANDQ R9, SI						
  field.go:347		0x5d4669		488d549410		LEAQ 0x10(SP)(DX*4), DX					
  field.go:347		0x5d466e		488d743410		LEAQ 0x10(SP)(SI*1), SI					
  field.go:348		0x5d4673		4531c9			XORL R9, R9						
  field.go:348		0x5d4676		eb48			JMP 0x5d46c0						
  field.go:365		0x5d4678		468b548a04		MOVL 0x4(DX)(R9*4), R10					
  field.go:366		0x5d467d		468b5c8e04		MOVL 0x4(SI)(R9*4), R11					
  field.go:366		0x5d4682		4501d3			ADDL R10, R11						
  field.go:366		0x5d4685		46895c8a04		MOVL R11, 0x4(DX)(R9*4)					
  field.go:367		0x5d468a		468b5c8e04		MOVL 0x4(SI)(R9*4), R11					
  field.go:367		0x5d468f		4529d3			SUBL R10, R11						
  field.go:367		0x5d4692		458d930001e07f		LEAL 0x7fe00100(R11), R10				
  field.go:135		0x5d4699		4c0fafd3		IMULQ BX, R10						
  field.go:144		0x5d469d		4569daffdf7ffc		IMULL $-0x3802001, R10, R11				
  field.go:145		0x5d46a4		4d69db01e07f00		IMULQ $0x7fe001, R11, R11				
  field.go:145		0x5d46ab		4d01da			ADDQ R11, R10						
  field.go:145		0x5d46ae		49c1ea20		SHRQ $0x20, R10						
  field.go:368		0x5d46b2		4689548e04		MOVL R10, 0x4(SI)(R9*4)					
  field.go:348		0x5d46b7		4983c102		ADDQ $0x2, R9						
  field.go:348		0x5d46bb		0f1f440000		NOPL 0(AX)(AX*1)					
  field.go:348		0x5d46c0		4939c9			CMPQ R9, CX						
  field.go:348		0x5d46c3		0f8d2fffffff		JGE 0x5d45f8						
  field.go:349		0x5d46c9		0f83c6000000		JAE 0x5d4795						
  field.go:349		0x5d46cf		468b148a		MOVL 0(DX)(R9*4), R10					
  field.go:350		0x5d46d3		468b1c8e		MOVL 0(SI)(R9*4), R11					
  field.go:350		0x5d46d7		4501d3			ADDL R10, R11						
  field.go:350		0x5d46da		46891c8a		MOVL R11, 0(DX)(R9*4)					
  field.go:361		0x5d46de		468b1c8e		MOVL 0(SI)(R9*4), R11					
  field.go:361		0x5d46e2		4529d3			SUBL R10, R11						
  field.go:361		0x5d46e5		458d930001e07f		LEAL 0x7fe00100(R11), R10				
  field.go:365		0x5d46ec		4d8d5901		LEAQ 0x1(R9), R11					
  field.go:135		0x5d46f0		4c0fafd3		IMULQ BX, R10						
  field.go:144		0x5d46f4		4569e2ffdf7ffc		IMULL $-0x3802001, R10, R12				
  field.go:145		0x5d46fb		4d69e401e07f00		IMULQ $0x7fe001, R12, R12				
  field.go:145		0x5d4702		4d01e2			ADDQ R12, R10						
  field.go:145		0x5d4705		49c1ea20		SHRQ $0x20, R10						
  field.go:362		0x5d4709		4689148e		MOVL R10, 0(SI)(R9*4)					
  field.go:365		0x5d470d		4c39d9			CMPQ CX, R11						
  field.go:365		0x5d4710		0f8762ffffff		JA 0x5d4678						
  field.go:365		0x5d4716		eb78			JMP 0x5d4790						
  field.go:374		0x5d4718		488d842410040000	LEAQ 0x410(SP), AX					
  field.go:374		0x5d4720		b910000000		MOVL $0x10, CX						
  field.go:374		0x5d4725		440f1138		MOVUPS X15, 0(AX)					
  field.go:374		0x5d4729		440f117810		MOVUPS X15, 0x10(AX)					
  field.go:374		0x5d472e		440f117820		MOVUPS X15, 0x20(AX)					
  field.go:374		0x5d4733		440f117830		MOVUPS X15, 0x30(AX)					
  field.go:374		0x5d4738		4883c040		ADDQ $0x40, AX						
  field.go:374		0x5d473c		0f1f4000		NOPL 0(AX)						
  field.go:374		0x5d4740		ffc9			DECL CX							
  field.go:374		0x5d4742		75e1			JNE 0x5d4725						
  field.go:375		0x5d4744		31c0			XORL AX, AX						
  field.go:375		0x5d4746		eb3e			JMP 0x5d4786						
  field.go:378		0x5d4748		8b4c8410		MOVL 0x10(SP)(AX*4), CX					
  field.go:378		0x5d474c		4869c9fe3f0000		IMULQ $0x3ffe, CX, CX					
  field.go:144		0x5d4753		69d1ffdf7ffc		IMULL $-0x3802001, CX, DX				
  field.go:145		0x5d4759		4869d201e07f00		IMULQ $0x7fe001, DX, DX					
  field.go:145		0x5d4760		4801d1			ADDQ DX, CX						
  field.go:145		0x5d4763		48c1e920		SHRQ $0x20, CX						
  field.go:79		0x5d4767		488d91ff1f80ff		LEAQ 0xff801fff(CX), DX					
  field.go:151		0x5d476e		90			NOPL							
  field.go:151		0x5d476f		90			NOPL							
  field.go:78		0x5d4770		90			NOPL							
  constant_time.go:35	0x5d4771		4881f900e07f00		CMPQ CX, $0x7fe000					
  field.go:79		0x5d4778		480f4ed1		CMOVLE CX, DX						
  field.go:378		0x5d477c		89948410040000		MOVL DX, 0x410(SP)(AX*4)				
  field.go:375		0x5d4783		48ffc0			INCQ AX							
  field.go:375		0x5d4786		483d00010000		CMPQ AX, $0x100						
  field.go:375		0x5d478c		7cba			JL 0x5d4748						
  field.go:380		0x5d478e		5d			POPQ BP							
  field.go:380		0x5d478f		c3			RET							
  field.go:365		0x5d4790		e80b9bebff		CALL runtime.panicBounds(SB)				
  field.go:349		0x5d4795		e8069bebff		CALL runtime.panicBounds(SB)				
  field.go:347		0x5d479a		e8019bebff		CALL runtime.panicBounds(SB)				
  field.go:347		0x5d479f		b800010000		MOVL $0x100, AX						
  field.go:347		0x5d47a4		e8f79aebff		CALL runtime.panicBounds(SB)				
  field.go:347		0x5d47a9		e8f29aebff		CALL runtime.panicBounds(SB)				
  field.go:347		0x5d47ae		b800010000		MOVL $0x100, AX						
  field.go:347		0x5d47b3		e8e89aebff		CALL runtime.panicBounds(SB)				
  field.go:347		0x5d47b8		90			NOPL							

TEXT crypto/internal/fips140/mldsa.decompose32(SB) /home/exedev/go-pq-stack/src/crypto/internal/fips140/mldsa/field.go
  field.go:684		0x5d5700		90			NOPL				
  field.go:55		0x5d5701		89c1			MOVL AX, CX			
  field.go:144		0x5d5703		69d0ffdf7ffc		IMULL $-0x3802001, AX, DX	
  field.go:145		0x5d5709		4869d201e07f00		IMULQ $0x7fe001, DX, DX		
  field.go:145		0x5d5710		4801d1			ADDQ DX, CX			
  field.go:145		0x5d5713		48c1e920		SHRQ $0x20, CX			
  field.go:79		0x5d5717		488d91ff1f80ff		LEAQ 0xff801fff(CX), DX		
  field.go:685		0x5d571e		90			NOPL				
  field.go:686		0x5d571f		90			NOPL				
  field.go:151		0x5d5720		90			NOPL				
  field.go:151		0x5d5721		90			NOPL				
  field.go:78		0x5d5722		90			NOPL				
  constant_time.go:35	0x5d5723		4881f900e07f00		CMPQ CX, $0x7fe000		
  field.go:79		0x5d572a		480f4ed1		CMOVLE CX, DX			
  field.go:675		0x5d572e		8d4a7f			LEAL 0x7f(DX), CX		
  field.go:675		0x5d5731		c1e907			SHRL $0x7, CX			
  field.go:676		0x5d5734		89ce			MOVL CX, SI			
  field.go:676		0x5d5736		c1e107			SHLL $0x7, CX			
  field.go:676		0x5d5739		8d84ce00002000		LEAL 0x200000(SI)(CX*8), AX	
  field.go:676		0x5d5740		c1e816			SHRL $0x16, AX			
  field.go:689		0x5d5743		89c1			MOVL AX, CX			
  field.go:689		0x5d5745		83e10f			ANDL $0xf, CX			
  field.go:689		0x5d5748		69c900c0ff00		IMULL $0xffc000, CX, CX		
  field.go:689		0x5d574e		c1e905			SHRL $0x5, CX			
  field.go:689		0x5d5751		29ca			SUBL CX, DX			
  field.go:690		0x5d5753		8d8aff1f80ff		LEAL 0xff801fff(DX), CX		
  field.go:677		0x5d5759		83e00f			ANDL $0xf, AX			
  field.go:920		0x5d575c		4863da			MOVSXD DX, BX			
  field.go:920		0x5d575f		4863c9			MOVSXD CX, CX			
  constant_time.go:35	0x5d5762		4881fb01f03f00		CMPQ BX, $0x3ff001		
  field.go:920		0x5d5769		480f4dd9		CMOVGE CX, BX			
  field.go:692		0x5d576d		c3			RET				

TEXT crypto/internal/fips140/mldsa.decompose88(SB) /home/exedev/go-pq-stack/src/crypto/internal/fips140/mldsa/field.go
  field.go:734		0x5d58c0		90			NOPL				
  field.go:55		0x5d58c1		89c1			MOVL AX, CX			
  field.go:144		0x5d58c3		69d0ffdf7ffc		IMULL $-0x3802001, AX, DX	
  field.go:145		0x5d58c9		4869d201e07f00		IMULQ $0x7fe001, DX, DX		
  field.go:145		0x5d58d0		4801d1			ADDQ DX, CX			
  field.go:145		0x5d58d3		48c1e920		SHRQ $0x20, CX			
  field.go:79		0x5d58d7		488d91ff1f80ff		LEAQ 0xff801fff(CX), DX		
  field.go:735		0x5d58de		90			NOPL				
  field.go:736		0x5d58df		90			NOPL				
  field.go:727		0x5d58e0		90			NOPL				
  field.go:151		0x5d58e1		90			NOPL				
  field.go:151		0x5d58e2		90			NOPL				
  field.go:78		0x5d58e3		90			NOPL				
  constant_time.go:35	0x5d58e4		4881f900e07f00		CMPQ CX, $0x7fe000		
  field.go:79		0x5d58eb		480f4ed1		CMOVLE CX, DX			
  field.go:725		0x5d58ef		8d4a7f			LEAL 0x7f(DX), CX		
  field.go:725		0x5d58f2		c1e907			SHRL $0x7, CX			
  field.go:726		0x5d58f5		69c10b2c0000		IMULL $0x2c0b, CX, AX		
  field.go:726		0x5d58fb		0500008000		ADDL $0x800000, AX		
  field.go:726		0x5d5900		c1e818			SHRL $0x18, AX			
  constant_time.go:29	0x5d5903		83f82c			CMPL AX, $0x2c			
  field.go:925		0x5d5906		b900000000		MOVL $0x0, CX			
  field.go:925		0x5d590b		480f44c1		CMOVE CX, AX			
  field.go:739		0x5d590f		0fb6c8			MOVZX AL, CX			
  field.go:739		0x5d5912		69c900c0ff00		IMULL $0xffc000, CX, CX		
  field.go:739		0x5d5918		4863c9			MOVSXD CX, CX			
  field.go:739		0x5d591b		bea38b2eba		MOVL $-0x45d1745d, SI		
  field.go:739		0x5d5920		480faff1		IMULQ CX, SI			
  field.go:739		0x5d5924		48c1fe26		SARQ $0x26, SI			
  field.go:739		0x5d5928		48c1f93f		SARQ $0x3f, CX			
  field.go:739		0x5d592c		29ce			SUBL CX, SI			
  field.go:739		0x5d592e		29f2			SUBL SI, DX			
  field.go:740		0x5d5930		8d8aff1f80ff		LEAL 0xff801fff(DX), CX		
  field.go:920		0x5d5936		4863da			MOVSXD DX, BX			
  field.go:920		0x5d5939		4863c9			MOVSXD CX, CX			
  constant_time.go:35	0x5d593c		4881fb01f03f00		CMPQ BX, $0x3ff001		
  field.go:920		0x5d5943		480f4dd9		CMOVGE CX, BX			
  field.go:742		0x5d5947		c3			RET				

TEXT crypto/internal/fips140/mldsa.useHint88(SB) /home/exedev/go-pq-stack/src/crypto/internal/fips140/mldsa/field.go
  field.go:746		0x5d5960		493b6610		CMPQ SP, 0x10(R14)					
  field.go:746		0x5d5964		7640			JBE 0x5d59a6						
  field.go:746		0x5d5966		55			PUSHQ BP						
  field.go:746		0x5d5967		4889e5			MOVQ SP, BP						
  field.go:746		0x5d596a		4883ec08		SUBQ $0x8, SP						
  field.go:749		0x5d596e		885c241c		MOVB BL, 0x1c(SP)					
  field.go:748		0x5d5972		e849ffffff		CALL crypto/internal/fips140/mldsa.decompose88(SB)	
  field.go:749		0x5d5977		0fb64c241c		MOVZX 0x1c(SP), CX					
  field.go:749		0x5d597c		0f1f4000		NOPL 0(AX)						
  field.go:749		0x5d5980		80f901			CMPL CL, $0x1						
  field.go:749		0x5d5983		751f			JNE 0x5d59a4						
  field.go:750		0x5d5985		85db			TESTL BX, BX						
  field.go:750		0x5d5987		7e0c			JLE 0x5d5995						
  field.go:752		0x5d5989		3c2b			CMPL AL, $0x2b						
  field.go:752		0x5d598b		7504			JNE 0x5d5991						
  field.go:752		0x5d598d		31c0			XORL AX, AX						
  field.go:752		0x5d598f		eb13			JMP 0x5d59a4						
  field.go:755		0x5d5991		ffc0			INCL AX							
  field.go:755		0x5d5993		eb0f			JMP 0x5d59a4						
  field.go:759		0x5d5995		84c0			TESTL AL, AL						
  field.go:759		0x5d5997		7509			JNE 0x5d59a2						
  field.go:759		0x5d5999		b82b000000		MOVL $0x2b, AX						
  field.go:759		0x5d599e		6690			NOPW							
  field.go:759		0x5d59a0		eb02			JMP 0x5d59a4						
  field.go:762		0x5d59a2		ffc8			DECL AX							
  field.go:766		0x5d59a4		c9			LEAVE							
  field.go:766		0x5d59a5		c3			RET							
  field.go:746		0x5d59a6		89442408		MOVL AX, 0x8(SP)					
  field.go:746		0x5d59aa		885c240c		MOVB BL, 0xc(SP)					
  field.go:746		0x5d59ae		e8ad6cebff		CALL runtime.morestack_noctxt.abi0(SB)			
  field.go:746		0x5d59b3		8b442408		MOVL 0x8(SP), AX					
  field.go:746		0x5d59b7		0fb65c240c		MOVZX 0xc(SP), BX					
  field.go:746		0x5d59bc		eba2			JMP crypto/internal/fips140/mldsa.useHint88(SB)		
