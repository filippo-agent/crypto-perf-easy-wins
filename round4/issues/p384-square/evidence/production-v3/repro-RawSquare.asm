
/home/exedev/crypto-audit/round4/issues/p384-square/evidence/v3/repro.test:     file format elf64-x86-64


Disassembly of section .text:

00000000005f1600 <example.com/p384issue.RawSquare>:
  5f1600:	4c 8d a4 24 60 fc ff 	lea    -0x3a0(%rsp),%r12
  5f1607:	ff 
  5f1608:	4d 3b 66 10          	cmp    0x10(%r14),%r12
  5f160c:	0f 86 49 0e 00 00    	jbe    5f245b <example.com/p384issue.RawSquare+0xe5b>
  5f1612:	55                   	push   %rbp
  5f1613:	48 89 e5             	mov    %rsp,%rbp
  5f1616:	48 81 ec 18 04 00 00 	sub    $0x418,%rsp
  5f161d:	48 89 84 24 28 04 00 	mov    %rax,0x428(%rsp)
  5f1624:	00 
  5f1625:	48 8b 4b 10          	mov    0x10(%rbx),%rcx
  5f1629:	48 8b 53 08          	mov    0x8(%rbx),%rdx
  5f162d:	c4 e2 c3 f6 f1       	mulx   %rcx,%rdi,%rsi
  5f1632:	48 89 74 24 50       	mov    %rsi,0x50(%rsp)
  5f1637:	48 89 7c 24 58       	mov    %rdi,0x58(%rsp)
  5f163c:	c4 62 b3 f6 c2       	mulx   %rdx,%r9,%r8
  5f1641:	4c 89 44 24 40       	mov    %r8,0x40(%rsp)
  5f1646:	4c 89 4c 24 48       	mov    %r9,0x48(%rsp)
  5f164b:	49 89 d2             	mov    %rdx,%r10
  5f164e:	48 89 ca             	mov    %rcx,%rdx
  5f1651:	c4 62 9b f6 d9       	mulx   %rcx,%r12,%r11
  5f1656:	4c 89 9c 24 88 03 00 	mov    %r11,0x388(%rsp)
  5f165d:	00 
  5f165e:	4c 89 a4 24 90 03 00 	mov    %r12,0x390(%rsp)
  5f1665:	00 
  5f1666:	4c 8b 6b 28          	mov    0x28(%rbx),%r13
  5f166a:	4c 89 ea             	mov    %r13,%rdx
  5f166d:	c4 42 fb f6 fa       	mulx   %r10,%rax,%r15
  5f1672:	4c 89 7c 24 60       	mov    %r15,0x60(%rsp)
  5f1677:	48 89 44 24 68       	mov    %rax,0x68(%rsp)
  5f167c:	4c 8b 5b 18          	mov    0x18(%rbx),%r11
  5f1680:	4c 89 da             	mov    %r11,%rdx
  5f1683:	c4 42 83 f6 e2       	mulx   %r10,%r15,%r12
  5f1688:	4c 89 a4 24 b8 02 00 	mov    %r12,0x2b8(%rsp)
  5f168f:	00 
  5f1690:	4c 89 bc 24 c0 02 00 	mov    %r15,0x2c0(%rsp)
  5f1697:	00 
  5f1698:	c4 e2 9b f6 c1       	mulx   %rcx,%r12,%rax
  5f169d:	4c 89 a4 24 98 03 00 	mov    %r12,0x398(%rsp)
  5f16a4:	00 
  5f16a5:	48 89 84 24 c8 02 00 	mov    %rax,0x2c8(%rsp)
  5f16ac:	00 
  5f16ad:	c4 e2 9b f6 c2       	mulx   %rdx,%r12,%rax
  5f16b2:	48 89 84 24 d0 02 00 	mov    %rax,0x2d0(%rsp)
  5f16b9:	00 
  5f16ba:	4c 89 a4 24 d8 02 00 	mov    %r12,0x2d8(%rsp)
  5f16c1:	00 
  5f16c2:	48 8b 43 20          	mov    0x20(%rbx),%rax
  5f16c6:	48 89 c2             	mov    %rax,%rdx
  5f16c9:	c4 42 cb f6 e5       	mulx   %r13,%rsi,%r12
  5f16ce:	4c 89 a4 24 20 02 00 	mov    %r12,0x220(%rsp)
  5f16d5:	00 
  5f16d6:	48 89 b4 24 48 01 00 	mov    %rsi,0x148(%rsp)
  5f16dd:	00 
  5f16de:	c4 62 cb f6 e0       	mulx   %rax,%rsi,%r12
  5f16e3:	4c 89 a4 24 10 02 00 	mov    %r12,0x210(%rsp)
  5f16ea:	00 
  5f16eb:	48 89 b4 24 18 02 00 	mov    %rsi,0x218(%rsp)
  5f16f2:	00 
  5f16f3:	c4 42 cb f6 e3       	mulx   %r11,%rsi,%r12
  5f16f8:	48 89 b4 24 e0 02 00 	mov    %rsi,0x2e0(%rsp)
  5f16ff:	00 
  5f1700:	4c 89 a4 24 08 02 00 	mov    %r12,0x208(%rsp)
  5f1707:	00 
  5f1708:	c4 62 cb f6 e1       	mulx   %rcx,%rsi,%r12
  5f170d:	4c 89 a4 24 a0 03 00 	mov    %r12,0x3a0(%rsp)
  5f1714:	00 
  5f1715:	48 89 b4 24 00 02 00 	mov    %rsi,0x200(%rsp)
  5f171c:	00 
  5f171d:	c4 42 cb f6 e2       	mulx   %r10,%rsi,%r12
  5f1722:	4c 89 a4 24 f0 01 00 	mov    %r12,0x1f0(%rsp)
  5f1729:	00 
  5f172a:	48 89 b4 24 f8 01 00 	mov    %rsi,0x1f8(%rsp)
  5f1731:	00 
  5f1732:	48 8b 1b             	mov    (%rbx),%rbx
  5f1735:	48 89 da             	mov    %rbx,%rdx
  5f1738:	c4 42 cb f6 e5       	mulx   %r13,%rsi,%r12
  5f173d:	4c 89 a4 24 20 01 00 	mov    %r12,0x120(%rsp)
  5f1744:	00 
  5f1745:	48 89 b4 24 28 01 00 	mov    %rsi,0x128(%rsp)
  5f174c:	00 
  5f174d:	c4 62 c3 f6 f9       	mulx   %rcx,%rdi,%r15
  5f1752:	4c 89 bc 24 c8 03 00 	mov    %r15,0x3c8(%rsp)
  5f1759:	00 
  5f175a:	48 89 bc 24 80 03 00 	mov    %rdi,0x380(%rsp)
  5f1761:	00 
  5f1762:	c4 62 b3 f6 c2       	mulx   %rdx,%r9,%r8
  5f1767:	4c 89 8c 24 40 03 00 	mov    %r9,0x340(%rsp)
  5f176e:	00 
  5f176f:	48 ba 01 00 00 00 01 	movabs $0x100000001,%rdx
  5f1776:	00 00 00 
  5f1779:	c4 c2 b3 f6 d1       	mulx   %r9,%r9,%rdx
  5f177e:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
  5f1785:	c4 c2 9b f6 d1       	mulx   %r9,%r12,%rdx
  5f178a:	48 89 94 24 a0 01 00 	mov    %rdx,0x1a0(%rsp)
  5f1791:	00 
  5f1792:	4c 89 a4 24 98 01 00 	mov    %r12,0x198(%rsp)
  5f1799:	00 
  5f179a:	48 c7 c2 fe ff ff ff 	mov    $0xfffffffffffffffe,%rdx
  5f17a1:	c4 c2 9b f6 d1       	mulx   %r9,%r12,%rdx
  5f17a6:	48 89 94 24 10 01 00 	mov    %rdx,0x110(%rsp)
  5f17ad:	00 
  5f17ae:	4c 89 a4 24 40 01 00 	mov    %r12,0x140(%rsp)
  5f17b5:	00 
  5f17b6:	48 ba 00 00 00 00 ff 	movabs $0xffffffff00000000,%rdx
  5f17bd:	ff ff ff 
  5f17c0:	c4 c2 9b f6 d1       	mulx   %r9,%r12,%rdx
  5f17c5:	48 89 94 24 d0 00 00 	mov    %rdx,0xd0(%rsp)
  5f17cc:	00 
  5f17cd:	4c 89 a4 24 e0 00 00 	mov    %r12,0xe0(%rsp)
  5f17d4:	00 
  5f17d5:	ba ff ff ff ff       	mov    $0xffffffff,%edx
  5f17da:	c4 42 eb f6 c9       	mulx   %r9,%rdx,%r9
  5f17df:	4c 89 8c 24 b0 00 00 	mov    %r9,0xb0(%rsp)
  5f17e6:	00 
  5f17e7:	48 89 94 24 b8 00 00 	mov    %rdx,0xb8(%rsp)
  5f17ee:	00 
  5f17ef:	48 89 da             	mov    %rbx,%rdx
  5f17f2:	c4 42 b3 f6 d2       	mulx   %r10,%r9,%r10
  5f17f7:	4c 89 94 24 70 03 00 	mov    %r10,0x370(%rsp)
  5f17fe:	00 
  5f17ff:	4c 89 4c 24 38       	mov    %r9,0x38(%rsp)
  5f1804:	c4 42 cb f6 e3       	mulx   %r11,%rsi,%r12
  5f1809:	4c 89 a4 24 f0 03 00 	mov    %r12,0x3f0(%rsp)
  5f1810:	00 
  5f1811:	48 89 b4 24 b0 02 00 	mov    %rsi,0x2b0(%rsp)
  5f1818:	00 
  5f1819:	c4 e2 e3 f6 c0       	mulx   %rax,%rbx,%rax
  5f181e:	48 89 84 24 10 04 00 	mov    %rax,0x410(%rsp)
  5f1825:	00 
  5f1826:	48 89 5c 24 08       	mov    %rbx,0x8(%rsp)
  5f182b:	4c 89 ea             	mov    %r13,%rdx
  5f182e:	c4 e2 e3 f6 c2       	mulx   %rdx,%rbx,%rax
  5f1833:	48 89 84 24 50 01 00 	mov    %rax,0x150(%rsp)
  5f183a:	00 
  5f183b:	48 89 9c 24 58 01 00 	mov    %rbx,0x158(%rsp)
  5f1842:	00 
  5f1843:	4c 89 da             	mov    %r11,%rdx
  5f1846:	c4 42 eb f6 dd       	mulx   %r13,%rdx,%r11
  5f184b:	48 89 94 24 e8 02 00 	mov    %rdx,0x2e8(%rsp)
  5f1852:	00 
  5f1853:	4c 89 9c 24 38 01 00 	mov    %r11,0x138(%rsp)
  5f185a:	00 
  5f185b:	4c 89 ea             	mov    %r13,%rdx
  5f185e:	c4 e2 93 f6 c9       	mulx   %rcx,%r13,%rcx
  5f1863:	4c 89 ac 24 a8 03 00 	mov    %r13,0x3a8(%rsp)
  5f186a:	00 
  5f186b:	48 89 8c 24 30 01 00 	mov    %rcx,0x130(%rsp)
  5f1872:	00 
  5f1873:	90                   	nop
  5f1874:	90                   	nop
  5f1875:	90                   	nop
  5f1876:	90                   	nop
  5f1877:	90                   	nop
  5f1878:	90                   	nop
  5f1879:	4d 01 c8             	add    %r9,%r8
  5f187c:	4c 11 d7             	adc    %r10,%rdi
  5f187f:	4c 11 fe             	adc    %r15,%rsi
  5f1882:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
  5f1887:	49 11 c4             	adc    %rax,%r12
  5f188a:	48 8b 9c 24 28 01 00 	mov    0x128(%rsp),%rbx
  5f1891:	00 
  5f1892:	48 8b 84 24 10 04 00 	mov    0x410(%rsp),%rax
  5f1899:	00 
  5f189a:	48 11 c3             	adc    %rax,%rbx
  5f189d:	48 8b 84 24 20 01 00 	mov    0x120(%rsp),%rax
  5f18a4:	00 
  5f18a5:	48 83 d0 00          	adc    $0x0,%rax
  5f18a9:	48 89 84 24 50 02 00 	mov    %rax,0x250(%rsp)
  5f18b0:	00 
  5f18b1:	4c 8b 9c 24 b0 00 00 	mov    0xb0(%rsp),%r11
  5f18b8:	00 
  5f18b9:	48 8b 8c 24 e0 00 00 	mov    0xe0(%rsp),%rcx
  5f18c0:	00 
  5f18c1:	49 01 cb             	add    %rcx,%r11
  5f18c4:	48 8b 8c 24 d0 00 00 	mov    0xd0(%rsp),%rcx
  5f18cb:	00 
  5f18cc:	4c 8b ac 24 40 01 00 	mov    0x140(%rsp),%r13
  5f18d3:	00 
  5f18d4:	4c 11 e9             	adc    %r13,%rcx
  5f18d7:	4c 8b ac 24 10 01 00 	mov    0x110(%rsp),%r13
  5f18de:	00 
  5f18df:	4c 8b bc 24 98 01 00 	mov    0x198(%rsp),%r15
  5f18e6:	00 
  5f18e7:	4d 11 fd             	adc    %r15,%r13
  5f18ea:	4c 8b 8c 24 a0 01 00 	mov    0x1a0(%rsp),%r9
  5f18f1:	00 
  5f18f2:	4d 11 cf             	adc    %r9,%r15
  5f18f5:	4c 8b 94 24 98 01 00 	mov    0x198(%rsp),%r10
  5f18fc:	00 
  5f18fd:	4d 11 ca             	adc    %r9,%r10
  5f1900:	49 83 d1 00          	adc    $0x0,%r9
  5f1904:	4c 89 8c 24 a8 00 00 	mov    %r9,0xa8(%rsp)
  5f190b:	00 
  5f190c:	48 8b 84 24 40 03 00 	mov    0x340(%rsp),%rax
  5f1913:	00 
  5f1914:	4c 8b 8c 24 b8 00 00 	mov    0xb8(%rsp),%r9
  5f191b:	00 
  5f191c:	4c 01 c8             	add    %r9,%rax
  5f191f:	4d 11 c3             	adc    %r8,%r11
  5f1922:	4c 89 9c 24 a0 00 00 	mov    %r11,0xa0(%rsp)
  5f1929:	00 
  5f192a:	48 11 f9             	adc    %rdi,%rcx
  5f192d:	48 89 8c 24 98 00 00 	mov    %rcx,0x98(%rsp)
  5f1934:	00 
  5f1935:	49 11 f5             	adc    %rsi,%r13
  5f1938:	4c 89 ac 24 90 00 00 	mov    %r13,0x90(%rsp)
  5f193f:	00 
  5f1940:	4d 11 e7             	adc    %r12,%r15
  5f1943:	4c 89 bc 24 88 00 00 	mov    %r15,0x88(%rsp)
  5f194a:	00 
  5f194b:	49 11 da             	adc    %rbx,%r10
  5f194e:	4c 89 94 24 80 00 00 	mov    %r10,0x80(%rsp)
  5f1955:	00 
  5f1956:	48 8b 84 24 a8 00 00 	mov    0xa8(%rsp),%rax
  5f195d:	00 
  5f195e:	48 8b 9c 24 50 02 00 	mov    0x250(%rsp),%rbx
  5f1965:	00 
  5f1966:	48 11 d8             	adc    %rbx,%rax
  5f1969:	48 89 44 24 78       	mov    %rax,0x78(%rsp)
  5f196e:	0f 92 c3             	setb   %bl
  5f1971:	0f b6 db             	movzbl %bl,%ebx
  5f1974:	48 89 5c 24 70       	mov    %rbx,0x70(%rsp)
  5f1979:	48 8b 74 24 48       	mov    0x48(%rsp),%rsi
  5f197e:	48 8b bc 24 70 03 00 	mov    0x370(%rsp),%rdi
  5f1985:	00 
  5f1986:	48 01 fe             	add    %rdi,%rsi
  5f1989:	48 89 74 24 30       	mov    %rsi,0x30(%rsp)
  5f198e:	48 8b 7c 24 40       	mov    0x40(%rsp),%rdi
  5f1993:	4c 8b 44 24 58       	mov    0x58(%rsp),%r8
  5f1998:	4c 11 c7             	adc    %r8,%rdi
  5f199b:	48 89 7c 24 28       	mov    %rdi,0x28(%rsp)
  5f19a0:	4c 8b 8c 24 c0 02 00 	mov    0x2c0(%rsp),%r9
  5f19a7:	00 
  5f19a8:	4c 8b 64 24 50       	mov    0x50(%rsp),%r12
  5f19ad:	4d 11 e1             	adc    %r12,%r9
  5f19b0:	4c 89 4c 24 20       	mov    %r9,0x20(%rsp)
  5f19b5:	4c 8b a4 24 f8 01 00 	mov    0x1f8(%rsp),%r12
  5f19bc:	00 
  5f19bd:	4c 8b 84 24 b8 02 00 	mov    0x2b8(%rsp),%r8
  5f19c4:	00 
  5f19c5:	4d 11 c4             	adc    %r8,%r12
  5f19c8:	4c 89 64 24 18       	mov    %r12,0x18(%rsp)
  5f19cd:	4c 8b 84 24 f0 01 00 	mov    0x1f0(%rsp),%r8
  5f19d4:	00 
  5f19d5:	48 8b 5c 24 68       	mov    0x68(%rsp),%rbx
  5f19da:	49 11 d8             	adc    %rbx,%r8
  5f19dd:	4c 89 44 24 10       	mov    %r8,0x10(%rsp)
  5f19e2:	48 8b 5c 24 60       	mov    0x60(%rsp),%rbx
  5f19e7:	48 83 d3 00          	adc    $0x0,%rbx
  5f19eb:	48 89 1c 24          	mov    %rbx,(%rsp)
  5f19ef:	48 8b 5c 24 38       	mov    0x38(%rsp),%rbx
  5f19f4:	4c 01 db             	add    %r11,%rbx
  5f19f7:	48 11 ce             	adc    %rcx,%rsi
  5f19fa:	4c 11 ef             	adc    %r13,%rdi
  5f19fd:	4d 11 f9             	adc    %r15,%r9
  5f1a00:	4d 11 d4             	adc    %r10,%r12
  5f1a03:	4c 89 a4 24 08 04 00 	mov    %r12,0x408(%rsp)
  5f1a0a:	00 
  5f1a0b:	49 11 c0             	adc    %rax,%r8
  5f1a0e:	4c 89 84 24 00 04 00 	mov    %r8,0x400(%rsp)
  5f1a15:	00 
  5f1a16:	48 8b 04 24          	mov    (%rsp),%rax
  5f1a1a:	4c 8b 54 24 70       	mov    0x70(%rsp),%r10
  5f1a1f:	4c 11 d0             	adc    %r10,%rax
  5f1a22:	48 89 84 24 f8 03 00 	mov    %rax,0x3f8(%rsp)
  5f1a29:	00 
  5f1a2a:	48 89 da             	mov    %rbx,%rdx
  5f1a2d:	49 ba 01 00 00 00 01 	movabs $0x100000001,%r10
  5f1a34:	00 00 00 
  5f1a37:	c4 42 83 f6 d2       	mulx   %r10,%r15,%r10
  5f1a3c:	4c 89 fa             	mov    %r15,%rdx
  5f1a3f:	49 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%r10
  5f1a46:	c4 42 93 f6 d2       	mulx   %r10,%r13,%r10
  5f1a4b:	48 c7 c1 fe ff ff ff 	mov    $0xfffffffffffffffe,%rcx
  5f1a52:	c4 e2 a3 f6 c9       	mulx   %rcx,%r11,%rcx
  5f1a57:	48 b8 00 00 00 00 ff 	movabs $0xffffffff00000000,%rax
  5f1a5e:	ff ff ff 
  5f1a61:	c4 e2 bb f6 c0       	mulx   %rax,%r8,%rax
  5f1a66:	41 bc ff ff ff ff    	mov    $0xffffffff,%r12d
  5f1a6c:	c4 c2 83 f6 d4       	mulx   %r12,%r15,%rdx
  5f1a71:	4c 01 c2             	add    %r8,%rdx
  5f1a74:	4c 11 d8             	adc    %r11,%rax
  5f1a77:	4c 11 e9             	adc    %r13,%rcx
  5f1a7a:	4d 89 e8             	mov    %r13,%r8
  5f1a7d:	4d 11 d5             	adc    %r10,%r13
  5f1a80:	4d 11 d0             	adc    %r10,%r8
  5f1a83:	49 83 d2 00          	adc    $0x0,%r10
  5f1a87:	4c 01 fb             	add    %r15,%rbx
  5f1a8a:	48 11 f2             	adc    %rsi,%rdx
  5f1a8d:	48 89 94 24 e8 03 00 	mov    %rdx,0x3e8(%rsp)
  5f1a94:	00 
  5f1a95:	48 11 f8             	adc    %rdi,%rax
  5f1a98:	48 89 84 24 e0 03 00 	mov    %rax,0x3e0(%rsp)
  5f1a9f:	00 
  5f1aa0:	4c 11 c9             	adc    %r9,%rcx
  5f1aa3:	48 89 8c 24 d8 03 00 	mov    %rcx,0x3d8(%rsp)
  5f1aaa:	00 
  5f1aab:	48 8b 9c 24 08 04 00 	mov    0x408(%rsp),%rbx
  5f1ab2:	00 
  5f1ab3:	49 11 dd             	adc    %rbx,%r13
  5f1ab6:	4c 89 ac 24 d0 03 00 	mov    %r13,0x3d0(%rsp)
  5f1abd:	00 
  5f1abe:	48 8b 9c 24 00 04 00 	mov    0x400(%rsp),%rbx
  5f1ac5:	00 
  5f1ac6:	49 11 d8             	adc    %rbx,%r8
  5f1ac9:	4c 89 84 24 c0 03 00 	mov    %r8,0x3c0(%rsp)
  5f1ad0:	00 
  5f1ad1:	48 8b 9c 24 f8 03 00 	mov    0x3f8(%rsp),%rbx
  5f1ad8:	00 
  5f1ad9:	49 11 da             	adc    %rbx,%r10
  5f1adc:	4c 89 94 24 b8 03 00 	mov    %r10,0x3b8(%rsp)
  5f1ae3:	00 
  5f1ae4:	0f 92 c3             	setb   %bl
  5f1ae7:	0f b6 db             	movzbl %bl,%ebx
  5f1aea:	48 8b 74 24 38       	mov    0x38(%rsp),%rsi
  5f1aef:	48 8b bc 24 a0 00 00 	mov    0xa0(%rsp),%rdi
  5f1af6:	00 
  5f1af7:	48 01 fe             	add    %rdi,%rsi
  5f1afa:	48 8b 74 24 30       	mov    0x30(%rsp),%rsi
  5f1aff:	48 8b bc 24 98 00 00 	mov    0x98(%rsp),%rdi
  5f1b06:	00 
  5f1b07:	48 11 fe             	adc    %rdi,%rsi
  5f1b0a:	48 8b 74 24 28       	mov    0x28(%rsp),%rsi
  5f1b0f:	48 8b bc 24 90 00 00 	mov    0x90(%rsp),%rdi
  5f1b16:	00 
  5f1b17:	48 11 fe             	adc    %rdi,%rsi
  5f1b1a:	48 8b 74 24 20       	mov    0x20(%rsp),%rsi
  5f1b1f:	48 8b bc 24 88 00 00 	mov    0x88(%rsp),%rdi
  5f1b26:	00 
  5f1b27:	48 11 fe             	adc    %rdi,%rsi
  5f1b2a:	48 8b 74 24 18       	mov    0x18(%rsp),%rsi
  5f1b2f:	48 8b bc 24 80 00 00 	mov    0x80(%rsp),%rdi
  5f1b36:	00 
  5f1b37:	48 11 fe             	adc    %rdi,%rsi
  5f1b3a:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
  5f1b3f:	48 8b 7c 24 78       	mov    0x78(%rsp),%rdi
  5f1b44:	48 11 fe             	adc    %rdi,%rsi
  5f1b47:	48 8b 34 24          	mov    (%rsp),%rsi
  5f1b4b:	48 8b 7c 24 70       	mov    0x70(%rsp),%rdi
  5f1b50:	48 11 fe             	adc    %rdi,%rsi
  5f1b53:	48 83 d3 00          	adc    $0x0,%rbx
  5f1b57:	48 89 9c 24 b0 03 00 	mov    %rbx,0x3b0(%rsp)
  5f1b5e:	00 
  5f1b5f:	48 8b 74 24 58       	mov    0x58(%rsp),%rsi
  5f1b64:	48 8b bc 24 c8 03 00 	mov    0x3c8(%rsp),%rdi
  5f1b6b:	00 
  5f1b6c:	48 01 fe             	add    %rdi,%rsi
  5f1b6f:	48 89 b4 24 78 03 00 	mov    %rsi,0x378(%rsp)
  5f1b76:	00 
  5f1b77:	48 8b bc 24 90 03 00 	mov    0x390(%rsp),%rdi
  5f1b7e:	00 
  5f1b7f:	4c 8b 4c 24 50       	mov    0x50(%rsp),%r9
  5f1b84:	4c 11 cf             	adc    %r9,%rdi
  5f1b87:	48 89 bc 24 68 03 00 	mov    %rdi,0x368(%rsp)
  5f1b8e:	00 
  5f1b8f:	4c 8b 8c 24 88 03 00 	mov    0x388(%rsp),%r9
  5f1b96:	00 
  5f1b97:	4c 8b 9c 24 98 03 00 	mov    0x398(%rsp),%r11
  5f1b9e:	00 
  5f1b9f:	4d 11 d9             	adc    %r11,%r9
  5f1ba2:	4c 89 8c 24 60 03 00 	mov    %r9,0x360(%rsp)
  5f1ba9:	00 
  5f1baa:	4c 8b bc 24 00 02 00 	mov    0x200(%rsp),%r15
  5f1bb1:	00 
  5f1bb2:	4c 8b 9c 24 c8 02 00 	mov    0x2c8(%rsp),%r11
  5f1bb9:	00 
  5f1bba:	4d 11 df             	adc    %r11,%r15
  5f1bbd:	4c 89 bc 24 58 03 00 	mov    %r15,0x358(%rsp)
  5f1bc4:	00 
  5f1bc5:	4c 8b 9c 24 a0 03 00 	mov    0x3a0(%rsp),%r11
  5f1bcc:	00 
  5f1bcd:	4c 8b a4 24 a8 03 00 	mov    0x3a8(%rsp),%r12
  5f1bd4:	00 
  5f1bd5:	4d 11 e3             	adc    %r12,%r11
  5f1bd8:	4c 89 9c 24 50 03 00 	mov    %r11,0x350(%rsp)
  5f1bdf:	00 
  5f1be0:	4c 8b a4 24 30 01 00 	mov    0x130(%rsp),%r12
  5f1be7:	00 
  5f1be8:	49 83 d4 00          	adc    $0x0,%r12
  5f1bec:	4c 89 a4 24 48 03 00 	mov    %r12,0x348(%rsp)
  5f1bf3:	00 
  5f1bf4:	48 8b 9c 24 80 03 00 	mov    0x380(%rsp),%rbx
  5f1bfb:	00 
  5f1bfc:	48 01 d3             	add    %rdx,%rbx
  5f1bff:	48 11 c6             	adc    %rax,%rsi
  5f1c02:	48 11 cf             	adc    %rcx,%rdi
  5f1c05:	4d 11 e9             	adc    %r13,%r9
  5f1c08:	4d 11 c7             	adc    %r8,%r15
  5f1c0b:	4c 89 bc 24 38 03 00 	mov    %r15,0x338(%rsp)
  5f1c12:	00 
  5f1c13:	4d 11 d3             	adc    %r10,%r11
  5f1c16:	4c 89 9c 24 30 03 00 	mov    %r11,0x330(%rsp)
  5f1c1d:	00 
  5f1c1e:	4c 8b 94 24 b0 03 00 	mov    0x3b0(%rsp),%r10
  5f1c25:	00 
  5f1c26:	4d 11 d4             	adc    %r10,%r12
  5f1c29:	4c 89 a4 24 28 03 00 	mov    %r12,0x328(%rsp)
  5f1c30:	00 
  5f1c31:	48 89 da             	mov    %rbx,%rdx
  5f1c34:	49 ba 01 00 00 00 01 	movabs $0x100000001,%r10
  5f1c3b:	00 00 00 
  5f1c3e:	c4 42 bb f6 d2       	mulx   %r10,%r8,%r10
  5f1c43:	4c 89 c2             	mov    %r8,%rdx
  5f1c46:	49 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%r10
  5f1c4d:	c4 42 93 f6 d2       	mulx   %r10,%r13,%r10
  5f1c52:	48 c7 c1 fe ff ff ff 	mov    $0xfffffffffffffffe,%rcx
  5f1c59:	c4 e2 fb f6 c9       	mulx   %rcx,%rax,%rcx
  5f1c5e:	49 bc 00 00 00 00 ff 	movabs $0xffffffff00000000,%r12
  5f1c65:	ff ff ff 
  5f1c68:	c4 42 a3 f6 e4       	mulx   %r12,%r11,%r12
  5f1c6d:	41 bf ff ff ff ff    	mov    $0xffffffff,%r15d
  5f1c73:	c4 c2 bb f6 d7       	mulx   %r15,%r8,%rdx
  5f1c78:	4c 01 da             	add    %r11,%rdx
  5f1c7b:	49 11 c4             	adc    %rax,%r12
  5f1c7e:	4c 11 e9             	adc    %r13,%rcx
  5f1c81:	4c 89 e8             	mov    %r13,%rax
  5f1c84:	4d 11 d5             	adc    %r10,%r13
  5f1c87:	4c 11 d0             	adc    %r10,%rax
  5f1c8a:	49 83 d2 00          	adc    $0x0,%r10
  5f1c8e:	4c 01 c3             	add    %r8,%rbx
  5f1c91:	48 11 f2             	adc    %rsi,%rdx
  5f1c94:	48 89 94 24 20 03 00 	mov    %rdx,0x320(%rsp)
  5f1c9b:	00 
  5f1c9c:	49 11 fc             	adc    %rdi,%r12
  5f1c9f:	4c 89 a4 24 18 03 00 	mov    %r12,0x318(%rsp)
  5f1ca6:	00 
  5f1ca7:	4c 11 c9             	adc    %r9,%rcx
  5f1caa:	48 89 8c 24 10 03 00 	mov    %rcx,0x310(%rsp)
  5f1cb1:	00 
  5f1cb2:	48 8b 9c 24 38 03 00 	mov    0x338(%rsp),%rbx
  5f1cb9:	00 
  5f1cba:	49 11 dd             	adc    %rbx,%r13
  5f1cbd:	4c 89 ac 24 08 03 00 	mov    %r13,0x308(%rsp)
  5f1cc4:	00 
  5f1cc5:	48 8b 9c 24 30 03 00 	mov    0x330(%rsp),%rbx
  5f1ccc:	00 
  5f1ccd:	48 11 d8             	adc    %rbx,%rax
  5f1cd0:	48 89 84 24 00 03 00 	mov    %rax,0x300(%rsp)
  5f1cd7:	00 
  5f1cd8:	48 8b 9c 24 28 03 00 	mov    0x328(%rsp),%rbx
  5f1cdf:	00 
  5f1ce0:	49 11 da             	adc    %rbx,%r10
  5f1ce3:	4c 89 94 24 f8 02 00 	mov    %r10,0x2f8(%rsp)
  5f1cea:	00 
  5f1ceb:	0f 92 c3             	setb   %bl
  5f1cee:	0f b6 db             	movzbl %bl,%ebx
  5f1cf1:	48 8b b4 24 80 03 00 	mov    0x380(%rsp),%rsi
  5f1cf8:	00 
  5f1cf9:	48 8b bc 24 e8 03 00 	mov    0x3e8(%rsp),%rdi
  5f1d00:	00 
  5f1d01:	48 01 fe             	add    %rdi,%rsi
  5f1d04:	48 8b b4 24 78 03 00 	mov    0x378(%rsp),%rsi
  5f1d0b:	00 
  5f1d0c:	48 8b bc 24 e0 03 00 	mov    0x3e0(%rsp),%rdi
  5f1d13:	00 
  5f1d14:	48 11 fe             	adc    %rdi,%rsi
  5f1d17:	48 8b b4 24 68 03 00 	mov    0x368(%rsp),%rsi
  5f1d1e:	00 
  5f1d1f:	48 8b bc 24 d8 03 00 	mov    0x3d8(%rsp),%rdi
  5f1d26:	00 
  5f1d27:	48 11 fe             	adc    %rdi,%rsi
  5f1d2a:	48 8b b4 24 60 03 00 	mov    0x360(%rsp),%rsi
  5f1d31:	00 
  5f1d32:	48 8b bc 24 d0 03 00 	mov    0x3d0(%rsp),%rdi
  5f1d39:	00 
  5f1d3a:	48 11 fe             	adc    %rdi,%rsi
  5f1d3d:	48 8b b4 24 58 03 00 	mov    0x358(%rsp),%rsi
  5f1d44:	00 
  5f1d45:	48 8b bc 24 c0 03 00 	mov    0x3c0(%rsp),%rdi
  5f1d4c:	00 
  5f1d4d:	48 11 fe             	adc    %rdi,%rsi
  5f1d50:	48 8b b4 24 50 03 00 	mov    0x350(%rsp),%rsi
  5f1d57:	00 
  5f1d58:	48 8b bc 24 b8 03 00 	mov    0x3b8(%rsp),%rdi
  5f1d5f:	00 
  5f1d60:	48 11 fe             	adc    %rdi,%rsi
  5f1d63:	48 8b b4 24 48 03 00 	mov    0x348(%rsp),%rsi
  5f1d6a:	00 
  5f1d6b:	48 8b bc 24 b0 03 00 	mov    0x3b0(%rsp),%rdi
  5f1d72:	00 
  5f1d73:	48 11 fe             	adc    %rdi,%rsi
  5f1d76:	48 83 d3 00          	adc    $0x0,%rbx
  5f1d7a:	48 89 9c 24 f0 02 00 	mov    %rbx,0x2f0(%rsp)
  5f1d81:	00 
  5f1d82:	48 8b b4 24 c0 02 00 	mov    0x2c0(%rsp),%rsi
  5f1d89:	00 
  5f1d8a:	48 8b bc 24 f0 03 00 	mov    0x3f0(%rsp),%rdi
  5f1d91:	00 
  5f1d92:	48 01 fe             	add    %rdi,%rsi
  5f1d95:	48 89 b4 24 a8 02 00 	mov    %rsi,0x2a8(%rsp)
  5f1d9c:	00 
  5f1d9d:	48 8b bc 24 b8 02 00 	mov    0x2b8(%rsp),%rdi
  5f1da4:	00 
  5f1da5:	4c 8b 84 24 98 03 00 	mov    0x398(%rsp),%r8
  5f1dac:	00 
  5f1dad:	4c 11 c7             	adc    %r8,%rdi
  5f1db0:	48 89 bc 24 a0 02 00 	mov    %rdi,0x2a0(%rsp)
  5f1db7:	00 
  5f1db8:	4c 8b 84 24 c8 02 00 	mov    0x2c8(%rsp),%r8
  5f1dbf:	00 
  5f1dc0:	4c 8b 8c 24 d8 02 00 	mov    0x2d8(%rsp),%r9
  5f1dc7:	00 
  5f1dc8:	4d 11 c8             	adc    %r9,%r8
  5f1dcb:	4c 89 84 24 98 02 00 	mov    %r8,0x298(%rsp)
  5f1dd2:	00 
  5f1dd3:	4c 8b 8c 24 d0 02 00 	mov    0x2d0(%rsp),%r9
  5f1dda:	00 
  5f1ddb:	4c 8b 9c 24 e0 02 00 	mov    0x2e0(%rsp),%r11
  5f1de2:	00 
  5f1de3:	4d 11 d9             	adc    %r11,%r9
  5f1de6:	4c 89 8c 24 90 02 00 	mov    %r9,0x290(%rsp)
  5f1ded:	00 
  5f1dee:	4c 8b 9c 24 08 02 00 	mov    0x208(%rsp),%r11
  5f1df5:	00 
  5f1df6:	4c 8b bc 24 e8 02 00 	mov    0x2e8(%rsp),%r15
  5f1dfd:	00 
  5f1dfe:	4d 11 fb             	adc    %r15,%r11
  5f1e01:	4c 89 9c 24 88 02 00 	mov    %r11,0x288(%rsp)
  5f1e08:	00 
  5f1e09:	4c 8b bc 24 38 01 00 	mov    0x138(%rsp),%r15
  5f1e10:	00 
  5f1e11:	49 83 d7 00          	adc    $0x0,%r15
  5f1e15:	4c 89 bc 24 80 02 00 	mov    %r15,0x280(%rsp)
  5f1e1c:	00 
  5f1e1d:	48 8b 9c 24 b0 02 00 	mov    0x2b0(%rsp),%rbx
  5f1e24:	00 
  5f1e25:	48 01 d3             	add    %rdx,%rbx
  5f1e28:	4c 11 e6             	adc    %r12,%rsi
  5f1e2b:	48 11 cf             	adc    %rcx,%rdi
  5f1e2e:	4d 11 e8             	adc    %r13,%r8
  5f1e31:	49 11 c1             	adc    %rax,%r9
  5f1e34:	4c 89 8c 24 78 02 00 	mov    %r9,0x278(%rsp)
  5f1e3b:	00 
  5f1e3c:	4d 11 d3             	adc    %r10,%r11
  5f1e3f:	4c 89 9c 24 70 02 00 	mov    %r11,0x270(%rsp)
  5f1e46:	00 
  5f1e47:	4c 8b 94 24 f0 02 00 	mov    0x2f0(%rsp),%r10
  5f1e4e:	00 
  5f1e4f:	4d 11 d7             	adc    %r10,%r15
  5f1e52:	4c 89 bc 24 68 02 00 	mov    %r15,0x268(%rsp)
  5f1e59:	00 
  5f1e5a:	48 89 da             	mov    %rbx,%rdx
  5f1e5d:	49 ba 01 00 00 00 01 	movabs $0x100000001,%r10
  5f1e64:	00 00 00 
  5f1e67:	c4 42 fb f6 d2       	mulx   %r10,%rax,%r10
  5f1e6c:	48 89 c2             	mov    %rax,%rdx
  5f1e6f:	49 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%r10
  5f1e76:	c4 42 93 f6 d2       	mulx   %r10,%r13,%r10
  5f1e7b:	48 c7 c1 fe ff ff ff 	mov    $0xfffffffffffffffe,%rcx
  5f1e82:	c4 e2 9b f6 c9       	mulx   %rcx,%r12,%rcx
  5f1e87:	49 bf 00 00 00 00 ff 	movabs $0xffffffff00000000,%r15
  5f1e8e:	ff ff ff 
  5f1e91:	c4 42 a3 f6 ff       	mulx   %r15,%r11,%r15
  5f1e96:	41 b9 ff ff ff ff    	mov    $0xffffffff,%r9d
  5f1e9c:	c4 c2 fb f6 d1       	mulx   %r9,%rax,%rdx
  5f1ea1:	4c 01 da             	add    %r11,%rdx
  5f1ea4:	4d 11 e7             	adc    %r12,%r15
  5f1ea7:	4c 11 e9             	adc    %r13,%rcx
  5f1eaa:	4d 89 d3             	mov    %r10,%r11
  5f1ead:	4d 11 ea             	adc    %r13,%r10
  5f1eb0:	4d 11 dd             	adc    %r11,%r13
  5f1eb3:	49 83 d3 00          	adc    $0x0,%r11
  5f1eb7:	48 01 c3             	add    %rax,%rbx
  5f1eba:	48 11 f2             	adc    %rsi,%rdx
  5f1ebd:	48 89 94 24 60 02 00 	mov    %rdx,0x260(%rsp)
  5f1ec4:	00 
  5f1ec5:	49 11 ff             	adc    %rdi,%r15
  5f1ec8:	4c 89 bc 24 58 02 00 	mov    %r15,0x258(%rsp)
  5f1ecf:	00 
  5f1ed0:	4c 11 c1             	adc    %r8,%rcx
  5f1ed3:	48 89 8c 24 48 02 00 	mov    %rcx,0x248(%rsp)
  5f1eda:	00 
  5f1edb:	48 8b 84 24 78 02 00 	mov    0x278(%rsp),%rax
  5f1ee2:	00 
  5f1ee3:	49 11 c2             	adc    %rax,%r10
  5f1ee6:	4c 89 94 24 40 02 00 	mov    %r10,0x240(%rsp)
  5f1eed:	00 
  5f1eee:	48 8b 84 24 70 02 00 	mov    0x270(%rsp),%rax
  5f1ef5:	00 
  5f1ef6:	49 11 c5             	adc    %rax,%r13
  5f1ef9:	4c 89 ac 24 38 02 00 	mov    %r13,0x238(%rsp)
  5f1f00:	00 
  5f1f01:	48 8b 84 24 68 02 00 	mov    0x268(%rsp),%rax
  5f1f08:	00 
  5f1f09:	49 11 c3             	adc    %rax,%r11
  5f1f0c:	4c 89 9c 24 30 02 00 	mov    %r11,0x230(%rsp)
  5f1f13:	00 
  5f1f14:	0f 92 c0             	setb   %al
  5f1f17:	0f b6 c0             	movzbl %al,%eax
  5f1f1a:	48 8b 9c 24 b0 02 00 	mov    0x2b0(%rsp),%rbx
  5f1f21:	00 
  5f1f22:	48 8b b4 24 20 03 00 	mov    0x320(%rsp),%rsi
  5f1f29:	00 
  5f1f2a:	48 01 f3             	add    %rsi,%rbx
  5f1f2d:	48 8b 9c 24 a8 02 00 	mov    0x2a8(%rsp),%rbx
  5f1f34:	00 
  5f1f35:	48 8b b4 24 18 03 00 	mov    0x318(%rsp),%rsi
  5f1f3c:	00 
  5f1f3d:	48 11 f3             	adc    %rsi,%rbx
  5f1f40:	48 8b 9c 24 a0 02 00 	mov    0x2a0(%rsp),%rbx
  5f1f47:	00 
  5f1f48:	48 8b b4 24 10 03 00 	mov    0x310(%rsp),%rsi
  5f1f4f:	00 
  5f1f50:	48 11 f3             	adc    %rsi,%rbx
  5f1f53:	48 8b 9c 24 98 02 00 	mov    0x298(%rsp),%rbx
  5f1f5a:	00 
  5f1f5b:	48 8b b4 24 08 03 00 	mov    0x308(%rsp),%rsi
  5f1f62:	00 
  5f1f63:	48 11 f3             	adc    %rsi,%rbx
  5f1f66:	48 8b 9c 24 90 02 00 	mov    0x290(%rsp),%rbx
  5f1f6d:	00 
  5f1f6e:	48 8b b4 24 00 03 00 	mov    0x300(%rsp),%rsi
  5f1f75:	00 
  5f1f76:	48 11 f3             	adc    %rsi,%rbx
  5f1f79:	48 8b 9c 24 88 02 00 	mov    0x288(%rsp),%rbx
  5f1f80:	00 
  5f1f81:	48 8b b4 24 f8 02 00 	mov    0x2f8(%rsp),%rsi
  5f1f88:	00 
  5f1f89:	48 11 f3             	adc    %rsi,%rbx
  5f1f8c:	48 8b 9c 24 80 02 00 	mov    0x280(%rsp),%rbx
  5f1f93:	00 
  5f1f94:	48 8b b4 24 f0 02 00 	mov    0x2f0(%rsp),%rsi
  5f1f9b:	00 
  5f1f9c:	48 11 f3             	adc    %rsi,%rbx
  5f1f9f:	48 83 d0 00          	adc    $0x0,%rax
  5f1fa3:	48 89 84 24 28 02 00 	mov    %rax,0x228(%rsp)
  5f1faa:	00 
  5f1fab:	48 8b 9c 24 f8 01 00 	mov    0x1f8(%rsp),%rbx
  5f1fb2:	00 
  5f1fb3:	48 8b b4 24 10 04 00 	mov    0x410(%rsp),%rsi
  5f1fba:	00 
  5f1fbb:	48 01 f3             	add    %rsi,%rbx
  5f1fbe:	48 89 9c 24 e8 01 00 	mov    %rbx,0x1e8(%rsp)
  5f1fc5:	00 
  5f1fc6:	48 8b b4 24 f0 01 00 	mov    0x1f0(%rsp),%rsi
  5f1fcd:	00 
  5f1fce:	48 8b bc 24 00 02 00 	mov    0x200(%rsp),%rdi
  5f1fd5:	00 
  5f1fd6:	48 11 fe             	adc    %rdi,%rsi
  5f1fd9:	48 89 b4 24 e0 01 00 	mov    %rsi,0x1e0(%rsp)
  5f1fe0:	00 
  5f1fe1:	48 8b bc 24 e0 02 00 	mov    0x2e0(%rsp),%rdi
  5f1fe8:	00 
  5f1fe9:	4c 8b 84 24 a0 03 00 	mov    0x3a0(%rsp),%r8
  5f1ff0:	00 
  5f1ff1:	4c 11 c7             	adc    %r8,%rdi
  5f1ff4:	48 89 bc 24 d8 01 00 	mov    %rdi,0x1d8(%rsp)
  5f1ffb:	00 
  5f1ffc:	4c 8b 84 24 08 02 00 	mov    0x208(%rsp),%r8
  5f2003:	00 
  5f2004:	4c 8b a4 24 18 02 00 	mov    0x218(%rsp),%r12
  5f200b:	00 
  5f200c:	4d 11 e0             	adc    %r12,%r8
  5f200f:	4c 89 84 24 d0 01 00 	mov    %r8,0x1d0(%rsp)
  5f2016:	00 
  5f2017:	4c 8b a4 24 48 01 00 	mov    0x148(%rsp),%r12
  5f201e:	00 
  5f201f:	4c 8b 8c 24 10 02 00 	mov    0x210(%rsp),%r9
  5f2026:	00 
  5f2027:	4d 11 e1             	adc    %r12,%r9
  5f202a:	4c 89 8c 24 c8 01 00 	mov    %r9,0x1c8(%rsp)
  5f2031:	00 
  5f2032:	4c 8b a4 24 20 02 00 	mov    0x220(%rsp),%r12
  5f2039:	00 
  5f203a:	49 83 d4 00          	adc    $0x0,%r12
  5f203e:	4c 89 a4 24 c0 01 00 	mov    %r12,0x1c0(%rsp)
  5f2045:	00 
  5f2046:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
  5f204b:	48 01 c2             	add    %rax,%rdx
  5f204e:	4c 11 fb             	adc    %r15,%rbx
  5f2051:	48 11 ce             	adc    %rcx,%rsi
  5f2054:	4c 11 d7             	adc    %r10,%rdi
  5f2057:	4d 11 e8             	adc    %r13,%r8
  5f205a:	4c 89 84 24 b8 01 00 	mov    %r8,0x1b8(%rsp)
  5f2061:	00 
  5f2062:	4d 11 d9             	adc    %r11,%r9
  5f2065:	4c 89 8c 24 b0 01 00 	mov    %r9,0x1b0(%rsp)
  5f206c:	00 
  5f206d:	4c 8b 9c 24 28 02 00 	mov    0x228(%rsp),%r11
  5f2074:	00 
  5f2075:	4d 11 dc             	adc    %r11,%r12
  5f2078:	4c 89 a4 24 a8 01 00 	mov    %r12,0x1a8(%rsp)
  5f207f:	00 
  5f2080:	49 bb 01 00 00 00 01 	movabs $0x100000001,%r11
  5f2087:	00 00 00 
  5f208a:	c4 42 93 f6 db       	mulx   %r11,%r13,%r11
  5f208f:	49 89 d3             	mov    %rdx,%r11
  5f2092:	4c 89 ea             	mov    %r13,%rdx
  5f2095:	49 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%r10
  5f209c:	c4 42 f3 f6 d2       	mulx   %r10,%rcx,%r10
  5f20a1:	49 c7 c7 fe ff ff ff 	mov    $0xfffffffffffffffe,%r15
  5f20a8:	c4 42 fb f6 ff       	mulx   %r15,%rax,%r15
  5f20ad:	49 bc 00 00 00 00 ff 	movabs $0xffffffff00000000,%r12
  5f20b4:	ff ff ff 
  5f20b7:	c4 42 b3 f6 e4       	mulx   %r12,%r9,%r12
  5f20bc:	41 b8 ff ff ff ff    	mov    $0xffffffff,%r8d
  5f20c2:	c4 c2 93 f6 d0       	mulx   %r8,%r13,%rdx
  5f20c7:	4c 01 ca             	add    %r9,%rdx
  5f20ca:	49 11 c4             	adc    %rax,%r12
  5f20cd:	49 11 cf             	adc    %rcx,%r15
  5f20d0:	48 89 c8             	mov    %rcx,%rax
  5f20d3:	4c 11 d1             	adc    %r10,%rcx
  5f20d6:	4c 11 d0             	adc    %r10,%rax
  5f20d9:	49 83 d2 00          	adc    $0x0,%r10
  5f20dd:	4d 01 eb             	add    %r13,%r11
  5f20e0:	48 11 da             	adc    %rbx,%rdx
  5f20e3:	48 89 94 24 90 01 00 	mov    %rdx,0x190(%rsp)
  5f20ea:	00 
  5f20eb:	49 11 f4             	adc    %rsi,%r12
  5f20ee:	4c 89 a4 24 88 01 00 	mov    %r12,0x188(%rsp)
  5f20f5:	00 
  5f20f6:	49 11 ff             	adc    %rdi,%r15
  5f20f9:	4c 89 bc 24 80 01 00 	mov    %r15,0x180(%rsp)
  5f2100:	00 
  5f2101:	48 8b 9c 24 b8 01 00 	mov    0x1b8(%rsp),%rbx
  5f2108:	00 
  5f2109:	48 11 d9             	adc    %rbx,%rcx
  5f210c:	48 89 8c 24 78 01 00 	mov    %rcx,0x178(%rsp)
  5f2113:	00 
  5f2114:	48 8b 9c 24 b0 01 00 	mov    0x1b0(%rsp),%rbx
  5f211b:	00 
  5f211c:	48 11 d8             	adc    %rbx,%rax
  5f211f:	48 89 84 24 70 01 00 	mov    %rax,0x170(%rsp)
  5f2126:	00 
  5f2127:	48 8b 9c 24 a8 01 00 	mov    0x1a8(%rsp),%rbx
  5f212e:	00 
  5f212f:	49 11 da             	adc    %rbx,%r10
  5f2132:	4c 89 94 24 68 01 00 	mov    %r10,0x168(%rsp)
  5f2139:	00 
  5f213a:	0f 92 c3             	setb   %bl
  5f213d:	0f b6 db             	movzbl %bl,%ebx
  5f2140:	48 8b b4 24 60 02 00 	mov    0x260(%rsp),%rsi
  5f2147:	00 
  5f2148:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
  5f214d:	48 01 fe             	add    %rdi,%rsi
  5f2150:	48 8b b4 24 e8 01 00 	mov    0x1e8(%rsp),%rsi
  5f2157:	00 
  5f2158:	48 8b bc 24 58 02 00 	mov    0x258(%rsp),%rdi
  5f215f:	00 
  5f2160:	48 11 fe             	adc    %rdi,%rsi
  5f2163:	48 8b b4 24 e0 01 00 	mov    0x1e0(%rsp),%rsi
  5f216a:	00 
  5f216b:	48 8b bc 24 48 02 00 	mov    0x248(%rsp),%rdi
  5f2172:	00 
  5f2173:	48 11 fe             	adc    %rdi,%rsi
  5f2176:	48 8b b4 24 d8 01 00 	mov    0x1d8(%rsp),%rsi
  5f217d:	00 
  5f217e:	48 8b bc 24 40 02 00 	mov    0x240(%rsp),%rdi
  5f2185:	00 
  5f2186:	48 11 fe             	adc    %rdi,%rsi
  5f2189:	48 8b b4 24 d0 01 00 	mov    0x1d0(%rsp),%rsi
  5f2190:	00 
  5f2191:	48 8b bc 24 38 02 00 	mov    0x238(%rsp),%rdi
  5f2198:	00 
  5f2199:	48 11 fe             	adc    %rdi,%rsi
  5f219c:	48 8b b4 24 c8 01 00 	mov    0x1c8(%rsp),%rsi
  5f21a3:	00 
  5f21a4:	48 8b bc 24 30 02 00 	mov    0x230(%rsp),%rdi
  5f21ab:	00 
  5f21ac:	48 11 fe             	adc    %rdi,%rsi
  5f21af:	48 8b b4 24 c0 01 00 	mov    0x1c0(%rsp),%rsi
  5f21b6:	00 
  5f21b7:	48 8b bc 24 28 02 00 	mov    0x228(%rsp),%rdi
  5f21be:	00 
  5f21bf:	48 11 fe             	adc    %rdi,%rsi
  5f21c2:	48 83 d3 00          	adc    $0x0,%rbx
  5f21c6:	48 89 9c 24 60 01 00 	mov    %rbx,0x160(%rsp)
  5f21cd:	00 
  5f21ce:	48 8b b4 24 20 01 00 	mov    0x120(%rsp),%rsi
  5f21d5:	00 
  5f21d6:	48 8b 7c 24 68       	mov    0x68(%rsp),%rdi
  5f21db:	48 01 fe             	add    %rdi,%rsi
  5f21de:	48 89 b4 24 18 01 00 	mov    %rsi,0x118(%rsp)
  5f21e5:	00 
  5f21e6:	48 8b bc 24 a8 03 00 	mov    0x3a8(%rsp),%rdi
  5f21ed:	00 
  5f21ee:	4c 8b 4c 24 60       	mov    0x60(%rsp),%r9
  5f21f3:	4c 11 cf             	adc    %r9,%rdi
  5f21f6:	48 89 bc 24 08 01 00 	mov    %rdi,0x108(%rsp)
  5f21fd:	00 
  5f21fe:	4c 8b 8c 24 30 01 00 	mov    0x130(%rsp),%r9
  5f2205:	00 
  5f2206:	4c 8b 9c 24 e8 02 00 	mov    0x2e8(%rsp),%r11
  5f220d:	00 
  5f220e:	4d 11 d9             	adc    %r11,%r9
  5f2211:	4c 89 8c 24 00 01 00 	mov    %r9,0x100(%rsp)
  5f2218:	00 
  5f2219:	4c 8b 9c 24 38 01 00 	mov    0x138(%rsp),%r11
  5f2220:	00 
  5f2221:	4c 8b ac 24 48 01 00 	mov    0x148(%rsp),%r13
  5f2228:	00 
  5f2229:	4d 11 eb             	adc    %r13,%r11
  5f222c:	4c 89 9c 24 f8 00 00 	mov    %r11,0xf8(%rsp)
  5f2233:	00 
  5f2234:	4c 8b ac 24 58 01 00 	mov    0x158(%rsp),%r13
  5f223b:	00 
  5f223c:	4c 8b 84 24 20 02 00 	mov    0x220(%rsp),%r8
  5f2243:	00 
  5f2244:	4d 11 c5             	adc    %r8,%r13
  5f2247:	4c 89 ac 24 f0 00 00 	mov    %r13,0xf0(%rsp)
  5f224e:	00 
  5f224f:	4c 8b 84 24 50 01 00 	mov    0x150(%rsp),%r8
  5f2256:	00 
  5f2257:	49 83 d0 00          	adc    $0x0,%r8
  5f225b:	4c 89 84 24 e8 00 00 	mov    %r8,0xe8(%rsp)
  5f2262:	00 
  5f2263:	48 8b 9c 24 28 01 00 	mov    0x128(%rsp),%rbx
  5f226a:	00 
  5f226b:	48 01 d3             	add    %rdx,%rbx
  5f226e:	4c 11 e6             	adc    %r12,%rsi
  5f2271:	4c 11 ff             	adc    %r15,%rdi
  5f2274:	49 11 c9             	adc    %rcx,%r9
  5f2277:	49 11 c3             	adc    %rax,%r11
  5f227a:	4c 89 9c 24 d8 00 00 	mov    %r11,0xd8(%rsp)
  5f2281:	00 
  5f2282:	4d 11 d5             	adc    %r10,%r13
  5f2285:	4c 89 ac 24 c8 00 00 	mov    %r13,0xc8(%rsp)
  5f228c:	00 
  5f228d:	4c 8b 94 24 60 01 00 	mov    0x160(%rsp),%r10
  5f2294:	00 
  5f2295:	4d 11 d0             	adc    %r10,%r8
  5f2298:	4c 89 84 24 c0 00 00 	mov    %r8,0xc0(%rsp)
  5f229f:	00 
  5f22a0:	48 89 da             	mov    %rbx,%rdx
  5f22a3:	49 ba 01 00 00 00 01 	movabs $0x100000001,%r10
  5f22aa:	00 00 00 
  5f22ad:	c4 42 fb f6 d2       	mulx   %r10,%rax,%r10
  5f22b2:	48 89 c2             	mov    %rax,%rdx
  5f22b5:	49 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%r10
  5f22bc:	c4 42 f3 f6 d2       	mulx   %r10,%rcx,%r10
  5f22c1:	49 c7 c7 fe ff ff ff 	mov    $0xfffffffffffffffe,%r15
  5f22c8:	c4 42 9b f6 ff       	mulx   %r15,%r12,%r15
  5f22cd:	49 b8 00 00 00 00 ff 	movabs $0xffffffff00000000,%r8
  5f22d4:	ff ff ff 
  5f22d7:	c4 42 93 f6 c0       	mulx   %r8,%r13,%r8
  5f22dc:	41 bb ff ff ff ff    	mov    $0xffffffff,%r11d
  5f22e2:	c4 c2 eb f6 c3       	mulx   %r11,%rdx,%rax
  5f22e7:	4c 01 e8             	add    %r13,%rax
  5f22ea:	4d 11 e0             	adc    %r12,%r8
  5f22ed:	49 11 cf             	adc    %rcx,%r15
  5f22f0:	49 89 cc             	mov    %rcx,%r12
  5f22f3:	4c 11 d1             	adc    %r10,%rcx
  5f22f6:	4d 11 d4             	adc    %r10,%r12
  5f22f9:	49 83 d2 00          	adc    $0x0,%r10
  5f22fd:	48 01 d3             	add    %rdx,%rbx
  5f2300:	48 11 f0             	adc    %rsi,%rax
  5f2303:	49 11 f8             	adc    %rdi,%r8
  5f2306:	4d 11 cf             	adc    %r9,%r15
  5f2309:	48 8b 9c 24 d8 00 00 	mov    0xd8(%rsp),%rbx
  5f2310:	00 
  5f2311:	48 11 d9             	adc    %rbx,%rcx
  5f2314:	48 8b 9c 24 c8 00 00 	mov    0xc8(%rsp),%rbx
  5f231b:	00 
  5f231c:	49 11 dc             	adc    %rbx,%r12
  5f231f:	48 8b 9c 24 c0 00 00 	mov    0xc0(%rsp),%rbx
  5f2326:	00 
  5f2327:	49 11 da             	adc    %rbx,%r10
  5f232a:	0f 92 c3             	setb   %bl
  5f232d:	0f b6 db             	movzbl %bl,%ebx
  5f2330:	48 8b b4 24 28 01 00 	mov    0x128(%rsp),%rsi
  5f2337:	00 
  5f2338:	48 8b bc 24 90 01 00 	mov    0x190(%rsp),%rdi
  5f233f:	00 
  5f2340:	48 01 fe             	add    %rdi,%rsi
  5f2343:	48 8b b4 24 18 01 00 	mov    0x118(%rsp),%rsi
  5f234a:	00 
  5f234b:	48 8b bc 24 88 01 00 	mov    0x188(%rsp),%rdi
  5f2352:	00 
  5f2353:	48 11 fe             	adc    %rdi,%rsi
  5f2356:	48 8b b4 24 08 01 00 	mov    0x108(%rsp),%rsi
  5f235d:	00 
  5f235e:	48 8b bc 24 80 01 00 	mov    0x180(%rsp),%rdi
  5f2365:	00 
  5f2366:	48 11 fe             	adc    %rdi,%rsi
  5f2369:	48 8b b4 24 00 01 00 	mov    0x100(%rsp),%rsi
  5f2370:	00 
  5f2371:	48 8b bc 24 78 01 00 	mov    0x178(%rsp),%rdi
  5f2378:	00 
  5f2379:	48 11 fe             	adc    %rdi,%rsi
  5f237c:	48 8b b4 24 f8 00 00 	mov    0xf8(%rsp),%rsi
  5f2383:	00 
  5f2384:	48 8b bc 24 70 01 00 	mov    0x170(%rsp),%rdi
  5f238b:	00 
  5f238c:	48 11 fe             	adc    %rdi,%rsi
  5f238f:	48 8b b4 24 f0 00 00 	mov    0xf0(%rsp),%rsi
  5f2396:	00 
  5f2397:	48 8b bc 24 68 01 00 	mov    0x168(%rsp),%rdi
  5f239e:	00 
  5f239f:	48 11 fe             	adc    %rdi,%rsi
  5f23a2:	48 8b b4 24 e8 00 00 	mov    0xe8(%rsp),%rsi
  5f23a9:	00 
  5f23aa:	48 8b bc 24 60 01 00 	mov    0x160(%rsp),%rdi
  5f23b1:	00 
  5f23b2:	48 11 fe             	adc    %rdi,%rsi
  5f23b5:	48 83 d3 00          	adc    $0x0,%rbx
  5f23b9:	48 89 c6             	mov    %rax,%rsi
  5f23bc:	4c 29 d8             	sub    %r11,%rax
  5f23bf:	48 bf 00 00 00 00 ff 	movabs $0xffffffff00000000,%rdi
  5f23c6:	ff ff ff 
  5f23c9:	4d 89 c1             	mov    %r8,%r9
  5f23cc:	49 19 f8             	sbb    %rdi,%r8
  5f23cf:	4c 89 ff             	mov    %r15,%rdi
  5f23d2:	49 83 df fe          	sbb    $0xfffffffffffffffe,%r15
  5f23d6:	49 89 cb             	mov    %rcx,%r11
  5f23d9:	48 83 d9 ff          	sbb    $0xffffffffffffffff,%rcx
  5f23dd:	4d 89 e5             	mov    %r12,%r13
  5f23e0:	49 83 dc ff          	sbb    $0xffffffffffffffff,%r12
  5f23e4:	4c 89 d2             	mov    %r10,%rdx
  5f23e7:	49 83 da ff          	sbb    $0xffffffffffffffff,%r10
  5f23eb:	48 83 db 00          	sbb    $0x0,%rbx
  5f23ef:	0f 92 c3             	setb   %bl
  5f23f2:	0f b6 db             	movzbl %bl,%ebx
  5f23f5:	48 f7 db             	neg    %rbx
  5f23f8:	48 21 de             	and    %rbx,%rsi
  5f23fb:	c4 e2 e0 f2 c0       	andn   %rax,%rbx,%rax
  5f2400:	48 09 c6             	or     %rax,%rsi
  5f2403:	48 8b 84 24 28 04 00 	mov    0x428(%rsp),%rax
  5f240a:	00 
  5f240b:	48 89 30             	mov    %rsi,(%rax)
  5f240e:	49 21 d9             	and    %rbx,%r9
  5f2411:	c4 c2 e0 f2 f0       	andn   %r8,%rbx,%rsi
  5f2416:	49 09 f1             	or     %rsi,%r9
  5f2419:	4c 89 48 08          	mov    %r9,0x8(%rax)
  5f241d:	48 21 df             	and    %rbx,%rdi
  5f2420:	c4 c2 e0 f2 f7       	andn   %r15,%rbx,%rsi
  5f2425:	48 09 f7             	or     %rsi,%rdi
  5f2428:	48 89 78 10          	mov    %rdi,0x10(%rax)
  5f242c:	49 21 db             	and    %rbx,%r11
  5f242f:	c4 e2 e0 f2 c9       	andn   %rcx,%rbx,%rcx
  5f2434:	4c 09 d9             	or     %r11,%rcx
  5f2437:	48 89 48 18          	mov    %rcx,0x18(%rax)
  5f243b:	49 21 dd             	and    %rbx,%r13
  5f243e:	c4 c2 e0 f2 cc       	andn   %r12,%rbx,%rcx
  5f2443:	49 09 cd             	or     %rcx,%r13
  5f2446:	4c 89 68 20          	mov    %r13,0x20(%rax)
  5f244a:	48 21 da             	and    %rbx,%rdx
  5f244d:	c4 c2 e0 f2 ca       	andn   %r10,%rbx,%rcx
  5f2452:	48 09 ca             	or     %rcx,%rdx
  5f2455:	48 89 50 28          	mov    %rdx,0x28(%rax)
  5f2459:	c9                   	leave
  5f245a:	c3                   	ret
  5f245b:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  5f2460:	48 89 5c 24 10       	mov    %rbx,0x10(%rsp)
  5f2465:	e8 b6 86 e9 ff       	call   48ab20 <runtime.morestack_noctxt.abi0>
  5f246a:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
  5f246f:	48 8b 5c 24 10       	mov    0x10(%rsp),%rbx
  5f2474:	e9 87 f1 ff ff       	jmp    5f1600 <example.com/p384issue.RawSquare>
