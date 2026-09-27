
/home/exedev/crypto-audit/round4/bin/rsa-sign.test:     file format elf64-x86-64


Disassembly of section .text:

00000000006653e0 <crypto/internal/fips140/bigmod.(*Nat).maybeSubtractModulus>:
  6653e0:	4c 8d a4 24 40 ff ff 	lea    -0xc0(%rsp),%r12
  6653e7:	ff 
  6653e8:	4d 3b 66 10          	cmp    0x10(%r14),%r12
  6653ec:	0f 86 34 02 00 00    	jbe    665626 <crypto/internal/fips140/bigmod.(*Nat).maybeSubtractModulus+0x246>
  6653f2:	55                   	push   %rbp
  6653f3:	48 89 e5             	mov    %rsp,%rbp
  6653f6:	48 81 ec 38 01 00 00 	sub    $0x138,%rsp
  6653fd:	48 89 84 24 48 01 00 	mov    %rax,0x148(%rsp)
  665404:	00 
  665405:	48 89 9c 24 50 01 00 	mov    %rbx,0x150(%rsp)
  66540c:	00 
  66540d:	48 89 8c 24 58 01 00 	mov    %rcx,0x158(%rsp)
  665414:	00 
  665415:	90                   	nop
  665416:	48 8d 54 24 20       	lea    0x20(%rsp),%rdx
  66541b:	be 04 00 00 00       	mov    $0x4,%esi
  665420:	44 0f 11 3a          	movups %xmm15,(%rdx)
  665424:	44 0f 11 7a 10       	movups %xmm15,0x10(%rdx)
  665429:	44 0f 11 7a 20       	movups %xmm15,0x20(%rdx)
  66542e:	44 0f 11 7a 30       	movups %xmm15,0x30(%rdx)
  665433:	48 83 c2 40          	add    $0x40,%rdx
  665437:	ff ce                	dec    %esi
  665439:	75 e5                	jne    665420 <crypto/internal/fips140/bigmod.(*Nat).maybeSubtractModulus+0x40>
  66543b:	66 44 0f d6 bc 24 28 	movq   %xmm15,0x128(%rsp)
  665442:	01 00 00 
  665445:	48 c7 84 24 30 01 00 	movq   $0x20,0x130(%rsp)
  66544c:	00 20 00 00 00 
  665451:	48 8d 54 24 20       	lea    0x20(%rsp),%rdx
  665456:	48 89 94 24 20 01 00 	mov    %rdx,0x120(%rsp)
  66545d:	00 
  66545e:	48 8b 70 08          	mov    0x8(%rax),%rsi
  665462:	48 89 74 24 18       	mov    %rsi,0x18(%rsp)
  665467:	90                   	nop
  665468:	48 83 fe 20          	cmp    $0x20,%rsi
  66546c:	7f 68                	jg     6654d6 <crypto/internal/fips140/bigmod.(*Nat).maybeSubtractModulus+0xf6>
  66546e:	48 85 f6             	test   %rsi,%rsi
  665471:	bf 00 00 00 00       	mov    $0x0,%edi
  665476:	49 89 f0             	mov    %rsi,%r8
  665479:	48 0f 4c f7          	cmovl  %rdi,%rsi
  66547d:	0f 1f 00             	nopl   (%rax)
  665480:	48 83 fe 20          	cmp    $0x20,%rsi
  665484:	0f 87 8c 01 00 00    	ja     665616 <crypto/internal/fips140/bigmod.(*Nat).maybeSubtractModulus+0x236>
  66548a:	48 85 f6             	test   %rsi,%rsi
  66548d:	74 2c                	je     6654bb <crypto/internal/fips140/bigmod.(*Nat).maybeSubtractModulus+0xdb>
  66548f:	48 c1 e6 03          	shl    $0x3,%rsi
  665493:	48 89 d0             	mov    %rdx,%rax
  665496:	48 89 f3             	mov    %rsi,%rbx
  665499:	e8 c2 b8 e2 ff       	call   490d60 <runtime.memclrNoHeapPointers>
  66549e:	48 8b 84 24 48 01 00 	mov    0x148(%rsp),%rax
  6654a5:	00 
  6654a6:	48 8b 8c 24 58 01 00 	mov    0x158(%rsp),%rcx
  6654ad:	00 
  6654ae:	48 8b 9c 24 50 01 00 	mov    0x150(%rsp),%rbx
  6654b5:	00 
  6654b6:	4c 8b 44 24 18       	mov    0x18(%rsp),%r8
  6654bb:	48 8b 94 24 30 01 00 	mov    0x130(%rsp),%rdx
  6654c2:	00 
  6654c3:	4c 39 c2             	cmp    %r8,%rdx
  6654c6:	0f 82 45 01 00 00    	jb     665611 <crypto/internal/fips140/bigmod.(*Nat).maybeSubtractModulus+0x231>
  6654cc:	4c 89 84 24 28 01 00 	mov    %r8,0x128(%rsp)
  6654d3:	00 
  6654d4:	eb 47                	jmp    66551d <crypto/internal/fips140/bigmod.(*Nat).maybeSubtractModulus+0x13d>
  6654d6:	48 8d 05 63 43 2f 00 	lea    0x2f4363(%rip),%rax        # 959840 <type:*+0x41868>
  6654dd:	48 89 f3             	mov    %rsi,%rbx
  6654e0:	48 89 d9             	mov    %rbx,%rcx
  6654e3:	e8 78 66 e2 ff       	call   48bb60 <runtime.makeslice>
  6654e8:	48 8b 54 24 18       	mov    0x18(%rsp),%rdx
  6654ed:	48 89 94 24 28 01 00 	mov    %rdx,0x128(%rsp)
  6654f4:	00 
  6654f5:	48 89 94 24 30 01 00 	mov    %rdx,0x130(%rsp)
  6654fc:	00 
  6654fd:	48 89 84 24 20 01 00 	mov    %rax,0x120(%rsp)
  665504:	00 
  665505:	48 8b 84 24 48 01 00 	mov    0x148(%rsp),%rax
  66550c:	00 
  66550d:	48 8b 8c 24 58 01 00 	mov    0x158(%rsp),%rcx
  665514:	00 
  665515:	48 8b 9c 24 50 01 00 	mov    0x150(%rsp),%rbx
  66551c:	00 
  66551d:	48 8b 94 24 20 01 00 	mov    0x120(%rsp),%rdx
  665524:	00 
  665525:	48 8b b4 24 28 01 00 	mov    0x128(%rsp),%rsi
  66552c:	00 
  66552d:	48 8b 38             	mov    (%rax),%rdi
  665530:	4c 8b 40 08          	mov    0x8(%rax),%r8
  665534:	4c 39 c6             	cmp    %r8,%rsi
  665537:	49 0f 4f f0          	cmovg  %r8,%rsi
  66553b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  665540:	48 39 fa             	cmp    %rdi,%rdx
  665543:	74 2a                	je     66556f <crypto/internal/fips140/bigmod.(*Nat).maybeSubtractModulus+0x18f>
  665545:	48 c1 e6 03          	shl    $0x3,%rsi
  665549:	48 89 d0             	mov    %rdx,%rax
  66554c:	48 89 fb             	mov    %rdi,%rbx
  66554f:	48 89 f1             	mov    %rsi,%rcx
  665552:	e8 09 bb e2 ff       	call   491060 <runtime.memmove>
  665557:	48 8b 84 24 48 01 00 	mov    0x148(%rsp),%rax
  66555e:	00 
  66555f:	48 8b 8c 24 58 01 00 	mov    0x158(%rsp),%rcx
  665566:	00 
  665567:	48 8b 9c 24 50 01 00 	mov    0x150(%rsp),%rbx
  66556e:	00 
  66556f:	48 8b 09             	mov    (%rcx),%rcx
  665572:	48 8b 94 24 28 01 00 	mov    0x128(%rsp),%rdx
  665579:	00 
  66557a:	48 8b 71 10          	mov    0x10(%rcx),%rsi
  66557e:	66 90                	xchg   %ax,%ax
  665580:	48 39 d6             	cmp    %rdx,%rsi
  665583:	0f 82 83 00 00 00    	jb     66560c <crypto/internal/fips140/bigmod.(*Nat).maybeSubtractModulus+0x22c>
  665589:	48 8b b4 24 20 01 00 	mov    0x120(%rsp),%rsi
  665590:	00 
  665591:	48 8b 09             	mov    (%rcx),%rcx
  665594:	31 ff                	xor    %edi,%edi
  665596:	45 31 c0             	xor    %r8d,%r8d
  665599:	eb 1c                	jmp    6655b7 <crypto/internal/fips140/bigmod.(*Nat).maybeSubtractModulus+0x1d7>
  66559b:	4e 8b 0c c6          	mov    (%rsi,%r8,8),%r9
  66559f:	4e 8b 14 c1          	mov    (%rcx,%r8,8),%r10
  6655a3:	f7 df                	neg    %edi
  6655a5:	4d 19 d1             	sbb    %r10,%r9
  6655a8:	4e 89 0c c6          	mov    %r9,(%rsi,%r8,8)
  6655ac:	41 0f 92 c1          	setb   %r9b
  6655b0:	41 0f b6 f9          	movzbl %r9b,%edi
  6655b4:	49 ff c0             	inc    %r8
  6655b7:	49 39 d0             	cmp    %rdx,%r8
  6655ba:	7c df                	jl     66559b <crypto/internal/fips140/bigmod.(*Nat).maybeSubtractModulus+0x1bb>
  6655bc:	48 83 f7 01          	xor    $0x1,%rdi
  6655c0:	48 8b 48 08          	mov    0x8(%rax),%rcx
  6655c4:	48 8b 94 24 30 01 00 	mov    0x130(%rsp),%rdx
  6655cb:	00 
  6655cc:	48 09 df             	or     %rbx,%rdi
  6655cf:	90                   	nop
  6655d0:	48 39 ca             	cmp    %rcx,%rdx
  6655d3:	72 32                	jb     665607 <crypto/internal/fips140/bigmod.(*Nat).maybeSubtractModulus+0x227>
  6655d5:	48 8b 00             	mov    (%rax),%rax
  6655d8:	48 8b 94 24 20 01 00 	mov    0x120(%rsp),%rdx
  6655df:	00 
  6655e0:	90                   	nop
  6655e1:	48 f7 df             	neg    %rdi
  6655e4:	31 db                	xor    %ebx,%ebx
  6655e6:	eb 18                	jmp    665600 <crypto/internal/fips140/bigmod.(*Nat).maybeSubtractModulus+0x220>
  6655e8:	48 8b 34 d8          	mov    (%rax,%rbx,8),%rsi
  6655ec:	4c 8b 04 da          	mov    (%rdx,%rbx,8),%r8
  6655f0:	49 31 f0             	xor    %rsi,%r8
  6655f3:	49 21 f8             	and    %rdi,%r8
  6655f6:	49 31 f0             	xor    %rsi,%r8
  6655f9:	4c 89 04 d8          	mov    %r8,(%rax,%rbx,8)
  6655fd:	48 ff c3             	inc    %rbx
  665600:	48 39 cb             	cmp    %rcx,%rbx
  665603:	7c e3                	jl     6655e8 <crypto/internal/fips140/bigmod.(*Nat).maybeSubtractModulus+0x208>
  665605:	c9                   	leave
  665606:	c3                   	ret
  665607:	e8 b4 b6 e2 ff       	call   490cc0 <runtime.panicBounds>
  66560c:	e8 af b6 e2 ff       	call   490cc0 <runtime.panicBounds>
  665611:	e8 aa b6 e2 ff       	call   490cc0 <runtime.panicBounds>
  665616:	b8 20 00 00 00       	mov    $0x20,%eax
  66561b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  665620:	e8 9b b6 e2 ff       	call   490cc0 <runtime.panicBounds>
  665625:	90                   	nop
  665626:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  66562b:	48 89 5c 24 10       	mov    %rbx,0x10(%rsp)
  665630:	48 89 4c 24 18       	mov    %rcx,0x18(%rsp)
  665635:	e8 c6 98 e2 ff       	call   48ef00 <runtime.morestack_noctxt.abi0>
  66563a:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
  66563f:	48 8b 5c 24 10       	mov    0x10(%rsp),%rbx
  665644:	48 8b 4c 24 18       	mov    0x18(%rsp),%rcx
  665649:	e9 92 fd ff ff       	jmp    6653e0 <crypto/internal/fips140/bigmod.(*Nat).maybeSubtractModulus>

Disassembly of section .plt:
