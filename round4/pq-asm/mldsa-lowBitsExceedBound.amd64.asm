
/home/exedev/crypto-audit/round4/bin/mldsa-sign.test:     file format elf64-x86-64


Disassembly of section .text:

00000000005db200 <crypto/internal/fips140/mldsa.lowBitsExceedBound>:
  5db200:	49 3b 66 10          	cmp    0x10(%r14),%rsp
  5db204:	0f 86 e1 00 00 00    	jbe    5db2eb <crypto/internal/fips140/mldsa.lowBitsExceedBound+0xeb>
  5db20a:	55                   	push   %rbp
  5db20b:	48 89 e5             	mov    %rsp,%rbp
  5db20e:	48 83 ec 20          	sub    $0x20,%rsp
  5db212:	89 84 24 30 04 00 00 	mov    %eax,0x430(%rsp)
  5db219:	49 83 f8 20          	cmp    $0x20,%r8
  5db21d:	75 07                	jne    5db226 <crypto/internal/fips140/mldsa.lowBitsExceedBound+0x26>
  5db21f:	31 c9                	xor    %ecx,%ecx
  5db221:	e9 83 00 00 00       	jmp    5db2a9 <crypto/internal/fips140/mldsa.lowBitsExceedBound+0xa9>
  5db226:	49 83 f8 58          	cmp    $0x58,%r8
  5db22a:	75 52                	jne    5db27e <crypto/internal/fips140/mldsa.lowBitsExceedBound+0x7e>
  5db22c:	31 c9                	xor    %ecx,%ecx
  5db22e:	eb 10                	jmp    5db240 <crypto/internal/fips140/mldsa.lowBitsExceedBound+0x40>
  5db230:	48 8b 54 24 10       	mov    0x10(%rsp),%rdx
  5db235:	48 ff c2             	inc    %rdx
  5db238:	48 89 d1             	mov    %rdx,%rcx
  5db23b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  5db240:	48 81 f9 00 01 00 00 	cmp    $0x100,%rcx
  5db247:	7d 31                	jge    5db27a <crypto/internal/fips140/mldsa.lowBitsExceedBound+0x7a>
  5db249:	48 89 4c 24 10       	mov    %rcx,0x10(%rsp)
  5db24e:	8b 44 8c 30          	mov    0x30(%rsp,%rcx,4),%eax
  5db252:	e8 69 a6 ff ff       	call   5d58c0 <crypto/internal/fips140/mldsa.decompose88>
  5db257:	89 d9                	mov    %ebx,%ecx
  5db259:	f7 db                	neg    %ebx
  5db25b:	48 63 c9             	movslq %ecx,%rcx
  5db25e:	48 63 d3             	movslq %ebx,%rdx
  5db261:	48 85 c9             	test   %rcx,%rcx
  5db264:	48 0f 4d d1          	cmovge %rcx,%rdx
  5db268:	8b 8c 24 30 04 00 00 	mov    0x430(%rsp),%ecx
  5db26f:	39 d1                	cmp    %edx,%ecx
  5db271:	77 bd                	ja     5db230 <crypto/internal/fips140/mldsa.lowBitsExceedBound+0x30>
  5db273:	b8 01 00 00 00       	mov    $0x1,%eax
  5db278:	c9                   	leave
  5db279:	c3                   	ret
  5db27a:	31 c0                	xor    %eax,%eax
  5db27c:	c9                   	leave
  5db27d:	c3                   	ret
  5db27e:	48 8d 05 04 3e 01 00 	lea    0x13e04(%rip),%rax        # 5ef089 <go:string.*+0xf089>
  5db285:	bb 26 00 00 00       	mov    $0x26,%ebx
  5db28a:	e8 71 a2 ea ff       	call   485500 <runtime.convTstring>
  5db28f:	48 89 c3             	mov    %rax,%rbx
  5db292:	48 8d 05 4f f6 1e 00 	lea    0x1ef64f(%rip),%rax        # 7ca8e8 <type:*+0x2f340>
  5db299:	e8 a2 bc ea ff       	call   486f40 <runtime.gopanic>
  5db29e:	48 8b 54 24 18       	mov    0x18(%rsp),%rdx
  5db2a3:	48 ff c2             	inc    %rdx
  5db2a6:	48 89 d1             	mov    %rdx,%rcx
  5db2a9:	48 81 f9 00 01 00 00 	cmp    $0x100,%rcx
  5db2b0:	7d c8                	jge    5db27a <crypto/internal/fips140/mldsa.lowBitsExceedBound+0x7a>
  5db2b2:	48 89 4c 24 18       	mov    %rcx,0x18(%rsp)
  5db2b7:	8b 44 8c 30          	mov    0x30(%rsp,%rcx,4),%eax
  5db2bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  5db2c0:	e8 3b a4 ff ff       	call   5d5700 <crypto/internal/fips140/mldsa.decompose32>
  5db2c5:	89 d9                	mov    %ebx,%ecx
  5db2c7:	f7 db                	neg    %ebx
  5db2c9:	48 63 c9             	movslq %ecx,%rcx
  5db2cc:	48 63 d3             	movslq %ebx,%rdx
  5db2cf:	48 85 c9             	test   %rcx,%rcx
  5db2d2:	48 0f 4d d1          	cmovge %rcx,%rdx
  5db2d6:	8b 8c 24 30 04 00 00 	mov    0x430(%rsp),%ecx
  5db2dd:	0f 1f 00             	nopl   (%rax)
  5db2e0:	39 d1                	cmp    %edx,%ecx
  5db2e2:	77 ba                	ja     5db29e <crypto/internal/fips140/mldsa.lowBitsExceedBound+0x9e>
  5db2e4:	b8 01 00 00 00       	mov    $0x1,%eax
  5db2e9:	c9                   	leave
  5db2ea:	c3                   	ret
  5db2eb:	89 84 24 08 04 00 00 	mov    %eax,0x408(%rsp)
  5db2f2:	48 89 9c 24 10 04 00 	mov    %rbx,0x410(%rsp)
  5db2f9:	00 
  5db2fa:	48 89 8c 24 18 04 00 	mov    %rcx,0x418(%rsp)
  5db301:	00 
  5db302:	48 89 bc 24 20 04 00 	mov    %rdi,0x420(%rsp)
  5db309:	00 
  5db30a:	48 89 b4 24 28 04 00 	mov    %rsi,0x428(%rsp)
  5db311:	00 
  5db312:	4c 89 84 24 30 04 00 	mov    %r8,0x430(%rsp)
  5db319:	00 
  5db31a:	4c 89 8c 24 38 04 00 	mov    %r9,0x438(%rsp)
  5db321:	00 
  5db322:	4c 89 94 24 40 04 00 	mov    %r10,0x440(%rsp)
  5db329:	00 
  5db32a:	4c 89 9c 24 48 04 00 	mov    %r11,0x448(%rsp)
  5db331:	00 
  5db332:	e8 29 13 eb ff       	call   48c660 <runtime.morestack_noctxt.abi0>
  5db337:	8b 84 24 08 04 00 00 	mov    0x408(%rsp),%eax
  5db33e:	48 8b 9c 24 10 04 00 	mov    0x410(%rsp),%rbx
  5db345:	00 
  5db346:	48 8b 8c 24 18 04 00 	mov    0x418(%rsp),%rcx
  5db34d:	00 
  5db34e:	48 8b bc 24 20 04 00 	mov    0x420(%rsp),%rdi
  5db355:	00 
  5db356:	48 8b b4 24 28 04 00 	mov    0x428(%rsp),%rsi
  5db35d:	00 
  5db35e:	4c 8b 84 24 30 04 00 	mov    0x430(%rsp),%r8
  5db365:	00 
  5db366:	4c 8b 8c 24 38 04 00 	mov    0x438(%rsp),%r9
  5db36d:	00 
  5db36e:	4c 8b 94 24 40 04 00 	mov    0x440(%rsp),%r10
  5db375:	00 
  5db376:	4c 8b 9c 24 48 04 00 	mov    0x448(%rsp),%r11
  5db37d:	00 
  5db37e:	66 90                	xchg   %ax,%ax
  5db380:	e9 7b fe ff ff       	jmp    5db200 <crypto/internal/fips140/mldsa.lowBitsExceedBound>
