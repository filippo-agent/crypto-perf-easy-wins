
/home/exedev/crypto-audit/round4/bin/mldsa-sign.test:     file format elf64-x86-64


Disassembly of section .text:

00000000005d5120 <crypto/internal/fips140/mldsa.highBits>:
  5d5120:	49 3b 66 10          	cmp    0x10(%r14),%rsp
  5d5124:	0f 86 6d 01 00 00    	jbe    5d5297 <crypto/internal/fips140/mldsa.highBits+0x177>
  5d512a:	55                   	push   %rbp
  5d512b:	48 89 e5             	mov    %rsp,%rbp
  5d512e:	48 83 ec 10          	sub    $0x10,%rsp
  5d5132:	48 89 84 24 20 05 00 	mov    %rax,0x520(%rsp)
  5d5139:	00 
  5d513a:	48 89 9c 24 28 05 00 	mov    %rbx,0x528(%rsp)
  5d5141:	00 
  5d5142:	48 89 8c 24 30 05 00 	mov    %rcx,0x530(%rsp)
  5d5149:	00 
  5d514a:	48 89 bc 24 38 05 00 	mov    %rdi,0x538(%rsp)
  5d5151:	00 
  5d5152:	48 89 b4 24 40 05 00 	mov    %rsi,0x540(%rsp)
  5d5159:	00 
  5d515a:	4c 89 84 24 48 05 00 	mov    %r8,0x548(%rsp)
  5d5161:	00 
  5d5162:	4c 89 8c 24 50 05 00 	mov    %r9,0x550(%rsp)
  5d5169:	00 
  5d516a:	4c 89 94 24 58 05 00 	mov    %r10,0x558(%rsp)
  5d5171:	00 
  5d5172:	48 8d 8c 24 20 04 00 	lea    0x420(%rsp),%rcx
  5d5179:	00 
  5d517a:	ba 04 00 00 00       	mov    $0x4,%edx
  5d517f:	44 0f 11 39          	movups %xmm15,(%rcx)
  5d5183:	44 0f 11 79 10       	movups %xmm15,0x10(%rcx)
  5d5188:	44 0f 11 79 20       	movups %xmm15,0x20(%rcx)
  5d518d:	44 0f 11 79 30       	movups %xmm15,0x30(%rcx)
  5d5192:	48 83 c1 40          	add    $0x40,%rcx
  5d5196:	ff ca                	dec    %edx
  5d5198:	75 e5                	jne    5d517f <crypto/internal/fips140/mldsa.highBits+0x5f>
  5d519a:	48 8b 8c 24 40 05 00 	mov    0x540(%rsp),%rcx
  5d51a1:	00 
  5d51a2:	48 83 f9 20          	cmp    $0x20,%rcx
  5d51a6:	75 07                	jne    5d51af <crypto/internal/fips140/mldsa.highBits+0x8f>
  5d51a8:	31 c0                	xor    %eax,%eax
  5d51aa:	e9 de 00 00 00       	jmp    5d528d <crypto/internal/fips140/mldsa.highBits+0x16d>
  5d51af:	48 83 f9 58          	cmp    $0x58,%rcx
  5d51b3:	75 68                	jne    5d521d <crypto/internal/fips140/mldsa.highBits+0xfd>
  5d51b5:	31 c0                	xor    %eax,%eax
  5d51b7:	eb 5a                	jmp    5d5213 <crypto/internal/fips140/mldsa.highBits+0xf3>
  5d51b9:	8b 4c 84 20          	mov    0x20(%rsp,%rax,4),%ecx
  5d51bd:	69 d1 ff df 7f fc    	imul   $0xfc7fdfff,%ecx,%edx
  5d51c3:	48 69 d2 01 e0 7f 00 	imul   $0x7fe001,%rdx,%rdx
  5d51ca:	48 01 d1             	add    %rdx,%rcx
  5d51cd:	48 c1 e9 20          	shr    $0x20,%rcx
  5d51d1:	48 8d 91 ff 1f 80 ff 	lea    -0x7fe001(%rcx),%rdx
  5d51d8:	90                   	nop
  5d51d9:	90                   	nop
  5d51da:	90                   	nop
  5d51db:	90                   	nop
  5d51dc:	90                   	nop
  5d51dd:	48 81 f9 00 e0 7f 00 	cmp    $0x7fe000,%rcx
  5d51e4:	48 0f 4e d1          	cmovle %rcx,%rdx
  5d51e8:	8d 4a 7f             	lea    0x7f(%rdx),%ecx
  5d51eb:	c1 e9 07             	shr    $0x7,%ecx
  5d51ee:	69 c9 0b 2c 00 00    	imul   $0x2c0b,%ecx,%ecx
  5d51f4:	81 c1 00 00 80 00    	add    $0x800000,%ecx
  5d51fa:	c1 e9 18             	shr    $0x18,%ecx
  5d51fd:	83 f9 2c             	cmp    $0x2c,%ecx
  5d5200:	ba 00 00 00 00       	mov    $0x0,%edx
  5d5205:	48 0f 44 ca          	cmove  %rdx,%rcx
  5d5209:	88 8c 04 20 04 00 00 	mov    %cl,0x420(%rsp,%rax,1)
  5d5210:	48 ff c0             	inc    %rax
  5d5213:	48 3d 00 01 00 00    	cmp    $0x100,%rax
  5d5219:	7c 9e                	jl     5d51b9 <crypto/internal/fips140/mldsa.highBits+0x99>
  5d521b:	c9                   	leave
  5d521c:	c3                   	ret
  5d521d:	48 8d 05 65 9e 01 00 	lea    0x19e65(%rip),%rax        # 5ef089 <go:string.*+0xf089>
  5d5224:	bb 26 00 00 00       	mov    $0x26,%ebx
  5d5229:	e8 d2 02 eb ff       	call   485500 <runtime.convTstring>
  5d522e:	48 89 c3             	mov    %rax,%rbx
  5d5231:	48 8d 05 b0 56 1f 00 	lea    0x1f56b0(%rip),%rax        # 7ca8e8 <type:*+0x2f340>
  5d5238:	e8 03 1d eb ff       	call   486f40 <runtime.gopanic>
  5d523d:	8b 4c 84 20          	mov    0x20(%rsp,%rax,4),%ecx
  5d5241:	69 d1 ff df 7f fc    	imul   $0xfc7fdfff,%ecx,%edx
  5d5247:	48 69 d2 01 e0 7f 00 	imul   $0x7fe001,%rdx,%rdx
  5d524e:	48 01 d1             	add    %rdx,%rcx
  5d5251:	48 c1 e9 20          	shr    $0x20,%rcx
  5d5255:	48 8d 91 ff 1f 80 ff 	lea    -0x7fe001(%rcx),%rdx
  5d525c:	90                   	nop
  5d525d:	90                   	nop
  5d525e:	90                   	nop
  5d525f:	90                   	nop
  5d5260:	48 81 f9 00 e0 7f 00 	cmp    $0x7fe000,%rcx
  5d5267:	48 0f 4e d1          	cmovle %rcx,%rdx
  5d526b:	8d 4a 7f             	lea    0x7f(%rdx),%ecx
  5d526e:	c1 e9 07             	shr    $0x7,%ecx
  5d5271:	89 ca                	mov    %ecx,%edx
  5d5273:	c1 e1 07             	shl    $0x7,%ecx
  5d5276:	8d 8c ca 00 00 20 00 	lea    0x200000(%rdx,%rcx,8),%ecx
  5d527d:	c1 e9 16             	shr    $0x16,%ecx
  5d5280:	83 e1 0f             	and    $0xf,%ecx
  5d5283:	88 8c 04 20 04 00 00 	mov    %cl,0x420(%rsp,%rax,1)
  5d528a:	48 ff c0             	inc    %rax
  5d528d:	48 3d 00 01 00 00    	cmp    $0x100,%rax
  5d5293:	7c a8                	jl     5d523d <crypto/internal/fips140/mldsa.highBits+0x11d>
  5d5295:	eb 84                	jmp    5d521b <crypto/internal/fips140/mldsa.highBits+0xfb>
  5d5297:	48 89 84 24 08 05 00 	mov    %rax,0x508(%rsp)
  5d529e:	00 
  5d529f:	48 89 9c 24 10 05 00 	mov    %rbx,0x510(%rsp)
  5d52a6:	00 
  5d52a7:	48 89 8c 24 18 05 00 	mov    %rcx,0x518(%rsp)
  5d52ae:	00 
  5d52af:	48 89 bc 24 20 05 00 	mov    %rdi,0x520(%rsp)
  5d52b6:	00 
  5d52b7:	48 89 b4 24 28 05 00 	mov    %rsi,0x528(%rsp)
  5d52be:	00 
  5d52bf:	4c 89 84 24 30 05 00 	mov    %r8,0x530(%rsp)
  5d52c6:	00 
  5d52c7:	4c 89 8c 24 38 05 00 	mov    %r9,0x538(%rsp)
  5d52ce:	00 
  5d52cf:	4c 89 94 24 40 05 00 	mov    %r10,0x540(%rsp)
  5d52d6:	00 
  5d52d7:	e8 84 73 eb ff       	call   48c660 <runtime.morestack_noctxt.abi0>
  5d52dc:	48 8b 84 24 08 05 00 	mov    0x508(%rsp),%rax
  5d52e3:	00 
  5d52e4:	48 8b 9c 24 10 05 00 	mov    0x510(%rsp),%rbx
  5d52eb:	00 
  5d52ec:	48 8b 8c 24 18 05 00 	mov    0x518(%rsp),%rcx
  5d52f3:	00 
  5d52f4:	48 8b bc 24 20 05 00 	mov    0x520(%rsp),%rdi
  5d52fb:	00 
  5d52fc:	48 8b b4 24 28 05 00 	mov    0x528(%rsp),%rsi
  5d5303:	00 
  5d5304:	4c 8b 84 24 30 05 00 	mov    0x530(%rsp),%r8
  5d530b:	00 
  5d530c:	4c 8b 8c 24 38 05 00 	mov    0x538(%rsp),%r9
  5d5313:	00 
  5d5314:	4c 8b 94 24 40 05 00 	mov    0x540(%rsp),%r10
  5d531b:	00 
  5d531c:	0f 1f 40 00          	nopl   0x0(%rax)
  5d5320:	e9 fb fd ff ff       	jmp    5d5120 <crypto/internal/fips140/mldsa.highBits>
