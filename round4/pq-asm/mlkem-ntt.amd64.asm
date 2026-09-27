
/home/exedev/crypto-audit/round4/bin/mlkem-encaps.test:     file format elf64-x86-64


Disassembly of section .text:

00000000005d1e40 <crypto/internal/fips140/mlkem.ntt>:
  5d1e40:	55                   	push   %rbp
  5d1e41:	48 89 e5             	mov    %rsp,%rbp
  5d1e44:	48 8d 84 24 10 02 00 	lea    0x210(%rsp),%rax
  5d1e4b:	00 
  5d1e4c:	b9 08 00 00 00       	mov    $0x8,%ecx
  5d1e51:	44 0f 11 38          	movups %xmm15,(%rax)
  5d1e55:	44 0f 11 78 10       	movups %xmm15,0x10(%rax)
  5d1e5a:	44 0f 11 78 20       	movups %xmm15,0x20(%rax)
  5d1e5f:	44 0f 11 78 30       	movups %xmm15,0x30(%rax)
  5d1e64:	48 83 c0 40          	add    $0x40,%rax
  5d1e68:	ff c9                	dec    %ecx
  5d1e6a:	75 e5                	jne    5d1e51 <crypto/internal/fips140/mlkem.ntt+0x11>
  5d1e6c:	b8 01 00 00 00       	mov    $0x1,%eax
  5d1e71:	b9 80 00 00 00       	mov    $0x80,%ecx
  5d1e76:	eb 08                	jmp    5d1e80 <crypto/internal/fips140/mlkem.ntt+0x40>
  5d1e78:	48 d1 e9             	shr    $1,%rcx
  5d1e7b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  5d1e80:	48 83 f9 02          	cmp    $0x2,%rcx
  5d1e84:	0f 8c 0a 01 00 00    	jl     5d1f94 <crypto/internal/fips140/mlkem.ntt+0x154>
  5d1e8a:	31 d2                	xor    %edx,%edx
  5d1e8c:	eb 06                	jmp    5d1e94 <crypto/internal/fips140/mlkem.ntt+0x54>
  5d1e8e:	48 ff c0             	inc    %rax
  5d1e91:	4c 89 c2             	mov    %r8,%rdx
  5d1e94:	48 81 fa 00 01 00 00 	cmp    $0x100,%rdx
  5d1e9b:	7d db                	jge    5d1e78 <crypto/internal/fips140/mlkem.ntt+0x38>
  5d1e9d:	0f 1f 00             	nopl   (%rax)
  5d1ea0:	48 3d 80 00 00 00    	cmp    $0x80,%rax
  5d1ea6:	0f 83 48 01 00 00    	jae    5d1ff4 <crypto/internal/fips140/mlkem.ntt+0x1b4>
  5d1eac:	48 8d 1c 0a          	lea    (%rdx,%rcx,1),%rbx
  5d1eb0:	48 8d 35 a9 56 21 00 	lea    0x2156a9(%rip),%rsi        # 7e7560 <crypto/internal/fips140/mlkem.zetas>
  5d1eb7:	0f b7 3c 46          	movzwl (%rsi,%rax,2),%edi
  5d1ebb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  5d1ec0:	48 81 fb 00 01 00 00 	cmp    $0x100,%rbx
  5d1ec7:	0f 87 1d 01 00 00    	ja     5d1fea <crypto/internal/fips140/mlkem.ntt+0x1aa>
  5d1ecd:	48 39 da             	cmp    %rbx,%rdx
  5d1ed0:	0f 87 0f 01 00 00    	ja     5d1fe5 <crypto/internal/fips140/mlkem.ntt+0x1a5>
  5d1ed6:	4c 8d 04 4a          	lea    (%rdx,%rcx,2),%r8
  5d1eda:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  5d1ee0:	49 81 f8 00 01 00 00 	cmp    $0x100,%r8
  5d1ee7:	0f 87 ed 00 00 00    	ja     5d1fda <crypto/internal/fips140/mlkem.ntt+0x19a>
  5d1eed:	48 8d 54 54 10       	lea    0x10(%rsp,%rdx,2),%rdx
  5d1ef2:	48 8d 5c 5c 10       	lea    0x10(%rsp,%rbx,2),%rbx
  5d1ef7:	45 31 c9             	xor    %r9d,%r9d
  5d1efa:	e9 87 00 00 00       	jmp    5d1f86 <crypto/internal/fips140/mlkem.ntt+0x146>
  5d1eff:	46 0f b7 14 4b       	movzwl (%rbx,%r9,2),%r10d
  5d1f04:	46 0f b7 1c 4a       	movzwl (%rdx,%r9,2),%r11d
  5d1f09:	44 0f af d7          	imul   %edi,%r10d
  5d1f0d:	4d 69 e2 af 13 00 00 	imul   $0x13af,%r10,%r12
  5d1f14:	49 c1 ec 18          	shr    $0x18,%r12
  5d1f18:	45 69 e4 01 0d 00 00 	imul   $0xd01,%r12d,%r12d
  5d1f1f:	45 29 e2             	sub    %r12d,%r10d
  5d1f22:	45 0f b7 d2          	movzwl %r10w,%r10d
  5d1f26:	4d 8d a2 ff f2 ff ff 	lea    -0xd01(%r10),%r12
  5d1f2d:	90                   	nop
  5d1f2e:	90                   	nop
  5d1f2f:	49 81 fa 00 0d 00 00 	cmp    $0xd00,%r10
  5d1f36:	4d 0f 4e e2          	cmovle %r10,%r12
  5d1f3a:	45 29 e3             	sub    %r12d,%r11d
  5d1f3d:	45 8d 93 01 0d 00 00 	lea    0xd01(%r11),%r10d
  5d1f44:	45 0f b7 d2          	movzwl %r10w,%r10d
  5d1f48:	4d 8d 9a ff f2 ff ff 	lea    -0xd01(%r10),%r11
  5d1f4f:	49 81 fa 00 0d 00 00 	cmp    $0xd00,%r10
  5d1f56:	4d 0f 4e da          	cmovle %r10,%r11
  5d1f5a:	66 46 89 1c 4b       	mov    %r11w,(%rbx,%r9,2)
  5d1f5f:	46 0f b7 14 4a       	movzwl (%rdx,%r9,2),%r10d
  5d1f64:	45 01 e2             	add    %r12d,%r10d
  5d1f67:	45 0f b7 d2          	movzwl %r10w,%r10d
  5d1f6b:	4d 8d 9a ff f2 ff ff 	lea    -0xd01(%r10),%r11
  5d1f72:	90                   	nop
  5d1f73:	49 81 fa 00 0d 00 00 	cmp    $0xd00,%r10
  5d1f7a:	4d 0f 4e da          	cmovle %r10,%r11
  5d1f7e:	66 46 89 1c 4a       	mov    %r11w,(%rdx,%r9,2)
  5d1f83:	49 ff c1             	inc    %r9
  5d1f86:	49 39 c9             	cmp    %rcx,%r9
  5d1f89:	0f 8c 70 ff ff ff    	jl     5d1eff <crypto/internal/fips140/mlkem.ntt+0xbf>
  5d1f8f:	e9 fa fe ff ff       	jmp    5d1e8e <crypto/internal/fips140/mlkem.ntt+0x4e>
  5d1f94:	48 8d 84 24 10 02 00 	lea    0x210(%rsp),%rax
  5d1f9b:	00 
  5d1f9c:	48 8d 4c 24 10       	lea    0x10(%rsp),%rcx
  5d1fa1:	ba 08 00 00 00       	mov    $0x8,%edx
  5d1fa6:	44 0f 10 31          	movups (%rcx),%xmm14
  5d1faa:	44 0f 11 30          	movups %xmm14,(%rax)
  5d1fae:	44 0f 10 71 10       	movups 0x10(%rcx),%xmm14
  5d1fb3:	44 0f 11 70 10       	movups %xmm14,0x10(%rax)
  5d1fb8:	44 0f 10 71 20       	movups 0x20(%rcx),%xmm14
  5d1fbd:	44 0f 11 70 20       	movups %xmm14,0x20(%rax)
  5d1fc2:	44 0f 10 71 30       	movups 0x30(%rcx),%xmm14
  5d1fc7:	44 0f 11 70 30       	movups %xmm14,0x30(%rax)
  5d1fcc:	48 83 c1 40          	add    $0x40,%rcx
  5d1fd0:	48 83 c0 40          	add    $0x40,%rax
  5d1fd4:	ff ca                	dec    %edx
  5d1fd6:	75 ce                	jne    5d1fa6 <crypto/internal/fips140/mlkem.ntt+0x166>
  5d1fd8:	5d                   	pop    %rbp
  5d1fd9:	c3                   	ret
  5d1fda:	b8 00 01 00 00       	mov    $0x100,%eax
  5d1fdf:	90                   	nop
  5d1fe0:	e8 1b c3 eb ff       	call   48e300 <runtime.panicBounds>
  5d1fe5:	e8 16 c3 eb ff       	call   48e300 <runtime.panicBounds>
  5d1fea:	b8 00 01 00 00       	mov    $0x100,%eax
  5d1fef:	e8 0c c3 eb ff       	call   48e300 <runtime.panicBounds>
  5d1ff4:	b9 80 00 00 00       	mov    $0x80,%ecx
  5d1ff9:	e8 02 c3 eb ff       	call   48e300 <runtime.panicBounds>
  5d1ffe:	90                   	nop
