
/home/exedev/crypto-audit/round4/bin/mldsa-sign.test:     file format elf64-x86-64


Disassembly of section .text:

00000000005d43c0 <crypto/internal/fips140/mldsa.inverseNTT>:
  5d43c0:	55                   	push   %rbp
  5d43c1:	48 89 e5             	mov    %rsp,%rbp
  5d43c4:	48 8d 84 24 10 04 00 	lea    0x410(%rsp),%rax
  5d43cb:	00 
  5d43cc:	b9 10 00 00 00       	mov    $0x10,%ecx
  5d43d1:	44 0f 11 38          	movups %xmm15,(%rax)
  5d43d5:	44 0f 11 78 10       	movups %xmm15,0x10(%rax)
  5d43da:	44 0f 11 78 20       	movups %xmm15,0x20(%rax)
  5d43df:	44 0f 11 78 30       	movups %xmm15,0x30(%rax)
  5d43e4:	48 83 c0 40          	add    $0x40,%rax
  5d43e8:	ff c9                	dec    %ecx
  5d43ea:	75 e5                	jne    5d43d1 <crypto/internal/fips140/mldsa.inverseNTT+0x11>
  5d43ec:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  5d43f1:	31 c9                	xor    %ecx,%ecx
  5d43f3:	eb 4b                	jmp    5d4440 <crypto/internal/fips140/mldsa.inverseNTT+0x80>
  5d43f5:	0f b6 d0             	movzbl %al,%edx
  5d43f8:	48 8d 1d 81 76 23 00 	lea    0x237681(%rip),%rbx        # 80ba80 <crypto/internal/fips140/mldsa.zetas>
  5d43ff:	8b 14 93             	mov    (%rbx,%rdx,4),%edx
  5d4402:	8b 74 8c 10          	mov    0x10(%rsp,%rcx,4),%esi
  5d4406:	8b 7c 8c 14          	mov    0x14(%rsp,%rcx,4),%edi
  5d440a:	01 f7                	add    %esi,%edi
  5d440c:	89 7c 8c 10          	mov    %edi,0x10(%rsp,%rcx,4)
  5d4410:	8b 7c 8c 14          	mov    0x14(%rsp,%rcx,4),%edi
  5d4414:	29 f7                	sub    %esi,%edi
  5d4416:	8d b7 00 01 e0 7f    	lea    0x7fe00100(%rdi),%esi
  5d441c:	48 0f af d6          	imul   %rsi,%rdx
  5d4420:	69 f2 ff df 7f fc    	imul   $0xfc7fdfff,%edx,%esi
  5d4426:	48 69 f6 01 e0 7f 00 	imul   $0x7fe001,%rsi,%rsi
  5d442d:	48 01 f2             	add    %rsi,%rdx
  5d4430:	48 c1 ea 20          	shr    $0x20,%rdx
  5d4434:	89 54 8c 14          	mov    %edx,0x14(%rsp,%rcx,4)
  5d4438:	48 83 c1 02          	add    $0x2,%rcx
  5d443c:	ff c8                	dec    %eax
  5d443e:	66 90                	xchg   %ax,%ax
  5d4440:	48 81 f9 00 01 00 00 	cmp    $0x100,%rcx
  5d4447:	7c ac                	jl     5d43f5 <crypto/internal/fips140/mldsa.inverseNTT+0x35>
  5d4449:	31 c9                	xor    %ecx,%ecx
  5d444b:	eb 7f                	jmp    5d44cc <crypto/internal/fips140/mldsa.inverseNTT+0x10c>
  5d444d:	0f b6 d0             	movzbl %al,%edx
  5d4450:	48 8d 1d 29 76 23 00 	lea    0x237629(%rip),%rbx        # 80ba80 <crypto/internal/fips140/mldsa.zetas>
  5d4457:	8b 14 93             	mov    (%rbx,%rdx,4),%edx
  5d445a:	8b 74 8c 10          	mov    0x10(%rsp,%rcx,4),%esi
  5d445e:	8b 7c 8c 18          	mov    0x18(%rsp,%rcx,4),%edi
  5d4462:	01 f7                	add    %esi,%edi
  5d4464:	89 7c 8c 10          	mov    %edi,0x10(%rsp,%rcx,4)
  5d4468:	8b 7c 8c 18          	mov    0x18(%rsp,%rcx,4),%edi
  5d446c:	29 f7                	sub    %esi,%edi
  5d446e:	8d b7 00 01 e0 7f    	lea    0x7fe00100(%rdi),%esi
  5d4474:	48 0f af f2          	imul   %rdx,%rsi
  5d4478:	69 fe ff df 7f fc    	imul   $0xfc7fdfff,%esi,%edi
  5d447e:	48 69 ff 01 e0 7f 00 	imul   $0x7fe001,%rdi,%rdi
  5d4485:	48 01 fe             	add    %rdi,%rsi
  5d4488:	48 c1 ee 20          	shr    $0x20,%rsi
  5d448c:	89 74 8c 18          	mov    %esi,0x18(%rsp,%rcx,4)
  5d4490:	8b 74 8c 14          	mov    0x14(%rsp,%rcx,4),%esi
  5d4494:	8b 7c 8c 1c          	mov    0x1c(%rsp,%rcx,4),%edi
  5d4498:	01 f7                	add    %esi,%edi
  5d449a:	89 7c 8c 14          	mov    %edi,0x14(%rsp,%rcx,4)
  5d449e:	8b 7c 8c 1c          	mov    0x1c(%rsp,%rcx,4),%edi
  5d44a2:	29 f7                	sub    %esi,%edi
  5d44a4:	8d b7 00 01 e0 7f    	lea    0x7fe00100(%rdi),%esi
  5d44aa:	48 0f af d6          	imul   %rsi,%rdx
  5d44ae:	69 f2 ff df 7f fc    	imul   $0xfc7fdfff,%edx,%esi
  5d44b4:	48 69 f6 01 e0 7f 00 	imul   $0x7fe001,%rsi,%rsi
  5d44bb:	48 01 f2             	add    %rsi,%rdx
  5d44be:	48 c1 ea 20          	shr    $0x20,%rdx
  5d44c2:	89 54 8c 1c          	mov    %edx,0x1c(%rsp,%rcx,4)
  5d44c6:	48 83 c1 04          	add    $0x4,%rcx
  5d44ca:	ff c8                	dec    %eax
  5d44cc:	48 81 f9 00 01 00 00 	cmp    $0x100,%rcx
  5d44d3:	0f 8c 74 ff ff ff    	jl     5d444d <crypto/internal/fips140/mldsa.inverseNTT+0x8d>
  5d44d9:	31 c9                	xor    %ecx,%ecx
  5d44db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  5d44e0:	e9 eb 00 00 00       	jmp    5d45d0 <crypto/internal/fips140/mldsa.inverseNTT+0x210>
  5d44e5:	0f b6 d0             	movzbl %al,%edx
  5d44e8:	48 8d 1d 91 75 23 00 	lea    0x237591(%rip),%rbx        # 80ba80 <crypto/internal/fips140/mldsa.zetas>
  5d44ef:	8b 14 93             	mov    (%rbx,%rdx,4),%edx
  5d44f2:	8b 74 8c 10          	mov    0x10(%rsp,%rcx,4),%esi
  5d44f6:	8b 7c 8c 20          	mov    0x20(%rsp,%rcx,4),%edi
  5d44fa:	01 f7                	add    %esi,%edi
  5d44fc:	89 7c 8c 10          	mov    %edi,0x10(%rsp,%rcx,4)
  5d4500:	8b 7c 8c 20          	mov    0x20(%rsp,%rcx,4),%edi
  5d4504:	29 f7                	sub    %esi,%edi
  5d4506:	8d b7 00 01 e0 7f    	lea    0x7fe00100(%rdi),%esi
  5d450c:	48 0f af f2          	imul   %rdx,%rsi
  5d4510:	69 fe ff df 7f fc    	imul   $0xfc7fdfff,%esi,%edi
  5d4516:	48 69 ff 01 e0 7f 00 	imul   $0x7fe001,%rdi,%rdi
  5d451d:	48 01 fe             	add    %rdi,%rsi
  5d4520:	48 c1 ee 20          	shr    $0x20,%rsi
  5d4524:	89 74 8c 20          	mov    %esi,0x20(%rsp,%rcx,4)
  5d4528:	8b 74 8c 14          	mov    0x14(%rsp,%rcx,4),%esi
  5d452c:	8b 7c 8c 24          	mov    0x24(%rsp,%rcx,4),%edi
  5d4530:	01 f7                	add    %esi,%edi
  5d4532:	89 7c 8c 14          	mov    %edi,0x14(%rsp,%rcx,4)
  5d4536:	8b 7c 8c 24          	mov    0x24(%rsp,%rcx,4),%edi
  5d453a:	29 f7                	sub    %esi,%edi
  5d453c:	8d b7 00 01 e0 7f    	lea    0x7fe00100(%rdi),%esi
  5d4542:	48 0f af f2          	imul   %rdx,%rsi
  5d4546:	69 fe ff df 7f fc    	imul   $0xfc7fdfff,%esi,%edi
  5d454c:	48 69 ff 01 e0 7f 00 	imul   $0x7fe001,%rdi,%rdi
  5d4553:	48 01 fe             	add    %rdi,%rsi
  5d4556:	48 c1 ee 20          	shr    $0x20,%rsi
  5d455a:	89 74 8c 24          	mov    %esi,0x24(%rsp,%rcx,4)
  5d455e:	8b 74 8c 18          	mov    0x18(%rsp,%rcx,4),%esi
  5d4562:	8b 7c 8c 28          	mov    0x28(%rsp,%rcx,4),%edi
  5d4566:	01 f7                	add    %esi,%edi
  5d4568:	89 7c 8c 18          	mov    %edi,0x18(%rsp,%rcx,4)
  5d456c:	8b 7c 8c 28          	mov    0x28(%rsp,%rcx,4),%edi
  5d4570:	29 f7                	sub    %esi,%edi
  5d4572:	8d b7 00 01 e0 7f    	lea    0x7fe00100(%rdi),%esi
  5d4578:	48 0f af f2          	imul   %rdx,%rsi
  5d457c:	69 fe ff df 7f fc    	imul   $0xfc7fdfff,%esi,%edi
  5d4582:	48 69 ff 01 e0 7f 00 	imul   $0x7fe001,%rdi,%rdi
  5d4589:	48 01 fe             	add    %rdi,%rsi
  5d458c:	48 c1 ee 20          	shr    $0x20,%rsi
  5d4590:	89 74 8c 28          	mov    %esi,0x28(%rsp,%rcx,4)
  5d4594:	8b 74 8c 1c          	mov    0x1c(%rsp,%rcx,4),%esi
  5d4598:	8b 7c 8c 2c          	mov    0x2c(%rsp,%rcx,4),%edi
  5d459c:	01 f7                	add    %esi,%edi
  5d459e:	89 7c 8c 1c          	mov    %edi,0x1c(%rsp,%rcx,4)
  5d45a2:	8b 7c 8c 2c          	mov    0x2c(%rsp,%rcx,4),%edi
  5d45a6:	29 f7                	sub    %esi,%edi
  5d45a8:	8d b7 00 01 e0 7f    	lea    0x7fe00100(%rdi),%esi
  5d45ae:	48 0f af f2          	imul   %rdx,%rsi
  5d45b2:	69 d6 ff df 7f fc    	imul   $0xfc7fdfff,%esi,%edx
  5d45b8:	48 69 d2 01 e0 7f 00 	imul   $0x7fe001,%rdx,%rdx
  5d45bf:	48 01 f2             	add    %rsi,%rdx
  5d45c2:	48 c1 ea 20          	shr    $0x20,%rdx
  5d45c6:	89 54 8c 2c          	mov    %edx,0x2c(%rsp,%rcx,4)
  5d45ca:	48 83 c1 08          	add    $0x8,%rcx
  5d45ce:	ff c8                	dec    %eax
  5d45d0:	48 81 f9 00 01 00 00 	cmp    $0x100,%rcx
  5d45d7:	0f 8c 08 ff ff ff    	jl     5d44e5 <crypto/internal/fips140/mldsa.inverseNTT+0x125>
  5d45dd:	b9 08 00 00 00       	mov    $0x8,%ecx
  5d45e2:	eb 03                	jmp    5d45e7 <crypto/internal/fips140/mldsa.inverseNTT+0x227>
  5d45e4:	48 01 c9             	add    %rcx,%rcx
  5d45e7:	48 81 f9 00 01 00 00 	cmp    $0x100,%rcx
  5d45ee:	0f 8d 24 01 00 00    	jge    5d4718 <crypto/internal/fips140/mldsa.inverseNTT+0x358>
  5d45f4:	31 d2                	xor    %edx,%edx
  5d45f6:	eb 08                	jmp    5d4600 <crypto/internal/fips140/mldsa.inverseNTT+0x240>
  5d45f8:	ff c8                	dec    %eax
  5d45fa:	4c 89 c2             	mov    %r8,%rdx
  5d45fd:	0f 1f 00             	nopl   (%rax)
  5d4600:	48 81 fa 00 01 00 00 	cmp    $0x100,%rdx
  5d4607:	7d db                	jge    5d45e4 <crypto/internal/fips140/mldsa.inverseNTT+0x224>
  5d4609:	0f b6 d8             	movzbl %al,%ebx
  5d460c:	48 8d 34 0a          	lea    (%rdx,%rcx,1),%rsi
  5d4610:	48 8d 3d 69 74 23 00 	lea    0x237469(%rip),%rdi        # 80ba80 <crypto/internal/fips140/mldsa.zetas>
  5d4617:	8b 1c 9f             	mov    (%rdi,%rbx,4),%ebx
  5d461a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  5d4620:	48 81 fe 00 01 00 00 	cmp    $0x100,%rsi
  5d4627:	0f 87 81 01 00 00    	ja     5d47ae <crypto/internal/fips140/mldsa.inverseNTT+0x3ee>
  5d462d:	48 39 f2             	cmp    %rsi,%rdx
  5d4630:	0f 87 73 01 00 00    	ja     5d47a9 <crypto/internal/fips140/mldsa.inverseNTT+0x3e9>
  5d4636:	4c 8d 04 4a          	lea    (%rdx,%rcx,2),%r8
  5d463a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  5d4640:	49 81 f8 00 01 00 00 	cmp    $0x100,%r8
  5d4647:	0f 87 52 01 00 00    	ja     5d479f <crypto/internal/fips140/mldsa.inverseNTT+0x3df>
  5d464d:	49 39 f0             	cmp    %rsi,%r8
  5d4650:	0f 82 44 01 00 00    	jb     5d479a <crypto/internal/fips140/mldsa.inverseNTT+0x3da>
  5d4656:	4c 8d 8c 0a 00 ff ff 	lea    -0x100(%rdx,%rcx,1),%r9
  5d465d:	ff 
  5d465e:	48 c1 e6 02          	shl    $0x2,%rsi
  5d4662:	49 c1 f9 3f          	sar    $0x3f,%r9
  5d4666:	4c 21 ce             	and    %r9,%rsi
  5d4669:	48 8d 54 94 10       	lea    0x10(%rsp,%rdx,4),%rdx
  5d466e:	48 8d 74 34 10       	lea    0x10(%rsp,%rsi,1),%rsi
  5d4673:	45 31 c9             	xor    %r9d,%r9d
  5d4676:	eb 48                	jmp    5d46c0 <crypto/internal/fips140/mldsa.inverseNTT+0x300>
  5d4678:	46 8b 54 8a 04       	mov    0x4(%rdx,%r9,4),%r10d
  5d467d:	46 8b 5c 8e 04       	mov    0x4(%rsi,%r9,4),%r11d
  5d4682:	45 01 d3             	add    %r10d,%r11d
  5d4685:	46 89 5c 8a 04       	mov    %r11d,0x4(%rdx,%r9,4)
  5d468a:	46 8b 5c 8e 04       	mov    0x4(%rsi,%r9,4),%r11d
  5d468f:	45 29 d3             	sub    %r10d,%r11d
  5d4692:	45 8d 93 00 01 e0 7f 	lea    0x7fe00100(%r11),%r10d
  5d4699:	4c 0f af d3          	imul   %rbx,%r10
  5d469d:	45 69 da ff df 7f fc 	imul   $0xfc7fdfff,%r10d,%r11d
  5d46a4:	4d 69 db 01 e0 7f 00 	imul   $0x7fe001,%r11,%r11
  5d46ab:	4d 01 da             	add    %r11,%r10
  5d46ae:	49 c1 ea 20          	shr    $0x20,%r10
  5d46b2:	46 89 54 8e 04       	mov    %r10d,0x4(%rsi,%r9,4)
  5d46b7:	49 83 c1 02          	add    $0x2,%r9
  5d46bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  5d46c0:	49 39 c9             	cmp    %rcx,%r9
  5d46c3:	0f 8d 2f ff ff ff    	jge    5d45f8 <crypto/internal/fips140/mldsa.inverseNTT+0x238>
  5d46c9:	0f 83 c6 00 00 00    	jae    5d4795 <crypto/internal/fips140/mldsa.inverseNTT+0x3d5>
  5d46cf:	46 8b 14 8a          	mov    (%rdx,%r9,4),%r10d
  5d46d3:	46 8b 1c 8e          	mov    (%rsi,%r9,4),%r11d
  5d46d7:	45 01 d3             	add    %r10d,%r11d
  5d46da:	46 89 1c 8a          	mov    %r11d,(%rdx,%r9,4)
  5d46de:	46 8b 1c 8e          	mov    (%rsi,%r9,4),%r11d
  5d46e2:	45 29 d3             	sub    %r10d,%r11d
  5d46e5:	45 8d 93 00 01 e0 7f 	lea    0x7fe00100(%r11),%r10d
  5d46ec:	4d 8d 59 01          	lea    0x1(%r9),%r11
  5d46f0:	4c 0f af d3          	imul   %rbx,%r10
  5d46f4:	45 69 e2 ff df 7f fc 	imul   $0xfc7fdfff,%r10d,%r12d
  5d46fb:	4d 69 e4 01 e0 7f 00 	imul   $0x7fe001,%r12,%r12
  5d4702:	4d 01 e2             	add    %r12,%r10
  5d4705:	49 c1 ea 20          	shr    $0x20,%r10
  5d4709:	46 89 14 8e          	mov    %r10d,(%rsi,%r9,4)
  5d470d:	4c 39 d9             	cmp    %r11,%rcx
  5d4710:	0f 87 62 ff ff ff    	ja     5d4678 <crypto/internal/fips140/mldsa.inverseNTT+0x2b8>
  5d4716:	eb 78                	jmp    5d4790 <crypto/internal/fips140/mldsa.inverseNTT+0x3d0>
  5d4718:	48 8d 84 24 10 04 00 	lea    0x410(%rsp),%rax
  5d471f:	00 
  5d4720:	b9 10 00 00 00       	mov    $0x10,%ecx
  5d4725:	44 0f 11 38          	movups %xmm15,(%rax)
  5d4729:	44 0f 11 78 10       	movups %xmm15,0x10(%rax)
  5d472e:	44 0f 11 78 20       	movups %xmm15,0x20(%rax)
  5d4733:	44 0f 11 78 30       	movups %xmm15,0x30(%rax)
  5d4738:	48 83 c0 40          	add    $0x40,%rax
  5d473c:	0f 1f 40 00          	nopl   0x0(%rax)
  5d4740:	ff c9                	dec    %ecx
  5d4742:	75 e1                	jne    5d4725 <crypto/internal/fips140/mldsa.inverseNTT+0x365>
  5d4744:	31 c0                	xor    %eax,%eax
  5d4746:	eb 3e                	jmp    5d4786 <crypto/internal/fips140/mldsa.inverseNTT+0x3c6>
  5d4748:	8b 4c 84 10          	mov    0x10(%rsp,%rax,4),%ecx
  5d474c:	48 69 c9 fe 3f 00 00 	imul   $0x3ffe,%rcx,%rcx
  5d4753:	69 d1 ff df 7f fc    	imul   $0xfc7fdfff,%ecx,%edx
  5d4759:	48 69 d2 01 e0 7f 00 	imul   $0x7fe001,%rdx,%rdx
  5d4760:	48 01 d1             	add    %rdx,%rcx
  5d4763:	48 c1 e9 20          	shr    $0x20,%rcx
  5d4767:	48 8d 91 ff 1f 80 ff 	lea    -0x7fe001(%rcx),%rdx
  5d476e:	90                   	nop
  5d476f:	90                   	nop
  5d4770:	90                   	nop
  5d4771:	48 81 f9 00 e0 7f 00 	cmp    $0x7fe000,%rcx
  5d4778:	48 0f 4e d1          	cmovle %rcx,%rdx
  5d477c:	89 94 84 10 04 00 00 	mov    %edx,0x410(%rsp,%rax,4)
  5d4783:	48 ff c0             	inc    %rax
  5d4786:	48 3d 00 01 00 00    	cmp    $0x100,%rax
  5d478c:	7c ba                	jl     5d4748 <crypto/internal/fips140/mldsa.inverseNTT+0x388>
  5d478e:	5d                   	pop    %rbp
  5d478f:	c3                   	ret
  5d4790:	e8 0b 9b eb ff       	call   48e2a0 <runtime.panicBounds>
  5d4795:	e8 06 9b eb ff       	call   48e2a0 <runtime.panicBounds>
  5d479a:	e8 01 9b eb ff       	call   48e2a0 <runtime.panicBounds>
  5d479f:	b8 00 01 00 00       	mov    $0x100,%eax
  5d47a4:	e8 f7 9a eb ff       	call   48e2a0 <runtime.panicBounds>
  5d47a9:	e8 f2 9a eb ff       	call   48e2a0 <runtime.panicBounds>
  5d47ae:	b8 00 01 00 00       	mov    $0x100,%eax
  5d47b3:	e8 e8 9a eb ff       	call   48e2a0 <runtime.panicBounds>
  5d47b8:	90                   	nop
