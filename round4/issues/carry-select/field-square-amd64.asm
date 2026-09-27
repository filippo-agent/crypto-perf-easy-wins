
/home/exedev/crypto-audit/round4/bin/ed25519-verify.test:     file format elf64-x86-64


Disassembly of section .text:

00000000005f8420 <crypto/internal/fips140/edwards25519/field.feSquare>:
  5f8420:	4c 8d 64 24 e8       	lea    -0x18(%rsp),%r12
  5f8425:	4d 3b 66 10          	cmp    0x10(%r14),%r12
  5f8429:	0f 86 ee 02 00 00    	jbe    5f871d <crypto/internal/fips140/edwards25519/field.feSquare+0x2fd>
  5f842f:	55                   	push   %rbp
  5f8430:	48 89 e5             	mov    %rsp,%rbp
  5f8433:	48 81 ec 90 00 00 00 	sub    $0x90,%rsp
  5f843a:	48 89 84 24 a0 00 00 	mov    %rax,0xa0(%rsp)
  5f8441:	00 
  5f8442:	48 8b 0b             	mov    (%rbx),%rcx
  5f8445:	48 8b 53 08          	mov    0x8(%rbx),%rdx
  5f8449:	48 8b 73 10          	mov    0x10(%rbx),%rsi
  5f844d:	48 8b 7b 18          	mov    0x18(%rbx),%rdi
  5f8451:	48 8b 5b 20          	mov    0x20(%rbx),%rbx
  5f8455:	4c 8d 04 09          	lea    (%rcx,%rcx,1),%r8
  5f8459:	4c 8d 0c 12          	lea    (%rdx,%rdx,1),%r9
  5f845d:	48 89 c8             	mov    %rcx,%rax
  5f8460:	48 89 d1             	mov    %rdx,%rcx
  5f8463:	48 f7 e0             	mul    %rax
  5f8466:	4c 8d 1c 1b          	lea    (%rbx,%rbx,1),%r11
  5f846a:	4c 8d 24 3f          	lea    (%rdi,%rdi,1),%r12
  5f846e:	49 89 c5             	mov    %rax,%r13
  5f8471:	4c 89 c0             	mov    %r8,%rax
  5f8474:	49 89 d7             	mov    %rdx,%r15
  5f8477:	48 f7 e1             	mul    %rcx
  5f847a:	48 89 94 24 88 00 00 	mov    %rdx,0x88(%rsp)
  5f8481:	00 
  5f8482:	48 89 44 24 50       	mov    %rax,0x50(%rsp)
  5f8487:	4c 89 c0             	mov    %r8,%rax
  5f848a:	48 f7 e6             	mul    %rsi
  5f848d:	48 89 94 24 80 00 00 	mov    %rdx,0x80(%rsp)
  5f8494:	00 
  5f8495:	48 89 44 24 38       	mov    %rax,0x38(%rsp)
  5f849a:	48 89 c8             	mov    %rcx,%rax
  5f849d:	48 f7 e0             	mul    %rax
  5f84a0:	48 89 54 24 78       	mov    %rdx,0x78(%rsp)
  5f84a5:	48 89 44 24 30       	mov    %rax,0x30(%rsp)
  5f84aa:	4c 89 c0             	mov    %r8,%rax
  5f84ad:	48 f7 e7             	mul    %rdi
  5f84b0:	48 89 54 24 70       	mov    %rdx,0x70(%rsp)
  5f84b5:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
  5f84ba:	4c 89 c8             	mov    %r9,%rax
  5f84bd:	48 f7 e6             	mul    %rsi
  5f84c0:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  5f84c5:	4c 89 c0             	mov    %r8,%rax
  5f84c8:	49 89 d0             	mov    %rdx,%r8
  5f84cb:	48 f7 e3             	mul    %rbx
  5f84ce:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
  5f84d3:	4c 89 c8             	mov    %r9,%rax
  5f84d6:	49 89 d1             	mov    %rdx,%r9
  5f84d9:	48 f7 e7             	mul    %rdi
  5f84dc:	48 89 54 24 68       	mov    %rdx,0x68(%rsp)
  5f84e1:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  5f84e6:	48 89 f0             	mov    %rsi,%rax
  5f84e9:	48 f7 e0             	mul    %rax
  5f84ec:	48 89 54 24 60       	mov    %rdx,0x60(%rsp)
  5f84f1:	48 89 04 24          	mov    %rax,(%rsp)
  5f84f5:	4c 8d 14 c9          	lea    (%rcx,%rcx,8),%r10
  5f84f9:	4a 8d 0c 51          	lea    (%rcx,%r10,2),%rcx
  5f84fd:	4c 89 d8             	mov    %r11,%rax
  5f8500:	48 f7 e1             	mul    %rcx
  5f8503:	48 8d 0c f6          	lea    (%rsi,%rsi,8),%rcx
  5f8507:	48 8d 0c 4e          	lea    (%rsi,%rcx,2),%rcx
  5f850b:	48 89 c6             	mov    %rax,%rsi
  5f850e:	4c 89 e0             	mov    %r12,%rax
  5f8511:	49 89 d4             	mov    %rdx,%r12
  5f8514:	48 f7 e1             	mul    %rcx
  5f8517:	48 89 44 24 58       	mov    %rax,0x58(%rsp)
  5f851c:	48 89 c8             	mov    %rcx,%rax
  5f851f:	48 89 d1             	mov    %rdx,%rcx
  5f8522:	49 f7 e3             	mul    %r11
  5f8525:	48 89 44 24 48       	mov    %rax,0x48(%rsp)
  5f852a:	4c 8d 14 ff          	lea    (%rdi,%rdi,8),%r10
  5f852e:	4e 8d 14 57          	lea    (%rdi,%r10,2),%r10
  5f8532:	48 89 f8             	mov    %rdi,%rax
  5f8535:	48 89 d7             	mov    %rdx,%rdi
  5f8538:	49 f7 e2             	mul    %r10
  5f853b:	48 89 44 24 40       	mov    %rax,0x40(%rsp)
  5f8540:	4c 89 d0             	mov    %r10,%rax
  5f8543:	49 89 d2             	mov    %rdx,%r10
  5f8546:	49 f7 e3             	mul    %r11
  5f8549:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
  5f854e:	4c 8d 1c db          	lea    (%rbx,%rbx,8),%r11
  5f8552:	4e 8d 1c 5b          	lea    (%rbx,%r11,2),%r11
  5f8556:	48 89 d8             	mov    %rbx,%rax
  5f8559:	48 89 d3             	mov    %rdx,%rbx
  5f855c:	49 f7 e3             	mul    %r11
  5f855f:	90                   	nop
  5f8560:	90                   	nop
  5f8561:	90                   	nop
  5f8562:	90                   	nop
  5f8563:	90                   	nop
  5f8564:	90                   	nop
  5f8565:	90                   	nop
  5f8566:	90                   	nop
  5f8567:	90                   	nop
  5f8568:	90                   	nop
  5f8569:	90                   	nop
  5f856a:	90                   	nop
  5f856b:	90                   	nop
  5f856c:	90                   	nop
  5f856d:	90                   	nop
  5f856e:	90                   	nop
  5f856f:	90                   	nop
  5f8570:	90                   	nop
  5f8571:	4c 01 ee             	add    %r13,%rsi
  5f8574:	4d 11 e7             	adc    %r12,%r15
  5f8577:	4c 8b 5c 24 58       	mov    0x58(%rsp),%r11
  5f857c:	49 01 f3             	add    %rsi,%r11
  5f857f:	4c 11 f9             	adc    %r15,%rcx
  5f8582:	48 be ff ff ff ff ff 	movabs $0x7ffffffffffff,%rsi
  5f8589:	ff 07 00 
  5f858c:	4c 21 de             	and    %r11,%rsi
  5f858f:	48 c1 e1 0d          	shl    $0xd,%rcx
  5f8593:	49 c1 eb 33          	shr    $0x33,%r11
  5f8597:	49 09 cb             	or     %rcx,%r11
  5f859a:	48 8b 4c 24 48       	mov    0x48(%rsp),%rcx
  5f859f:	4c 8b 64 24 50       	mov    0x50(%rsp),%r12
  5f85a4:	4c 01 e1             	add    %r12,%rcx
  5f85a7:	4c 8b a4 24 88 00 00 	mov    0x88(%rsp),%r12
  5f85ae:	00 
  5f85af:	49 11 fc             	adc    %rdi,%r12
  5f85b2:	48 8b 7c 24 40       	mov    0x40(%rsp),%rdi
  5f85b7:	48 01 cf             	add    %rcx,%rdi
  5f85ba:	4d 11 e2             	adc    %r12,%r10
  5f85bd:	48 b9 ff ff ff ff ff 	movabs $0x7ffffffffffff,%rcx
  5f85c4:	ff 07 00 
  5f85c7:	48 21 f9             	and    %rdi,%rcx
  5f85ca:	4c 01 d9             	add    %r11,%rcx
  5f85cd:	49 bb ff ff ff ff ff 	movabs $0x7ffffffffffff,%r11
  5f85d4:	ff 07 00 
  5f85d7:	49 21 cb             	and    %rcx,%r11
  5f85da:	48 c1 e9 33          	shr    $0x33,%rcx
  5f85de:	49 c1 e2 0d          	shl    $0xd,%r10
  5f85e2:	48 c1 ef 33          	shr    $0x33,%rdi
  5f85e6:	4c 09 d7             	or     %r10,%rdi
  5f85e9:	4c 8b 54 24 30       	mov    0x30(%rsp),%r10
  5f85ee:	4c 8b 64 24 38       	mov    0x38(%rsp),%r12
  5f85f3:	4d 01 e2             	add    %r12,%r10
  5f85f6:	4c 8b 64 24 78       	mov    0x78(%rsp),%r12
  5f85fb:	4c 8b ac 24 80 00 00 	mov    0x80(%rsp),%r13
  5f8602:	00 
  5f8603:	4d 11 ec             	adc    %r13,%r12
  5f8606:	4c 8b 6c 24 28       	mov    0x28(%rsp),%r13
  5f860b:	4d 01 d5             	add    %r10,%r13
  5f860e:	49 11 dc             	adc    %rbx,%r12
  5f8611:	48 bb ff ff ff ff ff 	movabs $0x7ffffffffffff,%rbx
  5f8618:	ff 07 00 
  5f861b:	4c 21 eb             	and    %r13,%rbx
  5f861e:	48 01 fb             	add    %rdi,%rbx
  5f8621:	48 bf ff ff ff ff ff 	movabs $0x7ffffffffffff,%rdi
  5f8628:	ff 07 00 
  5f862b:	48 21 df             	and    %rbx,%rdi
  5f862e:	48 01 f9             	add    %rdi,%rcx
  5f8631:	48 c1 eb 33          	shr    $0x33,%rbx
  5f8635:	49 c1 e4 0d          	shl    $0xd,%r12
  5f8639:	49 c1 ed 33          	shr    $0x33,%r13
  5f863d:	4d 09 e5             	or     %r12,%r13
  5f8640:	48 8b 7c 24 18       	mov    0x18(%rsp),%rdi
  5f8645:	4c 8b 54 24 20       	mov    0x20(%rsp),%r10
  5f864a:	4c 01 d7             	add    %r10,%rdi
  5f864d:	4c 8b 54 24 70       	mov    0x70(%rsp),%r10
  5f8652:	4d 11 d0             	adc    %r10,%r8
  5f8655:	48 01 f8             	add    %rdi,%rax
  5f8658:	4c 11 c2             	adc    %r8,%rdx
  5f865b:	48 bf ff ff ff ff ff 	movabs $0x7ffffffffffff,%rdi
  5f8662:	ff 07 00 
  5f8665:	48 21 c7             	and    %rax,%rdi
  5f8668:	4c 01 ef             	add    %r13,%rdi
  5f866b:	49 b8 ff ff ff ff ff 	movabs $0x7ffffffffffff,%r8
  5f8672:	ff 07 00 
  5f8675:	49 21 f8             	and    %rdi,%r8
  5f8678:	4c 01 c3             	add    %r8,%rbx
  5f867b:	48 c1 ef 33          	shr    $0x33,%rdi
  5f867f:	48 c1 e2 0d          	shl    $0xd,%rdx
  5f8683:	48 c1 e8 33          	shr    $0x33,%rax
  5f8687:	48 09 d0             	or     %rdx,%rax
  5f868a:	48 8b 54 24 08       	mov    0x8(%rsp),%rdx
  5f868f:	4c 8b 44 24 10       	mov    0x10(%rsp),%r8
  5f8694:	4c 01 c2             	add    %r8,%rdx
  5f8697:	4c 8b 44 24 68       	mov    0x68(%rsp),%r8
  5f869c:	4d 11 c8             	adc    %r9,%r8
  5f869f:	4c 8b 0c 24          	mov    (%rsp),%r9
  5f86a3:	49 01 d1             	add    %rdx,%r9
  5f86a6:	48 8b 54 24 60       	mov    0x60(%rsp),%rdx
  5f86ab:	4c 11 c2             	adc    %r8,%rdx
  5f86ae:	49 b8 ff ff ff ff ff 	movabs $0x7ffffffffffff,%r8
  5f86b5:	ff 07 00 
  5f86b8:	4d 21 c8             	and    %r9,%r8
  5f86bb:	49 01 c0             	add    %rax,%r8
  5f86be:	4d 89 c2             	mov    %r8,%r10
  5f86c1:	49 c1 e8 33          	shr    $0x33,%r8
  5f86c5:	49 bc ff ff ff ff ff 	movabs $0x7ffffffffffff,%r12
  5f86cc:	ff 07 00 
  5f86cf:	4d 21 e2             	and    %r12,%r10
  5f86d2:	4c 01 d7             	add    %r10,%rdi
  5f86d5:	48 c1 e2 0d          	shl    $0xd,%rdx
  5f86d9:	49 c1 e9 33          	shr    $0x33,%r9
  5f86dd:	49 09 d1             	or     %rdx,%r9
  5f86e0:	4b 8d 14 c9          	lea    (%r9,%r9,8),%rdx
  5f86e4:	49 8d 14 51          	lea    (%r9,%rdx,2),%rdx
  5f86e8:	48 01 f2             	add    %rsi,%rdx
  5f86eb:	49 21 d4             	and    %rdx,%r12
  5f86ee:	48 c1 ea 33          	shr    $0x33,%rdx
  5f86f2:	4c 01 da             	add    %r11,%rdx
  5f86f5:	4b 8d 34 c0          	lea    (%r8,%r8,8),%rsi
  5f86f9:	49 8d 34 70          	lea    (%r8,%rsi,2),%rsi
  5f86fd:	4c 01 e6             	add    %r12,%rsi
  5f8700:	4c 8b 84 24 a0 00 00 	mov    0xa0(%rsp),%r8
  5f8707:	00 
  5f8708:	49 89 30             	mov    %rsi,(%r8)
  5f870b:	49 89 50 08          	mov    %rdx,0x8(%r8)
  5f870f:	49 89 48 10          	mov    %rcx,0x10(%r8)
  5f8713:	49 89 58 18          	mov    %rbx,0x18(%r8)
  5f8717:	49 89 78 20          	mov    %rdi,0x20(%r8)
  5f871b:	c9                   	leave
  5f871c:	c3                   	ret
  5f871d:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  5f8722:	48 89 5c 24 10       	mov    %rbx,0x10(%rsp)
  5f8727:	e8 74 60 e9 ff       	call   48e7a0 <runtime.morestack_noctxt.abi0>
  5f872c:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
  5f8731:	48 8b 5c 24 10       	mov    0x10(%rsp),%rbx
  5f8736:	e9 e5 fc ff ff       	jmp    5f8420 <crypto/internal/fips140/edwards25519/field.feSquare>

Disassembly of section .plt:
