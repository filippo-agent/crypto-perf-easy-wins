
/home/exedev/crypto-audit/round4/bin/mlkem-encaps.test:     file format elf64-x86-64


Disassembly of section .text:

00000000005d1bc0 <crypto/internal/fips140/mlkem.samplePolyCBD>:
  5d1bc0:	4c 8d a4 24 c8 fe ff 	lea    -0x138(%rsp),%r12
  5d1bc7:	ff 
  5d1bc8:	4d 3b 66 10          	cmp    0x10(%r14),%r12
  5d1bcc:	0f 86 06 02 00 00    	jbe    5d1dd8 <crypto/internal/fips140/mlkem.samplePolyCBD+0x218>
  5d1bd2:	55                   	push   %rbp
  5d1bd3:	48 89 e5             	mov    %rsp,%rbp
  5d1bd6:	48 81 ec b0 01 00 00 	sub    $0x1b0,%rsp
  5d1bdd:	48 89 84 24 c0 03 00 	mov    %rax,0x3c0(%rsp)
  5d1be4:	00 
  5d1be5:	40 88 bc 24 d8 03 00 	mov    %dil,0x3d8(%rsp)
  5d1bec:	00 
  5d1bed:	48 8d 94 24 c0 01 00 	lea    0x1c0(%rsp),%rdx
  5d1bf4:	00 
  5d1bf5:	be 08 00 00 00       	mov    $0x8,%esi
  5d1bfa:	44 0f 11 3a          	movups %xmm15,(%rdx)
  5d1bfe:	44 0f 11 7a 10       	movups %xmm15,0x10(%rdx)
  5d1c03:	44 0f 11 7a 20       	movups %xmm15,0x20(%rdx)
  5d1c08:	44 0f 11 7a 30       	movups %xmm15,0x30(%rdx)
  5d1c0d:	48 83 c2 40          	add    $0x40,%rdx
  5d1c11:	ff ce                	dec    %esi
  5d1c13:	75 e5                	jne    5d1bfa <crypto/internal/fips140/mlkem.samplePolyCBD+0x3a>
  5d1c15:	90                   	nop
  5d1c16:	48 8d 94 24 a8 00 00 	lea    0xa8(%rsp),%rdx
  5d1c1d:	00 
  5d1c1e:	be 04 00 00 00       	mov    $0x4,%esi
  5d1c23:	44 0f 11 3a          	movups %xmm15,(%rdx)
  5d1c27:	44 0f 11 7a 10       	movups %xmm15,0x10(%rdx)
  5d1c2c:	44 0f 11 7a 20       	movups %xmm15,0x20(%rdx)
  5d1c31:	44 0f 11 7a 30       	movups %xmm15,0x30(%rdx)
  5d1c36:	48 83 c2 40          	add    $0x40,%rdx
  5d1c3a:	ff ce                	dec    %esi
  5d1c3c:	75 e5                	jne    5d1c23 <crypto/internal/fips140/mlkem.samplePolyCBD+0x63>
  5d1c3e:	44 0f 11 7a f8       	movups %xmm15,-0x8(%rdx)
  5d1c43:	48 c7 84 24 78 01 00 	movq   $0x88,0x178(%rsp)
  5d1c4a:	00 88 00 00 00 
  5d1c4f:	48 c7 84 24 88 01 00 	movq   $0x40,0x188(%rsp)
  5d1c56:	00 40 00 00 00 
  5d1c5b:	c6 84 24 80 01 00 00 	movb   $0x1f,0x180(%rsp)
  5d1c62:	1f 
  5d1c63:	90                   	nop
  5d1c64:	48 89 cf             	mov    %rcx,%rdi
  5d1c67:	48 89 d9             	mov    %rbx,%rcx
  5d1c6a:	48 89 c3             	mov    %rax,%rbx
  5d1c6d:	48 8d 84 24 a8 00 00 	lea    0xa8(%rsp),%rax
  5d1c74:	00 
  5d1c75:	e8 26 03 ff ff       	call   5c1fa0 <crypto/internal/fips140/sha3.(*Digest).Write>
  5d1c7a:	0f b6 94 24 d8 03 00 	movzbl 0x3d8(%rsp),%edx
  5d1c81:	00 
  5d1c82:	88 94 24 a7 00 00 00 	mov    %dl,0xa7(%rsp)
  5d1c89:	48 8d 84 24 a8 00 00 	lea    0xa8(%rsp),%rax
  5d1c90:	00 
  5d1c91:	48 8d 9c 24 a7 00 00 	lea    0xa7(%rsp),%rbx
  5d1c98:	00 
  5d1c99:	b9 01 00 00 00       	mov    $0x1,%ecx
  5d1c9e:	89 cf                	mov    %ecx,%edi
  5d1ca0:	e8 fb 02 ff ff       	call   5c1fa0 <crypto/internal/fips140/sha3.(*Digest).Write>
  5d1ca5:	48 8d 5c 24 27       	lea    0x27(%rsp),%rbx
  5d1caa:	44 0f 11 3b          	movups %xmm15,(%rbx)
  5d1cae:	44 0f 11 7b 10       	movups %xmm15,0x10(%rbx)
  5d1cb3:	44 0f 11 7b 20       	movups %xmm15,0x20(%rbx)
  5d1cb8:	44 0f 11 7b 30       	movups %xmm15,0x30(%rbx)
  5d1cbd:	44 0f 11 7b 40       	movups %xmm15,0x40(%rbx)
  5d1cc2:	44 0f 11 7b 50       	movups %xmm15,0x50(%rbx)
  5d1cc7:	44 0f 11 7b 60       	movups %xmm15,0x60(%rbx)
  5d1ccc:	44 0f 11 7b 70       	movups %xmm15,0x70(%rbx)
  5d1cd1:	48 8d 84 24 a8 00 00 	lea    0xa8(%rsp),%rax
  5d1cd8:	00 
  5d1cd9:	b9 80 00 00 00       	mov    $0x80,%ecx
  5d1cde:	89 cf                	mov    %ecx,%edi
  5d1ce0:	e8 7b 12 ff ff       	call   5c2f60 <crypto/internal/fips140/sha3.(*SHAKE).Read>
  5d1ce5:	48 8d 94 24 c0 01 00 	lea    0x1c0(%rsp),%rdx
  5d1cec:	00 
  5d1ced:	be 08 00 00 00       	mov    $0x8,%esi
  5d1cf2:	44 0f 11 3a          	movups %xmm15,(%rdx)
  5d1cf6:	44 0f 11 7a 10       	movups %xmm15,0x10(%rdx)
  5d1cfb:	44 0f 11 7a 20       	movups %xmm15,0x20(%rdx)
  5d1d00:	44 0f 11 7a 30       	movups %xmm15,0x30(%rdx)
  5d1d05:	48 83 c2 40          	add    $0x40,%rdx
  5d1d09:	ff ce                	dec    %esi
  5d1d0b:	75 e5                	jne    5d1cf2 <crypto/internal/fips140/mlkem.samplePolyCBD+0x132>
  5d1d0d:	31 d2                	xor    %edx,%edx
  5d1d0f:	e9 b5 00 00 00       	jmp    5d1dc9 <crypto/internal/fips140/mlkem.samplePolyCBD+0x209>
  5d1d14:	48 89 d0             	mov    %rdx,%rax
  5d1d17:	48 d1 e8             	shr    $1,%rax
  5d1d1a:	0f b6 44 04 27       	movzbl 0x27(%rsp,%rax,1),%eax
  5d1d1f:	89 c1                	mov    %eax,%ecx
  5d1d21:	c0 e8 07             	shr    $0x7,%al
  5d1d24:	89 cb                	mov    %ecx,%ebx
  5d1d26:	c0 e9 06             	shr    $0x6,%cl
  5d1d29:	83 e1 01             	and    $0x1,%ecx
  5d1d2c:	89 de                	mov    %ebx,%esi
  5d1d2e:	c0 eb 05             	shr    $0x5,%bl
  5d1d31:	83 e3 01             	and    $0x1,%ebx
  5d1d34:	89 f7                	mov    %esi,%edi
  5d1d36:	40 c0 ee 04          	shr    $0x4,%sil
  5d1d3a:	83 e6 01             	and    $0x1,%esi
  5d1d3d:	41 89 f8             	mov    %edi,%r8d
  5d1d40:	40 c0 ef 03          	shr    $0x3,%dil
  5d1d44:	83 e7 01             	and    $0x1,%edi
  5d1d47:	45 89 c1             	mov    %r8d,%r9d
  5d1d4a:	41 c0 e8 02          	shr    $0x2,%r8b
  5d1d4e:	41 83 e0 01          	and    $0x1,%r8d
  5d1d52:	45 89 ca             	mov    %r9d,%r10d
  5d1d55:	41 d0 e9             	shr    $1,%r9b
  5d1d58:	41 83 e1 01          	and    $0x1,%r9d
  5d1d5c:	41 83 e2 01          	and    $0x1,%r10d
  5d1d60:	45 01 d1             	add    %r10d,%r9d
  5d1d63:	45 0f b6 c9          	movzbl %r9b,%r9d
  5d1d67:	44 01 c7             	add    %r8d,%edi
  5d1d6a:	40 0f b6 ff          	movzbl %dil,%edi
  5d1d6e:	01 f3                	add    %esi,%ebx
  5d1d70:	0f b6 db             	movzbl %bl,%ebx
  5d1d73:	01 c8                	add    %ecx,%eax
  5d1d75:	0f b6 c0             	movzbl %al,%eax
  5d1d78:	41 29 f9             	sub    %edi,%r9d
  5d1d7b:	41 8d 89 01 0d 00 00 	lea    0xd01(%r9),%ecx
  5d1d82:	29 c3                	sub    %eax,%ebx
  5d1d84:	8d 83 01 0d 00 00    	lea    0xd01(%rbx),%eax
  5d1d8a:	0f b7 c9             	movzwl %cx,%ecx
  5d1d8d:	48 8d 99 ff f2 ff ff 	lea    -0xd01(%rcx),%rbx
  5d1d94:	0f b7 c0             	movzwl %ax,%eax
  5d1d97:	48 8d b0 ff f2 ff ff 	lea    -0xd01(%rax),%rsi
  5d1d9e:	90                   	nop
  5d1d9f:	48 81 f9 00 0d 00 00 	cmp    $0xd00,%rcx
  5d1da6:	48 0f 4e d9          	cmovle %rcx,%rbx
  5d1daa:	66 89 9c 54 c0 01 00 	mov    %bx,0x1c0(%rsp,%rdx,2)
  5d1db1:	00 
  5d1db2:	90                   	nop
  5d1db3:	48 3d 00 0d 00 00    	cmp    $0xd00,%rax
  5d1db9:	48 0f 4e f0          	cmovle %rax,%rsi
  5d1dbd:	66 89 b4 54 c2 01 00 	mov    %si,0x1c2(%rsp,%rdx,2)
  5d1dc4:	00 
  5d1dc5:	48 83 c2 02          	add    $0x2,%rdx
  5d1dc9:	48 81 fa 00 01 00 00 	cmp    $0x100,%rdx
  5d1dd0:	0f 8c 3e ff ff ff    	jl     5d1d14 <crypto/internal/fips140/mlkem.samplePolyCBD+0x154>
  5d1dd6:	c9                   	leave
  5d1dd7:	c3                   	ret
  5d1dd8:	48 89 84 24 08 02 00 	mov    %rax,0x208(%rsp)
  5d1ddf:	00 
  5d1de0:	48 89 9c 24 10 02 00 	mov    %rbx,0x210(%rsp)
  5d1de7:	00 
  5d1de8:	48 89 8c 24 18 02 00 	mov    %rcx,0x218(%rsp)
  5d1def:	00 
  5d1df0:	40 88 bc 24 20 02 00 	mov    %dil,0x220(%rsp)
  5d1df7:	00 
  5d1df8:	e8 c3 a8 eb ff       	call   48c6c0 <runtime.morestack_noctxt.abi0>
  5d1dfd:	48 8b 84 24 08 02 00 	mov    0x208(%rsp),%rax
  5d1e04:	00 
  5d1e05:	48 8b 9c 24 10 02 00 	mov    0x210(%rsp),%rbx
  5d1e0c:	00 
  5d1e0d:	48 8b 8c 24 18 02 00 	mov    0x218(%rsp),%rcx
  5d1e14:	00 
  5d1e15:	0f b6 bc 24 20 02 00 	movzbl 0x220(%rsp),%edi
  5d1e1c:	00 
  5d1e1d:	0f 1f 00             	nopl   (%rax)
  5d1e20:	e9 9b fd ff ff       	jmp    5d1bc0 <crypto/internal/fips140/mlkem.samplePolyCBD>
