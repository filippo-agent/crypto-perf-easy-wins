
/home/exedev/crypto-audit/round4/bin/ecdsa-v3-square.test:     file format elf64-x86-64


Disassembly of section .text:

0000000000619300 <crypto/internal/fips140/nistec/fiat.p384Square>:
  619300:	4c 8d a4 24 60 fc ff 	lea    -0x3a0(%rsp),%r12
  619307:	ff 
  619308:	4d 3b 66 10          	cmp    0x10(%r14),%r12
  61930c:	0f 86 49 0e 00 00    	jbe    61a15b <crypto/internal/fips140/nistec/fiat.p384Square+0xe5b>
  619312:	55                   	push   %rbp
  619313:	48 89 e5             	mov    %rsp,%rbp
  619316:	48 81 ec 18 04 00 00 	sub    $0x418,%rsp
  61931d:	48 89 84 24 28 04 00 	mov    %rax,0x428(%rsp)
  619324:	00 
  619325:	48 8b 4b 10          	mov    0x10(%rbx),%rcx
  619329:	48 8b 53 08          	mov    0x8(%rbx),%rdx
  61932d:	c4 e2 c3 f6 f1       	mulx   %rcx,%rdi,%rsi
  619332:	48 89 74 24 50       	mov    %rsi,0x50(%rsp)
  619337:	48 89 7c 24 58       	mov    %rdi,0x58(%rsp)
  61933c:	c4 62 b3 f6 c2       	mulx   %rdx,%r9,%r8
  619341:	4c 89 44 24 40       	mov    %r8,0x40(%rsp)
  619346:	4c 89 4c 24 48       	mov    %r9,0x48(%rsp)
  61934b:	49 89 d2             	mov    %rdx,%r10
  61934e:	48 89 ca             	mov    %rcx,%rdx
  619351:	c4 62 9b f6 d9       	mulx   %rcx,%r12,%r11
  619356:	4c 89 9c 24 88 03 00 	mov    %r11,0x388(%rsp)
  61935d:	00 
  61935e:	4c 89 a4 24 90 03 00 	mov    %r12,0x390(%rsp)
  619365:	00 
  619366:	4c 8b 6b 28          	mov    0x28(%rbx),%r13
  61936a:	4c 89 ea             	mov    %r13,%rdx
  61936d:	c4 42 fb f6 fa       	mulx   %r10,%rax,%r15
  619372:	4c 89 7c 24 60       	mov    %r15,0x60(%rsp)
  619377:	48 89 44 24 68       	mov    %rax,0x68(%rsp)
  61937c:	4c 8b 5b 18          	mov    0x18(%rbx),%r11
  619380:	4c 89 da             	mov    %r11,%rdx
  619383:	c4 42 83 f6 e2       	mulx   %r10,%r15,%r12
  619388:	4c 89 a4 24 b8 02 00 	mov    %r12,0x2b8(%rsp)
  61938f:	00 
  619390:	4c 89 bc 24 c0 02 00 	mov    %r15,0x2c0(%rsp)
  619397:	00 
  619398:	c4 e2 9b f6 c1       	mulx   %rcx,%r12,%rax
  61939d:	4c 89 a4 24 98 03 00 	mov    %r12,0x398(%rsp)
  6193a4:	00 
  6193a5:	48 89 84 24 c8 02 00 	mov    %rax,0x2c8(%rsp)
  6193ac:	00 
  6193ad:	c4 e2 9b f6 c2       	mulx   %rdx,%r12,%rax
  6193b2:	48 89 84 24 d0 02 00 	mov    %rax,0x2d0(%rsp)
  6193b9:	00 
  6193ba:	4c 89 a4 24 d8 02 00 	mov    %r12,0x2d8(%rsp)
  6193c1:	00 
  6193c2:	48 8b 43 20          	mov    0x20(%rbx),%rax
  6193c6:	48 89 c2             	mov    %rax,%rdx
  6193c9:	c4 42 cb f6 e5       	mulx   %r13,%rsi,%r12
  6193ce:	4c 89 a4 24 20 02 00 	mov    %r12,0x220(%rsp)
  6193d5:	00 
  6193d6:	48 89 b4 24 48 01 00 	mov    %rsi,0x148(%rsp)
  6193dd:	00 
  6193de:	c4 62 cb f6 e0       	mulx   %rax,%rsi,%r12
  6193e3:	4c 89 a4 24 10 02 00 	mov    %r12,0x210(%rsp)
  6193ea:	00 
  6193eb:	48 89 b4 24 18 02 00 	mov    %rsi,0x218(%rsp)
  6193f2:	00 
  6193f3:	c4 42 cb f6 e3       	mulx   %r11,%rsi,%r12
  6193f8:	48 89 b4 24 e0 02 00 	mov    %rsi,0x2e0(%rsp)
  6193ff:	00 
  619400:	4c 89 a4 24 08 02 00 	mov    %r12,0x208(%rsp)
  619407:	00 
  619408:	c4 62 cb f6 e1       	mulx   %rcx,%rsi,%r12
  61940d:	4c 89 a4 24 a0 03 00 	mov    %r12,0x3a0(%rsp)
  619414:	00 
  619415:	48 89 b4 24 00 02 00 	mov    %rsi,0x200(%rsp)
  61941c:	00 
  61941d:	c4 42 cb f6 e2       	mulx   %r10,%rsi,%r12
  619422:	4c 89 a4 24 f0 01 00 	mov    %r12,0x1f0(%rsp)
  619429:	00 
  61942a:	48 89 b4 24 f8 01 00 	mov    %rsi,0x1f8(%rsp)
  619431:	00 
  619432:	48 8b 1b             	mov    (%rbx),%rbx
  619435:	48 89 da             	mov    %rbx,%rdx
  619438:	c4 42 cb f6 e5       	mulx   %r13,%rsi,%r12
  61943d:	4c 89 a4 24 20 01 00 	mov    %r12,0x120(%rsp)
  619444:	00 
  619445:	48 89 b4 24 28 01 00 	mov    %rsi,0x128(%rsp)
  61944c:	00 
  61944d:	c4 62 c3 f6 f9       	mulx   %rcx,%rdi,%r15
  619452:	4c 89 bc 24 c8 03 00 	mov    %r15,0x3c8(%rsp)
  619459:	00 
  61945a:	48 89 bc 24 80 03 00 	mov    %rdi,0x380(%rsp)
  619461:	00 
  619462:	c4 62 b3 f6 c2       	mulx   %rdx,%r9,%r8
  619467:	4c 89 8c 24 40 03 00 	mov    %r9,0x340(%rsp)
  61946e:	00 
  61946f:	48 ba 01 00 00 00 01 	movabs $0x100000001,%rdx
  619476:	00 00 00 
  619479:	c4 c2 b3 f6 d1       	mulx   %r9,%r9,%rdx
  61947e:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
  619485:	c4 c2 9b f6 d1       	mulx   %r9,%r12,%rdx
  61948a:	48 89 94 24 a0 01 00 	mov    %rdx,0x1a0(%rsp)
  619491:	00 
  619492:	4c 89 a4 24 98 01 00 	mov    %r12,0x198(%rsp)
  619499:	00 
  61949a:	48 c7 c2 fe ff ff ff 	mov    $0xfffffffffffffffe,%rdx
  6194a1:	c4 c2 9b f6 d1       	mulx   %r9,%r12,%rdx
  6194a6:	48 89 94 24 10 01 00 	mov    %rdx,0x110(%rsp)
  6194ad:	00 
  6194ae:	4c 89 a4 24 40 01 00 	mov    %r12,0x140(%rsp)
  6194b5:	00 
  6194b6:	48 ba 00 00 00 00 ff 	movabs $0xffffffff00000000,%rdx
  6194bd:	ff ff ff 
  6194c0:	c4 c2 9b f6 d1       	mulx   %r9,%r12,%rdx
  6194c5:	48 89 94 24 d0 00 00 	mov    %rdx,0xd0(%rsp)
  6194cc:	00 
  6194cd:	4c 89 a4 24 e0 00 00 	mov    %r12,0xe0(%rsp)
  6194d4:	00 
  6194d5:	ba ff ff ff ff       	mov    $0xffffffff,%edx
  6194da:	c4 42 eb f6 c9       	mulx   %r9,%rdx,%r9
  6194df:	4c 89 8c 24 b0 00 00 	mov    %r9,0xb0(%rsp)
  6194e6:	00 
  6194e7:	48 89 94 24 b8 00 00 	mov    %rdx,0xb8(%rsp)
  6194ee:	00 
  6194ef:	48 89 da             	mov    %rbx,%rdx
  6194f2:	c4 42 b3 f6 d2       	mulx   %r10,%r9,%r10
  6194f7:	4c 89 94 24 70 03 00 	mov    %r10,0x370(%rsp)
  6194fe:	00 
  6194ff:	4c 89 4c 24 38       	mov    %r9,0x38(%rsp)
  619504:	c4 42 cb f6 e3       	mulx   %r11,%rsi,%r12
  619509:	4c 89 a4 24 f0 03 00 	mov    %r12,0x3f0(%rsp)
  619510:	00 
  619511:	48 89 b4 24 b0 02 00 	mov    %rsi,0x2b0(%rsp)
  619518:	00 
  619519:	c4 e2 e3 f6 c0       	mulx   %rax,%rbx,%rax
  61951e:	48 89 84 24 10 04 00 	mov    %rax,0x410(%rsp)
  619525:	00 
  619526:	48 89 5c 24 08       	mov    %rbx,0x8(%rsp)
  61952b:	4c 89 ea             	mov    %r13,%rdx
  61952e:	c4 e2 e3 f6 c2       	mulx   %rdx,%rbx,%rax
  619533:	48 89 84 24 50 01 00 	mov    %rax,0x150(%rsp)
  61953a:	00 
  61953b:	48 89 9c 24 58 01 00 	mov    %rbx,0x158(%rsp)
  619542:	00 
  619543:	4c 89 da             	mov    %r11,%rdx
  619546:	c4 42 eb f6 dd       	mulx   %r13,%rdx,%r11
  61954b:	48 89 94 24 e8 02 00 	mov    %rdx,0x2e8(%rsp)
  619552:	00 
  619553:	4c 89 9c 24 38 01 00 	mov    %r11,0x138(%rsp)
  61955a:	00 
  61955b:	4c 89 ea             	mov    %r13,%rdx
  61955e:	c4 e2 93 f6 c9       	mulx   %rcx,%r13,%rcx
  619563:	4c 89 ac 24 a8 03 00 	mov    %r13,0x3a8(%rsp)
  61956a:	00 
  61956b:	48 89 8c 24 30 01 00 	mov    %rcx,0x130(%rsp)
  619572:	00 
  619573:	90                   	nop
  619574:	90                   	nop
  619575:	90                   	nop
  619576:	90                   	nop
  619577:	90                   	nop
  619578:	90                   	nop
  619579:	4d 01 c8             	add    %r9,%r8
  61957c:	4c 11 d7             	adc    %r10,%rdi
  61957f:	4c 11 fe             	adc    %r15,%rsi
  619582:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
  619587:	49 11 c4             	adc    %rax,%r12
  61958a:	48 8b 9c 24 28 01 00 	mov    0x128(%rsp),%rbx
  619591:	00 
  619592:	48 8b 84 24 10 04 00 	mov    0x410(%rsp),%rax
  619599:	00 
  61959a:	48 11 c3             	adc    %rax,%rbx
  61959d:	48 8b 84 24 20 01 00 	mov    0x120(%rsp),%rax
  6195a4:	00 
  6195a5:	48 83 d0 00          	adc    $0x0,%rax
  6195a9:	48 89 84 24 50 02 00 	mov    %rax,0x250(%rsp)
  6195b0:	00 
  6195b1:	4c 8b 9c 24 b0 00 00 	mov    0xb0(%rsp),%r11
  6195b8:	00 
  6195b9:	48 8b 8c 24 e0 00 00 	mov    0xe0(%rsp),%rcx
  6195c0:	00 
  6195c1:	49 01 cb             	add    %rcx,%r11
  6195c4:	48 8b 8c 24 d0 00 00 	mov    0xd0(%rsp),%rcx
  6195cb:	00 
  6195cc:	4c 8b ac 24 40 01 00 	mov    0x140(%rsp),%r13
  6195d3:	00 
  6195d4:	4c 11 e9             	adc    %r13,%rcx
  6195d7:	4c 8b ac 24 10 01 00 	mov    0x110(%rsp),%r13
  6195de:	00 
  6195df:	4c 8b bc 24 98 01 00 	mov    0x198(%rsp),%r15
  6195e6:	00 
  6195e7:	4d 11 fd             	adc    %r15,%r13
  6195ea:	4c 8b 8c 24 a0 01 00 	mov    0x1a0(%rsp),%r9
  6195f1:	00 
  6195f2:	4d 11 cf             	adc    %r9,%r15
  6195f5:	4c 8b 94 24 98 01 00 	mov    0x198(%rsp),%r10
  6195fc:	00 
  6195fd:	4d 11 ca             	adc    %r9,%r10
  619600:	49 83 d1 00          	adc    $0x0,%r9
  619604:	4c 89 8c 24 a8 00 00 	mov    %r9,0xa8(%rsp)
  61960b:	00 
  61960c:	48 8b 84 24 40 03 00 	mov    0x340(%rsp),%rax
  619613:	00 
  619614:	4c 8b 8c 24 b8 00 00 	mov    0xb8(%rsp),%r9
  61961b:	00 
  61961c:	4c 01 c8             	add    %r9,%rax
  61961f:	4d 11 c3             	adc    %r8,%r11
  619622:	4c 89 9c 24 a0 00 00 	mov    %r11,0xa0(%rsp)
  619629:	00 
  61962a:	48 11 f9             	adc    %rdi,%rcx
  61962d:	48 89 8c 24 98 00 00 	mov    %rcx,0x98(%rsp)
  619634:	00 
  619635:	49 11 f5             	adc    %rsi,%r13
  619638:	4c 89 ac 24 90 00 00 	mov    %r13,0x90(%rsp)
  61963f:	00 
  619640:	4d 11 e7             	adc    %r12,%r15
  619643:	4c 89 bc 24 88 00 00 	mov    %r15,0x88(%rsp)
  61964a:	00 
  61964b:	49 11 da             	adc    %rbx,%r10
  61964e:	4c 89 94 24 80 00 00 	mov    %r10,0x80(%rsp)
  619655:	00 
  619656:	48 8b 84 24 a8 00 00 	mov    0xa8(%rsp),%rax
  61965d:	00 
  61965e:	48 8b 9c 24 50 02 00 	mov    0x250(%rsp),%rbx
  619665:	00 
  619666:	48 11 d8             	adc    %rbx,%rax
  619669:	48 89 44 24 78       	mov    %rax,0x78(%rsp)
  61966e:	0f 92 c3             	setb   %bl
  619671:	0f b6 db             	movzbl %bl,%ebx
  619674:	48 89 5c 24 70       	mov    %rbx,0x70(%rsp)
  619679:	48 8b 74 24 48       	mov    0x48(%rsp),%rsi
  61967e:	48 8b bc 24 70 03 00 	mov    0x370(%rsp),%rdi
  619685:	00 
  619686:	48 01 fe             	add    %rdi,%rsi
  619689:	48 89 74 24 30       	mov    %rsi,0x30(%rsp)
  61968e:	48 8b 7c 24 40       	mov    0x40(%rsp),%rdi
  619693:	4c 8b 44 24 58       	mov    0x58(%rsp),%r8
  619698:	4c 11 c7             	adc    %r8,%rdi
  61969b:	48 89 7c 24 28       	mov    %rdi,0x28(%rsp)
  6196a0:	4c 8b 8c 24 c0 02 00 	mov    0x2c0(%rsp),%r9
  6196a7:	00 
  6196a8:	4c 8b 64 24 50       	mov    0x50(%rsp),%r12
  6196ad:	4d 11 e1             	adc    %r12,%r9
  6196b0:	4c 89 4c 24 20       	mov    %r9,0x20(%rsp)
  6196b5:	4c 8b a4 24 f8 01 00 	mov    0x1f8(%rsp),%r12
  6196bc:	00 
  6196bd:	4c 8b 84 24 b8 02 00 	mov    0x2b8(%rsp),%r8
  6196c4:	00 
  6196c5:	4d 11 c4             	adc    %r8,%r12
  6196c8:	4c 89 64 24 18       	mov    %r12,0x18(%rsp)
  6196cd:	4c 8b 84 24 f0 01 00 	mov    0x1f0(%rsp),%r8
  6196d4:	00 
  6196d5:	48 8b 5c 24 68       	mov    0x68(%rsp),%rbx
  6196da:	49 11 d8             	adc    %rbx,%r8
  6196dd:	4c 89 44 24 10       	mov    %r8,0x10(%rsp)
  6196e2:	48 8b 5c 24 60       	mov    0x60(%rsp),%rbx
  6196e7:	48 83 d3 00          	adc    $0x0,%rbx
  6196eb:	48 89 1c 24          	mov    %rbx,(%rsp)
  6196ef:	48 8b 5c 24 38       	mov    0x38(%rsp),%rbx
  6196f4:	4c 01 db             	add    %r11,%rbx
  6196f7:	48 11 ce             	adc    %rcx,%rsi
  6196fa:	4c 11 ef             	adc    %r13,%rdi
  6196fd:	4d 11 f9             	adc    %r15,%r9
  619700:	4d 11 d4             	adc    %r10,%r12
  619703:	4c 89 a4 24 08 04 00 	mov    %r12,0x408(%rsp)
  61970a:	00 
  61970b:	49 11 c0             	adc    %rax,%r8
  61970e:	4c 89 84 24 00 04 00 	mov    %r8,0x400(%rsp)
  619715:	00 
  619716:	48 8b 04 24          	mov    (%rsp),%rax
  61971a:	4c 8b 54 24 70       	mov    0x70(%rsp),%r10
  61971f:	4c 11 d0             	adc    %r10,%rax
  619722:	48 89 84 24 f8 03 00 	mov    %rax,0x3f8(%rsp)
  619729:	00 
  61972a:	48 89 da             	mov    %rbx,%rdx
  61972d:	49 ba 01 00 00 00 01 	movabs $0x100000001,%r10
  619734:	00 00 00 
  619737:	c4 42 83 f6 d2       	mulx   %r10,%r15,%r10
  61973c:	4c 89 fa             	mov    %r15,%rdx
  61973f:	49 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%r10
  619746:	c4 42 93 f6 d2       	mulx   %r10,%r13,%r10
  61974b:	48 c7 c1 fe ff ff ff 	mov    $0xfffffffffffffffe,%rcx
  619752:	c4 e2 a3 f6 c9       	mulx   %rcx,%r11,%rcx
  619757:	48 b8 00 00 00 00 ff 	movabs $0xffffffff00000000,%rax
  61975e:	ff ff ff 
  619761:	c4 e2 bb f6 c0       	mulx   %rax,%r8,%rax
  619766:	41 bc ff ff ff ff    	mov    $0xffffffff,%r12d
  61976c:	c4 c2 83 f6 d4       	mulx   %r12,%r15,%rdx
  619771:	4c 01 c2             	add    %r8,%rdx
  619774:	4c 11 d8             	adc    %r11,%rax
  619777:	4c 11 e9             	adc    %r13,%rcx
  61977a:	4d 89 e8             	mov    %r13,%r8
  61977d:	4d 11 d5             	adc    %r10,%r13
  619780:	4d 11 d0             	adc    %r10,%r8
  619783:	49 83 d2 00          	adc    $0x0,%r10
  619787:	4c 01 fb             	add    %r15,%rbx
  61978a:	48 11 f2             	adc    %rsi,%rdx
  61978d:	48 89 94 24 e8 03 00 	mov    %rdx,0x3e8(%rsp)
  619794:	00 
  619795:	48 11 f8             	adc    %rdi,%rax
  619798:	48 89 84 24 e0 03 00 	mov    %rax,0x3e0(%rsp)
  61979f:	00 
  6197a0:	4c 11 c9             	adc    %r9,%rcx
  6197a3:	48 89 8c 24 d8 03 00 	mov    %rcx,0x3d8(%rsp)
  6197aa:	00 
  6197ab:	48 8b 9c 24 08 04 00 	mov    0x408(%rsp),%rbx
  6197b2:	00 
  6197b3:	49 11 dd             	adc    %rbx,%r13
  6197b6:	4c 89 ac 24 d0 03 00 	mov    %r13,0x3d0(%rsp)
  6197bd:	00 
  6197be:	48 8b 9c 24 00 04 00 	mov    0x400(%rsp),%rbx
  6197c5:	00 
  6197c6:	49 11 d8             	adc    %rbx,%r8
  6197c9:	4c 89 84 24 c0 03 00 	mov    %r8,0x3c0(%rsp)
  6197d0:	00 
  6197d1:	48 8b 9c 24 f8 03 00 	mov    0x3f8(%rsp),%rbx
  6197d8:	00 
  6197d9:	49 11 da             	adc    %rbx,%r10
  6197dc:	4c 89 94 24 b8 03 00 	mov    %r10,0x3b8(%rsp)
  6197e3:	00 
  6197e4:	0f 92 c3             	setb   %bl
  6197e7:	0f b6 db             	movzbl %bl,%ebx
  6197ea:	48 8b 74 24 38       	mov    0x38(%rsp),%rsi
  6197ef:	48 8b bc 24 a0 00 00 	mov    0xa0(%rsp),%rdi
  6197f6:	00 
  6197f7:	48 01 fe             	add    %rdi,%rsi
  6197fa:	48 8b 74 24 30       	mov    0x30(%rsp),%rsi
  6197ff:	48 8b bc 24 98 00 00 	mov    0x98(%rsp),%rdi
  619806:	00 
  619807:	48 11 fe             	adc    %rdi,%rsi
  61980a:	48 8b 74 24 28       	mov    0x28(%rsp),%rsi
  61980f:	48 8b bc 24 90 00 00 	mov    0x90(%rsp),%rdi
  619816:	00 
  619817:	48 11 fe             	adc    %rdi,%rsi
  61981a:	48 8b 74 24 20       	mov    0x20(%rsp),%rsi
  61981f:	48 8b bc 24 88 00 00 	mov    0x88(%rsp),%rdi
  619826:	00 
  619827:	48 11 fe             	adc    %rdi,%rsi
  61982a:	48 8b 74 24 18       	mov    0x18(%rsp),%rsi
  61982f:	48 8b bc 24 80 00 00 	mov    0x80(%rsp),%rdi
  619836:	00 
  619837:	48 11 fe             	adc    %rdi,%rsi
  61983a:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
  61983f:	48 8b 7c 24 78       	mov    0x78(%rsp),%rdi
  619844:	48 11 fe             	adc    %rdi,%rsi
  619847:	48 8b 34 24          	mov    (%rsp),%rsi
  61984b:	48 8b 7c 24 70       	mov    0x70(%rsp),%rdi
  619850:	48 11 fe             	adc    %rdi,%rsi
  619853:	48 83 d3 00          	adc    $0x0,%rbx
  619857:	48 89 9c 24 b0 03 00 	mov    %rbx,0x3b0(%rsp)
  61985e:	00 
  61985f:	48 8b 74 24 58       	mov    0x58(%rsp),%rsi
  619864:	48 8b bc 24 c8 03 00 	mov    0x3c8(%rsp),%rdi
  61986b:	00 
  61986c:	48 01 fe             	add    %rdi,%rsi
  61986f:	48 89 b4 24 78 03 00 	mov    %rsi,0x378(%rsp)
  619876:	00 
  619877:	48 8b bc 24 90 03 00 	mov    0x390(%rsp),%rdi
  61987e:	00 
  61987f:	4c 8b 4c 24 50       	mov    0x50(%rsp),%r9
  619884:	4c 11 cf             	adc    %r9,%rdi
  619887:	48 89 bc 24 68 03 00 	mov    %rdi,0x368(%rsp)
  61988e:	00 
  61988f:	4c 8b 8c 24 88 03 00 	mov    0x388(%rsp),%r9
  619896:	00 
  619897:	4c 8b 9c 24 98 03 00 	mov    0x398(%rsp),%r11
  61989e:	00 
  61989f:	4d 11 d9             	adc    %r11,%r9
  6198a2:	4c 89 8c 24 60 03 00 	mov    %r9,0x360(%rsp)
  6198a9:	00 
  6198aa:	4c 8b bc 24 00 02 00 	mov    0x200(%rsp),%r15
  6198b1:	00 
  6198b2:	4c 8b 9c 24 c8 02 00 	mov    0x2c8(%rsp),%r11
  6198b9:	00 
  6198ba:	4d 11 df             	adc    %r11,%r15
  6198bd:	4c 89 bc 24 58 03 00 	mov    %r15,0x358(%rsp)
  6198c4:	00 
  6198c5:	4c 8b 9c 24 a0 03 00 	mov    0x3a0(%rsp),%r11
  6198cc:	00 
  6198cd:	4c 8b a4 24 a8 03 00 	mov    0x3a8(%rsp),%r12
  6198d4:	00 
  6198d5:	4d 11 e3             	adc    %r12,%r11
  6198d8:	4c 89 9c 24 50 03 00 	mov    %r11,0x350(%rsp)
  6198df:	00 
  6198e0:	4c 8b a4 24 30 01 00 	mov    0x130(%rsp),%r12
  6198e7:	00 
  6198e8:	49 83 d4 00          	adc    $0x0,%r12
  6198ec:	4c 89 a4 24 48 03 00 	mov    %r12,0x348(%rsp)
  6198f3:	00 
  6198f4:	48 8b 9c 24 80 03 00 	mov    0x380(%rsp),%rbx
  6198fb:	00 
  6198fc:	48 01 d3             	add    %rdx,%rbx
  6198ff:	48 11 c6             	adc    %rax,%rsi
  619902:	48 11 cf             	adc    %rcx,%rdi
  619905:	4d 11 e9             	adc    %r13,%r9
  619908:	4d 11 c7             	adc    %r8,%r15
  61990b:	4c 89 bc 24 38 03 00 	mov    %r15,0x338(%rsp)
  619912:	00 
  619913:	4d 11 d3             	adc    %r10,%r11
  619916:	4c 89 9c 24 30 03 00 	mov    %r11,0x330(%rsp)
  61991d:	00 
  61991e:	4c 8b 94 24 b0 03 00 	mov    0x3b0(%rsp),%r10
  619925:	00 
  619926:	4d 11 d4             	adc    %r10,%r12
  619929:	4c 89 a4 24 28 03 00 	mov    %r12,0x328(%rsp)
  619930:	00 
  619931:	48 89 da             	mov    %rbx,%rdx
  619934:	49 ba 01 00 00 00 01 	movabs $0x100000001,%r10
  61993b:	00 00 00 
  61993e:	c4 42 bb f6 d2       	mulx   %r10,%r8,%r10
  619943:	4c 89 c2             	mov    %r8,%rdx
  619946:	49 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%r10
  61994d:	c4 42 93 f6 d2       	mulx   %r10,%r13,%r10
  619952:	48 c7 c1 fe ff ff ff 	mov    $0xfffffffffffffffe,%rcx
  619959:	c4 e2 fb f6 c9       	mulx   %rcx,%rax,%rcx
  61995e:	49 bc 00 00 00 00 ff 	movabs $0xffffffff00000000,%r12
  619965:	ff ff ff 
  619968:	c4 42 a3 f6 e4       	mulx   %r12,%r11,%r12
  61996d:	41 bf ff ff ff ff    	mov    $0xffffffff,%r15d
  619973:	c4 c2 bb f6 d7       	mulx   %r15,%r8,%rdx
  619978:	4c 01 da             	add    %r11,%rdx
  61997b:	49 11 c4             	adc    %rax,%r12
  61997e:	4c 11 e9             	adc    %r13,%rcx
  619981:	4c 89 e8             	mov    %r13,%rax
  619984:	4d 11 d5             	adc    %r10,%r13
  619987:	4c 11 d0             	adc    %r10,%rax
  61998a:	49 83 d2 00          	adc    $0x0,%r10
  61998e:	4c 01 c3             	add    %r8,%rbx
  619991:	48 11 f2             	adc    %rsi,%rdx
  619994:	48 89 94 24 20 03 00 	mov    %rdx,0x320(%rsp)
  61999b:	00 
  61999c:	49 11 fc             	adc    %rdi,%r12
  61999f:	4c 89 a4 24 18 03 00 	mov    %r12,0x318(%rsp)
  6199a6:	00 
  6199a7:	4c 11 c9             	adc    %r9,%rcx
  6199aa:	48 89 8c 24 10 03 00 	mov    %rcx,0x310(%rsp)
  6199b1:	00 
  6199b2:	48 8b 9c 24 38 03 00 	mov    0x338(%rsp),%rbx
  6199b9:	00 
  6199ba:	49 11 dd             	adc    %rbx,%r13
  6199bd:	4c 89 ac 24 08 03 00 	mov    %r13,0x308(%rsp)
  6199c4:	00 
  6199c5:	48 8b 9c 24 30 03 00 	mov    0x330(%rsp),%rbx
  6199cc:	00 
  6199cd:	48 11 d8             	adc    %rbx,%rax
  6199d0:	48 89 84 24 00 03 00 	mov    %rax,0x300(%rsp)
  6199d7:	00 
  6199d8:	48 8b 9c 24 28 03 00 	mov    0x328(%rsp),%rbx
  6199df:	00 
  6199e0:	49 11 da             	adc    %rbx,%r10
  6199e3:	4c 89 94 24 f8 02 00 	mov    %r10,0x2f8(%rsp)
  6199ea:	00 
  6199eb:	0f 92 c3             	setb   %bl
  6199ee:	0f b6 db             	movzbl %bl,%ebx
  6199f1:	48 8b b4 24 80 03 00 	mov    0x380(%rsp),%rsi
  6199f8:	00 
  6199f9:	48 8b bc 24 e8 03 00 	mov    0x3e8(%rsp),%rdi
  619a00:	00 
  619a01:	48 01 fe             	add    %rdi,%rsi
  619a04:	48 8b b4 24 78 03 00 	mov    0x378(%rsp),%rsi
  619a0b:	00 
  619a0c:	48 8b bc 24 e0 03 00 	mov    0x3e0(%rsp),%rdi
  619a13:	00 
  619a14:	48 11 fe             	adc    %rdi,%rsi
  619a17:	48 8b b4 24 68 03 00 	mov    0x368(%rsp),%rsi
  619a1e:	00 
  619a1f:	48 8b bc 24 d8 03 00 	mov    0x3d8(%rsp),%rdi
  619a26:	00 
  619a27:	48 11 fe             	adc    %rdi,%rsi
  619a2a:	48 8b b4 24 60 03 00 	mov    0x360(%rsp),%rsi
  619a31:	00 
  619a32:	48 8b bc 24 d0 03 00 	mov    0x3d0(%rsp),%rdi
  619a39:	00 
  619a3a:	48 11 fe             	adc    %rdi,%rsi
  619a3d:	48 8b b4 24 58 03 00 	mov    0x358(%rsp),%rsi
  619a44:	00 
  619a45:	48 8b bc 24 c0 03 00 	mov    0x3c0(%rsp),%rdi
  619a4c:	00 
  619a4d:	48 11 fe             	adc    %rdi,%rsi
  619a50:	48 8b b4 24 50 03 00 	mov    0x350(%rsp),%rsi
  619a57:	00 
  619a58:	48 8b bc 24 b8 03 00 	mov    0x3b8(%rsp),%rdi
  619a5f:	00 
  619a60:	48 11 fe             	adc    %rdi,%rsi
  619a63:	48 8b b4 24 48 03 00 	mov    0x348(%rsp),%rsi
  619a6a:	00 
  619a6b:	48 8b bc 24 b0 03 00 	mov    0x3b0(%rsp),%rdi
  619a72:	00 
  619a73:	48 11 fe             	adc    %rdi,%rsi
  619a76:	48 83 d3 00          	adc    $0x0,%rbx
  619a7a:	48 89 9c 24 f0 02 00 	mov    %rbx,0x2f0(%rsp)
  619a81:	00 
  619a82:	48 8b b4 24 c0 02 00 	mov    0x2c0(%rsp),%rsi
  619a89:	00 
  619a8a:	48 8b bc 24 f0 03 00 	mov    0x3f0(%rsp),%rdi
  619a91:	00 
  619a92:	48 01 fe             	add    %rdi,%rsi
  619a95:	48 89 b4 24 a8 02 00 	mov    %rsi,0x2a8(%rsp)
  619a9c:	00 
  619a9d:	48 8b bc 24 b8 02 00 	mov    0x2b8(%rsp),%rdi
  619aa4:	00 
  619aa5:	4c 8b 84 24 98 03 00 	mov    0x398(%rsp),%r8
  619aac:	00 
  619aad:	4c 11 c7             	adc    %r8,%rdi
  619ab0:	48 89 bc 24 a0 02 00 	mov    %rdi,0x2a0(%rsp)
  619ab7:	00 
  619ab8:	4c 8b 84 24 c8 02 00 	mov    0x2c8(%rsp),%r8
  619abf:	00 
  619ac0:	4c 8b 8c 24 d8 02 00 	mov    0x2d8(%rsp),%r9
  619ac7:	00 
  619ac8:	4d 11 c8             	adc    %r9,%r8
  619acb:	4c 89 84 24 98 02 00 	mov    %r8,0x298(%rsp)
  619ad2:	00 
  619ad3:	4c 8b 8c 24 d0 02 00 	mov    0x2d0(%rsp),%r9
  619ada:	00 
  619adb:	4c 8b 9c 24 e0 02 00 	mov    0x2e0(%rsp),%r11
  619ae2:	00 
  619ae3:	4d 11 d9             	adc    %r11,%r9
  619ae6:	4c 89 8c 24 90 02 00 	mov    %r9,0x290(%rsp)
  619aed:	00 
  619aee:	4c 8b 9c 24 08 02 00 	mov    0x208(%rsp),%r11
  619af5:	00 
  619af6:	4c 8b bc 24 e8 02 00 	mov    0x2e8(%rsp),%r15
  619afd:	00 
  619afe:	4d 11 fb             	adc    %r15,%r11
  619b01:	4c 89 9c 24 88 02 00 	mov    %r11,0x288(%rsp)
  619b08:	00 
  619b09:	4c 8b bc 24 38 01 00 	mov    0x138(%rsp),%r15
  619b10:	00 
  619b11:	49 83 d7 00          	adc    $0x0,%r15
  619b15:	4c 89 bc 24 80 02 00 	mov    %r15,0x280(%rsp)
  619b1c:	00 
  619b1d:	48 8b 9c 24 b0 02 00 	mov    0x2b0(%rsp),%rbx
  619b24:	00 
  619b25:	48 01 d3             	add    %rdx,%rbx
  619b28:	4c 11 e6             	adc    %r12,%rsi
  619b2b:	48 11 cf             	adc    %rcx,%rdi
  619b2e:	4d 11 e8             	adc    %r13,%r8
  619b31:	49 11 c1             	adc    %rax,%r9
  619b34:	4c 89 8c 24 78 02 00 	mov    %r9,0x278(%rsp)
  619b3b:	00 
  619b3c:	4d 11 d3             	adc    %r10,%r11
  619b3f:	4c 89 9c 24 70 02 00 	mov    %r11,0x270(%rsp)
  619b46:	00 
  619b47:	4c 8b 94 24 f0 02 00 	mov    0x2f0(%rsp),%r10
  619b4e:	00 
  619b4f:	4d 11 d7             	adc    %r10,%r15
  619b52:	4c 89 bc 24 68 02 00 	mov    %r15,0x268(%rsp)
  619b59:	00 
  619b5a:	48 89 da             	mov    %rbx,%rdx
  619b5d:	49 ba 01 00 00 00 01 	movabs $0x100000001,%r10
  619b64:	00 00 00 
  619b67:	c4 42 fb f6 d2       	mulx   %r10,%rax,%r10
  619b6c:	48 89 c2             	mov    %rax,%rdx
  619b6f:	49 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%r10
  619b76:	c4 42 93 f6 d2       	mulx   %r10,%r13,%r10
  619b7b:	48 c7 c1 fe ff ff ff 	mov    $0xfffffffffffffffe,%rcx
  619b82:	c4 e2 9b f6 c9       	mulx   %rcx,%r12,%rcx
  619b87:	49 bf 00 00 00 00 ff 	movabs $0xffffffff00000000,%r15
  619b8e:	ff ff ff 
  619b91:	c4 42 a3 f6 ff       	mulx   %r15,%r11,%r15
  619b96:	41 b9 ff ff ff ff    	mov    $0xffffffff,%r9d
  619b9c:	c4 c2 fb f6 d1       	mulx   %r9,%rax,%rdx
  619ba1:	4c 01 da             	add    %r11,%rdx
  619ba4:	4d 11 e7             	adc    %r12,%r15
  619ba7:	4c 11 e9             	adc    %r13,%rcx
  619baa:	4d 89 d3             	mov    %r10,%r11
  619bad:	4d 11 ea             	adc    %r13,%r10
  619bb0:	4d 11 dd             	adc    %r11,%r13
  619bb3:	49 83 d3 00          	adc    $0x0,%r11
  619bb7:	48 01 c3             	add    %rax,%rbx
  619bba:	48 11 f2             	adc    %rsi,%rdx
  619bbd:	48 89 94 24 60 02 00 	mov    %rdx,0x260(%rsp)
  619bc4:	00 
  619bc5:	49 11 ff             	adc    %rdi,%r15
  619bc8:	4c 89 bc 24 58 02 00 	mov    %r15,0x258(%rsp)
  619bcf:	00 
  619bd0:	4c 11 c1             	adc    %r8,%rcx
  619bd3:	48 89 8c 24 48 02 00 	mov    %rcx,0x248(%rsp)
  619bda:	00 
  619bdb:	48 8b 84 24 78 02 00 	mov    0x278(%rsp),%rax
  619be2:	00 
  619be3:	49 11 c2             	adc    %rax,%r10
  619be6:	4c 89 94 24 40 02 00 	mov    %r10,0x240(%rsp)
  619bed:	00 
  619bee:	48 8b 84 24 70 02 00 	mov    0x270(%rsp),%rax
  619bf5:	00 
  619bf6:	49 11 c5             	adc    %rax,%r13
  619bf9:	4c 89 ac 24 38 02 00 	mov    %r13,0x238(%rsp)
  619c00:	00 
  619c01:	48 8b 84 24 68 02 00 	mov    0x268(%rsp),%rax
  619c08:	00 
  619c09:	49 11 c3             	adc    %rax,%r11
  619c0c:	4c 89 9c 24 30 02 00 	mov    %r11,0x230(%rsp)
  619c13:	00 
  619c14:	0f 92 c0             	setb   %al
  619c17:	0f b6 c0             	movzbl %al,%eax
  619c1a:	48 8b 9c 24 b0 02 00 	mov    0x2b0(%rsp),%rbx
  619c21:	00 
  619c22:	48 8b b4 24 20 03 00 	mov    0x320(%rsp),%rsi
  619c29:	00 
  619c2a:	48 01 f3             	add    %rsi,%rbx
  619c2d:	48 8b 9c 24 a8 02 00 	mov    0x2a8(%rsp),%rbx
  619c34:	00 
  619c35:	48 8b b4 24 18 03 00 	mov    0x318(%rsp),%rsi
  619c3c:	00 
  619c3d:	48 11 f3             	adc    %rsi,%rbx
  619c40:	48 8b 9c 24 a0 02 00 	mov    0x2a0(%rsp),%rbx
  619c47:	00 
  619c48:	48 8b b4 24 10 03 00 	mov    0x310(%rsp),%rsi
  619c4f:	00 
  619c50:	48 11 f3             	adc    %rsi,%rbx
  619c53:	48 8b 9c 24 98 02 00 	mov    0x298(%rsp),%rbx
  619c5a:	00 
  619c5b:	48 8b b4 24 08 03 00 	mov    0x308(%rsp),%rsi
  619c62:	00 
  619c63:	48 11 f3             	adc    %rsi,%rbx
  619c66:	48 8b 9c 24 90 02 00 	mov    0x290(%rsp),%rbx
  619c6d:	00 
  619c6e:	48 8b b4 24 00 03 00 	mov    0x300(%rsp),%rsi
  619c75:	00 
  619c76:	48 11 f3             	adc    %rsi,%rbx
  619c79:	48 8b 9c 24 88 02 00 	mov    0x288(%rsp),%rbx
  619c80:	00 
  619c81:	48 8b b4 24 f8 02 00 	mov    0x2f8(%rsp),%rsi
  619c88:	00 
  619c89:	48 11 f3             	adc    %rsi,%rbx
  619c8c:	48 8b 9c 24 80 02 00 	mov    0x280(%rsp),%rbx
  619c93:	00 
  619c94:	48 8b b4 24 f0 02 00 	mov    0x2f0(%rsp),%rsi
  619c9b:	00 
  619c9c:	48 11 f3             	adc    %rsi,%rbx
  619c9f:	48 83 d0 00          	adc    $0x0,%rax
  619ca3:	48 89 84 24 28 02 00 	mov    %rax,0x228(%rsp)
  619caa:	00 
  619cab:	48 8b 9c 24 f8 01 00 	mov    0x1f8(%rsp),%rbx
  619cb2:	00 
  619cb3:	48 8b b4 24 10 04 00 	mov    0x410(%rsp),%rsi
  619cba:	00 
  619cbb:	48 01 f3             	add    %rsi,%rbx
  619cbe:	48 89 9c 24 e8 01 00 	mov    %rbx,0x1e8(%rsp)
  619cc5:	00 
  619cc6:	48 8b b4 24 f0 01 00 	mov    0x1f0(%rsp),%rsi
  619ccd:	00 
  619cce:	48 8b bc 24 00 02 00 	mov    0x200(%rsp),%rdi
  619cd5:	00 
  619cd6:	48 11 fe             	adc    %rdi,%rsi
  619cd9:	48 89 b4 24 e0 01 00 	mov    %rsi,0x1e0(%rsp)
  619ce0:	00 
  619ce1:	48 8b bc 24 e0 02 00 	mov    0x2e0(%rsp),%rdi
  619ce8:	00 
  619ce9:	4c 8b 84 24 a0 03 00 	mov    0x3a0(%rsp),%r8
  619cf0:	00 
  619cf1:	4c 11 c7             	adc    %r8,%rdi
  619cf4:	48 89 bc 24 d8 01 00 	mov    %rdi,0x1d8(%rsp)
  619cfb:	00 
  619cfc:	4c 8b 84 24 08 02 00 	mov    0x208(%rsp),%r8
  619d03:	00 
  619d04:	4c 8b a4 24 18 02 00 	mov    0x218(%rsp),%r12
  619d0b:	00 
  619d0c:	4d 11 e0             	adc    %r12,%r8
  619d0f:	4c 89 84 24 d0 01 00 	mov    %r8,0x1d0(%rsp)
  619d16:	00 
  619d17:	4c 8b a4 24 48 01 00 	mov    0x148(%rsp),%r12
  619d1e:	00 
  619d1f:	4c 8b 8c 24 10 02 00 	mov    0x210(%rsp),%r9
  619d26:	00 
  619d27:	4d 11 e1             	adc    %r12,%r9
  619d2a:	4c 89 8c 24 c8 01 00 	mov    %r9,0x1c8(%rsp)
  619d31:	00 
  619d32:	4c 8b a4 24 20 02 00 	mov    0x220(%rsp),%r12
  619d39:	00 
  619d3a:	49 83 d4 00          	adc    $0x0,%r12
  619d3e:	4c 89 a4 24 c0 01 00 	mov    %r12,0x1c0(%rsp)
  619d45:	00 
  619d46:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
  619d4b:	48 01 c2             	add    %rax,%rdx
  619d4e:	4c 11 fb             	adc    %r15,%rbx
  619d51:	48 11 ce             	adc    %rcx,%rsi
  619d54:	4c 11 d7             	adc    %r10,%rdi
  619d57:	4d 11 e8             	adc    %r13,%r8
  619d5a:	4c 89 84 24 b8 01 00 	mov    %r8,0x1b8(%rsp)
  619d61:	00 
  619d62:	4d 11 d9             	adc    %r11,%r9
  619d65:	4c 89 8c 24 b0 01 00 	mov    %r9,0x1b0(%rsp)
  619d6c:	00 
  619d6d:	4c 8b 9c 24 28 02 00 	mov    0x228(%rsp),%r11
  619d74:	00 
  619d75:	4d 11 dc             	adc    %r11,%r12
  619d78:	4c 89 a4 24 a8 01 00 	mov    %r12,0x1a8(%rsp)
  619d7f:	00 
  619d80:	49 bb 01 00 00 00 01 	movabs $0x100000001,%r11
  619d87:	00 00 00 
  619d8a:	c4 42 93 f6 db       	mulx   %r11,%r13,%r11
  619d8f:	49 89 d3             	mov    %rdx,%r11
  619d92:	4c 89 ea             	mov    %r13,%rdx
  619d95:	49 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%r10
  619d9c:	c4 42 f3 f6 d2       	mulx   %r10,%rcx,%r10
  619da1:	49 c7 c7 fe ff ff ff 	mov    $0xfffffffffffffffe,%r15
  619da8:	c4 42 fb f6 ff       	mulx   %r15,%rax,%r15
  619dad:	49 bc 00 00 00 00 ff 	movabs $0xffffffff00000000,%r12
  619db4:	ff ff ff 
  619db7:	c4 42 b3 f6 e4       	mulx   %r12,%r9,%r12
  619dbc:	41 b8 ff ff ff ff    	mov    $0xffffffff,%r8d
  619dc2:	c4 c2 93 f6 d0       	mulx   %r8,%r13,%rdx
  619dc7:	4c 01 ca             	add    %r9,%rdx
  619dca:	49 11 c4             	adc    %rax,%r12
  619dcd:	49 11 cf             	adc    %rcx,%r15
  619dd0:	48 89 c8             	mov    %rcx,%rax
  619dd3:	4c 11 d1             	adc    %r10,%rcx
  619dd6:	4c 11 d0             	adc    %r10,%rax
  619dd9:	49 83 d2 00          	adc    $0x0,%r10
  619ddd:	4d 01 eb             	add    %r13,%r11
  619de0:	48 11 da             	adc    %rbx,%rdx
  619de3:	48 89 94 24 90 01 00 	mov    %rdx,0x190(%rsp)
  619dea:	00 
  619deb:	49 11 f4             	adc    %rsi,%r12
  619dee:	4c 89 a4 24 88 01 00 	mov    %r12,0x188(%rsp)
  619df5:	00 
  619df6:	49 11 ff             	adc    %rdi,%r15
  619df9:	4c 89 bc 24 80 01 00 	mov    %r15,0x180(%rsp)
  619e00:	00 
  619e01:	48 8b 9c 24 b8 01 00 	mov    0x1b8(%rsp),%rbx
  619e08:	00 
  619e09:	48 11 d9             	adc    %rbx,%rcx
  619e0c:	48 89 8c 24 78 01 00 	mov    %rcx,0x178(%rsp)
  619e13:	00 
  619e14:	48 8b 9c 24 b0 01 00 	mov    0x1b0(%rsp),%rbx
  619e1b:	00 
  619e1c:	48 11 d8             	adc    %rbx,%rax
  619e1f:	48 89 84 24 70 01 00 	mov    %rax,0x170(%rsp)
  619e26:	00 
  619e27:	48 8b 9c 24 a8 01 00 	mov    0x1a8(%rsp),%rbx
  619e2e:	00 
  619e2f:	49 11 da             	adc    %rbx,%r10
  619e32:	4c 89 94 24 68 01 00 	mov    %r10,0x168(%rsp)
  619e39:	00 
  619e3a:	0f 92 c3             	setb   %bl
  619e3d:	0f b6 db             	movzbl %bl,%ebx
  619e40:	48 8b b4 24 60 02 00 	mov    0x260(%rsp),%rsi
  619e47:	00 
  619e48:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
  619e4d:	48 01 fe             	add    %rdi,%rsi
  619e50:	48 8b b4 24 e8 01 00 	mov    0x1e8(%rsp),%rsi
  619e57:	00 
  619e58:	48 8b bc 24 58 02 00 	mov    0x258(%rsp),%rdi
  619e5f:	00 
  619e60:	48 11 fe             	adc    %rdi,%rsi
  619e63:	48 8b b4 24 e0 01 00 	mov    0x1e0(%rsp),%rsi
  619e6a:	00 
  619e6b:	48 8b bc 24 48 02 00 	mov    0x248(%rsp),%rdi
  619e72:	00 
  619e73:	48 11 fe             	adc    %rdi,%rsi
  619e76:	48 8b b4 24 d8 01 00 	mov    0x1d8(%rsp),%rsi
  619e7d:	00 
  619e7e:	48 8b bc 24 40 02 00 	mov    0x240(%rsp),%rdi
  619e85:	00 
  619e86:	48 11 fe             	adc    %rdi,%rsi
  619e89:	48 8b b4 24 d0 01 00 	mov    0x1d0(%rsp),%rsi
  619e90:	00 
  619e91:	48 8b bc 24 38 02 00 	mov    0x238(%rsp),%rdi
  619e98:	00 
  619e99:	48 11 fe             	adc    %rdi,%rsi
  619e9c:	48 8b b4 24 c8 01 00 	mov    0x1c8(%rsp),%rsi
  619ea3:	00 
  619ea4:	48 8b bc 24 30 02 00 	mov    0x230(%rsp),%rdi
  619eab:	00 
  619eac:	48 11 fe             	adc    %rdi,%rsi
  619eaf:	48 8b b4 24 c0 01 00 	mov    0x1c0(%rsp),%rsi
  619eb6:	00 
  619eb7:	48 8b bc 24 28 02 00 	mov    0x228(%rsp),%rdi
  619ebe:	00 
  619ebf:	48 11 fe             	adc    %rdi,%rsi
  619ec2:	48 83 d3 00          	adc    $0x0,%rbx
  619ec6:	48 89 9c 24 60 01 00 	mov    %rbx,0x160(%rsp)
  619ecd:	00 
  619ece:	48 8b b4 24 20 01 00 	mov    0x120(%rsp),%rsi
  619ed5:	00 
  619ed6:	48 8b 7c 24 68       	mov    0x68(%rsp),%rdi
  619edb:	48 01 fe             	add    %rdi,%rsi
  619ede:	48 89 b4 24 18 01 00 	mov    %rsi,0x118(%rsp)
  619ee5:	00 
  619ee6:	48 8b bc 24 a8 03 00 	mov    0x3a8(%rsp),%rdi
  619eed:	00 
  619eee:	4c 8b 4c 24 60       	mov    0x60(%rsp),%r9
  619ef3:	4c 11 cf             	adc    %r9,%rdi
  619ef6:	48 89 bc 24 08 01 00 	mov    %rdi,0x108(%rsp)
  619efd:	00 
  619efe:	4c 8b 8c 24 30 01 00 	mov    0x130(%rsp),%r9
  619f05:	00 
  619f06:	4c 8b 9c 24 e8 02 00 	mov    0x2e8(%rsp),%r11
  619f0d:	00 
  619f0e:	4d 11 d9             	adc    %r11,%r9
  619f11:	4c 89 8c 24 00 01 00 	mov    %r9,0x100(%rsp)
  619f18:	00 
  619f19:	4c 8b 9c 24 38 01 00 	mov    0x138(%rsp),%r11
  619f20:	00 
  619f21:	4c 8b ac 24 48 01 00 	mov    0x148(%rsp),%r13
  619f28:	00 
  619f29:	4d 11 eb             	adc    %r13,%r11
  619f2c:	4c 89 9c 24 f8 00 00 	mov    %r11,0xf8(%rsp)
  619f33:	00 
  619f34:	4c 8b ac 24 58 01 00 	mov    0x158(%rsp),%r13
  619f3b:	00 
  619f3c:	4c 8b 84 24 20 02 00 	mov    0x220(%rsp),%r8
  619f43:	00 
  619f44:	4d 11 c5             	adc    %r8,%r13
  619f47:	4c 89 ac 24 f0 00 00 	mov    %r13,0xf0(%rsp)
  619f4e:	00 
  619f4f:	4c 8b 84 24 50 01 00 	mov    0x150(%rsp),%r8
  619f56:	00 
  619f57:	49 83 d0 00          	adc    $0x0,%r8
  619f5b:	4c 89 84 24 e8 00 00 	mov    %r8,0xe8(%rsp)
  619f62:	00 
  619f63:	48 8b 9c 24 28 01 00 	mov    0x128(%rsp),%rbx
  619f6a:	00 
  619f6b:	48 01 d3             	add    %rdx,%rbx
  619f6e:	4c 11 e6             	adc    %r12,%rsi
  619f71:	4c 11 ff             	adc    %r15,%rdi
  619f74:	49 11 c9             	adc    %rcx,%r9
  619f77:	49 11 c3             	adc    %rax,%r11
  619f7a:	4c 89 9c 24 d8 00 00 	mov    %r11,0xd8(%rsp)
  619f81:	00 
  619f82:	4d 11 d5             	adc    %r10,%r13
  619f85:	4c 89 ac 24 c8 00 00 	mov    %r13,0xc8(%rsp)
  619f8c:	00 
  619f8d:	4c 8b 94 24 60 01 00 	mov    0x160(%rsp),%r10
  619f94:	00 
  619f95:	4d 11 d0             	adc    %r10,%r8
  619f98:	4c 89 84 24 c0 00 00 	mov    %r8,0xc0(%rsp)
  619f9f:	00 
  619fa0:	48 89 da             	mov    %rbx,%rdx
  619fa3:	49 ba 01 00 00 00 01 	movabs $0x100000001,%r10
  619faa:	00 00 00 
  619fad:	c4 42 fb f6 d2       	mulx   %r10,%rax,%r10
  619fb2:	48 89 c2             	mov    %rax,%rdx
  619fb5:	49 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%r10
  619fbc:	c4 42 f3 f6 d2       	mulx   %r10,%rcx,%r10
  619fc1:	49 c7 c7 fe ff ff ff 	mov    $0xfffffffffffffffe,%r15
  619fc8:	c4 42 9b f6 ff       	mulx   %r15,%r12,%r15
  619fcd:	49 b8 00 00 00 00 ff 	movabs $0xffffffff00000000,%r8
  619fd4:	ff ff ff 
  619fd7:	c4 42 93 f6 c0       	mulx   %r8,%r13,%r8
  619fdc:	41 bb ff ff ff ff    	mov    $0xffffffff,%r11d
  619fe2:	c4 c2 eb f6 c3       	mulx   %r11,%rdx,%rax
  619fe7:	4c 01 e8             	add    %r13,%rax
  619fea:	4d 11 e0             	adc    %r12,%r8
  619fed:	49 11 cf             	adc    %rcx,%r15
  619ff0:	49 89 cc             	mov    %rcx,%r12
  619ff3:	4c 11 d1             	adc    %r10,%rcx
  619ff6:	4d 11 d4             	adc    %r10,%r12
  619ff9:	49 83 d2 00          	adc    $0x0,%r10
  619ffd:	48 01 d3             	add    %rdx,%rbx
  61a000:	48 11 f0             	adc    %rsi,%rax
  61a003:	49 11 f8             	adc    %rdi,%r8
  61a006:	4d 11 cf             	adc    %r9,%r15
  61a009:	48 8b 9c 24 d8 00 00 	mov    0xd8(%rsp),%rbx
  61a010:	00 
  61a011:	48 11 d9             	adc    %rbx,%rcx
  61a014:	48 8b 9c 24 c8 00 00 	mov    0xc8(%rsp),%rbx
  61a01b:	00 
  61a01c:	49 11 dc             	adc    %rbx,%r12
  61a01f:	48 8b 9c 24 c0 00 00 	mov    0xc0(%rsp),%rbx
  61a026:	00 
  61a027:	49 11 da             	adc    %rbx,%r10
  61a02a:	0f 92 c3             	setb   %bl
  61a02d:	0f b6 db             	movzbl %bl,%ebx
  61a030:	48 8b b4 24 28 01 00 	mov    0x128(%rsp),%rsi
  61a037:	00 
  61a038:	48 8b bc 24 90 01 00 	mov    0x190(%rsp),%rdi
  61a03f:	00 
  61a040:	48 01 fe             	add    %rdi,%rsi
  61a043:	48 8b b4 24 18 01 00 	mov    0x118(%rsp),%rsi
  61a04a:	00 
  61a04b:	48 8b bc 24 88 01 00 	mov    0x188(%rsp),%rdi
  61a052:	00 
  61a053:	48 11 fe             	adc    %rdi,%rsi
  61a056:	48 8b b4 24 08 01 00 	mov    0x108(%rsp),%rsi
  61a05d:	00 
  61a05e:	48 8b bc 24 80 01 00 	mov    0x180(%rsp),%rdi
  61a065:	00 
  61a066:	48 11 fe             	adc    %rdi,%rsi
  61a069:	48 8b b4 24 00 01 00 	mov    0x100(%rsp),%rsi
  61a070:	00 
  61a071:	48 8b bc 24 78 01 00 	mov    0x178(%rsp),%rdi
  61a078:	00 
  61a079:	48 11 fe             	adc    %rdi,%rsi
  61a07c:	48 8b b4 24 f8 00 00 	mov    0xf8(%rsp),%rsi
  61a083:	00 
  61a084:	48 8b bc 24 70 01 00 	mov    0x170(%rsp),%rdi
  61a08b:	00 
  61a08c:	48 11 fe             	adc    %rdi,%rsi
  61a08f:	48 8b b4 24 f0 00 00 	mov    0xf0(%rsp),%rsi
  61a096:	00 
  61a097:	48 8b bc 24 68 01 00 	mov    0x168(%rsp),%rdi
  61a09e:	00 
  61a09f:	48 11 fe             	adc    %rdi,%rsi
  61a0a2:	48 8b b4 24 e8 00 00 	mov    0xe8(%rsp),%rsi
  61a0a9:	00 
  61a0aa:	48 8b bc 24 60 01 00 	mov    0x160(%rsp),%rdi
  61a0b1:	00 
  61a0b2:	48 11 fe             	adc    %rdi,%rsi
  61a0b5:	48 83 d3 00          	adc    $0x0,%rbx
  61a0b9:	48 89 c6             	mov    %rax,%rsi
  61a0bc:	4c 29 d8             	sub    %r11,%rax
  61a0bf:	48 bf 00 00 00 00 ff 	movabs $0xffffffff00000000,%rdi
  61a0c6:	ff ff ff 
  61a0c9:	4d 89 c1             	mov    %r8,%r9
  61a0cc:	49 19 f8             	sbb    %rdi,%r8
  61a0cf:	4c 89 ff             	mov    %r15,%rdi
  61a0d2:	49 83 df fe          	sbb    $0xfffffffffffffffe,%r15
  61a0d6:	49 89 cb             	mov    %rcx,%r11
  61a0d9:	48 83 d9 ff          	sbb    $0xffffffffffffffff,%rcx
  61a0dd:	4d 89 e5             	mov    %r12,%r13
  61a0e0:	49 83 dc ff          	sbb    $0xffffffffffffffff,%r12
  61a0e4:	4c 89 d2             	mov    %r10,%rdx
  61a0e7:	49 83 da ff          	sbb    $0xffffffffffffffff,%r10
  61a0eb:	48 83 db 00          	sbb    $0x0,%rbx
  61a0ef:	0f 92 c3             	setb   %bl
  61a0f2:	0f b6 db             	movzbl %bl,%ebx
  61a0f5:	48 f7 db             	neg    %rbx
  61a0f8:	48 21 de             	and    %rbx,%rsi
  61a0fb:	c4 e2 e0 f2 c0       	andn   %rax,%rbx,%rax
  61a100:	48 09 c6             	or     %rax,%rsi
  61a103:	48 8b 84 24 28 04 00 	mov    0x428(%rsp),%rax
  61a10a:	00 
  61a10b:	48 89 30             	mov    %rsi,(%rax)
  61a10e:	49 21 d9             	and    %rbx,%r9
  61a111:	c4 c2 e0 f2 f0       	andn   %r8,%rbx,%rsi
  61a116:	49 09 f1             	or     %rsi,%r9
  61a119:	4c 89 48 08          	mov    %r9,0x8(%rax)
  61a11d:	48 21 df             	and    %rbx,%rdi
  61a120:	c4 c2 e0 f2 f7       	andn   %r15,%rbx,%rsi
  61a125:	48 09 f7             	or     %rsi,%rdi
  61a128:	48 89 78 10          	mov    %rdi,0x10(%rax)
  61a12c:	49 21 db             	and    %rbx,%r11
  61a12f:	c4 e2 e0 f2 c9       	andn   %rcx,%rbx,%rcx
  61a134:	4c 09 d9             	or     %r11,%rcx
  61a137:	48 89 48 18          	mov    %rcx,0x18(%rax)
  61a13b:	49 21 dd             	and    %rbx,%r13
  61a13e:	c4 c2 e0 f2 cc       	andn   %r12,%rbx,%rcx
  61a143:	49 09 cd             	or     %rcx,%r13
  61a146:	4c 89 68 20          	mov    %r13,0x20(%rax)
  61a14a:	48 21 da             	and    %rbx,%rdx
  61a14d:	c4 c2 e0 f2 ca       	andn   %r10,%rbx,%rcx
  61a152:	48 09 ca             	or     %rcx,%rdx
  61a155:	48 89 50 28          	mov    %rdx,0x28(%rax)
  61a159:	c9                   	leave
  61a15a:	c3                   	ret
  61a15b:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  61a160:	48 89 5c 24 10       	mov    %rbx,0x10(%rsp)
  61a165:	e8 56 22 e7 ff       	call   48c3c0 <runtime.morestack_noctxt.abi0>
  61a16a:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
  61a16f:	48 8b 5c 24 10       	mov    0x10(%rsp),%rbx
  61a174:	e9 87 f1 ff ff       	jmp    619300 <crypto/internal/fips140/nistec/fiat.p384Square>

Disassembly of section .plt:
