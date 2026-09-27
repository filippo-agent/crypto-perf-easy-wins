
/home/exedev/crypto-audit/round4/bin/hmac-warm.test:     file format elf64-x86-64


Disassembly of section .text:

0000000000638fe0 <crypto/internal/fips140/sha256.(*Digest).checkSum>:
  638fe0:	49 3b 66 10          	cmp    0x10(%r14),%rsp
  638fe4:	0f 86 52 01 00 00    	jbe    63913c <crypto/internal/fips140/sha256.(*Digest).checkSum+0x15c>
  638fea:	55                   	push   %rbp
  638feb:	48 89 e5             	mov    %rsp,%rbp
  638fee:	48 83 ec 68          	sub    $0x68,%rsp
  638ff2:	48 8d 54 24 78       	lea    0x78(%rsp),%rdx
  638ff7:	44 0f 11 3a          	movups %xmm15,(%rdx)
  638ffb:	44 0f 11 7a 10       	movups %xmm15,0x10(%rdx)
  639000:	48 8b 48 68          	mov    0x68(%rax),%rcx
  639004:	48 8d 5c 24 20       	lea    0x20(%rsp),%rbx
  639009:	44 0f 11 3b          	movups %xmm15,(%rbx)
  63900d:	44 0f 11 7b 10       	movups %xmm15,0x10(%rbx)
  639012:	44 0f 11 7b 20       	movups %xmm15,0x20(%rbx)
  639017:	44 0f 11 7b 30       	movups %xmm15,0x30(%rbx)
  63901c:	44 0f 11 7b 38       	movups %xmm15,0x38(%rbx)
  639021:	c6 44 24 20 80       	movb   $0x80,0x20(%rsp)
  639026:	48 89 ca             	mov    %rcx,%rdx
  639029:	83 e2 3f             	and    $0x3f,%edx
  63902c:	48 8d 72 c8          	lea    -0x38(%rdx),%rsi
  639030:	48 f7 de             	neg    %rsi
  639033:	4c 8d 42 88          	lea    -0x78(%rdx),%r8
  639037:	49 f7 d8             	neg    %r8
  63903a:	48 83 fa 38          	cmp    $0x38,%rdx
  63903e:	4c 0f 42 c6          	cmovb  %rsi,%r8
  639042:	49 8d 50 08          	lea    0x8(%r8),%rdx
  639046:	48 83 fa 48          	cmp    $0x48,%rdx
  63904a:	0f 87 e1 00 00 00    	ja     639131 <crypto/internal/fips140/sha256.(*Digest).checkSum+0x151>
  639050:	49 39 d0             	cmp    %rdx,%r8
  639053:	0f 87 d3 00 00 00    	ja     63912c <crypto/internal/fips140/sha256.(*Digest).checkSum+0x14c>
  639059:	48 89 84 24 98 00 00 	mov    %rax,0x98(%rsp)
  639060:	00 
  639061:	48 c1 e1 03          	shl    $0x3,%rcx
  639065:	49 8d 70 b8          	lea    -0x48(%r8),%rsi
  639069:	48 c1 fe 3f          	sar    $0x3f,%rsi
  63906d:	49 21 f0             	and    %rsi,%r8
  639070:	48 0f c9             	bswap  %rcx
  639073:	90                   	nop
  639074:	4a 89 4c 04 20       	mov    %rcx,0x20(%rsp,%r8,1)
  639079:	48 89 d1             	mov    %rdx,%rcx
  63907c:	bf 48 00 00 00       	mov    $0x48,%edi
  639081:	e8 ba fa ff ff       	call   638b40 <crypto/internal/fips140/sha256.(*Digest).Write>
  639086:	48 8b 94 24 98 00 00 	mov    0x98(%rsp),%rdx
  63908d:	00 
  63908e:	48 83 7a 60 00       	cmpq   $0x0,0x60(%rdx)
  639093:	75 77                	jne    63910c <crypto/internal/fips140/sha256.(*Digest).checkSum+0x12c>
  639095:	48 8d 44 24 78       	lea    0x78(%rsp),%rax
  63909a:	44 0f 11 38          	movups %xmm15,(%rax)
  63909e:	44 0f 11 78 10       	movups %xmm15,0x10(%rax)
  6390a3:	8b 02                	mov    (%rdx),%eax
  6390a5:	0f c8                	bswap  %eax
  6390a7:	90                   	nop
  6390a8:	89 44 24 78          	mov    %eax,0x78(%rsp)
  6390ac:	8b 42 04             	mov    0x4(%rdx),%eax
  6390af:	0f c8                	bswap  %eax
  6390b1:	90                   	nop
  6390b2:	89 44 24 7c          	mov    %eax,0x7c(%rsp)
  6390b6:	8b 42 08             	mov    0x8(%rdx),%eax
  6390b9:	0f c8                	bswap  %eax
  6390bb:	90                   	nop
  6390bc:	89 84 24 80 00 00 00 	mov    %eax,0x80(%rsp)
  6390c3:	8b 42 0c             	mov    0xc(%rdx),%eax
  6390c6:	0f c8                	bswap  %eax
  6390c8:	90                   	nop
  6390c9:	89 84 24 84 00 00 00 	mov    %eax,0x84(%rsp)
  6390d0:	8b 42 10             	mov    0x10(%rdx),%eax
  6390d3:	0f c8                	bswap  %eax
  6390d5:	90                   	nop
  6390d6:	89 84 24 88 00 00 00 	mov    %eax,0x88(%rsp)
  6390dd:	8b 42 14             	mov    0x14(%rdx),%eax
  6390e0:	0f c8                	bswap  %eax
  6390e2:	90                   	nop
  6390e3:	89 84 24 8c 00 00 00 	mov    %eax,0x8c(%rsp)
  6390ea:	8b 42 18             	mov    0x18(%rdx),%eax
  6390ed:	0f c8                	bswap  %eax
  6390ef:	90                   	nop
  6390f0:	89 84 24 90 00 00 00 	mov    %eax,0x90(%rsp)
  6390f7:	80 7a 70 00          	cmpb   $0x0,0x70(%rdx)
  6390fb:	75 0d                	jne    63910a <crypto/internal/fips140/sha256.(*Digest).checkSum+0x12a>
  6390fd:	8b 42 1c             	mov    0x1c(%rdx),%eax
  639100:	0f c8                	bswap  %eax
  639102:	90                   	nop
  639103:	89 84 24 94 00 00 00 	mov    %eax,0x94(%rsp)
  63910a:	c9                   	leave
  63910b:	c3                   	ret
  63910c:	48 8d 05 65 47 01 00 	lea    0x14765(%rip),%rax        # 64d878 <go:string.*+0x1878>
  639113:	bb 09 00 00 00       	mov    $0x9,%ebx
  639118:	e8 43 00 e5 ff       	call   489160 <runtime.convTstring>
  63911d:	48 89 c3             	mov    %rax,%rbx
  639120:	48 8d 05 41 1d 26 00 	lea    0x261d41(%rip),%rax        # 89ae68 <type:*+0x3db60>
  639127:	e8 74 20 e5 ff       	call   48b1a0 <runtime.gopanic>
  63912c:	e8 6f 96 e5 ff       	call   4927a0 <runtime.panicBounds>
  639131:	b8 48 00 00 00       	mov    $0x48,%eax
  639136:	e8 65 96 e5 ff       	call   4927a0 <runtime.panicBounds>
  63913b:	90                   	nop
  63913c:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
  639141:	e8 1a 7a e5 ff       	call   490b60 <runtime.morestack_noctxt.abi0>
  639146:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
  63914b:	e9 90 fe ff ff       	jmp    638fe0 <crypto/internal/fips140/sha256.(*Digest).checkSum>
