
/home/exedev/crypto-audit/round4/bin/ecdh-v3-mul.test:     file format elf64-x86-64


Disassembly of section .text:

00000000005f4920 <crypto/internal/fips140/nistec/fiat.p384Mul>:
  5f4920:	4c 8d a4 24 70 fb ff 	lea    -0x490(%rsp),%r12
  5f4927:	ff 
  5f4928:	4d 3b 66 10          	cmp    0x10(%r14),%r12
  5f492c:	0f 86 16 10 00 00    	jbe    5f5948 <crypto/internal/fips140/nistec/fiat.p384Mul+0x1028>
  5f4932:	55                   	push   %rbp
  5f4933:	48 89 e5             	mov    %rsp,%rbp
  5f4936:	48 81 ec 08 05 00 00 	sub    $0x508,%rsp
  5f493d:	48 89 84 24 18 05 00 	mov    %rax,0x518(%rsp)
  5f4944:	00 
  5f4945:	48 8b 73 08          	mov    0x8(%rbx),%rsi
  5f4949:	48 8b 7b 10          	mov    0x10(%rbx),%rdi
  5f494d:	4c 8b 43 18          	mov    0x18(%rbx),%r8
  5f4951:	4c 8b 4b 20          	mov    0x20(%rbx),%r9
  5f4955:	4c 8b 53 28          	mov    0x28(%rbx),%r10
  5f4959:	4c 89 94 24 e8 00 00 	mov    %r10,0xe8(%rsp)
  5f4960:	00 
  5f4961:	48 8b 1b             	mov    (%rbx),%rbx
  5f4964:	48 8b 51 08          	mov    0x8(%rcx),%rdx
  5f4968:	c4 62 9b f6 db       	mulx   %rbx,%r12,%r11
  5f496d:	4c 89 9c 24 10 04 00 	mov    %r11,0x410(%rsp)
  5f4974:	00 
  5f4975:	4c 89 a4 24 60 04 00 	mov    %r12,0x460(%rsp)
  5f497c:	00 
  5f497d:	49 89 d5             	mov    %rdx,%r13
  5f4980:	48 89 f2             	mov    %rsi,%rdx
  5f4983:	c4 42 fb f6 fd       	mulx   %r13,%rax,%r15
  5f4988:	4c 89 7c 24 50       	mov    %r15,0x50(%rsp)
  5f498d:	48 89 44 24 58       	mov    %rax,0x58(%rsp)
  5f4992:	4c 8b 79 10          	mov    0x10(%rcx),%r15
  5f4996:	4c 89 fa             	mov    %r15,%rdx
  5f4999:	c4 e2 a3 f6 c3       	mulx   %rbx,%r11,%rax
  5f499e:	48 89 84 24 a0 04 00 	mov    %rax,0x4a0(%rsp)
  5f49a5:	00 
  5f49a6:	4c 89 9c 24 c8 04 00 	mov    %r11,0x4c8(%rsp)
  5f49ad:	00 
  5f49ae:	c4 e2 a3 f6 c6       	mulx   %rsi,%r11,%rax
  5f49b3:	48 89 44 24 60       	mov    %rax,0x60(%rsp)
  5f49b8:	4c 89 5c 24 68       	mov    %r11,0x68(%rsp)
  5f49bd:	48 89 fa             	mov    %rdi,%rdx
  5f49c0:	c4 c2 a3 f6 c7       	mulx   %r15,%r11,%rax
  5f49c5:	48 89 84 24 40 04 00 	mov    %rax,0x440(%rsp)
  5f49cc:	00 
  5f49cd:	4c 89 9c 24 48 04 00 	mov    %r11,0x448(%rsp)
  5f49d4:	00 
  5f49d5:	4c 89 ea             	mov    %r13,%rdx
  5f49d8:	c4 e2 a3 f6 c7       	mulx   %rdi,%r11,%rax
  5f49dd:	48 89 84 24 30 04 00 	mov    %rax,0x430(%rsp)
  5f49e4:	00 
  5f49e5:	4c 89 9c 24 38 04 00 	mov    %r11,0x438(%rsp)
  5f49ec:	00 
  5f49ed:	48 8b 41 28          	mov    0x28(%rcx),%rax
  5f49f1:	48 89 84 24 00 05 00 	mov    %rax,0x500(%rsp)
  5f49f8:	00 
  5f49f9:	48 89 c2             	mov    %rax,%rdx
  5f49fc:	c4 62 9b f6 db       	mulx   %rbx,%r12,%r11
  5f4a01:	4c 89 5c 24 40       	mov    %r11,0x40(%rsp)
  5f4a06:	4c 89 a4 24 98 00 00 	mov    %r12,0x98(%rsp)
  5f4a0d:	00 
  5f4a0e:	c4 62 9b f6 de       	mulx   %rsi,%r12,%r11
  5f4a13:	4c 89 9c 24 90 00 00 	mov    %r11,0x90(%rsp)
  5f4a1a:	00 
  5f4a1b:	4c 89 a4 24 a0 00 00 	mov    %r12,0xa0(%rsp)
  5f4a22:	00 
  5f4a23:	c4 62 9b f6 df       	mulx   %rdi,%r12,%r11
  5f4a28:	4c 89 9c 24 78 04 00 	mov    %r11,0x478(%rsp)
  5f4a2f:	00 
  5f4a30:	4c 89 a4 24 80 04 00 	mov    %r12,0x480(%rsp)
  5f4a37:	00 
  5f4a38:	c4 42 9b f6 d8       	mulx   %r8,%r12,%r11
  5f4a3d:	4c 89 9c 24 80 03 00 	mov    %r11,0x380(%rsp)
  5f4a44:	00 
  5f4a45:	4c 89 a4 24 88 03 00 	mov    %r12,0x388(%rsp)
  5f4a4c:	00 
  5f4a4d:	4c 8b 59 18          	mov    0x18(%rcx),%r11
  5f4a51:	4c 89 da             	mov    %r11,%rdx
  5f4a54:	c4 62 ab f6 e3       	mulx   %rbx,%r10,%r12
  5f4a59:	4c 89 a4 24 d0 04 00 	mov    %r12,0x4d0(%rsp)
  5f4a60:	00 
  5f4a61:	4c 89 94 24 d8 04 00 	mov    %r10,0x4d8(%rsp)
  5f4a68:	00 
  5f4a69:	c4 62 ab f6 e6       	mulx   %rsi,%r10,%r12
  5f4a6e:	4c 89 64 24 70       	mov    %r12,0x70(%rsp)
  5f4a73:	4c 89 54 24 78       	mov    %r10,0x78(%rsp)
  5f4a78:	c4 62 ab f6 e7       	mulx   %rdi,%r10,%r12
  5f4a7d:	4c 89 a4 24 50 04 00 	mov    %r12,0x450(%rsp)
  5f4a84:	00 
  5f4a85:	4c 89 94 24 58 04 00 	mov    %r10,0x458(%rsp)
  5f4a8c:	00 
  5f4a8d:	4c 89 c2             	mov    %r8,%rdx
  5f4a90:	c4 42 ab f6 e3       	mulx   %r11,%r10,%r12
  5f4a95:	4c 89 a4 24 60 03 00 	mov    %r12,0x360(%rsp)
  5f4a9c:	00 
  5f4a9d:	4c 89 94 24 68 03 00 	mov    %r10,0x368(%rsp)
  5f4aa4:	00 
  5f4aa5:	4c 89 fa             	mov    %r15,%rdx
  5f4aa8:	c4 42 ab f6 e0       	mulx   %r8,%r10,%r12
  5f4aad:	4c 89 a4 24 50 03 00 	mov    %r12,0x350(%rsp)
  5f4ab4:	00 
  5f4ab5:	4c 89 94 24 58 03 00 	mov    %r10,0x358(%rsp)
  5f4abc:	00 
  5f4abd:	4c 89 ea             	mov    %r13,%rdx
  5f4ac0:	c4 42 ab f6 e0       	mulx   %r8,%r10,%r12
  5f4ac5:	4c 89 a4 24 40 03 00 	mov    %r12,0x340(%rsp)
  5f4acc:	00 
  5f4acd:	4c 89 94 24 48 03 00 	mov    %r10,0x348(%rsp)
  5f4ad4:	00 
  5f4ad5:	48 89 c2             	mov    %rax,%rdx
  5f4ad8:	c4 42 ab f6 e1       	mulx   %r9,%r10,%r12
  5f4add:	4c 89 a4 24 a0 02 00 	mov    %r12,0x2a0(%rsp)
  5f4ae4:	00 
  5f4ae5:	4c 89 94 24 a8 02 00 	mov    %r10,0x2a8(%rsp)
  5f4aec:	00 
  5f4aed:	4c 8b 61 20          	mov    0x20(%rcx),%r12
  5f4af1:	4c 89 e2             	mov    %r12,%rdx
  5f4af4:	c4 62 fb f6 d3       	mulx   %rbx,%rax,%r10
  5f4af9:	4c 89 94 24 f8 04 00 	mov    %r10,0x4f8(%rsp)
  5f4b00:	00 
  5f4b01:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  5f4b06:	c4 62 fb f6 d6       	mulx   %rsi,%rax,%r10
  5f4b0b:	4c 89 94 24 80 00 00 	mov    %r10,0x80(%rsp)
  5f4b12:	00 
  5f4b13:	48 89 84 24 88 00 00 	mov    %rax,0x88(%rsp)
  5f4b1a:	00 
  5f4b1b:	c4 62 fb f6 d7       	mulx   %rdi,%rax,%r10
  5f4b20:	4c 89 94 24 68 04 00 	mov    %r10,0x468(%rsp)
  5f4b27:	00 
  5f4b28:	48 89 84 24 70 04 00 	mov    %rax,0x470(%rsp)
  5f4b2f:	00 
  5f4b30:	c4 42 fb f6 d0       	mulx   %r8,%rax,%r10
  5f4b35:	4c 89 94 24 70 03 00 	mov    %r10,0x370(%rsp)
  5f4b3c:	00 
  5f4b3d:	48 89 84 24 78 03 00 	mov    %rax,0x378(%rsp)
  5f4b44:	00 
  5f4b45:	4c 89 ca             	mov    %r9,%rdx
  5f4b48:	c4 42 fb f6 d4       	mulx   %r12,%rax,%r10
  5f4b4d:	4c 89 94 24 90 02 00 	mov    %r10,0x290(%rsp)
  5f4b54:	00 
  5f4b55:	48 89 84 24 98 02 00 	mov    %rax,0x298(%rsp)
  5f4b5c:	00 
  5f4b5d:	4c 89 da             	mov    %r11,%rdx
  5f4b60:	c4 42 fb f6 d1       	mulx   %r9,%rax,%r10
  5f4b65:	4c 89 94 24 80 02 00 	mov    %r10,0x280(%rsp)
  5f4b6c:	00 
  5f4b6d:	48 89 84 24 88 02 00 	mov    %rax,0x288(%rsp)
  5f4b74:	00 
  5f4b75:	4c 89 fa             	mov    %r15,%rdx
  5f4b78:	c4 42 fb f6 d1       	mulx   %r9,%rax,%r10
  5f4b7d:	4c 89 94 24 70 02 00 	mov    %r10,0x270(%rsp)
  5f4b84:	00 
  5f4b85:	48 89 84 24 78 02 00 	mov    %rax,0x278(%rsp)
  5f4b8c:	00 
  5f4b8d:	4c 89 ea             	mov    %r13,%rdx
  5f4b90:	c4 42 fb f6 d1       	mulx   %r9,%rax,%r10
  5f4b95:	4c 89 94 24 60 02 00 	mov    %r10,0x260(%rsp)
  5f4b9c:	00 
  5f4b9d:	48 89 84 24 68 02 00 	mov    %rax,0x268(%rsp)
  5f4ba4:	00 
  5f4ba5:	48 8b 09             	mov    (%rcx),%rcx
  5f4ba8:	48 89 da             	mov    %rbx,%rdx
  5f4bab:	c4 e2 eb f6 d9       	mulx   %rcx,%rdx,%rbx
  5f4bb0:	48 89 94 24 e0 03 00 	mov    %rdx,0x3e0(%rsp)
  5f4bb7:	00 
  5f4bb8:	48 ba 01 00 00 00 01 	movabs $0x100000001,%rdx
  5f4bbf:	00 00 00 
  5f4bc2:	4c 8b 94 24 e0 03 00 	mov    0x3e0(%rsp),%r10
  5f4bc9:	00 
  5f4bca:	c4 c2 eb f6 c2       	mulx   %r10,%rdx,%rax
  5f4bcf:	48 89 d0             	mov    %rdx,%rax
  5f4bd2:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
  5f4bd9:	c4 e2 ab f6 d0       	mulx   %rax,%r10,%rdx
  5f4bde:	48 89 94 24 00 02 00 	mov    %rdx,0x200(%rsp)
  5f4be5:	00 
  5f4be6:	4c 89 94 24 f8 01 00 	mov    %r10,0x1f8(%rsp)
  5f4bed:	00 
  5f4bee:	48 c7 c2 fe ff ff ff 	mov    $0xfffffffffffffffe,%rdx
  5f4bf5:	c4 e2 ab f6 d0       	mulx   %rax,%r10,%rdx
  5f4bfa:	48 89 94 24 48 01 00 	mov    %rdx,0x148(%rsp)
  5f4c01:	00 
  5f4c02:	4c 89 94 24 a0 01 00 	mov    %r10,0x1a0(%rsp)
  5f4c09:	00 
  5f4c0a:	48 ba 00 00 00 00 ff 	movabs $0xffffffff00000000,%rdx
  5f4c11:	ff ff ff 
  5f4c14:	c4 e2 ab f6 d0       	mulx   %rax,%r10,%rdx
  5f4c19:	48 89 94 24 10 01 00 	mov    %rdx,0x110(%rsp)
  5f4c20:	00 
  5f4c21:	ba ff ff ff ff       	mov    $0xffffffff,%edx
  5f4c26:	c4 e2 eb f6 c0       	mulx   %rax,%rdx,%rax
  5f4c2b:	48 89 84 24 f0 00 00 	mov    %rax,0xf0(%rsp)
  5f4c32:	00 
  5f4c33:	48 89 94 24 f8 00 00 	mov    %rdx,0xf8(%rsp)
  5f4c3a:	00 
  5f4c3b:	48 89 ca             	mov    %rcx,%rdx
  5f4c3e:	c4 e2 fb f6 f6       	mulx   %rsi,%rax,%rsi
  5f4c43:	48 89 74 24 38       	mov    %rsi,0x38(%rsp)
  5f4c48:	48 89 44 24 48       	mov    %rax,0x48(%rsp)
  5f4c4d:	c4 e2 fb f6 ff       	mulx   %rdi,%rax,%rdi
  5f4c52:	48 89 bc 24 20 04 00 	mov    %rdi,0x420(%rsp)
  5f4c59:	00 
  5f4c5a:	48 89 84 24 28 04 00 	mov    %rax,0x428(%rsp)
  5f4c61:	00 
  5f4c62:	c4 42 fb f6 c0       	mulx   %r8,%rax,%r8
  5f4c67:	4c 89 84 24 30 03 00 	mov    %r8,0x330(%rsp)
  5f4c6e:	00 
  5f4c6f:	48 89 84 24 38 03 00 	mov    %rax,0x338(%rsp)
  5f4c76:	00 
  5f4c77:	c4 42 fb f6 c9       	mulx   %r9,%rax,%r9
  5f4c7c:	4c 89 8c 24 50 02 00 	mov    %r9,0x250(%rsp)
  5f4c83:	00 
  5f4c84:	48 89 84 24 58 02 00 	mov    %rax,0x258(%rsp)
  5f4c8b:	00 
  5f4c8c:	48 8b 94 24 e8 00 00 	mov    0xe8(%rsp),%rdx
  5f4c93:	00 
  5f4c94:	48 8b 84 24 00 05 00 	mov    0x500(%rsp),%rax
  5f4c9b:	00 
  5f4c9c:	c4 e2 b3 f6 c0       	mulx   %rax,%r9,%rax
  5f4ca1:	48 89 84 24 b0 01 00 	mov    %rax,0x1b0(%rsp)
  5f4ca8:	00 
  5f4ca9:	4c 89 8c 24 b8 01 00 	mov    %r9,0x1b8(%rsp)
  5f4cb0:	00 
  5f4cb1:	4c 89 e2             	mov    %r12,%rdx
  5f4cb4:	48 8b 84 24 e8 00 00 	mov    0xe8(%rsp),%rax
  5f4cbb:	00 
  5f4cbc:	c4 62 eb f6 e0       	mulx   %rax,%rdx,%r12
  5f4cc1:	4c 89 a4 24 98 01 00 	mov    %r12,0x198(%rsp)
  5f4cc8:	00 
  5f4cc9:	48 89 94 24 a8 01 00 	mov    %rdx,0x1a8(%rsp)
  5f4cd0:	00 
  5f4cd1:	4c 89 da             	mov    %r11,%rdx
  5f4cd4:	c4 62 eb f6 d8       	mulx   %rax,%rdx,%r11
  5f4cd9:	4c 89 9c 24 88 01 00 	mov    %r11,0x188(%rsp)
  5f4ce0:	00 
  5f4ce1:	48 89 94 24 90 01 00 	mov    %rdx,0x190(%rsp)
  5f4ce8:	00 
  5f4ce9:	4c 89 fa             	mov    %r15,%rdx
  5f4cec:	c4 62 eb f6 f8       	mulx   %rax,%rdx,%r15
  5f4cf1:	4c 89 bc 24 78 01 00 	mov    %r15,0x178(%rsp)
  5f4cf8:	00 
  5f4cf9:	48 89 94 24 80 01 00 	mov    %rdx,0x180(%rsp)
  5f4d00:	00 
  5f4d01:	4c 89 ea             	mov    %r13,%rdx
  5f4d04:	c4 62 eb f6 e8       	mulx   %rax,%rdx,%r13
  5f4d09:	4c 89 ac 24 68 01 00 	mov    %r13,0x168(%rsp)
  5f4d10:	00 
  5f4d11:	48 89 94 24 70 01 00 	mov    %rdx,0x170(%rsp)
  5f4d18:	00 
  5f4d19:	48 89 ca             	mov    %rcx,%rdx
  5f4d1c:	c4 e2 f3 f6 c0       	mulx   %rax,%rcx,%rax
  5f4d21:	48 89 84 24 58 01 00 	mov    %rax,0x158(%rsp)
  5f4d28:	00 
  5f4d29:	48 89 8c 24 60 01 00 	mov    %rcx,0x160(%rsp)
  5f4d30:	00 
  5f4d31:	90                   	nop
  5f4d32:	90                   	nop
  5f4d33:	90                   	nop
  5f4d34:	90                   	nop
  5f4d35:	90                   	nop
  5f4d36:	90                   	nop
  5f4d37:	48 8b 94 24 60 04 00 	mov    0x460(%rsp),%rdx
  5f4d3e:	00 
  5f4d3f:	48 01 da             	add    %rbx,%rdx
  5f4d42:	48 8b 9c 24 10 04 00 	mov    0x410(%rsp),%rbx
  5f4d49:	00 
  5f4d4a:	48 8b 8c 24 c8 04 00 	mov    0x4c8(%rsp),%rcx
  5f4d51:	00 
  5f4d52:	48 11 cb             	adc    %rcx,%rbx
  5f4d55:	48 8b 8c 24 a0 04 00 	mov    0x4a0(%rsp),%rcx
  5f4d5c:	00 
  5f4d5d:	4c 8b 8c 24 d8 04 00 	mov    0x4d8(%rsp),%r9
  5f4d64:	00 
  5f4d65:	4c 11 c9             	adc    %r9,%rcx
  5f4d68:	4c 8b 8c 24 d0 04 00 	mov    0x4d0(%rsp),%r9
  5f4d6f:	00 
  5f4d70:	4c 8b 64 24 08       	mov    0x8(%rsp),%r12
  5f4d75:	4d 11 e1             	adc    %r12,%r9
  5f4d78:	4c 8b a4 24 f8 04 00 	mov    0x4f8(%rsp),%r12
  5f4d7f:	00 
  5f4d80:	4c 8b 9c 24 98 00 00 	mov    0x98(%rsp),%r11
  5f4d87:	00 
  5f4d88:	4d 11 dc             	adc    %r11,%r12
  5f4d8b:	4c 8b 5c 24 40       	mov    0x40(%rsp),%r11
  5f4d90:	49 83 d3 00          	adc    $0x0,%r11
  5f4d94:	4c 8b bc 24 f0 00 00 	mov    0xf0(%rsp),%r15
  5f4d9b:	00 
  5f4d9c:	4d 01 d7             	add    %r10,%r15
  5f4d9f:	4c 8b 94 24 10 01 00 	mov    0x110(%rsp),%r10
  5f4da6:	00 
  5f4da7:	4c 8b ac 24 a0 01 00 	mov    0x1a0(%rsp),%r13
  5f4dae:	00 
  5f4daf:	4d 11 ea             	adc    %r13,%r10
  5f4db2:	4c 8b ac 24 48 01 00 	mov    0x148(%rsp),%r13
  5f4db9:	00 
  5f4dba:	48 8b 84 24 f8 01 00 	mov    0x1f8(%rsp),%rax
  5f4dc1:	00 
  5f4dc2:	49 11 c5             	adc    %rax,%r13
  5f4dc5:	4c 8b 84 24 00 02 00 	mov    0x200(%rsp),%r8
  5f4dcc:	00 
  5f4dcd:	4c 11 c0             	adc    %r8,%rax
  5f4dd0:	48 8b bc 24 f8 01 00 	mov    0x1f8(%rsp),%rdi
  5f4dd7:	00 
  5f4dd8:	4c 11 c7             	adc    %r8,%rdi
  5f4ddb:	49 83 d0 00          	adc    $0x0,%r8
  5f4ddf:	4c 89 84 24 e0 00 00 	mov    %r8,0xe0(%rsp)
  5f4de6:	00 
  5f4de7:	48 8b b4 24 e0 03 00 	mov    0x3e0(%rsp),%rsi
  5f4dee:	00 
  5f4def:	4c 8b 84 24 f8 00 00 	mov    0xf8(%rsp),%r8
  5f4df6:	00 
  5f4df7:	4c 01 c6             	add    %r8,%rsi
  5f4dfa:	4c 11 fa             	adc    %r15,%rdx
  5f4dfd:	48 89 94 24 d8 00 00 	mov    %rdx,0xd8(%rsp)
  5f4e04:	00 
  5f4e05:	49 11 da             	adc    %rbx,%r10
  5f4e08:	4c 89 94 24 d0 00 00 	mov    %r10,0xd0(%rsp)
  5f4e0f:	00 
  5f4e10:	49 11 cd             	adc    %rcx,%r13
  5f4e13:	4c 89 ac 24 c8 00 00 	mov    %r13,0xc8(%rsp)
  5f4e1a:	00 
  5f4e1b:	4c 11 c8             	adc    %r9,%rax
  5f4e1e:	48 89 84 24 c0 00 00 	mov    %rax,0xc0(%rsp)
  5f4e25:	00 
  5f4e26:	4c 11 e7             	adc    %r12,%rdi
  5f4e29:	48 89 bc 24 b8 00 00 	mov    %rdi,0xb8(%rsp)
  5f4e30:	00 
  5f4e31:	48 8b 8c 24 e0 00 00 	mov    0xe0(%rsp),%rcx
  5f4e38:	00 
  5f4e39:	4c 11 d9             	adc    %r11,%rcx
  5f4e3c:	48 89 8c 24 b0 00 00 	mov    %rcx,0xb0(%rsp)
  5f4e43:	00 
  5f4e44:	0f 92 c3             	setb   %bl
  5f4e47:	0f b6 db             	movzbl %bl,%ebx
  5f4e4a:	48 89 9c 24 a8 00 00 	mov    %rbx,0xa8(%rsp)
  5f4e51:	00 
  5f4e52:	48 8b 74 24 38       	mov    0x38(%rsp),%rsi
  5f4e57:	4c 8b 44 24 58       	mov    0x58(%rsp),%r8
  5f4e5c:	4c 01 c6             	add    %r8,%rsi
  5f4e5f:	48 89 74 24 30       	mov    %rsi,0x30(%rsp)
  5f4e64:	4c 8b 44 24 50       	mov    0x50(%rsp),%r8
  5f4e69:	4c 8b 4c 24 68       	mov    0x68(%rsp),%r9
  5f4e6e:	4d 11 c8             	adc    %r9,%r8
  5f4e71:	4c 89 44 24 28       	mov    %r8,0x28(%rsp)
  5f4e76:	4c 8b 4c 24 60       	mov    0x60(%rsp),%r9
  5f4e7b:	4c 8b 5c 24 78       	mov    0x78(%rsp),%r11
  5f4e80:	4d 11 d9             	adc    %r11,%r9
  5f4e83:	4c 89 4c 24 20       	mov    %r9,0x20(%rsp)
  5f4e88:	4c 8b 5c 24 70       	mov    0x70(%rsp),%r11
  5f4e8d:	4c 8b a4 24 88 00 00 	mov    0x88(%rsp),%r12
  5f4e94:	00 
  5f4e95:	4d 11 e3             	adc    %r12,%r11
  5f4e98:	4c 89 5c 24 18       	mov    %r11,0x18(%rsp)
  5f4e9d:	4c 8b a4 24 80 00 00 	mov    0x80(%rsp),%r12
  5f4ea4:	00 
  5f4ea5:	4c 8b bc 24 a0 00 00 	mov    0xa0(%rsp),%r15
  5f4eac:	00 
  5f4ead:	4d 11 fc             	adc    %r15,%r12
  5f4eb0:	4c 89 64 24 10       	mov    %r12,0x10(%rsp)
  5f4eb5:	4c 8b bc 24 90 00 00 	mov    0x90(%rsp),%r15
  5f4ebc:	00 
  5f4ebd:	49 83 d7 00          	adc    $0x0,%r15
  5f4ec1:	4c 89 3c 24          	mov    %r15,(%rsp)
  5f4ec5:	48 8b 5c 24 48       	mov    0x48(%rsp),%rbx
  5f4eca:	48 01 d3             	add    %rdx,%rbx
  5f4ecd:	4c 11 d6             	adc    %r10,%rsi
  5f4ed0:	4d 11 e8             	adc    %r13,%r8
  5f4ed3:	49 11 c1             	adc    %rax,%r9
  5f4ed6:	49 11 fb             	adc    %rdi,%r11
  5f4ed9:	4c 89 9c 24 f0 04 00 	mov    %r11,0x4f0(%rsp)
  5f4ee0:	00 
  5f4ee1:	49 11 cc             	adc    %rcx,%r12
  5f4ee4:	4c 89 a4 24 e8 04 00 	mov    %r12,0x4e8(%rsp)
  5f4eeb:	00 
  5f4eec:	48 8b 8c 24 a8 00 00 	mov    0xa8(%rsp),%rcx
  5f4ef3:	00 
  5f4ef4:	49 11 cf             	adc    %rcx,%r15
  5f4ef7:	4c 89 bc 24 e0 04 00 	mov    %r15,0x4e0(%rsp)
  5f4efe:	00 
  5f4eff:	48 89 da             	mov    %rbx,%rdx
  5f4f02:	48 b9 01 00 00 00 01 	movabs $0x100000001,%rcx
  5f4f09:	00 00 00 
  5f4f0c:	c4 e2 c3 f6 c9       	mulx   %rcx,%rdi,%rcx
  5f4f11:	48 89 fa             	mov    %rdi,%rdx
  5f4f14:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  5f4f1b:	c4 e2 fb f6 c9       	mulx   %rcx,%rax,%rcx
  5f4f20:	49 c7 c5 fe ff ff ff 	mov    $0xfffffffffffffffe,%r13
  5f4f27:	c4 42 ab f6 ed       	mulx   %r13,%r10,%r13
  5f4f2c:	49 bf 00 00 00 00 ff 	movabs $0xffffffff00000000,%r15
  5f4f33:	ff ff ff 
  5f4f36:	c4 42 9b f6 ff       	mulx   %r15,%r12,%r15
  5f4f3b:	41 bb ff ff ff ff    	mov    $0xffffffff,%r11d
  5f4f41:	c4 c2 c3 f6 d3       	mulx   %r11,%rdi,%rdx
  5f4f46:	4c 01 e2             	add    %r12,%rdx
  5f4f49:	4d 11 d7             	adc    %r10,%r15
  5f4f4c:	49 11 c5             	adc    %rax,%r13
  5f4f4f:	49 89 c2             	mov    %rax,%r10
  5f4f52:	48 11 c8             	adc    %rcx,%rax
  5f4f55:	49 11 ca             	adc    %rcx,%r10
  5f4f58:	48 83 d1 00          	adc    $0x0,%rcx
  5f4f5c:	48 01 fb             	add    %rdi,%rbx
  5f4f5f:	48 11 f2             	adc    %rsi,%rdx
  5f4f62:	48 89 94 24 c0 04 00 	mov    %rdx,0x4c0(%rsp)
  5f4f69:	00 
  5f4f6a:	4d 11 c7             	adc    %r8,%r15
  5f4f6d:	4c 89 bc 24 b8 04 00 	mov    %r15,0x4b8(%rsp)
  5f4f74:	00 
  5f4f75:	4d 11 cd             	adc    %r9,%r13
  5f4f78:	4c 89 ac 24 b0 04 00 	mov    %r13,0x4b0(%rsp)
  5f4f7f:	00 
  5f4f80:	48 8b 9c 24 f0 04 00 	mov    0x4f0(%rsp),%rbx
  5f4f87:	00 
  5f4f88:	48 11 d8             	adc    %rbx,%rax
  5f4f8b:	48 89 84 24 a8 04 00 	mov    %rax,0x4a8(%rsp)
  5f4f92:	00 
  5f4f93:	48 8b 9c 24 e8 04 00 	mov    0x4e8(%rsp),%rbx
  5f4f9a:	00 
  5f4f9b:	49 11 da             	adc    %rbx,%r10
  5f4f9e:	4c 89 94 24 98 04 00 	mov    %r10,0x498(%rsp)
  5f4fa5:	00 
  5f4fa6:	48 8b 9c 24 e0 04 00 	mov    0x4e0(%rsp),%rbx
  5f4fad:	00 
  5f4fae:	48 11 d9             	adc    %rbx,%rcx
  5f4fb1:	48 89 8c 24 90 04 00 	mov    %rcx,0x490(%rsp)
  5f4fb8:	00 
  5f4fb9:	0f 92 c3             	setb   %bl
  5f4fbc:	0f b6 db             	movzbl %bl,%ebx
  5f4fbf:	48 8b 74 24 48       	mov    0x48(%rsp),%rsi
  5f4fc4:	48 8b bc 24 d8 00 00 	mov    0xd8(%rsp),%rdi
  5f4fcb:	00 
  5f4fcc:	48 01 fe             	add    %rdi,%rsi
  5f4fcf:	48 8b 74 24 30       	mov    0x30(%rsp),%rsi
  5f4fd4:	48 8b bc 24 d0 00 00 	mov    0xd0(%rsp),%rdi
  5f4fdb:	00 
  5f4fdc:	48 11 fe             	adc    %rdi,%rsi
  5f4fdf:	48 8b 74 24 28       	mov    0x28(%rsp),%rsi
  5f4fe4:	48 8b bc 24 c8 00 00 	mov    0xc8(%rsp),%rdi
  5f4feb:	00 
  5f4fec:	48 11 fe             	adc    %rdi,%rsi
  5f4fef:	48 8b 74 24 20       	mov    0x20(%rsp),%rsi
  5f4ff4:	48 8b bc 24 c0 00 00 	mov    0xc0(%rsp),%rdi
  5f4ffb:	00 
  5f4ffc:	48 11 fe             	adc    %rdi,%rsi
  5f4fff:	48 8b 74 24 18       	mov    0x18(%rsp),%rsi
  5f5004:	48 8b bc 24 b8 00 00 	mov    0xb8(%rsp),%rdi
  5f500b:	00 
  5f500c:	48 11 fe             	adc    %rdi,%rsi
  5f500f:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
  5f5014:	48 8b bc 24 b0 00 00 	mov    0xb0(%rsp),%rdi
  5f501b:	00 
  5f501c:	48 11 fe             	adc    %rdi,%rsi
  5f501f:	48 8b 34 24          	mov    (%rsp),%rsi
  5f5023:	48 8b bc 24 a8 00 00 	mov    0xa8(%rsp),%rdi
  5f502a:	00 
  5f502b:	48 11 fe             	adc    %rdi,%rsi
  5f502e:	48 83 d3 00          	adc    $0x0,%rbx
  5f5032:	48 89 9c 24 88 04 00 	mov    %rbx,0x488(%rsp)
  5f5039:	00 
  5f503a:	48 8b b4 24 20 04 00 	mov    0x420(%rsp),%rsi
  5f5041:	00 
  5f5042:	48 8b bc 24 38 04 00 	mov    0x438(%rsp),%rdi
  5f5049:	00 
  5f504a:	48 01 fe             	add    %rdi,%rsi
  5f504d:	48 89 b4 24 18 04 00 	mov    %rsi,0x418(%rsp)
  5f5054:	00 
  5f5055:	48 8b bc 24 30 04 00 	mov    0x430(%rsp),%rdi
  5f505c:	00 
  5f505d:	4c 8b 84 24 48 04 00 	mov    0x448(%rsp),%r8
  5f5064:	00 
  5f5065:	4c 11 c7             	adc    %r8,%rdi
  5f5068:	48 89 bc 24 08 04 00 	mov    %rdi,0x408(%rsp)
  5f506f:	00 
  5f5070:	4c 8b 84 24 40 04 00 	mov    0x440(%rsp),%r8
  5f5077:	00 
  5f5078:	4c 8b 8c 24 58 04 00 	mov    0x458(%rsp),%r9
  5f507f:	00 
  5f5080:	4d 11 c8             	adc    %r9,%r8
  5f5083:	4c 89 84 24 00 04 00 	mov    %r8,0x400(%rsp)
  5f508a:	00 
  5f508b:	4c 8b 8c 24 50 04 00 	mov    0x450(%rsp),%r9
  5f5092:	00 
  5f5093:	4c 8b a4 24 70 04 00 	mov    0x470(%rsp),%r12
  5f509a:	00 
  5f509b:	4d 11 e1             	adc    %r12,%r9
  5f509e:	4c 89 8c 24 f8 03 00 	mov    %r9,0x3f8(%rsp)
  5f50a5:	00 
  5f50a6:	4c 8b a4 24 68 04 00 	mov    0x468(%rsp),%r12
  5f50ad:	00 
  5f50ae:	4c 8b 9c 24 80 04 00 	mov    0x480(%rsp),%r11
  5f50b5:	00 
  5f50b6:	4d 11 dc             	adc    %r11,%r12
  5f50b9:	4c 89 a4 24 f0 03 00 	mov    %r12,0x3f0(%rsp)
  5f50c0:	00 
  5f50c1:	4c 8b 9c 24 78 04 00 	mov    0x478(%rsp),%r11
  5f50c8:	00 
  5f50c9:	49 83 d3 00          	adc    $0x0,%r11
  5f50cd:	4c 89 9c 24 e8 03 00 	mov    %r11,0x3e8(%rsp)
  5f50d4:	00 
  5f50d5:	48 8b 9c 24 28 04 00 	mov    0x428(%rsp),%rbx
  5f50dc:	00 
  5f50dd:	48 01 d3             	add    %rdx,%rbx
  5f50e0:	4c 11 fe             	adc    %r15,%rsi
  5f50e3:	4c 11 ef             	adc    %r13,%rdi
  5f50e6:	49 11 c0             	adc    %rax,%r8
  5f50e9:	4d 11 d1             	adc    %r10,%r9
  5f50ec:	4c 89 8c 24 d8 03 00 	mov    %r9,0x3d8(%rsp)
  5f50f3:	00 
  5f50f4:	49 11 cc             	adc    %rcx,%r12
  5f50f7:	4c 89 a4 24 d0 03 00 	mov    %r12,0x3d0(%rsp)
  5f50fe:	00 
  5f50ff:	48 8b 8c 24 88 04 00 	mov    0x488(%rsp),%rcx
  5f5106:	00 
  5f5107:	49 11 cb             	adc    %rcx,%r11
  5f510a:	4c 89 9c 24 c8 03 00 	mov    %r11,0x3c8(%rsp)
  5f5111:	00 
  5f5112:	48 89 da             	mov    %rbx,%rdx
  5f5115:	48 b9 01 00 00 00 01 	movabs $0x100000001,%rcx
  5f511c:	00 00 00 
  5f511f:	c4 e2 ab f6 c9       	mulx   %rcx,%r10,%rcx
  5f5124:	4c 89 d2             	mov    %r10,%rdx
  5f5127:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  5f512e:	c4 e2 fb f6 c9       	mulx   %rcx,%rax,%rcx
  5f5133:	49 c7 c5 fe ff ff ff 	mov    $0xfffffffffffffffe,%r13
  5f513a:	c4 42 83 f6 ed       	mulx   %r13,%r15,%r13
  5f513f:	49 bb 00 00 00 00 ff 	movabs $0xffffffff00000000,%r11
  5f5146:	ff ff ff 
  5f5149:	c4 42 9b f6 db       	mulx   %r11,%r12,%r11
  5f514e:	41 b9 ff ff ff ff    	mov    $0xffffffff,%r9d
  5f5154:	c4 c2 ab f6 d1       	mulx   %r9,%r10,%rdx
  5f5159:	4c 01 e2             	add    %r12,%rdx
  5f515c:	4d 11 fb             	adc    %r15,%r11
  5f515f:	49 11 c5             	adc    %rax,%r13
  5f5162:	49 89 c4             	mov    %rax,%r12
  5f5165:	48 11 c8             	adc    %rcx,%rax
  5f5168:	49 11 cc             	adc    %rcx,%r12
  5f516b:	48 83 d1 00          	adc    $0x0,%rcx
  5f516f:	4c 01 d3             	add    %r10,%rbx
  5f5172:	48 11 f2             	adc    %rsi,%rdx
  5f5175:	48 89 94 24 c0 03 00 	mov    %rdx,0x3c0(%rsp)
  5f517c:	00 
  5f517d:	49 11 fb             	adc    %rdi,%r11
  5f5180:	4c 89 9c 24 b8 03 00 	mov    %r11,0x3b8(%rsp)
  5f5187:	00 
  5f5188:	4d 11 c5             	adc    %r8,%r13
  5f518b:	4c 89 ac 24 b0 03 00 	mov    %r13,0x3b0(%rsp)
  5f5192:	00 
  5f5193:	48 8b 9c 24 d8 03 00 	mov    0x3d8(%rsp),%rbx
  5f519a:	00 
  5f519b:	48 11 d8             	adc    %rbx,%rax
  5f519e:	48 89 84 24 a8 03 00 	mov    %rax,0x3a8(%rsp)
  5f51a5:	00 
  5f51a6:	48 8b 9c 24 d0 03 00 	mov    0x3d0(%rsp),%rbx
  5f51ad:	00 
  5f51ae:	49 11 dc             	adc    %rbx,%r12
  5f51b1:	4c 89 a4 24 a0 03 00 	mov    %r12,0x3a0(%rsp)
  5f51b8:	00 
  5f51b9:	48 8b 9c 24 c8 03 00 	mov    0x3c8(%rsp),%rbx
  5f51c0:	00 
  5f51c1:	48 11 d9             	adc    %rbx,%rcx
  5f51c4:	48 89 8c 24 98 03 00 	mov    %rcx,0x398(%rsp)
  5f51cb:	00 
  5f51cc:	0f 92 c3             	setb   %bl
  5f51cf:	0f b6 db             	movzbl %bl,%ebx
  5f51d2:	48 8b b4 24 28 04 00 	mov    0x428(%rsp),%rsi
  5f51d9:	00 
  5f51da:	48 8b bc 24 c0 04 00 	mov    0x4c0(%rsp),%rdi
  5f51e1:	00 
  5f51e2:	48 01 fe             	add    %rdi,%rsi
  5f51e5:	48 8b b4 24 18 04 00 	mov    0x418(%rsp),%rsi
  5f51ec:	00 
  5f51ed:	48 8b bc 24 b8 04 00 	mov    0x4b8(%rsp),%rdi
  5f51f4:	00 
  5f51f5:	48 11 fe             	adc    %rdi,%rsi
  5f51f8:	48 8b b4 24 08 04 00 	mov    0x408(%rsp),%rsi
  5f51ff:	00 
  5f5200:	48 8b bc 24 b0 04 00 	mov    0x4b0(%rsp),%rdi
  5f5207:	00 
  5f5208:	48 11 fe             	adc    %rdi,%rsi
  5f520b:	48 8b b4 24 00 04 00 	mov    0x400(%rsp),%rsi
  5f5212:	00 
  5f5213:	48 8b bc 24 a8 04 00 	mov    0x4a8(%rsp),%rdi
  5f521a:	00 
  5f521b:	48 11 fe             	adc    %rdi,%rsi
  5f521e:	48 8b b4 24 f8 03 00 	mov    0x3f8(%rsp),%rsi
  5f5225:	00 
  5f5226:	48 8b bc 24 98 04 00 	mov    0x498(%rsp),%rdi
  5f522d:	00 
  5f522e:	48 11 fe             	adc    %rdi,%rsi
  5f5231:	48 8b b4 24 f0 03 00 	mov    0x3f0(%rsp),%rsi
  5f5238:	00 
  5f5239:	48 8b bc 24 90 04 00 	mov    0x490(%rsp),%rdi
  5f5240:	00 
  5f5241:	48 11 fe             	adc    %rdi,%rsi
  5f5244:	48 8b b4 24 e8 03 00 	mov    0x3e8(%rsp),%rsi
  5f524b:	00 
  5f524c:	48 8b bc 24 88 04 00 	mov    0x488(%rsp),%rdi
  5f5253:	00 
  5f5254:	48 11 fe             	adc    %rdi,%rsi
  5f5257:	48 83 d3 00          	adc    $0x0,%rbx
  5f525b:	48 89 9c 24 90 03 00 	mov    %rbx,0x390(%rsp)
  5f5262:	00 
  5f5263:	48 8b b4 24 30 03 00 	mov    0x330(%rsp),%rsi
  5f526a:	00 
  5f526b:	48 8b bc 24 48 03 00 	mov    0x348(%rsp),%rdi
  5f5272:	00 
  5f5273:	48 01 fe             	add    %rdi,%rsi
  5f5276:	48 89 b4 24 28 03 00 	mov    %rsi,0x328(%rsp)
  5f527d:	00 
  5f527e:	48 8b bc 24 40 03 00 	mov    0x340(%rsp),%rdi
  5f5285:	00 
  5f5286:	4c 8b 84 24 58 03 00 	mov    0x358(%rsp),%r8
  5f528d:	00 
  5f528e:	4c 11 c7             	adc    %r8,%rdi
  5f5291:	48 89 bc 24 20 03 00 	mov    %rdi,0x320(%rsp)
  5f5298:	00 
  5f5299:	4c 8b 84 24 50 03 00 	mov    0x350(%rsp),%r8
  5f52a0:	00 
  5f52a1:	4c 8b 94 24 68 03 00 	mov    0x368(%rsp),%r10
  5f52a8:	00 
  5f52a9:	4d 11 d0             	adc    %r10,%r8
  5f52ac:	4c 89 84 24 18 03 00 	mov    %r8,0x318(%rsp)
  5f52b3:	00 
  5f52b4:	4c 8b 94 24 60 03 00 	mov    0x360(%rsp),%r10
  5f52bb:	00 
  5f52bc:	4c 8b bc 24 78 03 00 	mov    0x378(%rsp),%r15
  5f52c3:	00 
  5f52c4:	4d 11 fa             	adc    %r15,%r10
  5f52c7:	4c 89 94 24 10 03 00 	mov    %r10,0x310(%rsp)
  5f52ce:	00 
  5f52cf:	4c 8b bc 24 70 03 00 	mov    0x370(%rsp),%r15
  5f52d6:	00 
  5f52d7:	4c 8b 8c 24 88 03 00 	mov    0x388(%rsp),%r9
  5f52de:	00 
  5f52df:	4d 11 cf             	adc    %r9,%r15
  5f52e2:	4c 89 bc 24 08 03 00 	mov    %r15,0x308(%rsp)
  5f52e9:	00 
  5f52ea:	4c 8b 8c 24 80 03 00 	mov    0x380(%rsp),%r9
  5f52f1:	00 
  5f52f2:	49 83 d1 00          	adc    $0x0,%r9
  5f52f6:	4c 89 8c 24 00 03 00 	mov    %r9,0x300(%rsp)
  5f52fd:	00 
  5f52fe:	48 8b 9c 24 38 03 00 	mov    0x338(%rsp),%rbx
  5f5305:	00 
  5f5306:	48 01 d3             	add    %rdx,%rbx
  5f5309:	4c 11 de             	adc    %r11,%rsi
  5f530c:	4c 11 ef             	adc    %r13,%rdi
  5f530f:	49 11 c0             	adc    %rax,%r8
  5f5312:	4d 11 e2             	adc    %r12,%r10
  5f5315:	4c 89 94 24 f8 02 00 	mov    %r10,0x2f8(%rsp)
  5f531c:	00 
  5f531d:	49 11 cf             	adc    %rcx,%r15
  5f5320:	4c 89 bc 24 f0 02 00 	mov    %r15,0x2f0(%rsp)
  5f5327:	00 
  5f5328:	48 8b 8c 24 90 03 00 	mov    0x390(%rsp),%rcx
  5f532f:	00 
  5f5330:	49 11 c9             	adc    %rcx,%r9
  5f5333:	4c 89 8c 24 e8 02 00 	mov    %r9,0x2e8(%rsp)
  5f533a:	00 
  5f533b:	48 89 da             	mov    %rbx,%rdx
  5f533e:	48 b9 01 00 00 00 01 	movabs $0x100000001,%rcx
  5f5345:	00 00 00 
  5f5348:	c4 e2 9b f6 c9       	mulx   %rcx,%r12,%rcx
  5f534d:	4c 89 e2             	mov    %r12,%rdx
  5f5350:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  5f5357:	c4 e2 fb f6 c9       	mulx   %rcx,%rax,%rcx
  5f535c:	49 c7 c5 fe ff ff ff 	mov    $0xfffffffffffffffe,%r13
  5f5363:	c4 42 a3 f6 ed       	mulx   %r13,%r11,%r13
  5f5368:	49 b9 00 00 00 00 ff 	movabs $0xffffffff00000000,%r9
  5f536f:	ff ff ff 
  5f5372:	c4 42 83 f6 c9       	mulx   %r9,%r15,%r9
  5f5377:	41 ba ff ff ff ff    	mov    $0xffffffff,%r10d
  5f537d:	c4 c2 9b f6 d2       	mulx   %r10,%r12,%rdx
  5f5382:	4c 01 fa             	add    %r15,%rdx
  5f5385:	4d 11 d9             	adc    %r11,%r9
  5f5388:	49 11 c5             	adc    %rax,%r13
  5f538b:	49 89 cb             	mov    %rcx,%r11
  5f538e:	48 11 c1             	adc    %rax,%rcx
  5f5391:	4c 11 d8             	adc    %r11,%rax
  5f5394:	49 83 d3 00          	adc    $0x0,%r11
  5f5398:	4c 01 e3             	add    %r12,%rbx
  5f539b:	48 11 f2             	adc    %rsi,%rdx
  5f539e:	48 89 94 24 e0 02 00 	mov    %rdx,0x2e0(%rsp)
  5f53a5:	00 
  5f53a6:	49 11 f9             	adc    %rdi,%r9
  5f53a9:	4c 89 8c 24 d8 02 00 	mov    %r9,0x2d8(%rsp)
  5f53b0:	00 
  5f53b1:	4d 11 c5             	adc    %r8,%r13
  5f53b4:	4c 89 ac 24 d0 02 00 	mov    %r13,0x2d0(%rsp)
  5f53bb:	00 
  5f53bc:	48 8b 9c 24 f8 02 00 	mov    0x2f8(%rsp),%rbx
  5f53c3:	00 
  5f53c4:	48 11 d9             	adc    %rbx,%rcx
  5f53c7:	48 89 8c 24 c8 02 00 	mov    %rcx,0x2c8(%rsp)
  5f53ce:	00 
  5f53cf:	48 8b 9c 24 f0 02 00 	mov    0x2f0(%rsp),%rbx
  5f53d6:	00 
  5f53d7:	48 11 d8             	adc    %rbx,%rax
  5f53da:	48 89 84 24 c0 02 00 	mov    %rax,0x2c0(%rsp)
  5f53e1:	00 
  5f53e2:	48 8b 9c 24 e8 02 00 	mov    0x2e8(%rsp),%rbx
  5f53e9:	00 
  5f53ea:	49 11 db             	adc    %rbx,%r11
  5f53ed:	4c 89 9c 24 b8 02 00 	mov    %r11,0x2b8(%rsp)
  5f53f4:	00 
  5f53f5:	0f 92 c3             	setb   %bl
  5f53f8:	0f b6 db             	movzbl %bl,%ebx
  5f53fb:	48 8b b4 24 38 03 00 	mov    0x338(%rsp),%rsi
  5f5402:	00 
  5f5403:	48 8b bc 24 c0 03 00 	mov    0x3c0(%rsp),%rdi
  5f540a:	00 
  5f540b:	48 01 fe             	add    %rdi,%rsi
  5f540e:	48 8b b4 24 28 03 00 	mov    0x328(%rsp),%rsi
  5f5415:	00 
  5f5416:	48 8b bc 24 b8 03 00 	mov    0x3b8(%rsp),%rdi
  5f541d:	00 
  5f541e:	48 11 fe             	adc    %rdi,%rsi
  5f5421:	48 8b b4 24 20 03 00 	mov    0x320(%rsp),%rsi
  5f5428:	00 
  5f5429:	48 8b bc 24 b0 03 00 	mov    0x3b0(%rsp),%rdi
  5f5430:	00 
  5f5431:	48 11 fe             	adc    %rdi,%rsi
  5f5434:	48 8b b4 24 18 03 00 	mov    0x318(%rsp),%rsi
  5f543b:	00 
  5f543c:	48 8b bc 24 a8 03 00 	mov    0x3a8(%rsp),%rdi
  5f5443:	00 
  5f5444:	48 11 fe             	adc    %rdi,%rsi
  5f5447:	48 8b b4 24 10 03 00 	mov    0x310(%rsp),%rsi
  5f544e:	00 
  5f544f:	48 8b bc 24 a0 03 00 	mov    0x3a0(%rsp),%rdi
  5f5456:	00 
  5f5457:	48 11 fe             	adc    %rdi,%rsi
  5f545a:	48 8b b4 24 08 03 00 	mov    0x308(%rsp),%rsi
  5f5461:	00 
  5f5462:	48 8b bc 24 98 03 00 	mov    0x398(%rsp),%rdi
  5f5469:	00 
  5f546a:	48 11 fe             	adc    %rdi,%rsi
  5f546d:	48 8b b4 24 00 03 00 	mov    0x300(%rsp),%rsi
  5f5474:	00 
  5f5475:	48 8b bc 24 90 03 00 	mov    0x390(%rsp),%rdi
  5f547c:	00 
  5f547d:	48 11 fe             	adc    %rdi,%rsi
  5f5480:	48 83 d3 00          	adc    $0x0,%rbx
  5f5484:	48 89 9c 24 b0 02 00 	mov    %rbx,0x2b0(%rsp)
  5f548b:	00 
  5f548c:	48 8b b4 24 50 02 00 	mov    0x250(%rsp),%rsi
  5f5493:	00 
  5f5494:	48 8b bc 24 68 02 00 	mov    0x268(%rsp),%rdi
  5f549b:	00 
  5f549c:	48 01 fe             	add    %rdi,%rsi
  5f549f:	48 89 b4 24 48 02 00 	mov    %rsi,0x248(%rsp)
  5f54a6:	00 
  5f54a7:	48 8b bc 24 60 02 00 	mov    0x260(%rsp),%rdi
  5f54ae:	00 
  5f54af:	4c 8b 84 24 78 02 00 	mov    0x278(%rsp),%r8
  5f54b6:	00 
  5f54b7:	4c 11 c7             	adc    %r8,%rdi
  5f54ba:	48 89 bc 24 40 02 00 	mov    %rdi,0x240(%rsp)
  5f54c1:	00 
  5f54c2:	4c 8b 84 24 70 02 00 	mov    0x270(%rsp),%r8
  5f54c9:	00 
  5f54ca:	4c 8b a4 24 88 02 00 	mov    0x288(%rsp),%r12
  5f54d1:	00 
  5f54d2:	4d 11 e0             	adc    %r12,%r8
  5f54d5:	4c 89 84 24 38 02 00 	mov    %r8,0x238(%rsp)
  5f54dc:	00 
  5f54dd:	4c 8b a4 24 80 02 00 	mov    0x280(%rsp),%r12
  5f54e4:	00 
  5f54e5:	4c 8b bc 24 98 02 00 	mov    0x298(%rsp),%r15
  5f54ec:	00 
  5f54ed:	4d 11 fc             	adc    %r15,%r12
  5f54f0:	4c 89 a4 24 30 02 00 	mov    %r12,0x230(%rsp)
  5f54f7:	00 
  5f54f8:	4c 8b bc 24 90 02 00 	mov    0x290(%rsp),%r15
  5f54ff:	00 
  5f5500:	4c 8b 94 24 a8 02 00 	mov    0x2a8(%rsp),%r10
  5f5507:	00 
  5f5508:	4d 11 d7             	adc    %r10,%r15
  5f550b:	4c 89 bc 24 28 02 00 	mov    %r15,0x228(%rsp)
  5f5512:	00 
  5f5513:	4c 8b 94 24 a0 02 00 	mov    0x2a0(%rsp),%r10
  5f551a:	00 
  5f551b:	49 83 d2 00          	adc    $0x0,%r10
  5f551f:	4c 89 94 24 20 02 00 	mov    %r10,0x220(%rsp)
  5f5526:	00 
  5f5527:	48 8b 9c 24 58 02 00 	mov    0x258(%rsp),%rbx
  5f552e:	00 
  5f552f:	48 01 d3             	add    %rdx,%rbx
  5f5532:	4c 11 ce             	adc    %r9,%rsi
  5f5535:	4c 11 ef             	adc    %r13,%rdi
  5f5538:	49 11 c8             	adc    %rcx,%r8
  5f553b:	49 11 c4             	adc    %rax,%r12
  5f553e:	4c 89 a4 24 18 02 00 	mov    %r12,0x218(%rsp)
  5f5545:	00 
  5f5546:	4d 11 df             	adc    %r11,%r15
  5f5549:	4c 89 bc 24 10 02 00 	mov    %r15,0x210(%rsp)
  5f5550:	00 
  5f5551:	4c 8b 9c 24 b0 02 00 	mov    0x2b0(%rsp),%r11
  5f5558:	00 
  5f5559:	4d 11 da             	adc    %r11,%r10
  5f555c:	4c 89 94 24 08 02 00 	mov    %r10,0x208(%rsp)
  5f5563:	00 
  5f5564:	48 89 da             	mov    %rbx,%rdx
  5f5567:	49 bb 01 00 00 00 01 	movabs $0x100000001,%r11
  5f556e:	00 00 00 
  5f5571:	c4 42 fb f6 db       	mulx   %r11,%rax,%r11
  5f5576:	48 89 c2             	mov    %rax,%rdx
  5f5579:	49 c7 c3 ff ff ff ff 	mov    $0xffffffffffffffff,%r11
  5f5580:	c4 42 f3 f6 db       	mulx   %r11,%rcx,%r11
  5f5585:	49 c7 c5 fe ff ff ff 	mov    $0xfffffffffffffffe,%r13
  5f558c:	c4 42 b3 f6 ed       	mulx   %r13,%r9,%r13
  5f5591:	49 ba 00 00 00 00 ff 	movabs $0xffffffff00000000,%r10
  5f5598:	ff ff ff 
  5f559b:	c4 42 83 f6 d2       	mulx   %r10,%r15,%r10
  5f55a0:	41 bc ff ff ff ff    	mov    $0xffffffff,%r12d
  5f55a6:	c4 c2 fb f6 d4       	mulx   %r12,%rax,%rdx
  5f55ab:	4c 01 fa             	add    %r15,%rdx
  5f55ae:	4d 11 ca             	adc    %r9,%r10
  5f55b1:	49 11 cd             	adc    %rcx,%r13
  5f55b4:	49 89 c9             	mov    %rcx,%r9
  5f55b7:	4c 11 d9             	adc    %r11,%rcx
  5f55ba:	4d 11 d9             	adc    %r11,%r9
  5f55bd:	49 83 d3 00          	adc    $0x0,%r11
  5f55c1:	48 01 c3             	add    %rax,%rbx
  5f55c4:	48 11 f2             	adc    %rsi,%rdx
  5f55c7:	48 89 94 24 f0 01 00 	mov    %rdx,0x1f0(%rsp)
  5f55ce:	00 
  5f55cf:	49 11 fa             	adc    %rdi,%r10
  5f55d2:	4c 89 94 24 e8 01 00 	mov    %r10,0x1e8(%rsp)
  5f55d9:	00 
  5f55da:	4d 11 c5             	adc    %r8,%r13
  5f55dd:	4c 89 ac 24 e0 01 00 	mov    %r13,0x1e0(%rsp)
  5f55e4:	00 
  5f55e5:	48 8b 84 24 18 02 00 	mov    0x218(%rsp),%rax
  5f55ec:	00 
  5f55ed:	48 11 c1             	adc    %rax,%rcx
  5f55f0:	48 89 8c 24 d8 01 00 	mov    %rcx,0x1d8(%rsp)
  5f55f7:	00 
  5f55f8:	48 8b 84 24 10 02 00 	mov    0x210(%rsp),%rax
  5f55ff:	00 
  5f5600:	49 11 c1             	adc    %rax,%r9
  5f5603:	4c 89 8c 24 d0 01 00 	mov    %r9,0x1d0(%rsp)
  5f560a:	00 
  5f560b:	48 8b 84 24 08 02 00 	mov    0x208(%rsp),%rax
  5f5612:	00 
  5f5613:	49 11 c3             	adc    %rax,%r11
  5f5616:	4c 89 9c 24 c8 01 00 	mov    %r11,0x1c8(%rsp)
  5f561d:	00 
  5f561e:	0f 92 c0             	setb   %al
  5f5621:	0f b6 c0             	movzbl %al,%eax
  5f5624:	48 8b 9c 24 58 02 00 	mov    0x258(%rsp),%rbx
  5f562b:	00 
  5f562c:	48 8b b4 24 e0 02 00 	mov    0x2e0(%rsp),%rsi
  5f5633:	00 
  5f5634:	48 01 f3             	add    %rsi,%rbx
  5f5637:	48 8b 9c 24 48 02 00 	mov    0x248(%rsp),%rbx
  5f563e:	00 
  5f563f:	48 8b b4 24 d8 02 00 	mov    0x2d8(%rsp),%rsi
  5f5646:	00 
  5f5647:	48 11 f3             	adc    %rsi,%rbx
  5f564a:	48 8b 9c 24 40 02 00 	mov    0x240(%rsp),%rbx
  5f5651:	00 
  5f5652:	48 8b b4 24 d0 02 00 	mov    0x2d0(%rsp),%rsi
  5f5659:	00 
  5f565a:	48 11 f3             	adc    %rsi,%rbx
  5f565d:	48 8b 9c 24 38 02 00 	mov    0x238(%rsp),%rbx
  5f5664:	00 
  5f5665:	48 8b b4 24 c8 02 00 	mov    0x2c8(%rsp),%rsi
  5f566c:	00 
  5f566d:	48 11 f3             	adc    %rsi,%rbx
  5f5670:	48 8b 9c 24 30 02 00 	mov    0x230(%rsp),%rbx
  5f5677:	00 
  5f5678:	48 8b b4 24 c0 02 00 	mov    0x2c0(%rsp),%rsi
  5f567f:	00 
  5f5680:	48 11 f3             	adc    %rsi,%rbx
  5f5683:	48 8b 9c 24 28 02 00 	mov    0x228(%rsp),%rbx
  5f568a:	00 
  5f568b:	48 8b b4 24 b8 02 00 	mov    0x2b8(%rsp),%rsi
  5f5692:	00 
  5f5693:	48 11 f3             	adc    %rsi,%rbx
  5f5696:	48 8b 9c 24 20 02 00 	mov    0x220(%rsp),%rbx
  5f569d:	00 
  5f569e:	48 8b b4 24 b0 02 00 	mov    0x2b0(%rsp),%rsi
  5f56a5:	00 
  5f56a6:	48 11 f3             	adc    %rsi,%rbx
  5f56a9:	48 83 d0 00          	adc    $0x0,%rax
  5f56ad:	48 89 84 24 c0 01 00 	mov    %rax,0x1c0(%rsp)
  5f56b4:	00 
  5f56b5:	48 8b 9c 24 58 01 00 	mov    0x158(%rsp),%rbx
  5f56bc:	00 
  5f56bd:	48 8b b4 24 70 01 00 	mov    0x170(%rsp),%rsi
  5f56c4:	00 
  5f56c5:	48 01 f3             	add    %rsi,%rbx
  5f56c8:	48 89 9c 24 50 01 00 	mov    %rbx,0x150(%rsp)
  5f56cf:	00 
  5f56d0:	48 8b b4 24 68 01 00 	mov    0x168(%rsp),%rsi
  5f56d7:	00 
  5f56d8:	48 8b bc 24 80 01 00 	mov    0x180(%rsp),%rdi
  5f56df:	00 
  5f56e0:	48 11 fe             	adc    %rdi,%rsi
  5f56e3:	48 89 b4 24 40 01 00 	mov    %rsi,0x140(%rsp)
  5f56ea:	00 
  5f56eb:	48 8b bc 24 78 01 00 	mov    0x178(%rsp),%rdi
  5f56f2:	00 
  5f56f3:	4c 8b 84 24 90 01 00 	mov    0x190(%rsp),%r8
  5f56fa:	00 
  5f56fb:	4c 11 c7             	adc    %r8,%rdi
  5f56fe:	48 89 bc 24 38 01 00 	mov    %rdi,0x138(%rsp)
  5f5705:	00 
  5f5706:	4c 8b 84 24 88 01 00 	mov    0x188(%rsp),%r8
  5f570d:	00 
  5f570e:	4c 8b bc 24 a8 01 00 	mov    0x1a8(%rsp),%r15
  5f5715:	00 
  5f5716:	4d 11 f8             	adc    %r15,%r8
  5f5719:	4c 89 84 24 30 01 00 	mov    %r8,0x130(%rsp)
  5f5720:	00 
  5f5721:	4c 8b bc 24 98 01 00 	mov    0x198(%rsp),%r15
  5f5728:	00 
  5f5729:	4c 8b a4 24 b8 01 00 	mov    0x1b8(%rsp),%r12
  5f5730:	00 
  5f5731:	4d 11 e7             	adc    %r12,%r15
  5f5734:	4c 89 bc 24 28 01 00 	mov    %r15,0x128(%rsp)
  5f573b:	00 
  5f573c:	4c 8b a4 24 b0 01 00 	mov    0x1b0(%rsp),%r12
  5f5743:	00 
  5f5744:	49 83 d4 00          	adc    $0x0,%r12
  5f5748:	4c 89 a4 24 20 01 00 	mov    %r12,0x120(%rsp)
  5f574f:	00 
  5f5750:	48 8b 84 24 60 01 00 	mov    0x160(%rsp),%rax
  5f5757:	00 
  5f5758:	48 01 d0             	add    %rdx,%rax
  5f575b:	4c 11 d3             	adc    %r10,%rbx
  5f575e:	4c 11 ee             	adc    %r13,%rsi
  5f5761:	48 11 cf             	adc    %rcx,%rdi
  5f5764:	4d 11 c8             	adc    %r9,%r8
  5f5767:	4c 89 84 24 18 01 00 	mov    %r8,0x118(%rsp)
  5f576e:	00 
  5f576f:	4d 11 df             	adc    %r11,%r15
  5f5772:	4c 89 bc 24 08 01 00 	mov    %r15,0x108(%rsp)
  5f5779:	00 
  5f577a:	4c 8b 9c 24 c0 01 00 	mov    0x1c0(%rsp),%r11
  5f5781:	00 
  5f5782:	4d 11 dc             	adc    %r11,%r12
  5f5785:	4c 89 a4 24 00 01 00 	mov    %r12,0x100(%rsp)
  5f578c:	00 
  5f578d:	48 89 c2             	mov    %rax,%rdx
  5f5790:	49 bb 01 00 00 00 01 	movabs $0x100000001,%r11
  5f5797:	00 00 00 
  5f579a:	c4 42 b3 f6 db       	mulx   %r11,%r9,%r11
  5f579f:	4c 89 ca             	mov    %r9,%rdx
  5f57a2:	49 c7 c3 ff ff ff ff 	mov    $0xffffffffffffffff,%r11
  5f57a9:	c4 42 f3 f6 db       	mulx   %r11,%rcx,%r11
  5f57ae:	49 c7 c5 fe ff ff ff 	mov    $0xfffffffffffffffe,%r13
  5f57b5:	c4 42 ab f6 ed       	mulx   %r13,%r10,%r13
  5f57ba:	49 bc 00 00 00 00 ff 	movabs $0xffffffff00000000,%r12
  5f57c1:	ff ff ff 
  5f57c4:	c4 42 83 f6 e4       	mulx   %r12,%r15,%r12
  5f57c9:	41 b8 ff ff ff ff    	mov    $0xffffffff,%r8d
  5f57cf:	c4 42 eb f6 c8       	mulx   %r8,%rdx,%r9
  5f57d4:	4d 01 f9             	add    %r15,%r9
  5f57d7:	4d 11 d4             	adc    %r10,%r12
  5f57da:	49 11 cd             	adc    %rcx,%r13
  5f57dd:	49 89 ca             	mov    %rcx,%r10
  5f57e0:	4c 11 d9             	adc    %r11,%rcx
  5f57e3:	4d 11 da             	adc    %r11,%r10
  5f57e6:	49 83 d3 00          	adc    $0x0,%r11
  5f57ea:	48 01 d0             	add    %rdx,%rax
  5f57ed:	49 11 d9             	adc    %rbx,%r9
  5f57f0:	49 11 f4             	adc    %rsi,%r12
  5f57f3:	49 11 fd             	adc    %rdi,%r13
  5f57f6:	48 8b 84 24 18 01 00 	mov    0x118(%rsp),%rax
  5f57fd:	00 
  5f57fe:	48 11 c1             	adc    %rax,%rcx
  5f5801:	48 8b 84 24 08 01 00 	mov    0x108(%rsp),%rax
  5f5808:	00 
  5f5809:	49 11 c2             	adc    %rax,%r10
  5f580c:	48 8b 84 24 00 01 00 	mov    0x100(%rsp),%rax
  5f5813:	00 
  5f5814:	49 11 c3             	adc    %rax,%r11
  5f5817:	0f 92 c0             	setb   %al
  5f581a:	0f b6 c0             	movzbl %al,%eax
  5f581d:	48 8b 9c 24 60 01 00 	mov    0x160(%rsp),%rbx
  5f5824:	00 
  5f5825:	48 8b b4 24 f0 01 00 	mov    0x1f0(%rsp),%rsi
  5f582c:	00 
  5f582d:	48 01 f3             	add    %rsi,%rbx
  5f5830:	48 8b 9c 24 50 01 00 	mov    0x150(%rsp),%rbx
  5f5837:	00 
  5f5838:	48 8b b4 24 e8 01 00 	mov    0x1e8(%rsp),%rsi
  5f583f:	00 
  5f5840:	48 11 f3             	adc    %rsi,%rbx
  5f5843:	48 8b 9c 24 40 01 00 	mov    0x140(%rsp),%rbx
  5f584a:	00 
  5f584b:	48 8b b4 24 e0 01 00 	mov    0x1e0(%rsp),%rsi
  5f5852:	00 
  5f5853:	48 11 f3             	adc    %rsi,%rbx
  5f5856:	48 8b 9c 24 38 01 00 	mov    0x138(%rsp),%rbx
  5f585d:	00 
  5f585e:	48 8b b4 24 d8 01 00 	mov    0x1d8(%rsp),%rsi
  5f5865:	00 
  5f5866:	48 11 f3             	adc    %rsi,%rbx
  5f5869:	48 8b 9c 24 30 01 00 	mov    0x130(%rsp),%rbx
  5f5870:	00 
  5f5871:	48 8b b4 24 d0 01 00 	mov    0x1d0(%rsp),%rsi
  5f5878:	00 
  5f5879:	48 11 f3             	adc    %rsi,%rbx
  5f587c:	48 8b 9c 24 28 01 00 	mov    0x128(%rsp),%rbx
  5f5883:	00 
  5f5884:	48 8b b4 24 c8 01 00 	mov    0x1c8(%rsp),%rsi
  5f588b:	00 
  5f588c:	48 11 f3             	adc    %rsi,%rbx
  5f588f:	48 8b 9c 24 20 01 00 	mov    0x120(%rsp),%rbx
  5f5896:	00 
  5f5897:	48 8b b4 24 c0 01 00 	mov    0x1c0(%rsp),%rsi
  5f589e:	00 
  5f589f:	48 11 f3             	adc    %rsi,%rbx
  5f58a2:	48 83 d0 00          	adc    $0x0,%rax
  5f58a6:	4c 89 cb             	mov    %r9,%rbx
  5f58a9:	4d 29 c1             	sub    %r8,%r9
  5f58ac:	48 be 00 00 00 00 ff 	movabs $0xffffffff00000000,%rsi
  5f58b3:	ff ff ff 
  5f58b6:	4c 89 e7             	mov    %r12,%rdi
  5f58b9:	49 19 f4             	sbb    %rsi,%r12
  5f58bc:	4c 89 ee             	mov    %r13,%rsi
  5f58bf:	49 83 dd fe          	sbb    $0xfffffffffffffffe,%r13
  5f58c3:	49 89 c8             	mov    %rcx,%r8
  5f58c6:	48 83 d9 ff          	sbb    $0xffffffffffffffff,%rcx
  5f58ca:	4d 89 d7             	mov    %r10,%r15
  5f58cd:	49 83 da ff          	sbb    $0xffffffffffffffff,%r10
  5f58d1:	4c 89 da             	mov    %r11,%rdx
  5f58d4:	49 83 db ff          	sbb    $0xffffffffffffffff,%r11
  5f58d8:	48 83 d8 00          	sbb    $0x0,%rax
  5f58dc:	0f 92 c0             	setb   %al
  5f58df:	0f b6 c0             	movzbl %al,%eax
  5f58e2:	48 f7 d8             	neg    %rax
  5f58e5:	48 21 c3             	and    %rax,%rbx
  5f58e8:	c4 42 f8 f2 c9       	andn   %r9,%rax,%r9
  5f58ed:	4c 09 cb             	or     %r9,%rbx
  5f58f0:	4c 8b 8c 24 18 05 00 	mov    0x518(%rsp),%r9
  5f58f7:	00 
  5f58f8:	49 89 19             	mov    %rbx,(%r9)
  5f58fb:	48 21 c7             	and    %rax,%rdi
  5f58fe:	c4 c2 f8 f2 dc       	andn   %r12,%rax,%rbx
  5f5903:	48 09 df             	or     %rbx,%rdi
  5f5906:	49 89 79 08          	mov    %rdi,0x8(%r9)
  5f590a:	48 21 c6             	and    %rax,%rsi
  5f590d:	c4 c2 f8 f2 dd       	andn   %r13,%rax,%rbx
  5f5912:	48 09 de             	or     %rbx,%rsi
  5f5915:	49 89 71 10          	mov    %rsi,0x10(%r9)
  5f5919:	49 21 c0             	and    %rax,%r8
  5f591c:	c4 e2 f8 f2 c9       	andn   %rcx,%rax,%rcx
  5f5921:	4c 09 c1             	or     %r8,%rcx
  5f5924:	49 89 49 18          	mov    %rcx,0x18(%r9)
  5f5928:	49 21 c7             	and    %rax,%r15
  5f592b:	c4 c2 f8 f2 ca       	andn   %r10,%rax,%rcx
  5f5930:	49 09 cf             	or     %rcx,%r15
  5f5933:	4d 89 79 20          	mov    %r15,0x20(%r9)
  5f5937:	48 21 c2             	and    %rax,%rdx
  5f593a:	c4 c2 f8 f2 c3       	andn   %r11,%rax,%rax
  5f593f:	48 09 c2             	or     %rax,%rdx
  5f5942:	49 89 51 28          	mov    %rdx,0x28(%r9)
  5f5946:	c9                   	leave
  5f5947:	c3                   	ret
  5f5948:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  5f594d:	48 89 5c 24 10       	mov    %rbx,0x10(%rsp)
  5f5952:	48 89 4c 24 18       	mov    %rcx,0x18(%rsp)
  5f5957:	e8 64 69 e9 ff       	call   48c2c0 <runtime.morestack_noctxt.abi0>
  5f595c:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
  5f5961:	48 8b 5c 24 10       	mov    0x10(%rsp),%rbx
  5f5966:	48 8b 4c 24 18       	mov    0x18(%rsp),%rcx
  5f596b:	e9 b0 ef ff ff       	jmp    5f4920 <crypto/internal/fips140/nistec/fiat.p384Mul>

Disassembly of section .plt:
