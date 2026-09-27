
/home/exedev/crypto-audit/round4/bin/ecdsa-v3-mul.test:     file format elf64-x86-64


Disassembly of section .text:

00000000006182a0 <crypto/internal/fips140/nistec/fiat.p384Mul>:
  6182a0:	4c 8d a4 24 70 fb ff 	lea    -0x490(%rsp),%r12
  6182a7:	ff 
  6182a8:	4d 3b 66 10          	cmp    0x10(%r14),%r12
  6182ac:	0f 86 16 10 00 00    	jbe    6192c8 <crypto/internal/fips140/nistec/fiat.p384Mul+0x1028>
  6182b2:	55                   	push   %rbp
  6182b3:	48 89 e5             	mov    %rsp,%rbp
  6182b6:	48 81 ec 08 05 00 00 	sub    $0x508,%rsp
  6182bd:	48 89 84 24 18 05 00 	mov    %rax,0x518(%rsp)
  6182c4:	00 
  6182c5:	48 8b 73 08          	mov    0x8(%rbx),%rsi
  6182c9:	48 8b 7b 10          	mov    0x10(%rbx),%rdi
  6182cd:	4c 8b 43 18          	mov    0x18(%rbx),%r8
  6182d1:	4c 8b 4b 20          	mov    0x20(%rbx),%r9
  6182d5:	4c 8b 53 28          	mov    0x28(%rbx),%r10
  6182d9:	4c 89 94 24 e8 00 00 	mov    %r10,0xe8(%rsp)
  6182e0:	00 
  6182e1:	48 8b 1b             	mov    (%rbx),%rbx
  6182e4:	48 8b 51 08          	mov    0x8(%rcx),%rdx
  6182e8:	c4 62 9b f6 db       	mulx   %rbx,%r12,%r11
  6182ed:	4c 89 9c 24 10 04 00 	mov    %r11,0x410(%rsp)
  6182f4:	00 
  6182f5:	4c 89 a4 24 60 04 00 	mov    %r12,0x460(%rsp)
  6182fc:	00 
  6182fd:	49 89 d5             	mov    %rdx,%r13
  618300:	48 89 f2             	mov    %rsi,%rdx
  618303:	c4 42 fb f6 fd       	mulx   %r13,%rax,%r15
  618308:	4c 89 7c 24 50       	mov    %r15,0x50(%rsp)
  61830d:	48 89 44 24 58       	mov    %rax,0x58(%rsp)
  618312:	4c 8b 79 10          	mov    0x10(%rcx),%r15
  618316:	4c 89 fa             	mov    %r15,%rdx
  618319:	c4 e2 a3 f6 c3       	mulx   %rbx,%r11,%rax
  61831e:	48 89 84 24 a0 04 00 	mov    %rax,0x4a0(%rsp)
  618325:	00 
  618326:	4c 89 9c 24 c8 04 00 	mov    %r11,0x4c8(%rsp)
  61832d:	00 
  61832e:	c4 e2 a3 f6 c6       	mulx   %rsi,%r11,%rax
  618333:	48 89 44 24 60       	mov    %rax,0x60(%rsp)
  618338:	4c 89 5c 24 68       	mov    %r11,0x68(%rsp)
  61833d:	48 89 fa             	mov    %rdi,%rdx
  618340:	c4 c2 a3 f6 c7       	mulx   %r15,%r11,%rax
  618345:	48 89 84 24 40 04 00 	mov    %rax,0x440(%rsp)
  61834c:	00 
  61834d:	4c 89 9c 24 48 04 00 	mov    %r11,0x448(%rsp)
  618354:	00 
  618355:	4c 89 ea             	mov    %r13,%rdx
  618358:	c4 e2 a3 f6 c7       	mulx   %rdi,%r11,%rax
  61835d:	48 89 84 24 30 04 00 	mov    %rax,0x430(%rsp)
  618364:	00 
  618365:	4c 89 9c 24 38 04 00 	mov    %r11,0x438(%rsp)
  61836c:	00 
  61836d:	48 8b 41 28          	mov    0x28(%rcx),%rax
  618371:	48 89 84 24 00 05 00 	mov    %rax,0x500(%rsp)
  618378:	00 
  618379:	48 89 c2             	mov    %rax,%rdx
  61837c:	c4 62 9b f6 db       	mulx   %rbx,%r12,%r11
  618381:	4c 89 5c 24 40       	mov    %r11,0x40(%rsp)
  618386:	4c 89 a4 24 98 00 00 	mov    %r12,0x98(%rsp)
  61838d:	00 
  61838e:	c4 62 9b f6 de       	mulx   %rsi,%r12,%r11
  618393:	4c 89 9c 24 90 00 00 	mov    %r11,0x90(%rsp)
  61839a:	00 
  61839b:	4c 89 a4 24 a0 00 00 	mov    %r12,0xa0(%rsp)
  6183a2:	00 
  6183a3:	c4 62 9b f6 df       	mulx   %rdi,%r12,%r11
  6183a8:	4c 89 9c 24 78 04 00 	mov    %r11,0x478(%rsp)
  6183af:	00 
  6183b0:	4c 89 a4 24 80 04 00 	mov    %r12,0x480(%rsp)
  6183b7:	00 
  6183b8:	c4 42 9b f6 d8       	mulx   %r8,%r12,%r11
  6183bd:	4c 89 9c 24 80 03 00 	mov    %r11,0x380(%rsp)
  6183c4:	00 
  6183c5:	4c 89 a4 24 88 03 00 	mov    %r12,0x388(%rsp)
  6183cc:	00 
  6183cd:	4c 8b 59 18          	mov    0x18(%rcx),%r11
  6183d1:	4c 89 da             	mov    %r11,%rdx
  6183d4:	c4 62 ab f6 e3       	mulx   %rbx,%r10,%r12
  6183d9:	4c 89 a4 24 d0 04 00 	mov    %r12,0x4d0(%rsp)
  6183e0:	00 
  6183e1:	4c 89 94 24 d8 04 00 	mov    %r10,0x4d8(%rsp)
  6183e8:	00 
  6183e9:	c4 62 ab f6 e6       	mulx   %rsi,%r10,%r12
  6183ee:	4c 89 64 24 70       	mov    %r12,0x70(%rsp)
  6183f3:	4c 89 54 24 78       	mov    %r10,0x78(%rsp)
  6183f8:	c4 62 ab f6 e7       	mulx   %rdi,%r10,%r12
  6183fd:	4c 89 a4 24 50 04 00 	mov    %r12,0x450(%rsp)
  618404:	00 
  618405:	4c 89 94 24 58 04 00 	mov    %r10,0x458(%rsp)
  61840c:	00 
  61840d:	4c 89 c2             	mov    %r8,%rdx
  618410:	c4 42 ab f6 e3       	mulx   %r11,%r10,%r12
  618415:	4c 89 a4 24 60 03 00 	mov    %r12,0x360(%rsp)
  61841c:	00 
  61841d:	4c 89 94 24 68 03 00 	mov    %r10,0x368(%rsp)
  618424:	00 
  618425:	4c 89 fa             	mov    %r15,%rdx
  618428:	c4 42 ab f6 e0       	mulx   %r8,%r10,%r12
  61842d:	4c 89 a4 24 50 03 00 	mov    %r12,0x350(%rsp)
  618434:	00 
  618435:	4c 89 94 24 58 03 00 	mov    %r10,0x358(%rsp)
  61843c:	00 
  61843d:	4c 89 ea             	mov    %r13,%rdx
  618440:	c4 42 ab f6 e0       	mulx   %r8,%r10,%r12
  618445:	4c 89 a4 24 40 03 00 	mov    %r12,0x340(%rsp)
  61844c:	00 
  61844d:	4c 89 94 24 48 03 00 	mov    %r10,0x348(%rsp)
  618454:	00 
  618455:	48 89 c2             	mov    %rax,%rdx
  618458:	c4 42 ab f6 e1       	mulx   %r9,%r10,%r12
  61845d:	4c 89 a4 24 a0 02 00 	mov    %r12,0x2a0(%rsp)
  618464:	00 
  618465:	4c 89 94 24 a8 02 00 	mov    %r10,0x2a8(%rsp)
  61846c:	00 
  61846d:	4c 8b 61 20          	mov    0x20(%rcx),%r12
  618471:	4c 89 e2             	mov    %r12,%rdx
  618474:	c4 62 fb f6 d3       	mulx   %rbx,%rax,%r10
  618479:	4c 89 94 24 f8 04 00 	mov    %r10,0x4f8(%rsp)
  618480:	00 
  618481:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  618486:	c4 62 fb f6 d6       	mulx   %rsi,%rax,%r10
  61848b:	4c 89 94 24 80 00 00 	mov    %r10,0x80(%rsp)
  618492:	00 
  618493:	48 89 84 24 88 00 00 	mov    %rax,0x88(%rsp)
  61849a:	00 
  61849b:	c4 62 fb f6 d7       	mulx   %rdi,%rax,%r10
  6184a0:	4c 89 94 24 68 04 00 	mov    %r10,0x468(%rsp)
  6184a7:	00 
  6184a8:	48 89 84 24 70 04 00 	mov    %rax,0x470(%rsp)
  6184af:	00 
  6184b0:	c4 42 fb f6 d0       	mulx   %r8,%rax,%r10
  6184b5:	4c 89 94 24 70 03 00 	mov    %r10,0x370(%rsp)
  6184bc:	00 
  6184bd:	48 89 84 24 78 03 00 	mov    %rax,0x378(%rsp)
  6184c4:	00 
  6184c5:	4c 89 ca             	mov    %r9,%rdx
  6184c8:	c4 42 fb f6 d4       	mulx   %r12,%rax,%r10
  6184cd:	4c 89 94 24 90 02 00 	mov    %r10,0x290(%rsp)
  6184d4:	00 
  6184d5:	48 89 84 24 98 02 00 	mov    %rax,0x298(%rsp)
  6184dc:	00 
  6184dd:	4c 89 da             	mov    %r11,%rdx
  6184e0:	c4 42 fb f6 d1       	mulx   %r9,%rax,%r10
  6184e5:	4c 89 94 24 80 02 00 	mov    %r10,0x280(%rsp)
  6184ec:	00 
  6184ed:	48 89 84 24 88 02 00 	mov    %rax,0x288(%rsp)
  6184f4:	00 
  6184f5:	4c 89 fa             	mov    %r15,%rdx
  6184f8:	c4 42 fb f6 d1       	mulx   %r9,%rax,%r10
  6184fd:	4c 89 94 24 70 02 00 	mov    %r10,0x270(%rsp)
  618504:	00 
  618505:	48 89 84 24 78 02 00 	mov    %rax,0x278(%rsp)
  61850c:	00 
  61850d:	4c 89 ea             	mov    %r13,%rdx
  618510:	c4 42 fb f6 d1       	mulx   %r9,%rax,%r10
  618515:	4c 89 94 24 60 02 00 	mov    %r10,0x260(%rsp)
  61851c:	00 
  61851d:	48 89 84 24 68 02 00 	mov    %rax,0x268(%rsp)
  618524:	00 
  618525:	48 8b 09             	mov    (%rcx),%rcx
  618528:	48 89 da             	mov    %rbx,%rdx
  61852b:	c4 e2 eb f6 d9       	mulx   %rcx,%rdx,%rbx
  618530:	48 89 94 24 e0 03 00 	mov    %rdx,0x3e0(%rsp)
  618537:	00 
  618538:	48 ba 01 00 00 00 01 	movabs $0x100000001,%rdx
  61853f:	00 00 00 
  618542:	4c 8b 94 24 e0 03 00 	mov    0x3e0(%rsp),%r10
  618549:	00 
  61854a:	c4 c2 eb f6 c2       	mulx   %r10,%rdx,%rax
  61854f:	48 89 d0             	mov    %rdx,%rax
  618552:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
  618559:	c4 e2 ab f6 d0       	mulx   %rax,%r10,%rdx
  61855e:	48 89 94 24 00 02 00 	mov    %rdx,0x200(%rsp)
  618565:	00 
  618566:	4c 89 94 24 f8 01 00 	mov    %r10,0x1f8(%rsp)
  61856d:	00 
  61856e:	48 c7 c2 fe ff ff ff 	mov    $0xfffffffffffffffe,%rdx
  618575:	c4 e2 ab f6 d0       	mulx   %rax,%r10,%rdx
  61857a:	48 89 94 24 48 01 00 	mov    %rdx,0x148(%rsp)
  618581:	00 
  618582:	4c 89 94 24 a0 01 00 	mov    %r10,0x1a0(%rsp)
  618589:	00 
  61858a:	48 ba 00 00 00 00 ff 	movabs $0xffffffff00000000,%rdx
  618591:	ff ff ff 
  618594:	c4 e2 ab f6 d0       	mulx   %rax,%r10,%rdx
  618599:	48 89 94 24 10 01 00 	mov    %rdx,0x110(%rsp)
  6185a0:	00 
  6185a1:	ba ff ff ff ff       	mov    $0xffffffff,%edx
  6185a6:	c4 e2 eb f6 c0       	mulx   %rax,%rdx,%rax
  6185ab:	48 89 84 24 f0 00 00 	mov    %rax,0xf0(%rsp)
  6185b2:	00 
  6185b3:	48 89 94 24 f8 00 00 	mov    %rdx,0xf8(%rsp)
  6185ba:	00 
  6185bb:	48 89 ca             	mov    %rcx,%rdx
  6185be:	c4 e2 fb f6 f6       	mulx   %rsi,%rax,%rsi
  6185c3:	48 89 74 24 38       	mov    %rsi,0x38(%rsp)
  6185c8:	48 89 44 24 48       	mov    %rax,0x48(%rsp)
  6185cd:	c4 e2 fb f6 ff       	mulx   %rdi,%rax,%rdi
  6185d2:	48 89 bc 24 20 04 00 	mov    %rdi,0x420(%rsp)
  6185d9:	00 
  6185da:	48 89 84 24 28 04 00 	mov    %rax,0x428(%rsp)
  6185e1:	00 
  6185e2:	c4 42 fb f6 c0       	mulx   %r8,%rax,%r8
  6185e7:	4c 89 84 24 30 03 00 	mov    %r8,0x330(%rsp)
  6185ee:	00 
  6185ef:	48 89 84 24 38 03 00 	mov    %rax,0x338(%rsp)
  6185f6:	00 
  6185f7:	c4 42 fb f6 c9       	mulx   %r9,%rax,%r9
  6185fc:	4c 89 8c 24 50 02 00 	mov    %r9,0x250(%rsp)
  618603:	00 
  618604:	48 89 84 24 58 02 00 	mov    %rax,0x258(%rsp)
  61860b:	00 
  61860c:	48 8b 94 24 e8 00 00 	mov    0xe8(%rsp),%rdx
  618613:	00 
  618614:	48 8b 84 24 00 05 00 	mov    0x500(%rsp),%rax
  61861b:	00 
  61861c:	c4 e2 b3 f6 c0       	mulx   %rax,%r9,%rax
  618621:	48 89 84 24 b0 01 00 	mov    %rax,0x1b0(%rsp)
  618628:	00 
  618629:	4c 89 8c 24 b8 01 00 	mov    %r9,0x1b8(%rsp)
  618630:	00 
  618631:	4c 89 e2             	mov    %r12,%rdx
  618634:	48 8b 84 24 e8 00 00 	mov    0xe8(%rsp),%rax
  61863b:	00 
  61863c:	c4 62 eb f6 e0       	mulx   %rax,%rdx,%r12
  618641:	4c 89 a4 24 98 01 00 	mov    %r12,0x198(%rsp)
  618648:	00 
  618649:	48 89 94 24 a8 01 00 	mov    %rdx,0x1a8(%rsp)
  618650:	00 
  618651:	4c 89 da             	mov    %r11,%rdx
  618654:	c4 62 eb f6 d8       	mulx   %rax,%rdx,%r11
  618659:	4c 89 9c 24 88 01 00 	mov    %r11,0x188(%rsp)
  618660:	00 
  618661:	48 89 94 24 90 01 00 	mov    %rdx,0x190(%rsp)
  618668:	00 
  618669:	4c 89 fa             	mov    %r15,%rdx
  61866c:	c4 62 eb f6 f8       	mulx   %rax,%rdx,%r15
  618671:	4c 89 bc 24 78 01 00 	mov    %r15,0x178(%rsp)
  618678:	00 
  618679:	48 89 94 24 80 01 00 	mov    %rdx,0x180(%rsp)
  618680:	00 
  618681:	4c 89 ea             	mov    %r13,%rdx
  618684:	c4 62 eb f6 e8       	mulx   %rax,%rdx,%r13
  618689:	4c 89 ac 24 68 01 00 	mov    %r13,0x168(%rsp)
  618690:	00 
  618691:	48 89 94 24 70 01 00 	mov    %rdx,0x170(%rsp)
  618698:	00 
  618699:	48 89 ca             	mov    %rcx,%rdx
  61869c:	c4 e2 f3 f6 c0       	mulx   %rax,%rcx,%rax
  6186a1:	48 89 84 24 58 01 00 	mov    %rax,0x158(%rsp)
  6186a8:	00 
  6186a9:	48 89 8c 24 60 01 00 	mov    %rcx,0x160(%rsp)
  6186b0:	00 
  6186b1:	90                   	nop
  6186b2:	90                   	nop
  6186b3:	90                   	nop
  6186b4:	90                   	nop
  6186b5:	90                   	nop
  6186b6:	90                   	nop
  6186b7:	48 8b 94 24 60 04 00 	mov    0x460(%rsp),%rdx
  6186be:	00 
  6186bf:	48 01 da             	add    %rbx,%rdx
  6186c2:	48 8b 9c 24 10 04 00 	mov    0x410(%rsp),%rbx
  6186c9:	00 
  6186ca:	48 8b 8c 24 c8 04 00 	mov    0x4c8(%rsp),%rcx
  6186d1:	00 
  6186d2:	48 11 cb             	adc    %rcx,%rbx
  6186d5:	48 8b 8c 24 a0 04 00 	mov    0x4a0(%rsp),%rcx
  6186dc:	00 
  6186dd:	4c 8b 8c 24 d8 04 00 	mov    0x4d8(%rsp),%r9
  6186e4:	00 
  6186e5:	4c 11 c9             	adc    %r9,%rcx
  6186e8:	4c 8b 8c 24 d0 04 00 	mov    0x4d0(%rsp),%r9
  6186ef:	00 
  6186f0:	4c 8b 64 24 08       	mov    0x8(%rsp),%r12
  6186f5:	4d 11 e1             	adc    %r12,%r9
  6186f8:	4c 8b a4 24 f8 04 00 	mov    0x4f8(%rsp),%r12
  6186ff:	00 
  618700:	4c 8b 9c 24 98 00 00 	mov    0x98(%rsp),%r11
  618707:	00 
  618708:	4d 11 dc             	adc    %r11,%r12
  61870b:	4c 8b 5c 24 40       	mov    0x40(%rsp),%r11
  618710:	49 83 d3 00          	adc    $0x0,%r11
  618714:	4c 8b bc 24 f0 00 00 	mov    0xf0(%rsp),%r15
  61871b:	00 
  61871c:	4d 01 d7             	add    %r10,%r15
  61871f:	4c 8b 94 24 10 01 00 	mov    0x110(%rsp),%r10
  618726:	00 
  618727:	4c 8b ac 24 a0 01 00 	mov    0x1a0(%rsp),%r13
  61872e:	00 
  61872f:	4d 11 ea             	adc    %r13,%r10
  618732:	4c 8b ac 24 48 01 00 	mov    0x148(%rsp),%r13
  618739:	00 
  61873a:	48 8b 84 24 f8 01 00 	mov    0x1f8(%rsp),%rax
  618741:	00 
  618742:	49 11 c5             	adc    %rax,%r13
  618745:	4c 8b 84 24 00 02 00 	mov    0x200(%rsp),%r8
  61874c:	00 
  61874d:	4c 11 c0             	adc    %r8,%rax
  618750:	48 8b bc 24 f8 01 00 	mov    0x1f8(%rsp),%rdi
  618757:	00 
  618758:	4c 11 c7             	adc    %r8,%rdi
  61875b:	49 83 d0 00          	adc    $0x0,%r8
  61875f:	4c 89 84 24 e0 00 00 	mov    %r8,0xe0(%rsp)
  618766:	00 
  618767:	48 8b b4 24 e0 03 00 	mov    0x3e0(%rsp),%rsi
  61876e:	00 
  61876f:	4c 8b 84 24 f8 00 00 	mov    0xf8(%rsp),%r8
  618776:	00 
  618777:	4c 01 c6             	add    %r8,%rsi
  61877a:	4c 11 fa             	adc    %r15,%rdx
  61877d:	48 89 94 24 d8 00 00 	mov    %rdx,0xd8(%rsp)
  618784:	00 
  618785:	49 11 da             	adc    %rbx,%r10
  618788:	4c 89 94 24 d0 00 00 	mov    %r10,0xd0(%rsp)
  61878f:	00 
  618790:	49 11 cd             	adc    %rcx,%r13
  618793:	4c 89 ac 24 c8 00 00 	mov    %r13,0xc8(%rsp)
  61879a:	00 
  61879b:	4c 11 c8             	adc    %r9,%rax
  61879e:	48 89 84 24 c0 00 00 	mov    %rax,0xc0(%rsp)
  6187a5:	00 
  6187a6:	4c 11 e7             	adc    %r12,%rdi
  6187a9:	48 89 bc 24 b8 00 00 	mov    %rdi,0xb8(%rsp)
  6187b0:	00 
  6187b1:	48 8b 8c 24 e0 00 00 	mov    0xe0(%rsp),%rcx
  6187b8:	00 
  6187b9:	4c 11 d9             	adc    %r11,%rcx
  6187bc:	48 89 8c 24 b0 00 00 	mov    %rcx,0xb0(%rsp)
  6187c3:	00 
  6187c4:	0f 92 c3             	setb   %bl
  6187c7:	0f b6 db             	movzbl %bl,%ebx
  6187ca:	48 89 9c 24 a8 00 00 	mov    %rbx,0xa8(%rsp)
  6187d1:	00 
  6187d2:	48 8b 74 24 38       	mov    0x38(%rsp),%rsi
  6187d7:	4c 8b 44 24 58       	mov    0x58(%rsp),%r8
  6187dc:	4c 01 c6             	add    %r8,%rsi
  6187df:	48 89 74 24 30       	mov    %rsi,0x30(%rsp)
  6187e4:	4c 8b 44 24 50       	mov    0x50(%rsp),%r8
  6187e9:	4c 8b 4c 24 68       	mov    0x68(%rsp),%r9
  6187ee:	4d 11 c8             	adc    %r9,%r8
  6187f1:	4c 89 44 24 28       	mov    %r8,0x28(%rsp)
  6187f6:	4c 8b 4c 24 60       	mov    0x60(%rsp),%r9
  6187fb:	4c 8b 5c 24 78       	mov    0x78(%rsp),%r11
  618800:	4d 11 d9             	adc    %r11,%r9
  618803:	4c 89 4c 24 20       	mov    %r9,0x20(%rsp)
  618808:	4c 8b 5c 24 70       	mov    0x70(%rsp),%r11
  61880d:	4c 8b a4 24 88 00 00 	mov    0x88(%rsp),%r12
  618814:	00 
  618815:	4d 11 e3             	adc    %r12,%r11
  618818:	4c 89 5c 24 18       	mov    %r11,0x18(%rsp)
  61881d:	4c 8b a4 24 80 00 00 	mov    0x80(%rsp),%r12
  618824:	00 
  618825:	4c 8b bc 24 a0 00 00 	mov    0xa0(%rsp),%r15
  61882c:	00 
  61882d:	4d 11 fc             	adc    %r15,%r12
  618830:	4c 89 64 24 10       	mov    %r12,0x10(%rsp)
  618835:	4c 8b bc 24 90 00 00 	mov    0x90(%rsp),%r15
  61883c:	00 
  61883d:	49 83 d7 00          	adc    $0x0,%r15
  618841:	4c 89 3c 24          	mov    %r15,(%rsp)
  618845:	48 8b 5c 24 48       	mov    0x48(%rsp),%rbx
  61884a:	48 01 d3             	add    %rdx,%rbx
  61884d:	4c 11 d6             	adc    %r10,%rsi
  618850:	4d 11 e8             	adc    %r13,%r8
  618853:	49 11 c1             	adc    %rax,%r9
  618856:	49 11 fb             	adc    %rdi,%r11
  618859:	4c 89 9c 24 f0 04 00 	mov    %r11,0x4f0(%rsp)
  618860:	00 
  618861:	49 11 cc             	adc    %rcx,%r12
  618864:	4c 89 a4 24 e8 04 00 	mov    %r12,0x4e8(%rsp)
  61886b:	00 
  61886c:	48 8b 8c 24 a8 00 00 	mov    0xa8(%rsp),%rcx
  618873:	00 
  618874:	49 11 cf             	adc    %rcx,%r15
  618877:	4c 89 bc 24 e0 04 00 	mov    %r15,0x4e0(%rsp)
  61887e:	00 
  61887f:	48 89 da             	mov    %rbx,%rdx
  618882:	48 b9 01 00 00 00 01 	movabs $0x100000001,%rcx
  618889:	00 00 00 
  61888c:	c4 e2 c3 f6 c9       	mulx   %rcx,%rdi,%rcx
  618891:	48 89 fa             	mov    %rdi,%rdx
  618894:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  61889b:	c4 e2 fb f6 c9       	mulx   %rcx,%rax,%rcx
  6188a0:	49 c7 c5 fe ff ff ff 	mov    $0xfffffffffffffffe,%r13
  6188a7:	c4 42 ab f6 ed       	mulx   %r13,%r10,%r13
  6188ac:	49 bf 00 00 00 00 ff 	movabs $0xffffffff00000000,%r15
  6188b3:	ff ff ff 
  6188b6:	c4 42 9b f6 ff       	mulx   %r15,%r12,%r15
  6188bb:	41 bb ff ff ff ff    	mov    $0xffffffff,%r11d
  6188c1:	c4 c2 c3 f6 d3       	mulx   %r11,%rdi,%rdx
  6188c6:	4c 01 e2             	add    %r12,%rdx
  6188c9:	4d 11 d7             	adc    %r10,%r15
  6188cc:	49 11 c5             	adc    %rax,%r13
  6188cf:	49 89 c2             	mov    %rax,%r10
  6188d2:	48 11 c8             	adc    %rcx,%rax
  6188d5:	49 11 ca             	adc    %rcx,%r10
  6188d8:	48 83 d1 00          	adc    $0x0,%rcx
  6188dc:	48 01 fb             	add    %rdi,%rbx
  6188df:	48 11 f2             	adc    %rsi,%rdx
  6188e2:	48 89 94 24 c0 04 00 	mov    %rdx,0x4c0(%rsp)
  6188e9:	00 
  6188ea:	4d 11 c7             	adc    %r8,%r15
  6188ed:	4c 89 bc 24 b8 04 00 	mov    %r15,0x4b8(%rsp)
  6188f4:	00 
  6188f5:	4d 11 cd             	adc    %r9,%r13
  6188f8:	4c 89 ac 24 b0 04 00 	mov    %r13,0x4b0(%rsp)
  6188ff:	00 
  618900:	48 8b 9c 24 f0 04 00 	mov    0x4f0(%rsp),%rbx
  618907:	00 
  618908:	48 11 d8             	adc    %rbx,%rax
  61890b:	48 89 84 24 a8 04 00 	mov    %rax,0x4a8(%rsp)
  618912:	00 
  618913:	48 8b 9c 24 e8 04 00 	mov    0x4e8(%rsp),%rbx
  61891a:	00 
  61891b:	49 11 da             	adc    %rbx,%r10
  61891e:	4c 89 94 24 98 04 00 	mov    %r10,0x498(%rsp)
  618925:	00 
  618926:	48 8b 9c 24 e0 04 00 	mov    0x4e0(%rsp),%rbx
  61892d:	00 
  61892e:	48 11 d9             	adc    %rbx,%rcx
  618931:	48 89 8c 24 90 04 00 	mov    %rcx,0x490(%rsp)
  618938:	00 
  618939:	0f 92 c3             	setb   %bl
  61893c:	0f b6 db             	movzbl %bl,%ebx
  61893f:	48 8b 74 24 48       	mov    0x48(%rsp),%rsi
  618944:	48 8b bc 24 d8 00 00 	mov    0xd8(%rsp),%rdi
  61894b:	00 
  61894c:	48 01 fe             	add    %rdi,%rsi
  61894f:	48 8b 74 24 30       	mov    0x30(%rsp),%rsi
  618954:	48 8b bc 24 d0 00 00 	mov    0xd0(%rsp),%rdi
  61895b:	00 
  61895c:	48 11 fe             	adc    %rdi,%rsi
  61895f:	48 8b 74 24 28       	mov    0x28(%rsp),%rsi
  618964:	48 8b bc 24 c8 00 00 	mov    0xc8(%rsp),%rdi
  61896b:	00 
  61896c:	48 11 fe             	adc    %rdi,%rsi
  61896f:	48 8b 74 24 20       	mov    0x20(%rsp),%rsi
  618974:	48 8b bc 24 c0 00 00 	mov    0xc0(%rsp),%rdi
  61897b:	00 
  61897c:	48 11 fe             	adc    %rdi,%rsi
  61897f:	48 8b 74 24 18       	mov    0x18(%rsp),%rsi
  618984:	48 8b bc 24 b8 00 00 	mov    0xb8(%rsp),%rdi
  61898b:	00 
  61898c:	48 11 fe             	adc    %rdi,%rsi
  61898f:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
  618994:	48 8b bc 24 b0 00 00 	mov    0xb0(%rsp),%rdi
  61899b:	00 
  61899c:	48 11 fe             	adc    %rdi,%rsi
  61899f:	48 8b 34 24          	mov    (%rsp),%rsi
  6189a3:	48 8b bc 24 a8 00 00 	mov    0xa8(%rsp),%rdi
  6189aa:	00 
  6189ab:	48 11 fe             	adc    %rdi,%rsi
  6189ae:	48 83 d3 00          	adc    $0x0,%rbx
  6189b2:	48 89 9c 24 88 04 00 	mov    %rbx,0x488(%rsp)
  6189b9:	00 
  6189ba:	48 8b b4 24 20 04 00 	mov    0x420(%rsp),%rsi
  6189c1:	00 
  6189c2:	48 8b bc 24 38 04 00 	mov    0x438(%rsp),%rdi
  6189c9:	00 
  6189ca:	48 01 fe             	add    %rdi,%rsi
  6189cd:	48 89 b4 24 18 04 00 	mov    %rsi,0x418(%rsp)
  6189d4:	00 
  6189d5:	48 8b bc 24 30 04 00 	mov    0x430(%rsp),%rdi
  6189dc:	00 
  6189dd:	4c 8b 84 24 48 04 00 	mov    0x448(%rsp),%r8
  6189e4:	00 
  6189e5:	4c 11 c7             	adc    %r8,%rdi
  6189e8:	48 89 bc 24 08 04 00 	mov    %rdi,0x408(%rsp)
  6189ef:	00 
  6189f0:	4c 8b 84 24 40 04 00 	mov    0x440(%rsp),%r8
  6189f7:	00 
  6189f8:	4c 8b 8c 24 58 04 00 	mov    0x458(%rsp),%r9
  6189ff:	00 
  618a00:	4d 11 c8             	adc    %r9,%r8
  618a03:	4c 89 84 24 00 04 00 	mov    %r8,0x400(%rsp)
  618a0a:	00 
  618a0b:	4c 8b 8c 24 50 04 00 	mov    0x450(%rsp),%r9
  618a12:	00 
  618a13:	4c 8b a4 24 70 04 00 	mov    0x470(%rsp),%r12
  618a1a:	00 
  618a1b:	4d 11 e1             	adc    %r12,%r9
  618a1e:	4c 89 8c 24 f8 03 00 	mov    %r9,0x3f8(%rsp)
  618a25:	00 
  618a26:	4c 8b a4 24 68 04 00 	mov    0x468(%rsp),%r12
  618a2d:	00 
  618a2e:	4c 8b 9c 24 80 04 00 	mov    0x480(%rsp),%r11
  618a35:	00 
  618a36:	4d 11 dc             	adc    %r11,%r12
  618a39:	4c 89 a4 24 f0 03 00 	mov    %r12,0x3f0(%rsp)
  618a40:	00 
  618a41:	4c 8b 9c 24 78 04 00 	mov    0x478(%rsp),%r11
  618a48:	00 
  618a49:	49 83 d3 00          	adc    $0x0,%r11
  618a4d:	4c 89 9c 24 e8 03 00 	mov    %r11,0x3e8(%rsp)
  618a54:	00 
  618a55:	48 8b 9c 24 28 04 00 	mov    0x428(%rsp),%rbx
  618a5c:	00 
  618a5d:	48 01 d3             	add    %rdx,%rbx
  618a60:	4c 11 fe             	adc    %r15,%rsi
  618a63:	4c 11 ef             	adc    %r13,%rdi
  618a66:	49 11 c0             	adc    %rax,%r8
  618a69:	4d 11 d1             	adc    %r10,%r9
  618a6c:	4c 89 8c 24 d8 03 00 	mov    %r9,0x3d8(%rsp)
  618a73:	00 
  618a74:	49 11 cc             	adc    %rcx,%r12
  618a77:	4c 89 a4 24 d0 03 00 	mov    %r12,0x3d0(%rsp)
  618a7e:	00 
  618a7f:	48 8b 8c 24 88 04 00 	mov    0x488(%rsp),%rcx
  618a86:	00 
  618a87:	49 11 cb             	adc    %rcx,%r11
  618a8a:	4c 89 9c 24 c8 03 00 	mov    %r11,0x3c8(%rsp)
  618a91:	00 
  618a92:	48 89 da             	mov    %rbx,%rdx
  618a95:	48 b9 01 00 00 00 01 	movabs $0x100000001,%rcx
  618a9c:	00 00 00 
  618a9f:	c4 e2 ab f6 c9       	mulx   %rcx,%r10,%rcx
  618aa4:	4c 89 d2             	mov    %r10,%rdx
  618aa7:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  618aae:	c4 e2 fb f6 c9       	mulx   %rcx,%rax,%rcx
  618ab3:	49 c7 c5 fe ff ff ff 	mov    $0xfffffffffffffffe,%r13
  618aba:	c4 42 83 f6 ed       	mulx   %r13,%r15,%r13
  618abf:	49 bb 00 00 00 00 ff 	movabs $0xffffffff00000000,%r11
  618ac6:	ff ff ff 
  618ac9:	c4 42 9b f6 db       	mulx   %r11,%r12,%r11
  618ace:	41 b9 ff ff ff ff    	mov    $0xffffffff,%r9d
  618ad4:	c4 c2 ab f6 d1       	mulx   %r9,%r10,%rdx
  618ad9:	4c 01 e2             	add    %r12,%rdx
  618adc:	4d 11 fb             	adc    %r15,%r11
  618adf:	49 11 c5             	adc    %rax,%r13
  618ae2:	49 89 c4             	mov    %rax,%r12
  618ae5:	48 11 c8             	adc    %rcx,%rax
  618ae8:	49 11 cc             	adc    %rcx,%r12
  618aeb:	48 83 d1 00          	adc    $0x0,%rcx
  618aef:	4c 01 d3             	add    %r10,%rbx
  618af2:	48 11 f2             	adc    %rsi,%rdx
  618af5:	48 89 94 24 c0 03 00 	mov    %rdx,0x3c0(%rsp)
  618afc:	00 
  618afd:	49 11 fb             	adc    %rdi,%r11
  618b00:	4c 89 9c 24 b8 03 00 	mov    %r11,0x3b8(%rsp)
  618b07:	00 
  618b08:	4d 11 c5             	adc    %r8,%r13
  618b0b:	4c 89 ac 24 b0 03 00 	mov    %r13,0x3b0(%rsp)
  618b12:	00 
  618b13:	48 8b 9c 24 d8 03 00 	mov    0x3d8(%rsp),%rbx
  618b1a:	00 
  618b1b:	48 11 d8             	adc    %rbx,%rax
  618b1e:	48 89 84 24 a8 03 00 	mov    %rax,0x3a8(%rsp)
  618b25:	00 
  618b26:	48 8b 9c 24 d0 03 00 	mov    0x3d0(%rsp),%rbx
  618b2d:	00 
  618b2e:	49 11 dc             	adc    %rbx,%r12
  618b31:	4c 89 a4 24 a0 03 00 	mov    %r12,0x3a0(%rsp)
  618b38:	00 
  618b39:	48 8b 9c 24 c8 03 00 	mov    0x3c8(%rsp),%rbx
  618b40:	00 
  618b41:	48 11 d9             	adc    %rbx,%rcx
  618b44:	48 89 8c 24 98 03 00 	mov    %rcx,0x398(%rsp)
  618b4b:	00 
  618b4c:	0f 92 c3             	setb   %bl
  618b4f:	0f b6 db             	movzbl %bl,%ebx
  618b52:	48 8b b4 24 28 04 00 	mov    0x428(%rsp),%rsi
  618b59:	00 
  618b5a:	48 8b bc 24 c0 04 00 	mov    0x4c0(%rsp),%rdi
  618b61:	00 
  618b62:	48 01 fe             	add    %rdi,%rsi
  618b65:	48 8b b4 24 18 04 00 	mov    0x418(%rsp),%rsi
  618b6c:	00 
  618b6d:	48 8b bc 24 b8 04 00 	mov    0x4b8(%rsp),%rdi
  618b74:	00 
  618b75:	48 11 fe             	adc    %rdi,%rsi
  618b78:	48 8b b4 24 08 04 00 	mov    0x408(%rsp),%rsi
  618b7f:	00 
  618b80:	48 8b bc 24 b0 04 00 	mov    0x4b0(%rsp),%rdi
  618b87:	00 
  618b88:	48 11 fe             	adc    %rdi,%rsi
  618b8b:	48 8b b4 24 00 04 00 	mov    0x400(%rsp),%rsi
  618b92:	00 
  618b93:	48 8b bc 24 a8 04 00 	mov    0x4a8(%rsp),%rdi
  618b9a:	00 
  618b9b:	48 11 fe             	adc    %rdi,%rsi
  618b9e:	48 8b b4 24 f8 03 00 	mov    0x3f8(%rsp),%rsi
  618ba5:	00 
  618ba6:	48 8b bc 24 98 04 00 	mov    0x498(%rsp),%rdi
  618bad:	00 
  618bae:	48 11 fe             	adc    %rdi,%rsi
  618bb1:	48 8b b4 24 f0 03 00 	mov    0x3f0(%rsp),%rsi
  618bb8:	00 
  618bb9:	48 8b bc 24 90 04 00 	mov    0x490(%rsp),%rdi
  618bc0:	00 
  618bc1:	48 11 fe             	adc    %rdi,%rsi
  618bc4:	48 8b b4 24 e8 03 00 	mov    0x3e8(%rsp),%rsi
  618bcb:	00 
  618bcc:	48 8b bc 24 88 04 00 	mov    0x488(%rsp),%rdi
  618bd3:	00 
  618bd4:	48 11 fe             	adc    %rdi,%rsi
  618bd7:	48 83 d3 00          	adc    $0x0,%rbx
  618bdb:	48 89 9c 24 90 03 00 	mov    %rbx,0x390(%rsp)
  618be2:	00 
  618be3:	48 8b b4 24 30 03 00 	mov    0x330(%rsp),%rsi
  618bea:	00 
  618beb:	48 8b bc 24 48 03 00 	mov    0x348(%rsp),%rdi
  618bf2:	00 
  618bf3:	48 01 fe             	add    %rdi,%rsi
  618bf6:	48 89 b4 24 28 03 00 	mov    %rsi,0x328(%rsp)
  618bfd:	00 
  618bfe:	48 8b bc 24 40 03 00 	mov    0x340(%rsp),%rdi
  618c05:	00 
  618c06:	4c 8b 84 24 58 03 00 	mov    0x358(%rsp),%r8
  618c0d:	00 
  618c0e:	4c 11 c7             	adc    %r8,%rdi
  618c11:	48 89 bc 24 20 03 00 	mov    %rdi,0x320(%rsp)
  618c18:	00 
  618c19:	4c 8b 84 24 50 03 00 	mov    0x350(%rsp),%r8
  618c20:	00 
  618c21:	4c 8b 94 24 68 03 00 	mov    0x368(%rsp),%r10
  618c28:	00 
  618c29:	4d 11 d0             	adc    %r10,%r8
  618c2c:	4c 89 84 24 18 03 00 	mov    %r8,0x318(%rsp)
  618c33:	00 
  618c34:	4c 8b 94 24 60 03 00 	mov    0x360(%rsp),%r10
  618c3b:	00 
  618c3c:	4c 8b bc 24 78 03 00 	mov    0x378(%rsp),%r15
  618c43:	00 
  618c44:	4d 11 fa             	adc    %r15,%r10
  618c47:	4c 89 94 24 10 03 00 	mov    %r10,0x310(%rsp)
  618c4e:	00 
  618c4f:	4c 8b bc 24 70 03 00 	mov    0x370(%rsp),%r15
  618c56:	00 
  618c57:	4c 8b 8c 24 88 03 00 	mov    0x388(%rsp),%r9
  618c5e:	00 
  618c5f:	4d 11 cf             	adc    %r9,%r15
  618c62:	4c 89 bc 24 08 03 00 	mov    %r15,0x308(%rsp)
  618c69:	00 
  618c6a:	4c 8b 8c 24 80 03 00 	mov    0x380(%rsp),%r9
  618c71:	00 
  618c72:	49 83 d1 00          	adc    $0x0,%r9
  618c76:	4c 89 8c 24 00 03 00 	mov    %r9,0x300(%rsp)
  618c7d:	00 
  618c7e:	48 8b 9c 24 38 03 00 	mov    0x338(%rsp),%rbx
  618c85:	00 
  618c86:	48 01 d3             	add    %rdx,%rbx
  618c89:	4c 11 de             	adc    %r11,%rsi
  618c8c:	4c 11 ef             	adc    %r13,%rdi
  618c8f:	49 11 c0             	adc    %rax,%r8
  618c92:	4d 11 e2             	adc    %r12,%r10
  618c95:	4c 89 94 24 f8 02 00 	mov    %r10,0x2f8(%rsp)
  618c9c:	00 
  618c9d:	49 11 cf             	adc    %rcx,%r15
  618ca0:	4c 89 bc 24 f0 02 00 	mov    %r15,0x2f0(%rsp)
  618ca7:	00 
  618ca8:	48 8b 8c 24 90 03 00 	mov    0x390(%rsp),%rcx
  618caf:	00 
  618cb0:	49 11 c9             	adc    %rcx,%r9
  618cb3:	4c 89 8c 24 e8 02 00 	mov    %r9,0x2e8(%rsp)
  618cba:	00 
  618cbb:	48 89 da             	mov    %rbx,%rdx
  618cbe:	48 b9 01 00 00 00 01 	movabs $0x100000001,%rcx
  618cc5:	00 00 00 
  618cc8:	c4 e2 9b f6 c9       	mulx   %rcx,%r12,%rcx
  618ccd:	4c 89 e2             	mov    %r12,%rdx
  618cd0:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  618cd7:	c4 e2 fb f6 c9       	mulx   %rcx,%rax,%rcx
  618cdc:	49 c7 c5 fe ff ff ff 	mov    $0xfffffffffffffffe,%r13
  618ce3:	c4 42 a3 f6 ed       	mulx   %r13,%r11,%r13
  618ce8:	49 b9 00 00 00 00 ff 	movabs $0xffffffff00000000,%r9
  618cef:	ff ff ff 
  618cf2:	c4 42 83 f6 c9       	mulx   %r9,%r15,%r9
  618cf7:	41 ba ff ff ff ff    	mov    $0xffffffff,%r10d
  618cfd:	c4 c2 9b f6 d2       	mulx   %r10,%r12,%rdx
  618d02:	4c 01 fa             	add    %r15,%rdx
  618d05:	4d 11 d9             	adc    %r11,%r9
  618d08:	49 11 c5             	adc    %rax,%r13
  618d0b:	49 89 cb             	mov    %rcx,%r11
  618d0e:	48 11 c1             	adc    %rax,%rcx
  618d11:	4c 11 d8             	adc    %r11,%rax
  618d14:	49 83 d3 00          	adc    $0x0,%r11
  618d18:	4c 01 e3             	add    %r12,%rbx
  618d1b:	48 11 f2             	adc    %rsi,%rdx
  618d1e:	48 89 94 24 e0 02 00 	mov    %rdx,0x2e0(%rsp)
  618d25:	00 
  618d26:	49 11 f9             	adc    %rdi,%r9
  618d29:	4c 89 8c 24 d8 02 00 	mov    %r9,0x2d8(%rsp)
  618d30:	00 
  618d31:	4d 11 c5             	adc    %r8,%r13
  618d34:	4c 89 ac 24 d0 02 00 	mov    %r13,0x2d0(%rsp)
  618d3b:	00 
  618d3c:	48 8b 9c 24 f8 02 00 	mov    0x2f8(%rsp),%rbx
  618d43:	00 
  618d44:	48 11 d9             	adc    %rbx,%rcx
  618d47:	48 89 8c 24 c8 02 00 	mov    %rcx,0x2c8(%rsp)
  618d4e:	00 
  618d4f:	48 8b 9c 24 f0 02 00 	mov    0x2f0(%rsp),%rbx
  618d56:	00 
  618d57:	48 11 d8             	adc    %rbx,%rax
  618d5a:	48 89 84 24 c0 02 00 	mov    %rax,0x2c0(%rsp)
  618d61:	00 
  618d62:	48 8b 9c 24 e8 02 00 	mov    0x2e8(%rsp),%rbx
  618d69:	00 
  618d6a:	49 11 db             	adc    %rbx,%r11
  618d6d:	4c 89 9c 24 b8 02 00 	mov    %r11,0x2b8(%rsp)
  618d74:	00 
  618d75:	0f 92 c3             	setb   %bl
  618d78:	0f b6 db             	movzbl %bl,%ebx
  618d7b:	48 8b b4 24 38 03 00 	mov    0x338(%rsp),%rsi
  618d82:	00 
  618d83:	48 8b bc 24 c0 03 00 	mov    0x3c0(%rsp),%rdi
  618d8a:	00 
  618d8b:	48 01 fe             	add    %rdi,%rsi
  618d8e:	48 8b b4 24 28 03 00 	mov    0x328(%rsp),%rsi
  618d95:	00 
  618d96:	48 8b bc 24 b8 03 00 	mov    0x3b8(%rsp),%rdi
  618d9d:	00 
  618d9e:	48 11 fe             	adc    %rdi,%rsi
  618da1:	48 8b b4 24 20 03 00 	mov    0x320(%rsp),%rsi
  618da8:	00 
  618da9:	48 8b bc 24 b0 03 00 	mov    0x3b0(%rsp),%rdi
  618db0:	00 
  618db1:	48 11 fe             	adc    %rdi,%rsi
  618db4:	48 8b b4 24 18 03 00 	mov    0x318(%rsp),%rsi
  618dbb:	00 
  618dbc:	48 8b bc 24 a8 03 00 	mov    0x3a8(%rsp),%rdi
  618dc3:	00 
  618dc4:	48 11 fe             	adc    %rdi,%rsi
  618dc7:	48 8b b4 24 10 03 00 	mov    0x310(%rsp),%rsi
  618dce:	00 
  618dcf:	48 8b bc 24 a0 03 00 	mov    0x3a0(%rsp),%rdi
  618dd6:	00 
  618dd7:	48 11 fe             	adc    %rdi,%rsi
  618dda:	48 8b b4 24 08 03 00 	mov    0x308(%rsp),%rsi
  618de1:	00 
  618de2:	48 8b bc 24 98 03 00 	mov    0x398(%rsp),%rdi
  618de9:	00 
  618dea:	48 11 fe             	adc    %rdi,%rsi
  618ded:	48 8b b4 24 00 03 00 	mov    0x300(%rsp),%rsi
  618df4:	00 
  618df5:	48 8b bc 24 90 03 00 	mov    0x390(%rsp),%rdi
  618dfc:	00 
  618dfd:	48 11 fe             	adc    %rdi,%rsi
  618e00:	48 83 d3 00          	adc    $0x0,%rbx
  618e04:	48 89 9c 24 b0 02 00 	mov    %rbx,0x2b0(%rsp)
  618e0b:	00 
  618e0c:	48 8b b4 24 50 02 00 	mov    0x250(%rsp),%rsi
  618e13:	00 
  618e14:	48 8b bc 24 68 02 00 	mov    0x268(%rsp),%rdi
  618e1b:	00 
  618e1c:	48 01 fe             	add    %rdi,%rsi
  618e1f:	48 89 b4 24 48 02 00 	mov    %rsi,0x248(%rsp)
  618e26:	00 
  618e27:	48 8b bc 24 60 02 00 	mov    0x260(%rsp),%rdi
  618e2e:	00 
  618e2f:	4c 8b 84 24 78 02 00 	mov    0x278(%rsp),%r8
  618e36:	00 
  618e37:	4c 11 c7             	adc    %r8,%rdi
  618e3a:	48 89 bc 24 40 02 00 	mov    %rdi,0x240(%rsp)
  618e41:	00 
  618e42:	4c 8b 84 24 70 02 00 	mov    0x270(%rsp),%r8
  618e49:	00 
  618e4a:	4c 8b a4 24 88 02 00 	mov    0x288(%rsp),%r12
  618e51:	00 
  618e52:	4d 11 e0             	adc    %r12,%r8
  618e55:	4c 89 84 24 38 02 00 	mov    %r8,0x238(%rsp)
  618e5c:	00 
  618e5d:	4c 8b a4 24 80 02 00 	mov    0x280(%rsp),%r12
  618e64:	00 
  618e65:	4c 8b bc 24 98 02 00 	mov    0x298(%rsp),%r15
  618e6c:	00 
  618e6d:	4d 11 fc             	adc    %r15,%r12
  618e70:	4c 89 a4 24 30 02 00 	mov    %r12,0x230(%rsp)
  618e77:	00 
  618e78:	4c 8b bc 24 90 02 00 	mov    0x290(%rsp),%r15
  618e7f:	00 
  618e80:	4c 8b 94 24 a8 02 00 	mov    0x2a8(%rsp),%r10
  618e87:	00 
  618e88:	4d 11 d7             	adc    %r10,%r15
  618e8b:	4c 89 bc 24 28 02 00 	mov    %r15,0x228(%rsp)
  618e92:	00 
  618e93:	4c 8b 94 24 a0 02 00 	mov    0x2a0(%rsp),%r10
  618e9a:	00 
  618e9b:	49 83 d2 00          	adc    $0x0,%r10
  618e9f:	4c 89 94 24 20 02 00 	mov    %r10,0x220(%rsp)
  618ea6:	00 
  618ea7:	48 8b 9c 24 58 02 00 	mov    0x258(%rsp),%rbx
  618eae:	00 
  618eaf:	48 01 d3             	add    %rdx,%rbx
  618eb2:	4c 11 ce             	adc    %r9,%rsi
  618eb5:	4c 11 ef             	adc    %r13,%rdi
  618eb8:	49 11 c8             	adc    %rcx,%r8
  618ebb:	49 11 c4             	adc    %rax,%r12
  618ebe:	4c 89 a4 24 18 02 00 	mov    %r12,0x218(%rsp)
  618ec5:	00 
  618ec6:	4d 11 df             	adc    %r11,%r15
  618ec9:	4c 89 bc 24 10 02 00 	mov    %r15,0x210(%rsp)
  618ed0:	00 
  618ed1:	4c 8b 9c 24 b0 02 00 	mov    0x2b0(%rsp),%r11
  618ed8:	00 
  618ed9:	4d 11 da             	adc    %r11,%r10
  618edc:	4c 89 94 24 08 02 00 	mov    %r10,0x208(%rsp)
  618ee3:	00 
  618ee4:	48 89 da             	mov    %rbx,%rdx
  618ee7:	49 bb 01 00 00 00 01 	movabs $0x100000001,%r11
  618eee:	00 00 00 
  618ef1:	c4 42 fb f6 db       	mulx   %r11,%rax,%r11
  618ef6:	48 89 c2             	mov    %rax,%rdx
  618ef9:	49 c7 c3 ff ff ff ff 	mov    $0xffffffffffffffff,%r11
  618f00:	c4 42 f3 f6 db       	mulx   %r11,%rcx,%r11
  618f05:	49 c7 c5 fe ff ff ff 	mov    $0xfffffffffffffffe,%r13
  618f0c:	c4 42 b3 f6 ed       	mulx   %r13,%r9,%r13
  618f11:	49 ba 00 00 00 00 ff 	movabs $0xffffffff00000000,%r10
  618f18:	ff ff ff 
  618f1b:	c4 42 83 f6 d2       	mulx   %r10,%r15,%r10
  618f20:	41 bc ff ff ff ff    	mov    $0xffffffff,%r12d
  618f26:	c4 c2 fb f6 d4       	mulx   %r12,%rax,%rdx
  618f2b:	4c 01 fa             	add    %r15,%rdx
  618f2e:	4d 11 ca             	adc    %r9,%r10
  618f31:	49 11 cd             	adc    %rcx,%r13
  618f34:	49 89 c9             	mov    %rcx,%r9
  618f37:	4c 11 d9             	adc    %r11,%rcx
  618f3a:	4d 11 d9             	adc    %r11,%r9
  618f3d:	49 83 d3 00          	adc    $0x0,%r11
  618f41:	48 01 c3             	add    %rax,%rbx
  618f44:	48 11 f2             	adc    %rsi,%rdx
  618f47:	48 89 94 24 f0 01 00 	mov    %rdx,0x1f0(%rsp)
  618f4e:	00 
  618f4f:	49 11 fa             	adc    %rdi,%r10
  618f52:	4c 89 94 24 e8 01 00 	mov    %r10,0x1e8(%rsp)
  618f59:	00 
  618f5a:	4d 11 c5             	adc    %r8,%r13
  618f5d:	4c 89 ac 24 e0 01 00 	mov    %r13,0x1e0(%rsp)
  618f64:	00 
  618f65:	48 8b 84 24 18 02 00 	mov    0x218(%rsp),%rax
  618f6c:	00 
  618f6d:	48 11 c1             	adc    %rax,%rcx
  618f70:	48 89 8c 24 d8 01 00 	mov    %rcx,0x1d8(%rsp)
  618f77:	00 
  618f78:	48 8b 84 24 10 02 00 	mov    0x210(%rsp),%rax
  618f7f:	00 
  618f80:	49 11 c1             	adc    %rax,%r9
  618f83:	4c 89 8c 24 d0 01 00 	mov    %r9,0x1d0(%rsp)
  618f8a:	00 
  618f8b:	48 8b 84 24 08 02 00 	mov    0x208(%rsp),%rax
  618f92:	00 
  618f93:	49 11 c3             	adc    %rax,%r11
  618f96:	4c 89 9c 24 c8 01 00 	mov    %r11,0x1c8(%rsp)
  618f9d:	00 
  618f9e:	0f 92 c0             	setb   %al
  618fa1:	0f b6 c0             	movzbl %al,%eax
  618fa4:	48 8b 9c 24 58 02 00 	mov    0x258(%rsp),%rbx
  618fab:	00 
  618fac:	48 8b b4 24 e0 02 00 	mov    0x2e0(%rsp),%rsi
  618fb3:	00 
  618fb4:	48 01 f3             	add    %rsi,%rbx
  618fb7:	48 8b 9c 24 48 02 00 	mov    0x248(%rsp),%rbx
  618fbe:	00 
  618fbf:	48 8b b4 24 d8 02 00 	mov    0x2d8(%rsp),%rsi
  618fc6:	00 
  618fc7:	48 11 f3             	adc    %rsi,%rbx
  618fca:	48 8b 9c 24 40 02 00 	mov    0x240(%rsp),%rbx
  618fd1:	00 
  618fd2:	48 8b b4 24 d0 02 00 	mov    0x2d0(%rsp),%rsi
  618fd9:	00 
  618fda:	48 11 f3             	adc    %rsi,%rbx
  618fdd:	48 8b 9c 24 38 02 00 	mov    0x238(%rsp),%rbx
  618fe4:	00 
  618fe5:	48 8b b4 24 c8 02 00 	mov    0x2c8(%rsp),%rsi
  618fec:	00 
  618fed:	48 11 f3             	adc    %rsi,%rbx
  618ff0:	48 8b 9c 24 30 02 00 	mov    0x230(%rsp),%rbx
  618ff7:	00 
  618ff8:	48 8b b4 24 c0 02 00 	mov    0x2c0(%rsp),%rsi
  618fff:	00 
  619000:	48 11 f3             	adc    %rsi,%rbx
  619003:	48 8b 9c 24 28 02 00 	mov    0x228(%rsp),%rbx
  61900a:	00 
  61900b:	48 8b b4 24 b8 02 00 	mov    0x2b8(%rsp),%rsi
  619012:	00 
  619013:	48 11 f3             	adc    %rsi,%rbx
  619016:	48 8b 9c 24 20 02 00 	mov    0x220(%rsp),%rbx
  61901d:	00 
  61901e:	48 8b b4 24 b0 02 00 	mov    0x2b0(%rsp),%rsi
  619025:	00 
  619026:	48 11 f3             	adc    %rsi,%rbx
  619029:	48 83 d0 00          	adc    $0x0,%rax
  61902d:	48 89 84 24 c0 01 00 	mov    %rax,0x1c0(%rsp)
  619034:	00 
  619035:	48 8b 9c 24 58 01 00 	mov    0x158(%rsp),%rbx
  61903c:	00 
  61903d:	48 8b b4 24 70 01 00 	mov    0x170(%rsp),%rsi
  619044:	00 
  619045:	48 01 f3             	add    %rsi,%rbx
  619048:	48 89 9c 24 50 01 00 	mov    %rbx,0x150(%rsp)
  61904f:	00 
  619050:	48 8b b4 24 68 01 00 	mov    0x168(%rsp),%rsi
  619057:	00 
  619058:	48 8b bc 24 80 01 00 	mov    0x180(%rsp),%rdi
  61905f:	00 
  619060:	48 11 fe             	adc    %rdi,%rsi
  619063:	48 89 b4 24 40 01 00 	mov    %rsi,0x140(%rsp)
  61906a:	00 
  61906b:	48 8b bc 24 78 01 00 	mov    0x178(%rsp),%rdi
  619072:	00 
  619073:	4c 8b 84 24 90 01 00 	mov    0x190(%rsp),%r8
  61907a:	00 
  61907b:	4c 11 c7             	adc    %r8,%rdi
  61907e:	48 89 bc 24 38 01 00 	mov    %rdi,0x138(%rsp)
  619085:	00 
  619086:	4c 8b 84 24 88 01 00 	mov    0x188(%rsp),%r8
  61908d:	00 
  61908e:	4c 8b bc 24 a8 01 00 	mov    0x1a8(%rsp),%r15
  619095:	00 
  619096:	4d 11 f8             	adc    %r15,%r8
  619099:	4c 89 84 24 30 01 00 	mov    %r8,0x130(%rsp)
  6190a0:	00 
  6190a1:	4c 8b bc 24 98 01 00 	mov    0x198(%rsp),%r15
  6190a8:	00 
  6190a9:	4c 8b a4 24 b8 01 00 	mov    0x1b8(%rsp),%r12
  6190b0:	00 
  6190b1:	4d 11 e7             	adc    %r12,%r15
  6190b4:	4c 89 bc 24 28 01 00 	mov    %r15,0x128(%rsp)
  6190bb:	00 
  6190bc:	4c 8b a4 24 b0 01 00 	mov    0x1b0(%rsp),%r12
  6190c3:	00 
  6190c4:	49 83 d4 00          	adc    $0x0,%r12
  6190c8:	4c 89 a4 24 20 01 00 	mov    %r12,0x120(%rsp)
  6190cf:	00 
  6190d0:	48 8b 84 24 60 01 00 	mov    0x160(%rsp),%rax
  6190d7:	00 
  6190d8:	48 01 d0             	add    %rdx,%rax
  6190db:	4c 11 d3             	adc    %r10,%rbx
  6190de:	4c 11 ee             	adc    %r13,%rsi
  6190e1:	48 11 cf             	adc    %rcx,%rdi
  6190e4:	4d 11 c8             	adc    %r9,%r8
  6190e7:	4c 89 84 24 18 01 00 	mov    %r8,0x118(%rsp)
  6190ee:	00 
  6190ef:	4d 11 df             	adc    %r11,%r15
  6190f2:	4c 89 bc 24 08 01 00 	mov    %r15,0x108(%rsp)
  6190f9:	00 
  6190fa:	4c 8b 9c 24 c0 01 00 	mov    0x1c0(%rsp),%r11
  619101:	00 
  619102:	4d 11 dc             	adc    %r11,%r12
  619105:	4c 89 a4 24 00 01 00 	mov    %r12,0x100(%rsp)
  61910c:	00 
  61910d:	48 89 c2             	mov    %rax,%rdx
  619110:	49 bb 01 00 00 00 01 	movabs $0x100000001,%r11
  619117:	00 00 00 
  61911a:	c4 42 b3 f6 db       	mulx   %r11,%r9,%r11
  61911f:	4c 89 ca             	mov    %r9,%rdx
  619122:	49 c7 c3 ff ff ff ff 	mov    $0xffffffffffffffff,%r11
  619129:	c4 42 f3 f6 db       	mulx   %r11,%rcx,%r11
  61912e:	49 c7 c5 fe ff ff ff 	mov    $0xfffffffffffffffe,%r13
  619135:	c4 42 ab f6 ed       	mulx   %r13,%r10,%r13
  61913a:	49 bc 00 00 00 00 ff 	movabs $0xffffffff00000000,%r12
  619141:	ff ff ff 
  619144:	c4 42 83 f6 e4       	mulx   %r12,%r15,%r12
  619149:	41 b8 ff ff ff ff    	mov    $0xffffffff,%r8d
  61914f:	c4 42 eb f6 c8       	mulx   %r8,%rdx,%r9
  619154:	4d 01 f9             	add    %r15,%r9
  619157:	4d 11 d4             	adc    %r10,%r12
  61915a:	49 11 cd             	adc    %rcx,%r13
  61915d:	49 89 ca             	mov    %rcx,%r10
  619160:	4c 11 d9             	adc    %r11,%rcx
  619163:	4d 11 da             	adc    %r11,%r10
  619166:	49 83 d3 00          	adc    $0x0,%r11
  61916a:	48 01 d0             	add    %rdx,%rax
  61916d:	49 11 d9             	adc    %rbx,%r9
  619170:	49 11 f4             	adc    %rsi,%r12
  619173:	49 11 fd             	adc    %rdi,%r13
  619176:	48 8b 84 24 18 01 00 	mov    0x118(%rsp),%rax
  61917d:	00 
  61917e:	48 11 c1             	adc    %rax,%rcx
  619181:	48 8b 84 24 08 01 00 	mov    0x108(%rsp),%rax
  619188:	00 
  619189:	49 11 c2             	adc    %rax,%r10
  61918c:	48 8b 84 24 00 01 00 	mov    0x100(%rsp),%rax
  619193:	00 
  619194:	49 11 c3             	adc    %rax,%r11
  619197:	0f 92 c0             	setb   %al
  61919a:	0f b6 c0             	movzbl %al,%eax
  61919d:	48 8b 9c 24 60 01 00 	mov    0x160(%rsp),%rbx
  6191a4:	00 
  6191a5:	48 8b b4 24 f0 01 00 	mov    0x1f0(%rsp),%rsi
  6191ac:	00 
  6191ad:	48 01 f3             	add    %rsi,%rbx
  6191b0:	48 8b 9c 24 50 01 00 	mov    0x150(%rsp),%rbx
  6191b7:	00 
  6191b8:	48 8b b4 24 e8 01 00 	mov    0x1e8(%rsp),%rsi
  6191bf:	00 
  6191c0:	48 11 f3             	adc    %rsi,%rbx
  6191c3:	48 8b 9c 24 40 01 00 	mov    0x140(%rsp),%rbx
  6191ca:	00 
  6191cb:	48 8b b4 24 e0 01 00 	mov    0x1e0(%rsp),%rsi
  6191d2:	00 
  6191d3:	48 11 f3             	adc    %rsi,%rbx
  6191d6:	48 8b 9c 24 38 01 00 	mov    0x138(%rsp),%rbx
  6191dd:	00 
  6191de:	48 8b b4 24 d8 01 00 	mov    0x1d8(%rsp),%rsi
  6191e5:	00 
  6191e6:	48 11 f3             	adc    %rsi,%rbx
  6191e9:	48 8b 9c 24 30 01 00 	mov    0x130(%rsp),%rbx
  6191f0:	00 
  6191f1:	48 8b b4 24 d0 01 00 	mov    0x1d0(%rsp),%rsi
  6191f8:	00 
  6191f9:	48 11 f3             	adc    %rsi,%rbx
  6191fc:	48 8b 9c 24 28 01 00 	mov    0x128(%rsp),%rbx
  619203:	00 
  619204:	48 8b b4 24 c8 01 00 	mov    0x1c8(%rsp),%rsi
  61920b:	00 
  61920c:	48 11 f3             	adc    %rsi,%rbx
  61920f:	48 8b 9c 24 20 01 00 	mov    0x120(%rsp),%rbx
  619216:	00 
  619217:	48 8b b4 24 c0 01 00 	mov    0x1c0(%rsp),%rsi
  61921e:	00 
  61921f:	48 11 f3             	adc    %rsi,%rbx
  619222:	48 83 d0 00          	adc    $0x0,%rax
  619226:	4c 89 cb             	mov    %r9,%rbx
  619229:	4d 29 c1             	sub    %r8,%r9
  61922c:	48 be 00 00 00 00 ff 	movabs $0xffffffff00000000,%rsi
  619233:	ff ff ff 
  619236:	4c 89 e7             	mov    %r12,%rdi
  619239:	49 19 f4             	sbb    %rsi,%r12
  61923c:	4c 89 ee             	mov    %r13,%rsi
  61923f:	49 83 dd fe          	sbb    $0xfffffffffffffffe,%r13
  619243:	49 89 c8             	mov    %rcx,%r8
  619246:	48 83 d9 ff          	sbb    $0xffffffffffffffff,%rcx
  61924a:	4d 89 d7             	mov    %r10,%r15
  61924d:	49 83 da ff          	sbb    $0xffffffffffffffff,%r10
  619251:	4c 89 da             	mov    %r11,%rdx
  619254:	49 83 db ff          	sbb    $0xffffffffffffffff,%r11
  619258:	48 83 d8 00          	sbb    $0x0,%rax
  61925c:	0f 92 c0             	setb   %al
  61925f:	0f b6 c0             	movzbl %al,%eax
  619262:	48 f7 d8             	neg    %rax
  619265:	48 21 c3             	and    %rax,%rbx
  619268:	c4 42 f8 f2 c9       	andn   %r9,%rax,%r9
  61926d:	4c 09 cb             	or     %r9,%rbx
  619270:	4c 8b 8c 24 18 05 00 	mov    0x518(%rsp),%r9
  619277:	00 
  619278:	49 89 19             	mov    %rbx,(%r9)
  61927b:	48 21 c7             	and    %rax,%rdi
  61927e:	c4 c2 f8 f2 dc       	andn   %r12,%rax,%rbx
  619283:	48 09 df             	or     %rbx,%rdi
  619286:	49 89 79 08          	mov    %rdi,0x8(%r9)
  61928a:	48 21 c6             	and    %rax,%rsi
  61928d:	c4 c2 f8 f2 dd       	andn   %r13,%rax,%rbx
  619292:	48 09 de             	or     %rbx,%rsi
  619295:	49 89 71 10          	mov    %rsi,0x10(%r9)
  619299:	49 21 c0             	and    %rax,%r8
  61929c:	c4 e2 f8 f2 c9       	andn   %rcx,%rax,%rcx
  6192a1:	4c 09 c1             	or     %r8,%rcx
  6192a4:	49 89 49 18          	mov    %rcx,0x18(%r9)
  6192a8:	49 21 c7             	and    %rax,%r15
  6192ab:	c4 c2 f8 f2 ca       	andn   %r10,%rax,%rcx
  6192b0:	49 09 cf             	or     %rcx,%r15
  6192b3:	4d 89 79 20          	mov    %r15,0x20(%r9)
  6192b7:	48 21 c2             	and    %rax,%rdx
  6192ba:	c4 c2 f8 f2 c3       	andn   %r11,%rax,%rax
  6192bf:	48 09 c2             	or     %rax,%rdx
  6192c2:	49 89 51 28          	mov    %rdx,0x28(%r9)
  6192c6:	c9                   	leave
  6192c7:	c3                   	ret
  6192c8:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  6192cd:	48 89 5c 24 10       	mov    %rbx,0x10(%rsp)
  6192d2:	48 89 4c 24 18       	mov    %rcx,0x18(%rsp)
  6192d7:	e8 e4 30 e7 ff       	call   48c3c0 <runtime.morestack_noctxt.abi0>
  6192dc:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
  6192e1:	48 8b 5c 24 10       	mov    0x10(%rsp),%rbx
  6192e6:	48 8b 4c 24 18       	mov    0x18(%rsp),%rcx
  6192eb:	e9 b0 ef ff ff       	jmp    6182a0 <crypto/internal/fips140/nistec/fiat.p384Mul>

Disassembly of section .plt:
