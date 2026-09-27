
/home/exedev/crypto-audit/round4/issues/p384-square/evidence/v3/repro.test:     file format elf64-x86-64


Disassembly of section .text:

00000000005ef720 <example.com/p384issue.Square>:
  5ef720:	4c 8d a4 24 60 fc ff 	lea    -0x3a0(%rsp),%r12
  5ef727:	ff 
  5ef728:	4d 3b 66 10          	cmp    0x10(%r14),%r12
  5ef72c:	0f 86 49 0e 00 00    	jbe    5f057b <example.com/p384issue.Square+0xe5b>
  5ef732:	55                   	push   %rbp
  5ef733:	48 89 e5             	mov    %rsp,%rbp
  5ef736:	48 81 ec 18 04 00 00 	sub    $0x418,%rsp
  5ef73d:	48 89 84 24 28 04 00 	mov    %rax,0x428(%rsp)
  5ef744:	00 
  5ef745:	48 8b 4b 10          	mov    0x10(%rbx),%rcx
  5ef749:	48 8b 53 08          	mov    0x8(%rbx),%rdx
  5ef74d:	c4 e2 c3 f6 f1       	mulx   %rcx,%rdi,%rsi
  5ef752:	48 89 74 24 50       	mov    %rsi,0x50(%rsp)
  5ef757:	48 89 7c 24 58       	mov    %rdi,0x58(%rsp)
  5ef75c:	c4 62 b3 f6 c2       	mulx   %rdx,%r9,%r8
  5ef761:	4c 89 44 24 40       	mov    %r8,0x40(%rsp)
  5ef766:	4c 89 4c 24 48       	mov    %r9,0x48(%rsp)
  5ef76b:	49 89 d2             	mov    %rdx,%r10
  5ef76e:	48 89 ca             	mov    %rcx,%rdx
  5ef771:	c4 62 9b f6 d9       	mulx   %rcx,%r12,%r11
  5ef776:	4c 89 9c 24 88 03 00 	mov    %r11,0x388(%rsp)
  5ef77d:	00 
  5ef77e:	4c 89 a4 24 90 03 00 	mov    %r12,0x390(%rsp)
  5ef785:	00 
  5ef786:	4c 8b 6b 28          	mov    0x28(%rbx),%r13
  5ef78a:	4c 89 ea             	mov    %r13,%rdx
  5ef78d:	c4 42 fb f6 fa       	mulx   %r10,%rax,%r15
  5ef792:	4c 89 7c 24 60       	mov    %r15,0x60(%rsp)
  5ef797:	48 89 44 24 68       	mov    %rax,0x68(%rsp)
  5ef79c:	4c 8b 5b 18          	mov    0x18(%rbx),%r11
  5ef7a0:	4c 89 da             	mov    %r11,%rdx
  5ef7a3:	c4 42 83 f6 e2       	mulx   %r10,%r15,%r12
  5ef7a8:	4c 89 a4 24 b8 02 00 	mov    %r12,0x2b8(%rsp)
  5ef7af:	00 
  5ef7b0:	4c 89 bc 24 c0 02 00 	mov    %r15,0x2c0(%rsp)
  5ef7b7:	00 
  5ef7b8:	c4 e2 9b f6 c1       	mulx   %rcx,%r12,%rax
  5ef7bd:	4c 89 a4 24 98 03 00 	mov    %r12,0x398(%rsp)
  5ef7c4:	00 
  5ef7c5:	48 89 84 24 c8 02 00 	mov    %rax,0x2c8(%rsp)
  5ef7cc:	00 
  5ef7cd:	c4 e2 9b f6 c2       	mulx   %rdx,%r12,%rax
  5ef7d2:	48 89 84 24 d0 02 00 	mov    %rax,0x2d0(%rsp)
  5ef7d9:	00 
  5ef7da:	4c 89 a4 24 d8 02 00 	mov    %r12,0x2d8(%rsp)
  5ef7e1:	00 
  5ef7e2:	48 8b 43 20          	mov    0x20(%rbx),%rax
  5ef7e6:	48 89 c2             	mov    %rax,%rdx
  5ef7e9:	c4 42 cb f6 e5       	mulx   %r13,%rsi,%r12
  5ef7ee:	4c 89 a4 24 20 02 00 	mov    %r12,0x220(%rsp)
  5ef7f5:	00 
  5ef7f6:	48 89 b4 24 48 01 00 	mov    %rsi,0x148(%rsp)
  5ef7fd:	00 
  5ef7fe:	c4 62 cb f6 e0       	mulx   %rax,%rsi,%r12
  5ef803:	4c 89 a4 24 10 02 00 	mov    %r12,0x210(%rsp)
  5ef80a:	00 
  5ef80b:	48 89 b4 24 18 02 00 	mov    %rsi,0x218(%rsp)
  5ef812:	00 
  5ef813:	c4 42 cb f6 e3       	mulx   %r11,%rsi,%r12
  5ef818:	48 89 b4 24 e0 02 00 	mov    %rsi,0x2e0(%rsp)
  5ef81f:	00 
  5ef820:	4c 89 a4 24 08 02 00 	mov    %r12,0x208(%rsp)
  5ef827:	00 
  5ef828:	c4 62 cb f6 e1       	mulx   %rcx,%rsi,%r12
  5ef82d:	4c 89 a4 24 a0 03 00 	mov    %r12,0x3a0(%rsp)
  5ef834:	00 
  5ef835:	48 89 b4 24 00 02 00 	mov    %rsi,0x200(%rsp)
  5ef83c:	00 
  5ef83d:	c4 42 cb f6 e2       	mulx   %r10,%rsi,%r12
  5ef842:	4c 89 a4 24 f0 01 00 	mov    %r12,0x1f0(%rsp)
  5ef849:	00 
  5ef84a:	48 89 b4 24 f8 01 00 	mov    %rsi,0x1f8(%rsp)
  5ef851:	00 
  5ef852:	48 8b 1b             	mov    (%rbx),%rbx
  5ef855:	48 89 da             	mov    %rbx,%rdx
  5ef858:	c4 42 cb f6 e5       	mulx   %r13,%rsi,%r12
  5ef85d:	4c 89 a4 24 20 01 00 	mov    %r12,0x120(%rsp)
  5ef864:	00 
  5ef865:	48 89 b4 24 28 01 00 	mov    %rsi,0x128(%rsp)
  5ef86c:	00 
  5ef86d:	c4 62 c3 f6 f9       	mulx   %rcx,%rdi,%r15
  5ef872:	4c 89 bc 24 c8 03 00 	mov    %r15,0x3c8(%rsp)
  5ef879:	00 
  5ef87a:	48 89 bc 24 80 03 00 	mov    %rdi,0x380(%rsp)
  5ef881:	00 
  5ef882:	c4 62 b3 f6 c2       	mulx   %rdx,%r9,%r8
  5ef887:	4c 89 8c 24 40 03 00 	mov    %r9,0x340(%rsp)
  5ef88e:	00 
  5ef88f:	48 ba 01 00 00 00 01 	movabs $0x100000001,%rdx
  5ef896:	00 00 00 
  5ef899:	c4 c2 b3 f6 d1       	mulx   %r9,%r9,%rdx
  5ef89e:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
  5ef8a5:	c4 c2 9b f6 d1       	mulx   %r9,%r12,%rdx
  5ef8aa:	48 89 94 24 a0 01 00 	mov    %rdx,0x1a0(%rsp)
  5ef8b1:	00 
  5ef8b2:	4c 89 a4 24 98 01 00 	mov    %r12,0x198(%rsp)
  5ef8b9:	00 
  5ef8ba:	48 c7 c2 fe ff ff ff 	mov    $0xfffffffffffffffe,%rdx
  5ef8c1:	c4 c2 9b f6 d1       	mulx   %r9,%r12,%rdx
  5ef8c6:	48 89 94 24 10 01 00 	mov    %rdx,0x110(%rsp)
  5ef8cd:	00 
  5ef8ce:	4c 89 a4 24 40 01 00 	mov    %r12,0x140(%rsp)
  5ef8d5:	00 
  5ef8d6:	48 ba 00 00 00 00 ff 	movabs $0xffffffff00000000,%rdx
  5ef8dd:	ff ff ff 
  5ef8e0:	c4 c2 9b f6 d1       	mulx   %r9,%r12,%rdx
  5ef8e5:	48 89 94 24 d0 00 00 	mov    %rdx,0xd0(%rsp)
  5ef8ec:	00 
  5ef8ed:	4c 89 a4 24 e0 00 00 	mov    %r12,0xe0(%rsp)
  5ef8f4:	00 
  5ef8f5:	ba ff ff ff ff       	mov    $0xffffffff,%edx
  5ef8fa:	c4 42 eb f6 c9       	mulx   %r9,%rdx,%r9
  5ef8ff:	4c 89 8c 24 b0 00 00 	mov    %r9,0xb0(%rsp)
  5ef906:	00 
  5ef907:	48 89 94 24 b8 00 00 	mov    %rdx,0xb8(%rsp)
  5ef90e:	00 
  5ef90f:	48 89 da             	mov    %rbx,%rdx
  5ef912:	c4 42 b3 f6 d2       	mulx   %r10,%r9,%r10
  5ef917:	4c 89 94 24 70 03 00 	mov    %r10,0x370(%rsp)
  5ef91e:	00 
  5ef91f:	4c 89 4c 24 38       	mov    %r9,0x38(%rsp)
  5ef924:	c4 42 cb f6 e3       	mulx   %r11,%rsi,%r12
  5ef929:	4c 89 a4 24 f0 03 00 	mov    %r12,0x3f0(%rsp)
  5ef930:	00 
  5ef931:	48 89 b4 24 b0 02 00 	mov    %rsi,0x2b0(%rsp)
  5ef938:	00 
  5ef939:	c4 e2 e3 f6 c0       	mulx   %rax,%rbx,%rax
  5ef93e:	48 89 84 24 10 04 00 	mov    %rax,0x410(%rsp)
  5ef945:	00 
  5ef946:	48 89 5c 24 08       	mov    %rbx,0x8(%rsp)
  5ef94b:	4c 89 ea             	mov    %r13,%rdx
  5ef94e:	c4 e2 e3 f6 c2       	mulx   %rdx,%rbx,%rax
  5ef953:	48 89 84 24 50 01 00 	mov    %rax,0x150(%rsp)
  5ef95a:	00 
  5ef95b:	48 89 9c 24 58 01 00 	mov    %rbx,0x158(%rsp)
  5ef962:	00 
  5ef963:	4c 89 da             	mov    %r11,%rdx
  5ef966:	c4 42 eb f6 dd       	mulx   %r13,%rdx,%r11
  5ef96b:	48 89 94 24 e8 02 00 	mov    %rdx,0x2e8(%rsp)
  5ef972:	00 
  5ef973:	4c 89 9c 24 38 01 00 	mov    %r11,0x138(%rsp)
  5ef97a:	00 
  5ef97b:	4c 89 ea             	mov    %r13,%rdx
  5ef97e:	c4 e2 93 f6 c9       	mulx   %rcx,%r13,%rcx
  5ef983:	4c 89 ac 24 a8 03 00 	mov    %r13,0x3a8(%rsp)
  5ef98a:	00 
  5ef98b:	48 89 8c 24 30 01 00 	mov    %rcx,0x130(%rsp)
  5ef992:	00 
  5ef993:	90                   	nop
  5ef994:	90                   	nop
  5ef995:	90                   	nop
  5ef996:	90                   	nop
  5ef997:	90                   	nop
  5ef998:	90                   	nop
  5ef999:	4d 01 c8             	add    %r9,%r8
  5ef99c:	4c 11 d7             	adc    %r10,%rdi
  5ef99f:	4c 11 fe             	adc    %r15,%rsi
  5ef9a2:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
  5ef9a7:	49 11 c4             	adc    %rax,%r12
  5ef9aa:	48 8b 9c 24 28 01 00 	mov    0x128(%rsp),%rbx
  5ef9b1:	00 
  5ef9b2:	48 8b 84 24 10 04 00 	mov    0x410(%rsp),%rax
  5ef9b9:	00 
  5ef9ba:	48 11 c3             	adc    %rax,%rbx
  5ef9bd:	48 8b 84 24 20 01 00 	mov    0x120(%rsp),%rax
  5ef9c4:	00 
  5ef9c5:	48 83 d0 00          	adc    $0x0,%rax
  5ef9c9:	48 89 84 24 50 02 00 	mov    %rax,0x250(%rsp)
  5ef9d0:	00 
  5ef9d1:	4c 8b 9c 24 b0 00 00 	mov    0xb0(%rsp),%r11
  5ef9d8:	00 
  5ef9d9:	48 8b 8c 24 e0 00 00 	mov    0xe0(%rsp),%rcx
  5ef9e0:	00 
  5ef9e1:	49 01 cb             	add    %rcx,%r11
  5ef9e4:	48 8b 8c 24 d0 00 00 	mov    0xd0(%rsp),%rcx
  5ef9eb:	00 
  5ef9ec:	4c 8b ac 24 40 01 00 	mov    0x140(%rsp),%r13
  5ef9f3:	00 
  5ef9f4:	4c 11 e9             	adc    %r13,%rcx
  5ef9f7:	4c 8b ac 24 10 01 00 	mov    0x110(%rsp),%r13
  5ef9fe:	00 
  5ef9ff:	4c 8b bc 24 98 01 00 	mov    0x198(%rsp),%r15
  5efa06:	00 
  5efa07:	4d 11 fd             	adc    %r15,%r13
  5efa0a:	4c 8b 8c 24 a0 01 00 	mov    0x1a0(%rsp),%r9
  5efa11:	00 
  5efa12:	4d 11 cf             	adc    %r9,%r15
  5efa15:	4c 8b 94 24 98 01 00 	mov    0x198(%rsp),%r10
  5efa1c:	00 
  5efa1d:	4d 11 ca             	adc    %r9,%r10
  5efa20:	49 83 d1 00          	adc    $0x0,%r9
  5efa24:	4c 89 8c 24 a8 00 00 	mov    %r9,0xa8(%rsp)
  5efa2b:	00 
  5efa2c:	48 8b 84 24 40 03 00 	mov    0x340(%rsp),%rax
  5efa33:	00 
  5efa34:	4c 8b 8c 24 b8 00 00 	mov    0xb8(%rsp),%r9
  5efa3b:	00 
  5efa3c:	4c 01 c8             	add    %r9,%rax
  5efa3f:	4d 11 c3             	adc    %r8,%r11
  5efa42:	4c 89 9c 24 a0 00 00 	mov    %r11,0xa0(%rsp)
  5efa49:	00 
  5efa4a:	48 11 f9             	adc    %rdi,%rcx
  5efa4d:	48 89 8c 24 98 00 00 	mov    %rcx,0x98(%rsp)
  5efa54:	00 
  5efa55:	49 11 f5             	adc    %rsi,%r13
  5efa58:	4c 89 ac 24 90 00 00 	mov    %r13,0x90(%rsp)
  5efa5f:	00 
  5efa60:	4d 11 e7             	adc    %r12,%r15
  5efa63:	4c 89 bc 24 88 00 00 	mov    %r15,0x88(%rsp)
  5efa6a:	00 
  5efa6b:	49 11 da             	adc    %rbx,%r10
  5efa6e:	4c 89 94 24 80 00 00 	mov    %r10,0x80(%rsp)
  5efa75:	00 
  5efa76:	48 8b 84 24 a8 00 00 	mov    0xa8(%rsp),%rax
  5efa7d:	00 
  5efa7e:	48 8b 9c 24 50 02 00 	mov    0x250(%rsp),%rbx
  5efa85:	00 
  5efa86:	48 11 d8             	adc    %rbx,%rax
  5efa89:	48 89 44 24 78       	mov    %rax,0x78(%rsp)
  5efa8e:	0f 92 c3             	setb   %bl
  5efa91:	0f b6 db             	movzbl %bl,%ebx
  5efa94:	48 89 5c 24 70       	mov    %rbx,0x70(%rsp)
  5efa99:	48 8b 74 24 48       	mov    0x48(%rsp),%rsi
  5efa9e:	48 8b bc 24 70 03 00 	mov    0x370(%rsp),%rdi
  5efaa5:	00 
  5efaa6:	48 01 fe             	add    %rdi,%rsi
  5efaa9:	48 89 74 24 30       	mov    %rsi,0x30(%rsp)
  5efaae:	48 8b 7c 24 40       	mov    0x40(%rsp),%rdi
  5efab3:	4c 8b 44 24 58       	mov    0x58(%rsp),%r8
  5efab8:	4c 11 c7             	adc    %r8,%rdi
  5efabb:	48 89 7c 24 28       	mov    %rdi,0x28(%rsp)
  5efac0:	4c 8b 8c 24 c0 02 00 	mov    0x2c0(%rsp),%r9
  5efac7:	00 
  5efac8:	4c 8b 64 24 50       	mov    0x50(%rsp),%r12
  5efacd:	4d 11 e1             	adc    %r12,%r9
  5efad0:	4c 89 4c 24 20       	mov    %r9,0x20(%rsp)
  5efad5:	4c 8b a4 24 f8 01 00 	mov    0x1f8(%rsp),%r12
  5efadc:	00 
  5efadd:	4c 8b 84 24 b8 02 00 	mov    0x2b8(%rsp),%r8
  5efae4:	00 
  5efae5:	4d 11 c4             	adc    %r8,%r12
  5efae8:	4c 89 64 24 18       	mov    %r12,0x18(%rsp)
  5efaed:	4c 8b 84 24 f0 01 00 	mov    0x1f0(%rsp),%r8
  5efaf4:	00 
  5efaf5:	48 8b 5c 24 68       	mov    0x68(%rsp),%rbx
  5efafa:	49 11 d8             	adc    %rbx,%r8
  5efafd:	4c 89 44 24 10       	mov    %r8,0x10(%rsp)
  5efb02:	48 8b 5c 24 60       	mov    0x60(%rsp),%rbx
  5efb07:	48 83 d3 00          	adc    $0x0,%rbx
  5efb0b:	48 89 1c 24          	mov    %rbx,(%rsp)
  5efb0f:	48 8b 5c 24 38       	mov    0x38(%rsp),%rbx
  5efb14:	4c 01 db             	add    %r11,%rbx
  5efb17:	48 11 ce             	adc    %rcx,%rsi
  5efb1a:	4c 11 ef             	adc    %r13,%rdi
  5efb1d:	4d 11 f9             	adc    %r15,%r9
  5efb20:	4d 11 d4             	adc    %r10,%r12
  5efb23:	4c 89 a4 24 08 04 00 	mov    %r12,0x408(%rsp)
  5efb2a:	00 
  5efb2b:	49 11 c0             	adc    %rax,%r8
  5efb2e:	4c 89 84 24 00 04 00 	mov    %r8,0x400(%rsp)
  5efb35:	00 
  5efb36:	48 8b 04 24          	mov    (%rsp),%rax
  5efb3a:	4c 8b 54 24 70       	mov    0x70(%rsp),%r10
  5efb3f:	4c 11 d0             	adc    %r10,%rax
  5efb42:	48 89 84 24 f8 03 00 	mov    %rax,0x3f8(%rsp)
  5efb49:	00 
  5efb4a:	48 89 da             	mov    %rbx,%rdx
  5efb4d:	49 ba 01 00 00 00 01 	movabs $0x100000001,%r10
  5efb54:	00 00 00 
  5efb57:	c4 42 83 f6 d2       	mulx   %r10,%r15,%r10
  5efb5c:	4c 89 fa             	mov    %r15,%rdx
  5efb5f:	49 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%r10
  5efb66:	c4 42 93 f6 d2       	mulx   %r10,%r13,%r10
  5efb6b:	48 c7 c1 fe ff ff ff 	mov    $0xfffffffffffffffe,%rcx
  5efb72:	c4 e2 a3 f6 c9       	mulx   %rcx,%r11,%rcx
  5efb77:	48 b8 00 00 00 00 ff 	movabs $0xffffffff00000000,%rax
  5efb7e:	ff ff ff 
  5efb81:	c4 e2 bb f6 c0       	mulx   %rax,%r8,%rax
  5efb86:	41 bc ff ff ff ff    	mov    $0xffffffff,%r12d
  5efb8c:	c4 c2 83 f6 d4       	mulx   %r12,%r15,%rdx
  5efb91:	4c 01 c2             	add    %r8,%rdx
  5efb94:	4c 11 d8             	adc    %r11,%rax
  5efb97:	4c 11 e9             	adc    %r13,%rcx
  5efb9a:	4d 89 e8             	mov    %r13,%r8
  5efb9d:	4d 11 d5             	adc    %r10,%r13
  5efba0:	4d 11 d0             	adc    %r10,%r8
  5efba3:	49 83 d2 00          	adc    $0x0,%r10
  5efba7:	4c 01 fb             	add    %r15,%rbx
  5efbaa:	48 11 f2             	adc    %rsi,%rdx
  5efbad:	48 89 94 24 e8 03 00 	mov    %rdx,0x3e8(%rsp)
  5efbb4:	00 
  5efbb5:	48 11 f8             	adc    %rdi,%rax
  5efbb8:	48 89 84 24 e0 03 00 	mov    %rax,0x3e0(%rsp)
  5efbbf:	00 
  5efbc0:	4c 11 c9             	adc    %r9,%rcx
  5efbc3:	48 89 8c 24 d8 03 00 	mov    %rcx,0x3d8(%rsp)
  5efbca:	00 
  5efbcb:	48 8b 9c 24 08 04 00 	mov    0x408(%rsp),%rbx
  5efbd2:	00 
  5efbd3:	49 11 dd             	adc    %rbx,%r13
  5efbd6:	4c 89 ac 24 d0 03 00 	mov    %r13,0x3d0(%rsp)
  5efbdd:	00 
  5efbde:	48 8b 9c 24 00 04 00 	mov    0x400(%rsp),%rbx
  5efbe5:	00 
  5efbe6:	49 11 d8             	adc    %rbx,%r8
  5efbe9:	4c 89 84 24 c0 03 00 	mov    %r8,0x3c0(%rsp)
  5efbf0:	00 
  5efbf1:	48 8b 9c 24 f8 03 00 	mov    0x3f8(%rsp),%rbx
  5efbf8:	00 
  5efbf9:	49 11 da             	adc    %rbx,%r10
  5efbfc:	4c 89 94 24 b8 03 00 	mov    %r10,0x3b8(%rsp)
  5efc03:	00 
  5efc04:	0f 92 c3             	setb   %bl
  5efc07:	0f b6 db             	movzbl %bl,%ebx
  5efc0a:	48 8b 74 24 38       	mov    0x38(%rsp),%rsi
  5efc0f:	48 8b bc 24 a0 00 00 	mov    0xa0(%rsp),%rdi
  5efc16:	00 
  5efc17:	48 01 fe             	add    %rdi,%rsi
  5efc1a:	48 8b 74 24 30       	mov    0x30(%rsp),%rsi
  5efc1f:	48 8b bc 24 98 00 00 	mov    0x98(%rsp),%rdi
  5efc26:	00 
  5efc27:	48 11 fe             	adc    %rdi,%rsi
  5efc2a:	48 8b 74 24 28       	mov    0x28(%rsp),%rsi
  5efc2f:	48 8b bc 24 90 00 00 	mov    0x90(%rsp),%rdi
  5efc36:	00 
  5efc37:	48 11 fe             	adc    %rdi,%rsi
  5efc3a:	48 8b 74 24 20       	mov    0x20(%rsp),%rsi
  5efc3f:	48 8b bc 24 88 00 00 	mov    0x88(%rsp),%rdi
  5efc46:	00 
  5efc47:	48 11 fe             	adc    %rdi,%rsi
  5efc4a:	48 8b 74 24 18       	mov    0x18(%rsp),%rsi
  5efc4f:	48 8b bc 24 80 00 00 	mov    0x80(%rsp),%rdi
  5efc56:	00 
  5efc57:	48 11 fe             	adc    %rdi,%rsi
  5efc5a:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
  5efc5f:	48 8b 7c 24 78       	mov    0x78(%rsp),%rdi
  5efc64:	48 11 fe             	adc    %rdi,%rsi
  5efc67:	48 8b 34 24          	mov    (%rsp),%rsi
  5efc6b:	48 8b 7c 24 70       	mov    0x70(%rsp),%rdi
  5efc70:	48 11 fe             	adc    %rdi,%rsi
  5efc73:	48 83 d3 00          	adc    $0x0,%rbx
  5efc77:	48 89 9c 24 b0 03 00 	mov    %rbx,0x3b0(%rsp)
  5efc7e:	00 
  5efc7f:	48 8b 74 24 58       	mov    0x58(%rsp),%rsi
  5efc84:	48 8b bc 24 c8 03 00 	mov    0x3c8(%rsp),%rdi
  5efc8b:	00 
  5efc8c:	48 01 fe             	add    %rdi,%rsi
  5efc8f:	48 89 b4 24 78 03 00 	mov    %rsi,0x378(%rsp)
  5efc96:	00 
  5efc97:	48 8b bc 24 90 03 00 	mov    0x390(%rsp),%rdi
  5efc9e:	00 
  5efc9f:	4c 8b 4c 24 50       	mov    0x50(%rsp),%r9
  5efca4:	4c 11 cf             	adc    %r9,%rdi
  5efca7:	48 89 bc 24 68 03 00 	mov    %rdi,0x368(%rsp)
  5efcae:	00 
  5efcaf:	4c 8b 8c 24 88 03 00 	mov    0x388(%rsp),%r9
  5efcb6:	00 
  5efcb7:	4c 8b 9c 24 98 03 00 	mov    0x398(%rsp),%r11
  5efcbe:	00 
  5efcbf:	4d 11 d9             	adc    %r11,%r9
  5efcc2:	4c 89 8c 24 60 03 00 	mov    %r9,0x360(%rsp)
  5efcc9:	00 
  5efcca:	4c 8b bc 24 00 02 00 	mov    0x200(%rsp),%r15
  5efcd1:	00 
  5efcd2:	4c 8b 9c 24 c8 02 00 	mov    0x2c8(%rsp),%r11
  5efcd9:	00 
  5efcda:	4d 11 df             	adc    %r11,%r15
  5efcdd:	4c 89 bc 24 58 03 00 	mov    %r15,0x358(%rsp)
  5efce4:	00 
  5efce5:	4c 8b 9c 24 a0 03 00 	mov    0x3a0(%rsp),%r11
  5efcec:	00 
  5efced:	4c 8b a4 24 a8 03 00 	mov    0x3a8(%rsp),%r12
  5efcf4:	00 
  5efcf5:	4d 11 e3             	adc    %r12,%r11
  5efcf8:	4c 89 9c 24 50 03 00 	mov    %r11,0x350(%rsp)
  5efcff:	00 
  5efd00:	4c 8b a4 24 30 01 00 	mov    0x130(%rsp),%r12
  5efd07:	00 
  5efd08:	49 83 d4 00          	adc    $0x0,%r12
  5efd0c:	4c 89 a4 24 48 03 00 	mov    %r12,0x348(%rsp)
  5efd13:	00 
  5efd14:	48 8b 9c 24 80 03 00 	mov    0x380(%rsp),%rbx
  5efd1b:	00 
  5efd1c:	48 01 d3             	add    %rdx,%rbx
  5efd1f:	48 11 c6             	adc    %rax,%rsi
  5efd22:	48 11 cf             	adc    %rcx,%rdi
  5efd25:	4d 11 e9             	adc    %r13,%r9
  5efd28:	4d 11 c7             	adc    %r8,%r15
  5efd2b:	4c 89 bc 24 38 03 00 	mov    %r15,0x338(%rsp)
  5efd32:	00 
  5efd33:	4d 11 d3             	adc    %r10,%r11
  5efd36:	4c 89 9c 24 30 03 00 	mov    %r11,0x330(%rsp)
  5efd3d:	00 
  5efd3e:	4c 8b 94 24 b0 03 00 	mov    0x3b0(%rsp),%r10
  5efd45:	00 
  5efd46:	4d 11 d4             	adc    %r10,%r12
  5efd49:	4c 89 a4 24 28 03 00 	mov    %r12,0x328(%rsp)
  5efd50:	00 
  5efd51:	48 89 da             	mov    %rbx,%rdx
  5efd54:	49 ba 01 00 00 00 01 	movabs $0x100000001,%r10
  5efd5b:	00 00 00 
  5efd5e:	c4 42 bb f6 d2       	mulx   %r10,%r8,%r10
  5efd63:	4c 89 c2             	mov    %r8,%rdx
  5efd66:	49 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%r10
  5efd6d:	c4 42 93 f6 d2       	mulx   %r10,%r13,%r10
  5efd72:	48 c7 c1 fe ff ff ff 	mov    $0xfffffffffffffffe,%rcx
  5efd79:	c4 e2 fb f6 c9       	mulx   %rcx,%rax,%rcx
  5efd7e:	49 bc 00 00 00 00 ff 	movabs $0xffffffff00000000,%r12
  5efd85:	ff ff ff 
  5efd88:	c4 42 a3 f6 e4       	mulx   %r12,%r11,%r12
  5efd8d:	41 bf ff ff ff ff    	mov    $0xffffffff,%r15d
  5efd93:	c4 c2 bb f6 d7       	mulx   %r15,%r8,%rdx
  5efd98:	4c 01 da             	add    %r11,%rdx
  5efd9b:	49 11 c4             	adc    %rax,%r12
  5efd9e:	4c 11 e9             	adc    %r13,%rcx
  5efda1:	4c 89 e8             	mov    %r13,%rax
  5efda4:	4d 11 d5             	adc    %r10,%r13
  5efda7:	4c 11 d0             	adc    %r10,%rax
  5efdaa:	49 83 d2 00          	adc    $0x0,%r10
  5efdae:	4c 01 c3             	add    %r8,%rbx
  5efdb1:	48 11 f2             	adc    %rsi,%rdx
  5efdb4:	48 89 94 24 20 03 00 	mov    %rdx,0x320(%rsp)
  5efdbb:	00 
  5efdbc:	49 11 fc             	adc    %rdi,%r12
  5efdbf:	4c 89 a4 24 18 03 00 	mov    %r12,0x318(%rsp)
  5efdc6:	00 
  5efdc7:	4c 11 c9             	adc    %r9,%rcx
  5efdca:	48 89 8c 24 10 03 00 	mov    %rcx,0x310(%rsp)
  5efdd1:	00 
  5efdd2:	48 8b 9c 24 38 03 00 	mov    0x338(%rsp),%rbx
  5efdd9:	00 
  5efdda:	49 11 dd             	adc    %rbx,%r13
  5efddd:	4c 89 ac 24 08 03 00 	mov    %r13,0x308(%rsp)
  5efde4:	00 
  5efde5:	48 8b 9c 24 30 03 00 	mov    0x330(%rsp),%rbx
  5efdec:	00 
  5efded:	48 11 d8             	adc    %rbx,%rax
  5efdf0:	48 89 84 24 00 03 00 	mov    %rax,0x300(%rsp)
  5efdf7:	00 
  5efdf8:	48 8b 9c 24 28 03 00 	mov    0x328(%rsp),%rbx
  5efdff:	00 
  5efe00:	49 11 da             	adc    %rbx,%r10
  5efe03:	4c 89 94 24 f8 02 00 	mov    %r10,0x2f8(%rsp)
  5efe0a:	00 
  5efe0b:	0f 92 c3             	setb   %bl
  5efe0e:	0f b6 db             	movzbl %bl,%ebx
  5efe11:	48 8b b4 24 80 03 00 	mov    0x380(%rsp),%rsi
  5efe18:	00 
  5efe19:	48 8b bc 24 e8 03 00 	mov    0x3e8(%rsp),%rdi
  5efe20:	00 
  5efe21:	48 01 fe             	add    %rdi,%rsi
  5efe24:	48 8b b4 24 78 03 00 	mov    0x378(%rsp),%rsi
  5efe2b:	00 
  5efe2c:	48 8b bc 24 e0 03 00 	mov    0x3e0(%rsp),%rdi
  5efe33:	00 
  5efe34:	48 11 fe             	adc    %rdi,%rsi
  5efe37:	48 8b b4 24 68 03 00 	mov    0x368(%rsp),%rsi
  5efe3e:	00 
  5efe3f:	48 8b bc 24 d8 03 00 	mov    0x3d8(%rsp),%rdi
  5efe46:	00 
  5efe47:	48 11 fe             	adc    %rdi,%rsi
  5efe4a:	48 8b b4 24 60 03 00 	mov    0x360(%rsp),%rsi
  5efe51:	00 
  5efe52:	48 8b bc 24 d0 03 00 	mov    0x3d0(%rsp),%rdi
  5efe59:	00 
  5efe5a:	48 11 fe             	adc    %rdi,%rsi
  5efe5d:	48 8b b4 24 58 03 00 	mov    0x358(%rsp),%rsi
  5efe64:	00 
  5efe65:	48 8b bc 24 c0 03 00 	mov    0x3c0(%rsp),%rdi
  5efe6c:	00 
  5efe6d:	48 11 fe             	adc    %rdi,%rsi
  5efe70:	48 8b b4 24 50 03 00 	mov    0x350(%rsp),%rsi
  5efe77:	00 
  5efe78:	48 8b bc 24 b8 03 00 	mov    0x3b8(%rsp),%rdi
  5efe7f:	00 
  5efe80:	48 11 fe             	adc    %rdi,%rsi
  5efe83:	48 8b b4 24 48 03 00 	mov    0x348(%rsp),%rsi
  5efe8a:	00 
  5efe8b:	48 8b bc 24 b0 03 00 	mov    0x3b0(%rsp),%rdi
  5efe92:	00 
  5efe93:	48 11 fe             	adc    %rdi,%rsi
  5efe96:	48 83 d3 00          	adc    $0x0,%rbx
  5efe9a:	48 89 9c 24 f0 02 00 	mov    %rbx,0x2f0(%rsp)
  5efea1:	00 
  5efea2:	48 8b b4 24 c0 02 00 	mov    0x2c0(%rsp),%rsi
  5efea9:	00 
  5efeaa:	48 8b bc 24 f0 03 00 	mov    0x3f0(%rsp),%rdi
  5efeb1:	00 
  5efeb2:	48 01 fe             	add    %rdi,%rsi
  5efeb5:	48 89 b4 24 a8 02 00 	mov    %rsi,0x2a8(%rsp)
  5efebc:	00 
  5efebd:	48 8b bc 24 b8 02 00 	mov    0x2b8(%rsp),%rdi
  5efec4:	00 
  5efec5:	4c 8b 84 24 98 03 00 	mov    0x398(%rsp),%r8
  5efecc:	00 
  5efecd:	4c 11 c7             	adc    %r8,%rdi
  5efed0:	48 89 bc 24 a0 02 00 	mov    %rdi,0x2a0(%rsp)
  5efed7:	00 
  5efed8:	4c 8b 84 24 c8 02 00 	mov    0x2c8(%rsp),%r8
  5efedf:	00 
  5efee0:	4c 8b 8c 24 d8 02 00 	mov    0x2d8(%rsp),%r9
  5efee7:	00 
  5efee8:	4d 11 c8             	adc    %r9,%r8
  5efeeb:	4c 89 84 24 98 02 00 	mov    %r8,0x298(%rsp)
  5efef2:	00 
  5efef3:	4c 8b 8c 24 d0 02 00 	mov    0x2d0(%rsp),%r9
  5efefa:	00 
  5efefb:	4c 8b 9c 24 e0 02 00 	mov    0x2e0(%rsp),%r11
  5eff02:	00 
  5eff03:	4d 11 d9             	adc    %r11,%r9
  5eff06:	4c 89 8c 24 90 02 00 	mov    %r9,0x290(%rsp)
  5eff0d:	00 
  5eff0e:	4c 8b 9c 24 08 02 00 	mov    0x208(%rsp),%r11
  5eff15:	00 
  5eff16:	4c 8b bc 24 e8 02 00 	mov    0x2e8(%rsp),%r15
  5eff1d:	00 
  5eff1e:	4d 11 fb             	adc    %r15,%r11
  5eff21:	4c 89 9c 24 88 02 00 	mov    %r11,0x288(%rsp)
  5eff28:	00 
  5eff29:	4c 8b bc 24 38 01 00 	mov    0x138(%rsp),%r15
  5eff30:	00 
  5eff31:	49 83 d7 00          	adc    $0x0,%r15
  5eff35:	4c 89 bc 24 80 02 00 	mov    %r15,0x280(%rsp)
  5eff3c:	00 
  5eff3d:	48 8b 9c 24 b0 02 00 	mov    0x2b0(%rsp),%rbx
  5eff44:	00 
  5eff45:	48 01 d3             	add    %rdx,%rbx
  5eff48:	4c 11 e6             	adc    %r12,%rsi
  5eff4b:	48 11 cf             	adc    %rcx,%rdi
  5eff4e:	4d 11 e8             	adc    %r13,%r8
  5eff51:	49 11 c1             	adc    %rax,%r9
  5eff54:	4c 89 8c 24 78 02 00 	mov    %r9,0x278(%rsp)
  5eff5b:	00 
  5eff5c:	4d 11 d3             	adc    %r10,%r11
  5eff5f:	4c 89 9c 24 70 02 00 	mov    %r11,0x270(%rsp)
  5eff66:	00 
  5eff67:	4c 8b 94 24 f0 02 00 	mov    0x2f0(%rsp),%r10
  5eff6e:	00 
  5eff6f:	4d 11 d7             	adc    %r10,%r15
  5eff72:	4c 89 bc 24 68 02 00 	mov    %r15,0x268(%rsp)
  5eff79:	00 
  5eff7a:	48 89 da             	mov    %rbx,%rdx
  5eff7d:	49 ba 01 00 00 00 01 	movabs $0x100000001,%r10
  5eff84:	00 00 00 
  5eff87:	c4 42 fb f6 d2       	mulx   %r10,%rax,%r10
  5eff8c:	48 89 c2             	mov    %rax,%rdx
  5eff8f:	49 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%r10
  5eff96:	c4 42 93 f6 d2       	mulx   %r10,%r13,%r10
  5eff9b:	48 c7 c1 fe ff ff ff 	mov    $0xfffffffffffffffe,%rcx
  5effa2:	c4 e2 9b f6 c9       	mulx   %rcx,%r12,%rcx
  5effa7:	49 bf 00 00 00 00 ff 	movabs $0xffffffff00000000,%r15
  5effae:	ff ff ff 
  5effb1:	c4 42 a3 f6 ff       	mulx   %r15,%r11,%r15
  5effb6:	41 b9 ff ff ff ff    	mov    $0xffffffff,%r9d
  5effbc:	c4 c2 fb f6 d1       	mulx   %r9,%rax,%rdx
  5effc1:	4c 01 da             	add    %r11,%rdx
  5effc4:	4d 11 e7             	adc    %r12,%r15
  5effc7:	4c 11 e9             	adc    %r13,%rcx
  5effca:	4d 89 d3             	mov    %r10,%r11
  5effcd:	4d 11 ea             	adc    %r13,%r10
  5effd0:	4d 11 dd             	adc    %r11,%r13
  5effd3:	49 83 d3 00          	adc    $0x0,%r11
  5effd7:	48 01 c3             	add    %rax,%rbx
  5effda:	48 11 f2             	adc    %rsi,%rdx
  5effdd:	48 89 94 24 60 02 00 	mov    %rdx,0x260(%rsp)
  5effe4:	00 
  5effe5:	49 11 ff             	adc    %rdi,%r15
  5effe8:	4c 89 bc 24 58 02 00 	mov    %r15,0x258(%rsp)
  5effef:	00 
  5efff0:	4c 11 c1             	adc    %r8,%rcx
  5efff3:	48 89 8c 24 48 02 00 	mov    %rcx,0x248(%rsp)
  5efffa:	00 
  5efffb:	48 8b 84 24 78 02 00 	mov    0x278(%rsp),%rax
  5f0002:	00 
  5f0003:	49 11 c2             	adc    %rax,%r10
  5f0006:	4c 89 94 24 40 02 00 	mov    %r10,0x240(%rsp)
  5f000d:	00 
  5f000e:	48 8b 84 24 70 02 00 	mov    0x270(%rsp),%rax
  5f0015:	00 
  5f0016:	49 11 c5             	adc    %rax,%r13
  5f0019:	4c 89 ac 24 38 02 00 	mov    %r13,0x238(%rsp)
  5f0020:	00 
  5f0021:	48 8b 84 24 68 02 00 	mov    0x268(%rsp),%rax
  5f0028:	00 
  5f0029:	49 11 c3             	adc    %rax,%r11
  5f002c:	4c 89 9c 24 30 02 00 	mov    %r11,0x230(%rsp)
  5f0033:	00 
  5f0034:	0f 92 c0             	setb   %al
  5f0037:	0f b6 c0             	movzbl %al,%eax
  5f003a:	48 8b 9c 24 b0 02 00 	mov    0x2b0(%rsp),%rbx
  5f0041:	00 
  5f0042:	48 8b b4 24 20 03 00 	mov    0x320(%rsp),%rsi
  5f0049:	00 
  5f004a:	48 01 f3             	add    %rsi,%rbx
  5f004d:	48 8b 9c 24 a8 02 00 	mov    0x2a8(%rsp),%rbx
  5f0054:	00 
  5f0055:	48 8b b4 24 18 03 00 	mov    0x318(%rsp),%rsi
  5f005c:	00 
  5f005d:	48 11 f3             	adc    %rsi,%rbx
  5f0060:	48 8b 9c 24 a0 02 00 	mov    0x2a0(%rsp),%rbx
  5f0067:	00 
  5f0068:	48 8b b4 24 10 03 00 	mov    0x310(%rsp),%rsi
  5f006f:	00 
  5f0070:	48 11 f3             	adc    %rsi,%rbx
  5f0073:	48 8b 9c 24 98 02 00 	mov    0x298(%rsp),%rbx
  5f007a:	00 
  5f007b:	48 8b b4 24 08 03 00 	mov    0x308(%rsp),%rsi
  5f0082:	00 
  5f0083:	48 11 f3             	adc    %rsi,%rbx
  5f0086:	48 8b 9c 24 90 02 00 	mov    0x290(%rsp),%rbx
  5f008d:	00 
  5f008e:	48 8b b4 24 00 03 00 	mov    0x300(%rsp),%rsi
  5f0095:	00 
  5f0096:	48 11 f3             	adc    %rsi,%rbx
  5f0099:	48 8b 9c 24 88 02 00 	mov    0x288(%rsp),%rbx
  5f00a0:	00 
  5f00a1:	48 8b b4 24 f8 02 00 	mov    0x2f8(%rsp),%rsi
  5f00a8:	00 
  5f00a9:	48 11 f3             	adc    %rsi,%rbx
  5f00ac:	48 8b 9c 24 80 02 00 	mov    0x280(%rsp),%rbx
  5f00b3:	00 
  5f00b4:	48 8b b4 24 f0 02 00 	mov    0x2f0(%rsp),%rsi
  5f00bb:	00 
  5f00bc:	48 11 f3             	adc    %rsi,%rbx
  5f00bf:	48 83 d0 00          	adc    $0x0,%rax
  5f00c3:	48 89 84 24 28 02 00 	mov    %rax,0x228(%rsp)
  5f00ca:	00 
  5f00cb:	48 8b 9c 24 f8 01 00 	mov    0x1f8(%rsp),%rbx
  5f00d2:	00 
  5f00d3:	48 8b b4 24 10 04 00 	mov    0x410(%rsp),%rsi
  5f00da:	00 
  5f00db:	48 01 f3             	add    %rsi,%rbx
  5f00de:	48 89 9c 24 e8 01 00 	mov    %rbx,0x1e8(%rsp)
  5f00e5:	00 
  5f00e6:	48 8b b4 24 f0 01 00 	mov    0x1f0(%rsp),%rsi
  5f00ed:	00 
  5f00ee:	48 8b bc 24 00 02 00 	mov    0x200(%rsp),%rdi
  5f00f5:	00 
  5f00f6:	48 11 fe             	adc    %rdi,%rsi
  5f00f9:	48 89 b4 24 e0 01 00 	mov    %rsi,0x1e0(%rsp)
  5f0100:	00 
  5f0101:	48 8b bc 24 e0 02 00 	mov    0x2e0(%rsp),%rdi
  5f0108:	00 
  5f0109:	4c 8b 84 24 a0 03 00 	mov    0x3a0(%rsp),%r8
  5f0110:	00 
  5f0111:	4c 11 c7             	adc    %r8,%rdi
  5f0114:	48 89 bc 24 d8 01 00 	mov    %rdi,0x1d8(%rsp)
  5f011b:	00 
  5f011c:	4c 8b 84 24 08 02 00 	mov    0x208(%rsp),%r8
  5f0123:	00 
  5f0124:	4c 8b a4 24 18 02 00 	mov    0x218(%rsp),%r12
  5f012b:	00 
  5f012c:	4d 11 e0             	adc    %r12,%r8
  5f012f:	4c 89 84 24 d0 01 00 	mov    %r8,0x1d0(%rsp)
  5f0136:	00 
  5f0137:	4c 8b a4 24 48 01 00 	mov    0x148(%rsp),%r12
  5f013e:	00 
  5f013f:	4c 8b 8c 24 10 02 00 	mov    0x210(%rsp),%r9
  5f0146:	00 
  5f0147:	4d 11 e1             	adc    %r12,%r9
  5f014a:	4c 89 8c 24 c8 01 00 	mov    %r9,0x1c8(%rsp)
  5f0151:	00 
  5f0152:	4c 8b a4 24 20 02 00 	mov    0x220(%rsp),%r12
  5f0159:	00 
  5f015a:	49 83 d4 00          	adc    $0x0,%r12
  5f015e:	4c 89 a4 24 c0 01 00 	mov    %r12,0x1c0(%rsp)
  5f0165:	00 
  5f0166:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
  5f016b:	48 01 c2             	add    %rax,%rdx
  5f016e:	4c 11 fb             	adc    %r15,%rbx
  5f0171:	48 11 ce             	adc    %rcx,%rsi
  5f0174:	4c 11 d7             	adc    %r10,%rdi
  5f0177:	4d 11 e8             	adc    %r13,%r8
  5f017a:	4c 89 84 24 b8 01 00 	mov    %r8,0x1b8(%rsp)
  5f0181:	00 
  5f0182:	4d 11 d9             	adc    %r11,%r9
  5f0185:	4c 89 8c 24 b0 01 00 	mov    %r9,0x1b0(%rsp)
  5f018c:	00 
  5f018d:	4c 8b 9c 24 28 02 00 	mov    0x228(%rsp),%r11
  5f0194:	00 
  5f0195:	4d 11 dc             	adc    %r11,%r12
  5f0198:	4c 89 a4 24 a8 01 00 	mov    %r12,0x1a8(%rsp)
  5f019f:	00 
  5f01a0:	49 bb 01 00 00 00 01 	movabs $0x100000001,%r11
  5f01a7:	00 00 00 
  5f01aa:	c4 42 93 f6 db       	mulx   %r11,%r13,%r11
  5f01af:	49 89 d3             	mov    %rdx,%r11
  5f01b2:	4c 89 ea             	mov    %r13,%rdx
  5f01b5:	49 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%r10
  5f01bc:	c4 42 f3 f6 d2       	mulx   %r10,%rcx,%r10
  5f01c1:	49 c7 c7 fe ff ff ff 	mov    $0xfffffffffffffffe,%r15
  5f01c8:	c4 42 fb f6 ff       	mulx   %r15,%rax,%r15
  5f01cd:	49 bc 00 00 00 00 ff 	movabs $0xffffffff00000000,%r12
  5f01d4:	ff ff ff 
  5f01d7:	c4 42 b3 f6 e4       	mulx   %r12,%r9,%r12
  5f01dc:	41 b8 ff ff ff ff    	mov    $0xffffffff,%r8d
  5f01e2:	c4 c2 93 f6 d0       	mulx   %r8,%r13,%rdx
  5f01e7:	4c 01 ca             	add    %r9,%rdx
  5f01ea:	49 11 c4             	adc    %rax,%r12
  5f01ed:	49 11 cf             	adc    %rcx,%r15
  5f01f0:	48 89 c8             	mov    %rcx,%rax
  5f01f3:	4c 11 d1             	adc    %r10,%rcx
  5f01f6:	4c 11 d0             	adc    %r10,%rax
  5f01f9:	49 83 d2 00          	adc    $0x0,%r10
  5f01fd:	4d 01 eb             	add    %r13,%r11
  5f0200:	48 11 da             	adc    %rbx,%rdx
  5f0203:	48 89 94 24 90 01 00 	mov    %rdx,0x190(%rsp)
  5f020a:	00 
  5f020b:	49 11 f4             	adc    %rsi,%r12
  5f020e:	4c 89 a4 24 88 01 00 	mov    %r12,0x188(%rsp)
  5f0215:	00 
  5f0216:	49 11 ff             	adc    %rdi,%r15
  5f0219:	4c 89 bc 24 80 01 00 	mov    %r15,0x180(%rsp)
  5f0220:	00 
  5f0221:	48 8b 9c 24 b8 01 00 	mov    0x1b8(%rsp),%rbx
  5f0228:	00 
  5f0229:	48 11 d9             	adc    %rbx,%rcx
  5f022c:	48 89 8c 24 78 01 00 	mov    %rcx,0x178(%rsp)
  5f0233:	00 
  5f0234:	48 8b 9c 24 b0 01 00 	mov    0x1b0(%rsp),%rbx
  5f023b:	00 
  5f023c:	48 11 d8             	adc    %rbx,%rax
  5f023f:	48 89 84 24 70 01 00 	mov    %rax,0x170(%rsp)
  5f0246:	00 
  5f0247:	48 8b 9c 24 a8 01 00 	mov    0x1a8(%rsp),%rbx
  5f024e:	00 
  5f024f:	49 11 da             	adc    %rbx,%r10
  5f0252:	4c 89 94 24 68 01 00 	mov    %r10,0x168(%rsp)
  5f0259:	00 
  5f025a:	0f 92 c3             	setb   %bl
  5f025d:	0f b6 db             	movzbl %bl,%ebx
  5f0260:	48 8b b4 24 60 02 00 	mov    0x260(%rsp),%rsi
  5f0267:	00 
  5f0268:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
  5f026d:	48 01 fe             	add    %rdi,%rsi
  5f0270:	48 8b b4 24 e8 01 00 	mov    0x1e8(%rsp),%rsi
  5f0277:	00 
  5f0278:	48 8b bc 24 58 02 00 	mov    0x258(%rsp),%rdi
  5f027f:	00 
  5f0280:	48 11 fe             	adc    %rdi,%rsi
  5f0283:	48 8b b4 24 e0 01 00 	mov    0x1e0(%rsp),%rsi
  5f028a:	00 
  5f028b:	48 8b bc 24 48 02 00 	mov    0x248(%rsp),%rdi
  5f0292:	00 
  5f0293:	48 11 fe             	adc    %rdi,%rsi
  5f0296:	48 8b b4 24 d8 01 00 	mov    0x1d8(%rsp),%rsi
  5f029d:	00 
  5f029e:	48 8b bc 24 40 02 00 	mov    0x240(%rsp),%rdi
  5f02a5:	00 
  5f02a6:	48 11 fe             	adc    %rdi,%rsi
  5f02a9:	48 8b b4 24 d0 01 00 	mov    0x1d0(%rsp),%rsi
  5f02b0:	00 
  5f02b1:	48 8b bc 24 38 02 00 	mov    0x238(%rsp),%rdi
  5f02b8:	00 
  5f02b9:	48 11 fe             	adc    %rdi,%rsi
  5f02bc:	48 8b b4 24 c8 01 00 	mov    0x1c8(%rsp),%rsi
  5f02c3:	00 
  5f02c4:	48 8b bc 24 30 02 00 	mov    0x230(%rsp),%rdi
  5f02cb:	00 
  5f02cc:	48 11 fe             	adc    %rdi,%rsi
  5f02cf:	48 8b b4 24 c0 01 00 	mov    0x1c0(%rsp),%rsi
  5f02d6:	00 
  5f02d7:	48 8b bc 24 28 02 00 	mov    0x228(%rsp),%rdi
  5f02de:	00 
  5f02df:	48 11 fe             	adc    %rdi,%rsi
  5f02e2:	48 83 d3 00          	adc    $0x0,%rbx
  5f02e6:	48 89 9c 24 60 01 00 	mov    %rbx,0x160(%rsp)
  5f02ed:	00 
  5f02ee:	48 8b b4 24 20 01 00 	mov    0x120(%rsp),%rsi
  5f02f5:	00 
  5f02f6:	48 8b 7c 24 68       	mov    0x68(%rsp),%rdi
  5f02fb:	48 01 fe             	add    %rdi,%rsi
  5f02fe:	48 89 b4 24 18 01 00 	mov    %rsi,0x118(%rsp)
  5f0305:	00 
  5f0306:	48 8b bc 24 a8 03 00 	mov    0x3a8(%rsp),%rdi
  5f030d:	00 
  5f030e:	4c 8b 4c 24 60       	mov    0x60(%rsp),%r9
  5f0313:	4c 11 cf             	adc    %r9,%rdi
  5f0316:	48 89 bc 24 08 01 00 	mov    %rdi,0x108(%rsp)
  5f031d:	00 
  5f031e:	4c 8b 8c 24 30 01 00 	mov    0x130(%rsp),%r9
  5f0325:	00 
  5f0326:	4c 8b 9c 24 e8 02 00 	mov    0x2e8(%rsp),%r11
  5f032d:	00 
  5f032e:	4d 11 d9             	adc    %r11,%r9
  5f0331:	4c 89 8c 24 00 01 00 	mov    %r9,0x100(%rsp)
  5f0338:	00 
  5f0339:	4c 8b 9c 24 38 01 00 	mov    0x138(%rsp),%r11
  5f0340:	00 
  5f0341:	4c 8b ac 24 48 01 00 	mov    0x148(%rsp),%r13
  5f0348:	00 
  5f0349:	4d 11 eb             	adc    %r13,%r11
  5f034c:	4c 89 9c 24 f8 00 00 	mov    %r11,0xf8(%rsp)
  5f0353:	00 
  5f0354:	4c 8b ac 24 58 01 00 	mov    0x158(%rsp),%r13
  5f035b:	00 
  5f035c:	4c 8b 84 24 20 02 00 	mov    0x220(%rsp),%r8
  5f0363:	00 
  5f0364:	4d 11 c5             	adc    %r8,%r13
  5f0367:	4c 89 ac 24 f0 00 00 	mov    %r13,0xf0(%rsp)
  5f036e:	00 
  5f036f:	4c 8b 84 24 50 01 00 	mov    0x150(%rsp),%r8
  5f0376:	00 
  5f0377:	49 83 d0 00          	adc    $0x0,%r8
  5f037b:	4c 89 84 24 e8 00 00 	mov    %r8,0xe8(%rsp)
  5f0382:	00 
  5f0383:	48 8b 9c 24 28 01 00 	mov    0x128(%rsp),%rbx
  5f038a:	00 
  5f038b:	48 01 d3             	add    %rdx,%rbx
  5f038e:	4c 11 e6             	adc    %r12,%rsi
  5f0391:	4c 11 ff             	adc    %r15,%rdi
  5f0394:	49 11 c9             	adc    %rcx,%r9
  5f0397:	49 11 c3             	adc    %rax,%r11
  5f039a:	4c 89 9c 24 d8 00 00 	mov    %r11,0xd8(%rsp)
  5f03a1:	00 
  5f03a2:	4d 11 d5             	adc    %r10,%r13
  5f03a5:	4c 89 ac 24 c8 00 00 	mov    %r13,0xc8(%rsp)
  5f03ac:	00 
  5f03ad:	4c 8b 94 24 60 01 00 	mov    0x160(%rsp),%r10
  5f03b4:	00 
  5f03b5:	4d 11 d0             	adc    %r10,%r8
  5f03b8:	4c 89 84 24 c0 00 00 	mov    %r8,0xc0(%rsp)
  5f03bf:	00 
  5f03c0:	48 89 da             	mov    %rbx,%rdx
  5f03c3:	49 ba 01 00 00 00 01 	movabs $0x100000001,%r10
  5f03ca:	00 00 00 
  5f03cd:	c4 42 fb f6 d2       	mulx   %r10,%rax,%r10
  5f03d2:	48 89 c2             	mov    %rax,%rdx
  5f03d5:	49 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%r10
  5f03dc:	c4 42 f3 f6 d2       	mulx   %r10,%rcx,%r10
  5f03e1:	49 c7 c7 fe ff ff ff 	mov    $0xfffffffffffffffe,%r15
  5f03e8:	c4 42 9b f6 ff       	mulx   %r15,%r12,%r15
  5f03ed:	49 b8 00 00 00 00 ff 	movabs $0xffffffff00000000,%r8
  5f03f4:	ff ff ff 
  5f03f7:	c4 42 93 f6 c0       	mulx   %r8,%r13,%r8
  5f03fc:	41 bb ff ff ff ff    	mov    $0xffffffff,%r11d
  5f0402:	c4 c2 eb f6 c3       	mulx   %r11,%rdx,%rax
  5f0407:	4c 01 e8             	add    %r13,%rax
  5f040a:	4d 11 e0             	adc    %r12,%r8
  5f040d:	49 11 cf             	adc    %rcx,%r15
  5f0410:	49 89 cc             	mov    %rcx,%r12
  5f0413:	4c 11 d1             	adc    %r10,%rcx
  5f0416:	4d 11 d4             	adc    %r10,%r12
  5f0419:	49 83 d2 00          	adc    $0x0,%r10
  5f041d:	48 01 d3             	add    %rdx,%rbx
  5f0420:	48 11 f0             	adc    %rsi,%rax
  5f0423:	49 11 f8             	adc    %rdi,%r8
  5f0426:	4d 11 cf             	adc    %r9,%r15
  5f0429:	48 8b 9c 24 d8 00 00 	mov    0xd8(%rsp),%rbx
  5f0430:	00 
  5f0431:	48 11 d9             	adc    %rbx,%rcx
  5f0434:	48 8b 9c 24 c8 00 00 	mov    0xc8(%rsp),%rbx
  5f043b:	00 
  5f043c:	49 11 dc             	adc    %rbx,%r12
  5f043f:	48 8b 9c 24 c0 00 00 	mov    0xc0(%rsp),%rbx
  5f0446:	00 
  5f0447:	49 11 da             	adc    %rbx,%r10
  5f044a:	0f 92 c3             	setb   %bl
  5f044d:	0f b6 db             	movzbl %bl,%ebx
  5f0450:	48 8b b4 24 28 01 00 	mov    0x128(%rsp),%rsi
  5f0457:	00 
  5f0458:	48 8b bc 24 90 01 00 	mov    0x190(%rsp),%rdi
  5f045f:	00 
  5f0460:	48 01 fe             	add    %rdi,%rsi
  5f0463:	48 8b b4 24 18 01 00 	mov    0x118(%rsp),%rsi
  5f046a:	00 
  5f046b:	48 8b bc 24 88 01 00 	mov    0x188(%rsp),%rdi
  5f0472:	00 
  5f0473:	48 11 fe             	adc    %rdi,%rsi
  5f0476:	48 8b b4 24 08 01 00 	mov    0x108(%rsp),%rsi
  5f047d:	00 
  5f047e:	48 8b bc 24 80 01 00 	mov    0x180(%rsp),%rdi
  5f0485:	00 
  5f0486:	48 11 fe             	adc    %rdi,%rsi
  5f0489:	48 8b b4 24 00 01 00 	mov    0x100(%rsp),%rsi
  5f0490:	00 
  5f0491:	48 8b bc 24 78 01 00 	mov    0x178(%rsp),%rdi
  5f0498:	00 
  5f0499:	48 11 fe             	adc    %rdi,%rsi
  5f049c:	48 8b b4 24 f8 00 00 	mov    0xf8(%rsp),%rsi
  5f04a3:	00 
  5f04a4:	48 8b bc 24 70 01 00 	mov    0x170(%rsp),%rdi
  5f04ab:	00 
  5f04ac:	48 11 fe             	adc    %rdi,%rsi
  5f04af:	48 8b b4 24 f0 00 00 	mov    0xf0(%rsp),%rsi
  5f04b6:	00 
  5f04b7:	48 8b bc 24 68 01 00 	mov    0x168(%rsp),%rdi
  5f04be:	00 
  5f04bf:	48 11 fe             	adc    %rdi,%rsi
  5f04c2:	48 8b b4 24 e8 00 00 	mov    0xe8(%rsp),%rsi
  5f04c9:	00 
  5f04ca:	48 8b bc 24 60 01 00 	mov    0x160(%rsp),%rdi
  5f04d1:	00 
  5f04d2:	48 11 fe             	adc    %rdi,%rsi
  5f04d5:	48 83 d3 00          	adc    $0x0,%rbx
  5f04d9:	48 89 c6             	mov    %rax,%rsi
  5f04dc:	4c 29 d8             	sub    %r11,%rax
  5f04df:	48 bf 00 00 00 00 ff 	movabs $0xffffffff00000000,%rdi
  5f04e6:	ff ff ff 
  5f04e9:	4d 89 c1             	mov    %r8,%r9
  5f04ec:	49 19 f8             	sbb    %rdi,%r8
  5f04ef:	4c 89 ff             	mov    %r15,%rdi
  5f04f2:	49 83 df fe          	sbb    $0xfffffffffffffffe,%r15
  5f04f6:	49 89 cb             	mov    %rcx,%r11
  5f04f9:	48 83 d9 ff          	sbb    $0xffffffffffffffff,%rcx
  5f04fd:	4d 89 e5             	mov    %r12,%r13
  5f0500:	49 83 dc ff          	sbb    $0xffffffffffffffff,%r12
  5f0504:	4c 89 d2             	mov    %r10,%rdx
  5f0507:	49 83 da ff          	sbb    $0xffffffffffffffff,%r10
  5f050b:	48 83 db 00          	sbb    $0x0,%rbx
  5f050f:	0f 92 c3             	setb   %bl
  5f0512:	0f b6 db             	movzbl %bl,%ebx
  5f0515:	48 f7 db             	neg    %rbx
  5f0518:	48 21 de             	and    %rbx,%rsi
  5f051b:	c4 e2 e0 f2 c0       	andn   %rax,%rbx,%rax
  5f0520:	48 09 c6             	or     %rax,%rsi
  5f0523:	48 8b 84 24 28 04 00 	mov    0x428(%rsp),%rax
  5f052a:	00 
  5f052b:	48 89 30             	mov    %rsi,(%rax)
  5f052e:	49 21 d9             	and    %rbx,%r9
  5f0531:	c4 c2 e0 f2 f0       	andn   %r8,%rbx,%rsi
  5f0536:	49 09 f1             	or     %rsi,%r9
  5f0539:	4c 89 48 08          	mov    %r9,0x8(%rax)
  5f053d:	48 21 df             	and    %rbx,%rdi
  5f0540:	c4 c2 e0 f2 f7       	andn   %r15,%rbx,%rsi
  5f0545:	48 09 f7             	or     %rsi,%rdi
  5f0548:	48 89 78 10          	mov    %rdi,0x10(%rax)
  5f054c:	49 21 db             	and    %rbx,%r11
  5f054f:	c4 e2 e0 f2 c9       	andn   %rcx,%rbx,%rcx
  5f0554:	4c 09 d9             	or     %r11,%rcx
  5f0557:	48 89 48 18          	mov    %rcx,0x18(%rax)
  5f055b:	49 21 dd             	and    %rbx,%r13
  5f055e:	c4 c2 e0 f2 cc       	andn   %r12,%rbx,%rcx
  5f0563:	49 09 cd             	or     %rcx,%r13
  5f0566:	4c 89 68 20          	mov    %r13,0x20(%rax)
  5f056a:	48 21 da             	and    %rbx,%rdx
  5f056d:	c4 c2 e0 f2 ca       	andn   %r10,%rbx,%rcx
  5f0572:	48 09 ca             	or     %rcx,%rdx
  5f0575:	48 89 50 28          	mov    %rdx,0x28(%rax)
  5f0579:	c9                   	leave
  5f057a:	c3                   	ret
  5f057b:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  5f0580:	48 89 5c 24 10       	mov    %rbx,0x10(%rsp)
  5f0585:	e8 96 a5 e9 ff       	call   48ab20 <runtime.morestack_noctxt.abi0>
  5f058a:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
  5f058f:	48 8b 5c 24 10       	mov    0x10(%rsp),%rbx
  5f0594:	e9 87 f1 ff ff       	jmp    5ef720 <example.com/p384issue.Square>
