
/home/exedev/crypto-audit/round4/bin/mldsa-sign.test:     file format elf64-x86-64


Disassembly of section .text:

00000000005d4040 <crypto/internal/fips140/mldsa.ntt>:
  5d4040:	55                   	push   %rbp
  5d4041:	48 89 e5             	mov    %rsp,%rbp
  5d4044:	48 8d 84 24 10 04 00 	lea    0x410(%rsp),%rax
  5d404b:	00 
  5d404c:	b9 10 00 00 00       	mov    $0x10,%ecx
  5d4051:	44 0f 11 38          	movups %xmm15,(%rax)
  5d4055:	44 0f 11 78 10       	movups %xmm15,0x10(%rax)
  5d405a:	44 0f 11 78 20       	movups %xmm15,0x20(%rax)
  5d405f:	44 0f 11 78 30       	movups %xmm15,0x30(%rax)
  5d4064:	48 83 c0 40          	add    $0x40,%rax
  5d4068:	ff c9                	dec    %ecx
  5d406a:	75 e5                	jne    5d4051 <crypto/internal/fips140/mldsa.ntt+0x11>
  5d406c:	31 c0                	xor    %eax,%eax
  5d406e:	b9 80 00 00 00       	mov    $0x80,%ecx
  5d4073:	eb 0b                	jmp    5d4080 <crypto/internal/fips140/mldsa.ntt+0x40>
  5d4075:	48 d1 e9             	shr    $1,%rcx
  5d4078:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  5d407f:	00 
  5d4080:	48 83 f9 08          	cmp    $0x8,%rcx
  5d4084:	0f 8c ee 00 00 00    	jl     5d4178 <crypto/internal/fips140/mldsa.ntt+0x138>
  5d408a:	31 d2                	xor    %edx,%edx
  5d408c:	eb 03                	jmp    5d4091 <crypto/internal/fips140/mldsa.ntt+0x51>
  5d408e:	4c 89 c2             	mov    %r8,%rdx
  5d4091:	48 81 fa 00 01 00 00 	cmp    $0x100,%rdx
  5d4098:	7d db                	jge    5d4075 <crypto/internal/fips140/mldsa.ntt+0x35>
  5d409a:	ff c0                	inc    %eax
  5d409c:	0f b6 d8             	movzbl %al,%ebx
  5d409f:	48 8d 34 0a          	lea    (%rdx,%rcx,1),%rsi
  5d40a3:	48 8d 3d d6 79 23 00 	lea    0x2379d6(%rip),%rdi        # 80ba80 <crypto/internal/fips140/mldsa.zetas>
  5d40aa:	8b 1c 9f             	mov    (%rdi,%rbx,4),%ebx
  5d40ad:	48 81 fe 00 01 00 00 	cmp    $0x100,%rsi
  5d40b4:	0f 87 fa 02 00 00    	ja     5d43b4 <crypto/internal/fips140/mldsa.ntt+0x374>
  5d40ba:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  5d40c0:	48 39 f2             	cmp    %rsi,%rdx
  5d40c3:	0f 87 e6 02 00 00    	ja     5d43af <crypto/internal/fips140/mldsa.ntt+0x36f>
  5d40c9:	4c 8d 04 4a          	lea    (%rdx,%rcx,2),%r8
  5d40cd:	49 81 f8 00 01 00 00 	cmp    $0x100,%r8
  5d40d4:	0f 87 cb 02 00 00    	ja     5d43a5 <crypto/internal/fips140/mldsa.ntt+0x365>
  5d40da:	48 8d 54 94 10       	lea    0x10(%rsp,%rdx,4),%rdx
  5d40df:	48 8d 74 b4 10       	lea    0x10(%rsp,%rsi,4),%rsi
  5d40e4:	45 31 c9             	xor    %r9d,%r9d
  5d40e7:	eb 3b                	jmp    5d4124 <crypto/internal/fips140/mldsa.ntt+0xe4>
  5d40e9:	46 8b 54 8e 04       	mov    0x4(%rsi,%r9,4),%r10d
  5d40ee:	46 8b 5c 8a 04       	mov    0x4(%rdx,%r9,4),%r11d
  5d40f3:	4c 0f af d3          	imul   %rbx,%r10
  5d40f7:	45 69 e2 ff df 7f fc 	imul   $0xfc7fdfff,%r10d,%r12d
  5d40fe:	4d 69 e4 01 e0 7f 00 	imul   $0x7fe001,%r12,%r12
  5d4105:	4d 01 e2             	add    %r12,%r10
  5d4108:	49 c1 ea 20          	shr    $0x20,%r10
  5d410c:	45 29 d3             	sub    %r10d,%r11d
  5d410f:	41 81 c3 02 c0 ff 00 	add    $0xffc002,%r11d
  5d4116:	46 89 5c 8e 04       	mov    %r11d,0x4(%rsi,%r9,4)
  5d411b:	46 01 54 8a 04       	add    %r10d,0x4(%rdx,%r9,4)
  5d4120:	49 83 c1 02          	add    $0x2,%r9
  5d4124:	49 39 c9             	cmp    %rcx,%r9
  5d4127:	0f 8d 61 ff ff ff    	jge    5d408e <crypto/internal/fips140/mldsa.ntt+0x4e>
  5d412d:	0f 83 68 02 00 00    	jae    5d439b <crypto/internal/fips140/mldsa.ntt+0x35b>
  5d4133:	46 8b 14 8e          	mov    (%rsi,%r9,4),%r10d
  5d4137:	46 8b 1c 8a          	mov    (%rdx,%r9,4),%r11d
  5d413b:	4d 8d 61 01          	lea    0x1(%r9),%r12
  5d413f:	4c 0f af d3          	imul   %rbx,%r10
  5d4143:	45 69 ea ff df 7f fc 	imul   $0xfc7fdfff,%r10d,%r13d
  5d414a:	4d 69 ed 01 e0 7f 00 	imul   $0x7fe001,%r13,%r13
  5d4151:	4d 01 ea             	add    %r13,%r10
  5d4154:	49 c1 ea 20          	shr    $0x20,%r10
  5d4158:	45 29 d3             	sub    %r10d,%r11d
  5d415b:	41 81 c3 02 c0 ff 00 	add    $0xffc002,%r11d
  5d4162:	46 89 1c 8e          	mov    %r11d,(%rsi,%r9,4)
  5d4166:	46 01 14 8a          	add    %r10d,(%rdx,%r9,4)
  5d416a:	4c 39 e1             	cmp    %r12,%rcx
  5d416d:	0f 87 76 ff ff ff    	ja     5d40e9 <crypto/internal/fips140/mldsa.ntt+0xa9>
  5d4173:	e9 1e 02 00 00       	jmp    5d4396 <crypto/internal/fips140/mldsa.ntt+0x356>
  5d4178:	31 c9                	xor    %ecx,%ecx
  5d417a:	e9 e1 00 00 00       	jmp    5d4260 <crypto/internal/fips140/mldsa.ntt+0x220>
  5d417f:	8b 54 8c 20          	mov    0x20(%rsp,%rcx,4),%edx
  5d4183:	8b 5c 8c 10          	mov    0x10(%rsp,%rcx,4),%ebx
  5d4187:	ff c0                	inc    %eax
  5d4189:	0f b6 f0             	movzbl %al,%esi
  5d418c:	48 8d 3d ed 78 23 00 	lea    0x2378ed(%rip),%rdi        # 80ba80 <crypto/internal/fips140/mldsa.zetas>
  5d4193:	8b 34 b7             	mov    (%rdi,%rsi,4),%esi
  5d4196:	48 0f af d6          	imul   %rsi,%rdx
  5d419a:	44 69 c2 ff df 7f fc 	imul   $0xfc7fdfff,%edx,%r8d
  5d41a1:	4d 69 c0 01 e0 7f 00 	imul   $0x7fe001,%r8,%r8
  5d41a8:	4c 01 c2             	add    %r8,%rdx
  5d41ab:	48 c1 ea 20          	shr    $0x20,%rdx
  5d41af:	29 d3                	sub    %edx,%ebx
  5d41b1:	81 c3 02 c0 ff 00    	add    $0xffc002,%ebx
  5d41b7:	89 5c 8c 20          	mov    %ebx,0x20(%rsp,%rcx,4)
  5d41bb:	01 54 8c 10          	add    %edx,0x10(%rsp,%rcx,4)
  5d41bf:	8b 54 8c 24          	mov    0x24(%rsp,%rcx,4),%edx
  5d41c3:	8b 5c 8c 14          	mov    0x14(%rsp,%rcx,4),%ebx
  5d41c7:	48 0f af d6          	imul   %rsi,%rdx
  5d41cb:	44 69 c2 ff df 7f fc 	imul   $0xfc7fdfff,%edx,%r8d
  5d41d2:	4d 69 c0 01 e0 7f 00 	imul   $0x7fe001,%r8,%r8
  5d41d9:	4c 01 c2             	add    %r8,%rdx
  5d41dc:	48 c1 ea 20          	shr    $0x20,%rdx
  5d41e0:	29 d3                	sub    %edx,%ebx
  5d41e2:	81 c3 02 c0 ff 00    	add    $0xffc002,%ebx
  5d41e8:	89 5c 8c 24          	mov    %ebx,0x24(%rsp,%rcx,4)
  5d41ec:	01 54 8c 14          	add    %edx,0x14(%rsp,%rcx,4)
  5d41f0:	8b 54 8c 28          	mov    0x28(%rsp,%rcx,4),%edx
  5d41f4:	8b 5c 8c 18          	mov    0x18(%rsp,%rcx,4),%ebx
  5d41f8:	48 0f af d6          	imul   %rsi,%rdx
  5d41fc:	44 69 c2 ff df 7f fc 	imul   $0xfc7fdfff,%edx,%r8d
  5d4203:	4d 69 c0 01 e0 7f 00 	imul   $0x7fe001,%r8,%r8
  5d420a:	4c 01 c2             	add    %r8,%rdx
  5d420d:	48 c1 ea 20          	shr    $0x20,%rdx
  5d4211:	29 d3                	sub    %edx,%ebx
  5d4213:	81 c3 02 c0 ff 00    	add    $0xffc002,%ebx
  5d4219:	89 5c 8c 28          	mov    %ebx,0x28(%rsp,%rcx,4)
  5d421d:	01 54 8c 18          	add    %edx,0x18(%rsp,%rcx,4)
  5d4221:	8b 54 8c 2c          	mov    0x2c(%rsp,%rcx,4),%edx
  5d4225:	8b 5c 8c 1c          	mov    0x1c(%rsp,%rcx,4),%ebx
  5d4229:	48 0f af f2          	imul   %rdx,%rsi
  5d422d:	69 d6 ff df 7f fc    	imul   $0xfc7fdfff,%esi,%edx
  5d4233:	48 69 d2 01 e0 7f 00 	imul   $0x7fe001,%rdx,%rdx
  5d423a:	48 01 f2             	add    %rsi,%rdx
  5d423d:	48 c1 ea 20          	shr    $0x20,%rdx
  5d4241:	29 d3                	sub    %edx,%ebx
  5d4243:	81 c3 02 c0 ff 00    	add    $0xffc002,%ebx
  5d4249:	89 5c 8c 2c          	mov    %ebx,0x2c(%rsp,%rcx,4)
  5d424d:	01 54 8c 1c          	add    %edx,0x1c(%rsp,%rcx,4)
  5d4251:	48 83 c1 08          	add    $0x8,%rcx
  5d4255:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  5d425c:	00 00 
  5d425e:	66 90                	xchg   %ax,%ax
  5d4260:	48 81 f9 00 01 00 00 	cmp    $0x100,%rcx
  5d4267:	0f 8c 12 ff ff ff    	jl     5d417f <crypto/internal/fips140/mldsa.ntt+0x13f>
  5d426d:	31 c9                	xor    %ecx,%ecx
  5d426f:	eb 74                	jmp    5d42e5 <crypto/internal/fips140/mldsa.ntt+0x2a5>
  5d4271:	8b 54 8c 18          	mov    0x18(%rsp,%rcx,4),%edx
  5d4275:	8b 5c 8c 10          	mov    0x10(%rsp,%rcx,4),%ebx
  5d4279:	ff c0                	inc    %eax
  5d427b:	0f b6 f0             	movzbl %al,%esi
  5d427e:	48 8d 3d fb 77 23 00 	lea    0x2377fb(%rip),%rdi        # 80ba80 <crypto/internal/fips140/mldsa.zetas>
  5d4285:	8b 34 b7             	mov    (%rdi,%rsi,4),%esi
  5d4288:	48 0f af d6          	imul   %rsi,%rdx
  5d428c:	44 69 c2 ff df 7f fc 	imul   $0xfc7fdfff,%edx,%r8d
  5d4293:	4d 69 c0 01 e0 7f 00 	imul   $0x7fe001,%r8,%r8
  5d429a:	4c 01 c2             	add    %r8,%rdx
  5d429d:	48 c1 ea 20          	shr    $0x20,%rdx
  5d42a1:	29 d3                	sub    %edx,%ebx
  5d42a3:	81 c3 02 c0 ff 00    	add    $0xffc002,%ebx
  5d42a9:	89 5c 8c 18          	mov    %ebx,0x18(%rsp,%rcx,4)
  5d42ad:	01 54 8c 10          	add    %edx,0x10(%rsp,%rcx,4)
  5d42b1:	8b 54 8c 1c          	mov    0x1c(%rsp,%rcx,4),%edx
  5d42b5:	8b 5c 8c 14          	mov    0x14(%rsp,%rcx,4),%ebx
  5d42b9:	48 0f af f2          	imul   %rdx,%rsi
  5d42bd:	69 d6 ff df 7f fc    	imul   $0xfc7fdfff,%esi,%edx
  5d42c3:	48 69 d2 01 e0 7f 00 	imul   $0x7fe001,%rdx,%rdx
  5d42ca:	48 01 f2             	add    %rsi,%rdx
  5d42cd:	48 c1 ea 20          	shr    $0x20,%rdx
  5d42d1:	29 d3                	sub    %edx,%ebx
  5d42d3:	81 c3 02 c0 ff 00    	add    $0xffc002,%ebx
  5d42d9:	89 5c 8c 1c          	mov    %ebx,0x1c(%rsp,%rcx,4)
  5d42dd:	01 54 8c 14          	add    %edx,0x14(%rsp,%rcx,4)
  5d42e1:	48 83 c1 04          	add    $0x4,%rcx
  5d42e5:	48 81 f9 00 01 00 00 	cmp    $0x100,%rcx
  5d42ec:	7c 83                	jl     5d4271 <crypto/internal/fips140/mldsa.ntt+0x231>
  5d42ee:	31 c9                	xor    %ecx,%ecx
  5d42f0:	eb 43                	jmp    5d4335 <crypto/internal/fips140/mldsa.ntt+0x2f5>
  5d42f2:	ff c0                	inc    %eax
  5d42f4:	0f b6 d0             	movzbl %al,%edx
  5d42f7:	48 8d 1d 82 77 23 00 	lea    0x237782(%rip),%rbx        # 80ba80 <crypto/internal/fips140/mldsa.zetas>
  5d42fe:	8b 14 93             	mov    (%rbx,%rdx,4),%edx
  5d4301:	8b 74 8c 14          	mov    0x14(%rsp,%rcx,4),%esi
  5d4305:	8b 7c 8c 10          	mov    0x10(%rsp,%rcx,4),%edi
  5d4309:	48 0f af d6          	imul   %rsi,%rdx
  5d430d:	69 f2 ff df 7f fc    	imul   $0xfc7fdfff,%edx,%esi
  5d4313:	48 69 f6 01 e0 7f 00 	imul   $0x7fe001,%rsi,%rsi
  5d431a:	48 01 f2             	add    %rsi,%rdx
  5d431d:	48 c1 ea 20          	shr    $0x20,%rdx
  5d4321:	29 d7                	sub    %edx,%edi
  5d4323:	8d b7 02 c0 ff 00    	lea    0xffc002(%rdi),%esi
  5d4329:	89 74 8c 14          	mov    %esi,0x14(%rsp,%rcx,4)
  5d432d:	01 54 8c 10          	add    %edx,0x10(%rsp,%rcx,4)
  5d4331:	48 83 c1 02          	add    $0x2,%rcx
  5d4335:	48 81 f9 00 01 00 00 	cmp    $0x100,%rcx
  5d433c:	7c b4                	jl     5d42f2 <crypto/internal/fips140/mldsa.ntt+0x2b2>
  5d433e:	48 8d 84 24 10 04 00 	lea    0x410(%rsp),%rax
  5d4345:	00 
  5d4346:	b9 10 00 00 00       	mov    $0x10,%ecx
  5d434b:	44 0f 11 38          	movups %xmm15,(%rax)
  5d434f:	44 0f 11 78 10       	movups %xmm15,0x10(%rax)
  5d4354:	44 0f 11 78 20       	movups %xmm15,0x20(%rax)
  5d4359:	44 0f 11 78 30       	movups %xmm15,0x30(%rax)
  5d435e:	48 83 c0 40          	add    $0x40,%rax
  5d4362:	ff c9                	dec    %ecx
  5d4364:	75 e5                	jne    5d434b <crypto/internal/fips140/mldsa.ntt+0x30b>
  5d4366:	31 c0                	xor    %eax,%eax
  5d4368:	eb 22                	jmp    5d438c <crypto/internal/fips140/mldsa.ntt+0x34c>
  5d436a:	8b 4c 84 10          	mov    0x10(%rsp,%rax,4),%ecx
  5d436e:	89 ca                	mov    %ecx,%edx
  5d4370:	c1 e9 17             	shr    $0x17,%ecx
  5d4373:	81 e2 ff ff 7f 00    	and    $0x7fffff,%edx
  5d4379:	89 cb                	mov    %ecx,%ebx
  5d437b:	c1 e1 0d             	shl    $0xd,%ecx
  5d437e:	01 d1                	add    %edx,%ecx
  5d4380:	29 d9                	sub    %ebx,%ecx
  5d4382:	89 8c 84 10 04 00 00 	mov    %ecx,0x410(%rsp,%rax,4)
  5d4389:	48 ff c0             	inc    %rax
  5d438c:	48 3d 00 01 00 00    	cmp    $0x100,%rax
  5d4392:	7c d6                	jl     5d436a <crypto/internal/fips140/mldsa.ntt+0x32a>
  5d4394:	5d                   	pop    %rbp
  5d4395:	c3                   	ret
  5d4396:	e8 05 9f eb ff       	call   48e2a0 <runtime.panicBounds>
  5d439b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  5d43a0:	e8 fb 9e eb ff       	call   48e2a0 <runtime.panicBounds>
  5d43a5:	b8 00 01 00 00       	mov    $0x100,%eax
  5d43aa:	e8 f1 9e eb ff       	call   48e2a0 <runtime.panicBounds>
  5d43af:	e8 ec 9e eb ff       	call   48e2a0 <runtime.panicBounds>
  5d43b4:	b8 00 01 00 00       	mov    $0x100,%eax
  5d43b9:	e8 e2 9e eb ff       	call   48e2a0 <runtime.panicBounds>
  5d43be:	90                   	nop
