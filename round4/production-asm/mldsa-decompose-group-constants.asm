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
  field.go:691		0x5d5743		89c1			MOVL AX, CX			
  field.go:691		0x5d5745		83e10f			ANDL $0xf, CX			
  field.go:691		0x5d5748		69c900fe0700		IMULL $0x7fe00, CX, CX		
  field.go:691		0x5d574e		29ca			SUBL CX, DX			
  field.go:692		0x5d5750		8d8aff1f80ff		LEAL 0xff801fff(DX), CX		
  field.go:677		0x5d5756		83e00f			ANDL $0xf, AX			
  field.go:924		0x5d5759		4863da			MOVSXD DX, BX			
  field.go:924		0x5d575c		4863c9			MOVSXD CX, CX			
  constant_time.go:35	0x5d575f		4881fb01f03f00		CMPQ BX, $0x3ff001		
  field.go:924		0x5d5766		480f4dd9		CMOVGE CX, BX			
  field.go:694		0x5d576a		c3			RET				

TEXT crypto/internal/fips140/mldsa.decompose88(SB) /home/exedev/go-pq-stack/src/crypto/internal/fips140/mldsa/field.go
  field.go:736		0x5d58c0		90			NOPL				
  field.go:55		0x5d58c1		89c1			MOVL AX, CX			
  field.go:144		0x5d58c3		69d0ffdf7ffc		IMULL $-0x3802001, AX, DX	
  field.go:145		0x5d58c9		4869d201e07f00		IMULQ $0x7fe001, DX, DX		
  field.go:145		0x5d58d0		4801d1			ADDQ DX, CX			
  field.go:145		0x5d58d3		48c1e920		SHRQ $0x20, CX			
  field.go:79		0x5d58d7		488d91ff1f80ff		LEAQ 0xff801fff(CX), DX		
  field.go:737		0x5d58de		90			NOPL				
  field.go:738		0x5d58df		90			NOPL				
  field.go:729		0x5d58e0		90			NOPL				
  field.go:151		0x5d58e1		90			NOPL				
  field.go:151		0x5d58e2		90			NOPL				
  field.go:78		0x5d58e3		90			NOPL				
  constant_time.go:35	0x5d58e4		4881f900e07f00		CMPQ CX, $0x7fe000		
  field.go:79		0x5d58eb		480f4ed1		CMOVLE CX, DX			
  field.go:727		0x5d58ef		8d4a7f			LEAL 0x7f(DX), CX		
  field.go:727		0x5d58f2		c1e907			SHRL $0x7, CX			
  field.go:728		0x5d58f5		69c10b2c0000		IMULL $0x2c0b, CX, AX		
  field.go:728		0x5d58fb		0500008000		ADDL $0x800000, AX		
  field.go:728		0x5d5900		c1e818			SHRL $0x18, AX			
  constant_time.go:29	0x5d5903		83f82c			CMPL AX, $0x2c			
  field.go:929		0x5d5906		b900000000		MOVL $0x0, CX			
  field.go:929		0x5d590b		480f44c1		CMOVE CX, AX			
  field.go:743		0x5d590f		0fb6c8			MOVZX AL, CX			
  field.go:743		0x5d5912		69c900e80200		IMULL $0x2e800, CX, CX		
  field.go:743		0x5d5918		29ca			SUBL CX, DX			
  field.go:744		0x5d591a		8d8aff1f80ff		LEAL 0xff801fff(DX), CX		
  field.go:924		0x5d5920		4863da			MOVSXD DX, BX			
  field.go:924		0x5d5923		4863c9			MOVSXD CX, CX			
  constant_time.go:35	0x5d5926		4881fb01f03f00		CMPQ BX, $0x3ff001		
  field.go:924		0x5d592d		480f4dd9		CMOVGE CX, BX			
  field.go:746		0x5d5931		c3			RET				
