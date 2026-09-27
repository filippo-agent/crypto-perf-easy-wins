
/home/exedev/crypto-audit/round4/bin/mldsa-sign.test:     file format elf64-x86-64


Disassembly of section .text:

00000000005d5700 <crypto/internal/fips140/mldsa.decompose32>:
  5d5700:	90                   	nop
  5d5701:	89 c1                	mov    %eax,%ecx
  5d5703:	69 d0 ff df 7f fc    	imul   $0xfc7fdfff,%eax,%edx
  5d5709:	48 69 d2 01 e0 7f 00 	imul   $0x7fe001,%rdx,%rdx
  5d5710:	48 01 d1             	add    %rdx,%rcx
  5d5713:	48 c1 e9 20          	shr    $0x20,%rcx
  5d5717:	48 8d 91 ff 1f 80 ff 	lea    -0x7fe001(%rcx),%rdx
  5d571e:	90                   	nop
  5d571f:	90                   	nop
  5d5720:	90                   	nop
  5d5721:	90                   	nop
  5d5722:	90                   	nop
  5d5723:	48 81 f9 00 e0 7f 00 	cmp    $0x7fe000,%rcx
  5d572a:	48 0f 4e d1          	cmovle %rcx,%rdx
  5d572e:	8d 4a 7f             	lea    0x7f(%rdx),%ecx
  5d5731:	c1 e9 07             	shr    $0x7,%ecx
  5d5734:	89 ce                	mov    %ecx,%esi
  5d5736:	c1 e1 07             	shl    $0x7,%ecx
  5d5739:	8d 84 ce 00 00 20 00 	lea    0x200000(%rsi,%rcx,8),%eax
  5d5740:	c1 e8 16             	shr    $0x16,%eax
  5d5743:	89 c1                	mov    %eax,%ecx
  5d5745:	83 e1 0f             	and    $0xf,%ecx
  5d5748:	69 c9 00 c0 ff 00    	imul   $0xffc000,%ecx,%ecx
  5d574e:	c1 e9 05             	shr    $0x5,%ecx
  5d5751:	29 ca                	sub    %ecx,%edx
  5d5753:	8d 8a ff 1f 80 ff    	lea    -0x7fe001(%rdx),%ecx
  5d5759:	83 e0 0f             	and    $0xf,%eax
  5d575c:	48 63 da             	movslq %edx,%rbx
  5d575f:	48 63 c9             	movslq %ecx,%rcx
  5d5762:	48 81 fb 01 f0 3f 00 	cmp    $0x3ff001,%rbx
  5d5769:	48 0f 4d d9          	cmovge %rcx,%rbx
  5d576d:	c3                   	ret
