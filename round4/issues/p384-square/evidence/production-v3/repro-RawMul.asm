
/home/exedev/crypto-audit/round4/issues/p384-square/evidence/v3/repro.test:     file format elf64-x86-64


Disassembly of section .text:

00000000005f05a0 <example.com/p384issue.RawMul>:
  5f05a0:	4c 8d a4 24 70 fb ff 	lea    -0x490(%rsp),%r12
  5f05a7:	ff 
  5f05a8:	4d 3b 66 10          	cmp    0x10(%r14),%r12
  5f05ac:	0f 86 16 10 00 00    	jbe    5f15c8 <example.com/p384issue.RawMul+0x1028>
  5f05b2:	55                   	push   %rbp
  5f05b3:	48 89 e5             	mov    %rsp,%rbp
  5f05b6:	48 81 ec 08 05 00 00 	sub    $0x508,%rsp
  5f05bd:	48 89 84 24 18 05 00 	mov    %rax,0x518(%rsp)
  5f05c4:	00 
  5f05c5:	48 8b 73 08          	mov    0x8(%rbx),%rsi
  5f05c9:	48 8b 7b 10          	mov    0x10(%rbx),%rdi
  5f05cd:	4c 8b 43 18          	mov    0x18(%rbx),%r8
  5f05d1:	4c 8b 4b 20          	mov    0x20(%rbx),%r9
  5f05d5:	4c 8b 53 28          	mov    0x28(%rbx),%r10
  5f05d9:	4c 89 94 24 e8 00 00 	mov    %r10,0xe8(%rsp)
  5f05e0:	00 
  5f05e1:	48 8b 1b             	mov    (%rbx),%rbx
  5f05e4:	48 8b 51 08          	mov    0x8(%rcx),%rdx
  5f05e8:	c4 62 9b f6 db       	mulx   %rbx,%r12,%r11
  5f05ed:	4c 89 9c 24 10 04 00 	mov    %r11,0x410(%rsp)
  5f05f4:	00 
  5f05f5:	4c 89 a4 24 60 04 00 	mov    %r12,0x460(%rsp)
  5f05fc:	00 
  5f05fd:	49 89 d5             	mov    %rdx,%r13
  5f0600:	48 89 f2             	mov    %rsi,%rdx
  5f0603:	c4 42 fb f6 fd       	mulx   %r13,%rax,%r15
  5f0608:	4c 89 7c 24 50       	mov    %r15,0x50(%rsp)
  5f060d:	48 89 44 24 58       	mov    %rax,0x58(%rsp)
  5f0612:	4c 8b 79 10          	mov    0x10(%rcx),%r15
  5f0616:	4c 89 fa             	mov    %r15,%rdx
  5f0619:	c4 e2 a3 f6 c3       	mulx   %rbx,%r11,%rax
  5f061e:	48 89 84 24 a0 04 00 	mov    %rax,0x4a0(%rsp)
  5f0625:	00 
  5f0626:	4c 89 9c 24 c8 04 00 	mov    %r11,0x4c8(%rsp)
  5f062d:	00 
  5f062e:	c4 e2 a3 f6 c6       	mulx   %rsi,%r11,%rax
  5f0633:	48 89 44 24 60       	mov    %rax,0x60(%rsp)
  5f0638:	4c 89 5c 24 68       	mov    %r11,0x68(%rsp)
  5f063d:	48 89 fa             	mov    %rdi,%rdx
  5f0640:	c4 c2 a3 f6 c7       	mulx   %r15,%r11,%rax
  5f0645:	48 89 84 24 40 04 00 	mov    %rax,0x440(%rsp)
  5f064c:	00 
  5f064d:	4c 89 9c 24 48 04 00 	mov    %r11,0x448(%rsp)
  5f0654:	00 
  5f0655:	4c 89 ea             	mov    %r13,%rdx
  5f0658:	c4 e2 a3 f6 c7       	mulx   %rdi,%r11,%rax
  5f065d:	48 89 84 24 30 04 00 	mov    %rax,0x430(%rsp)
  5f0664:	00 
  5f0665:	4c 89 9c 24 38 04 00 	mov    %r11,0x438(%rsp)
  5f066c:	00 
  5f066d:	48 8b 41 28          	mov    0x28(%rcx),%rax
  5f0671:	48 89 84 24 00 05 00 	mov    %rax,0x500(%rsp)
  5f0678:	00 
  5f0679:	48 89 c2             	mov    %rax,%rdx
  5f067c:	c4 62 9b f6 db       	mulx   %rbx,%r12,%r11
  5f0681:	4c 89 5c 24 40       	mov    %r11,0x40(%rsp)
  5f0686:	4c 89 a4 24 98 00 00 	mov    %r12,0x98(%rsp)
  5f068d:	00 
  5f068e:	c4 62 9b f6 de       	mulx   %rsi,%r12,%r11
  5f0693:	4c 89 9c 24 90 00 00 	mov    %r11,0x90(%rsp)
  5f069a:	00 
  5f069b:	4c 89 a4 24 a0 00 00 	mov    %r12,0xa0(%rsp)
  5f06a2:	00 
  5f06a3:	c4 62 9b f6 df       	mulx   %rdi,%r12,%r11
  5f06a8:	4c 89 9c 24 78 04 00 	mov    %r11,0x478(%rsp)
  5f06af:	00 
  5f06b0:	4c 89 a4 24 80 04 00 	mov    %r12,0x480(%rsp)
  5f06b7:	00 
  5f06b8:	c4 42 9b f6 d8       	mulx   %r8,%r12,%r11
  5f06bd:	4c 89 9c 24 80 03 00 	mov    %r11,0x380(%rsp)
  5f06c4:	00 
  5f06c5:	4c 89 a4 24 88 03 00 	mov    %r12,0x388(%rsp)
  5f06cc:	00 
  5f06cd:	4c 8b 59 18          	mov    0x18(%rcx),%r11
  5f06d1:	4c 89 da             	mov    %r11,%rdx
  5f06d4:	c4 62 ab f6 e3       	mulx   %rbx,%r10,%r12
  5f06d9:	4c 89 a4 24 d0 04 00 	mov    %r12,0x4d0(%rsp)
  5f06e0:	00 
  5f06e1:	4c 89 94 24 d8 04 00 	mov    %r10,0x4d8(%rsp)
  5f06e8:	00 
  5f06e9:	c4 62 ab f6 e6       	mulx   %rsi,%r10,%r12
  5f06ee:	4c 89 64 24 70       	mov    %r12,0x70(%rsp)
  5f06f3:	4c 89 54 24 78       	mov    %r10,0x78(%rsp)
  5f06f8:	c4 62 ab f6 e7       	mulx   %rdi,%r10,%r12
  5f06fd:	4c 89 a4 24 50 04 00 	mov    %r12,0x450(%rsp)
  5f0704:	00 
  5f0705:	4c 89 94 24 58 04 00 	mov    %r10,0x458(%rsp)
  5f070c:	00 
  5f070d:	4c 89 c2             	mov    %r8,%rdx
  5f0710:	c4 42 ab f6 e3       	mulx   %r11,%r10,%r12
  5f0715:	4c 89 a4 24 60 03 00 	mov    %r12,0x360(%rsp)
  5f071c:	00 
  5f071d:	4c 89 94 24 68 03 00 	mov    %r10,0x368(%rsp)
  5f0724:	00 
  5f0725:	4c 89 fa             	mov    %r15,%rdx
  5f0728:	c4 42 ab f6 e0       	mulx   %r8,%r10,%r12
  5f072d:	4c 89 a4 24 50 03 00 	mov    %r12,0x350(%rsp)
  5f0734:	00 
  5f0735:	4c 89 94 24 58 03 00 	mov    %r10,0x358(%rsp)
  5f073c:	00 
  5f073d:	4c 89 ea             	mov    %r13,%rdx
  5f0740:	c4 42 ab f6 e0       	mulx   %r8,%r10,%r12
  5f0745:	4c 89 a4 24 40 03 00 	mov    %r12,0x340(%rsp)
  5f074c:	00 
  5f074d:	4c 89 94 24 48 03 00 	mov    %r10,0x348(%rsp)
  5f0754:	00 
  5f0755:	48 89 c2             	mov    %rax,%rdx
  5f0758:	c4 42 ab f6 e1       	mulx   %r9,%r10,%r12
  5f075d:	4c 89 a4 24 a0 02 00 	mov    %r12,0x2a0(%rsp)
  5f0764:	00 
  5f0765:	4c 89 94 24 a8 02 00 	mov    %r10,0x2a8(%rsp)
  5f076c:	00 
  5f076d:	4c 8b 61 20          	mov    0x20(%rcx),%r12
  5f0771:	4c 89 e2             	mov    %r12,%rdx
  5f0774:	c4 62 fb f6 d3       	mulx   %rbx,%rax,%r10
  5f0779:	4c 89 94 24 f8 04 00 	mov    %r10,0x4f8(%rsp)
  5f0780:	00 
  5f0781:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  5f0786:	c4 62 fb f6 d6       	mulx   %rsi,%rax,%r10
  5f078b:	4c 89 94 24 80 00 00 	mov    %r10,0x80(%rsp)
  5f0792:	00 
  5f0793:	48 89 84 24 88 00 00 	mov    %rax,0x88(%rsp)
  5f079a:	00 
  5f079b:	c4 62 fb f6 d7       	mulx   %rdi,%rax,%r10
  5f07a0:	4c 89 94 24 68 04 00 	mov    %r10,0x468(%rsp)
  5f07a7:	00 
  5f07a8:	48 89 84 24 70 04 00 	mov    %rax,0x470(%rsp)
  5f07af:	00 
  5f07b0:	c4 42 fb f6 d0       	mulx   %r8,%rax,%r10
  5f07b5:	4c 89 94 24 70 03 00 	mov    %r10,0x370(%rsp)
  5f07bc:	00 
  5f07bd:	48 89 84 24 78 03 00 	mov    %rax,0x378(%rsp)
  5f07c4:	00 
  5f07c5:	4c 89 ca             	mov    %r9,%rdx
  5f07c8:	c4 42 fb f6 d4       	mulx   %r12,%rax,%r10
  5f07cd:	4c 89 94 24 90 02 00 	mov    %r10,0x290(%rsp)
  5f07d4:	00 
  5f07d5:	48 89 84 24 98 02 00 	mov    %rax,0x298(%rsp)
  5f07dc:	00 
  5f07dd:	4c 89 da             	mov    %r11,%rdx
  5f07e0:	c4 42 fb f6 d1       	mulx   %r9,%rax,%r10
  5f07e5:	4c 89 94 24 80 02 00 	mov    %r10,0x280(%rsp)
  5f07ec:	00 
  5f07ed:	48 89 84 24 88 02 00 	mov    %rax,0x288(%rsp)
  5f07f4:	00 
  5f07f5:	4c 89 fa             	mov    %r15,%rdx
  5f07f8:	c4 42 fb f6 d1       	mulx   %r9,%rax,%r10
  5f07fd:	4c 89 94 24 70 02 00 	mov    %r10,0x270(%rsp)
  5f0804:	00 
  5f0805:	48 89 84 24 78 02 00 	mov    %rax,0x278(%rsp)
  5f080c:	00 
  5f080d:	4c 89 ea             	mov    %r13,%rdx
  5f0810:	c4 42 fb f6 d1       	mulx   %r9,%rax,%r10
  5f0815:	4c 89 94 24 60 02 00 	mov    %r10,0x260(%rsp)
  5f081c:	00 
  5f081d:	48 89 84 24 68 02 00 	mov    %rax,0x268(%rsp)
  5f0824:	00 
  5f0825:	48 8b 09             	mov    (%rcx),%rcx
  5f0828:	48 89 da             	mov    %rbx,%rdx
  5f082b:	c4 e2 eb f6 d9       	mulx   %rcx,%rdx,%rbx
  5f0830:	48 89 94 24 e0 03 00 	mov    %rdx,0x3e0(%rsp)
  5f0837:	00 
  5f0838:	48 ba 01 00 00 00 01 	movabs $0x100000001,%rdx
  5f083f:	00 00 00 
  5f0842:	4c 8b 94 24 e0 03 00 	mov    0x3e0(%rsp),%r10
  5f0849:	00 
  5f084a:	c4 c2 eb f6 c2       	mulx   %r10,%rdx,%rax
  5f084f:	48 89 d0             	mov    %rdx,%rax
  5f0852:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
  5f0859:	c4 e2 ab f6 d0       	mulx   %rax,%r10,%rdx
  5f085e:	48 89 94 24 00 02 00 	mov    %rdx,0x200(%rsp)
  5f0865:	00 
  5f0866:	4c 89 94 24 f8 01 00 	mov    %r10,0x1f8(%rsp)
  5f086d:	00 
  5f086e:	48 c7 c2 fe ff ff ff 	mov    $0xfffffffffffffffe,%rdx
  5f0875:	c4 e2 ab f6 d0       	mulx   %rax,%r10,%rdx
  5f087a:	48 89 94 24 48 01 00 	mov    %rdx,0x148(%rsp)
  5f0881:	00 
  5f0882:	4c 89 94 24 a0 01 00 	mov    %r10,0x1a0(%rsp)
  5f0889:	00 
  5f088a:	48 ba 00 00 00 00 ff 	movabs $0xffffffff00000000,%rdx
  5f0891:	ff ff ff 
  5f0894:	c4 e2 ab f6 d0       	mulx   %rax,%r10,%rdx
  5f0899:	48 89 94 24 10 01 00 	mov    %rdx,0x110(%rsp)
  5f08a0:	00 
  5f08a1:	ba ff ff ff ff       	mov    $0xffffffff,%edx
  5f08a6:	c4 e2 eb f6 c0       	mulx   %rax,%rdx,%rax
  5f08ab:	48 89 84 24 f0 00 00 	mov    %rax,0xf0(%rsp)
  5f08b2:	00 
  5f08b3:	48 89 94 24 f8 00 00 	mov    %rdx,0xf8(%rsp)
  5f08ba:	00 
  5f08bb:	48 89 ca             	mov    %rcx,%rdx
  5f08be:	c4 e2 fb f6 f6       	mulx   %rsi,%rax,%rsi
  5f08c3:	48 89 74 24 38       	mov    %rsi,0x38(%rsp)
  5f08c8:	48 89 44 24 48       	mov    %rax,0x48(%rsp)
  5f08cd:	c4 e2 fb f6 ff       	mulx   %rdi,%rax,%rdi
  5f08d2:	48 89 bc 24 20 04 00 	mov    %rdi,0x420(%rsp)
  5f08d9:	00 
  5f08da:	48 89 84 24 28 04 00 	mov    %rax,0x428(%rsp)
  5f08e1:	00 
  5f08e2:	c4 42 fb f6 c0       	mulx   %r8,%rax,%r8
  5f08e7:	4c 89 84 24 30 03 00 	mov    %r8,0x330(%rsp)
  5f08ee:	00 
  5f08ef:	48 89 84 24 38 03 00 	mov    %rax,0x338(%rsp)
  5f08f6:	00 
  5f08f7:	c4 42 fb f6 c9       	mulx   %r9,%rax,%r9
  5f08fc:	4c 89 8c 24 50 02 00 	mov    %r9,0x250(%rsp)
  5f0903:	00 
  5f0904:	48 89 84 24 58 02 00 	mov    %rax,0x258(%rsp)
  5f090b:	00 
  5f090c:	48 8b 94 24 e8 00 00 	mov    0xe8(%rsp),%rdx
  5f0913:	00 
  5f0914:	48 8b 84 24 00 05 00 	mov    0x500(%rsp),%rax
  5f091b:	00 
  5f091c:	c4 e2 b3 f6 c0       	mulx   %rax,%r9,%rax
  5f0921:	48 89 84 24 b0 01 00 	mov    %rax,0x1b0(%rsp)
  5f0928:	00 
  5f0929:	4c 89 8c 24 b8 01 00 	mov    %r9,0x1b8(%rsp)
  5f0930:	00 
  5f0931:	4c 89 e2             	mov    %r12,%rdx
  5f0934:	48 8b 84 24 e8 00 00 	mov    0xe8(%rsp),%rax
  5f093b:	00 
  5f093c:	c4 62 eb f6 e0       	mulx   %rax,%rdx,%r12
  5f0941:	4c 89 a4 24 98 01 00 	mov    %r12,0x198(%rsp)
  5f0948:	00 
  5f0949:	48 89 94 24 a8 01 00 	mov    %rdx,0x1a8(%rsp)
  5f0950:	00 
  5f0951:	4c 89 da             	mov    %r11,%rdx
  5f0954:	c4 62 eb f6 d8       	mulx   %rax,%rdx,%r11
  5f0959:	4c 89 9c 24 88 01 00 	mov    %r11,0x188(%rsp)
  5f0960:	00 
  5f0961:	48 89 94 24 90 01 00 	mov    %rdx,0x190(%rsp)
  5f0968:	00 
  5f0969:	4c 89 fa             	mov    %r15,%rdx
  5f096c:	c4 62 eb f6 f8       	mulx   %rax,%rdx,%r15
  5f0971:	4c 89 bc 24 78 01 00 	mov    %r15,0x178(%rsp)
  5f0978:	00 
  5f0979:	48 89 94 24 80 01 00 	mov    %rdx,0x180(%rsp)
  5f0980:	00 
  5f0981:	4c 89 ea             	mov    %r13,%rdx
  5f0984:	c4 62 eb f6 e8       	mulx   %rax,%rdx,%r13
  5f0989:	4c 89 ac 24 68 01 00 	mov    %r13,0x168(%rsp)
  5f0990:	00 
  5f0991:	48 89 94 24 70 01 00 	mov    %rdx,0x170(%rsp)
  5f0998:	00 
  5f0999:	48 89 ca             	mov    %rcx,%rdx
  5f099c:	c4 e2 f3 f6 c0       	mulx   %rax,%rcx,%rax
  5f09a1:	48 89 84 24 58 01 00 	mov    %rax,0x158(%rsp)
  5f09a8:	00 
  5f09a9:	48 89 8c 24 60 01 00 	mov    %rcx,0x160(%rsp)
  5f09b0:	00 
  5f09b1:	90                   	nop
  5f09b2:	90                   	nop
  5f09b3:	90                   	nop
  5f09b4:	90                   	nop
  5f09b5:	90                   	nop
  5f09b6:	90                   	nop
  5f09b7:	48 8b 94 24 60 04 00 	mov    0x460(%rsp),%rdx
  5f09be:	00 
  5f09bf:	48 01 da             	add    %rbx,%rdx
  5f09c2:	48 8b 9c 24 10 04 00 	mov    0x410(%rsp),%rbx
  5f09c9:	00 
  5f09ca:	48 8b 8c 24 c8 04 00 	mov    0x4c8(%rsp),%rcx
  5f09d1:	00 
  5f09d2:	48 11 cb             	adc    %rcx,%rbx
  5f09d5:	48 8b 8c 24 a0 04 00 	mov    0x4a0(%rsp),%rcx
  5f09dc:	00 
  5f09dd:	4c 8b 8c 24 d8 04 00 	mov    0x4d8(%rsp),%r9
  5f09e4:	00 
  5f09e5:	4c 11 c9             	adc    %r9,%rcx
  5f09e8:	4c 8b 8c 24 d0 04 00 	mov    0x4d0(%rsp),%r9
  5f09ef:	00 
  5f09f0:	4c 8b 64 24 08       	mov    0x8(%rsp),%r12
  5f09f5:	4d 11 e1             	adc    %r12,%r9
  5f09f8:	4c 8b a4 24 f8 04 00 	mov    0x4f8(%rsp),%r12
  5f09ff:	00 
  5f0a00:	4c 8b 9c 24 98 00 00 	mov    0x98(%rsp),%r11
  5f0a07:	00 
  5f0a08:	4d 11 dc             	adc    %r11,%r12
  5f0a0b:	4c 8b 5c 24 40       	mov    0x40(%rsp),%r11
  5f0a10:	49 83 d3 00          	adc    $0x0,%r11
  5f0a14:	4c 8b bc 24 f0 00 00 	mov    0xf0(%rsp),%r15
  5f0a1b:	00 
  5f0a1c:	4d 01 d7             	add    %r10,%r15
  5f0a1f:	4c 8b 94 24 10 01 00 	mov    0x110(%rsp),%r10
  5f0a26:	00 
  5f0a27:	4c 8b ac 24 a0 01 00 	mov    0x1a0(%rsp),%r13
  5f0a2e:	00 
  5f0a2f:	4d 11 ea             	adc    %r13,%r10
  5f0a32:	4c 8b ac 24 48 01 00 	mov    0x148(%rsp),%r13
  5f0a39:	00 
  5f0a3a:	48 8b 84 24 f8 01 00 	mov    0x1f8(%rsp),%rax
  5f0a41:	00 
  5f0a42:	49 11 c5             	adc    %rax,%r13
  5f0a45:	4c 8b 84 24 00 02 00 	mov    0x200(%rsp),%r8
  5f0a4c:	00 
  5f0a4d:	4c 11 c0             	adc    %r8,%rax
  5f0a50:	48 8b bc 24 f8 01 00 	mov    0x1f8(%rsp),%rdi
  5f0a57:	00 
  5f0a58:	4c 11 c7             	adc    %r8,%rdi
  5f0a5b:	49 83 d0 00          	adc    $0x0,%r8
  5f0a5f:	4c 89 84 24 e0 00 00 	mov    %r8,0xe0(%rsp)
  5f0a66:	00 
  5f0a67:	48 8b b4 24 e0 03 00 	mov    0x3e0(%rsp),%rsi
  5f0a6e:	00 
  5f0a6f:	4c 8b 84 24 f8 00 00 	mov    0xf8(%rsp),%r8
  5f0a76:	00 
  5f0a77:	4c 01 c6             	add    %r8,%rsi
  5f0a7a:	4c 11 fa             	adc    %r15,%rdx
  5f0a7d:	48 89 94 24 d8 00 00 	mov    %rdx,0xd8(%rsp)
  5f0a84:	00 
  5f0a85:	49 11 da             	adc    %rbx,%r10
  5f0a88:	4c 89 94 24 d0 00 00 	mov    %r10,0xd0(%rsp)
  5f0a8f:	00 
  5f0a90:	49 11 cd             	adc    %rcx,%r13
  5f0a93:	4c 89 ac 24 c8 00 00 	mov    %r13,0xc8(%rsp)
  5f0a9a:	00 
  5f0a9b:	4c 11 c8             	adc    %r9,%rax
  5f0a9e:	48 89 84 24 c0 00 00 	mov    %rax,0xc0(%rsp)
  5f0aa5:	00 
  5f0aa6:	4c 11 e7             	adc    %r12,%rdi
  5f0aa9:	48 89 bc 24 b8 00 00 	mov    %rdi,0xb8(%rsp)
  5f0ab0:	00 
  5f0ab1:	48 8b 8c 24 e0 00 00 	mov    0xe0(%rsp),%rcx
  5f0ab8:	00 
  5f0ab9:	4c 11 d9             	adc    %r11,%rcx
  5f0abc:	48 89 8c 24 b0 00 00 	mov    %rcx,0xb0(%rsp)
  5f0ac3:	00 
  5f0ac4:	0f 92 c3             	setb   %bl
  5f0ac7:	0f b6 db             	movzbl %bl,%ebx
  5f0aca:	48 89 9c 24 a8 00 00 	mov    %rbx,0xa8(%rsp)
  5f0ad1:	00 
  5f0ad2:	48 8b 74 24 38       	mov    0x38(%rsp),%rsi
  5f0ad7:	4c 8b 44 24 58       	mov    0x58(%rsp),%r8
  5f0adc:	4c 01 c6             	add    %r8,%rsi
  5f0adf:	48 89 74 24 30       	mov    %rsi,0x30(%rsp)
  5f0ae4:	4c 8b 44 24 50       	mov    0x50(%rsp),%r8
  5f0ae9:	4c 8b 4c 24 68       	mov    0x68(%rsp),%r9
  5f0aee:	4d 11 c8             	adc    %r9,%r8
  5f0af1:	4c 89 44 24 28       	mov    %r8,0x28(%rsp)
  5f0af6:	4c 8b 4c 24 60       	mov    0x60(%rsp),%r9
  5f0afb:	4c 8b 5c 24 78       	mov    0x78(%rsp),%r11
  5f0b00:	4d 11 d9             	adc    %r11,%r9
  5f0b03:	4c 89 4c 24 20       	mov    %r9,0x20(%rsp)
  5f0b08:	4c 8b 5c 24 70       	mov    0x70(%rsp),%r11
  5f0b0d:	4c 8b a4 24 88 00 00 	mov    0x88(%rsp),%r12
  5f0b14:	00 
  5f0b15:	4d 11 e3             	adc    %r12,%r11
  5f0b18:	4c 89 5c 24 18       	mov    %r11,0x18(%rsp)
  5f0b1d:	4c 8b a4 24 80 00 00 	mov    0x80(%rsp),%r12
  5f0b24:	00 
  5f0b25:	4c 8b bc 24 a0 00 00 	mov    0xa0(%rsp),%r15
  5f0b2c:	00 
  5f0b2d:	4d 11 fc             	adc    %r15,%r12
  5f0b30:	4c 89 64 24 10       	mov    %r12,0x10(%rsp)
  5f0b35:	4c 8b bc 24 90 00 00 	mov    0x90(%rsp),%r15
  5f0b3c:	00 
  5f0b3d:	49 83 d7 00          	adc    $0x0,%r15
  5f0b41:	4c 89 3c 24          	mov    %r15,(%rsp)
  5f0b45:	48 8b 5c 24 48       	mov    0x48(%rsp),%rbx
  5f0b4a:	48 01 d3             	add    %rdx,%rbx
  5f0b4d:	4c 11 d6             	adc    %r10,%rsi
  5f0b50:	4d 11 e8             	adc    %r13,%r8
  5f0b53:	49 11 c1             	adc    %rax,%r9
  5f0b56:	49 11 fb             	adc    %rdi,%r11
  5f0b59:	4c 89 9c 24 f0 04 00 	mov    %r11,0x4f0(%rsp)
  5f0b60:	00 
  5f0b61:	49 11 cc             	adc    %rcx,%r12
  5f0b64:	4c 89 a4 24 e8 04 00 	mov    %r12,0x4e8(%rsp)
  5f0b6b:	00 
  5f0b6c:	48 8b 8c 24 a8 00 00 	mov    0xa8(%rsp),%rcx
  5f0b73:	00 
  5f0b74:	49 11 cf             	adc    %rcx,%r15
  5f0b77:	4c 89 bc 24 e0 04 00 	mov    %r15,0x4e0(%rsp)
  5f0b7e:	00 
  5f0b7f:	48 89 da             	mov    %rbx,%rdx
  5f0b82:	48 b9 01 00 00 00 01 	movabs $0x100000001,%rcx
  5f0b89:	00 00 00 
  5f0b8c:	c4 e2 c3 f6 c9       	mulx   %rcx,%rdi,%rcx
  5f0b91:	48 89 fa             	mov    %rdi,%rdx
  5f0b94:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  5f0b9b:	c4 e2 fb f6 c9       	mulx   %rcx,%rax,%rcx
  5f0ba0:	49 c7 c5 fe ff ff ff 	mov    $0xfffffffffffffffe,%r13
  5f0ba7:	c4 42 ab f6 ed       	mulx   %r13,%r10,%r13
  5f0bac:	49 bf 00 00 00 00 ff 	movabs $0xffffffff00000000,%r15
  5f0bb3:	ff ff ff 
  5f0bb6:	c4 42 9b f6 ff       	mulx   %r15,%r12,%r15
  5f0bbb:	41 bb ff ff ff ff    	mov    $0xffffffff,%r11d
  5f0bc1:	c4 c2 c3 f6 d3       	mulx   %r11,%rdi,%rdx
  5f0bc6:	4c 01 e2             	add    %r12,%rdx
  5f0bc9:	4d 11 d7             	adc    %r10,%r15
  5f0bcc:	49 11 c5             	adc    %rax,%r13
  5f0bcf:	49 89 c2             	mov    %rax,%r10
  5f0bd2:	48 11 c8             	adc    %rcx,%rax
  5f0bd5:	49 11 ca             	adc    %rcx,%r10
  5f0bd8:	48 83 d1 00          	adc    $0x0,%rcx
  5f0bdc:	48 01 fb             	add    %rdi,%rbx
  5f0bdf:	48 11 f2             	adc    %rsi,%rdx
  5f0be2:	48 89 94 24 c0 04 00 	mov    %rdx,0x4c0(%rsp)
  5f0be9:	00 
  5f0bea:	4d 11 c7             	adc    %r8,%r15
  5f0bed:	4c 89 bc 24 b8 04 00 	mov    %r15,0x4b8(%rsp)
  5f0bf4:	00 
  5f0bf5:	4d 11 cd             	adc    %r9,%r13
  5f0bf8:	4c 89 ac 24 b0 04 00 	mov    %r13,0x4b0(%rsp)
  5f0bff:	00 
  5f0c00:	48 8b 9c 24 f0 04 00 	mov    0x4f0(%rsp),%rbx
  5f0c07:	00 
  5f0c08:	48 11 d8             	adc    %rbx,%rax
  5f0c0b:	48 89 84 24 a8 04 00 	mov    %rax,0x4a8(%rsp)
  5f0c12:	00 
  5f0c13:	48 8b 9c 24 e8 04 00 	mov    0x4e8(%rsp),%rbx
  5f0c1a:	00 
  5f0c1b:	49 11 da             	adc    %rbx,%r10
  5f0c1e:	4c 89 94 24 98 04 00 	mov    %r10,0x498(%rsp)
  5f0c25:	00 
  5f0c26:	48 8b 9c 24 e0 04 00 	mov    0x4e0(%rsp),%rbx
  5f0c2d:	00 
  5f0c2e:	48 11 d9             	adc    %rbx,%rcx
  5f0c31:	48 89 8c 24 90 04 00 	mov    %rcx,0x490(%rsp)
  5f0c38:	00 
  5f0c39:	0f 92 c3             	setb   %bl
  5f0c3c:	0f b6 db             	movzbl %bl,%ebx
  5f0c3f:	48 8b 74 24 48       	mov    0x48(%rsp),%rsi
  5f0c44:	48 8b bc 24 d8 00 00 	mov    0xd8(%rsp),%rdi
  5f0c4b:	00 
  5f0c4c:	48 01 fe             	add    %rdi,%rsi
  5f0c4f:	48 8b 74 24 30       	mov    0x30(%rsp),%rsi
  5f0c54:	48 8b bc 24 d0 00 00 	mov    0xd0(%rsp),%rdi
  5f0c5b:	00 
  5f0c5c:	48 11 fe             	adc    %rdi,%rsi
  5f0c5f:	48 8b 74 24 28       	mov    0x28(%rsp),%rsi
  5f0c64:	48 8b bc 24 c8 00 00 	mov    0xc8(%rsp),%rdi
  5f0c6b:	00 
  5f0c6c:	48 11 fe             	adc    %rdi,%rsi
  5f0c6f:	48 8b 74 24 20       	mov    0x20(%rsp),%rsi
  5f0c74:	48 8b bc 24 c0 00 00 	mov    0xc0(%rsp),%rdi
  5f0c7b:	00 
  5f0c7c:	48 11 fe             	adc    %rdi,%rsi
  5f0c7f:	48 8b 74 24 18       	mov    0x18(%rsp),%rsi
  5f0c84:	48 8b bc 24 b8 00 00 	mov    0xb8(%rsp),%rdi
  5f0c8b:	00 
  5f0c8c:	48 11 fe             	adc    %rdi,%rsi
  5f0c8f:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
  5f0c94:	48 8b bc 24 b0 00 00 	mov    0xb0(%rsp),%rdi
  5f0c9b:	00 
  5f0c9c:	48 11 fe             	adc    %rdi,%rsi
  5f0c9f:	48 8b 34 24          	mov    (%rsp),%rsi
  5f0ca3:	48 8b bc 24 a8 00 00 	mov    0xa8(%rsp),%rdi
  5f0caa:	00 
  5f0cab:	48 11 fe             	adc    %rdi,%rsi
  5f0cae:	48 83 d3 00          	adc    $0x0,%rbx
  5f0cb2:	48 89 9c 24 88 04 00 	mov    %rbx,0x488(%rsp)
  5f0cb9:	00 
  5f0cba:	48 8b b4 24 20 04 00 	mov    0x420(%rsp),%rsi
  5f0cc1:	00 
  5f0cc2:	48 8b bc 24 38 04 00 	mov    0x438(%rsp),%rdi
  5f0cc9:	00 
  5f0cca:	48 01 fe             	add    %rdi,%rsi
  5f0ccd:	48 89 b4 24 18 04 00 	mov    %rsi,0x418(%rsp)
  5f0cd4:	00 
  5f0cd5:	48 8b bc 24 30 04 00 	mov    0x430(%rsp),%rdi
  5f0cdc:	00 
  5f0cdd:	4c 8b 84 24 48 04 00 	mov    0x448(%rsp),%r8
  5f0ce4:	00 
  5f0ce5:	4c 11 c7             	adc    %r8,%rdi
  5f0ce8:	48 89 bc 24 08 04 00 	mov    %rdi,0x408(%rsp)
  5f0cef:	00 
  5f0cf0:	4c 8b 84 24 40 04 00 	mov    0x440(%rsp),%r8
  5f0cf7:	00 
  5f0cf8:	4c 8b 8c 24 58 04 00 	mov    0x458(%rsp),%r9
  5f0cff:	00 
  5f0d00:	4d 11 c8             	adc    %r9,%r8
  5f0d03:	4c 89 84 24 00 04 00 	mov    %r8,0x400(%rsp)
  5f0d0a:	00 
  5f0d0b:	4c 8b 8c 24 50 04 00 	mov    0x450(%rsp),%r9
  5f0d12:	00 
  5f0d13:	4c 8b a4 24 70 04 00 	mov    0x470(%rsp),%r12
  5f0d1a:	00 
  5f0d1b:	4d 11 e1             	adc    %r12,%r9
  5f0d1e:	4c 89 8c 24 f8 03 00 	mov    %r9,0x3f8(%rsp)
  5f0d25:	00 
  5f0d26:	4c 8b a4 24 68 04 00 	mov    0x468(%rsp),%r12
  5f0d2d:	00 
  5f0d2e:	4c 8b 9c 24 80 04 00 	mov    0x480(%rsp),%r11
  5f0d35:	00 
  5f0d36:	4d 11 dc             	adc    %r11,%r12
  5f0d39:	4c 89 a4 24 f0 03 00 	mov    %r12,0x3f0(%rsp)
  5f0d40:	00 
  5f0d41:	4c 8b 9c 24 78 04 00 	mov    0x478(%rsp),%r11
  5f0d48:	00 
  5f0d49:	49 83 d3 00          	adc    $0x0,%r11
  5f0d4d:	4c 89 9c 24 e8 03 00 	mov    %r11,0x3e8(%rsp)
  5f0d54:	00 
  5f0d55:	48 8b 9c 24 28 04 00 	mov    0x428(%rsp),%rbx
  5f0d5c:	00 
  5f0d5d:	48 01 d3             	add    %rdx,%rbx
  5f0d60:	4c 11 fe             	adc    %r15,%rsi
  5f0d63:	4c 11 ef             	adc    %r13,%rdi
  5f0d66:	49 11 c0             	adc    %rax,%r8
  5f0d69:	4d 11 d1             	adc    %r10,%r9
  5f0d6c:	4c 89 8c 24 d8 03 00 	mov    %r9,0x3d8(%rsp)
  5f0d73:	00 
  5f0d74:	49 11 cc             	adc    %rcx,%r12
  5f0d77:	4c 89 a4 24 d0 03 00 	mov    %r12,0x3d0(%rsp)
  5f0d7e:	00 
  5f0d7f:	48 8b 8c 24 88 04 00 	mov    0x488(%rsp),%rcx
  5f0d86:	00 
  5f0d87:	49 11 cb             	adc    %rcx,%r11
  5f0d8a:	4c 89 9c 24 c8 03 00 	mov    %r11,0x3c8(%rsp)
  5f0d91:	00 
  5f0d92:	48 89 da             	mov    %rbx,%rdx
  5f0d95:	48 b9 01 00 00 00 01 	movabs $0x100000001,%rcx
  5f0d9c:	00 00 00 
  5f0d9f:	c4 e2 ab f6 c9       	mulx   %rcx,%r10,%rcx
  5f0da4:	4c 89 d2             	mov    %r10,%rdx
  5f0da7:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  5f0dae:	c4 e2 fb f6 c9       	mulx   %rcx,%rax,%rcx
  5f0db3:	49 c7 c5 fe ff ff ff 	mov    $0xfffffffffffffffe,%r13
  5f0dba:	c4 42 83 f6 ed       	mulx   %r13,%r15,%r13
  5f0dbf:	49 bb 00 00 00 00 ff 	movabs $0xffffffff00000000,%r11
  5f0dc6:	ff ff ff 
  5f0dc9:	c4 42 9b f6 db       	mulx   %r11,%r12,%r11
  5f0dce:	41 b9 ff ff ff ff    	mov    $0xffffffff,%r9d
  5f0dd4:	c4 c2 ab f6 d1       	mulx   %r9,%r10,%rdx
  5f0dd9:	4c 01 e2             	add    %r12,%rdx
  5f0ddc:	4d 11 fb             	adc    %r15,%r11
  5f0ddf:	49 11 c5             	adc    %rax,%r13
  5f0de2:	49 89 c4             	mov    %rax,%r12
  5f0de5:	48 11 c8             	adc    %rcx,%rax
  5f0de8:	49 11 cc             	adc    %rcx,%r12
  5f0deb:	48 83 d1 00          	adc    $0x0,%rcx
  5f0def:	4c 01 d3             	add    %r10,%rbx
  5f0df2:	48 11 f2             	adc    %rsi,%rdx
  5f0df5:	48 89 94 24 c0 03 00 	mov    %rdx,0x3c0(%rsp)
  5f0dfc:	00 
  5f0dfd:	49 11 fb             	adc    %rdi,%r11
  5f0e00:	4c 89 9c 24 b8 03 00 	mov    %r11,0x3b8(%rsp)
  5f0e07:	00 
  5f0e08:	4d 11 c5             	adc    %r8,%r13
  5f0e0b:	4c 89 ac 24 b0 03 00 	mov    %r13,0x3b0(%rsp)
  5f0e12:	00 
  5f0e13:	48 8b 9c 24 d8 03 00 	mov    0x3d8(%rsp),%rbx
  5f0e1a:	00 
  5f0e1b:	48 11 d8             	adc    %rbx,%rax
  5f0e1e:	48 89 84 24 a8 03 00 	mov    %rax,0x3a8(%rsp)
  5f0e25:	00 
  5f0e26:	48 8b 9c 24 d0 03 00 	mov    0x3d0(%rsp),%rbx
  5f0e2d:	00 
  5f0e2e:	49 11 dc             	adc    %rbx,%r12
  5f0e31:	4c 89 a4 24 a0 03 00 	mov    %r12,0x3a0(%rsp)
  5f0e38:	00 
  5f0e39:	48 8b 9c 24 c8 03 00 	mov    0x3c8(%rsp),%rbx
  5f0e40:	00 
  5f0e41:	48 11 d9             	adc    %rbx,%rcx
  5f0e44:	48 89 8c 24 98 03 00 	mov    %rcx,0x398(%rsp)
  5f0e4b:	00 
  5f0e4c:	0f 92 c3             	setb   %bl
  5f0e4f:	0f b6 db             	movzbl %bl,%ebx
  5f0e52:	48 8b b4 24 28 04 00 	mov    0x428(%rsp),%rsi
  5f0e59:	00 
  5f0e5a:	48 8b bc 24 c0 04 00 	mov    0x4c0(%rsp),%rdi
  5f0e61:	00 
  5f0e62:	48 01 fe             	add    %rdi,%rsi
  5f0e65:	48 8b b4 24 18 04 00 	mov    0x418(%rsp),%rsi
  5f0e6c:	00 
  5f0e6d:	48 8b bc 24 b8 04 00 	mov    0x4b8(%rsp),%rdi
  5f0e74:	00 
  5f0e75:	48 11 fe             	adc    %rdi,%rsi
  5f0e78:	48 8b b4 24 08 04 00 	mov    0x408(%rsp),%rsi
  5f0e7f:	00 
  5f0e80:	48 8b bc 24 b0 04 00 	mov    0x4b0(%rsp),%rdi
  5f0e87:	00 
  5f0e88:	48 11 fe             	adc    %rdi,%rsi
  5f0e8b:	48 8b b4 24 00 04 00 	mov    0x400(%rsp),%rsi
  5f0e92:	00 
  5f0e93:	48 8b bc 24 a8 04 00 	mov    0x4a8(%rsp),%rdi
  5f0e9a:	00 
  5f0e9b:	48 11 fe             	adc    %rdi,%rsi
  5f0e9e:	48 8b b4 24 f8 03 00 	mov    0x3f8(%rsp),%rsi
  5f0ea5:	00 
  5f0ea6:	48 8b bc 24 98 04 00 	mov    0x498(%rsp),%rdi
  5f0ead:	00 
  5f0eae:	48 11 fe             	adc    %rdi,%rsi
  5f0eb1:	48 8b b4 24 f0 03 00 	mov    0x3f0(%rsp),%rsi
  5f0eb8:	00 
  5f0eb9:	48 8b bc 24 90 04 00 	mov    0x490(%rsp),%rdi
  5f0ec0:	00 
  5f0ec1:	48 11 fe             	adc    %rdi,%rsi
  5f0ec4:	48 8b b4 24 e8 03 00 	mov    0x3e8(%rsp),%rsi
  5f0ecb:	00 
  5f0ecc:	48 8b bc 24 88 04 00 	mov    0x488(%rsp),%rdi
  5f0ed3:	00 
  5f0ed4:	48 11 fe             	adc    %rdi,%rsi
  5f0ed7:	48 83 d3 00          	adc    $0x0,%rbx
  5f0edb:	48 89 9c 24 90 03 00 	mov    %rbx,0x390(%rsp)
  5f0ee2:	00 
  5f0ee3:	48 8b b4 24 30 03 00 	mov    0x330(%rsp),%rsi
  5f0eea:	00 
  5f0eeb:	48 8b bc 24 48 03 00 	mov    0x348(%rsp),%rdi
  5f0ef2:	00 
  5f0ef3:	48 01 fe             	add    %rdi,%rsi
  5f0ef6:	48 89 b4 24 28 03 00 	mov    %rsi,0x328(%rsp)
  5f0efd:	00 
  5f0efe:	48 8b bc 24 40 03 00 	mov    0x340(%rsp),%rdi
  5f0f05:	00 
  5f0f06:	4c 8b 84 24 58 03 00 	mov    0x358(%rsp),%r8
  5f0f0d:	00 
  5f0f0e:	4c 11 c7             	adc    %r8,%rdi
  5f0f11:	48 89 bc 24 20 03 00 	mov    %rdi,0x320(%rsp)
  5f0f18:	00 
  5f0f19:	4c 8b 84 24 50 03 00 	mov    0x350(%rsp),%r8
  5f0f20:	00 
  5f0f21:	4c 8b 94 24 68 03 00 	mov    0x368(%rsp),%r10
  5f0f28:	00 
  5f0f29:	4d 11 d0             	adc    %r10,%r8
  5f0f2c:	4c 89 84 24 18 03 00 	mov    %r8,0x318(%rsp)
  5f0f33:	00 
  5f0f34:	4c 8b 94 24 60 03 00 	mov    0x360(%rsp),%r10
  5f0f3b:	00 
  5f0f3c:	4c 8b bc 24 78 03 00 	mov    0x378(%rsp),%r15
  5f0f43:	00 
  5f0f44:	4d 11 fa             	adc    %r15,%r10
  5f0f47:	4c 89 94 24 10 03 00 	mov    %r10,0x310(%rsp)
  5f0f4e:	00 
  5f0f4f:	4c 8b bc 24 70 03 00 	mov    0x370(%rsp),%r15
  5f0f56:	00 
  5f0f57:	4c 8b 8c 24 88 03 00 	mov    0x388(%rsp),%r9
  5f0f5e:	00 
  5f0f5f:	4d 11 cf             	adc    %r9,%r15
  5f0f62:	4c 89 bc 24 08 03 00 	mov    %r15,0x308(%rsp)
  5f0f69:	00 
  5f0f6a:	4c 8b 8c 24 80 03 00 	mov    0x380(%rsp),%r9
  5f0f71:	00 
  5f0f72:	49 83 d1 00          	adc    $0x0,%r9
  5f0f76:	4c 89 8c 24 00 03 00 	mov    %r9,0x300(%rsp)
  5f0f7d:	00 
  5f0f7e:	48 8b 9c 24 38 03 00 	mov    0x338(%rsp),%rbx
  5f0f85:	00 
  5f0f86:	48 01 d3             	add    %rdx,%rbx
  5f0f89:	4c 11 de             	adc    %r11,%rsi
  5f0f8c:	4c 11 ef             	adc    %r13,%rdi
  5f0f8f:	49 11 c0             	adc    %rax,%r8
  5f0f92:	4d 11 e2             	adc    %r12,%r10
  5f0f95:	4c 89 94 24 f8 02 00 	mov    %r10,0x2f8(%rsp)
  5f0f9c:	00 
  5f0f9d:	49 11 cf             	adc    %rcx,%r15
  5f0fa0:	4c 89 bc 24 f0 02 00 	mov    %r15,0x2f0(%rsp)
  5f0fa7:	00 
  5f0fa8:	48 8b 8c 24 90 03 00 	mov    0x390(%rsp),%rcx
  5f0faf:	00 
  5f0fb0:	49 11 c9             	adc    %rcx,%r9
  5f0fb3:	4c 89 8c 24 e8 02 00 	mov    %r9,0x2e8(%rsp)
  5f0fba:	00 
  5f0fbb:	48 89 da             	mov    %rbx,%rdx
  5f0fbe:	48 b9 01 00 00 00 01 	movabs $0x100000001,%rcx
  5f0fc5:	00 00 00 
  5f0fc8:	c4 e2 9b f6 c9       	mulx   %rcx,%r12,%rcx
  5f0fcd:	4c 89 e2             	mov    %r12,%rdx
  5f0fd0:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  5f0fd7:	c4 e2 fb f6 c9       	mulx   %rcx,%rax,%rcx
  5f0fdc:	49 c7 c5 fe ff ff ff 	mov    $0xfffffffffffffffe,%r13
  5f0fe3:	c4 42 a3 f6 ed       	mulx   %r13,%r11,%r13
  5f0fe8:	49 b9 00 00 00 00 ff 	movabs $0xffffffff00000000,%r9
  5f0fef:	ff ff ff 
  5f0ff2:	c4 42 83 f6 c9       	mulx   %r9,%r15,%r9
  5f0ff7:	41 ba ff ff ff ff    	mov    $0xffffffff,%r10d
  5f0ffd:	c4 c2 9b f6 d2       	mulx   %r10,%r12,%rdx
  5f1002:	4c 01 fa             	add    %r15,%rdx
  5f1005:	4d 11 d9             	adc    %r11,%r9
  5f1008:	49 11 c5             	adc    %rax,%r13
  5f100b:	49 89 cb             	mov    %rcx,%r11
  5f100e:	48 11 c1             	adc    %rax,%rcx
  5f1011:	4c 11 d8             	adc    %r11,%rax
  5f1014:	49 83 d3 00          	adc    $0x0,%r11
  5f1018:	4c 01 e3             	add    %r12,%rbx
  5f101b:	48 11 f2             	adc    %rsi,%rdx
  5f101e:	48 89 94 24 e0 02 00 	mov    %rdx,0x2e0(%rsp)
  5f1025:	00 
  5f1026:	49 11 f9             	adc    %rdi,%r9
  5f1029:	4c 89 8c 24 d8 02 00 	mov    %r9,0x2d8(%rsp)
  5f1030:	00 
  5f1031:	4d 11 c5             	adc    %r8,%r13
  5f1034:	4c 89 ac 24 d0 02 00 	mov    %r13,0x2d0(%rsp)
  5f103b:	00 
  5f103c:	48 8b 9c 24 f8 02 00 	mov    0x2f8(%rsp),%rbx
  5f1043:	00 
  5f1044:	48 11 d9             	adc    %rbx,%rcx
  5f1047:	48 89 8c 24 c8 02 00 	mov    %rcx,0x2c8(%rsp)
  5f104e:	00 
  5f104f:	48 8b 9c 24 f0 02 00 	mov    0x2f0(%rsp),%rbx
  5f1056:	00 
  5f1057:	48 11 d8             	adc    %rbx,%rax
  5f105a:	48 89 84 24 c0 02 00 	mov    %rax,0x2c0(%rsp)
  5f1061:	00 
  5f1062:	48 8b 9c 24 e8 02 00 	mov    0x2e8(%rsp),%rbx
  5f1069:	00 
  5f106a:	49 11 db             	adc    %rbx,%r11
  5f106d:	4c 89 9c 24 b8 02 00 	mov    %r11,0x2b8(%rsp)
  5f1074:	00 
  5f1075:	0f 92 c3             	setb   %bl
  5f1078:	0f b6 db             	movzbl %bl,%ebx
  5f107b:	48 8b b4 24 38 03 00 	mov    0x338(%rsp),%rsi
  5f1082:	00 
  5f1083:	48 8b bc 24 c0 03 00 	mov    0x3c0(%rsp),%rdi
  5f108a:	00 
  5f108b:	48 01 fe             	add    %rdi,%rsi
  5f108e:	48 8b b4 24 28 03 00 	mov    0x328(%rsp),%rsi
  5f1095:	00 
  5f1096:	48 8b bc 24 b8 03 00 	mov    0x3b8(%rsp),%rdi
  5f109d:	00 
  5f109e:	48 11 fe             	adc    %rdi,%rsi
  5f10a1:	48 8b b4 24 20 03 00 	mov    0x320(%rsp),%rsi
  5f10a8:	00 
  5f10a9:	48 8b bc 24 b0 03 00 	mov    0x3b0(%rsp),%rdi
  5f10b0:	00 
  5f10b1:	48 11 fe             	adc    %rdi,%rsi
  5f10b4:	48 8b b4 24 18 03 00 	mov    0x318(%rsp),%rsi
  5f10bb:	00 
  5f10bc:	48 8b bc 24 a8 03 00 	mov    0x3a8(%rsp),%rdi
  5f10c3:	00 
  5f10c4:	48 11 fe             	adc    %rdi,%rsi
  5f10c7:	48 8b b4 24 10 03 00 	mov    0x310(%rsp),%rsi
  5f10ce:	00 
  5f10cf:	48 8b bc 24 a0 03 00 	mov    0x3a0(%rsp),%rdi
  5f10d6:	00 
  5f10d7:	48 11 fe             	adc    %rdi,%rsi
  5f10da:	48 8b b4 24 08 03 00 	mov    0x308(%rsp),%rsi
  5f10e1:	00 
  5f10e2:	48 8b bc 24 98 03 00 	mov    0x398(%rsp),%rdi
  5f10e9:	00 
  5f10ea:	48 11 fe             	adc    %rdi,%rsi
  5f10ed:	48 8b b4 24 00 03 00 	mov    0x300(%rsp),%rsi
  5f10f4:	00 
  5f10f5:	48 8b bc 24 90 03 00 	mov    0x390(%rsp),%rdi
  5f10fc:	00 
  5f10fd:	48 11 fe             	adc    %rdi,%rsi
  5f1100:	48 83 d3 00          	adc    $0x0,%rbx
  5f1104:	48 89 9c 24 b0 02 00 	mov    %rbx,0x2b0(%rsp)
  5f110b:	00 
  5f110c:	48 8b b4 24 50 02 00 	mov    0x250(%rsp),%rsi
  5f1113:	00 
  5f1114:	48 8b bc 24 68 02 00 	mov    0x268(%rsp),%rdi
  5f111b:	00 
  5f111c:	48 01 fe             	add    %rdi,%rsi
  5f111f:	48 89 b4 24 48 02 00 	mov    %rsi,0x248(%rsp)
  5f1126:	00 
  5f1127:	48 8b bc 24 60 02 00 	mov    0x260(%rsp),%rdi
  5f112e:	00 
  5f112f:	4c 8b 84 24 78 02 00 	mov    0x278(%rsp),%r8
  5f1136:	00 
  5f1137:	4c 11 c7             	adc    %r8,%rdi
  5f113a:	48 89 bc 24 40 02 00 	mov    %rdi,0x240(%rsp)
  5f1141:	00 
  5f1142:	4c 8b 84 24 70 02 00 	mov    0x270(%rsp),%r8
  5f1149:	00 
  5f114a:	4c 8b a4 24 88 02 00 	mov    0x288(%rsp),%r12
  5f1151:	00 
  5f1152:	4d 11 e0             	adc    %r12,%r8
  5f1155:	4c 89 84 24 38 02 00 	mov    %r8,0x238(%rsp)
  5f115c:	00 
  5f115d:	4c 8b a4 24 80 02 00 	mov    0x280(%rsp),%r12
  5f1164:	00 
  5f1165:	4c 8b bc 24 98 02 00 	mov    0x298(%rsp),%r15
  5f116c:	00 
  5f116d:	4d 11 fc             	adc    %r15,%r12
  5f1170:	4c 89 a4 24 30 02 00 	mov    %r12,0x230(%rsp)
  5f1177:	00 
  5f1178:	4c 8b bc 24 90 02 00 	mov    0x290(%rsp),%r15
  5f117f:	00 
  5f1180:	4c 8b 94 24 a8 02 00 	mov    0x2a8(%rsp),%r10
  5f1187:	00 
  5f1188:	4d 11 d7             	adc    %r10,%r15
  5f118b:	4c 89 bc 24 28 02 00 	mov    %r15,0x228(%rsp)
  5f1192:	00 
  5f1193:	4c 8b 94 24 a0 02 00 	mov    0x2a0(%rsp),%r10
  5f119a:	00 
  5f119b:	49 83 d2 00          	adc    $0x0,%r10
  5f119f:	4c 89 94 24 20 02 00 	mov    %r10,0x220(%rsp)
  5f11a6:	00 
  5f11a7:	48 8b 9c 24 58 02 00 	mov    0x258(%rsp),%rbx
  5f11ae:	00 
  5f11af:	48 01 d3             	add    %rdx,%rbx
  5f11b2:	4c 11 ce             	adc    %r9,%rsi
  5f11b5:	4c 11 ef             	adc    %r13,%rdi
  5f11b8:	49 11 c8             	adc    %rcx,%r8
  5f11bb:	49 11 c4             	adc    %rax,%r12
  5f11be:	4c 89 a4 24 18 02 00 	mov    %r12,0x218(%rsp)
  5f11c5:	00 
  5f11c6:	4d 11 df             	adc    %r11,%r15
  5f11c9:	4c 89 bc 24 10 02 00 	mov    %r15,0x210(%rsp)
  5f11d0:	00 
  5f11d1:	4c 8b 9c 24 b0 02 00 	mov    0x2b0(%rsp),%r11
  5f11d8:	00 
  5f11d9:	4d 11 da             	adc    %r11,%r10
  5f11dc:	4c 89 94 24 08 02 00 	mov    %r10,0x208(%rsp)
  5f11e3:	00 
  5f11e4:	48 89 da             	mov    %rbx,%rdx
  5f11e7:	49 bb 01 00 00 00 01 	movabs $0x100000001,%r11
  5f11ee:	00 00 00 
  5f11f1:	c4 42 fb f6 db       	mulx   %r11,%rax,%r11
  5f11f6:	48 89 c2             	mov    %rax,%rdx
  5f11f9:	49 c7 c3 ff ff ff ff 	mov    $0xffffffffffffffff,%r11
  5f1200:	c4 42 f3 f6 db       	mulx   %r11,%rcx,%r11
  5f1205:	49 c7 c5 fe ff ff ff 	mov    $0xfffffffffffffffe,%r13
  5f120c:	c4 42 b3 f6 ed       	mulx   %r13,%r9,%r13
  5f1211:	49 ba 00 00 00 00 ff 	movabs $0xffffffff00000000,%r10
  5f1218:	ff ff ff 
  5f121b:	c4 42 83 f6 d2       	mulx   %r10,%r15,%r10
  5f1220:	41 bc ff ff ff ff    	mov    $0xffffffff,%r12d
  5f1226:	c4 c2 fb f6 d4       	mulx   %r12,%rax,%rdx
  5f122b:	4c 01 fa             	add    %r15,%rdx
  5f122e:	4d 11 ca             	adc    %r9,%r10
  5f1231:	49 11 cd             	adc    %rcx,%r13
  5f1234:	49 89 c9             	mov    %rcx,%r9
  5f1237:	4c 11 d9             	adc    %r11,%rcx
  5f123a:	4d 11 d9             	adc    %r11,%r9
  5f123d:	49 83 d3 00          	adc    $0x0,%r11
  5f1241:	48 01 c3             	add    %rax,%rbx
  5f1244:	48 11 f2             	adc    %rsi,%rdx
  5f1247:	48 89 94 24 f0 01 00 	mov    %rdx,0x1f0(%rsp)
  5f124e:	00 
  5f124f:	49 11 fa             	adc    %rdi,%r10
  5f1252:	4c 89 94 24 e8 01 00 	mov    %r10,0x1e8(%rsp)
  5f1259:	00 
  5f125a:	4d 11 c5             	adc    %r8,%r13
  5f125d:	4c 89 ac 24 e0 01 00 	mov    %r13,0x1e0(%rsp)
  5f1264:	00 
  5f1265:	48 8b 84 24 18 02 00 	mov    0x218(%rsp),%rax
  5f126c:	00 
  5f126d:	48 11 c1             	adc    %rax,%rcx
  5f1270:	48 89 8c 24 d8 01 00 	mov    %rcx,0x1d8(%rsp)
  5f1277:	00 
  5f1278:	48 8b 84 24 10 02 00 	mov    0x210(%rsp),%rax
  5f127f:	00 
  5f1280:	49 11 c1             	adc    %rax,%r9
  5f1283:	4c 89 8c 24 d0 01 00 	mov    %r9,0x1d0(%rsp)
  5f128a:	00 
  5f128b:	48 8b 84 24 08 02 00 	mov    0x208(%rsp),%rax
  5f1292:	00 
  5f1293:	49 11 c3             	adc    %rax,%r11
  5f1296:	4c 89 9c 24 c8 01 00 	mov    %r11,0x1c8(%rsp)
  5f129d:	00 
  5f129e:	0f 92 c0             	setb   %al
  5f12a1:	0f b6 c0             	movzbl %al,%eax
  5f12a4:	48 8b 9c 24 58 02 00 	mov    0x258(%rsp),%rbx
  5f12ab:	00 
  5f12ac:	48 8b b4 24 e0 02 00 	mov    0x2e0(%rsp),%rsi
  5f12b3:	00 
  5f12b4:	48 01 f3             	add    %rsi,%rbx
  5f12b7:	48 8b 9c 24 48 02 00 	mov    0x248(%rsp),%rbx
  5f12be:	00 
  5f12bf:	48 8b b4 24 d8 02 00 	mov    0x2d8(%rsp),%rsi
  5f12c6:	00 
  5f12c7:	48 11 f3             	adc    %rsi,%rbx
  5f12ca:	48 8b 9c 24 40 02 00 	mov    0x240(%rsp),%rbx
  5f12d1:	00 
  5f12d2:	48 8b b4 24 d0 02 00 	mov    0x2d0(%rsp),%rsi
  5f12d9:	00 
  5f12da:	48 11 f3             	adc    %rsi,%rbx
  5f12dd:	48 8b 9c 24 38 02 00 	mov    0x238(%rsp),%rbx
  5f12e4:	00 
  5f12e5:	48 8b b4 24 c8 02 00 	mov    0x2c8(%rsp),%rsi
  5f12ec:	00 
  5f12ed:	48 11 f3             	adc    %rsi,%rbx
  5f12f0:	48 8b 9c 24 30 02 00 	mov    0x230(%rsp),%rbx
  5f12f7:	00 
  5f12f8:	48 8b b4 24 c0 02 00 	mov    0x2c0(%rsp),%rsi
  5f12ff:	00 
  5f1300:	48 11 f3             	adc    %rsi,%rbx
  5f1303:	48 8b 9c 24 28 02 00 	mov    0x228(%rsp),%rbx
  5f130a:	00 
  5f130b:	48 8b b4 24 b8 02 00 	mov    0x2b8(%rsp),%rsi
  5f1312:	00 
  5f1313:	48 11 f3             	adc    %rsi,%rbx
  5f1316:	48 8b 9c 24 20 02 00 	mov    0x220(%rsp),%rbx
  5f131d:	00 
  5f131e:	48 8b b4 24 b0 02 00 	mov    0x2b0(%rsp),%rsi
  5f1325:	00 
  5f1326:	48 11 f3             	adc    %rsi,%rbx
  5f1329:	48 83 d0 00          	adc    $0x0,%rax
  5f132d:	48 89 84 24 c0 01 00 	mov    %rax,0x1c0(%rsp)
  5f1334:	00 
  5f1335:	48 8b 9c 24 58 01 00 	mov    0x158(%rsp),%rbx
  5f133c:	00 
  5f133d:	48 8b b4 24 70 01 00 	mov    0x170(%rsp),%rsi
  5f1344:	00 
  5f1345:	48 01 f3             	add    %rsi,%rbx
  5f1348:	48 89 9c 24 50 01 00 	mov    %rbx,0x150(%rsp)
  5f134f:	00 
  5f1350:	48 8b b4 24 68 01 00 	mov    0x168(%rsp),%rsi
  5f1357:	00 
  5f1358:	48 8b bc 24 80 01 00 	mov    0x180(%rsp),%rdi
  5f135f:	00 
  5f1360:	48 11 fe             	adc    %rdi,%rsi
  5f1363:	48 89 b4 24 40 01 00 	mov    %rsi,0x140(%rsp)
  5f136a:	00 
  5f136b:	48 8b bc 24 78 01 00 	mov    0x178(%rsp),%rdi
  5f1372:	00 
  5f1373:	4c 8b 84 24 90 01 00 	mov    0x190(%rsp),%r8
  5f137a:	00 
  5f137b:	4c 11 c7             	adc    %r8,%rdi
  5f137e:	48 89 bc 24 38 01 00 	mov    %rdi,0x138(%rsp)
  5f1385:	00 
  5f1386:	4c 8b 84 24 88 01 00 	mov    0x188(%rsp),%r8
  5f138d:	00 
  5f138e:	4c 8b bc 24 a8 01 00 	mov    0x1a8(%rsp),%r15
  5f1395:	00 
  5f1396:	4d 11 f8             	adc    %r15,%r8
  5f1399:	4c 89 84 24 30 01 00 	mov    %r8,0x130(%rsp)
  5f13a0:	00 
  5f13a1:	4c 8b bc 24 98 01 00 	mov    0x198(%rsp),%r15
  5f13a8:	00 
  5f13a9:	4c 8b a4 24 b8 01 00 	mov    0x1b8(%rsp),%r12
  5f13b0:	00 
  5f13b1:	4d 11 e7             	adc    %r12,%r15
  5f13b4:	4c 89 bc 24 28 01 00 	mov    %r15,0x128(%rsp)
  5f13bb:	00 
  5f13bc:	4c 8b a4 24 b0 01 00 	mov    0x1b0(%rsp),%r12
  5f13c3:	00 
  5f13c4:	49 83 d4 00          	adc    $0x0,%r12
  5f13c8:	4c 89 a4 24 20 01 00 	mov    %r12,0x120(%rsp)
  5f13cf:	00 
  5f13d0:	48 8b 84 24 60 01 00 	mov    0x160(%rsp),%rax
  5f13d7:	00 
  5f13d8:	48 01 d0             	add    %rdx,%rax
  5f13db:	4c 11 d3             	adc    %r10,%rbx
  5f13de:	4c 11 ee             	adc    %r13,%rsi
  5f13e1:	48 11 cf             	adc    %rcx,%rdi
  5f13e4:	4d 11 c8             	adc    %r9,%r8
  5f13e7:	4c 89 84 24 18 01 00 	mov    %r8,0x118(%rsp)
  5f13ee:	00 
  5f13ef:	4d 11 df             	adc    %r11,%r15
  5f13f2:	4c 89 bc 24 08 01 00 	mov    %r15,0x108(%rsp)
  5f13f9:	00 
  5f13fa:	4c 8b 9c 24 c0 01 00 	mov    0x1c0(%rsp),%r11
  5f1401:	00 
  5f1402:	4d 11 dc             	adc    %r11,%r12
  5f1405:	4c 89 a4 24 00 01 00 	mov    %r12,0x100(%rsp)
  5f140c:	00 
  5f140d:	48 89 c2             	mov    %rax,%rdx
  5f1410:	49 bb 01 00 00 00 01 	movabs $0x100000001,%r11
  5f1417:	00 00 00 
  5f141a:	c4 42 b3 f6 db       	mulx   %r11,%r9,%r11
  5f141f:	4c 89 ca             	mov    %r9,%rdx
  5f1422:	49 c7 c3 ff ff ff ff 	mov    $0xffffffffffffffff,%r11
  5f1429:	c4 42 f3 f6 db       	mulx   %r11,%rcx,%r11
  5f142e:	49 c7 c5 fe ff ff ff 	mov    $0xfffffffffffffffe,%r13
  5f1435:	c4 42 ab f6 ed       	mulx   %r13,%r10,%r13
  5f143a:	49 bc 00 00 00 00 ff 	movabs $0xffffffff00000000,%r12
  5f1441:	ff ff ff 
  5f1444:	c4 42 83 f6 e4       	mulx   %r12,%r15,%r12
  5f1449:	41 b8 ff ff ff ff    	mov    $0xffffffff,%r8d
  5f144f:	c4 42 eb f6 c8       	mulx   %r8,%rdx,%r9
  5f1454:	4d 01 f9             	add    %r15,%r9
  5f1457:	4d 11 d4             	adc    %r10,%r12
  5f145a:	49 11 cd             	adc    %rcx,%r13
  5f145d:	49 89 ca             	mov    %rcx,%r10
  5f1460:	4c 11 d9             	adc    %r11,%rcx
  5f1463:	4d 11 da             	adc    %r11,%r10
  5f1466:	49 83 d3 00          	adc    $0x0,%r11
  5f146a:	48 01 d0             	add    %rdx,%rax
  5f146d:	49 11 d9             	adc    %rbx,%r9
  5f1470:	49 11 f4             	adc    %rsi,%r12
  5f1473:	49 11 fd             	adc    %rdi,%r13
  5f1476:	48 8b 84 24 18 01 00 	mov    0x118(%rsp),%rax
  5f147d:	00 
  5f147e:	48 11 c1             	adc    %rax,%rcx
  5f1481:	48 8b 84 24 08 01 00 	mov    0x108(%rsp),%rax
  5f1488:	00 
  5f1489:	49 11 c2             	adc    %rax,%r10
  5f148c:	48 8b 84 24 00 01 00 	mov    0x100(%rsp),%rax
  5f1493:	00 
  5f1494:	49 11 c3             	adc    %rax,%r11
  5f1497:	0f 92 c0             	setb   %al
  5f149a:	0f b6 c0             	movzbl %al,%eax
  5f149d:	48 8b 9c 24 60 01 00 	mov    0x160(%rsp),%rbx
  5f14a4:	00 
  5f14a5:	48 8b b4 24 f0 01 00 	mov    0x1f0(%rsp),%rsi
  5f14ac:	00 
  5f14ad:	48 01 f3             	add    %rsi,%rbx
  5f14b0:	48 8b 9c 24 50 01 00 	mov    0x150(%rsp),%rbx
  5f14b7:	00 
  5f14b8:	48 8b b4 24 e8 01 00 	mov    0x1e8(%rsp),%rsi
  5f14bf:	00 
  5f14c0:	48 11 f3             	adc    %rsi,%rbx
  5f14c3:	48 8b 9c 24 40 01 00 	mov    0x140(%rsp),%rbx
  5f14ca:	00 
  5f14cb:	48 8b b4 24 e0 01 00 	mov    0x1e0(%rsp),%rsi
  5f14d2:	00 
  5f14d3:	48 11 f3             	adc    %rsi,%rbx
  5f14d6:	48 8b 9c 24 38 01 00 	mov    0x138(%rsp),%rbx
  5f14dd:	00 
  5f14de:	48 8b b4 24 d8 01 00 	mov    0x1d8(%rsp),%rsi
  5f14e5:	00 
  5f14e6:	48 11 f3             	adc    %rsi,%rbx
  5f14e9:	48 8b 9c 24 30 01 00 	mov    0x130(%rsp),%rbx
  5f14f0:	00 
  5f14f1:	48 8b b4 24 d0 01 00 	mov    0x1d0(%rsp),%rsi
  5f14f8:	00 
  5f14f9:	48 11 f3             	adc    %rsi,%rbx
  5f14fc:	48 8b 9c 24 28 01 00 	mov    0x128(%rsp),%rbx
  5f1503:	00 
  5f1504:	48 8b b4 24 c8 01 00 	mov    0x1c8(%rsp),%rsi
  5f150b:	00 
  5f150c:	48 11 f3             	adc    %rsi,%rbx
  5f150f:	48 8b 9c 24 20 01 00 	mov    0x120(%rsp),%rbx
  5f1516:	00 
  5f1517:	48 8b b4 24 c0 01 00 	mov    0x1c0(%rsp),%rsi
  5f151e:	00 
  5f151f:	48 11 f3             	adc    %rsi,%rbx
  5f1522:	48 83 d0 00          	adc    $0x0,%rax
  5f1526:	4c 89 cb             	mov    %r9,%rbx
  5f1529:	4d 29 c1             	sub    %r8,%r9
  5f152c:	48 be 00 00 00 00 ff 	movabs $0xffffffff00000000,%rsi
  5f1533:	ff ff ff 
  5f1536:	4c 89 e7             	mov    %r12,%rdi
  5f1539:	49 19 f4             	sbb    %rsi,%r12
  5f153c:	4c 89 ee             	mov    %r13,%rsi
  5f153f:	49 83 dd fe          	sbb    $0xfffffffffffffffe,%r13
  5f1543:	49 89 c8             	mov    %rcx,%r8
  5f1546:	48 83 d9 ff          	sbb    $0xffffffffffffffff,%rcx
  5f154a:	4d 89 d7             	mov    %r10,%r15
  5f154d:	49 83 da ff          	sbb    $0xffffffffffffffff,%r10
  5f1551:	4c 89 da             	mov    %r11,%rdx
  5f1554:	49 83 db ff          	sbb    $0xffffffffffffffff,%r11
  5f1558:	48 83 d8 00          	sbb    $0x0,%rax
  5f155c:	0f 92 c0             	setb   %al
  5f155f:	0f b6 c0             	movzbl %al,%eax
  5f1562:	48 f7 d8             	neg    %rax
  5f1565:	48 21 c3             	and    %rax,%rbx
  5f1568:	c4 42 f8 f2 c9       	andn   %r9,%rax,%r9
  5f156d:	4c 09 cb             	or     %r9,%rbx
  5f1570:	4c 8b 8c 24 18 05 00 	mov    0x518(%rsp),%r9
  5f1577:	00 
  5f1578:	49 89 19             	mov    %rbx,(%r9)
  5f157b:	48 21 c7             	and    %rax,%rdi
  5f157e:	c4 c2 f8 f2 dc       	andn   %r12,%rax,%rbx
  5f1583:	48 09 df             	or     %rbx,%rdi
  5f1586:	49 89 79 08          	mov    %rdi,0x8(%r9)
  5f158a:	48 21 c6             	and    %rax,%rsi
  5f158d:	c4 c2 f8 f2 dd       	andn   %r13,%rax,%rbx
  5f1592:	48 09 de             	or     %rbx,%rsi
  5f1595:	49 89 71 10          	mov    %rsi,0x10(%r9)
  5f1599:	49 21 c0             	and    %rax,%r8
  5f159c:	c4 e2 f8 f2 c9       	andn   %rcx,%rax,%rcx
  5f15a1:	4c 09 c1             	or     %r8,%rcx
  5f15a4:	49 89 49 18          	mov    %rcx,0x18(%r9)
  5f15a8:	49 21 c7             	and    %rax,%r15
  5f15ab:	c4 c2 f8 f2 ca       	andn   %r10,%rax,%rcx
  5f15b0:	49 09 cf             	or     %rcx,%r15
  5f15b3:	4d 89 79 20          	mov    %r15,0x20(%r9)
  5f15b7:	48 21 c2             	and    %rax,%rdx
  5f15ba:	c4 c2 f8 f2 c3       	andn   %r11,%rax,%rax
  5f15bf:	48 09 c2             	or     %rax,%rdx
  5f15c2:	49 89 51 28          	mov    %rdx,0x28(%r9)
  5f15c6:	c9                   	leave
  5f15c7:	c3                   	ret
  5f15c8:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  5f15cd:	48 89 5c 24 10       	mov    %rbx,0x10(%rsp)
  5f15d2:	48 89 4c 24 18       	mov    %rcx,0x18(%rsp)
  5f15d7:	e8 44 95 e9 ff       	call   48ab20 <runtime.morestack_noctxt.abi0>
  5f15dc:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
  5f15e1:	48 8b 5c 24 10       	mov    0x10(%rsp),%rbx
  5f15e6:	48 8b 4c 24 18       	mov    0x18(%rsp),%rcx
  5f15eb:	e9 b0 ef ff ff       	jmp    5f05a0 <example.com/p384issue.RawMul>
