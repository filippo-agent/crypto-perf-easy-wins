
/home/exedev/crypto-audit/round4/bin/hmac-warm.test:     file format elf64-x86-64


Disassembly of section .text:

00000000006424a0 <crypto/internal/fips140/sha512.(*Digest).checkSum>:
  6424a0:	4c 8d 64 24 c8       	lea    -0x38(%rsp),%r12
  6424a5:	4d 3b 66 10          	cmp    0x10(%r14),%r12
  6424a9:	0f 86 cd 01 00 00    	jbe    64267c <crypto/internal/fips140/sha512.(*Digest).checkSum+0x1dc>
  6424af:	55                   	push   %rbp
  6424b0:	48 89 e5             	mov    %rsp,%rbp
  6424b3:	48 81 ec b0 00 00 00 	sub    $0xb0,%rsp
  6424ba:	48 8d 94 24 c0 00 00 	lea    0xc0(%rsp),%rdx
  6424c1:	00 
  6424c2:	44 0f 11 3a          	movups %xmm15,(%rdx)
  6424c6:	44 0f 11 7a 10       	movups %xmm15,0x10(%rdx)
  6424cb:	44 0f 11 7a 20       	movups %xmm15,0x20(%rdx)
  6424d0:	44 0f 11 7a 30       	movups %xmm15,0x30(%rdx)
  6424d5:	48 8b 88 c8 00 00 00 	mov    0xc8(%rax),%rcx
  6424dc:	48 8d 5c 24 20       	lea    0x20(%rsp),%rbx
  6424e1:	44 0f 11 3b          	movups %xmm15,(%rbx)
  6424e5:	44 0f 11 7b 10       	movups %xmm15,0x10(%rbx)
  6424ea:	44 0f 11 7b 20       	movups %xmm15,0x20(%rbx)
  6424ef:	44 0f 11 7b 30       	movups %xmm15,0x30(%rbx)
  6424f4:	44 0f 11 7b 40       	movups %xmm15,0x40(%rbx)
  6424f9:	44 0f 11 7b 50       	movups %xmm15,0x50(%rbx)
  6424fe:	44 0f 11 7b 60       	movups %xmm15,0x60(%rbx)
  642503:	44 0f 11 7b 70       	movups %xmm15,0x70(%rbx)
  642508:	44 0f 11 bb 80 00 00 	movups %xmm15,0x80(%rbx)
  64250f:	00 
  642510:	c6 44 24 20 80       	movb   $0x80,0x20(%rsp)
  642515:	48 89 ca             	mov    %rcx,%rdx
  642518:	83 e2 7f             	and    $0x7f,%edx
  64251b:	48 8d 72 90          	lea    -0x70(%rdx),%rsi
  64251f:	48 f7 de             	neg    %rsi
  642522:	4c 8d 82 10 ff ff ff 	lea    -0xf0(%rdx),%r8
  642529:	49 f7 d8             	neg    %r8
  64252c:	48 83 fa 70          	cmp    $0x70,%rdx
  642530:	4c 0f 42 c6          	cmovb  %rsi,%r8
  642534:	49 8d 50 10          	lea    0x10(%r8),%rdx
  642538:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  64253f:	00 
  642540:	48 81 fa 90 00 00 00 	cmp    $0x90,%rdx
  642547:	0f 87 24 01 00 00    	ja     642671 <crypto/internal/fips140/sha512.(*Digest).checkSum+0x1d1>
  64254d:	49 8d 70 08          	lea    0x8(%r8),%rsi
  642551:	48 39 d6             	cmp    %rdx,%rsi
  642554:	0f 87 12 01 00 00    	ja     64266c <crypto/internal/fips140/sha512.(*Digest).checkSum+0x1cc>
  64255a:	48 89 84 24 00 01 00 	mov    %rax,0x100(%rsp)
  642561:	00 
  642562:	48 c1 e1 03          	shl    $0x3,%rcx
  642566:	49 81 c0 78 ff ff ff 	add    $0xffffffffffffff78,%r8
  64256d:	49 c1 f8 3f          	sar    $0x3f,%r8
  642571:	4c 21 c6             	and    %r8,%rsi
  642574:	48 0f c9             	bswap  %rcx
  642577:	90                   	nop
  642578:	48 89 4c 34 20       	mov    %rcx,0x20(%rsp,%rsi,1)
  64257d:	48 89 d1             	mov    %rdx,%rcx
  642580:	bf 90 00 00 00       	mov    $0x90,%edi
  642585:	e8 56 fa ff ff       	call   641fe0 <crypto/internal/fips140/sha512.(*Digest).Write>
  64258a:	48 8b 94 24 00 01 00 	mov    0x100(%rsp),%rdx
  642591:	00 
  642592:	48 83 ba c0 00 00 00 	cmpq   $0x0,0xc0(%rdx)
  642599:	00 
  64259a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  6425a0:	0f 85 a6 00 00 00    	jne    64264c <crypto/internal/fips140/sha512.(*Digest).checkSum+0x1ac>
  6425a6:	48 8d 84 24 c0 00 00 	lea    0xc0(%rsp),%rax
  6425ad:	00 
  6425ae:	44 0f 11 38          	movups %xmm15,(%rax)
  6425b2:	44 0f 11 78 10       	movups %xmm15,0x10(%rax)
  6425b7:	44 0f 11 78 20       	movups %xmm15,0x20(%rax)
  6425bc:	44 0f 11 78 30       	movups %xmm15,0x30(%rax)
  6425c1:	48 8b 02             	mov    (%rdx),%rax
  6425c4:	48 0f c8             	bswap  %rax
  6425c7:	90                   	nop
  6425c8:	48 89 84 24 c0 00 00 	mov    %rax,0xc0(%rsp)
  6425cf:	00 
  6425d0:	48 8b 42 08          	mov    0x8(%rdx),%rax
  6425d4:	48 0f c8             	bswap  %rax
  6425d7:	90                   	nop
  6425d8:	48 89 84 24 c8 00 00 	mov    %rax,0xc8(%rsp)
  6425df:	00 
  6425e0:	48 8b 42 10          	mov    0x10(%rdx),%rax
  6425e4:	48 0f c8             	bswap  %rax
  6425e7:	90                   	nop
  6425e8:	48 89 84 24 d0 00 00 	mov    %rax,0xd0(%rsp)
  6425ef:	00 
  6425f0:	48 8b 42 18          	mov    0x18(%rdx),%rax
  6425f4:	48 0f c8             	bswap  %rax
  6425f7:	90                   	nop
  6425f8:	48 89 84 24 d8 00 00 	mov    %rax,0xd8(%rsp)
  6425ff:	00 
  642600:	48 8b 42 20          	mov    0x20(%rdx),%rax
  642604:	48 0f c8             	bswap  %rax
  642607:	90                   	nop
  642608:	48 89 84 24 e0 00 00 	mov    %rax,0xe0(%rsp)
  64260f:	00 
  642610:	48 8b 42 28          	mov    0x28(%rdx),%rax
  642614:	48 0f c8             	bswap  %rax
  642617:	90                   	nop
  642618:	48 89 84 24 e8 00 00 	mov    %rax,0xe8(%rsp)
  64261f:	00 
  642620:	48 83 ba d0 00 00 00 	cmpq   $0x30,0xd0(%rdx)
  642627:	30 
  642628:	74 20                	je     64264a <crypto/internal/fips140/sha512.(*Digest).checkSum+0x1aa>
  64262a:	48 8b 42 30          	mov    0x30(%rdx),%rax
  64262e:	48 0f c8             	bswap  %rax
  642631:	90                   	nop
  642632:	48 89 84 24 f0 00 00 	mov    %rax,0xf0(%rsp)
  642639:	00 
  64263a:	48 8b 42 38          	mov    0x38(%rdx),%rax
  64263e:	48 0f c8             	bswap  %rax
  642641:	90                   	nop
  642642:	48 89 84 24 f8 00 00 	mov    %rax,0xf8(%rsp)
  642649:	00 
  64264a:	c9                   	leave
  64264b:	c3                   	ret
  64264c:	48 8d 05 25 b2 00 00 	lea    0xb225(%rip),%rax        # 64d878 <go:string.*+0x1878>
  642653:	bb 09 00 00 00       	mov    $0x9,%ebx
  642658:	e8 03 6b e4 ff       	call   489160 <runtime.convTstring>
  64265d:	48 89 c3             	mov    %rax,%rbx
  642660:	48 8d 05 01 88 25 00 	lea    0x258801(%rip),%rax        # 89ae68 <type:*+0x3db60>
  642667:	e8 34 8b e4 ff       	call   48b1a0 <runtime.gopanic>
  64266c:	e8 2f 01 e5 ff       	call   4927a0 <runtime.panicBounds>
  642671:	b8 90 00 00 00       	mov    $0x90,%eax
  642676:	e8 25 01 e5 ff       	call   4927a0 <runtime.panicBounds>
  64267b:	90                   	nop
  64267c:	48 89 44 24 48       	mov    %rax,0x48(%rsp)
  642681:	e8 da e4 e4 ff       	call   490b60 <runtime.morestack_noctxt.abi0>
  642686:	48 8b 44 24 48       	mov    0x48(%rsp),%rax
  64268b:	e9 10 fe ff ff       	jmp    6424a0 <crypto/internal/fips140/sha512.(*Digest).checkSum>
