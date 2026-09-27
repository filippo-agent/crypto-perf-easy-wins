
/home/exedev/crypto-audit/round4/bin/hmac-warm.test:     file format elf64-x86-64


Disassembly of section .text:

0000000000638820 <crypto/internal/fips140/sha256.(*Digest).UnmarshalBinary>:
  638820:	49 3b 66 10          	cmp    0x10(%r14),%rsp
  638824:	0f 86 3d 01 00 00    	jbe    638967 <crypto/internal/fips140/sha256.(*Digest).UnmarshalBinary+0x147>
  63882a:	55                   	push   %rbp
  63882b:	48 89 e5             	mov    %rsp,%rbp
  63882e:	48 83 ec 20          	sub    $0x20,%rsp
  638832:	48 89 5c 24 38       	mov    %rbx,0x38(%rsp)
  638837:	48 83 f9 04          	cmp    $0x4,%rcx
  63883b:	7c 1c                	jl     638859 <crypto/internal/fips140/sha256.(*Digest).UnmarshalBinary+0x39>
  63883d:	0f b6 50 70          	movzbl 0x70(%rax),%edx
  638841:	84 d2                	test   %dl,%dl
  638843:	74 0c                	je     638851 <crypto/internal/fips140/sha256.(*Digest).UnmarshalBinary+0x31>
  638845:	81 3b 73 68 61 02    	cmpl   $0x2616873,(%rbx)
  63884b:	75 0c                	jne    638859 <crypto/internal/fips140/sha256.(*Digest).UnmarshalBinary+0x39>
  63884d:	84 d2                	test   %dl,%dl
  63884f:	75 3c                	jne    63888d <crypto/internal/fips140/sha256.(*Digest).UnmarshalBinary+0x6d>
  638851:	81 3b 73 68 61 03    	cmpl   $0x3616873,(%rbx)
  638857:	74 34                	je     63888d <crypto/internal/fips140/sha256.(*Digest).UnmarshalBinary+0x6d>
  638859:	b8 10 00 00 00       	mov    $0x10,%eax
  63885e:	48 8d 1d a3 a1 26 00 	lea    0x26a1a3(%rip),%rbx        # 8a2a08 <type:*+0x45700>
  638865:	b9 01 00 00 00       	mov    $0x1,%ecx
  63886a:	e8 71 b1 de ff       	call   4239e0 <runtime.mallocgcSmallScanNoHeaderSC2>
  63886f:	48 c7 40 08 2c 00 00 	movq   $0x2c,0x8(%rax)
  638876:	00 
  638877:	48 8d 15 01 36 02 00 	lea    0x23601(%rip),%rdx        # 65be7f <go:string.*+0xfe7f>
  63887e:	48 89 10             	mov    %rdx,(%rax)
  638881:	48 89 c3             	mov    %rax,%rbx
  638884:	48 8d 05 8d 20 29 00 	lea    0x29208d(%rip),%rax        # 8ca918 <type:*+0x6d610>
  63888b:	c9                   	leave
  63888c:	c3                   	ret
  63888d:	48 83 f9 6c          	cmp    $0x6c,%rcx
  638891:	0f 85 9c 00 00 00    	jne    638933 <crypto/internal/fips140/sha256.(*Digest).UnmarshalBinary+0x113>
  638897:	48 8d 50 20          	lea    0x20(%rax),%rdx
  63889b:	48 8d 73 24          	lea    0x24(%rbx),%rsi
  63889f:	8b 7b 04             	mov    0x4(%rbx),%edi
  6388a2:	0f cf                	bswap  %edi
  6388a4:	90                   	nop
  6388a5:	90                   	nop
  6388a6:	89 38                	mov    %edi,(%rax)
  6388a8:	8b 7b 08             	mov    0x8(%rbx),%edi
  6388ab:	0f cf                	bswap  %edi
  6388ad:	90                   	nop
  6388ae:	90                   	nop
  6388af:	89 78 04             	mov    %edi,0x4(%rax)
  6388b2:	8b 7b 0c             	mov    0xc(%rbx),%edi
  6388b5:	0f cf                	bswap  %edi
  6388b7:	90                   	nop
  6388b8:	90                   	nop
  6388b9:	89 78 08             	mov    %edi,0x8(%rax)
  6388bc:	8b 7b 10             	mov    0x10(%rbx),%edi
  6388bf:	0f cf                	bswap  %edi
  6388c1:	90                   	nop
  6388c2:	90                   	nop
  6388c3:	89 78 0c             	mov    %edi,0xc(%rax)
  6388c6:	8b 7b 14             	mov    0x14(%rbx),%edi
  6388c9:	0f cf                	bswap  %edi
  6388cb:	90                   	nop
  6388cc:	90                   	nop
  6388cd:	89 78 10             	mov    %edi,0x10(%rax)
  6388d0:	8b 7b 18             	mov    0x18(%rbx),%edi
  6388d3:	0f cf                	bswap  %edi
  6388d5:	90                   	nop
  6388d6:	90                   	nop
  6388d7:	89 78 14             	mov    %edi,0x14(%rax)
  6388da:	8b 7b 1c             	mov    0x1c(%rbx),%edi
  6388dd:	0f cf                	bswap  %edi
  6388df:	90                   	nop
  6388e0:	90                   	nop
  6388e1:	89 78 18             	mov    %edi,0x18(%rax)
  6388e4:	8b 7b 20             	mov    0x20(%rbx),%edi
  6388e7:	0f cf                	bswap  %edi
  6388e9:	90                   	nop
  6388ea:	89 78 1c             	mov    %edi,0x1c(%rax)
  6388ed:	48 39 d6             	cmp    %rdx,%rsi
  6388f0:	74 24                	je     638916 <crypto/internal/fips140/sha256.(*Digest).UnmarshalBinary+0xf6>
  6388f2:	48 89 44 24 30       	mov    %rax,0x30(%rsp)
  6388f7:	48 89 5c 24 38       	mov    %rbx,0x38(%rsp)
  6388fc:	48 89 d0             	mov    %rdx,%rax
  6388ff:	48 89 f3             	mov    %rsi,%rbx
  638902:	b9 40 00 00 00       	mov    $0x40,%ecx
  638907:	e8 34 a2 e5 ff       	call   492b40 <runtime.memmove>
  63890c:	48 8b 44 24 30       	mov    0x30(%rsp),%rax
  638911:	48 8b 5c 24 38       	mov    0x38(%rsp),%rbx
  638916:	48 8b 4b 64          	mov    0x64(%rbx),%rcx
  63891a:	48 0f c9             	bswap  %rcx
  63891d:	48 89 ca             	mov    %rcx,%rdx
  638920:	83 e1 3f             	and    $0x3f,%ecx
  638923:	90                   	nop
  638924:	90                   	nop
  638925:	48 89 50 68          	mov    %rdx,0x68(%rax)
  638929:	48 89 48 60          	mov    %rcx,0x60(%rax)
  63892d:	31 c0                	xor    %eax,%eax
  63892f:	31 db                	xor    %ebx,%ebx
  638931:	c9                   	leave
  638932:	c3                   	ret
  638933:	b8 10 00 00 00       	mov    $0x10,%eax
  638938:	48 8d 1d c9 a0 26 00 	lea    0x26a0c9(%rip),%rbx        # 8a2a08 <type:*+0x45700>
  63893f:	b9 01 00 00 00       	mov    $0x1,%ecx
  638944:	e8 97 b0 de ff       	call   4239e0 <runtime.mallocgcSmallScanNoHeaderSC2>
  638949:	48 c7 40 08 26 00 00 	movq   $0x26,0x8(%rax)
  638950:	00 
  638951:	48 8d 15 c6 0f 02 00 	lea    0x20fc6(%rip),%rdx        # 65991e <go:string.*+0xd91e>
  638958:	48 89 10             	mov    %rdx,(%rax)
  63895b:	48 89 c3             	mov    %rax,%rbx
  63895e:	48 8d 05 b3 1f 29 00 	lea    0x291fb3(%rip),%rax        # 8ca918 <type:*+0x6d610>
  638965:	c9                   	leave
  638966:	c3                   	ret
  638967:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  63896c:	48 89 5c 24 10       	mov    %rbx,0x10(%rsp)
  638971:	48 89 4c 24 18       	mov    %rcx,0x18(%rsp)
  638976:	48 89 7c 24 20       	mov    %rdi,0x20(%rsp)
  63897b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  638980:	e8 db 81 e5 ff       	call   490b60 <runtime.morestack_noctxt.abi0>
  638985:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
  63898a:	48 8b 5c 24 10       	mov    0x10(%rsp),%rbx
  63898f:	48 8b 4c 24 18       	mov    0x18(%rsp),%rcx
  638994:	48 8b 7c 24 20       	mov    0x20(%rsp),%rdi
  638999:	e9 82 fe ff ff       	jmp    638820 <crypto/internal/fips140/sha256.(*Digest).UnmarshalBinary>
