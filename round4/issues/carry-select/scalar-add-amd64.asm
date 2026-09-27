
/home/exedev/crypto-audit/round4/bin/ed25519-verify.test:     file format elf64-x86-64


Disassembly of section .text:

00000000005fc020 <crypto/internal/fips140/edwards25519.fiatScalarAdd>:
  5fc020:	48 8b 13             	mov    (%rbx),%rdx
  5fc023:	48 8b 31             	mov    (%rcx),%rsi
  5fc026:	48 8b 7b 08          	mov    0x8(%rbx),%rdi
  5fc02a:	4c 8b 41 08          	mov    0x8(%rcx),%r8
  5fc02e:	4c 8b 4b 10          	mov    0x10(%rbx),%r9
  5fc032:	4c 8b 51 10          	mov    0x10(%rcx),%r10
  5fc036:	48 8b 5b 18          	mov    0x18(%rbx),%rbx
  5fc03a:	48 8b 49 18          	mov    0x18(%rcx),%rcx
  5fc03e:	90                   	nop
  5fc03f:	90                   	nop
  5fc040:	90                   	nop
  5fc041:	90                   	nop
  5fc042:	48 01 d6             	add    %rdx,%rsi
  5fc045:	49 11 f8             	adc    %rdi,%r8
  5fc048:	4d 11 ca             	adc    %r9,%r10
  5fc04b:	48 11 d9             	adc    %rbx,%rcx
  5fc04e:	0f 92 c2             	setb   %dl
  5fc051:	0f b6 d2             	movzbl %dl,%edx
  5fc054:	48 bb ed d3 f5 5c 1a 	movabs $0x5812631a5cf5d3ed,%rbx
  5fc05b:	63 12 58 
  5fc05e:	48 89 f7             	mov    %rsi,%rdi
  5fc061:	48 29 de             	sub    %rbx,%rsi
  5fc064:	48 bb d6 9c f7 a2 de 	movabs $0x14def9dea2f79cd6,%rbx
  5fc06b:	f9 de 14 
  5fc06e:	4d 89 c1             	mov    %r8,%r9
  5fc071:	49 19 d8             	sbb    %rbx,%r8
  5fc074:	4c 89 d3             	mov    %r10,%rbx
  5fc077:	49 83 da 00          	sbb    $0x0,%r10
  5fc07b:	49 bb 00 00 00 00 00 	movabs $0x1000000000000000,%r11
  5fc082:	00 00 10 
  5fc085:	49 89 cc             	mov    %rcx,%r12
  5fc088:	4c 19 d9             	sbb    %r11,%rcx
  5fc08b:	48 83 da 00          	sbb    $0x0,%rdx
  5fc08f:	0f 92 c2             	setb   %dl
  5fc092:	0f b6 d2             	movzbl %dl,%edx
  5fc095:	48 f7 da             	neg    %rdx
  5fc098:	48 21 d7             	and    %rdx,%rdi
  5fc09b:	49 89 d3             	mov    %rdx,%r11
  5fc09e:	48 f7 d2             	not    %rdx
  5fc0a1:	48 21 d6             	and    %rdx,%rsi
  5fc0a4:	48 09 fe             	or     %rdi,%rsi
  5fc0a7:	48 89 30             	mov    %rsi,(%rax)
  5fc0aa:	4d 21 d9             	and    %r11,%r9
  5fc0ad:	49 21 d0             	and    %rdx,%r8
  5fc0b0:	4d 09 c8             	or     %r9,%r8
  5fc0b3:	4c 89 40 08          	mov    %r8,0x8(%rax)
  5fc0b7:	4c 21 db             	and    %r11,%rbx
  5fc0ba:	49 21 d2             	and    %rdx,%r10
  5fc0bd:	49 09 da             	or     %rbx,%r10
  5fc0c0:	4c 89 50 10          	mov    %r10,0x10(%rax)
  5fc0c4:	4d 21 e3             	and    %r12,%r11
  5fc0c7:	48 21 ca             	and    %rcx,%rdx
  5fc0ca:	4c 09 da             	or     %r11,%rdx
  5fc0cd:	48 89 50 18          	mov    %rdx,0x18(%rax)
  5fc0d1:	c3                   	ret

Disassembly of section .plt:
