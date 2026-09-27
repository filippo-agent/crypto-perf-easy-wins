
/home/exedev/crypto-audit/round4/issues/carry-select/evidence/repro.test:     file format elf64-x86-64


Disassembly of section .text:

000000000053d520 <carryselect.EqTwoBorrow>:
  53d520:	48 89 c1             	mov    %rax,%rcx
  53d523:	48 29 d8             	sub    %rbx,%rax
  53d526:	0f 92 c2             	setb   %dl
  53d529:	0f b6 c2             	movzbl %dl,%eax
  53d52c:	48 29 cb             	sub    %rcx,%rbx
  53d52f:	0f 92 c1             	setb   %cl
  53d532:	0f b6 c9             	movzbl %cl,%ecx
  53d535:	48 09 c8             	or     %rcx,%rax
  53d538:	48 83 f0 01          	xor    $0x1,%rax
  53d53c:	c3                   	ret
  53d53d:	cc                   	int3
  53d53e:	cc                   	int3
  53d53f:	cc                   	int3

000000000053d540 <carryselect.EqXorBorrow>:
  53d540:	48 31 d8             	xor    %rbx,%rax
  53d543:	48 83 e8 01          	sub    $0x1,%rax
  53d547:	0f 92 c1             	setb   %cl
  53d54a:	0f b6 c1             	movzbl %cl,%eax
  53d54d:	c3                   	ret
  53d54e:	cc                   	int3
  53d54f:	cc                   	int3
  53d550:	cc                   	int3
  53d551:	cc                   	int3
  53d552:	cc                   	int3
  53d553:	cc                   	int3
  53d554:	cc                   	int3
  53d555:	cc                   	int3
  53d556:	cc                   	int3
  53d557:	cc                   	int3
  53d558:	cc                   	int3
  53d559:	cc                   	int3
  53d55a:	cc                   	int3
  53d55b:	cc                   	int3
  53d55c:	cc                   	int3
  53d55d:	cc                   	int3
  53d55e:	cc                   	int3
  53d55f:	cc                   	int3

000000000053d560 <carryselect.NegBorrow>:
  53d560:	48 29 d8             	sub    %rbx,%rax
  53d563:	0f 92 c1             	setb   %cl
  53d566:	0f b6 c1             	movzbl %cl,%eax
  53d569:	48 f7 d8             	neg    %rax
  53d56c:	c3                   	ret
  53d56d:	cc                   	int3
  53d56e:	cc                   	int3
  53d56f:	cc                   	int3
  53d570:	cc                   	int3
  53d571:	cc                   	int3
  53d572:	cc                   	int3
  53d573:	cc                   	int3
  53d574:	cc                   	int3
  53d575:	cc                   	int3
  53d576:	cc                   	int3
  53d577:	cc                   	int3
  53d578:	cc                   	int3
  53d579:	cc                   	int3
  53d57a:	cc                   	int3
  53d57b:	cc                   	int3
  53d57c:	cc                   	int3
  53d57d:	cc                   	int3
  53d57e:	cc                   	int3
  53d57f:	cc                   	int3

000000000053d580 <carryselect.NegBorrowSub>:
  53d580:	48 29 d8             	sub    %rbx,%rax
  53d583:	b8 00 00 00 00       	mov    $0x0,%eax
  53d588:	48 83 d8 00          	sbb    $0x0,%rax
  53d58c:	c3                   	ret
  53d58d:	cc                   	int3
  53d58e:	cc                   	int3
  53d58f:	cc                   	int3
  53d590:	cc                   	int3
  53d591:	cc                   	int3
  53d592:	cc                   	int3
  53d593:	cc                   	int3
  53d594:	cc                   	int3
  53d595:	cc                   	int3
  53d596:	cc                   	int3
  53d597:	cc                   	int3
  53d598:	cc                   	int3
  53d599:	cc                   	int3
  53d59a:	cc                   	int3
  53d59b:	cc                   	int3
  53d59c:	cc                   	int3
  53d59d:	cc                   	int3
  53d59e:	cc                   	int3
  53d59f:	cc                   	int3

