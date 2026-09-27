
/home/exedev/crypto-audit/round4/bin/ecdh-v3-square.test:     file format elf64-x86-64


Disassembly of section .text:

00000000005f5980 <crypto/internal/fips140/nistec/fiat.p384Square>:
  5f5980:	4c 8d a4 24 60 fc ff 	lea    -0x3a0(%rsp),%r12
  5f5987:	ff 
  5f5988:	4d 3b 66 10          	cmp    0x10(%r14),%r12
  5f598c:	0f 86 49 0e 00 00    	jbe    5f67db <crypto/internal/fips140/nistec/fiat.p384Square+0xe5b>
  5f5992:	55                   	push   %rbp
  5f5993:	48 89 e5             	mov    %rsp,%rbp
  5f5996:	48 81 ec 18 04 00 00 	sub    $0x418,%rsp
  5f599d:	48 89 84 24 28 04 00 	mov    %rax,0x428(%rsp)
  5f59a4:	00 
  5f59a5:	48 8b 4b 10          	mov    0x10(%rbx),%rcx
  5f59a9:	48 8b 53 08          	mov    0x8(%rbx),%rdx
  5f59ad:	c4 e2 c3 f6 f1       	mulx   %rcx,%rdi,%rsi
  5f59b2:	48 89 74 24 50       	mov    %rsi,0x50(%rsp)
  5f59b7:	48 89 7c 24 58       	mov    %rdi,0x58(%rsp)
  5f59bc:	c4 62 b3 f6 c2       	mulx   %rdx,%r9,%r8
  5f59c1:	4c 89 44 24 40       	mov    %r8,0x40(%rsp)
  5f59c6:	4c 89 4c 24 48       	mov    %r9,0x48(%rsp)
  5f59cb:	49 89 d2             	mov    %rdx,%r10
  5f59ce:	48 89 ca             	mov    %rcx,%rdx
  5f59d1:	c4 62 9b f6 d9       	mulx   %rcx,%r12,%r11
  5f59d6:	4c 89 9c 24 88 03 00 	mov    %r11,0x388(%rsp)
  5f59dd:	00 
  5f59de:	4c 89 a4 24 90 03 00 	mov    %r12,0x390(%rsp)
  5f59e5:	00 
  5f59e6:	4c 8b 6b 28          	mov    0x28(%rbx),%r13
  5f59ea:	4c 89 ea             	mov    %r13,%rdx
  5f59ed:	c4 42 fb f6 fa       	mulx   %r10,%rax,%r15
  5f59f2:	4c 89 7c 24 60       	mov    %r15,0x60(%rsp)
  5f59f7:	48 89 44 24 68       	mov    %rax,0x68(%rsp)
  5f59fc:	4c 8b 5b 18          	mov    0x18(%rbx),%r11
  5f5a00:	4c 89 da             	mov    %r11,%rdx
  5f5a03:	c4 42 83 f6 e2       	mulx   %r10,%r15,%r12
  5f5a08:	4c 89 a4 24 b8 02 00 	mov    %r12,0x2b8(%rsp)
  5f5a0f:	00 
  5f5a10:	4c 89 bc 24 c0 02 00 	mov    %r15,0x2c0(%rsp)
  5f5a17:	00 
  5f5a18:	c4 e2 9b f6 c1       	mulx   %rcx,%r12,%rax
  5f5a1d:	4c 89 a4 24 98 03 00 	mov    %r12,0x398(%rsp)
  5f5a24:	00 
  5f5a25:	48 89 84 24 c8 02 00 	mov    %rax,0x2c8(%rsp)
  5f5a2c:	00 
  5f5a2d:	c4 e2 9b f6 c2       	mulx   %rdx,%r12,%rax
  5f5a32:	48 89 84 24 d0 02 00 	mov    %rax,0x2d0(%rsp)
  5f5a39:	00 
  5f5a3a:	4c 89 a4 24 d8 02 00 	mov    %r12,0x2d8(%rsp)
  5f5a41:	00 
  5f5a42:	48 8b 43 20          	mov    0x20(%rbx),%rax
  5f5a46:	48 89 c2             	mov    %rax,%rdx
  5f5a49:	c4 42 cb f6 e5       	mulx   %r13,%rsi,%r12
  5f5a4e:	4c 89 a4 24 20 02 00 	mov    %r12,0x220(%rsp)
  5f5a55:	00 
  5f5a56:	48 89 b4 24 48 01 00 	mov    %rsi,0x148(%rsp)
  5f5a5d:	00 
  5f5a5e:	c4 62 cb f6 e0       	mulx   %rax,%rsi,%r12
  5f5a63:	4c 89 a4 24 10 02 00 	mov    %r12,0x210(%rsp)
  5f5a6a:	00 
  5f5a6b:	48 89 b4 24 18 02 00 	mov    %rsi,0x218(%rsp)
  5f5a72:	00 
  5f5a73:	c4 42 cb f6 e3       	mulx   %r11,%rsi,%r12
  5f5a78:	48 89 b4 24 e0 02 00 	mov    %rsi,0x2e0(%rsp)
  5f5a7f:	00 
  5f5a80:	4c 89 a4 24 08 02 00 	mov    %r12,0x208(%rsp)
  5f5a87:	00 
  5f5a88:	c4 62 cb f6 e1       	mulx   %rcx,%rsi,%r12
  5f5a8d:	4c 89 a4 24 a0 03 00 	mov    %r12,0x3a0(%rsp)
  5f5a94:	00 
  5f5a95:	48 89 b4 24 00 02 00 	mov    %rsi,0x200(%rsp)
  5f5a9c:	00 
  5f5a9d:	c4 42 cb f6 e2       	mulx   %r10,%rsi,%r12
  5f5aa2:	4c 89 a4 24 f0 01 00 	mov    %r12,0x1f0(%rsp)
  5f5aa9:	00 
  5f5aaa:	48 89 b4 24 f8 01 00 	mov    %rsi,0x1f8(%rsp)
  5f5ab1:	00 
  5f5ab2:	48 8b 1b             	mov    (%rbx),%rbx
  5f5ab5:	48 89 da             	mov    %rbx,%rdx
  5f5ab8:	c4 42 cb f6 e5       	mulx   %r13,%rsi,%r12
  5f5abd:	4c 89 a4 24 20 01 00 	mov    %r12,0x120(%rsp)
  5f5ac4:	00 
  5f5ac5:	48 89 b4 24 28 01 00 	mov    %rsi,0x128(%rsp)
  5f5acc:	00 
  5f5acd:	c4 62 c3 f6 f9       	mulx   %rcx,%rdi,%r15
  5f5ad2:	4c 89 bc 24 c8 03 00 	mov    %r15,0x3c8(%rsp)
  5f5ad9:	00 
  5f5ada:	48 89 bc 24 80 03 00 	mov    %rdi,0x380(%rsp)
  5f5ae1:	00 
  5f5ae2:	c4 62 b3 f6 c2       	mulx   %rdx,%r9,%r8
  5f5ae7:	4c 89 8c 24 40 03 00 	mov    %r9,0x340(%rsp)
  5f5aee:	00 
  5f5aef:	48 ba 01 00 00 00 01 	movabs $0x100000001,%rdx
  5f5af6:	00 00 00 
  5f5af9:	c4 c2 b3 f6 d1       	mulx   %r9,%r9,%rdx
  5f5afe:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
  5f5b05:	c4 c2 9b f6 d1       	mulx   %r9,%r12,%rdx
  5f5b0a:	48 89 94 24 a0 01 00 	mov    %rdx,0x1a0(%rsp)
  5f5b11:	00 
  5f5b12:	4c 89 a4 24 98 01 00 	mov    %r12,0x198(%rsp)
  5f5b19:	00 
  5f5b1a:	48 c7 c2 fe ff ff ff 	mov    $0xfffffffffffffffe,%rdx
  5f5b21:	c4 c2 9b f6 d1       	mulx   %r9,%r12,%rdx
  5f5b26:	48 89 94 24 10 01 00 	mov    %rdx,0x110(%rsp)
  5f5b2d:	00 
  5f5b2e:	4c 89 a4 24 40 01 00 	mov    %r12,0x140(%rsp)
  5f5b35:	00 
  5f5b36:	48 ba 00 00 00 00 ff 	movabs $0xffffffff00000000,%rdx
  5f5b3d:	ff ff ff 
  5f5b40:	c4 c2 9b f6 d1       	mulx   %r9,%r12,%rdx
  5f5b45:	48 89 94 24 d0 00 00 	mov    %rdx,0xd0(%rsp)
  5f5b4c:	00 
  5f5b4d:	4c 89 a4 24 e0 00 00 	mov    %r12,0xe0(%rsp)
  5f5b54:	00 
  5f5b55:	ba ff ff ff ff       	mov    $0xffffffff,%edx
  5f5b5a:	c4 42 eb f6 c9       	mulx   %r9,%rdx,%r9
  5f5b5f:	4c 89 8c 24 b0 00 00 	mov    %r9,0xb0(%rsp)
  5f5b66:	00 
  5f5b67:	48 89 94 24 b8 00 00 	mov    %rdx,0xb8(%rsp)
  5f5b6e:	00 
  5f5b6f:	48 89 da             	mov    %rbx,%rdx
  5f5b72:	c4 42 b3 f6 d2       	mulx   %r10,%r9,%r10
  5f5b77:	4c 89 94 24 70 03 00 	mov    %r10,0x370(%rsp)
  5f5b7e:	00 
  5f5b7f:	4c 89 4c 24 38       	mov    %r9,0x38(%rsp)
  5f5b84:	c4 42 cb f6 e3       	mulx   %r11,%rsi,%r12
  5f5b89:	4c 89 a4 24 f0 03 00 	mov    %r12,0x3f0(%rsp)
  5f5b90:	00 
  5f5b91:	48 89 b4 24 b0 02 00 	mov    %rsi,0x2b0(%rsp)
  5f5b98:	00 
  5f5b99:	c4 e2 e3 f6 c0       	mulx   %rax,%rbx,%rax
  5f5b9e:	48 89 84 24 10 04 00 	mov    %rax,0x410(%rsp)
  5f5ba5:	00 
  5f5ba6:	48 89 5c 24 08       	mov    %rbx,0x8(%rsp)
  5f5bab:	4c 89 ea             	mov    %r13,%rdx
  5f5bae:	c4 e2 e3 f6 c2       	mulx   %rdx,%rbx,%rax
  5f5bb3:	48 89 84 24 50 01 00 	mov    %rax,0x150(%rsp)
  5f5bba:	00 
  5f5bbb:	48 89 9c 24 58 01 00 	mov    %rbx,0x158(%rsp)
  5f5bc2:	00 
  5f5bc3:	4c 89 da             	mov    %r11,%rdx
  5f5bc6:	c4 42 eb f6 dd       	mulx   %r13,%rdx,%r11
  5f5bcb:	48 89 94 24 e8 02 00 	mov    %rdx,0x2e8(%rsp)
  5f5bd2:	00 
  5f5bd3:	4c 89 9c 24 38 01 00 	mov    %r11,0x138(%rsp)
  5f5bda:	00 
  5f5bdb:	4c 89 ea             	mov    %r13,%rdx
  5f5bde:	c4 e2 93 f6 c9       	mulx   %rcx,%r13,%rcx
  5f5be3:	4c 89 ac 24 a8 03 00 	mov    %r13,0x3a8(%rsp)
  5f5bea:	00 
  5f5beb:	48 89 8c 24 30 01 00 	mov    %rcx,0x130(%rsp)
  5f5bf2:	00 
  5f5bf3:	90                   	nop
  5f5bf4:	90                   	nop
  5f5bf5:	90                   	nop
  5f5bf6:	90                   	nop
  5f5bf7:	90                   	nop
  5f5bf8:	90                   	nop
  5f5bf9:	4d 01 c8             	add    %r9,%r8
  5f5bfc:	4c 11 d7             	adc    %r10,%rdi
  5f5bff:	4c 11 fe             	adc    %r15,%rsi
  5f5c02:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
  5f5c07:	49 11 c4             	adc    %rax,%r12
  5f5c0a:	48 8b 9c 24 28 01 00 	mov    0x128(%rsp),%rbx
  5f5c11:	00 
  5f5c12:	48 8b 84 24 10 04 00 	mov    0x410(%rsp),%rax
  5f5c19:	00 
  5f5c1a:	48 11 c3             	adc    %rax,%rbx
  5f5c1d:	48 8b 84 24 20 01 00 	mov    0x120(%rsp),%rax
  5f5c24:	00 
  5f5c25:	48 83 d0 00          	adc    $0x0,%rax
  5f5c29:	48 89 84 24 50 02 00 	mov    %rax,0x250(%rsp)
  5f5c30:	00 
  5f5c31:	4c 8b 9c 24 b0 00 00 	mov    0xb0(%rsp),%r11
  5f5c38:	00 
  5f5c39:	48 8b 8c 24 e0 00 00 	mov    0xe0(%rsp),%rcx
  5f5c40:	00 
  5f5c41:	49 01 cb             	add    %rcx,%r11
  5f5c44:	48 8b 8c 24 d0 00 00 	mov    0xd0(%rsp),%rcx
  5f5c4b:	00 
  5f5c4c:	4c 8b ac 24 40 01 00 	mov    0x140(%rsp),%r13
  5f5c53:	00 
  5f5c54:	4c 11 e9             	adc    %r13,%rcx
  5f5c57:	4c 8b ac 24 10 01 00 	mov    0x110(%rsp),%r13
  5f5c5e:	00 
  5f5c5f:	4c 8b bc 24 98 01 00 	mov    0x198(%rsp),%r15
  5f5c66:	00 
  5f5c67:	4d 11 fd             	adc    %r15,%r13
  5f5c6a:	4c 8b 8c 24 a0 01 00 	mov    0x1a0(%rsp),%r9
  5f5c71:	00 
  5f5c72:	4d 11 cf             	adc    %r9,%r15
  5f5c75:	4c 8b 94 24 98 01 00 	mov    0x198(%rsp),%r10
  5f5c7c:	00 
  5f5c7d:	4d 11 ca             	adc    %r9,%r10
  5f5c80:	49 83 d1 00          	adc    $0x0,%r9
  5f5c84:	4c 89 8c 24 a8 00 00 	mov    %r9,0xa8(%rsp)
  5f5c8b:	00 
  5f5c8c:	48 8b 84 24 40 03 00 	mov    0x340(%rsp),%rax
  5f5c93:	00 
  5f5c94:	4c 8b 8c 24 b8 00 00 	mov    0xb8(%rsp),%r9
  5f5c9b:	00 
  5f5c9c:	4c 01 c8             	add    %r9,%rax
  5f5c9f:	4d 11 c3             	adc    %r8,%r11
  5f5ca2:	4c 89 9c 24 a0 00 00 	mov    %r11,0xa0(%rsp)
  5f5ca9:	00 
  5f5caa:	48 11 f9             	adc    %rdi,%rcx
  5f5cad:	48 89 8c 24 98 00 00 	mov    %rcx,0x98(%rsp)
  5f5cb4:	00 
  5f5cb5:	49 11 f5             	adc    %rsi,%r13
  5f5cb8:	4c 89 ac 24 90 00 00 	mov    %r13,0x90(%rsp)
  5f5cbf:	00 
  5f5cc0:	4d 11 e7             	adc    %r12,%r15
  5f5cc3:	4c 89 bc 24 88 00 00 	mov    %r15,0x88(%rsp)
  5f5cca:	00 
  5f5ccb:	49 11 da             	adc    %rbx,%r10
  5f5cce:	4c 89 94 24 80 00 00 	mov    %r10,0x80(%rsp)
  5f5cd5:	00 
  5f5cd6:	48 8b 84 24 a8 00 00 	mov    0xa8(%rsp),%rax
  5f5cdd:	00 
  5f5cde:	48 8b 9c 24 50 02 00 	mov    0x250(%rsp),%rbx
  5f5ce5:	00 
  5f5ce6:	48 11 d8             	adc    %rbx,%rax
  5f5ce9:	48 89 44 24 78       	mov    %rax,0x78(%rsp)
  5f5cee:	0f 92 c3             	setb   %bl
  5f5cf1:	0f b6 db             	movzbl %bl,%ebx
  5f5cf4:	48 89 5c 24 70       	mov    %rbx,0x70(%rsp)
  5f5cf9:	48 8b 74 24 48       	mov    0x48(%rsp),%rsi
  5f5cfe:	48 8b bc 24 70 03 00 	mov    0x370(%rsp),%rdi
  5f5d05:	00 
  5f5d06:	48 01 fe             	add    %rdi,%rsi
  5f5d09:	48 89 74 24 30       	mov    %rsi,0x30(%rsp)
  5f5d0e:	48 8b 7c 24 40       	mov    0x40(%rsp),%rdi
  5f5d13:	4c 8b 44 24 58       	mov    0x58(%rsp),%r8
  5f5d18:	4c 11 c7             	adc    %r8,%rdi
  5f5d1b:	48 89 7c 24 28       	mov    %rdi,0x28(%rsp)
  5f5d20:	4c 8b 8c 24 c0 02 00 	mov    0x2c0(%rsp),%r9
  5f5d27:	00 
  5f5d28:	4c 8b 64 24 50       	mov    0x50(%rsp),%r12
  5f5d2d:	4d 11 e1             	adc    %r12,%r9
  5f5d30:	4c 89 4c 24 20       	mov    %r9,0x20(%rsp)
  5f5d35:	4c 8b a4 24 f8 01 00 	mov    0x1f8(%rsp),%r12
  5f5d3c:	00 
  5f5d3d:	4c 8b 84 24 b8 02 00 	mov    0x2b8(%rsp),%r8
  5f5d44:	00 
  5f5d45:	4d 11 c4             	adc    %r8,%r12
  5f5d48:	4c 89 64 24 18       	mov    %r12,0x18(%rsp)
  5f5d4d:	4c 8b 84 24 f0 01 00 	mov    0x1f0(%rsp),%r8
  5f5d54:	00 
  5f5d55:	48 8b 5c 24 68       	mov    0x68(%rsp),%rbx
  5f5d5a:	49 11 d8             	adc    %rbx,%r8
  5f5d5d:	4c 89 44 24 10       	mov    %r8,0x10(%rsp)
  5f5d62:	48 8b 5c 24 60       	mov    0x60(%rsp),%rbx
  5f5d67:	48 83 d3 00          	adc    $0x0,%rbx
  5f5d6b:	48 89 1c 24          	mov    %rbx,(%rsp)
  5f5d6f:	48 8b 5c 24 38       	mov    0x38(%rsp),%rbx
  5f5d74:	4c 01 db             	add    %r11,%rbx
  5f5d77:	48 11 ce             	adc    %rcx,%rsi
  5f5d7a:	4c 11 ef             	adc    %r13,%rdi
  5f5d7d:	4d 11 f9             	adc    %r15,%r9
  5f5d80:	4d 11 d4             	adc    %r10,%r12
  5f5d83:	4c 89 a4 24 08 04 00 	mov    %r12,0x408(%rsp)
  5f5d8a:	00 
  5f5d8b:	49 11 c0             	adc    %rax,%r8
  5f5d8e:	4c 89 84 24 00 04 00 	mov    %r8,0x400(%rsp)
  5f5d95:	00 
  5f5d96:	48 8b 04 24          	mov    (%rsp),%rax
  5f5d9a:	4c 8b 54 24 70       	mov    0x70(%rsp),%r10
  5f5d9f:	4c 11 d0             	adc    %r10,%rax
  5f5da2:	48 89 84 24 f8 03 00 	mov    %rax,0x3f8(%rsp)
  5f5da9:	00 
  5f5daa:	48 89 da             	mov    %rbx,%rdx
  5f5dad:	49 ba 01 00 00 00 01 	movabs $0x100000001,%r10
  5f5db4:	00 00 00 
  5f5db7:	c4 42 83 f6 d2       	mulx   %r10,%r15,%r10
  5f5dbc:	4c 89 fa             	mov    %r15,%rdx
  5f5dbf:	49 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%r10
  5f5dc6:	c4 42 93 f6 d2       	mulx   %r10,%r13,%r10
  5f5dcb:	48 c7 c1 fe ff ff ff 	mov    $0xfffffffffffffffe,%rcx
  5f5dd2:	c4 e2 a3 f6 c9       	mulx   %rcx,%r11,%rcx
  5f5dd7:	48 b8 00 00 00 00 ff 	movabs $0xffffffff00000000,%rax
  5f5dde:	ff ff ff 
  5f5de1:	c4 e2 bb f6 c0       	mulx   %rax,%r8,%rax
  5f5de6:	41 bc ff ff ff ff    	mov    $0xffffffff,%r12d
  5f5dec:	c4 c2 83 f6 d4       	mulx   %r12,%r15,%rdx
  5f5df1:	4c 01 c2             	add    %r8,%rdx
  5f5df4:	4c 11 d8             	adc    %r11,%rax
  5f5df7:	4c 11 e9             	adc    %r13,%rcx
  5f5dfa:	4d 89 e8             	mov    %r13,%r8
  5f5dfd:	4d 11 d5             	adc    %r10,%r13
  5f5e00:	4d 11 d0             	adc    %r10,%r8
  5f5e03:	49 83 d2 00          	adc    $0x0,%r10
  5f5e07:	4c 01 fb             	add    %r15,%rbx
  5f5e0a:	48 11 f2             	adc    %rsi,%rdx
  5f5e0d:	48 89 94 24 e8 03 00 	mov    %rdx,0x3e8(%rsp)
  5f5e14:	00 
  5f5e15:	48 11 f8             	adc    %rdi,%rax
  5f5e18:	48 89 84 24 e0 03 00 	mov    %rax,0x3e0(%rsp)
  5f5e1f:	00 
  5f5e20:	4c 11 c9             	adc    %r9,%rcx
  5f5e23:	48 89 8c 24 d8 03 00 	mov    %rcx,0x3d8(%rsp)
  5f5e2a:	00 
  5f5e2b:	48 8b 9c 24 08 04 00 	mov    0x408(%rsp),%rbx
  5f5e32:	00 
  5f5e33:	49 11 dd             	adc    %rbx,%r13
  5f5e36:	4c 89 ac 24 d0 03 00 	mov    %r13,0x3d0(%rsp)
  5f5e3d:	00 
  5f5e3e:	48 8b 9c 24 00 04 00 	mov    0x400(%rsp),%rbx
  5f5e45:	00 
  5f5e46:	49 11 d8             	adc    %rbx,%r8
  5f5e49:	4c 89 84 24 c0 03 00 	mov    %r8,0x3c0(%rsp)
  5f5e50:	00 
  5f5e51:	48 8b 9c 24 f8 03 00 	mov    0x3f8(%rsp),%rbx
  5f5e58:	00 
  5f5e59:	49 11 da             	adc    %rbx,%r10
  5f5e5c:	4c 89 94 24 b8 03 00 	mov    %r10,0x3b8(%rsp)
  5f5e63:	00 
  5f5e64:	0f 92 c3             	setb   %bl
  5f5e67:	0f b6 db             	movzbl %bl,%ebx
  5f5e6a:	48 8b 74 24 38       	mov    0x38(%rsp),%rsi
  5f5e6f:	48 8b bc 24 a0 00 00 	mov    0xa0(%rsp),%rdi
  5f5e76:	00 
  5f5e77:	48 01 fe             	add    %rdi,%rsi
  5f5e7a:	48 8b 74 24 30       	mov    0x30(%rsp),%rsi
  5f5e7f:	48 8b bc 24 98 00 00 	mov    0x98(%rsp),%rdi
  5f5e86:	00 
  5f5e87:	48 11 fe             	adc    %rdi,%rsi
  5f5e8a:	48 8b 74 24 28       	mov    0x28(%rsp),%rsi
  5f5e8f:	48 8b bc 24 90 00 00 	mov    0x90(%rsp),%rdi
  5f5e96:	00 
  5f5e97:	48 11 fe             	adc    %rdi,%rsi
  5f5e9a:	48 8b 74 24 20       	mov    0x20(%rsp),%rsi
  5f5e9f:	48 8b bc 24 88 00 00 	mov    0x88(%rsp),%rdi
  5f5ea6:	00 
  5f5ea7:	48 11 fe             	adc    %rdi,%rsi
  5f5eaa:	48 8b 74 24 18       	mov    0x18(%rsp),%rsi
  5f5eaf:	48 8b bc 24 80 00 00 	mov    0x80(%rsp),%rdi
  5f5eb6:	00 
  5f5eb7:	48 11 fe             	adc    %rdi,%rsi
  5f5eba:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
  5f5ebf:	48 8b 7c 24 78       	mov    0x78(%rsp),%rdi
  5f5ec4:	48 11 fe             	adc    %rdi,%rsi
  5f5ec7:	48 8b 34 24          	mov    (%rsp),%rsi
  5f5ecb:	48 8b 7c 24 70       	mov    0x70(%rsp),%rdi
  5f5ed0:	48 11 fe             	adc    %rdi,%rsi
  5f5ed3:	48 83 d3 00          	adc    $0x0,%rbx
  5f5ed7:	48 89 9c 24 b0 03 00 	mov    %rbx,0x3b0(%rsp)
  5f5ede:	00 
  5f5edf:	48 8b 74 24 58       	mov    0x58(%rsp),%rsi
  5f5ee4:	48 8b bc 24 c8 03 00 	mov    0x3c8(%rsp),%rdi
  5f5eeb:	00 
  5f5eec:	48 01 fe             	add    %rdi,%rsi
  5f5eef:	48 89 b4 24 78 03 00 	mov    %rsi,0x378(%rsp)
  5f5ef6:	00 
  5f5ef7:	48 8b bc 24 90 03 00 	mov    0x390(%rsp),%rdi
  5f5efe:	00 
  5f5eff:	4c 8b 4c 24 50       	mov    0x50(%rsp),%r9
  5f5f04:	4c 11 cf             	adc    %r9,%rdi
  5f5f07:	48 89 bc 24 68 03 00 	mov    %rdi,0x368(%rsp)
  5f5f0e:	00 
  5f5f0f:	4c 8b 8c 24 88 03 00 	mov    0x388(%rsp),%r9
  5f5f16:	00 
  5f5f17:	4c 8b 9c 24 98 03 00 	mov    0x398(%rsp),%r11
  5f5f1e:	00 
  5f5f1f:	4d 11 d9             	adc    %r11,%r9
  5f5f22:	4c 89 8c 24 60 03 00 	mov    %r9,0x360(%rsp)
  5f5f29:	00 
  5f5f2a:	4c 8b bc 24 00 02 00 	mov    0x200(%rsp),%r15
  5f5f31:	00 
  5f5f32:	4c 8b 9c 24 c8 02 00 	mov    0x2c8(%rsp),%r11
  5f5f39:	00 
  5f5f3a:	4d 11 df             	adc    %r11,%r15
  5f5f3d:	4c 89 bc 24 58 03 00 	mov    %r15,0x358(%rsp)
  5f5f44:	00 
  5f5f45:	4c 8b 9c 24 a0 03 00 	mov    0x3a0(%rsp),%r11
  5f5f4c:	00 
  5f5f4d:	4c 8b a4 24 a8 03 00 	mov    0x3a8(%rsp),%r12
  5f5f54:	00 
  5f5f55:	4d 11 e3             	adc    %r12,%r11
  5f5f58:	4c 89 9c 24 50 03 00 	mov    %r11,0x350(%rsp)
  5f5f5f:	00 
  5f5f60:	4c 8b a4 24 30 01 00 	mov    0x130(%rsp),%r12
  5f5f67:	00 
  5f5f68:	49 83 d4 00          	adc    $0x0,%r12
  5f5f6c:	4c 89 a4 24 48 03 00 	mov    %r12,0x348(%rsp)
  5f5f73:	00 
  5f5f74:	48 8b 9c 24 80 03 00 	mov    0x380(%rsp),%rbx
  5f5f7b:	00 
  5f5f7c:	48 01 d3             	add    %rdx,%rbx
  5f5f7f:	48 11 c6             	adc    %rax,%rsi
  5f5f82:	48 11 cf             	adc    %rcx,%rdi
  5f5f85:	4d 11 e9             	adc    %r13,%r9
  5f5f88:	4d 11 c7             	adc    %r8,%r15
  5f5f8b:	4c 89 bc 24 38 03 00 	mov    %r15,0x338(%rsp)
  5f5f92:	00 
  5f5f93:	4d 11 d3             	adc    %r10,%r11
  5f5f96:	4c 89 9c 24 30 03 00 	mov    %r11,0x330(%rsp)
  5f5f9d:	00 
  5f5f9e:	4c 8b 94 24 b0 03 00 	mov    0x3b0(%rsp),%r10
  5f5fa5:	00 
  5f5fa6:	4d 11 d4             	adc    %r10,%r12
  5f5fa9:	4c 89 a4 24 28 03 00 	mov    %r12,0x328(%rsp)
  5f5fb0:	00 
  5f5fb1:	48 89 da             	mov    %rbx,%rdx
  5f5fb4:	49 ba 01 00 00 00 01 	movabs $0x100000001,%r10
  5f5fbb:	00 00 00 
  5f5fbe:	c4 42 bb f6 d2       	mulx   %r10,%r8,%r10
  5f5fc3:	4c 89 c2             	mov    %r8,%rdx
  5f5fc6:	49 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%r10
  5f5fcd:	c4 42 93 f6 d2       	mulx   %r10,%r13,%r10
  5f5fd2:	48 c7 c1 fe ff ff ff 	mov    $0xfffffffffffffffe,%rcx
  5f5fd9:	c4 e2 fb f6 c9       	mulx   %rcx,%rax,%rcx
  5f5fde:	49 bc 00 00 00 00 ff 	movabs $0xffffffff00000000,%r12
  5f5fe5:	ff ff ff 
  5f5fe8:	c4 42 a3 f6 e4       	mulx   %r12,%r11,%r12
  5f5fed:	41 bf ff ff ff ff    	mov    $0xffffffff,%r15d
  5f5ff3:	c4 c2 bb f6 d7       	mulx   %r15,%r8,%rdx
  5f5ff8:	4c 01 da             	add    %r11,%rdx
  5f5ffb:	49 11 c4             	adc    %rax,%r12
  5f5ffe:	4c 11 e9             	adc    %r13,%rcx
  5f6001:	4c 89 e8             	mov    %r13,%rax
  5f6004:	4d 11 d5             	adc    %r10,%r13
  5f6007:	4c 11 d0             	adc    %r10,%rax
  5f600a:	49 83 d2 00          	adc    $0x0,%r10
  5f600e:	4c 01 c3             	add    %r8,%rbx
  5f6011:	48 11 f2             	adc    %rsi,%rdx
  5f6014:	48 89 94 24 20 03 00 	mov    %rdx,0x320(%rsp)
  5f601b:	00 
  5f601c:	49 11 fc             	adc    %rdi,%r12
  5f601f:	4c 89 a4 24 18 03 00 	mov    %r12,0x318(%rsp)
  5f6026:	00 
  5f6027:	4c 11 c9             	adc    %r9,%rcx
  5f602a:	48 89 8c 24 10 03 00 	mov    %rcx,0x310(%rsp)
  5f6031:	00 
  5f6032:	48 8b 9c 24 38 03 00 	mov    0x338(%rsp),%rbx
  5f6039:	00 
  5f603a:	49 11 dd             	adc    %rbx,%r13
  5f603d:	4c 89 ac 24 08 03 00 	mov    %r13,0x308(%rsp)
  5f6044:	00 
  5f6045:	48 8b 9c 24 30 03 00 	mov    0x330(%rsp),%rbx
  5f604c:	00 
  5f604d:	48 11 d8             	adc    %rbx,%rax
  5f6050:	48 89 84 24 00 03 00 	mov    %rax,0x300(%rsp)
  5f6057:	00 
  5f6058:	48 8b 9c 24 28 03 00 	mov    0x328(%rsp),%rbx
  5f605f:	00 
  5f6060:	49 11 da             	adc    %rbx,%r10
  5f6063:	4c 89 94 24 f8 02 00 	mov    %r10,0x2f8(%rsp)
  5f606a:	00 
  5f606b:	0f 92 c3             	setb   %bl
  5f606e:	0f b6 db             	movzbl %bl,%ebx
  5f6071:	48 8b b4 24 80 03 00 	mov    0x380(%rsp),%rsi
  5f6078:	00 
  5f6079:	48 8b bc 24 e8 03 00 	mov    0x3e8(%rsp),%rdi
  5f6080:	00 
  5f6081:	48 01 fe             	add    %rdi,%rsi
  5f6084:	48 8b b4 24 78 03 00 	mov    0x378(%rsp),%rsi
  5f608b:	00 
  5f608c:	48 8b bc 24 e0 03 00 	mov    0x3e0(%rsp),%rdi
  5f6093:	00 
  5f6094:	48 11 fe             	adc    %rdi,%rsi
  5f6097:	48 8b b4 24 68 03 00 	mov    0x368(%rsp),%rsi
  5f609e:	00 
  5f609f:	48 8b bc 24 d8 03 00 	mov    0x3d8(%rsp),%rdi
  5f60a6:	00 
  5f60a7:	48 11 fe             	adc    %rdi,%rsi
  5f60aa:	48 8b b4 24 60 03 00 	mov    0x360(%rsp),%rsi
  5f60b1:	00 
  5f60b2:	48 8b bc 24 d0 03 00 	mov    0x3d0(%rsp),%rdi
  5f60b9:	00 
  5f60ba:	48 11 fe             	adc    %rdi,%rsi
  5f60bd:	48 8b b4 24 58 03 00 	mov    0x358(%rsp),%rsi
  5f60c4:	00 
  5f60c5:	48 8b bc 24 c0 03 00 	mov    0x3c0(%rsp),%rdi
  5f60cc:	00 
  5f60cd:	48 11 fe             	adc    %rdi,%rsi
  5f60d0:	48 8b b4 24 50 03 00 	mov    0x350(%rsp),%rsi
  5f60d7:	00 
  5f60d8:	48 8b bc 24 b8 03 00 	mov    0x3b8(%rsp),%rdi
  5f60df:	00 
  5f60e0:	48 11 fe             	adc    %rdi,%rsi
  5f60e3:	48 8b b4 24 48 03 00 	mov    0x348(%rsp),%rsi
  5f60ea:	00 
  5f60eb:	48 8b bc 24 b0 03 00 	mov    0x3b0(%rsp),%rdi
  5f60f2:	00 
  5f60f3:	48 11 fe             	adc    %rdi,%rsi
  5f60f6:	48 83 d3 00          	adc    $0x0,%rbx
  5f60fa:	48 89 9c 24 f0 02 00 	mov    %rbx,0x2f0(%rsp)
  5f6101:	00 
  5f6102:	48 8b b4 24 c0 02 00 	mov    0x2c0(%rsp),%rsi
  5f6109:	00 
  5f610a:	48 8b bc 24 f0 03 00 	mov    0x3f0(%rsp),%rdi
  5f6111:	00 
  5f6112:	48 01 fe             	add    %rdi,%rsi
  5f6115:	48 89 b4 24 a8 02 00 	mov    %rsi,0x2a8(%rsp)
  5f611c:	00 
  5f611d:	48 8b bc 24 b8 02 00 	mov    0x2b8(%rsp),%rdi
  5f6124:	00 
  5f6125:	4c 8b 84 24 98 03 00 	mov    0x398(%rsp),%r8
  5f612c:	00 
  5f612d:	4c 11 c7             	adc    %r8,%rdi
  5f6130:	48 89 bc 24 a0 02 00 	mov    %rdi,0x2a0(%rsp)
  5f6137:	00 
  5f6138:	4c 8b 84 24 c8 02 00 	mov    0x2c8(%rsp),%r8
  5f613f:	00 
  5f6140:	4c 8b 8c 24 d8 02 00 	mov    0x2d8(%rsp),%r9
  5f6147:	00 
  5f6148:	4d 11 c8             	adc    %r9,%r8
  5f614b:	4c 89 84 24 98 02 00 	mov    %r8,0x298(%rsp)
  5f6152:	00 
  5f6153:	4c 8b 8c 24 d0 02 00 	mov    0x2d0(%rsp),%r9
  5f615a:	00 
  5f615b:	4c 8b 9c 24 e0 02 00 	mov    0x2e0(%rsp),%r11
  5f6162:	00 
  5f6163:	4d 11 d9             	adc    %r11,%r9
  5f6166:	4c 89 8c 24 90 02 00 	mov    %r9,0x290(%rsp)
  5f616d:	00 
  5f616e:	4c 8b 9c 24 08 02 00 	mov    0x208(%rsp),%r11
  5f6175:	00 
  5f6176:	4c 8b bc 24 e8 02 00 	mov    0x2e8(%rsp),%r15
  5f617d:	00 
  5f617e:	4d 11 fb             	adc    %r15,%r11
  5f6181:	4c 89 9c 24 88 02 00 	mov    %r11,0x288(%rsp)
  5f6188:	00 
  5f6189:	4c 8b bc 24 38 01 00 	mov    0x138(%rsp),%r15
  5f6190:	00 
  5f6191:	49 83 d7 00          	adc    $0x0,%r15
  5f6195:	4c 89 bc 24 80 02 00 	mov    %r15,0x280(%rsp)
  5f619c:	00 
  5f619d:	48 8b 9c 24 b0 02 00 	mov    0x2b0(%rsp),%rbx
  5f61a4:	00 
  5f61a5:	48 01 d3             	add    %rdx,%rbx
  5f61a8:	4c 11 e6             	adc    %r12,%rsi
  5f61ab:	48 11 cf             	adc    %rcx,%rdi
  5f61ae:	4d 11 e8             	adc    %r13,%r8
  5f61b1:	49 11 c1             	adc    %rax,%r9
  5f61b4:	4c 89 8c 24 78 02 00 	mov    %r9,0x278(%rsp)
  5f61bb:	00 
  5f61bc:	4d 11 d3             	adc    %r10,%r11
  5f61bf:	4c 89 9c 24 70 02 00 	mov    %r11,0x270(%rsp)
  5f61c6:	00 
  5f61c7:	4c 8b 94 24 f0 02 00 	mov    0x2f0(%rsp),%r10
  5f61ce:	00 
  5f61cf:	4d 11 d7             	adc    %r10,%r15
  5f61d2:	4c 89 bc 24 68 02 00 	mov    %r15,0x268(%rsp)
  5f61d9:	00 
  5f61da:	48 89 da             	mov    %rbx,%rdx
  5f61dd:	49 ba 01 00 00 00 01 	movabs $0x100000001,%r10
  5f61e4:	00 00 00 
  5f61e7:	c4 42 fb f6 d2       	mulx   %r10,%rax,%r10
  5f61ec:	48 89 c2             	mov    %rax,%rdx
  5f61ef:	49 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%r10
  5f61f6:	c4 42 93 f6 d2       	mulx   %r10,%r13,%r10
  5f61fb:	48 c7 c1 fe ff ff ff 	mov    $0xfffffffffffffffe,%rcx
  5f6202:	c4 e2 9b f6 c9       	mulx   %rcx,%r12,%rcx
  5f6207:	49 bf 00 00 00 00 ff 	movabs $0xffffffff00000000,%r15
  5f620e:	ff ff ff 
  5f6211:	c4 42 a3 f6 ff       	mulx   %r15,%r11,%r15
  5f6216:	41 b9 ff ff ff ff    	mov    $0xffffffff,%r9d
  5f621c:	c4 c2 fb f6 d1       	mulx   %r9,%rax,%rdx
  5f6221:	4c 01 da             	add    %r11,%rdx
  5f6224:	4d 11 e7             	adc    %r12,%r15
  5f6227:	4c 11 e9             	adc    %r13,%rcx
  5f622a:	4d 89 d3             	mov    %r10,%r11
  5f622d:	4d 11 ea             	adc    %r13,%r10
  5f6230:	4d 11 dd             	adc    %r11,%r13
  5f6233:	49 83 d3 00          	adc    $0x0,%r11
  5f6237:	48 01 c3             	add    %rax,%rbx
  5f623a:	48 11 f2             	adc    %rsi,%rdx
  5f623d:	48 89 94 24 60 02 00 	mov    %rdx,0x260(%rsp)
  5f6244:	00 
  5f6245:	49 11 ff             	adc    %rdi,%r15
  5f6248:	4c 89 bc 24 58 02 00 	mov    %r15,0x258(%rsp)
  5f624f:	00 
  5f6250:	4c 11 c1             	adc    %r8,%rcx
  5f6253:	48 89 8c 24 48 02 00 	mov    %rcx,0x248(%rsp)
  5f625a:	00 
  5f625b:	48 8b 84 24 78 02 00 	mov    0x278(%rsp),%rax
  5f6262:	00 
  5f6263:	49 11 c2             	adc    %rax,%r10
  5f6266:	4c 89 94 24 40 02 00 	mov    %r10,0x240(%rsp)
  5f626d:	00 
  5f626e:	48 8b 84 24 70 02 00 	mov    0x270(%rsp),%rax
  5f6275:	00 
  5f6276:	49 11 c5             	adc    %rax,%r13
  5f6279:	4c 89 ac 24 38 02 00 	mov    %r13,0x238(%rsp)
  5f6280:	00 
  5f6281:	48 8b 84 24 68 02 00 	mov    0x268(%rsp),%rax
  5f6288:	00 
  5f6289:	49 11 c3             	adc    %rax,%r11
  5f628c:	4c 89 9c 24 30 02 00 	mov    %r11,0x230(%rsp)
  5f6293:	00 
  5f6294:	0f 92 c0             	setb   %al
  5f6297:	0f b6 c0             	movzbl %al,%eax
  5f629a:	48 8b 9c 24 b0 02 00 	mov    0x2b0(%rsp),%rbx
  5f62a1:	00 
  5f62a2:	48 8b b4 24 20 03 00 	mov    0x320(%rsp),%rsi
  5f62a9:	00 
  5f62aa:	48 01 f3             	add    %rsi,%rbx
  5f62ad:	48 8b 9c 24 a8 02 00 	mov    0x2a8(%rsp),%rbx
  5f62b4:	00 
  5f62b5:	48 8b b4 24 18 03 00 	mov    0x318(%rsp),%rsi
  5f62bc:	00 
  5f62bd:	48 11 f3             	adc    %rsi,%rbx
  5f62c0:	48 8b 9c 24 a0 02 00 	mov    0x2a0(%rsp),%rbx
  5f62c7:	00 
  5f62c8:	48 8b b4 24 10 03 00 	mov    0x310(%rsp),%rsi
  5f62cf:	00 
  5f62d0:	48 11 f3             	adc    %rsi,%rbx
  5f62d3:	48 8b 9c 24 98 02 00 	mov    0x298(%rsp),%rbx
  5f62da:	00 
  5f62db:	48 8b b4 24 08 03 00 	mov    0x308(%rsp),%rsi
  5f62e2:	00 
  5f62e3:	48 11 f3             	adc    %rsi,%rbx
  5f62e6:	48 8b 9c 24 90 02 00 	mov    0x290(%rsp),%rbx
  5f62ed:	00 
  5f62ee:	48 8b b4 24 00 03 00 	mov    0x300(%rsp),%rsi
  5f62f5:	00 
  5f62f6:	48 11 f3             	adc    %rsi,%rbx
  5f62f9:	48 8b 9c 24 88 02 00 	mov    0x288(%rsp),%rbx
  5f6300:	00 
  5f6301:	48 8b b4 24 f8 02 00 	mov    0x2f8(%rsp),%rsi
  5f6308:	00 
  5f6309:	48 11 f3             	adc    %rsi,%rbx
  5f630c:	48 8b 9c 24 80 02 00 	mov    0x280(%rsp),%rbx
  5f6313:	00 
  5f6314:	48 8b b4 24 f0 02 00 	mov    0x2f0(%rsp),%rsi
  5f631b:	00 
  5f631c:	48 11 f3             	adc    %rsi,%rbx
  5f631f:	48 83 d0 00          	adc    $0x0,%rax
  5f6323:	48 89 84 24 28 02 00 	mov    %rax,0x228(%rsp)
  5f632a:	00 
  5f632b:	48 8b 9c 24 f8 01 00 	mov    0x1f8(%rsp),%rbx
  5f6332:	00 
  5f6333:	48 8b b4 24 10 04 00 	mov    0x410(%rsp),%rsi
  5f633a:	00 
  5f633b:	48 01 f3             	add    %rsi,%rbx
  5f633e:	48 89 9c 24 e8 01 00 	mov    %rbx,0x1e8(%rsp)
  5f6345:	00 
  5f6346:	48 8b b4 24 f0 01 00 	mov    0x1f0(%rsp),%rsi
  5f634d:	00 
  5f634e:	48 8b bc 24 00 02 00 	mov    0x200(%rsp),%rdi
  5f6355:	00 
  5f6356:	48 11 fe             	adc    %rdi,%rsi
  5f6359:	48 89 b4 24 e0 01 00 	mov    %rsi,0x1e0(%rsp)
  5f6360:	00 
  5f6361:	48 8b bc 24 e0 02 00 	mov    0x2e0(%rsp),%rdi
  5f6368:	00 
  5f6369:	4c 8b 84 24 a0 03 00 	mov    0x3a0(%rsp),%r8
  5f6370:	00 
  5f6371:	4c 11 c7             	adc    %r8,%rdi
  5f6374:	48 89 bc 24 d8 01 00 	mov    %rdi,0x1d8(%rsp)
  5f637b:	00 
  5f637c:	4c 8b 84 24 08 02 00 	mov    0x208(%rsp),%r8
  5f6383:	00 
  5f6384:	4c 8b a4 24 18 02 00 	mov    0x218(%rsp),%r12
  5f638b:	00 
  5f638c:	4d 11 e0             	adc    %r12,%r8
  5f638f:	4c 89 84 24 d0 01 00 	mov    %r8,0x1d0(%rsp)
  5f6396:	00 
  5f6397:	4c 8b a4 24 48 01 00 	mov    0x148(%rsp),%r12
  5f639e:	00 
  5f639f:	4c 8b 8c 24 10 02 00 	mov    0x210(%rsp),%r9
  5f63a6:	00 
  5f63a7:	4d 11 e1             	adc    %r12,%r9
  5f63aa:	4c 89 8c 24 c8 01 00 	mov    %r9,0x1c8(%rsp)
  5f63b1:	00 
  5f63b2:	4c 8b a4 24 20 02 00 	mov    0x220(%rsp),%r12
  5f63b9:	00 
  5f63ba:	49 83 d4 00          	adc    $0x0,%r12
  5f63be:	4c 89 a4 24 c0 01 00 	mov    %r12,0x1c0(%rsp)
  5f63c5:	00 
  5f63c6:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
  5f63cb:	48 01 c2             	add    %rax,%rdx
  5f63ce:	4c 11 fb             	adc    %r15,%rbx
  5f63d1:	48 11 ce             	adc    %rcx,%rsi
  5f63d4:	4c 11 d7             	adc    %r10,%rdi
  5f63d7:	4d 11 e8             	adc    %r13,%r8
  5f63da:	4c 89 84 24 b8 01 00 	mov    %r8,0x1b8(%rsp)
  5f63e1:	00 
  5f63e2:	4d 11 d9             	adc    %r11,%r9
  5f63e5:	4c 89 8c 24 b0 01 00 	mov    %r9,0x1b0(%rsp)
  5f63ec:	00 
  5f63ed:	4c 8b 9c 24 28 02 00 	mov    0x228(%rsp),%r11
  5f63f4:	00 
  5f63f5:	4d 11 dc             	adc    %r11,%r12
  5f63f8:	4c 89 a4 24 a8 01 00 	mov    %r12,0x1a8(%rsp)
  5f63ff:	00 
  5f6400:	49 bb 01 00 00 00 01 	movabs $0x100000001,%r11
  5f6407:	00 00 00 
  5f640a:	c4 42 93 f6 db       	mulx   %r11,%r13,%r11
  5f640f:	49 89 d3             	mov    %rdx,%r11
  5f6412:	4c 89 ea             	mov    %r13,%rdx
  5f6415:	49 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%r10
  5f641c:	c4 42 f3 f6 d2       	mulx   %r10,%rcx,%r10
  5f6421:	49 c7 c7 fe ff ff ff 	mov    $0xfffffffffffffffe,%r15
  5f6428:	c4 42 fb f6 ff       	mulx   %r15,%rax,%r15
  5f642d:	49 bc 00 00 00 00 ff 	movabs $0xffffffff00000000,%r12
  5f6434:	ff ff ff 
  5f6437:	c4 42 b3 f6 e4       	mulx   %r12,%r9,%r12
  5f643c:	41 b8 ff ff ff ff    	mov    $0xffffffff,%r8d
  5f6442:	c4 c2 93 f6 d0       	mulx   %r8,%r13,%rdx
  5f6447:	4c 01 ca             	add    %r9,%rdx
  5f644a:	49 11 c4             	adc    %rax,%r12
  5f644d:	49 11 cf             	adc    %rcx,%r15
  5f6450:	48 89 c8             	mov    %rcx,%rax
  5f6453:	4c 11 d1             	adc    %r10,%rcx
  5f6456:	4c 11 d0             	adc    %r10,%rax
  5f6459:	49 83 d2 00          	adc    $0x0,%r10
  5f645d:	4d 01 eb             	add    %r13,%r11
  5f6460:	48 11 da             	adc    %rbx,%rdx
  5f6463:	48 89 94 24 90 01 00 	mov    %rdx,0x190(%rsp)
  5f646a:	00 
  5f646b:	49 11 f4             	adc    %rsi,%r12
  5f646e:	4c 89 a4 24 88 01 00 	mov    %r12,0x188(%rsp)
  5f6475:	00 
  5f6476:	49 11 ff             	adc    %rdi,%r15
  5f6479:	4c 89 bc 24 80 01 00 	mov    %r15,0x180(%rsp)
  5f6480:	00 
  5f6481:	48 8b 9c 24 b8 01 00 	mov    0x1b8(%rsp),%rbx
  5f6488:	00 
  5f6489:	48 11 d9             	adc    %rbx,%rcx
  5f648c:	48 89 8c 24 78 01 00 	mov    %rcx,0x178(%rsp)
  5f6493:	00 
  5f6494:	48 8b 9c 24 b0 01 00 	mov    0x1b0(%rsp),%rbx
  5f649b:	00 
  5f649c:	48 11 d8             	adc    %rbx,%rax
  5f649f:	48 89 84 24 70 01 00 	mov    %rax,0x170(%rsp)
  5f64a6:	00 
  5f64a7:	48 8b 9c 24 a8 01 00 	mov    0x1a8(%rsp),%rbx
  5f64ae:	00 
  5f64af:	49 11 da             	adc    %rbx,%r10
  5f64b2:	4c 89 94 24 68 01 00 	mov    %r10,0x168(%rsp)
  5f64b9:	00 
  5f64ba:	0f 92 c3             	setb   %bl
  5f64bd:	0f b6 db             	movzbl %bl,%ebx
  5f64c0:	48 8b b4 24 60 02 00 	mov    0x260(%rsp),%rsi
  5f64c7:	00 
  5f64c8:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
  5f64cd:	48 01 fe             	add    %rdi,%rsi
  5f64d0:	48 8b b4 24 e8 01 00 	mov    0x1e8(%rsp),%rsi
  5f64d7:	00 
  5f64d8:	48 8b bc 24 58 02 00 	mov    0x258(%rsp),%rdi
  5f64df:	00 
  5f64e0:	48 11 fe             	adc    %rdi,%rsi
  5f64e3:	48 8b b4 24 e0 01 00 	mov    0x1e0(%rsp),%rsi
  5f64ea:	00 
  5f64eb:	48 8b bc 24 48 02 00 	mov    0x248(%rsp),%rdi
  5f64f2:	00 
  5f64f3:	48 11 fe             	adc    %rdi,%rsi
  5f64f6:	48 8b b4 24 d8 01 00 	mov    0x1d8(%rsp),%rsi
  5f64fd:	00 
  5f64fe:	48 8b bc 24 40 02 00 	mov    0x240(%rsp),%rdi
  5f6505:	00 
  5f6506:	48 11 fe             	adc    %rdi,%rsi
  5f6509:	48 8b b4 24 d0 01 00 	mov    0x1d0(%rsp),%rsi
  5f6510:	00 
  5f6511:	48 8b bc 24 38 02 00 	mov    0x238(%rsp),%rdi
  5f6518:	00 
  5f6519:	48 11 fe             	adc    %rdi,%rsi
  5f651c:	48 8b b4 24 c8 01 00 	mov    0x1c8(%rsp),%rsi
  5f6523:	00 
  5f6524:	48 8b bc 24 30 02 00 	mov    0x230(%rsp),%rdi
  5f652b:	00 
  5f652c:	48 11 fe             	adc    %rdi,%rsi
  5f652f:	48 8b b4 24 c0 01 00 	mov    0x1c0(%rsp),%rsi
  5f6536:	00 
  5f6537:	48 8b bc 24 28 02 00 	mov    0x228(%rsp),%rdi
  5f653e:	00 
  5f653f:	48 11 fe             	adc    %rdi,%rsi
  5f6542:	48 83 d3 00          	adc    $0x0,%rbx
  5f6546:	48 89 9c 24 60 01 00 	mov    %rbx,0x160(%rsp)
  5f654d:	00 
  5f654e:	48 8b b4 24 20 01 00 	mov    0x120(%rsp),%rsi
  5f6555:	00 
  5f6556:	48 8b 7c 24 68       	mov    0x68(%rsp),%rdi
  5f655b:	48 01 fe             	add    %rdi,%rsi
  5f655e:	48 89 b4 24 18 01 00 	mov    %rsi,0x118(%rsp)
  5f6565:	00 
  5f6566:	48 8b bc 24 a8 03 00 	mov    0x3a8(%rsp),%rdi
  5f656d:	00 
  5f656e:	4c 8b 4c 24 60       	mov    0x60(%rsp),%r9
  5f6573:	4c 11 cf             	adc    %r9,%rdi
  5f6576:	48 89 bc 24 08 01 00 	mov    %rdi,0x108(%rsp)
  5f657d:	00 
  5f657e:	4c 8b 8c 24 30 01 00 	mov    0x130(%rsp),%r9
  5f6585:	00 
  5f6586:	4c 8b 9c 24 e8 02 00 	mov    0x2e8(%rsp),%r11
  5f658d:	00 
  5f658e:	4d 11 d9             	adc    %r11,%r9
  5f6591:	4c 89 8c 24 00 01 00 	mov    %r9,0x100(%rsp)
  5f6598:	00 
  5f6599:	4c 8b 9c 24 38 01 00 	mov    0x138(%rsp),%r11
  5f65a0:	00 
  5f65a1:	4c 8b ac 24 48 01 00 	mov    0x148(%rsp),%r13
  5f65a8:	00 
  5f65a9:	4d 11 eb             	adc    %r13,%r11
  5f65ac:	4c 89 9c 24 f8 00 00 	mov    %r11,0xf8(%rsp)
  5f65b3:	00 
  5f65b4:	4c 8b ac 24 58 01 00 	mov    0x158(%rsp),%r13
  5f65bb:	00 
  5f65bc:	4c 8b 84 24 20 02 00 	mov    0x220(%rsp),%r8
  5f65c3:	00 
  5f65c4:	4d 11 c5             	adc    %r8,%r13
  5f65c7:	4c 89 ac 24 f0 00 00 	mov    %r13,0xf0(%rsp)
  5f65ce:	00 
  5f65cf:	4c 8b 84 24 50 01 00 	mov    0x150(%rsp),%r8
  5f65d6:	00 
  5f65d7:	49 83 d0 00          	adc    $0x0,%r8
  5f65db:	4c 89 84 24 e8 00 00 	mov    %r8,0xe8(%rsp)
  5f65e2:	00 
  5f65e3:	48 8b 9c 24 28 01 00 	mov    0x128(%rsp),%rbx
  5f65ea:	00 
  5f65eb:	48 01 d3             	add    %rdx,%rbx
  5f65ee:	4c 11 e6             	adc    %r12,%rsi
  5f65f1:	4c 11 ff             	adc    %r15,%rdi
  5f65f4:	49 11 c9             	adc    %rcx,%r9
  5f65f7:	49 11 c3             	adc    %rax,%r11
  5f65fa:	4c 89 9c 24 d8 00 00 	mov    %r11,0xd8(%rsp)
  5f6601:	00 
  5f6602:	4d 11 d5             	adc    %r10,%r13
  5f6605:	4c 89 ac 24 c8 00 00 	mov    %r13,0xc8(%rsp)
  5f660c:	00 
  5f660d:	4c 8b 94 24 60 01 00 	mov    0x160(%rsp),%r10
  5f6614:	00 
  5f6615:	4d 11 d0             	adc    %r10,%r8
  5f6618:	4c 89 84 24 c0 00 00 	mov    %r8,0xc0(%rsp)
  5f661f:	00 
  5f6620:	48 89 da             	mov    %rbx,%rdx
  5f6623:	49 ba 01 00 00 00 01 	movabs $0x100000001,%r10
  5f662a:	00 00 00 
  5f662d:	c4 42 fb f6 d2       	mulx   %r10,%rax,%r10
  5f6632:	48 89 c2             	mov    %rax,%rdx
  5f6635:	49 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%r10
  5f663c:	c4 42 f3 f6 d2       	mulx   %r10,%rcx,%r10
  5f6641:	49 c7 c7 fe ff ff ff 	mov    $0xfffffffffffffffe,%r15
  5f6648:	c4 42 9b f6 ff       	mulx   %r15,%r12,%r15
  5f664d:	49 b8 00 00 00 00 ff 	movabs $0xffffffff00000000,%r8
  5f6654:	ff ff ff 
  5f6657:	c4 42 93 f6 c0       	mulx   %r8,%r13,%r8
  5f665c:	41 bb ff ff ff ff    	mov    $0xffffffff,%r11d
  5f6662:	c4 c2 eb f6 c3       	mulx   %r11,%rdx,%rax
  5f6667:	4c 01 e8             	add    %r13,%rax
  5f666a:	4d 11 e0             	adc    %r12,%r8
  5f666d:	49 11 cf             	adc    %rcx,%r15
  5f6670:	49 89 cc             	mov    %rcx,%r12
  5f6673:	4c 11 d1             	adc    %r10,%rcx
  5f6676:	4d 11 d4             	adc    %r10,%r12
  5f6679:	49 83 d2 00          	adc    $0x0,%r10
  5f667d:	48 01 d3             	add    %rdx,%rbx
  5f6680:	48 11 f0             	adc    %rsi,%rax
  5f6683:	49 11 f8             	adc    %rdi,%r8
  5f6686:	4d 11 cf             	adc    %r9,%r15
  5f6689:	48 8b 9c 24 d8 00 00 	mov    0xd8(%rsp),%rbx
  5f6690:	00 
  5f6691:	48 11 d9             	adc    %rbx,%rcx
  5f6694:	48 8b 9c 24 c8 00 00 	mov    0xc8(%rsp),%rbx
  5f669b:	00 
  5f669c:	49 11 dc             	adc    %rbx,%r12
  5f669f:	48 8b 9c 24 c0 00 00 	mov    0xc0(%rsp),%rbx
  5f66a6:	00 
  5f66a7:	49 11 da             	adc    %rbx,%r10
  5f66aa:	0f 92 c3             	setb   %bl
  5f66ad:	0f b6 db             	movzbl %bl,%ebx
  5f66b0:	48 8b b4 24 28 01 00 	mov    0x128(%rsp),%rsi
  5f66b7:	00 
  5f66b8:	48 8b bc 24 90 01 00 	mov    0x190(%rsp),%rdi
  5f66bf:	00 
  5f66c0:	48 01 fe             	add    %rdi,%rsi
  5f66c3:	48 8b b4 24 18 01 00 	mov    0x118(%rsp),%rsi
  5f66ca:	00 
  5f66cb:	48 8b bc 24 88 01 00 	mov    0x188(%rsp),%rdi
  5f66d2:	00 
  5f66d3:	48 11 fe             	adc    %rdi,%rsi
  5f66d6:	48 8b b4 24 08 01 00 	mov    0x108(%rsp),%rsi
  5f66dd:	00 
  5f66de:	48 8b bc 24 80 01 00 	mov    0x180(%rsp),%rdi
  5f66e5:	00 
  5f66e6:	48 11 fe             	adc    %rdi,%rsi
  5f66e9:	48 8b b4 24 00 01 00 	mov    0x100(%rsp),%rsi
  5f66f0:	00 
  5f66f1:	48 8b bc 24 78 01 00 	mov    0x178(%rsp),%rdi
  5f66f8:	00 
  5f66f9:	48 11 fe             	adc    %rdi,%rsi
  5f66fc:	48 8b b4 24 f8 00 00 	mov    0xf8(%rsp),%rsi
  5f6703:	00 
  5f6704:	48 8b bc 24 70 01 00 	mov    0x170(%rsp),%rdi
  5f670b:	00 
  5f670c:	48 11 fe             	adc    %rdi,%rsi
  5f670f:	48 8b b4 24 f0 00 00 	mov    0xf0(%rsp),%rsi
  5f6716:	00 
  5f6717:	48 8b bc 24 68 01 00 	mov    0x168(%rsp),%rdi
  5f671e:	00 
  5f671f:	48 11 fe             	adc    %rdi,%rsi
  5f6722:	48 8b b4 24 e8 00 00 	mov    0xe8(%rsp),%rsi
  5f6729:	00 
  5f672a:	48 8b bc 24 60 01 00 	mov    0x160(%rsp),%rdi
  5f6731:	00 
  5f6732:	48 11 fe             	adc    %rdi,%rsi
  5f6735:	48 83 d3 00          	adc    $0x0,%rbx
  5f6739:	48 89 c6             	mov    %rax,%rsi
  5f673c:	4c 29 d8             	sub    %r11,%rax
  5f673f:	48 bf 00 00 00 00 ff 	movabs $0xffffffff00000000,%rdi
  5f6746:	ff ff ff 
  5f6749:	4d 89 c1             	mov    %r8,%r9
  5f674c:	49 19 f8             	sbb    %rdi,%r8
  5f674f:	4c 89 ff             	mov    %r15,%rdi
  5f6752:	49 83 df fe          	sbb    $0xfffffffffffffffe,%r15
  5f6756:	49 89 cb             	mov    %rcx,%r11
  5f6759:	48 83 d9 ff          	sbb    $0xffffffffffffffff,%rcx
  5f675d:	4d 89 e5             	mov    %r12,%r13
  5f6760:	49 83 dc ff          	sbb    $0xffffffffffffffff,%r12
  5f6764:	4c 89 d2             	mov    %r10,%rdx
  5f6767:	49 83 da ff          	sbb    $0xffffffffffffffff,%r10
  5f676b:	48 83 db 00          	sbb    $0x0,%rbx
  5f676f:	0f 92 c3             	setb   %bl
  5f6772:	0f b6 db             	movzbl %bl,%ebx
  5f6775:	48 f7 db             	neg    %rbx
  5f6778:	48 21 de             	and    %rbx,%rsi
  5f677b:	c4 e2 e0 f2 c0       	andn   %rax,%rbx,%rax
  5f6780:	48 09 c6             	or     %rax,%rsi
  5f6783:	48 8b 84 24 28 04 00 	mov    0x428(%rsp),%rax
  5f678a:	00 
  5f678b:	48 89 30             	mov    %rsi,(%rax)
  5f678e:	49 21 d9             	and    %rbx,%r9
  5f6791:	c4 c2 e0 f2 f0       	andn   %r8,%rbx,%rsi
  5f6796:	49 09 f1             	or     %rsi,%r9
  5f6799:	4c 89 48 08          	mov    %r9,0x8(%rax)
  5f679d:	48 21 df             	and    %rbx,%rdi
  5f67a0:	c4 c2 e0 f2 f7       	andn   %r15,%rbx,%rsi
  5f67a5:	48 09 f7             	or     %rsi,%rdi
  5f67a8:	48 89 78 10          	mov    %rdi,0x10(%rax)
  5f67ac:	49 21 db             	and    %rbx,%r11
  5f67af:	c4 e2 e0 f2 c9       	andn   %rcx,%rbx,%rcx
  5f67b4:	4c 09 d9             	or     %r11,%rcx
  5f67b7:	48 89 48 18          	mov    %rcx,0x18(%rax)
  5f67bb:	49 21 dd             	and    %rbx,%r13
  5f67be:	c4 c2 e0 f2 cc       	andn   %r12,%rbx,%rcx
  5f67c3:	49 09 cd             	or     %rcx,%r13
  5f67c6:	4c 89 68 20          	mov    %r13,0x20(%rax)
  5f67ca:	48 21 da             	and    %rbx,%rdx
  5f67cd:	c4 c2 e0 f2 ca       	andn   %r10,%rbx,%rcx
  5f67d2:	48 09 ca             	or     %rcx,%rdx
  5f67d5:	48 89 50 28          	mov    %rdx,0x28(%rax)
  5f67d9:	c9                   	leave
  5f67da:	c3                   	ret
  5f67db:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  5f67e0:	48 89 5c 24 10       	mov    %rbx,0x10(%rsp)
  5f67e5:	e8 d6 5a e9 ff       	call   48c2c0 <runtime.morestack_noctxt.abi0>
  5f67ea:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
  5f67ef:	48 8b 5c 24 10       	mov    0x10(%rsp),%rbx
  5f67f4:	e9 87 f1 ff ff       	jmp    5f5980 <crypto/internal/fips140/nistec/fiat.p384Square>

Disassembly of section .plt:
