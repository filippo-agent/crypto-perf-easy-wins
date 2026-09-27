
/home/exedev/crypto-audit/round4/bin/mlkem-encaps.test:     file format elf64-x86-64


Disassembly of section .text:

00000000005d2000 <crypto/internal/fips140/mlkem.inverseNTT>:
  5d2000:	55                   	push   %rbp
  5d2001:	48 89 e5             	mov    %rsp,%rbp
  5d2004:	48 8d 84 24 10 02 00 	lea    0x210(%rsp),%rax
  5d200b:	00 
  5d200c:	b9 08 00 00 00       	mov    $0x8,%ecx
  5d2011:	44 0f 11 38          	movups %xmm15,(%rax)
  5d2015:	44 0f 11 78 10       	movups %xmm15,0x10(%rax)
  5d201a:	44 0f 11 78 20       	movups %xmm15,0x20(%rax)
  5d201f:	44 0f 11 78 30       	movups %xmm15,0x30(%rax)
  5d2024:	48 83 c0 40          	add    $0x40,%rax
  5d2028:	ff c9                	dec    %ecx
  5d202a:	75 e5                	jne    5d2011 <crypto/internal/fips140/mlkem.inverseNTT+0x11>
  5d202c:	b8 7f 00 00 00       	mov    $0x7f,%eax
  5d2031:	b9 02 00 00 00       	mov    $0x2,%ecx
  5d2036:	eb 08                	jmp    5d2040 <crypto/internal/fips140/mlkem.inverseNTT+0x40>
  5d2038:	48 01 c9             	add    %rcx,%rcx
  5d203b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  5d2040:	48 83 f9 7f          	cmp    $0x7f,%rcx
  5d2044:	0f 8f 0b 01 00 00    	jg     5d2155 <crypto/internal/fips140/mlkem.inverseNTT+0x155>
  5d204a:	31 d2                	xor    %edx,%edx
  5d204c:	eb 06                	jmp    5d2054 <crypto/internal/fips140/mlkem.inverseNTT+0x54>
  5d204e:	48 ff c8             	dec    %rax
  5d2051:	4c 89 c2             	mov    %r8,%rdx
  5d2054:	48 81 fa 00 01 00 00 	cmp    $0x100,%rdx
  5d205b:	7d db                	jge    5d2038 <crypto/internal/fips140/mlkem.inverseNTT+0x38>
  5d205d:	0f 1f 00             	nopl   (%rax)
  5d2060:	48 3d 80 00 00 00    	cmp    $0x80,%rax
  5d2066:	0f 83 e9 01 00 00    	jae    5d2255 <crypto/internal/fips140/mlkem.inverseNTT+0x255>
  5d206c:	48 8d 1c 11          	lea    (%rcx,%rdx,1),%rbx
  5d2070:	48 8d 35 e9 54 21 00 	lea    0x2154e9(%rip),%rsi        # 7e7560 <crypto/internal/fips140/mlkem.zetas>
  5d2077:	0f b7 3c 46          	movzwl (%rsi,%rax,2),%edi
  5d207b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  5d2080:	48 81 fb 00 01 00 00 	cmp    $0x100,%rbx
  5d2087:	0f 87 be 01 00 00    	ja     5d224b <crypto/internal/fips140/mlkem.inverseNTT+0x24b>
  5d208d:	48 39 da             	cmp    %rbx,%rdx
  5d2090:	0f 87 b0 01 00 00    	ja     5d2246 <crypto/internal/fips140/mlkem.inverseNTT+0x246>
  5d2096:	4c 8d 04 4a          	lea    (%rdx,%rcx,2),%r8
  5d209a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  5d20a0:	49 81 f8 00 01 00 00 	cmp    $0x100,%r8
  5d20a7:	0f 87 8f 01 00 00    	ja     5d223c <crypto/internal/fips140/mlkem.inverseNTT+0x23c>
  5d20ad:	49 39 d8             	cmp    %rbx,%r8
  5d20b0:	0f 82 81 01 00 00    	jb     5d2237 <crypto/internal/fips140/mlkem.inverseNTT+0x237>
  5d20b6:	4c 8d 8c 0a 00 ff ff 	lea    -0x100(%rdx,%rcx,1),%r9
  5d20bd:	ff 
  5d20be:	48 01 db             	add    %rbx,%rbx
  5d20c1:	49 c1 f9 3f          	sar    $0x3f,%r9
  5d20c5:	4c 21 cb             	and    %r9,%rbx
  5d20c8:	48 8d 54 54 10       	lea    0x10(%rsp,%rdx,2),%rdx
  5d20cd:	48 8d 5c 1c 10       	lea    0x10(%rsp,%rbx,1),%rbx
  5d20d2:	45 31 c9             	xor    %r9d,%r9d
  5d20d5:	eb 74                	jmp    5d214b <crypto/internal/fips140/mlkem.inverseNTT+0x14b>
  5d20d7:	46 0f b7 14 4a       	movzwl (%rdx,%r9,2),%r10d
  5d20dc:	46 0f b7 1c 4b       	movzwl (%rbx,%r9,2),%r11d
  5d20e1:	45 01 d3             	add    %r10d,%r11d
  5d20e4:	45 0f b7 db          	movzwl %r11w,%r11d
  5d20e8:	4d 8d a3 ff f2 ff ff 	lea    -0xd01(%r11),%r12
  5d20ef:	90                   	nop
  5d20f0:	49 81 fb 00 0d 00 00 	cmp    $0xd00,%r11
  5d20f7:	4d 0f 4e e3          	cmovle %r11,%r12
  5d20fb:	66 46 89 24 4a       	mov    %r12w,(%rdx,%r9,2)
  5d2100:	46 0f b7 1c 4b       	movzwl (%rbx,%r9,2),%r11d
  5d2105:	45 29 d3             	sub    %r10d,%r11d
  5d2108:	45 8d 93 01 0d 00 00 	lea    0xd01(%r11),%r10d
  5d210f:	45 0f b7 d2          	movzwl %r10w,%r10d
  5d2113:	44 0f af d7          	imul   %edi,%r10d
  5d2117:	4d 69 da af 13 00 00 	imul   $0x13af,%r10,%r11
  5d211e:	49 c1 eb 18          	shr    $0x18,%r11
  5d2122:	45 69 db 01 0d 00 00 	imul   $0xd01,%r11d,%r11d
  5d2129:	45 29 da             	sub    %r11d,%r10d
  5d212c:	45 0f b7 d2          	movzwl %r10w,%r10d
  5d2130:	4d 8d 9a ff f2 ff ff 	lea    -0xd01(%r10),%r11
  5d2137:	90                   	nop
  5d2138:	49 81 fa 00 0d 00 00 	cmp    $0xd00,%r10
  5d213f:	4d 0f 4e da          	cmovle %r10,%r11
  5d2143:	66 46 89 1c 4b       	mov    %r11w,(%rbx,%r9,2)
  5d2148:	49 ff c1             	inc    %r9
  5d214b:	49 39 c9             	cmp    %rcx,%r9
  5d214e:	7c 87                	jl     5d20d7 <crypto/internal/fips140/mlkem.inverseNTT+0xd7>
  5d2150:	e9 f9 fe ff ff       	jmp    5d204e <crypto/internal/fips140/mlkem.inverseNTT+0x4e>
  5d2155:	31 c0                	xor    %eax,%eax
  5d2157:	e9 8b 00 00 00       	jmp    5d21e7 <crypto/internal/fips140/mlkem.inverseNTT+0x1e7>
  5d215c:	0f b7 4c 44 10       	movzwl 0x10(%rsp,%rax,2),%ecx
  5d2161:	0f b7 94 44 10 01 00 	movzwl 0x110(%rsp,%rax,2),%edx
  5d2168:	00 
  5d2169:	8d 1c 0a             	lea    (%rdx,%rcx,1),%ebx
  5d216c:	0f b7 db             	movzwl %bx,%ebx
  5d216f:	69 db e7 0c 00 00    	imul   $0xce7,%ebx,%ebx
  5d2175:	48 69 f3 af 13 00 00 	imul   $0x13af,%rbx,%rsi
  5d217c:	48 c1 ee 18          	shr    $0x18,%rsi
  5d2180:	69 f6 01 0d 00 00    	imul   $0xd01,%esi,%esi
  5d2186:	29 f3                	sub    %esi,%ebx
  5d2188:	29 ca                	sub    %ecx,%edx
  5d218a:	8d 8a 01 0d 00 00    	lea    0xd01(%rdx),%ecx
  5d2190:	0f b7 c9             	movzwl %cx,%ecx
  5d2193:	69 c9 74 06 00 00    	imul   $0x674,%ecx,%ecx
  5d2199:	0f b7 d3             	movzwl %bx,%edx
  5d219c:	48 8d 9a ff f2 ff ff 	lea    -0xd01(%rdx),%rbx
  5d21a3:	48 69 f1 af 13 00 00 	imul   $0x13af,%rcx,%rsi
  5d21aa:	48 c1 ee 18          	shr    $0x18,%rsi
  5d21ae:	69 f6 01 0d 00 00    	imul   $0xd01,%esi,%esi
  5d21b4:	29 f1                	sub    %esi,%ecx
  5d21b6:	0f b7 c9             	movzwl %cx,%ecx
  5d21b9:	48 8d b1 ff f2 ff ff 	lea    -0xd01(%rcx),%rsi
  5d21c0:	48 81 fa 00 0d 00 00 	cmp    $0xd00,%rdx
  5d21c7:	48 0f 4e da          	cmovle %rdx,%rbx
  5d21cb:	66 89 5c 44 10       	mov    %bx,0x10(%rsp,%rax,2)
  5d21d0:	90                   	nop
  5d21d1:	48 81 f9 00 0d 00 00 	cmp    $0xd00,%rcx
  5d21d8:	48 0f 4e f1          	cmovle %rcx,%rsi
  5d21dc:	66 89 b4 44 10 01 00 	mov    %si,0x110(%rsp,%rax,2)
  5d21e3:	00 
  5d21e4:	48 ff c0             	inc    %rax
  5d21e7:	48 83 f8 7f          	cmp    $0x7f,%rax
  5d21eb:	0f 8e 6b ff ff ff    	jle    5d215c <crypto/internal/fips140/mlkem.inverseNTT+0x15c>
  5d21f1:	48 8d 84 24 10 02 00 	lea    0x210(%rsp),%rax
  5d21f8:	00 
  5d21f9:	48 8d 4c 24 10       	lea    0x10(%rsp),%rcx
  5d21fe:	ba 08 00 00 00       	mov    $0x8,%edx
  5d2203:	44 0f 10 31          	movups (%rcx),%xmm14
  5d2207:	44 0f 11 30          	movups %xmm14,(%rax)
  5d220b:	44 0f 10 71 10       	movups 0x10(%rcx),%xmm14
  5d2210:	44 0f 11 70 10       	movups %xmm14,0x10(%rax)
  5d2215:	44 0f 10 71 20       	movups 0x20(%rcx),%xmm14
  5d221a:	44 0f 11 70 20       	movups %xmm14,0x20(%rax)
  5d221f:	44 0f 10 71 30       	movups 0x30(%rcx),%xmm14
  5d2224:	44 0f 11 70 30       	movups %xmm14,0x30(%rax)
  5d2229:	48 83 c1 40          	add    $0x40,%rcx
  5d222d:	48 83 c0 40          	add    $0x40,%rax
  5d2231:	ff ca                	dec    %edx
  5d2233:	75 ce                	jne    5d2203 <crypto/internal/fips140/mlkem.inverseNTT+0x203>
  5d2235:	5d                   	pop    %rbp
  5d2236:	c3                   	ret
  5d2237:	e8 c4 c0 eb ff       	call   48e300 <runtime.panicBounds>
  5d223c:	b8 00 01 00 00       	mov    $0x100,%eax
  5d2241:	e8 ba c0 eb ff       	call   48e300 <runtime.panicBounds>
  5d2246:	e8 b5 c0 eb ff       	call   48e300 <runtime.panicBounds>
  5d224b:	b8 00 01 00 00       	mov    $0x100,%eax
  5d2250:	e8 ab c0 eb ff       	call   48e300 <runtime.panicBounds>
  5d2255:	b9 80 00 00 00       	mov    $0x80,%ecx
  5d225a:	e8 a1 c0 eb ff       	call   48e300 <runtime.panicBounds>
  5d225f:	90                   	nop
