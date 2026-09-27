
/home/exedev/crypto-audit/round4/bin/ed25519-verify.test:     file format elf64-x86-64


Disassembly of section .text:

00000000005fb400 <crypto/internal/fips140/edwards25519.isReduced>:
  5fb400:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  5fb405:	48 83 fb 20          	cmp    $0x20,%rbx
  5fb409:	74 03                	je     5fb40e <crypto/internal/fips140/edwards25519.isReduced+0xe>
  5fb40b:	31 c0                	xor    %eax,%eax
  5fb40d:	c3                   	ret
  5fb40e:	48 8b 08             	mov    (%rax),%rcx
  5fb411:	48 8b 50 08          	mov    0x8(%rax),%rdx
  5fb415:	48 8b 58 10          	mov    0x10(%rax),%rbx
  5fb419:	48 8b 70 18          	mov    0x18(%rax),%rsi
  5fb41d:	48 8b 3d 3c bd 29 00 	mov    0x29bd3c(%rip),%rdi        # 897160 <crypto/internal/fips140/edwards25519.scalarMinusOneBytes>
  5fb424:	4c 8b 05 3d bd 29 00 	mov    0x29bd3d(%rip),%r8        # 897168 <crypto/internal/fips140/edwards25519.scalarMinusOneBytes+0x8>
  5fb42b:	4c 8b 0d 3e bd 29 00 	mov    0x29bd3e(%rip),%r9        # 897170 <crypto/internal/fips140/edwards25519.scalarMinusOneBytes+0x10>
  5fb432:	4c 8b 15 3f bd 29 00 	mov    0x29bd3f(%rip),%r10        # 897178 <crypto/internal/fips140/edwards25519.scalarMinusOneBytes+0x18>
  5fb439:	90                   	nop
  5fb43a:	90                   	nop
  5fb43b:	90                   	nop
  5fb43c:	90                   	nop
  5fb43d:	90                   	nop
  5fb43e:	90                   	nop
  5fb43f:	90                   	nop
  5fb440:	90                   	nop
  5fb441:	90                   	nop
  5fb442:	90                   	nop
  5fb443:	90                   	nop
  5fb444:	90                   	nop
  5fb445:	90                   	nop
  5fb446:	90                   	nop
  5fb447:	90                   	nop
  5fb448:	90                   	nop
  5fb449:	48 29 cf             	sub    %rcx,%rdi
  5fb44c:	49 19 d0             	sbb    %rdx,%r8
  5fb44f:	49 19 d9             	sbb    %rbx,%r9
  5fb452:	49 19 f2             	sbb    %rsi,%r10
  5fb455:	0f 93 c0             	setae  %al
  5fb458:	c3                   	ret

Disassembly of section .plt:
