
/home/exedev/crypto-audit/round4/bin/mlkem-encaps.test:     file format elf64-x86-64


Disassembly of section .text:

00000000005d2a60 <crypto/internal/fips140/mlkem.nttMulAddPrecomputed>:
  5d2a60:	31 d2                	xor    %edx,%edx
  5d2a62:	e9 b9 00 00 00       	jmp    5d2b20 <crypto/internal/fips140/mlkem.nttMulAddPrecomputed+0xc0>
  5d2a67:	84 03                	test   %al,(%rbx)
  5d2a69:	84 01                	test   %al,(%rcx)
  5d2a6b:	84 00                	test   %al,(%rax)
  5d2a6d:	84 07                	test   %al,(%rdi)
  5d2a6f:	0f b7 34 53          	movzwl (%rbx,%rdx,2),%esi
  5d2a73:	44 0f b7 44 53 02    	movzwl 0x2(%rbx,%rdx,2),%r8d
  5d2a79:	44 0f b7 0c 51       	movzwl (%rcx,%rdx,2),%r9d
  5d2a7e:	44 0f b7 54 51 02    	movzwl 0x2(%rcx,%rdx,2),%r10d
  5d2a84:	44 0f b7 1c 50       	movzwl (%rax,%rdx,2),%r11d
  5d2a89:	41 89 f4             	mov    %esi,%r12d
  5d2a8c:	41 0f af f1          	imul   %r9d,%esi
  5d2a90:	44 01 de             	add    %r11d,%esi
  5d2a93:	49 89 d3             	mov    %rdx,%r11
  5d2a96:	49 d1 eb             	shr    $1,%r11
  5d2a99:	46 0f b7 1c 5f       	movzwl (%rdi,%r11,2),%r11d
  5d2a9e:	45 0f af d8          	imul   %r8d,%r11d
  5d2aa2:	44 01 de             	add    %r11d,%esi
  5d2aa5:	45 0f af e2          	imul   %r10d,%r12d
  5d2aa9:	45 0f af c8          	imul   %r8d,%r9d
  5d2aad:	4c 69 c6 af 13 00 00 	imul   $0x13af,%rsi,%r8
  5d2ab4:	49 c1 e8 18          	shr    $0x18,%r8
  5d2ab8:	45 69 c0 01 0d 00 00 	imul   $0xd01,%r8d,%r8d
  5d2abf:	44 29 c6             	sub    %r8d,%esi
  5d2ac2:	0f b7 f6             	movzwl %si,%esi
  5d2ac5:	4c 8d 86 ff f2 ff ff 	lea    -0xd01(%rsi),%r8
  5d2acc:	48 81 fe 00 0d 00 00 	cmp    $0xd00,%rsi
  5d2ad3:	4c 0f 4e c6          	cmovle %rsi,%r8
  5d2ad7:	66 44 89 04 50       	mov    %r8w,(%rax,%rdx,2)
  5d2adc:	0f b7 74 50 02       	movzwl 0x2(%rax,%rdx,2),%esi
  5d2ae1:	44 01 e6             	add    %r12d,%esi
  5d2ae4:	44 01 ce             	add    %r9d,%esi
  5d2ae7:	4c 69 c6 af 13 00 00 	imul   $0x13af,%rsi,%r8
  5d2aee:	49 c1 e8 18          	shr    $0x18,%r8
  5d2af2:	45 69 c0 01 0d 00 00 	imul   $0xd01,%r8d,%r8d
  5d2af9:	44 29 c6             	sub    %r8d,%esi
  5d2afc:	0f b7 f6             	movzwl %si,%esi
  5d2aff:	4c 8d 86 ff f2 ff ff 	lea    -0xd01(%rsi),%r8
  5d2b06:	48 81 fe 00 0d 00 00 	cmp    $0xd00,%rsi
  5d2b0d:	4c 0f 4e c6          	cmovle %rsi,%r8
  5d2b11:	66 44 89 44 50 02    	mov    %r8w,0x2(%rax,%rdx,2)
  5d2b17:	48 83 c2 02          	add    $0x2,%rdx
  5d2b1b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  5d2b20:	48 81 fa 00 01 00 00 	cmp    $0x100,%rdx
  5d2b27:	0f 8c 3a ff ff ff    	jl     5d2a67 <crypto/internal/fips140/mlkem.nttMulAddPrecomputed+0x7>
  5d2b2d:	c3                   	ret
