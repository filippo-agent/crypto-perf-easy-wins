
/home/exedev/crypto-audit/round4/bin/mldsa-sign.test:     file format elf64-x86-64


Disassembly of section .text:

00000000005d58c0 <crypto/internal/fips140/mldsa.decompose88>:
  5d58c0:	90                   	nop
  5d58c1:	89 c1                	mov    %eax,%ecx
  5d58c3:	69 d0 ff df 7f fc    	imul   $0xfc7fdfff,%eax,%edx
  5d58c9:	48 69 d2 01 e0 7f 00 	imul   $0x7fe001,%rdx,%rdx
  5d58d0:	48 01 d1             	add    %rdx,%rcx
  5d58d3:	48 c1 e9 20          	shr    $0x20,%rcx
  5d58d7:	48 8d 91 ff 1f 80 ff 	lea    -0x7fe001(%rcx),%rdx
  5d58de:	90                   	nop
  5d58df:	90                   	nop
  5d58e0:	90                   	nop
  5d58e1:	90                   	nop
  5d58e2:	90                   	nop
  5d58e3:	90                   	nop
  5d58e4:	48 81 f9 00 e0 7f 00 	cmp    $0x7fe000,%rcx
  5d58eb:	48 0f 4e d1          	cmovle %rcx,%rdx
  5d58ef:	8d 4a 7f             	lea    0x7f(%rdx),%ecx
  5d58f2:	c1 e9 07             	shr    $0x7,%ecx
  5d58f5:	69 c1 0b 2c 00 00    	imul   $0x2c0b,%ecx,%eax
  5d58fb:	05 00 00 80 00       	add    $0x800000,%eax
  5d5900:	c1 e8 18             	shr    $0x18,%eax
  5d5903:	83 f8 2c             	cmp    $0x2c,%eax
  5d5906:	b9 00 00 00 00       	mov    $0x0,%ecx
  5d590b:	48 0f 44 c1          	cmove  %rcx,%rax
  5d590f:	0f b6 c8             	movzbl %al,%ecx
  5d5912:	69 c9 00 c0 ff 00    	imul   $0xffc000,%ecx,%ecx
  5d5918:	48 63 c9             	movslq %ecx,%rcx
  5d591b:	be a3 8b 2e ba       	mov    $0xba2e8ba3,%esi
  5d5920:	48 0f af f1          	imul   %rcx,%rsi
  5d5924:	48 c1 fe 26          	sar    $0x26,%rsi
  5d5928:	48 c1 f9 3f          	sar    $0x3f,%rcx
  5d592c:	29 ce                	sub    %ecx,%esi
  5d592e:	29 f2                	sub    %esi,%edx
  5d5930:	8d 8a ff 1f 80 ff    	lea    -0x7fe001(%rdx),%ecx
  5d5936:	48 63 da             	movslq %edx,%rbx
  5d5939:	48 63 c9             	movslq %ecx,%rcx
  5d593c:	48 81 fb 01 f0 3f 00 	cmp    $0x3ff001,%rbx
  5d5943:	48 0f 4d d9          	cmovge %rcx,%rbx
  5d5947:	c3                   	ret
