
/home/exedev/crypto-audit/round4/bin/hmac-warm.test:     file format elf64-x86-64


Disassembly of section .text:

0000000000642280 <crypto/internal/fips140/sha512.(*Digest).Sum>:
  642280:	4c 8d a4 24 00 ff ff 	lea    -0x100(%rsp),%r12
  642287:	ff 
  642288:	4d 3b 66 10          	cmp    0x10(%r14),%r12
  64228c:	0f 86 bc 01 00 00    	jbe    64244e <crypto/internal/fips140/sha512.(*Digest).Sum+0x1ce>
  642292:	55                   	push   %rbp
  642293:	48 89 e5             	mov    %rsp,%rbp
  642296:	48 81 ec 78 01 00 00 	sub    $0x178,%rsp
  64229d:	48 89 84 24 88 01 00 	mov    %rax,0x188(%rsp)
  6422a4:	00 
  6422a5:	48 89 8c 24 98 01 00 	mov    %rcx,0x198(%rsp)
  6422ac:	00 
  6422ad:	48 89 9c 24 90 01 00 	mov    %rbx,0x190(%rsp)
  6422b4:	00 
  6422b5:	48 89 bc 24 a0 01 00 	mov    %rdi,0x1a0(%rsp)
  6422bc:	00 
  6422bd:	0f 1f 00             	nopl   (%rax)
  6422c0:	e8 9b 5b ff ff       	call   637e60 <crypto/internal/fips140.RecordApproved>
  6422c5:	48 8d 84 24 88 00 00 	lea    0x88(%rsp),%rax
  6422cc:	00 
  6422cd:	b9 03 00 00 00       	mov    $0x3,%ecx
  6422d2:	44 0f 11 38          	movups %xmm15,(%rax)
  6422d6:	44 0f 11 78 10       	movups %xmm15,0x10(%rax)
  6422db:	44 0f 11 78 20       	movups %xmm15,0x20(%rax)
  6422e0:	44 0f 11 78 30       	movups %xmm15,0x30(%rax)
  6422e5:	48 83 c0 40          	add    $0x40,%rax
  6422e9:	ff c9                	dec    %ecx
  6422eb:	75 e5                	jne    6422d2 <crypto/internal/fips140/sha512.(*Digest).Sum+0x52>
  6422ed:	44 0f 11 38          	movups %xmm15,(%rax)
  6422f1:	44 0f 11 78 08       	movups %xmm15,0x8(%rax)
  6422f6:	48 8d 84 24 88 00 00 	lea    0x88(%rsp),%rax
  6422fd:	00 
  6422fe:	48 8b 8c 24 88 01 00 	mov    0x188(%rsp),%rcx
  642305:	00 
  642306:	bb 03 00 00 00       	mov    $0x3,%ebx
  64230b:	44 0f 10 31          	movups (%rcx),%xmm14
  64230f:	44 0f 11 30          	movups %xmm14,(%rax)
  642313:	44 0f 10 71 10       	movups 0x10(%rcx),%xmm14
  642318:	44 0f 11 70 10       	movups %xmm14,0x10(%rax)
  64231d:	44 0f 10 71 20       	movups 0x20(%rcx),%xmm14
  642322:	44 0f 11 70 20       	movups %xmm14,0x20(%rax)
  642327:	44 0f 10 71 30       	movups 0x30(%rcx),%xmm14
  64232c:	44 0f 11 70 30       	movups %xmm14,0x30(%rax)
  642331:	48 83 c1 40          	add    $0x40,%rcx
  642335:	48 83 c0 40          	add    $0x40,%rax
  642339:	ff cb                	dec    %ebx
  64233b:	75 ce                	jne    64230b <crypto/internal/fips140/sha512.(*Digest).Sum+0x8b>
  64233d:	44 0f 10 31          	movups (%rcx),%xmm14
  642341:	44 0f 11 30          	movups %xmm14,(%rax)
  642345:	44 0f 10 71 08       	movups 0x8(%rcx),%xmm14
  64234a:	44 0f 11 70 08       	movups %xmm14,0x8(%rax)
  64234f:	48 8d 84 24 88 00 00 	lea    0x88(%rsp),%rax
  642356:	00 
  642357:	e8 44 01 00 00       	call   6424a0 <crypto/internal/fips140/sha512.(*Digest).checkSum>
  64235c:	48 8d 5c 24 48       	lea    0x48(%rsp),%rbx
  642361:	48 89 e0             	mov    %rsp,%rax
  642364:	44 0f 10 30          	movups (%rax),%xmm14
  642368:	44 0f 11 33          	movups %xmm14,(%rbx)
  64236c:	44 0f 10 70 10       	movups 0x10(%rax),%xmm14
  642371:	44 0f 11 73 10       	movups %xmm14,0x10(%rbx)
  642376:	44 0f 10 70 20       	movups 0x20(%rax),%xmm14
  64237b:	44 0f 11 73 20       	movups %xmm14,0x20(%rbx)
  642380:	44 0f 10 70 30       	movups 0x30(%rax),%xmm14
  642385:	44 0f 11 73 30       	movups %xmm14,0x30(%rbx)
  64238a:	48 8b 84 24 88 01 00 	mov    0x188(%rsp),%rax
  642391:	00 
  642392:	48 8b b8 d0 00 00 00 	mov    0xd0(%rax),%rdi
  642399:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  6423a0:	48 83 ff 40          	cmp    $0x40,%rdi
  6423a4:	0f 87 99 00 00 00    	ja     642443 <crypto/internal/fips140/sha512.(*Digest).Sum+0x1c3>
  6423aa:	48 8b 94 24 98 01 00 	mov    0x198(%rsp),%rdx
  6423b1:	00 
  6423b2:	4c 8d 04 3a          	lea    (%rdx,%rdi,1),%r8
  6423b6:	48 8b 8c 24 a0 01 00 	mov    0x1a0(%rsp),%rcx
  6423bd:	00 
  6423be:	66 90                	xchg   %ax,%ax
  6423c0:	4c 39 c1             	cmp    %r8,%rcx
  6423c3:	72 0a                	jb     6423cf <crypto/internal/fips140/sha512.(*Digest).Sum+0x14f>
  6423c5:	48 8b 84 24 90 01 00 	mov    0x190(%rsp),%rax
  6423cc:	00 
  6423cd:	eb 37                	jmp    642406 <crypto/internal/fips140/sha512.(*Digest).Sum+0x186>
  6423cf:	48 89 bc 24 68 01 00 	mov    %rdi,0x168(%rsp)
  6423d6:	00 
  6423d7:	48 8b 84 24 90 01 00 	mov    0x190(%rsp),%rax
  6423de:	00 
  6423df:	4c 89 c3             	mov    %r8,%rbx
  6423e2:	48 8d 35 ff 8a 25 00 	lea    0x258aff(%rip),%rsi        # 89aee8 <type:*+0x3dbe0>
  6423e9:	e8 f2 b4 e4 ff       	call   48d8e0 <runtime.growslice>
  6423ee:	48 8b 94 24 98 01 00 	mov    0x198(%rsp),%rdx
  6423f5:	00 
  6423f6:	48 8b bc 24 68 01 00 	mov    0x168(%rsp),%rdi
  6423fd:	00 
  6423fe:	49 89 d8             	mov    %rbx,%r8
  642401:	48 8d 5c 24 48       	lea    0x48(%rsp),%rbx
  642406:	48 89 8c 24 68 01 00 	mov    %rcx,0x168(%rsp)
  64240d:	00 
  64240e:	4c 89 84 24 60 01 00 	mov    %r8,0x160(%rsp)
  642415:	00 
  642416:	48 89 84 24 70 01 00 	mov    %rax,0x170(%rsp)
  64241d:	00 
  64241e:	48 01 d0             	add    %rdx,%rax
  642421:	48 89 f9             	mov    %rdi,%rcx
  642424:	e8 17 07 e5 ff       	call   492b40 <runtime.memmove>
  642429:	48 8b 84 24 70 01 00 	mov    0x170(%rsp),%rax
  642430:	00 
  642431:	48 8b 9c 24 60 01 00 	mov    0x160(%rsp),%rbx
  642438:	00 
  642439:	48 8b 8c 24 68 01 00 	mov    0x168(%rsp),%rcx
  642440:	00 
  642441:	c9                   	leave
  642442:	c3                   	ret
  642443:	b8 40 00 00 00       	mov    $0x40,%eax
  642448:	e8 53 03 e5 ff       	call   4927a0 <runtime.panicBounds>
  64244d:	90                   	nop
  64244e:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  642453:	48 89 5c 24 10       	mov    %rbx,0x10(%rsp)
  642458:	48 89 4c 24 18       	mov    %rcx,0x18(%rsp)
  64245d:	48 89 7c 24 20       	mov    %rdi,0x20(%rsp)
  642462:	e8 f9 e6 e4 ff       	call   490b60 <runtime.morestack_noctxt.abi0>
  642467:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
  64246c:	48 8b 5c 24 10       	mov    0x10(%rsp),%rbx
  642471:	48 8b 4c 24 18       	mov    0x18(%rsp),%rcx
  642476:	48 8b 7c 24 20       	mov    0x20(%rsp),%rdi
  64247b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  642480:	e9 fb fd ff ff       	jmp    642280 <crypto/internal/fips140/sha512.(*Digest).Sum>
