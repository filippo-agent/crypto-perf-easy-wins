
/home/exedev/crypto-audit/round4/bin/mldsa-sign.test:     file format elf64-x86-64


Disassembly of section .text:

00000000005d47c0 <crypto/internal/fips140/mldsa.parseSampleNTT>:
  5d47c0:	55                   	push   %rbp
  5d47c1:	48 89 e5             	mov    %rsp,%rbp
  5d47c4:	48 89 4c 24 20       	mov    %rcx,0x20(%rsp)
  5d47c9:	84 00                	test   %al,(%rax)
  5d47cb:	e9 98 00 00 00       	jmp    5d4868 <crypto/internal/fips140/mldsa.parseSampleNTT+0xa8>
  5d47d0:	48 8b 11             	mov    (%rcx),%rdx
  5d47d3:	49 89 d0             	mov    %rdx,%r8
  5d47d6:	81 e2 ff ff 7f 00    	and    $0x7fffff,%edx
  5d47dc:	4d 89 c1             	mov    %r8,%r9
  5d47df:	49 c1 e8 18          	shr    $0x18,%r8
  5d47e3:	4d 89 c2             	mov    %r8,%r10
  5d47e6:	41 81 e0 ff ff 7f 00 	and    $0x7fffff,%r8d
  5d47ed:	81 c2 ff 1f 80 ff    	add    $0xff801fff,%edx
  5d47f3:	c1 ea 1f             	shr    $0x1f,%edx
  5d47f6:	48 01 da             	add    %rbx,%rdx
  5d47f9:	41 81 c0 ff 1f 80 ff 	add    $0xff801fff,%r8d
  5d4800:	41 c1 e8 1f          	shr    $0x1f,%r8d
  5d4804:	41 81 e1 ff ff 7f 00 	and    $0x7fffff,%r9d
  5d480b:	4d 69 c9 ff 19 24 00 	imul   $0x2419ff,%r9,%r9
  5d4812:	41 81 e2 ff ff 7f 00 	and    $0x7fffff,%r10d
  5d4819:	4d 69 d2 ff 19 24 00 	imul   $0x2419ff,%r10,%r10
  5d4820:	45 69 d9 ff df 7f fc 	imul   $0xfc7fdfff,%r9d,%r11d
  5d4827:	4d 69 db 01 e0 7f 00 	imul   $0x7fe001,%r11,%r11
  5d482e:	4d 01 d9             	add    %r11,%r9
  5d4831:	49 c1 e9 20          	shr    $0x20,%r9
  5d4835:	45 69 da ff df 7f fc 	imul   $0xfc7fdfff,%r10d,%r11d
  5d483c:	4d 69 db 01 e0 7f 00 	imul   $0x7fe001,%r11,%r11
  5d4843:	4d 01 da             	add    %r11,%r10
  5d4846:	49 c1 ea 20          	shr    $0x20,%r10
  5d484a:	90                   	nop
  5d484b:	49 01 d0             	add    %rdx,%r8
  5d484e:	90                   	nop
  5d484f:	90                   	nop
  5d4850:	44 89 0c 98          	mov    %r9d,(%rax,%rbx,4)
  5d4854:	90                   	nop
  5d4855:	44 89 14 90          	mov    %r10d,(%rax,%rdx,4)
  5d4859:	48 83 c6 fa          	add    $0xfffffffffffffffa,%rsi
  5d485d:	48 83 c1 06          	add    $0x6,%rcx
  5d4861:	48 83 c7 fa          	add    $0xfffffffffffffffa,%rdi
  5d4865:	4c 89 c3             	mov    %r8,%rbx
  5d4868:	48 83 ff 08          	cmp    $0x8,%rdi
  5d486c:	7c 32                	jl     5d48a0 <crypto/internal/fips140/mldsa.parseSampleNTT+0xe0>
  5d486e:	48 81 fb fe 00 00 00 	cmp    $0xfe,%rbx
  5d4875:	0f 86 55 ff ff ff    	jbe    5d47d0 <crypto/internal/fips140/mldsa.parseSampleNTT+0x10>
  5d487b:	eb 23                	jmp    5d48a0 <crypto/internal/fips140/mldsa.parseSampleNTT+0xe0>
  5d487d:	41 81 e1 ff ff 7f 00 	and    $0x7fffff,%r9d
  5d4884:	41 81 c1 ff 1f 80 ff 	add    $0xff801fff,%r9d
  5d488b:	41 c1 e9 1f          	shr    $0x1f,%r9d
  5d488f:	48 c1 ea 20          	shr    $0x20,%rdx
  5d4893:	89 14 98             	mov    %edx,(%rax,%rbx,4)
  5d4896:	4c 01 cb             	add    %r9,%rbx
  5d4899:	48 83 c7 fd          	add    $0xfffffffffffffffd,%rdi
  5d489d:	4c 89 c6             	mov    %r8,%rsi
  5d48a0:	48 85 ff             	test   %rdi,%rdi
  5d48a3:	74 6a                	je     5d490f <crypto/internal/fips140/mldsa.parseSampleNTT+0x14f>
  5d48a5:	48 81 fb 00 01 00 00 	cmp    $0x100,%rbx
  5d48ac:	7d 61                	jge    5d490f <crypto/internal/fips140/mldsa.parseSampleNTT+0x14f>
  5d48ae:	48 83 ff 01          	cmp    $0x1,%rdi
  5d48b2:	76 71                	jbe    5d4925 <crypto/internal/fips140/mldsa.parseSampleNTT+0x165>
  5d48b4:	48 83 ff 02          	cmp    $0x2,%rdi
  5d48b8:	76 64                	jbe    5d491e <crypto/internal/fips140/mldsa.parseSampleNTT+0x15e>
  5d48ba:	0f b7 11             	movzwl (%rcx),%edx
  5d48bd:	44 0f b6 41 02       	movzbl 0x2(%rcx),%r8d
  5d48c2:	41 c1 e0 10          	shl    $0x10,%r8d
  5d48c6:	44 09 c2             	or     %r8d,%edx
  5d48c9:	48 83 c6 fd          	add    $0xfffffffffffffffd,%rsi
  5d48cd:	49 89 f0             	mov    %rsi,%r8
  5d48d0:	48 f7 de             	neg    %rsi
  5d48d3:	48 c1 fe 3f          	sar    $0x3f,%rsi
  5d48d7:	83 e6 03             	and    $0x3,%esi
  5d48da:	41 89 d1             	mov    %edx,%r9d
  5d48dd:	81 e2 ff ff 7f 00    	and    $0x7fffff,%edx
  5d48e3:	48 69 d2 ff 19 24 00 	imul   $0x2419ff,%rdx,%rdx
  5d48ea:	44 69 d2 ff df 7f fc 	imul   $0xfc7fdfff,%edx,%r10d
  5d48f1:	4d 69 d2 01 e0 7f 00 	imul   $0x7fe001,%r10,%r10
  5d48f8:	48 01 f1             	add    %rsi,%rcx
  5d48fb:	90                   	nop
  5d48fc:	4c 01 d2             	add    %r10,%rdx
  5d48ff:	90                   	nop
  5d4900:	48 81 fb 00 01 00 00 	cmp    $0x100,%rbx
  5d4907:	0f 82 70 ff ff ff    	jb     5d487d <crypto/internal/fips140/mldsa.parseSampleNTT+0xbd>
  5d490d:	eb 05                	jmp    5d4914 <crypto/internal/fips140/mldsa.parseSampleNTT+0x154>
  5d490f:	48 89 d8             	mov    %rbx,%rax
  5d4912:	5d                   	pop    %rbp
  5d4913:	c3                   	ret
  5d4914:	b8 00 01 00 00       	mov    $0x100,%eax
  5d4919:	e8 82 99 eb ff       	call   48e2a0 <runtime.panicBounds>
  5d491e:	66 90                	xchg   %ax,%ax
  5d4920:	e8 7b 99 eb ff       	call   48e2a0 <runtime.panicBounds>
  5d4925:	e8 76 99 eb ff       	call   48e2a0 <runtime.panicBounds>
  5d492a:	90                   	nop