000000000053d5a0 <carryselect.AssignMask>:
  53d5a0:	55                   	push   %rbp
  53d5a1:	48 89 e5             	mov    %rsp,%rbp
  53d5a4:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
  53d5a9:	48 89 7c 24 28       	mov    %rdi,0x28(%rsp)
  53d5ae:	49 39 d8             	cmp    %rbx,%r8
  53d5b1:	72 2a                	jb     53d5dd <carryselect.AssignMask+0x3d>
  53d5b3:	41 83 e1 01          	and    $0x1,%r9d
  53d5b7:	49 f7 d9             	neg    %r9
  53d5ba:	31 c9                	xor    %ecx,%ecx
  53d5bc:	eb 18                	jmp    53d5d6 <carryselect.AssignMask+0x36>
  53d5be:	48 8b 14 c8          	mov    (%rax,%rcx,8),%rdx
  53d5c2:	48 8b 34 cf          	mov    (%rdi,%rcx,8),%rsi
  53d5c6:	48 31 d6             	xor    %rdx,%rsi
  53d5c9:	4c 21 ce             	and    %r9,%rsi
  53d5cc:	48 31 d6             	xor    %rdx,%rsi
  53d5cf:	48 89 34 c8          	mov    %rsi,(%rax,%rcx,8)
  53d5d3:	48 ff c1             	inc    %rcx
  53d5d6:	48 39 cb             	cmp    %rcx,%rbx
  53d5d9:	7f e3                	jg     53d5be <carryselect.AssignMask+0x1e>
  53d5db:	5d                   	pop    %rbp
  53d5dc:	c3                   	ret
  53d5dd:	0f 1f 00             	nopl   (%rax)
  53d5e0:	e8 9b dc f4 ff       	call   48b280 <runtime.panicBounds>
  53d5e5:	90                   	nop
  53d5e6:	cc                   	int3
  53d5e7:	cc                   	int3
  53d5e8:	cc                   	int3
  53d5e9:	cc                   	int3
  53d5ea:	cc                   	int3
  53d5eb:	cc                   	int3
  53d5ec:	cc                   	int3
  53d5ed:	cc                   	int3
  53d5ee:	cc                   	int3
  53d5ef:	cc                   	int3
  53d5f0:	cc                   	int3
  53d5f1:	cc                   	int3
  53d5f2:	cc                   	int3
  53d5f3:	cc                   	int3
  53d5f4:	cc                   	int3
  53d5f5:	cc                   	int3
  53d5f6:	cc                   	int3
  53d5f7:	cc                   	int3
  53d5f8:	cc                   	int3
  53d5f9:	cc                   	int3
  53d5fa:	cc                   	int3
  53d5fb:	cc                   	int3
  53d5fc:	cc                   	int3
  53d5fd:	cc                   	int3
  53d5fe:	cc                   	int3
  53d5ff:	cc                   	int3

000000000053d600 <carryselect.AssignSelect>:
  53d600:	55                   	push   %rbp
  53d601:	48 89 e5             	mov    %rsp,%rbp
  53d604:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
  53d609:	48 89 7c 24 28       	mov    %rdi,0x28(%rsp)
  53d60e:	49 39 d8             	cmp    %rbx,%r8
  53d611:	72 25                	jb     53d638 <carryselect.AssignSelect+0x38>
  53d613:	31 c9                	xor    %ecx,%ecx
  53d615:	eb 1a                	jmp    53d631 <carryselect.AssignSelect+0x31>
  53d617:	48 8b 14 cf          	mov    (%rdi,%rcx,8),%rdx
  53d61b:	48 8b 34 c8          	mov    (%rax,%rcx,8),%rsi
  53d61f:	49 f7 c1 01 00 00 00 	test   $0x1,%r9
  53d626:	48 0f 45 f2          	cmovne %rdx,%rsi
  53d62a:	48 89 34 c8          	mov    %rsi,(%rax,%rcx,8)
  53d62e:	48 ff c1             	inc    %rcx
  53d631:	48 39 cb             	cmp    %rcx,%rbx
  53d634:	7f e1                	jg     53d617 <carryselect.AssignSelect+0x17>
  53d636:	5d                   	pop    %rbp
  53d637:	c3                   	ret
  53d638:	e8 43 dc f4 ff       	call   48b280 <runtime.panicBounds>
  53d63d:	90                   	nop
  53d63e:	cc                   	int3
  53d63f:	cc                   	int3

000000000053d640 <carryselect.SubLoop>:
  53d640:	55                   	push   %rbp
  53d641:	48 89 e5             	mov    %rsp,%rbp
  53d644:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
  53d649:	48 89 7c 24 28       	mov    %rdi,0x28(%rsp)
  53d64e:	49 39 d8             	cmp    %rbx,%r8
  53d651:	72 2b                	jb     53d67e <carryselect.SubLoop+0x3e>
  53d653:	31 c9                	xor    %ecx,%ecx
  53d655:	31 d2                	xor    %edx,%edx
  53d657:	eb 1c                	jmp    53d675 <carryselect.SubLoop+0x35>
  53d659:	48 8b 34 d0          	mov    (%rax,%rdx,8),%rsi
  53d65d:	4c 8b 04 d7          	mov    (%rdi,%rdx,8),%r8
  53d661:	f7 d9                	neg    %ecx
  53d663:	4c 19 c6             	sbb    %r8,%rsi
  53d666:	48 89 34 d0          	mov    %rsi,(%rax,%rdx,8)
  53d66a:	40 0f 92 c6          	setb   %sil
  53d66e:	40 0f b6 ce          	movzbl %sil,%ecx
  53d672:	48 ff c2             	inc    %rdx
  53d675:	48 39 d3             	cmp    %rdx,%rbx
  53d678:	7f df                	jg     53d659 <carryselect.SubLoop+0x19>
  53d67a:	89 c8                	mov    %ecx,%eax
  53d67c:	5d                   	pop    %rbp
  53d67d:	c3                   	ret
  53d67e:	66 90                	xchg   %ax,%ax
  53d680:	e8 fb db f4 ff       	call   48b280 <runtime.panicBounds>
  53d685:	90                   	nop
  53d686:	cc                   	int3
  53d687:	cc                   	int3
  53d688:	cc                   	int3
  53d689:	cc                   	int3
  53d68a:	cc                   	int3
  53d68b:	cc                   	int3
  53d68c:	cc                   	int3
  53d68d:	cc                   	int3
  53d68e:	cc                   	int3
  53d68f:	cc                   	int3
  53d690:	cc                   	int3
  53d691:	cc                   	int3
  53d692:	cc                   	int3
  53d693:	cc                   	int3
  53d694:	cc                   	int3
  53d695:	cc                   	int3
  53d696:	cc                   	int3
  53d697:	cc                   	int3
  53d698:	cc                   	int3
  53d699:	cc                   	int3
  53d69a:	cc                   	int3
  53d69b:	cc                   	int3
  53d69c:	cc                   	int3
  53d69d:	cc                   	int3
  53d69e:	cc                   	int3
  53d69f:	cc                   	int3

000000000053d6a0 <carryselect.Sub4>:
  53d6a0:	48 8b 08             	mov    (%rax),%rcx
  53d6a3:	48 8b 13             	mov    (%rbx),%rdx
  53d6a6:	48 29 d1             	sub    %rdx,%rcx
  53d6a9:	48 89 08             	mov    %rcx,(%rax)
  53d6ac:	48 8b 48 08          	mov    0x8(%rax),%rcx
  53d6b0:	48 8b 53 08          	mov    0x8(%rbx),%rdx
  53d6b4:	48 19 d1             	sbb    %rdx,%rcx
  53d6b7:	48 89 48 08          	mov    %rcx,0x8(%rax)
  53d6bb:	48 8b 48 10          	mov    0x10(%rax),%rcx
  53d6bf:	48 8b 53 10          	mov    0x10(%rbx),%rdx
  53d6c3:	48 19 d1             	sbb    %rdx,%rcx
  53d6c6:	48 89 48 10          	mov    %rcx,0x10(%rax)
  53d6ca:	48 8b 48 18          	mov    0x18(%rax),%rcx
  53d6ce:	48 8b 53 18          	mov    0x18(%rbx),%rdx
  53d6d2:	48 19 d1             	sbb    %rdx,%rcx
  53d6d5:	48 89 48 18          	mov    %rcx,0x18(%rax)
  53d6d9:	0f 92 c1             	setb   %cl
  53d6dc:	0f b6 c1             	movzbl %cl,%eax
  53d6df:	90                   	nop
  53d6e0:	c3                   	ret
  53d6e1:	cc                   	int3
  53d6e2:	cc                   	int3
  53d6e3:	cc                   	int3
  53d6e4:	cc                   	int3
  53d6e5:	cc                   	int3
  53d6e6:	cc                   	int3
  53d6e7:	cc                   	int3
  53d6e8:	cc                   	int3
  53d6e9:	cc                   	int3
  53d6ea:	cc                   	int3
  53d6eb:	cc                   	int3
  53d6ec:	cc                   	int3
  53d6ed:	cc                   	int3
  53d6ee:	cc                   	int3
  53d6ef:	cc                   	int3
  53d6f0:	cc                   	int3
  53d6f1:	cc                   	int3
  53d6f2:	cc                   	int3
  53d6f3:	cc                   	int3
  53d6f4:	cc                   	int3
  53d6f5:	cc                   	int3
  53d6f6:	cc                   	int3
  53d6f7:	cc                   	int3
  53d6f8:	cc                   	int3
  53d6f9:	cc                   	int3
  53d6fa:	cc                   	int3
  53d6fb:	cc                   	int3
  53d6fc:	cc                   	int3
  53d6fd:	cc                   	int3
  53d6fe:	cc                   	int3
  53d6ff:	cc                   	int3

000000000053d700 <carryselect.Shift51>:
  53d700:	48 c1 e3 0d          	shl    $0xd,%rbx
  53d704:	48 c1 e8 33          	shr    $0x33,%rax
  53d708:	48 09 d8             	or     %rbx,%rax
  53d70b:	c3                   	ret
  53d70c:	cc                   	int3
  53d70d:	cc                   	int3
  53d70e:	cc                   	int3
  53d70f:	cc                   	int3
  53d710:	cc                   	int3
  53d711:	cc                   	int3
  53d712:	cc                   	int3
  53d713:	cc                   	int3
  53d714:	cc                   	int3
  53d715:	cc                   	int3
  53d716:	cc                   	int3
  53d717:	cc                   	int3
  53d718:	cc                   	int3
  53d719:	cc                   	int3
  53d71a:	cc                   	int3
  53d71b:	cc                   	int3
  53d71c:	cc                   	int3
  53d71d:	cc                   	int3
  53d71e:	cc                   	int3
  53d71f:	cc                   	int3

000000000053d720 <carryselect.DotSchedule>:
  53d720:	4c 8d 64 24 e8       	lea    -0x18(%rsp),%r12
  53d725:	4d 3b 66 10          	cmp    0x10(%r14),%r12
  53d729:	0f 86 fd 01 00 00    	jbe    53d92c <carryselect.DotSchedule+0x20c>
  53d72f:	55                   	push   %rbp
  53d730:	48 89 e5             	mov    %rsp,%rbp
  53d733:	48 81 ec 90 00 00 00 	sub    $0x90,%rsp
  53d73a:	48 8d 8c 24 c8 00 00 	lea    0xc8(%rsp),%rcx
  53d741:	00 
  53d742:	44 0f 11 39          	movups %xmm15,(%rcx)
  53d746:	44 0f 11 79 10       	movups %xmm15,0x10(%rcx)
  53d74b:	44 0f 11 79 18       	movups %xmm15,0x18(%rcx)
  53d750:	48 8b 84 24 a0 00 00 	mov    0xa0(%rsp),%rax
  53d757:	00 
  53d758:	48 8b 8c 24 a8 00 00 	mov    0xa8(%rsp),%rcx
  53d75f:	00 
  53d760:	48 8b 94 24 b8 00 00 	mov    0xb8(%rsp),%rdx
  53d767:	00 
  53d768:	48 8b 9c 24 c0 00 00 	mov    0xc0(%rsp),%rbx
  53d76f:	00 
  53d770:	48 8b b4 24 b0 00 00 	mov    0xb0(%rsp),%rsi
  53d777:	00 
  53d778:	48 89 d7             	mov    %rdx,%rdi
  53d77b:	49 89 c0             	mov    %rax,%r8
  53d77e:	48 f7 e0             	mul    %rax
  53d781:	49 89 c1             	mov    %rax,%r9
  53d784:	48 89 d8             	mov    %rbx,%rax
  53d787:	49 89 d2             	mov    %rdx,%r10
  53d78a:	48 f7 e1             	mul    %rcx
  53d78d:	49 89 c3             	mov    %rax,%r11
  53d790:	48 89 f0             	mov    %rsi,%rax
  53d793:	49 89 d4             	mov    %rdx,%r12
  53d796:	48 f7 e7             	mul    %rdi
  53d799:	49 89 c5             	mov    %rax,%r13
  53d79c:	48 89 c8             	mov    %rcx,%rax
  53d79f:	49 89 d7             	mov    %rdx,%r15
  53d7a2:	49 f7 e0             	mul    %r8
  53d7a5:	48 89 94 24 80 00 00 	mov    %rdx,0x80(%rsp)
  53d7ac:	00 
  53d7ad:	48 89 44 24 40       	mov    %rax,0x40(%rsp)
  53d7b2:	48 89 f0             	mov    %rsi,%rax
  53d7b5:	48 f7 e3             	mul    %rbx
  53d7b8:	48 89 54 24 78       	mov    %rdx,0x78(%rsp)
  53d7bd:	48 89 44 24 38       	mov    %rax,0x38(%rsp)
  53d7c2:	48 89 f8             	mov    %rdi,%rax
  53d7c5:	48 f7 e0             	mul    %rax
  53d7c8:	48 89 54 24 70       	mov    %rdx,0x70(%rsp)
  53d7cd:	48 89 44 24 30       	mov    %rax,0x30(%rsp)
  53d7d2:	48 89 f0             	mov    %rsi,%rax
  53d7d5:	49 f7 e0             	mul    %r8
  53d7d8:	48 89 54 24 68       	mov    %rdx,0x68(%rsp)
  53d7dd:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
  53d7e2:	48 89 c8             	mov    %rcx,%rax
  53d7e5:	48 f7 e0             	mul    %rax
  53d7e8:	48 89 54 24 60       	mov    %rdx,0x60(%rsp)
  53d7ed:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
  53d7f2:	48 89 d8             	mov    %rbx,%rax
  53d7f5:	48 f7 e7             	mul    %rdi
  53d7f8:	48 89 54 24 58       	mov    %rdx,0x58(%rsp)
  53d7fd:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  53d802:	48 89 f8             	mov    %rdi,%rax
  53d805:	49 f7 e0             	mul    %r8
  53d808:	48 89 54 24 50       	mov    %rdx,0x50(%rsp)
  53d80d:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
  53d812:	48 89 f0             	mov    %rsi,%rax
  53d815:	48 f7 e1             	mul    %rcx
  53d818:	48 89 54 24 48       	mov    %rdx,0x48(%rsp)
  53d81d:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  53d822:	48 89 d8             	mov    %rbx,%rax
  53d825:	48 f7 e0             	mul    %rax
  53d828:	48 89 04 24          	mov    %rax,(%rsp)
  53d82c:	48 89 d8             	mov    %rbx,%rax
  53d82f:	48 89 d3             	mov    %rdx,%rbx
  53d832:	49 f7 e0             	mul    %r8
  53d835:	49 89 c0             	mov    %rax,%r8
  53d838:	48 89 f8             	mov    %rdi,%rax
  53d83b:	48 89 d7             	mov    %rdx,%rdi
  53d83e:	48 f7 e1             	mul    %rcx
  53d841:	48 89 c1             	mov    %rax,%rcx
  53d844:	48 89 f0             	mov    %rsi,%rax
  53d847:	48 89 d6             	mov    %rdx,%rsi
  53d84a:	48 f7 e0             	mul    %rax
  53d84d:	90                   	nop
  53d84e:	90                   	nop
  53d84f:	90                   	nop
  53d850:	4d 01 cb             	add    %r9,%r11
  53d853:	4d 11 d4             	adc    %r10,%r12
  53d856:	4d 01 dd             	add    %r11,%r13
  53d859:	4d 11 e7             	adc    %r12,%r15
  53d85c:	4c 8b 4c 24 38       	mov    0x38(%rsp),%r9
  53d861:	4c 8b 54 24 40       	mov    0x40(%rsp),%r10
  53d866:	4d 01 d1             	add    %r10,%r9
  53d869:	4c 8b 54 24 78       	mov    0x78(%rsp),%r10
  53d86e:	4c 8b 9c 24 80 00 00 	mov    0x80(%rsp),%r11
  53d875:	00 
  53d876:	4d 11 da             	adc    %r11,%r10
  53d879:	4c 8b 5c 24 30       	mov    0x30(%rsp),%r11
  53d87e:	4d 01 cb             	add    %r9,%r11
  53d881:	4c 8b 4c 24 70       	mov    0x70(%rsp),%r9
  53d886:	4d 11 d1             	adc    %r10,%r9
  53d889:	4d 31 df             	xor    %r11,%r15
  53d88c:	4c 8b 54 24 20       	mov    0x20(%rsp),%r10
  53d891:	4c 8b 5c 24 28       	mov    0x28(%rsp),%r11
  53d896:	4d 01 da             	add    %r11,%r10
  53d899:	4c 8b 5c 24 60       	mov    0x60(%rsp),%r11
  53d89e:	4c 8b 64 24 68       	mov    0x68(%rsp),%r12
  53d8a3:	4d 11 e3             	adc    %r12,%r11
  53d8a6:	4c 8b 64 24 18       	mov    0x18(%rsp),%r12
  53d8ab:	4d 01 d4             	add    %r10,%r12
  53d8ae:	4c 8b 54 24 58       	mov    0x58(%rsp),%r10
  53d8b3:	4d 11 da             	adc    %r11,%r10
  53d8b6:	4d 31 e1             	xor    %r12,%r9
  53d8b9:	4c 89 8c 24 88 00 00 	mov    %r9,0x88(%rsp)
  53d8c0:	00 
  53d8c1:	4c 8b 5c 24 08       	mov    0x8(%rsp),%r11
  53d8c6:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
  53d8cb:	4d 01 e3             	add    %r12,%r11
  53d8ce:	4c 8b 64 24 48       	mov    0x48(%rsp),%r12
  53d8d3:	4c 8b 4c 24 50       	mov    0x50(%rsp),%r9
  53d8d8:	4d 11 cc             	adc    %r9,%r12
  53d8db:	4c 8b 0c 24          	mov    (%rsp),%r9
  53d8df:	4d 01 d9             	add    %r11,%r9
  53d8e2:	4c 11 e3             	adc    %r12,%rbx
  53d8e5:	4d 31 ca             	xor    %r9,%r10
  53d8e8:	4c 01 c1             	add    %r8,%rcx
  53d8eb:	48 11 fe             	adc    %rdi,%rsi
  53d8ee:	48 01 c8             	add    %rcx,%rax
  53d8f1:	48 11 f2             	adc    %rsi,%rdx
  53d8f4:	4c 31 ea             	xor    %r13,%rdx
  53d8f7:	48 89 94 24 c8 00 00 	mov    %rdx,0xc8(%rsp)
  53d8fe:	00 
  53d8ff:	4c 89 bc 24 d0 00 00 	mov    %r15,0xd0(%rsp)
  53d906:	00 
  53d907:	48 8b 8c 24 88 00 00 	mov    0x88(%rsp),%rcx
  53d90e:	00 
  53d90f:	48 89 8c 24 d8 00 00 	mov    %rcx,0xd8(%rsp)
  53d916:	00 
  53d917:	4c 89 94 24 e0 00 00 	mov    %r10,0xe0(%rsp)
  53d91e:	00 
  53d91f:	48 31 c3             	xor    %rax,%rbx
  53d922:	48 89 9c 24 e8 00 00 	mov    %rbx,0xe8(%rsp)
  53d929:	00 
  53d92a:	c9                   	leave
  53d92b:	c3                   	ret
  53d92c:	e8 0f bd f4 ff       	call   489640 <runtime.morestack_noctxt.abi0>
  53d931:	e9 ea fd ff ff       	jmp    53d720 <carryselect.DotSchedule>
  53d936:	cc                   	int3
  53d937:	cc                   	int3
  53d938:	cc                   	int3
  53d939:	cc                   	int3
  53d93a:	cc                   	int3
  53d93b:	cc                   	int3
  53d93c:	cc                   	int3
  53d93d:	cc                   	int3
  53d93e:	cc                   	int3
  53d93f:	cc                   	int3

000000000053d940 <carryselect.row>:
  53d940:	90                   	nop
  53d941:	48 89 c2             	mov    %rax,%rdx
  53d944:	48 89 d8             	mov    %rbx,%rax
  53d947:	48 f7 e2             	mul    %rdx
  53d94a:	48 89 c3             	mov    %rax,%rbx
  53d94d:	48 89 f8             	mov    %rdi,%rax
  53d950:	48 89 d7             	mov    %rdx,%rdi
  53d953:	48 f7 e1             	mul    %rcx
  53d956:	48 89 c1             	mov    %rax,%rcx
  53d959:	4c 89 c0             	mov    %r8,%rax
  53d95c:	49 89 d0             	mov    %rdx,%r8
  53d95f:	48 f7 e6             	mul    %rsi
  53d962:	48 01 d9             	add    %rbx,%rcx
  53d965:	49 11 f8             	adc    %rdi,%r8
  53d968:	48 01 c8             	add    %rcx,%rax
  53d96b:	4c 11 c2             	adc    %r8,%rdx
  53d96e:	48 89 d3             	mov    %rdx,%rbx
  53d971:	c3                   	ret
  53d972:	cc                   	int3
  53d973:	cc                   	int3
  53d974:	cc                   	int3
  53d975:	cc                   	int3
  53d976:	cc                   	int3
  53d977:	cc                   	int3
  53d978:	cc                   	int3
  53d979:	cc                   	int3
  53d97a:	cc                   	int3
  53d97b:	cc                   	int3
  53d97c:	cc                   	int3
  53d97d:	cc                   	int3
  53d97e:	cc                   	int3
  53d97f:	cc                   	int3

000000000053d980 <carryselect.DotBarrier>:
  53d980:	49 3b 66 10          	cmp    0x10(%r14),%rsp
  53d984:	0f 86 9c 01 00 00    	jbe    53db26 <carryselect.DotBarrier+0x1a6>
  53d98a:	55                   	push   %rbp
  53d98b:	48 89 e5             	mov    %rsp,%rbp
  53d98e:	48 83 ec 70          	sub    $0x70,%rsp
  53d992:	48 8d 94 24 a8 00 00 	lea    0xa8(%rsp),%rdx
  53d999:	00 
  53d99a:	44 0f 11 3a          	movups %xmm15,(%rdx)
  53d99e:	44 0f 11 7a 10       	movups %xmm15,0x10(%rdx)
  53d9a3:	44 0f 11 7a 18       	movups %xmm15,0x18(%rdx)
  53d9a8:	48 8b 9c 24 80 00 00 	mov    0x80(%rsp),%rbx
  53d9af:	00 
  53d9b0:	48 8b 8c 24 88 00 00 	mov    0x88(%rsp),%rcx
  53d9b7:	00 
  53d9b8:	48 8b bc 24 a0 00 00 	mov    0xa0(%rsp),%rdi
  53d9bf:	00 
  53d9c0:	48 8b b4 24 90 00 00 	mov    0x90(%rsp),%rsi
  53d9c7:	00 
  53d9c8:	4c 8b 84 24 98 00 00 	mov    0x98(%rsp),%r8
  53d9cf:	00 
  53d9d0:	48 89 d8             	mov    %rbx,%rax
  53d9d3:	e8 68 ff ff ff       	call   53d940 <carryselect.row>
  53d9d8:	48 89 44 24 68       	mov    %rax,0x68(%rsp)
  53d9dd:	48 89 5c 24 60       	mov    %rbx,0x60(%rsp)
  53d9e2:	48 8b 84 24 80 00 00 	mov    0x80(%rsp),%rax
  53d9e9:	00 
  53d9ea:	48 8b 9c 24 88 00 00 	mov    0x88(%rsp),%rbx
  53d9f1:	00 
  53d9f2:	48 8b 8c 24 90 00 00 	mov    0x90(%rsp),%rcx
  53d9f9:	00 
  53d9fa:	48 8b bc 24 a0 00 00 	mov    0xa0(%rsp),%rdi
  53da01:	00 
  53da02:	4c 8b 84 24 98 00 00 	mov    0x98(%rsp),%r8
  53da09:	00 
  53da0a:	4c 89 c6             	mov    %r8,%rsi
  53da0d:	e8 2e ff ff ff       	call   53d940 <carryselect.row>
  53da12:	48 89 44 24 58       	mov    %rax,0x58(%rsp)
  53da17:	48 89 5c 24 50       	mov    %rbx,0x50(%rsp)
  53da1c:	48 8b 84 24 80 00 00 	mov    0x80(%rsp),%rax
  53da23:	00 
  53da24:	48 8b 9c 24 90 00 00 	mov    0x90(%rsp),%rbx
  53da2b:	00 
  53da2c:	48 8b bc 24 88 00 00 	mov    0x88(%rsp),%rdi
  53da33:	00 
  53da34:	48 8b b4 24 98 00 00 	mov    0x98(%rsp),%rsi
  53da3b:	00 
  53da3c:	4c 8b 84 24 a0 00 00 	mov    0xa0(%rsp),%r8
  53da43:	00 
  53da44:	48 89 f9             	mov    %rdi,%rcx
  53da47:	e8 f4 fe ff ff       	call   53d940 <carryselect.row>
  53da4c:	48 89 44 24 48       	mov    %rax,0x48(%rsp)
  53da51:	48 89 5c 24 40       	mov    %rbx,0x40(%rsp)
  53da56:	48 8b 84 24 80 00 00 	mov    0x80(%rsp),%rax
  53da5d:	00 
  53da5e:	48 8b 9c 24 98 00 00 	mov    0x98(%rsp),%rbx
  53da65:	00 
  53da66:	48 8b 8c 24 88 00 00 	mov    0x88(%rsp),%rcx
  53da6d:	00 
  53da6e:	48 8b bc 24 90 00 00 	mov    0x90(%rsp),%rdi
  53da75:	00 
  53da76:	4c 8b 84 24 a0 00 00 	mov    0xa0(%rsp),%r8
  53da7d:	00 
  53da7e:	4c 89 c6             	mov    %r8,%rsi
  53da81:	e8 ba fe ff ff       	call   53d940 <carryselect.row>
  53da86:	48 89 44 24 38       	mov    %rax,0x38(%rsp)
  53da8b:	48 89 5c 24 30       	mov    %rbx,0x30(%rsp)
  53da90:	48 8b 84 24 80 00 00 	mov    0x80(%rsp),%rax
  53da97:	00 
  53da98:	48 8b 9c 24 a0 00 00 	mov    0xa0(%rsp),%rbx
  53da9f:	00 
  53daa0:	48 8b 8c 24 88 00 00 	mov    0x88(%rsp),%rcx
  53daa7:	00 
  53daa8:	48 8b bc 24 98 00 00 	mov    0x98(%rsp),%rdi
  53daaf:	00 
  53dab0:	4c 8b 84 24 90 00 00 	mov    0x90(%rsp),%r8
  53dab7:	00 
  53dab8:	4c 89 c6             	mov    %r8,%rsi
  53dabb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  53dac0:	e8 7b fe ff ff       	call   53d940 <carryselect.row>
  53dac5:	48 8b 54 24 68       	mov    0x68(%rsp),%rdx
  53daca:	48 31 da             	xor    %rbx,%rdx
  53dacd:	48 89 94 24 a8 00 00 	mov    %rdx,0xa8(%rsp)
  53dad4:	00 
  53dad5:	48 8b 54 24 60       	mov    0x60(%rsp),%rdx
  53dada:	4c 8b 4c 24 58       	mov    0x58(%rsp),%r9
  53dadf:	4c 31 ca             	xor    %r9,%rdx
  53dae2:	48 89 94 24 b0 00 00 	mov    %rdx,0xb0(%rsp)
  53dae9:	00 
  53daea:	48 8b 54 24 50       	mov    0x50(%rsp),%rdx
  53daef:	4c 8b 4c 24 48       	mov    0x48(%rsp),%r9
  53daf4:	4c 31 ca             	xor    %r9,%rdx
  53daf7:	48 89 94 24 b8 00 00 	mov    %rdx,0xb8(%rsp)
  53dafe:	00 
  53daff:	48 8b 54 24 40       	mov    0x40(%rsp),%rdx
  53db04:	4c 8b 4c 24 38       	mov    0x38(%rsp),%r9
  53db09:	4c 31 ca             	xor    %r9,%rdx
  53db0c:	48 89 94 24 c0 00 00 	mov    %rdx,0xc0(%rsp)
  53db13:	00 
  53db14:	48 8b 54 24 30       	mov    0x30(%rsp),%rdx
  53db19:	48 31 c2             	xor    %rax,%rdx
  53db1c:	48 89 94 24 c8 00 00 	mov    %rdx,0xc8(%rsp)
  53db23:	00 
  53db24:	c9                   	leave
  53db25:	c3                   	ret
  53db26:	e8 15 bb f4 ff       	call   489640 <runtime.morestack_noctxt.abi0>
  53db2b:	e9 50 fe ff ff       	jmp    53d980 <carryselect.DotBarrier>
