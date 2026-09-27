
/home/exedev/crypto-audit/round4/issues/p384-square/evidence/v3/repro.test:     file format elf64-x86-64


Disassembly of section .text:

00000000005ee6c0 <example.com/p384issue.Mul>:
  5ee6c0:	4c 8d a4 24 70 fb ff 	lea    -0x490(%rsp),%r12
  5ee6c7:	ff 
  5ee6c8:	4d 3b 66 10          	cmp    0x10(%r14),%r12
  5ee6cc:	0f 86 16 10 00 00    	jbe    5ef6e8 <example.com/p384issue.Mul+0x1028>
  5ee6d2:	55                   	push   %rbp
  5ee6d3:	48 89 e5             	mov    %rsp,%rbp
  5ee6d6:	48 81 ec 08 05 00 00 	sub    $0x508,%rsp
  5ee6dd:	48 89 84 24 18 05 00 	mov    %rax,0x518(%rsp)
  5ee6e4:	00 
  5ee6e5:	48 8b 73 08          	mov    0x8(%rbx),%rsi
  5ee6e9:	48 8b 7b 10          	mov    0x10(%rbx),%rdi
  5ee6ed:	4c 8b 43 18          	mov    0x18(%rbx),%r8
  5ee6f1:	4c 8b 4b 20          	mov    0x20(%rbx),%r9
  5ee6f5:	4c 8b 53 28          	mov    0x28(%rbx),%r10
  5ee6f9:	4c 89 94 24 e8 00 00 	mov    %r10,0xe8(%rsp)
  5ee700:	00 
  5ee701:	48 8b 1b             	mov    (%rbx),%rbx
  5ee704:	48 8b 51 08          	mov    0x8(%rcx),%rdx
  5ee708:	c4 62 9b f6 db       	mulx   %rbx,%r12,%r11
  5ee70d:	4c 89 9c 24 10 04 00 	mov    %r11,0x410(%rsp)
  5ee714:	00 
  5ee715:	4c 89 a4 24 60 04 00 	mov    %r12,0x460(%rsp)
  5ee71c:	00 
  5ee71d:	49 89 d5             	mov    %rdx,%r13
  5ee720:	48 89 f2             	mov    %rsi,%rdx
  5ee723:	c4 42 fb f6 fd       	mulx   %r13,%rax,%r15
  5ee728:	4c 89 7c 24 50       	mov    %r15,0x50(%rsp)
  5ee72d:	48 89 44 24 58       	mov    %rax,0x58(%rsp)
  5ee732:	4c 8b 79 10          	mov    0x10(%rcx),%r15
  5ee736:	4c 89 fa             	mov    %r15,%rdx
  5ee739:	c4 e2 a3 f6 c3       	mulx   %rbx,%r11,%rax
  5ee73e:	48 89 84 24 a0 04 00 	mov    %rax,0x4a0(%rsp)
  5ee745:	00 
  5ee746:	4c 89 9c 24 c8 04 00 	mov    %r11,0x4c8(%rsp)
  5ee74d:	00 
  5ee74e:	c4 e2 a3 f6 c6       	mulx   %rsi,%r11,%rax
  5ee753:	48 89 44 24 60       	mov    %rax,0x60(%rsp)
  5ee758:	4c 89 5c 24 68       	mov    %r11,0x68(%rsp)
  5ee75d:	48 89 fa             	mov    %rdi,%rdx
  5ee760:	c4 c2 a3 f6 c7       	mulx   %r15,%r11,%rax
  5ee765:	48 89 84 24 40 04 00 	mov    %rax,0x440(%rsp)
  5ee76c:	00 
  5ee76d:	4c 89 9c 24 48 04 00 	mov    %r11,0x448(%rsp)
  5ee774:	00 
  5ee775:	4c 89 ea             	mov    %r13,%rdx
  5ee778:	c4 e2 a3 f6 c7       	mulx   %rdi,%r11,%rax
  5ee77d:	48 89 84 24 30 04 00 	mov    %rax,0x430(%rsp)
  5ee784:	00 
  5ee785:	4c 89 9c 24 38 04 00 	mov    %r11,0x438(%rsp)
  5ee78c:	00 
  5ee78d:	48 8b 41 28          	mov    0x28(%rcx),%rax
  5ee791:	48 89 84 24 00 05 00 	mov    %rax,0x500(%rsp)
  5ee798:	00 
  5ee799:	48 89 c2             	mov    %rax,%rdx
  5ee79c:	c4 62 9b f6 db       	mulx   %rbx,%r12,%r11
  5ee7a1:	4c 89 5c 24 40       	mov    %r11,0x40(%rsp)
  5ee7a6:	4c 89 a4 24 98 00 00 	mov    %r12,0x98(%rsp)
  5ee7ad:	00 
  5ee7ae:	c4 62 9b f6 de       	mulx   %rsi,%r12,%r11
  5ee7b3:	4c 89 9c 24 90 00 00 	mov    %r11,0x90(%rsp)
  5ee7ba:	00 
  5ee7bb:	4c 89 a4 24 a0 00 00 	mov    %r12,0xa0(%rsp)
  5ee7c2:	00 
  5ee7c3:	c4 62 9b f6 df       	mulx   %rdi,%r12,%r11
  5ee7c8:	4c 89 9c 24 78 04 00 	mov    %r11,0x478(%rsp)
  5ee7cf:	00 
  5ee7d0:	4c 89 a4 24 80 04 00 	mov    %r12,0x480(%rsp)
  5ee7d7:	00 
  5ee7d8:	c4 42 9b f6 d8       	mulx   %r8,%r12,%r11
  5ee7dd:	4c 89 9c 24 80 03 00 	mov    %r11,0x380(%rsp)
  5ee7e4:	00 
  5ee7e5:	4c 89 a4 24 88 03 00 	mov    %r12,0x388(%rsp)
  5ee7ec:	00 
  5ee7ed:	4c 8b 59 18          	mov    0x18(%rcx),%r11
  5ee7f1:	4c 89 da             	mov    %r11,%rdx
  5ee7f4:	c4 62 ab f6 e3       	mulx   %rbx,%r10,%r12
  5ee7f9:	4c 89 a4 24 d0 04 00 	mov    %r12,0x4d0(%rsp)
  5ee800:	00 
  5ee801:	4c 89 94 24 d8 04 00 	mov    %r10,0x4d8(%rsp)
  5ee808:	00 
  5ee809:	c4 62 ab f6 e6       	mulx   %rsi,%r10,%r12
  5ee80e:	4c 89 64 24 70       	mov    %r12,0x70(%rsp)
  5ee813:	4c 89 54 24 78       	mov    %r10,0x78(%rsp)
  5ee818:	c4 62 ab f6 e7       	mulx   %rdi,%r10,%r12
  5ee81d:	4c 89 a4 24 50 04 00 	mov    %r12,0x450(%rsp)
  5ee824:	00 
  5ee825:	4c 89 94 24 58 04 00 	mov    %r10,0x458(%rsp)
  5ee82c:	00 
  5ee82d:	4c 89 c2             	mov    %r8,%rdx
  5ee830:	c4 42 ab f6 e3       	mulx   %r11,%r10,%r12
  5ee835:	4c 89 a4 24 60 03 00 	mov    %r12,0x360(%rsp)
  5ee83c:	00 
  5ee83d:	4c 89 94 24 68 03 00 	mov    %r10,0x368(%rsp)
  5ee844:	00 
  5ee845:	4c 89 fa             	mov    %r15,%rdx
  5ee848:	c4 42 ab f6 e0       	mulx   %r8,%r10,%r12
  5ee84d:	4c 89 a4 24 50 03 00 	mov    %r12,0x350(%rsp)
  5ee854:	00 
  5ee855:	4c 89 94 24 58 03 00 	mov    %r10,0x358(%rsp)
  5ee85c:	00 
  5ee85d:	4c 89 ea             	mov    %r13,%rdx
  5ee860:	c4 42 ab f6 e0       	mulx   %r8,%r10,%r12
  5ee865:	4c 89 a4 24 40 03 00 	mov    %r12,0x340(%rsp)
  5ee86c:	00 
  5ee86d:	4c 89 94 24 48 03 00 	mov    %r10,0x348(%rsp)
  5ee874:	00 
  5ee875:	48 89 c2             	mov    %rax,%rdx
  5ee878:	c4 42 ab f6 e1       	mulx   %r9,%r10,%r12
  5ee87d:	4c 89 a4 24 a0 02 00 	mov    %r12,0x2a0(%rsp)
  5ee884:	00 
  5ee885:	4c 89 94 24 a8 02 00 	mov    %r10,0x2a8(%rsp)
  5ee88c:	00 
  5ee88d:	4c 8b 61 20          	mov    0x20(%rcx),%r12
  5ee891:	4c 89 e2             	mov    %r12,%rdx
  5ee894:	c4 62 fb f6 d3       	mulx   %rbx,%rax,%r10
  5ee899:	4c 89 94 24 f8 04 00 	mov    %r10,0x4f8(%rsp)
  5ee8a0:	00 
  5ee8a1:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  5ee8a6:	c4 62 fb f6 d6       	mulx   %rsi,%rax,%r10
  5ee8ab:	4c 89 94 24 80 00 00 	mov    %r10,0x80(%rsp)
  5ee8b2:	00 
  5ee8b3:	48 89 84 24 88 00 00 	mov    %rax,0x88(%rsp)
  5ee8ba:	00 
  5ee8bb:	c4 62 fb f6 d7       	mulx   %rdi,%rax,%r10
  5ee8c0:	4c 89 94 24 68 04 00 	mov    %r10,0x468(%rsp)
  5ee8c7:	00 
  5ee8c8:	48 89 84 24 70 04 00 	mov    %rax,0x470(%rsp)
  5ee8cf:	00 
  5ee8d0:	c4 42 fb f6 d0       	mulx   %r8,%rax,%r10
  5ee8d5:	4c 89 94 24 70 03 00 	mov    %r10,0x370(%rsp)
  5ee8dc:	00 
  5ee8dd:	48 89 84 24 78 03 00 	mov    %rax,0x378(%rsp)
  5ee8e4:	00 
  5ee8e5:	4c 89 ca             	mov    %r9,%rdx
  5ee8e8:	c4 42 fb f6 d4       	mulx   %r12,%rax,%r10
  5ee8ed:	4c 89 94 24 90 02 00 	mov    %r10,0x290(%rsp)
  5ee8f4:	00 
  5ee8f5:	48 89 84 24 98 02 00 	mov    %rax,0x298(%rsp)
  5ee8fc:	00 
  5ee8fd:	4c 89 da             	mov    %r11,%rdx
  5ee900:	c4 42 fb f6 d1       	mulx   %r9,%rax,%r10
  5ee905:	4c 89 94 24 80 02 00 	mov    %r10,0x280(%rsp)
  5ee90c:	00 
  5ee90d:	48 89 84 24 88 02 00 	mov    %rax,0x288(%rsp)
  5ee914:	00 
  5ee915:	4c 89 fa             	mov    %r15,%rdx
  5ee918:	c4 42 fb f6 d1       	mulx   %r9,%rax,%r10
  5ee91d:	4c 89 94 24 70 02 00 	mov    %r10,0x270(%rsp)
  5ee924:	00 
  5ee925:	48 89 84 24 78 02 00 	mov    %rax,0x278(%rsp)
  5ee92c:	00 
  5ee92d:	4c 89 ea             	mov    %r13,%rdx
  5ee930:	c4 42 fb f6 d1       	mulx   %r9,%rax,%r10
  5ee935:	4c 89 94 24 60 02 00 	mov    %r10,0x260(%rsp)
  5ee93c:	00 
  5ee93d:	48 89 84 24 68 02 00 	mov    %rax,0x268(%rsp)
  5ee944:	00 
  5ee945:	48 8b 09             	mov    (%rcx),%rcx
  5ee948:	48 89 da             	mov    %rbx,%rdx
  5ee94b:	c4 e2 eb f6 d9       	mulx   %rcx,%rdx,%rbx
  5ee950:	48 89 94 24 e0 03 00 	mov    %rdx,0x3e0(%rsp)
  5ee957:	00 
  5ee958:	48 ba 01 00 00 00 01 	movabs $0x100000001,%rdx
  5ee95f:	00 00 00 
  5ee962:	4c 8b 94 24 e0 03 00 	mov    0x3e0(%rsp),%r10
  5ee969:	00 
  5ee96a:	c4 c2 eb f6 c2       	mulx   %r10,%rdx,%rax
  5ee96f:	48 89 d0             	mov    %rdx,%rax
  5ee972:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
  5ee979:	c4 e2 ab f6 d0       	mulx   %rax,%r10,%rdx
  5ee97e:	48 89 94 24 00 02 00 	mov    %rdx,0x200(%rsp)
  5ee985:	00 
  5ee986:	4c 89 94 24 f8 01 00 	mov    %r10,0x1f8(%rsp)
  5ee98d:	00 
  5ee98e:	48 c7 c2 fe ff ff ff 	mov    $0xfffffffffffffffe,%rdx
  5ee995:	c4 e2 ab f6 d0       	mulx   %rax,%r10,%rdx
  5ee99a:	48 89 94 24 48 01 00 	mov    %rdx,0x148(%rsp)
  5ee9a1:	00 
  5ee9a2:	4c 89 94 24 a0 01 00 	mov    %r10,0x1a0(%rsp)
  5ee9a9:	00 
  5ee9aa:	48 ba 00 00 00 00 ff 	movabs $0xffffffff00000000,%rdx
  5ee9b1:	ff ff ff 
  5ee9b4:	c4 e2 ab f6 d0       	mulx   %rax,%r10,%rdx
  5ee9b9:	48 89 94 24 10 01 00 	mov    %rdx,0x110(%rsp)
  5ee9c0:	00 
  5ee9c1:	ba ff ff ff ff       	mov    $0xffffffff,%edx
  5ee9c6:	c4 e2 eb f6 c0       	mulx   %rax,%rdx,%rax
  5ee9cb:	48 89 84 24 f0 00 00 	mov    %rax,0xf0(%rsp)
  5ee9d2:	00 
  5ee9d3:	48 89 94 24 f8 00 00 	mov    %rdx,0xf8(%rsp)
  5ee9da:	00 
  5ee9db:	48 89 ca             	mov    %rcx,%rdx
  5ee9de:	c4 e2 fb f6 f6       	mulx   %rsi,%rax,%rsi
  5ee9e3:	48 89 74 24 38       	mov    %rsi,0x38(%rsp)
  5ee9e8:	48 89 44 24 48       	mov    %rax,0x48(%rsp)
  5ee9ed:	c4 e2 fb f6 ff       	mulx   %rdi,%rax,%rdi
  5ee9f2:	48 89 bc 24 20 04 00 	mov    %rdi,0x420(%rsp)
  5ee9f9:	00 
  5ee9fa:	48 89 84 24 28 04 00 	mov    %rax,0x428(%rsp)
  5eea01:	00 
  5eea02:	c4 42 fb f6 c0       	mulx   %r8,%rax,%r8
  5eea07:	4c 89 84 24 30 03 00 	mov    %r8,0x330(%rsp)
  5eea0e:	00 
  5eea0f:	48 89 84 24 38 03 00 	mov    %rax,0x338(%rsp)
  5eea16:	00 
  5eea17:	c4 42 fb f6 c9       	mulx   %r9,%rax,%r9
  5eea1c:	4c 89 8c 24 50 02 00 	mov    %r9,0x250(%rsp)
  5eea23:	00 
  5eea24:	48 89 84 24 58 02 00 	mov    %rax,0x258(%rsp)
  5eea2b:	00 
  5eea2c:	48 8b 94 24 e8 00 00 	mov    0xe8(%rsp),%rdx
  5eea33:	00 
  5eea34:	48 8b 84 24 00 05 00 	mov    0x500(%rsp),%rax
  5eea3b:	00 
  5eea3c:	c4 e2 b3 f6 c0       	mulx   %rax,%r9,%rax
  5eea41:	48 89 84 24 b0 01 00 	mov    %rax,0x1b0(%rsp)
  5eea48:	00 
  5eea49:	4c 89 8c 24 b8 01 00 	mov    %r9,0x1b8(%rsp)
  5eea50:	00 
  5eea51:	4c 89 e2             	mov    %r12,%rdx
  5eea54:	48 8b 84 24 e8 00 00 	mov    0xe8(%rsp),%rax
  5eea5b:	00 
  5eea5c:	c4 62 eb f6 e0       	mulx   %rax,%rdx,%r12
  5eea61:	4c 89 a4 24 98 01 00 	mov    %r12,0x198(%rsp)
  5eea68:	00 
  5eea69:	48 89 94 24 a8 01 00 	mov    %rdx,0x1a8(%rsp)
  5eea70:	00 
  5eea71:	4c 89 da             	mov    %r11,%rdx
  5eea74:	c4 62 eb f6 d8       	mulx   %rax,%rdx,%r11
  5eea79:	4c 89 9c 24 88 01 00 	mov    %r11,0x188(%rsp)
  5eea80:	00 
  5eea81:	48 89 94 24 90 01 00 	mov    %rdx,0x190(%rsp)
  5eea88:	00 
  5eea89:	4c 89 fa             	mov    %r15,%rdx
  5eea8c:	c4 62 eb f6 f8       	mulx   %rax,%rdx,%r15
  5eea91:	4c 89 bc 24 78 01 00 	mov    %r15,0x178(%rsp)
  5eea98:	00 
  5eea99:	48 89 94 24 80 01 00 	mov    %rdx,0x180(%rsp)
  5eeaa0:	00 
  5eeaa1:	4c 89 ea             	mov    %r13,%rdx
  5eeaa4:	c4 62 eb f6 e8       	mulx   %rax,%rdx,%r13
  5eeaa9:	4c 89 ac 24 68 01 00 	mov    %r13,0x168(%rsp)
  5eeab0:	00 
  5eeab1:	48 89 94 24 70 01 00 	mov    %rdx,0x170(%rsp)
  5eeab8:	00 
  5eeab9:	48 89 ca             	mov    %rcx,%rdx
  5eeabc:	c4 e2 f3 f6 c0       	mulx   %rax,%rcx,%rax
  5eeac1:	48 89 84 24 58 01 00 	mov    %rax,0x158(%rsp)
  5eeac8:	00 
  5eeac9:	48 89 8c 24 60 01 00 	mov    %rcx,0x160(%rsp)
  5eead0:	00 
  5eead1:	90                   	nop
  5eead2:	90                   	nop
  5eead3:	90                   	nop
  5eead4:	90                   	nop
  5eead5:	90                   	nop
  5eead6:	90                   	nop
  5eead7:	48 8b 94 24 60 04 00 	mov    0x460(%rsp),%rdx
  5eeade:	00 
  5eeadf:	48 01 da             	add    %rbx,%rdx
  5eeae2:	48 8b 9c 24 10 04 00 	mov    0x410(%rsp),%rbx
  5eeae9:	00 
  5eeaea:	48 8b 8c 24 c8 04 00 	mov    0x4c8(%rsp),%rcx
  5eeaf1:	00 
  5eeaf2:	48 11 cb             	adc    %rcx,%rbx
  5eeaf5:	48 8b 8c 24 a0 04 00 	mov    0x4a0(%rsp),%rcx
  5eeafc:	00 
  5eeafd:	4c 8b 8c 24 d8 04 00 	mov    0x4d8(%rsp),%r9
  5eeb04:	00 
  5eeb05:	4c 11 c9             	adc    %r9,%rcx
  5eeb08:	4c 8b 8c 24 d0 04 00 	mov    0x4d0(%rsp),%r9
  5eeb0f:	00 
  5eeb10:	4c 8b 64 24 08       	mov    0x8(%rsp),%r12
  5eeb15:	4d 11 e1             	adc    %r12,%r9
  5eeb18:	4c 8b a4 24 f8 04 00 	mov    0x4f8(%rsp),%r12
  5eeb1f:	00 
  5eeb20:	4c 8b 9c 24 98 00 00 	mov    0x98(%rsp),%r11
  5eeb27:	00 
  5eeb28:	4d 11 dc             	adc    %r11,%r12
  5eeb2b:	4c 8b 5c 24 40       	mov    0x40(%rsp),%r11
  5eeb30:	49 83 d3 00          	adc    $0x0,%r11
  5eeb34:	4c 8b bc 24 f0 00 00 	mov    0xf0(%rsp),%r15
  5eeb3b:	00 
  5eeb3c:	4d 01 d7             	add    %r10,%r15
  5eeb3f:	4c 8b 94 24 10 01 00 	mov    0x110(%rsp),%r10
  5eeb46:	00 
  5eeb47:	4c 8b ac 24 a0 01 00 	mov    0x1a0(%rsp),%r13
  5eeb4e:	00 
  5eeb4f:	4d 11 ea             	adc    %r13,%r10
  5eeb52:	4c 8b ac 24 48 01 00 	mov    0x148(%rsp),%r13
  5eeb59:	00 
  5eeb5a:	48 8b 84 24 f8 01 00 	mov    0x1f8(%rsp),%rax
  5eeb61:	00 
  5eeb62:	49 11 c5             	adc    %rax,%r13
  5eeb65:	4c 8b 84 24 00 02 00 	mov    0x200(%rsp),%r8
  5eeb6c:	00 
  5eeb6d:	4c 11 c0             	adc    %r8,%rax
  5eeb70:	48 8b bc 24 f8 01 00 	mov    0x1f8(%rsp),%rdi
  5eeb77:	00 
  5eeb78:	4c 11 c7             	adc    %r8,%rdi
  5eeb7b:	49 83 d0 00          	adc    $0x0,%r8
  5eeb7f:	4c 89 84 24 e0 00 00 	mov    %r8,0xe0(%rsp)
  5eeb86:	00 
  5eeb87:	48 8b b4 24 e0 03 00 	mov    0x3e0(%rsp),%rsi
  5eeb8e:	00 
  5eeb8f:	4c 8b 84 24 f8 00 00 	mov    0xf8(%rsp),%r8
  5eeb96:	00 
  5eeb97:	4c 01 c6             	add    %r8,%rsi
  5eeb9a:	4c 11 fa             	adc    %r15,%rdx
  5eeb9d:	48 89 94 24 d8 00 00 	mov    %rdx,0xd8(%rsp)
  5eeba4:	00 
  5eeba5:	49 11 da             	adc    %rbx,%r10
  5eeba8:	4c 89 94 24 d0 00 00 	mov    %r10,0xd0(%rsp)
  5eebaf:	00 
  5eebb0:	49 11 cd             	adc    %rcx,%r13
  5eebb3:	4c 89 ac 24 c8 00 00 	mov    %r13,0xc8(%rsp)
  5eebba:	00 
  5eebbb:	4c 11 c8             	adc    %r9,%rax
  5eebbe:	48 89 84 24 c0 00 00 	mov    %rax,0xc0(%rsp)
  5eebc5:	00 
  5eebc6:	4c 11 e7             	adc    %r12,%rdi
  5eebc9:	48 89 bc 24 b8 00 00 	mov    %rdi,0xb8(%rsp)
  5eebd0:	00 
  5eebd1:	48 8b 8c 24 e0 00 00 	mov    0xe0(%rsp),%rcx
  5eebd8:	00 
  5eebd9:	4c 11 d9             	adc    %r11,%rcx
  5eebdc:	48 89 8c 24 b0 00 00 	mov    %rcx,0xb0(%rsp)
  5eebe3:	00 
  5eebe4:	0f 92 c3             	setb   %bl
  5eebe7:	0f b6 db             	movzbl %bl,%ebx
  5eebea:	48 89 9c 24 a8 00 00 	mov    %rbx,0xa8(%rsp)
  5eebf1:	00 
  5eebf2:	48 8b 74 24 38       	mov    0x38(%rsp),%rsi
  5eebf7:	4c 8b 44 24 58       	mov    0x58(%rsp),%r8
  5eebfc:	4c 01 c6             	add    %r8,%rsi
  5eebff:	48 89 74 24 30       	mov    %rsi,0x30(%rsp)
  5eec04:	4c 8b 44 24 50       	mov    0x50(%rsp),%r8
  5eec09:	4c 8b 4c 24 68       	mov    0x68(%rsp),%r9
  5eec0e:	4d 11 c8             	adc    %r9,%r8
  5eec11:	4c 89 44 24 28       	mov    %r8,0x28(%rsp)
  5eec16:	4c 8b 4c 24 60       	mov    0x60(%rsp),%r9
  5eec1b:	4c 8b 5c 24 78       	mov    0x78(%rsp),%r11
  5eec20:	4d 11 d9             	adc    %r11,%r9
  5eec23:	4c 89 4c 24 20       	mov    %r9,0x20(%rsp)
  5eec28:	4c 8b 5c 24 70       	mov    0x70(%rsp),%r11
  5eec2d:	4c 8b a4 24 88 00 00 	mov    0x88(%rsp),%r12
  5eec34:	00 
  5eec35:	4d 11 e3             	adc    %r12,%r11
  5eec38:	4c 89 5c 24 18       	mov    %r11,0x18(%rsp)
  5eec3d:	4c 8b a4 24 80 00 00 	mov    0x80(%rsp),%r12
  5eec44:	00 
  5eec45:	4c 8b bc 24 a0 00 00 	mov    0xa0(%rsp),%r15
  5eec4c:	00 
  5eec4d:	4d 11 fc             	adc    %r15,%r12
  5eec50:	4c 89 64 24 10       	mov    %r12,0x10(%rsp)
  5eec55:	4c 8b bc 24 90 00 00 	mov    0x90(%rsp),%r15
  5eec5c:	00 
  5eec5d:	49 83 d7 00          	adc    $0x0,%r15
  5eec61:	4c 89 3c 24          	mov    %r15,(%rsp)
  5eec65:	48 8b 5c 24 48       	mov    0x48(%rsp),%rbx
  5eec6a:	48 01 d3             	add    %rdx,%rbx
  5eec6d:	4c 11 d6             	adc    %r10,%rsi
  5eec70:	4d 11 e8             	adc    %r13,%r8
  5eec73:	49 11 c1             	adc    %rax,%r9
  5eec76:	49 11 fb             	adc    %rdi,%r11
  5eec79:	4c 89 9c 24 f0 04 00 	mov    %r11,0x4f0(%rsp)
  5eec80:	00 
  5eec81:	49 11 cc             	adc    %rcx,%r12
  5eec84:	4c 89 a4 24 e8 04 00 	mov    %r12,0x4e8(%rsp)
  5eec8b:	00 
  5eec8c:	48 8b 8c 24 a8 00 00 	mov    0xa8(%rsp),%rcx
  5eec93:	00 
  5eec94:	49 11 cf             	adc    %rcx,%r15
  5eec97:	4c 89 bc 24 e0 04 00 	mov    %r15,0x4e0(%rsp)
  5eec9e:	00 
  5eec9f:	48 89 da             	mov    %rbx,%rdx
  5eeca2:	48 b9 01 00 00 00 01 	movabs $0x100000001,%rcx
  5eeca9:	00 00 00 
  5eecac:	c4 e2 c3 f6 c9       	mulx   %rcx,%rdi,%rcx
  5eecb1:	48 89 fa             	mov    %rdi,%rdx
  5eecb4:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  5eecbb:	c4 e2 fb f6 c9       	mulx   %rcx,%rax,%rcx
  5eecc0:	49 c7 c5 fe ff ff ff 	mov    $0xfffffffffffffffe,%r13
  5eecc7:	c4 42 ab f6 ed       	mulx   %r13,%r10,%r13
  5eeccc:	49 bf 00 00 00 00 ff 	movabs $0xffffffff00000000,%r15
  5eecd3:	ff ff ff 
  5eecd6:	c4 42 9b f6 ff       	mulx   %r15,%r12,%r15
  5eecdb:	41 bb ff ff ff ff    	mov    $0xffffffff,%r11d
  5eece1:	c4 c2 c3 f6 d3       	mulx   %r11,%rdi,%rdx
  5eece6:	4c 01 e2             	add    %r12,%rdx
  5eece9:	4d 11 d7             	adc    %r10,%r15
  5eecec:	49 11 c5             	adc    %rax,%r13
  5eecef:	49 89 c2             	mov    %rax,%r10
  5eecf2:	48 11 c8             	adc    %rcx,%rax
  5eecf5:	49 11 ca             	adc    %rcx,%r10
  5eecf8:	48 83 d1 00          	adc    $0x0,%rcx
  5eecfc:	48 01 fb             	add    %rdi,%rbx
  5eecff:	48 11 f2             	adc    %rsi,%rdx
  5eed02:	48 89 94 24 c0 04 00 	mov    %rdx,0x4c0(%rsp)
  5eed09:	00 
  5eed0a:	4d 11 c7             	adc    %r8,%r15
  5eed0d:	4c 89 bc 24 b8 04 00 	mov    %r15,0x4b8(%rsp)
  5eed14:	00 
  5eed15:	4d 11 cd             	adc    %r9,%r13
  5eed18:	4c 89 ac 24 b0 04 00 	mov    %r13,0x4b0(%rsp)
  5eed1f:	00 
  5eed20:	48 8b 9c 24 f0 04 00 	mov    0x4f0(%rsp),%rbx
  5eed27:	00 
  5eed28:	48 11 d8             	adc    %rbx,%rax
  5eed2b:	48 89 84 24 a8 04 00 	mov    %rax,0x4a8(%rsp)
  5eed32:	00 
  5eed33:	48 8b 9c 24 e8 04 00 	mov    0x4e8(%rsp),%rbx
  5eed3a:	00 
  5eed3b:	49 11 da             	adc    %rbx,%r10
  5eed3e:	4c 89 94 24 98 04 00 	mov    %r10,0x498(%rsp)
  5eed45:	00 
  5eed46:	48 8b 9c 24 e0 04 00 	mov    0x4e0(%rsp),%rbx
  5eed4d:	00 
  5eed4e:	48 11 d9             	adc    %rbx,%rcx
  5eed51:	48 89 8c 24 90 04 00 	mov    %rcx,0x490(%rsp)
  5eed58:	00 
  5eed59:	0f 92 c3             	setb   %bl
  5eed5c:	0f b6 db             	movzbl %bl,%ebx
  5eed5f:	48 8b 74 24 48       	mov    0x48(%rsp),%rsi
  5eed64:	48 8b bc 24 d8 00 00 	mov    0xd8(%rsp),%rdi
  5eed6b:	00 
  5eed6c:	48 01 fe             	add    %rdi,%rsi
  5eed6f:	48 8b 74 24 30       	mov    0x30(%rsp),%rsi
  5eed74:	48 8b bc 24 d0 00 00 	mov    0xd0(%rsp),%rdi
  5eed7b:	00 
  5eed7c:	48 11 fe             	adc    %rdi,%rsi
  5eed7f:	48 8b 74 24 28       	mov    0x28(%rsp),%rsi
  5eed84:	48 8b bc 24 c8 00 00 	mov    0xc8(%rsp),%rdi
  5eed8b:	00 
  5eed8c:	48 11 fe             	adc    %rdi,%rsi
  5eed8f:	48 8b 74 24 20       	mov    0x20(%rsp),%rsi
  5eed94:	48 8b bc 24 c0 00 00 	mov    0xc0(%rsp),%rdi
  5eed9b:	00 
  5eed9c:	48 11 fe             	adc    %rdi,%rsi
  5eed9f:	48 8b 74 24 18       	mov    0x18(%rsp),%rsi
  5eeda4:	48 8b bc 24 b8 00 00 	mov    0xb8(%rsp),%rdi
  5eedab:	00 
  5eedac:	48 11 fe             	adc    %rdi,%rsi
  5eedaf:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
  5eedb4:	48 8b bc 24 b0 00 00 	mov    0xb0(%rsp),%rdi
  5eedbb:	00 
  5eedbc:	48 11 fe             	adc    %rdi,%rsi
  5eedbf:	48 8b 34 24          	mov    (%rsp),%rsi
  5eedc3:	48 8b bc 24 a8 00 00 	mov    0xa8(%rsp),%rdi
  5eedca:	00 
  5eedcb:	48 11 fe             	adc    %rdi,%rsi
  5eedce:	48 83 d3 00          	adc    $0x0,%rbx
  5eedd2:	48 89 9c 24 88 04 00 	mov    %rbx,0x488(%rsp)
  5eedd9:	00 
  5eedda:	48 8b b4 24 20 04 00 	mov    0x420(%rsp),%rsi
  5eede1:	00 
  5eede2:	48 8b bc 24 38 04 00 	mov    0x438(%rsp),%rdi
  5eede9:	00 
  5eedea:	48 01 fe             	add    %rdi,%rsi
  5eeded:	48 89 b4 24 18 04 00 	mov    %rsi,0x418(%rsp)
  5eedf4:	00 
  5eedf5:	48 8b bc 24 30 04 00 	mov    0x430(%rsp),%rdi
  5eedfc:	00 
  5eedfd:	4c 8b 84 24 48 04 00 	mov    0x448(%rsp),%r8
  5eee04:	00 
  5eee05:	4c 11 c7             	adc    %r8,%rdi
  5eee08:	48 89 bc 24 08 04 00 	mov    %rdi,0x408(%rsp)
  5eee0f:	00 
  5eee10:	4c 8b 84 24 40 04 00 	mov    0x440(%rsp),%r8
  5eee17:	00 
  5eee18:	4c 8b 8c 24 58 04 00 	mov    0x458(%rsp),%r9
  5eee1f:	00 
  5eee20:	4d 11 c8             	adc    %r9,%r8
  5eee23:	4c 89 84 24 00 04 00 	mov    %r8,0x400(%rsp)
  5eee2a:	00 
  5eee2b:	4c 8b 8c 24 50 04 00 	mov    0x450(%rsp),%r9
  5eee32:	00 
  5eee33:	4c 8b a4 24 70 04 00 	mov    0x470(%rsp),%r12
  5eee3a:	00 
  5eee3b:	4d 11 e1             	adc    %r12,%r9
  5eee3e:	4c 89 8c 24 f8 03 00 	mov    %r9,0x3f8(%rsp)
  5eee45:	00 
  5eee46:	4c 8b a4 24 68 04 00 	mov    0x468(%rsp),%r12
  5eee4d:	00 
  5eee4e:	4c 8b 9c 24 80 04 00 	mov    0x480(%rsp),%r11
  5eee55:	00 
  5eee56:	4d 11 dc             	adc    %r11,%r12
  5eee59:	4c 89 a4 24 f0 03 00 	mov    %r12,0x3f0(%rsp)
  5eee60:	00 
  5eee61:	4c 8b 9c 24 78 04 00 	mov    0x478(%rsp),%r11
  5eee68:	00 
  5eee69:	49 83 d3 00          	adc    $0x0,%r11
  5eee6d:	4c 89 9c 24 e8 03 00 	mov    %r11,0x3e8(%rsp)
  5eee74:	00 
  5eee75:	48 8b 9c 24 28 04 00 	mov    0x428(%rsp),%rbx
  5eee7c:	00 
  5eee7d:	48 01 d3             	add    %rdx,%rbx
  5eee80:	4c 11 fe             	adc    %r15,%rsi
  5eee83:	4c 11 ef             	adc    %r13,%rdi
  5eee86:	49 11 c0             	adc    %rax,%r8
  5eee89:	4d 11 d1             	adc    %r10,%r9
  5eee8c:	4c 89 8c 24 d8 03 00 	mov    %r9,0x3d8(%rsp)
  5eee93:	00 
  5eee94:	49 11 cc             	adc    %rcx,%r12
  5eee97:	4c 89 a4 24 d0 03 00 	mov    %r12,0x3d0(%rsp)
  5eee9e:	00 
  5eee9f:	48 8b 8c 24 88 04 00 	mov    0x488(%rsp),%rcx
  5eeea6:	00 
  5eeea7:	49 11 cb             	adc    %rcx,%r11
  5eeeaa:	4c 89 9c 24 c8 03 00 	mov    %r11,0x3c8(%rsp)
  5eeeb1:	00 
  5eeeb2:	48 89 da             	mov    %rbx,%rdx
  5eeeb5:	48 b9 01 00 00 00 01 	movabs $0x100000001,%rcx
  5eeebc:	00 00 00 
  5eeebf:	c4 e2 ab f6 c9       	mulx   %rcx,%r10,%rcx
  5eeec4:	4c 89 d2             	mov    %r10,%rdx
  5eeec7:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  5eeece:	c4 e2 fb f6 c9       	mulx   %rcx,%rax,%rcx
  5eeed3:	49 c7 c5 fe ff ff ff 	mov    $0xfffffffffffffffe,%r13
  5eeeda:	c4 42 83 f6 ed       	mulx   %r13,%r15,%r13
  5eeedf:	49 bb 00 00 00 00 ff 	movabs $0xffffffff00000000,%r11
  5eeee6:	ff ff ff 
  5eeee9:	c4 42 9b f6 db       	mulx   %r11,%r12,%r11
  5eeeee:	41 b9 ff ff ff ff    	mov    $0xffffffff,%r9d
  5eeef4:	c4 c2 ab f6 d1       	mulx   %r9,%r10,%rdx
  5eeef9:	4c 01 e2             	add    %r12,%rdx
  5eeefc:	4d 11 fb             	adc    %r15,%r11
  5eeeff:	49 11 c5             	adc    %rax,%r13
  5eef02:	49 89 c4             	mov    %rax,%r12
  5eef05:	48 11 c8             	adc    %rcx,%rax
  5eef08:	49 11 cc             	adc    %rcx,%r12
  5eef0b:	48 83 d1 00          	adc    $0x0,%rcx
  5eef0f:	4c 01 d3             	add    %r10,%rbx
  5eef12:	48 11 f2             	adc    %rsi,%rdx
  5eef15:	48 89 94 24 c0 03 00 	mov    %rdx,0x3c0(%rsp)
  5eef1c:	00 
  5eef1d:	49 11 fb             	adc    %rdi,%r11
  5eef20:	4c 89 9c 24 b8 03 00 	mov    %r11,0x3b8(%rsp)
  5eef27:	00 
  5eef28:	4d 11 c5             	adc    %r8,%r13
  5eef2b:	4c 89 ac 24 b0 03 00 	mov    %r13,0x3b0(%rsp)
  5eef32:	00 
  5eef33:	48 8b 9c 24 d8 03 00 	mov    0x3d8(%rsp),%rbx
  5eef3a:	00 
  5eef3b:	48 11 d8             	adc    %rbx,%rax
  5eef3e:	48 89 84 24 a8 03 00 	mov    %rax,0x3a8(%rsp)
  5eef45:	00 
  5eef46:	48 8b 9c 24 d0 03 00 	mov    0x3d0(%rsp),%rbx
  5eef4d:	00 
  5eef4e:	49 11 dc             	adc    %rbx,%r12
  5eef51:	4c 89 a4 24 a0 03 00 	mov    %r12,0x3a0(%rsp)
  5eef58:	00 
  5eef59:	48 8b 9c 24 c8 03 00 	mov    0x3c8(%rsp),%rbx
  5eef60:	00 
  5eef61:	48 11 d9             	adc    %rbx,%rcx
  5eef64:	48 89 8c 24 98 03 00 	mov    %rcx,0x398(%rsp)
  5eef6b:	00 
  5eef6c:	0f 92 c3             	setb   %bl
  5eef6f:	0f b6 db             	movzbl %bl,%ebx
  5eef72:	48 8b b4 24 28 04 00 	mov    0x428(%rsp),%rsi
  5eef79:	00 
  5eef7a:	48 8b bc 24 c0 04 00 	mov    0x4c0(%rsp),%rdi
  5eef81:	00 
  5eef82:	48 01 fe             	add    %rdi,%rsi
  5eef85:	48 8b b4 24 18 04 00 	mov    0x418(%rsp),%rsi
  5eef8c:	00 
  5eef8d:	48 8b bc 24 b8 04 00 	mov    0x4b8(%rsp),%rdi
  5eef94:	00 
  5eef95:	48 11 fe             	adc    %rdi,%rsi
  5eef98:	48 8b b4 24 08 04 00 	mov    0x408(%rsp),%rsi
  5eef9f:	00 
  5eefa0:	48 8b bc 24 b0 04 00 	mov    0x4b0(%rsp),%rdi
  5eefa7:	00 
  5eefa8:	48 11 fe             	adc    %rdi,%rsi
  5eefab:	48 8b b4 24 00 04 00 	mov    0x400(%rsp),%rsi
  5eefb2:	00 
  5eefb3:	48 8b bc 24 a8 04 00 	mov    0x4a8(%rsp),%rdi
  5eefba:	00 
  5eefbb:	48 11 fe             	adc    %rdi,%rsi
  5eefbe:	48 8b b4 24 f8 03 00 	mov    0x3f8(%rsp),%rsi
  5eefc5:	00 
  5eefc6:	48 8b bc 24 98 04 00 	mov    0x498(%rsp),%rdi
  5eefcd:	00 
  5eefce:	48 11 fe             	adc    %rdi,%rsi
  5eefd1:	48 8b b4 24 f0 03 00 	mov    0x3f0(%rsp),%rsi
  5eefd8:	00 
  5eefd9:	48 8b bc 24 90 04 00 	mov    0x490(%rsp),%rdi
  5eefe0:	00 
  5eefe1:	48 11 fe             	adc    %rdi,%rsi
  5eefe4:	48 8b b4 24 e8 03 00 	mov    0x3e8(%rsp),%rsi
  5eefeb:	00 
  5eefec:	48 8b bc 24 88 04 00 	mov    0x488(%rsp),%rdi
  5eeff3:	00 
  5eeff4:	48 11 fe             	adc    %rdi,%rsi
  5eeff7:	48 83 d3 00          	adc    $0x0,%rbx
  5eeffb:	48 89 9c 24 90 03 00 	mov    %rbx,0x390(%rsp)
  5ef002:	00 
  5ef003:	48 8b b4 24 30 03 00 	mov    0x330(%rsp),%rsi
  5ef00a:	00 
  5ef00b:	48 8b bc 24 48 03 00 	mov    0x348(%rsp),%rdi
  5ef012:	00 
  5ef013:	48 01 fe             	add    %rdi,%rsi
  5ef016:	48 89 b4 24 28 03 00 	mov    %rsi,0x328(%rsp)
  5ef01d:	00 
  5ef01e:	48 8b bc 24 40 03 00 	mov    0x340(%rsp),%rdi
  5ef025:	00 
  5ef026:	4c 8b 84 24 58 03 00 	mov    0x358(%rsp),%r8
  5ef02d:	00 
  5ef02e:	4c 11 c7             	adc    %r8,%rdi
  5ef031:	48 89 bc 24 20 03 00 	mov    %rdi,0x320(%rsp)
  5ef038:	00 
  5ef039:	4c 8b 84 24 50 03 00 	mov    0x350(%rsp),%r8
  5ef040:	00 
  5ef041:	4c 8b 94 24 68 03 00 	mov    0x368(%rsp),%r10
  5ef048:	00 
  5ef049:	4d 11 d0             	adc    %r10,%r8
  5ef04c:	4c 89 84 24 18 03 00 	mov    %r8,0x318(%rsp)
  5ef053:	00 
  5ef054:	4c 8b 94 24 60 03 00 	mov    0x360(%rsp),%r10
  5ef05b:	00 
  5ef05c:	4c 8b bc 24 78 03 00 	mov    0x378(%rsp),%r15
  5ef063:	00 
  5ef064:	4d 11 fa             	adc    %r15,%r10
  5ef067:	4c 89 94 24 10 03 00 	mov    %r10,0x310(%rsp)
  5ef06e:	00 
  5ef06f:	4c 8b bc 24 70 03 00 	mov    0x370(%rsp),%r15
  5ef076:	00 
  5ef077:	4c 8b 8c 24 88 03 00 	mov    0x388(%rsp),%r9
  5ef07e:	00 
  5ef07f:	4d 11 cf             	adc    %r9,%r15
  5ef082:	4c 89 bc 24 08 03 00 	mov    %r15,0x308(%rsp)
  5ef089:	00 
  5ef08a:	4c 8b 8c 24 80 03 00 	mov    0x380(%rsp),%r9
  5ef091:	00 
  5ef092:	49 83 d1 00          	adc    $0x0,%r9
  5ef096:	4c 89 8c 24 00 03 00 	mov    %r9,0x300(%rsp)
  5ef09d:	00 
  5ef09e:	48 8b 9c 24 38 03 00 	mov    0x338(%rsp),%rbx
  5ef0a5:	00 
  5ef0a6:	48 01 d3             	add    %rdx,%rbx
  5ef0a9:	4c 11 de             	adc    %r11,%rsi
  5ef0ac:	4c 11 ef             	adc    %r13,%rdi
  5ef0af:	49 11 c0             	adc    %rax,%r8
  5ef0b2:	4d 11 e2             	adc    %r12,%r10
  5ef0b5:	4c 89 94 24 f8 02 00 	mov    %r10,0x2f8(%rsp)
  5ef0bc:	00 
  5ef0bd:	49 11 cf             	adc    %rcx,%r15
  5ef0c0:	4c 89 bc 24 f0 02 00 	mov    %r15,0x2f0(%rsp)
  5ef0c7:	00 
  5ef0c8:	48 8b 8c 24 90 03 00 	mov    0x390(%rsp),%rcx
  5ef0cf:	00 
  5ef0d0:	49 11 c9             	adc    %rcx,%r9
  5ef0d3:	4c 89 8c 24 e8 02 00 	mov    %r9,0x2e8(%rsp)
  5ef0da:	00 
  5ef0db:	48 89 da             	mov    %rbx,%rdx
  5ef0de:	48 b9 01 00 00 00 01 	movabs $0x100000001,%rcx
  5ef0e5:	00 00 00 
  5ef0e8:	c4 e2 9b f6 c9       	mulx   %rcx,%r12,%rcx
  5ef0ed:	4c 89 e2             	mov    %r12,%rdx
  5ef0f0:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  5ef0f7:	c4 e2 fb f6 c9       	mulx   %rcx,%rax,%rcx
  5ef0fc:	49 c7 c5 fe ff ff ff 	mov    $0xfffffffffffffffe,%r13
  5ef103:	c4 42 a3 f6 ed       	mulx   %r13,%r11,%r13
  5ef108:	49 b9 00 00 00 00 ff 	movabs $0xffffffff00000000,%r9
  5ef10f:	ff ff ff 
  5ef112:	c4 42 83 f6 c9       	mulx   %r9,%r15,%r9
  5ef117:	41 ba ff ff ff ff    	mov    $0xffffffff,%r10d
  5ef11d:	c4 c2 9b f6 d2       	mulx   %r10,%r12,%rdx
  5ef122:	4c 01 fa             	add    %r15,%rdx
  5ef125:	4d 11 d9             	adc    %r11,%r9
  5ef128:	49 11 c5             	adc    %rax,%r13
  5ef12b:	49 89 cb             	mov    %rcx,%r11
  5ef12e:	48 11 c1             	adc    %rax,%rcx
  5ef131:	4c 11 d8             	adc    %r11,%rax
  5ef134:	49 83 d3 00          	adc    $0x0,%r11
  5ef138:	4c 01 e3             	add    %r12,%rbx
  5ef13b:	48 11 f2             	adc    %rsi,%rdx
  5ef13e:	48 89 94 24 e0 02 00 	mov    %rdx,0x2e0(%rsp)
  5ef145:	00 
  5ef146:	49 11 f9             	adc    %rdi,%r9
  5ef149:	4c 89 8c 24 d8 02 00 	mov    %r9,0x2d8(%rsp)
  5ef150:	00 
  5ef151:	4d 11 c5             	adc    %r8,%r13
  5ef154:	4c 89 ac 24 d0 02 00 	mov    %r13,0x2d0(%rsp)
  5ef15b:	00 
  5ef15c:	48 8b 9c 24 f8 02 00 	mov    0x2f8(%rsp),%rbx
  5ef163:	00 
  5ef164:	48 11 d9             	adc    %rbx,%rcx
  5ef167:	48 89 8c 24 c8 02 00 	mov    %rcx,0x2c8(%rsp)
  5ef16e:	00 
  5ef16f:	48 8b 9c 24 f0 02 00 	mov    0x2f0(%rsp),%rbx
  5ef176:	00 
  5ef177:	48 11 d8             	adc    %rbx,%rax
  5ef17a:	48 89 84 24 c0 02 00 	mov    %rax,0x2c0(%rsp)
  5ef181:	00 
  5ef182:	48 8b 9c 24 e8 02 00 	mov    0x2e8(%rsp),%rbx
  5ef189:	00 
  5ef18a:	49 11 db             	adc    %rbx,%r11
  5ef18d:	4c 89 9c 24 b8 02 00 	mov    %r11,0x2b8(%rsp)
  5ef194:	00 
  5ef195:	0f 92 c3             	setb   %bl
  5ef198:	0f b6 db             	movzbl %bl,%ebx
  5ef19b:	48 8b b4 24 38 03 00 	mov    0x338(%rsp),%rsi
  5ef1a2:	00 
  5ef1a3:	48 8b bc 24 c0 03 00 	mov    0x3c0(%rsp),%rdi
  5ef1aa:	00 
  5ef1ab:	48 01 fe             	add    %rdi,%rsi
  5ef1ae:	48 8b b4 24 28 03 00 	mov    0x328(%rsp),%rsi
  5ef1b5:	00 
  5ef1b6:	48 8b bc 24 b8 03 00 	mov    0x3b8(%rsp),%rdi
  5ef1bd:	00 
  5ef1be:	48 11 fe             	adc    %rdi,%rsi
  5ef1c1:	48 8b b4 24 20 03 00 	mov    0x320(%rsp),%rsi
  5ef1c8:	00 
  5ef1c9:	48 8b bc 24 b0 03 00 	mov    0x3b0(%rsp),%rdi
  5ef1d0:	00 
  5ef1d1:	48 11 fe             	adc    %rdi,%rsi
  5ef1d4:	48 8b b4 24 18 03 00 	mov    0x318(%rsp),%rsi
  5ef1db:	00 
  5ef1dc:	48 8b bc 24 a8 03 00 	mov    0x3a8(%rsp),%rdi
  5ef1e3:	00 
  5ef1e4:	48 11 fe             	adc    %rdi,%rsi
  5ef1e7:	48 8b b4 24 10 03 00 	mov    0x310(%rsp),%rsi
  5ef1ee:	00 
  5ef1ef:	48 8b bc 24 a0 03 00 	mov    0x3a0(%rsp),%rdi
  5ef1f6:	00 
  5ef1f7:	48 11 fe             	adc    %rdi,%rsi
  5ef1fa:	48 8b b4 24 08 03 00 	mov    0x308(%rsp),%rsi
  5ef201:	00 
  5ef202:	48 8b bc 24 98 03 00 	mov    0x398(%rsp),%rdi
  5ef209:	00 
  5ef20a:	48 11 fe             	adc    %rdi,%rsi
  5ef20d:	48 8b b4 24 00 03 00 	mov    0x300(%rsp),%rsi
  5ef214:	00 
  5ef215:	48 8b bc 24 90 03 00 	mov    0x390(%rsp),%rdi
  5ef21c:	00 
  5ef21d:	48 11 fe             	adc    %rdi,%rsi
  5ef220:	48 83 d3 00          	adc    $0x0,%rbx
  5ef224:	48 89 9c 24 b0 02 00 	mov    %rbx,0x2b0(%rsp)
  5ef22b:	00 
  5ef22c:	48 8b b4 24 50 02 00 	mov    0x250(%rsp),%rsi
  5ef233:	00 
  5ef234:	48 8b bc 24 68 02 00 	mov    0x268(%rsp),%rdi
  5ef23b:	00 
  5ef23c:	48 01 fe             	add    %rdi,%rsi
  5ef23f:	48 89 b4 24 48 02 00 	mov    %rsi,0x248(%rsp)
  5ef246:	00 
  5ef247:	48 8b bc 24 60 02 00 	mov    0x260(%rsp),%rdi
  5ef24e:	00 
  5ef24f:	4c 8b 84 24 78 02 00 	mov    0x278(%rsp),%r8
  5ef256:	00 
  5ef257:	4c 11 c7             	adc    %r8,%rdi
  5ef25a:	48 89 bc 24 40 02 00 	mov    %rdi,0x240(%rsp)
  5ef261:	00 
  5ef262:	4c 8b 84 24 70 02 00 	mov    0x270(%rsp),%r8
  5ef269:	00 
  5ef26a:	4c 8b a4 24 88 02 00 	mov    0x288(%rsp),%r12
  5ef271:	00 
  5ef272:	4d 11 e0             	adc    %r12,%r8
  5ef275:	4c 89 84 24 38 02 00 	mov    %r8,0x238(%rsp)
  5ef27c:	00 
  5ef27d:	4c 8b a4 24 80 02 00 	mov    0x280(%rsp),%r12
  5ef284:	00 
  5ef285:	4c 8b bc 24 98 02 00 	mov    0x298(%rsp),%r15
  5ef28c:	00 
  5ef28d:	4d 11 fc             	adc    %r15,%r12
  5ef290:	4c 89 a4 24 30 02 00 	mov    %r12,0x230(%rsp)
  5ef297:	00 
  5ef298:	4c 8b bc 24 90 02 00 	mov    0x290(%rsp),%r15
  5ef29f:	00 
  5ef2a0:	4c 8b 94 24 a8 02 00 	mov    0x2a8(%rsp),%r10
  5ef2a7:	00 
  5ef2a8:	4d 11 d7             	adc    %r10,%r15
  5ef2ab:	4c 89 bc 24 28 02 00 	mov    %r15,0x228(%rsp)
  5ef2b2:	00 
  5ef2b3:	4c 8b 94 24 a0 02 00 	mov    0x2a0(%rsp),%r10
  5ef2ba:	00 
  5ef2bb:	49 83 d2 00          	adc    $0x0,%r10
  5ef2bf:	4c 89 94 24 20 02 00 	mov    %r10,0x220(%rsp)
  5ef2c6:	00 
  5ef2c7:	48 8b 9c 24 58 02 00 	mov    0x258(%rsp),%rbx
  5ef2ce:	00 
  5ef2cf:	48 01 d3             	add    %rdx,%rbx
  5ef2d2:	4c 11 ce             	adc    %r9,%rsi
  5ef2d5:	4c 11 ef             	adc    %r13,%rdi
  5ef2d8:	49 11 c8             	adc    %rcx,%r8
  5ef2db:	49 11 c4             	adc    %rax,%r12
  5ef2de:	4c 89 a4 24 18 02 00 	mov    %r12,0x218(%rsp)
  5ef2e5:	00 
  5ef2e6:	4d 11 df             	adc    %r11,%r15
  5ef2e9:	4c 89 bc 24 10 02 00 	mov    %r15,0x210(%rsp)
  5ef2f0:	00 
  5ef2f1:	4c 8b 9c 24 b0 02 00 	mov    0x2b0(%rsp),%r11
  5ef2f8:	00 
  5ef2f9:	4d 11 da             	adc    %r11,%r10
  5ef2fc:	4c 89 94 24 08 02 00 	mov    %r10,0x208(%rsp)
  5ef303:	00 
  5ef304:	48 89 da             	mov    %rbx,%rdx
  5ef307:	49 bb 01 00 00 00 01 	movabs $0x100000001,%r11
  5ef30e:	00 00 00 
  5ef311:	c4 42 fb f6 db       	mulx   %r11,%rax,%r11
  5ef316:	48 89 c2             	mov    %rax,%rdx
  5ef319:	49 c7 c3 ff ff ff ff 	mov    $0xffffffffffffffff,%r11
  5ef320:	c4 42 f3 f6 db       	mulx   %r11,%rcx,%r11
  5ef325:	49 c7 c5 fe ff ff ff 	mov    $0xfffffffffffffffe,%r13
  5ef32c:	c4 42 b3 f6 ed       	mulx   %r13,%r9,%r13
  5ef331:	49 ba 00 00 00 00 ff 	movabs $0xffffffff00000000,%r10
  5ef338:	ff ff ff 
  5ef33b:	c4 42 83 f6 d2       	mulx   %r10,%r15,%r10
  5ef340:	41 bc ff ff ff ff    	mov    $0xffffffff,%r12d
  5ef346:	c4 c2 fb f6 d4       	mulx   %r12,%rax,%rdx
  5ef34b:	4c 01 fa             	add    %r15,%rdx
  5ef34e:	4d 11 ca             	adc    %r9,%r10
  5ef351:	49 11 cd             	adc    %rcx,%r13
  5ef354:	49 89 c9             	mov    %rcx,%r9
  5ef357:	4c 11 d9             	adc    %r11,%rcx
  5ef35a:	4d 11 d9             	adc    %r11,%r9
  5ef35d:	49 83 d3 00          	adc    $0x0,%r11
  5ef361:	48 01 c3             	add    %rax,%rbx
  5ef364:	48 11 f2             	adc    %rsi,%rdx
  5ef367:	48 89 94 24 f0 01 00 	mov    %rdx,0x1f0(%rsp)
  5ef36e:	00 
  5ef36f:	49 11 fa             	adc    %rdi,%r10
  5ef372:	4c 89 94 24 e8 01 00 	mov    %r10,0x1e8(%rsp)
  5ef379:	00 
  5ef37a:	4d 11 c5             	adc    %r8,%r13
  5ef37d:	4c 89 ac 24 e0 01 00 	mov    %r13,0x1e0(%rsp)
  5ef384:	00 
  5ef385:	48 8b 84 24 18 02 00 	mov    0x218(%rsp),%rax
  5ef38c:	00 
  5ef38d:	48 11 c1             	adc    %rax,%rcx
  5ef390:	48 89 8c 24 d8 01 00 	mov    %rcx,0x1d8(%rsp)
  5ef397:	00 
  5ef398:	48 8b 84 24 10 02 00 	mov    0x210(%rsp),%rax
  5ef39f:	00 
  5ef3a0:	49 11 c1             	adc    %rax,%r9
  5ef3a3:	4c 89 8c 24 d0 01 00 	mov    %r9,0x1d0(%rsp)
  5ef3aa:	00 
  5ef3ab:	48 8b 84 24 08 02 00 	mov    0x208(%rsp),%rax
  5ef3b2:	00 
  5ef3b3:	49 11 c3             	adc    %rax,%r11
  5ef3b6:	4c 89 9c 24 c8 01 00 	mov    %r11,0x1c8(%rsp)
  5ef3bd:	00 
  5ef3be:	0f 92 c0             	setb   %al
  5ef3c1:	0f b6 c0             	movzbl %al,%eax
  5ef3c4:	48 8b 9c 24 58 02 00 	mov    0x258(%rsp),%rbx
  5ef3cb:	00 
  5ef3cc:	48 8b b4 24 e0 02 00 	mov    0x2e0(%rsp),%rsi
  5ef3d3:	00 
  5ef3d4:	48 01 f3             	add    %rsi,%rbx
  5ef3d7:	48 8b 9c 24 48 02 00 	mov    0x248(%rsp),%rbx
  5ef3de:	00 
  5ef3df:	48 8b b4 24 d8 02 00 	mov    0x2d8(%rsp),%rsi
  5ef3e6:	00 
  5ef3e7:	48 11 f3             	adc    %rsi,%rbx
  5ef3ea:	48 8b 9c 24 40 02 00 	mov    0x240(%rsp),%rbx
  5ef3f1:	00 
  5ef3f2:	48 8b b4 24 d0 02 00 	mov    0x2d0(%rsp),%rsi
  5ef3f9:	00 
  5ef3fa:	48 11 f3             	adc    %rsi,%rbx
  5ef3fd:	48 8b 9c 24 38 02 00 	mov    0x238(%rsp),%rbx
  5ef404:	00 
  5ef405:	48 8b b4 24 c8 02 00 	mov    0x2c8(%rsp),%rsi
  5ef40c:	00 
  5ef40d:	48 11 f3             	adc    %rsi,%rbx
  5ef410:	48 8b 9c 24 30 02 00 	mov    0x230(%rsp),%rbx
  5ef417:	00 
  5ef418:	48 8b b4 24 c0 02 00 	mov    0x2c0(%rsp),%rsi
  5ef41f:	00 
  5ef420:	48 11 f3             	adc    %rsi,%rbx
  5ef423:	48 8b 9c 24 28 02 00 	mov    0x228(%rsp),%rbx
  5ef42a:	00 
  5ef42b:	48 8b b4 24 b8 02 00 	mov    0x2b8(%rsp),%rsi
  5ef432:	00 
  5ef433:	48 11 f3             	adc    %rsi,%rbx
  5ef436:	48 8b 9c 24 20 02 00 	mov    0x220(%rsp),%rbx
  5ef43d:	00 
  5ef43e:	48 8b b4 24 b0 02 00 	mov    0x2b0(%rsp),%rsi
  5ef445:	00 
  5ef446:	48 11 f3             	adc    %rsi,%rbx
  5ef449:	48 83 d0 00          	adc    $0x0,%rax
  5ef44d:	48 89 84 24 c0 01 00 	mov    %rax,0x1c0(%rsp)
  5ef454:	00 
  5ef455:	48 8b 9c 24 58 01 00 	mov    0x158(%rsp),%rbx
  5ef45c:	00 
  5ef45d:	48 8b b4 24 70 01 00 	mov    0x170(%rsp),%rsi
  5ef464:	00 
  5ef465:	48 01 f3             	add    %rsi,%rbx
  5ef468:	48 89 9c 24 50 01 00 	mov    %rbx,0x150(%rsp)
  5ef46f:	00 
  5ef470:	48 8b b4 24 68 01 00 	mov    0x168(%rsp),%rsi
  5ef477:	00 
  5ef478:	48 8b bc 24 80 01 00 	mov    0x180(%rsp),%rdi
  5ef47f:	00 
  5ef480:	48 11 fe             	adc    %rdi,%rsi
  5ef483:	48 89 b4 24 40 01 00 	mov    %rsi,0x140(%rsp)
  5ef48a:	00 
  5ef48b:	48 8b bc 24 78 01 00 	mov    0x178(%rsp),%rdi
  5ef492:	00 
  5ef493:	4c 8b 84 24 90 01 00 	mov    0x190(%rsp),%r8
  5ef49a:	00 
  5ef49b:	4c 11 c7             	adc    %r8,%rdi
  5ef49e:	48 89 bc 24 38 01 00 	mov    %rdi,0x138(%rsp)
  5ef4a5:	00 
  5ef4a6:	4c 8b 84 24 88 01 00 	mov    0x188(%rsp),%r8
  5ef4ad:	00 
  5ef4ae:	4c 8b bc 24 a8 01 00 	mov    0x1a8(%rsp),%r15
  5ef4b5:	00 
  5ef4b6:	4d 11 f8             	adc    %r15,%r8
  5ef4b9:	4c 89 84 24 30 01 00 	mov    %r8,0x130(%rsp)
  5ef4c0:	00 
  5ef4c1:	4c 8b bc 24 98 01 00 	mov    0x198(%rsp),%r15
  5ef4c8:	00 
  5ef4c9:	4c 8b a4 24 b8 01 00 	mov    0x1b8(%rsp),%r12
  5ef4d0:	00 
  5ef4d1:	4d 11 e7             	adc    %r12,%r15
  5ef4d4:	4c 89 bc 24 28 01 00 	mov    %r15,0x128(%rsp)
  5ef4db:	00 
  5ef4dc:	4c 8b a4 24 b0 01 00 	mov    0x1b0(%rsp),%r12
  5ef4e3:	00 
  5ef4e4:	49 83 d4 00          	adc    $0x0,%r12
  5ef4e8:	4c 89 a4 24 20 01 00 	mov    %r12,0x120(%rsp)
  5ef4ef:	00 
  5ef4f0:	48 8b 84 24 60 01 00 	mov    0x160(%rsp),%rax
  5ef4f7:	00 
  5ef4f8:	48 01 d0             	add    %rdx,%rax
  5ef4fb:	4c 11 d3             	adc    %r10,%rbx
  5ef4fe:	4c 11 ee             	adc    %r13,%rsi
  5ef501:	48 11 cf             	adc    %rcx,%rdi
  5ef504:	4d 11 c8             	adc    %r9,%r8
  5ef507:	4c 89 84 24 18 01 00 	mov    %r8,0x118(%rsp)
  5ef50e:	00 
  5ef50f:	4d 11 df             	adc    %r11,%r15
  5ef512:	4c 89 bc 24 08 01 00 	mov    %r15,0x108(%rsp)
  5ef519:	00 
  5ef51a:	4c 8b 9c 24 c0 01 00 	mov    0x1c0(%rsp),%r11
  5ef521:	00 
  5ef522:	4d 11 dc             	adc    %r11,%r12
  5ef525:	4c 89 a4 24 00 01 00 	mov    %r12,0x100(%rsp)
  5ef52c:	00 
  5ef52d:	48 89 c2             	mov    %rax,%rdx
  5ef530:	49 bb 01 00 00 00 01 	movabs $0x100000001,%r11
  5ef537:	00 00 00 
  5ef53a:	c4 42 b3 f6 db       	mulx   %r11,%r9,%r11
  5ef53f:	4c 89 ca             	mov    %r9,%rdx
  5ef542:	49 c7 c3 ff ff ff ff 	mov    $0xffffffffffffffff,%r11
  5ef549:	c4 42 f3 f6 db       	mulx   %r11,%rcx,%r11
  5ef54e:	49 c7 c5 fe ff ff ff 	mov    $0xfffffffffffffffe,%r13
  5ef555:	c4 42 ab f6 ed       	mulx   %r13,%r10,%r13
  5ef55a:	49 bc 00 00 00 00 ff 	movabs $0xffffffff00000000,%r12
  5ef561:	ff ff ff 
  5ef564:	c4 42 83 f6 e4       	mulx   %r12,%r15,%r12
  5ef569:	41 b8 ff ff ff ff    	mov    $0xffffffff,%r8d
  5ef56f:	c4 42 eb f6 c8       	mulx   %r8,%rdx,%r9
  5ef574:	4d 01 f9             	add    %r15,%r9
  5ef577:	4d 11 d4             	adc    %r10,%r12
  5ef57a:	49 11 cd             	adc    %rcx,%r13
  5ef57d:	49 89 ca             	mov    %rcx,%r10
  5ef580:	4c 11 d9             	adc    %r11,%rcx
  5ef583:	4d 11 da             	adc    %r11,%r10
  5ef586:	49 83 d3 00          	adc    $0x0,%r11
  5ef58a:	48 01 d0             	add    %rdx,%rax
  5ef58d:	49 11 d9             	adc    %rbx,%r9
  5ef590:	49 11 f4             	adc    %rsi,%r12
  5ef593:	49 11 fd             	adc    %rdi,%r13
  5ef596:	48 8b 84 24 18 01 00 	mov    0x118(%rsp),%rax
  5ef59d:	00 
  5ef59e:	48 11 c1             	adc    %rax,%rcx
  5ef5a1:	48 8b 84 24 08 01 00 	mov    0x108(%rsp),%rax
  5ef5a8:	00 
  5ef5a9:	49 11 c2             	adc    %rax,%r10
  5ef5ac:	48 8b 84 24 00 01 00 	mov    0x100(%rsp),%rax
  5ef5b3:	00 
  5ef5b4:	49 11 c3             	adc    %rax,%r11
  5ef5b7:	0f 92 c0             	setb   %al
  5ef5ba:	0f b6 c0             	movzbl %al,%eax
  5ef5bd:	48 8b 9c 24 60 01 00 	mov    0x160(%rsp),%rbx
  5ef5c4:	00 
  5ef5c5:	48 8b b4 24 f0 01 00 	mov    0x1f0(%rsp),%rsi
  5ef5cc:	00 
  5ef5cd:	48 01 f3             	add    %rsi,%rbx
  5ef5d0:	48 8b 9c 24 50 01 00 	mov    0x150(%rsp),%rbx
  5ef5d7:	00 
  5ef5d8:	48 8b b4 24 e8 01 00 	mov    0x1e8(%rsp),%rsi
  5ef5df:	00 
  5ef5e0:	48 11 f3             	adc    %rsi,%rbx
  5ef5e3:	48 8b 9c 24 40 01 00 	mov    0x140(%rsp),%rbx
  5ef5ea:	00 
  5ef5eb:	48 8b b4 24 e0 01 00 	mov    0x1e0(%rsp),%rsi
  5ef5f2:	00 
  5ef5f3:	48 11 f3             	adc    %rsi,%rbx
  5ef5f6:	48 8b 9c 24 38 01 00 	mov    0x138(%rsp),%rbx
  5ef5fd:	00 
  5ef5fe:	48 8b b4 24 d8 01 00 	mov    0x1d8(%rsp),%rsi
  5ef605:	00 
  5ef606:	48 11 f3             	adc    %rsi,%rbx
  5ef609:	48 8b 9c 24 30 01 00 	mov    0x130(%rsp),%rbx
  5ef610:	00 
  5ef611:	48 8b b4 24 d0 01 00 	mov    0x1d0(%rsp),%rsi
  5ef618:	00 
  5ef619:	48 11 f3             	adc    %rsi,%rbx
  5ef61c:	48 8b 9c 24 28 01 00 	mov    0x128(%rsp),%rbx
  5ef623:	00 
  5ef624:	48 8b b4 24 c8 01 00 	mov    0x1c8(%rsp),%rsi
  5ef62b:	00 
  5ef62c:	48 11 f3             	adc    %rsi,%rbx
  5ef62f:	48 8b 9c 24 20 01 00 	mov    0x120(%rsp),%rbx
  5ef636:	00 
  5ef637:	48 8b b4 24 c0 01 00 	mov    0x1c0(%rsp),%rsi
  5ef63e:	00 
  5ef63f:	48 11 f3             	adc    %rsi,%rbx
  5ef642:	48 83 d0 00          	adc    $0x0,%rax
  5ef646:	4c 89 cb             	mov    %r9,%rbx
  5ef649:	4d 29 c1             	sub    %r8,%r9
  5ef64c:	48 be 00 00 00 00 ff 	movabs $0xffffffff00000000,%rsi
  5ef653:	ff ff ff 
  5ef656:	4c 89 e7             	mov    %r12,%rdi
  5ef659:	49 19 f4             	sbb    %rsi,%r12
  5ef65c:	4c 89 ee             	mov    %r13,%rsi
  5ef65f:	49 83 dd fe          	sbb    $0xfffffffffffffffe,%r13
  5ef663:	49 89 c8             	mov    %rcx,%r8
  5ef666:	48 83 d9 ff          	sbb    $0xffffffffffffffff,%rcx
  5ef66a:	4d 89 d7             	mov    %r10,%r15
  5ef66d:	49 83 da ff          	sbb    $0xffffffffffffffff,%r10
  5ef671:	4c 89 da             	mov    %r11,%rdx
  5ef674:	49 83 db ff          	sbb    $0xffffffffffffffff,%r11
  5ef678:	48 83 d8 00          	sbb    $0x0,%rax
  5ef67c:	0f 92 c0             	setb   %al
  5ef67f:	0f b6 c0             	movzbl %al,%eax
  5ef682:	48 f7 d8             	neg    %rax
  5ef685:	48 21 c3             	and    %rax,%rbx
  5ef688:	c4 42 f8 f2 c9       	andn   %r9,%rax,%r9
  5ef68d:	4c 09 cb             	or     %r9,%rbx
  5ef690:	4c 8b 8c 24 18 05 00 	mov    0x518(%rsp),%r9
  5ef697:	00 
  5ef698:	49 89 19             	mov    %rbx,(%r9)
  5ef69b:	48 21 c7             	and    %rax,%rdi
  5ef69e:	c4 c2 f8 f2 dc       	andn   %r12,%rax,%rbx
  5ef6a3:	48 09 df             	or     %rbx,%rdi
  5ef6a6:	49 89 79 08          	mov    %rdi,0x8(%r9)
  5ef6aa:	48 21 c6             	and    %rax,%rsi
  5ef6ad:	c4 c2 f8 f2 dd       	andn   %r13,%rax,%rbx
  5ef6b2:	48 09 de             	or     %rbx,%rsi
  5ef6b5:	49 89 71 10          	mov    %rsi,0x10(%r9)
  5ef6b9:	49 21 c0             	and    %rax,%r8
  5ef6bc:	c4 e2 f8 f2 c9       	andn   %rcx,%rax,%rcx
  5ef6c1:	4c 09 c1             	or     %r8,%rcx
  5ef6c4:	49 89 49 18          	mov    %rcx,0x18(%r9)
  5ef6c8:	49 21 c7             	and    %rax,%r15
  5ef6cb:	c4 c2 f8 f2 ca       	andn   %r10,%rax,%rcx
  5ef6d0:	49 09 cf             	or     %rcx,%r15
  5ef6d3:	4d 89 79 20          	mov    %r15,0x20(%r9)
  5ef6d7:	48 21 c2             	and    %rax,%rdx
  5ef6da:	c4 c2 f8 f2 c3       	andn   %r11,%rax,%rax
  5ef6df:	48 09 c2             	or     %rax,%rdx
  5ef6e2:	49 89 51 28          	mov    %rdx,0x28(%r9)
  5ef6e6:	c9                   	leave
  5ef6e7:	c3                   	ret
  5ef6e8:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  5ef6ed:	48 89 5c 24 10       	mov    %rbx,0x10(%rsp)
  5ef6f2:	48 89 4c 24 18       	mov    %rcx,0x18(%rsp)
  5ef6f7:	e8 24 b4 e9 ff       	call   48ab20 <runtime.morestack_noctxt.abi0>
  5ef6fc:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
  5ef701:	48 8b 5c 24 10       	mov    0x10(%rsp),%rbx
  5ef706:	48 8b 4c 24 18       	mov    0x18(%rsp),%rcx
  5ef70b:	e9 b0 ef ff ff       	jmp    5ee6c0 <example.com/p384issue.Mul>
