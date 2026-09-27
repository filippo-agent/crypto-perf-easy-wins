
/home/exedev/crypto-audit/round4/bin/hmac-warm.test:     file format elf64-x86-64


Disassembly of section .text:

0000000000638dc0 <crypto/internal/fips140/sha256.(*Digest).Sum>:
  638dc0:	4c 8d 64 24 a0       	lea    -0x60(%rsp),%r12
  638dc5:	4d 3b 66 10          	cmp    0x10(%r14),%r12
  638dc9:	0f 86 de 01 00 00    	jbe    638fad <crypto/internal/fips140/sha256.(*Digest).Sum+0x1ed>
  638dcf:	55                   	push   %rbp
  638dd0:	48 89 e5             	mov    %rsp,%rbp
  638dd3:	48 81 ec d8 00 00 00 	sub    $0xd8,%rsp
  638dda:	48 89 84 24 e8 00 00 	mov    %rax,0xe8(%rsp)
  638de1:	00 
  638de2:	48 89 8c 24 f8 00 00 	mov    %rcx,0xf8(%rsp)
  638de9:	00 
  638dea:	48 89 9c 24 f0 00 00 	mov    %rbx,0xf0(%rsp)
  638df1:	00 
  638df2:	48 89 bc 24 00 01 00 	mov    %rdi,0x100(%rsp)
  638df9:	00 
  638dfa:	e8 61 f0 ff ff       	call   637e60 <crypto/internal/fips140.RecordApproved>
  638dff:	48 8d 44 24 48       	lea    0x48(%rsp),%rax
  638e04:	48 8b 8c 24 e8 00 00 	mov    0xe8(%rsp),%rcx
  638e0b:	00 
  638e0c:	44 0f 10 31          	movups (%rcx),%xmm14
  638e10:	44 0f 11 30          	movups %xmm14,(%rax)
  638e14:	44 0f 10 71 10       	movups 0x10(%rcx),%xmm14
  638e19:	44 0f 11 70 10       	movups %xmm14,0x10(%rax)
  638e1e:	44 0f 10 71 20       	movups 0x20(%rcx),%xmm14
  638e23:	44 0f 11 70 20       	movups %xmm14,0x20(%rax)
  638e28:	44 0f 10 71 30       	movups 0x30(%rcx),%xmm14
  638e2d:	44 0f 11 70 30       	movups %xmm14,0x30(%rax)
  638e32:	44 0f 10 71 40       	movups 0x40(%rcx),%xmm14
  638e37:	44 0f 11 70 40       	movups %xmm14,0x40(%rax)
  638e3c:	44 0f 10 71 50       	movups 0x50(%rcx),%xmm14
  638e41:	44 0f 11 70 50       	movups %xmm14,0x50(%rax)
  638e46:	44 0f 10 71 60       	movups 0x60(%rcx),%xmm14
  638e4b:	44 0f 11 70 60       	movups %xmm14,0x60(%rax)
  638e50:	44 0f 10 71 68       	movups 0x68(%rcx),%xmm14
  638e55:	44 0f 11 70 68       	movups %xmm14,0x68(%rax)
  638e5a:	e8 81 01 00 00       	call   638fe0 <crypto/internal/fips140/sha256.(*Digest).checkSum>
  638e5f:	48 8d 5c 24 28       	lea    0x28(%rsp),%rbx
  638e64:	48 89 e0             	mov    %rsp,%rax
  638e67:	44 0f 10 30          	movups (%rax),%xmm14
  638e6b:	44 0f 11 33          	movups %xmm14,(%rbx)
  638e6f:	44 0f 10 70 10       	movups 0x10(%rax),%xmm14
  638e74:	44 0f 11 73 10       	movups %xmm14,0x10(%rbx)
  638e79:	80 bc 24 b8 00 00 00 	cmpb   $0x0,0xb8(%rsp)
  638e80:	00 
  638e81:	0f 84 98 00 00 00    	je     638f1f <crypto/internal/fips140/sha256.(*Digest).Sum+0x15f>
  638e87:	48 8b 94 24 f8 00 00 	mov    0xf8(%rsp),%rdx
  638e8e:	00 
  638e8f:	4c 8d 42 1c          	lea    0x1c(%rdx),%r8
  638e93:	48 8b 8c 24 00 01 00 	mov    0x100(%rsp),%rcx
  638e9a:	00 
  638e9b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  638ea0:	4c 39 c1             	cmp    %r8,%rcx
  638ea3:	72 0a                	jb     638eaf <crypto/internal/fips140/sha256.(*Digest).Sum+0xef>
  638ea5:	48 8b 84 24 f0 00 00 	mov    0xf0(%rsp),%rax
  638eac:	00 
  638ead:	eb 2c                	jmp    638edb <crypto/internal/fips140/sha256.(*Digest).Sum+0x11b>
  638eaf:	48 8b 84 24 f0 00 00 	mov    0xf0(%rsp),%rax
  638eb6:	00 
  638eb7:	4c 89 c3             	mov    %r8,%rbx
  638eba:	bf 1c 00 00 00       	mov    $0x1c,%edi
  638ebf:	48 8d 35 22 20 26 00 	lea    0x262022(%rip),%rsi        # 89aee8 <type:*+0x3dbe0>
  638ec6:	e8 15 4a e5 ff       	call   48d8e0 <runtime.growslice>
  638ecb:	48 8b 94 24 f8 00 00 	mov    0xf8(%rsp),%rdx
  638ed2:	00 
  638ed3:	49 89 d8             	mov    %rbx,%r8
  638ed6:	48 8d 5c 24 28       	lea    0x28(%rsp),%rbx
  638edb:	48 89 8c 24 c8 00 00 	mov    %rcx,0xc8(%rsp)
  638ee2:	00 
  638ee3:	48 89 84 24 d0 00 00 	mov    %rax,0xd0(%rsp)
  638eea:	00 
  638eeb:	4c 89 84 24 c0 00 00 	mov    %r8,0xc0(%rsp)
  638ef2:	00 
  638ef3:	48 01 d0             	add    %rdx,%rax
  638ef6:	b9 1c 00 00 00       	mov    $0x1c,%ecx
  638efb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  638f00:	e8 3b 9c e5 ff       	call   492b40 <runtime.memmove>
  638f05:	48 8b 84 24 d0 00 00 	mov    0xd0(%rsp),%rax
  638f0c:	00 
  638f0d:	48 8b 9c 24 c0 00 00 	mov    0xc0(%rsp),%rbx
  638f14:	00 
  638f15:	48 8b 8c 24 c8 00 00 	mov    0xc8(%rsp),%rcx
  638f1c:	00 
  638f1d:	c9                   	leave
  638f1e:	c3                   	ret
  638f1f:	48 8b 94 24 f8 00 00 	mov    0xf8(%rsp),%rdx
  638f26:	00 
  638f27:	4c 8d 42 20          	lea    0x20(%rdx),%r8
  638f2b:	48 8b 8c 24 00 01 00 	mov    0x100(%rsp),%rcx
  638f32:	00 
  638f33:	4c 39 c1             	cmp    %r8,%rcx
  638f36:	72 0a                	jb     638f42 <crypto/internal/fips140/sha256.(*Digest).Sum+0x182>
  638f38:	48 8b 84 24 f0 00 00 	mov    0xf0(%rsp),%rax
  638f3f:	00 
  638f40:	eb 2c                	jmp    638f6e <crypto/internal/fips140/sha256.(*Digest).Sum+0x1ae>
  638f42:	48 8b 84 24 f0 00 00 	mov    0xf0(%rsp),%rax
  638f49:	00 
  638f4a:	4c 89 c3             	mov    %r8,%rbx
  638f4d:	bf 20 00 00 00       	mov    $0x20,%edi
  638f52:	48 8d 35 8f 1f 26 00 	lea    0x261f8f(%rip),%rsi        # 89aee8 <type:*+0x3dbe0>
  638f59:	e8 82 49 e5 ff       	call   48d8e0 <runtime.growslice>
  638f5e:	48 8b 94 24 f8 00 00 	mov    0xf8(%rsp),%rdx
  638f65:	00 
  638f66:	49 89 d8             	mov    %rbx,%r8
  638f69:	48 8d 5c 24 28       	lea    0x28(%rsp),%rbx
  638f6e:	48 89 8c 24 c8 00 00 	mov    %rcx,0xc8(%rsp)
  638f75:	00 
  638f76:	4c 89 84 24 c0 00 00 	mov    %r8,0xc0(%rsp)
  638f7d:	00 
  638f7e:	48 89 84 24 d0 00 00 	mov    %rax,0xd0(%rsp)
  638f85:	00 
  638f86:	48 01 d0             	add    %rdx,%rax
  638f89:	b9 20 00 00 00       	mov    $0x20,%ecx
  638f8e:	e8 ad 9b e5 ff       	call   492b40 <runtime.memmove>
  638f93:	48 8b 84 24 d0 00 00 	mov    0xd0(%rsp),%rax
  638f9a:	00 
  638f9b:	48 8b 9c 24 c0 00 00 	mov    0xc0(%rsp),%rbx
  638fa2:	00 
  638fa3:	48 8b 8c 24 c8 00 00 	mov    0xc8(%rsp),%rcx
  638faa:	00 
  638fab:	c9                   	leave
  638fac:	c3                   	ret
  638fad:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  638fb2:	48 89 5c 24 10       	mov    %rbx,0x10(%rsp)
  638fb7:	48 89 4c 24 18       	mov    %rcx,0x18(%rsp)
  638fbc:	48 89 7c 24 20       	mov    %rdi,0x20(%rsp)
  638fc1:	e8 9a 7b e5 ff       	call   490b60 <runtime.morestack_noctxt.abi0>
  638fc6:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
  638fcb:	48 8b 5c 24 10       	mov    0x10(%rsp),%rbx
  638fd0:	48 8b 4c 24 18       	mov    0x18(%rsp),%rcx
  638fd5:	48 8b 7c 24 20       	mov    0x20(%rsp),%rdi
  638fda:	e9 e1 fd ff ff       	jmp    638dc0 <crypto/internal/fips140/sha256.(*Digest).Sum>
