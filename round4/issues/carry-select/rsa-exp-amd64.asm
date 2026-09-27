
/home/exedev/crypto-audit/round4/bin/rsa-sign.test:     file format elf64-x86-64


Disassembly of section .text:

0000000000667020 <crypto/internal/fips140/bigmod.(*Nat).Exp>:
  667020:	49 89 e4             	mov    %rsp,%r12
  667023:	49 81 ec f0 11 00 00 	sub    $0x11f0,%r12
  66702a:	0f 82 d6 0b 00 00    	jb     667c06 <crypto/internal/fips140/bigmod.(*Nat).Exp+0xbe6>
  667030:	4d 3b 66 10          	cmp    0x10(%r14),%r12
  667034:	0f 86 cc 0b 00 00    	jbe    667c06 <crypto/internal/fips140/bigmod.(*Nat).Exp+0xbe6>
  66703a:	55                   	push   %rbp
  66703b:	48 89 e5             	mov    %rsp,%rbp
  66703e:	48 81 ec 68 12 00 00 	sub    $0x1268,%rsp
  667045:	48 89 8c 24 88 12 00 	mov    %rcx,0x1288(%rsp)
  66704c:	00 
  66704d:	41 80 78 08 00       	cmpb   $0x0,0x8(%r8)
  667052:	0f 84 8d 0b 00 00    	je     667be5 <crypto/internal/fips140/bigmod.(*Nat).Exp+0xbc5>
  667058:	48 89 84 24 78 12 00 	mov    %rax,0x1278(%rsp)
  66705f:	00 
  667060:	48 89 9c 24 80 12 00 	mov    %rbx,0x1280(%rsp)
  667067:	00 
  667068:	4c 89 84 24 a0 12 00 	mov    %r8,0x12a0(%rsp)
  66706f:	00 
  667070:	48 89 bc 24 90 12 00 	mov    %rdi,0x1290(%rsp)
  667077:	00 
  667078:	48 89 8c 24 88 12 00 	mov    %rcx,0x1288(%rsp)
  66707f:	00 
  667080:	90                   	nop
  667081:	48 8d 94 24 68 0f 00 	lea    0xf68(%rsp),%rdx
  667088:	00 
  667089:	be 04 00 00 00       	mov    $0x4,%esi
  66708e:	44 0f 11 3a          	movups %xmm15,(%rdx)
  667092:	44 0f 11 7a 10       	movups %xmm15,0x10(%rdx)
  667097:	44 0f 11 7a 20       	movups %xmm15,0x20(%rdx)
  66709c:	44 0f 11 7a 30       	movups %xmm15,0x30(%rdx)
  6670a1:	48 83 c2 40          	add    $0x40,%rdx
  6670a5:	ff ce                	dec    %esi
  6670a7:	75 e5                	jne    66708e <crypto/internal/fips140/bigmod.(*Nat).Exp+0x6e>
  6670a9:	66 44 0f d6 bc 24 58 	movq   %xmm15,0x1258(%rsp)
  6670b0:	12 00 00 
  6670b3:	48 c7 84 24 60 12 00 	movq   $0x20,0x1260(%rsp)
  6670ba:	00 20 00 00 00 
  6670bf:	48 8d 94 24 68 0f 00 	lea    0xf68(%rsp),%rdx
  6670c6:	00 
  6670c7:	48 89 94 24 50 12 00 	mov    %rdx,0x1250(%rsp)
  6670ce:	00 
  6670cf:	90                   	nop
  6670d0:	48 8d 94 24 68 0e 00 	lea    0xe68(%rsp),%rdx
  6670d7:	00 
  6670d8:	be 04 00 00 00       	mov    $0x4,%esi
  6670dd:	44 0f 11 3a          	movups %xmm15,(%rdx)
  6670e1:	44 0f 11 7a 10       	movups %xmm15,0x10(%rdx)
  6670e6:	44 0f 11 7a 20       	movups %xmm15,0x20(%rdx)
  6670eb:	44 0f 11 7a 30       	movups %xmm15,0x30(%rdx)
  6670f0:	48 83 c2 40          	add    $0x40,%rdx
  6670f4:	ff ce                	dec    %esi
  6670f6:	75 e5                	jne    6670dd <crypto/internal/fips140/bigmod.(*Nat).Exp+0xbd>
  6670f8:	66 44 0f d6 bc 24 40 	movq   %xmm15,0x1240(%rsp)
  6670ff:	12 00 00 
  667102:	48 c7 84 24 48 12 00 	movq   $0x20,0x1248(%rsp)
  667109:	00 20 00 00 00 
  66710e:	48 8d 94 24 68 0e 00 	lea    0xe68(%rsp),%rdx
  667115:	00 
  667116:	48 89 94 24 38 12 00 	mov    %rdx,0x1238(%rsp)
  66711d:	00 
  66711e:	90                   	nop
  66711f:	48 8d 94 24 68 0d 00 	lea    0xd68(%rsp),%rdx
  667126:	00 
  667127:	be 04 00 00 00       	mov    $0x4,%esi
  66712c:	44 0f 11 3a          	movups %xmm15,(%rdx)
  667130:	44 0f 11 7a 10       	movups %xmm15,0x10(%rdx)
  667135:	44 0f 11 7a 20       	movups %xmm15,0x20(%rdx)
  66713a:	44 0f 11 7a 30       	movups %xmm15,0x30(%rdx)
  66713f:	48 83 c2 40          	add    $0x40,%rdx
  667143:	ff ce                	dec    %esi
  667145:	75 e5                	jne    66712c <crypto/internal/fips140/bigmod.(*Nat).Exp+0x10c>
  667147:	66 44 0f d6 bc 24 28 	movq   %xmm15,0x1228(%rsp)
  66714e:	12 00 00 
  667151:	48 c7 84 24 30 12 00 	movq   $0x20,0x1230(%rsp)
  667158:	00 20 00 00 00 
  66715d:	48 8d 94 24 68 0d 00 	lea    0xd68(%rsp),%rdx
  667164:	00 
  667165:	48 89 94 24 20 12 00 	mov    %rdx,0x1220(%rsp)
  66716c:	00 
  66716d:	90                   	nop
  66716e:	48 8d 94 24 68 0c 00 	lea    0xc68(%rsp),%rdx
  667175:	00 
  667176:	be 04 00 00 00       	mov    $0x4,%esi
  66717b:	44 0f 11 3a          	movups %xmm15,(%rdx)
  66717f:	44 0f 11 7a 10       	movups %xmm15,0x10(%rdx)
  667184:	44 0f 11 7a 20       	movups %xmm15,0x20(%rdx)
  667189:	44 0f 11 7a 30       	movups %xmm15,0x30(%rdx)
  66718e:	48 83 c2 40          	add    $0x40,%rdx
  667192:	ff ce                	dec    %esi
  667194:	75 e5                	jne    66717b <crypto/internal/fips140/bigmod.(*Nat).Exp+0x15b>
  667196:	66 44 0f d6 bc 24 10 	movq   %xmm15,0x1210(%rsp)
  66719d:	12 00 00 
  6671a0:	48 c7 84 24 18 12 00 	movq   $0x20,0x1218(%rsp)
  6671a7:	00 20 00 00 00 
  6671ac:	48 8d 94 24 68 0c 00 	lea    0xc68(%rsp),%rdx
  6671b3:	00 
  6671b4:	48 89 94 24 08 12 00 	mov    %rdx,0x1208(%rsp)
  6671bb:	00 
  6671bc:	90                   	nop
  6671bd:	48 8d 94 24 68 0b 00 	lea    0xb68(%rsp),%rdx
  6671c4:	00 
  6671c5:	be 04 00 00 00       	mov    $0x4,%esi
  6671ca:	44 0f 11 3a          	movups %xmm15,(%rdx)
  6671ce:	44 0f 11 7a 10       	movups %xmm15,0x10(%rdx)
  6671d3:	44 0f 11 7a 20       	movups %xmm15,0x20(%rdx)
  6671d8:	44 0f 11 7a 30       	movups %xmm15,0x30(%rdx)
  6671dd:	48 83 c2 40          	add    $0x40,%rdx
  6671e1:	ff ce                	dec    %esi
  6671e3:	75 e5                	jne    6671ca <crypto/internal/fips140/bigmod.(*Nat).Exp+0x1aa>
  6671e5:	66 44 0f d6 bc 24 f8 	movq   %xmm15,0x11f8(%rsp)
  6671ec:	11 00 00 
  6671ef:	48 c7 84 24 00 12 00 	movq   $0x20,0x1200(%rsp)
  6671f6:	00 20 00 00 00 
  6671fb:	48 8d 94 24 68 0b 00 	lea    0xb68(%rsp),%rdx
  667202:	00 
  667203:	48 89 94 24 f0 11 00 	mov    %rdx,0x11f0(%rsp)
  66720a:	00 
  66720b:	90                   	nop
  66720c:	48 8d 94 24 68 0a 00 	lea    0xa68(%rsp),%rdx
  667213:	00 
  667214:	be 04 00 00 00       	mov    $0x4,%esi
  667219:	44 0f 11 3a          	movups %xmm15,(%rdx)
  66721d:	44 0f 11 7a 10       	movups %xmm15,0x10(%rdx)
  667222:	44 0f 11 7a 20       	movups %xmm15,0x20(%rdx)
  667227:	44 0f 11 7a 30       	movups %xmm15,0x30(%rdx)
  66722c:	48 83 c2 40          	add    $0x40,%rdx
  667230:	ff ce                	dec    %esi
  667232:	75 e5                	jne    667219 <crypto/internal/fips140/bigmod.(*Nat).Exp+0x1f9>
  667234:	66 44 0f d6 bc 24 e0 	movq   %xmm15,0x11e0(%rsp)
  66723b:	11 00 00 
  66723e:	48 c7 84 24 e8 11 00 	movq   $0x20,0x11e8(%rsp)
  667245:	00 20 00 00 00 
  66724a:	48 8d 94 24 68 0a 00 	lea    0xa68(%rsp),%rdx
  667251:	00 
  667252:	48 89 94 24 d8 11 00 	mov    %rdx,0x11d8(%rsp)
  667259:	00 
  66725a:	90                   	nop
  66725b:	48 8d 94 24 68 09 00 	lea    0x968(%rsp),%rdx
  667262:	00 
  667263:	be 04 00 00 00       	mov    $0x4,%esi
  667268:	44 0f 11 3a          	movups %xmm15,(%rdx)
  66726c:	44 0f 11 7a 10       	movups %xmm15,0x10(%rdx)
  667271:	44 0f 11 7a 20       	movups %xmm15,0x20(%rdx)
  667276:	44 0f 11 7a 30       	movups %xmm15,0x30(%rdx)
  66727b:	48 83 c2 40          	add    $0x40,%rdx
  66727f:	90                   	nop
  667280:	ff ce                	dec    %esi
  667282:	75 e4                	jne    667268 <crypto/internal/fips140/bigmod.(*Nat).Exp+0x248>
  667284:	66 44 0f d6 bc 24 c8 	movq   %xmm15,0x11c8(%rsp)
  66728b:	11 00 00 
  66728e:	48 c7 84 24 d0 11 00 	movq   $0x20,0x11d0(%rsp)
  667295:	00 20 00 00 00 
  66729a:	48 8d 94 24 68 09 00 	lea    0x968(%rsp),%rdx
  6672a1:	00 
  6672a2:	48 89 94 24 c0 11 00 	mov    %rdx,0x11c0(%rsp)
  6672a9:	00 
  6672aa:	90                   	nop
  6672ab:	48 8d 94 24 68 08 00 	lea    0x868(%rsp),%rdx
  6672b2:	00 
  6672b3:	be 04 00 00 00       	mov    $0x4,%esi
  6672b8:	44 0f 11 3a          	movups %xmm15,(%rdx)
  6672bc:	44 0f 11 7a 10       	movups %xmm15,0x10(%rdx)
  6672c1:	44 0f 11 7a 20       	movups %xmm15,0x20(%rdx)
  6672c6:	44 0f 11 7a 30       	movups %xmm15,0x30(%rdx)
  6672cb:	48 83 c2 40          	add    $0x40,%rdx
  6672cf:	ff ce                	dec    %esi
  6672d1:	75 e5                	jne    6672b8 <crypto/internal/fips140/bigmod.(*Nat).Exp+0x298>
  6672d3:	66 44 0f d6 bc 24 b0 	movq   %xmm15,0x11b0(%rsp)
  6672da:	11 00 00 
  6672dd:	48 c7 84 24 b8 11 00 	movq   $0x20,0x11b8(%rsp)
  6672e4:	00 20 00 00 00 
  6672e9:	48 8d 94 24 68 08 00 	lea    0x868(%rsp),%rdx
  6672f0:	00 
  6672f1:	48 89 94 24 a8 11 00 	mov    %rdx,0x11a8(%rsp)
  6672f8:	00 
  6672f9:	90                   	nop
  6672fa:	48 8d 94 24 68 07 00 	lea    0x768(%rsp),%rdx
  667301:	00 
  667302:	be 04 00 00 00       	mov    $0x4,%esi
  667307:	44 0f 11 3a          	movups %xmm15,(%rdx)
  66730b:	44 0f 11 7a 10       	movups %xmm15,0x10(%rdx)
  667310:	44 0f 11 7a 20       	movups %xmm15,0x20(%rdx)
  667315:	44 0f 11 7a 30       	movups %xmm15,0x30(%rdx)
  66731a:	48 83 c2 40          	add    $0x40,%rdx
  66731e:	66 90                	xchg   %ax,%ax
  667320:	ff ce                	dec    %esi
  667322:	75 e3                	jne    667307 <crypto/internal/fips140/bigmod.(*Nat).Exp+0x2e7>
  667324:	66 44 0f d6 bc 24 98 	movq   %xmm15,0x1198(%rsp)
  66732b:	11 00 00 
  66732e:	48 c7 84 24 a0 11 00 	movq   $0x20,0x11a0(%rsp)
  667335:	00 20 00 00 00 
  66733a:	48 8d 94 24 68 07 00 	lea    0x768(%rsp),%rdx
  667341:	00 
  667342:	48 89 94 24 90 11 00 	mov    %rdx,0x1190(%rsp)
  667349:	00 
  66734a:	90                   	nop
  66734b:	48 8d 94 24 68 06 00 	lea    0x668(%rsp),%rdx
  667352:	00 
  667353:	be 04 00 00 00       	mov    $0x4,%esi
  667358:	44 0f 11 3a          	movups %xmm15,(%rdx)
  66735c:	44 0f 11 7a 10       	movups %xmm15,0x10(%rdx)
  667361:	44 0f 11 7a 20       	movups %xmm15,0x20(%rdx)
  667366:	44 0f 11 7a 30       	movups %xmm15,0x30(%rdx)
  66736b:	48 83 c2 40          	add    $0x40,%rdx
  66736f:	ff ce                	dec    %esi
  667371:	75 e5                	jne    667358 <crypto/internal/fips140/bigmod.(*Nat).Exp+0x338>
  667373:	66 44 0f d6 bc 24 80 	movq   %xmm15,0x1180(%rsp)
  66737a:	11 00 00 
  66737d:	48 c7 84 24 88 11 00 	movq   $0x20,0x1188(%rsp)
  667384:	00 20 00 00 00 
  667389:	48 8d 94 24 68 06 00 	lea    0x668(%rsp),%rdx
  667390:	00 
  667391:	48 89 94 24 78 11 00 	mov    %rdx,0x1178(%rsp)
  667398:	00 
  667399:	90                   	nop
  66739a:	48 8d 94 24 68 05 00 	lea    0x568(%rsp),%rdx
  6673a1:	00 
  6673a2:	be 04 00 00 00       	mov    $0x4,%esi
  6673a7:	44 0f 11 3a          	movups %xmm15,(%rdx)
  6673ab:	44 0f 11 7a 10       	movups %xmm15,0x10(%rdx)
  6673b0:	44 0f 11 7a 20       	movups %xmm15,0x20(%rdx)
  6673b5:	44 0f 11 7a 30       	movups %xmm15,0x30(%rdx)
  6673ba:	48 83 c2 40          	add    $0x40,%rdx
  6673be:	66 90                	xchg   %ax,%ax
  6673c0:	ff ce                	dec    %esi
  6673c2:	75 e3                	jne    6673a7 <crypto/internal/fips140/bigmod.(*Nat).Exp+0x387>
  6673c4:	66 44 0f d6 bc 24 68 	movq   %xmm15,0x1168(%rsp)
  6673cb:	11 00 00 
  6673ce:	48 c7 84 24 70 11 00 	movq   $0x20,0x1170(%rsp)
  6673d5:	00 20 00 00 00 
  6673da:	48 8d 94 24 68 05 00 	lea    0x568(%rsp),%rdx
  6673e1:	00 
  6673e2:	48 89 94 24 60 11 00 	mov    %rdx,0x1160(%rsp)
  6673e9:	00 
  6673ea:	90                   	nop
  6673eb:	48 8d 94 24 68 04 00 	lea    0x468(%rsp),%rdx
  6673f2:	00 
  6673f3:	be 04 00 00 00       	mov    $0x4,%esi
  6673f8:	44 0f 11 3a          	movups %xmm15,(%rdx)
  6673fc:	44 0f 11 7a 10       	movups %xmm15,0x10(%rdx)
  667401:	44 0f 11 7a 20       	movups %xmm15,0x20(%rdx)
  667406:	44 0f 11 7a 30       	movups %xmm15,0x30(%rdx)
  66740b:	48 83 c2 40          	add    $0x40,%rdx
  66740f:	ff ce                	dec    %esi
  667411:	75 e5                	jne    6673f8 <crypto/internal/fips140/bigmod.(*Nat).Exp+0x3d8>
  667413:	66 44 0f d6 bc 24 50 	movq   %xmm15,0x1150(%rsp)
  66741a:	11 00 00 
  66741d:	48 c7 84 24 58 11 00 	movq   $0x20,0x1158(%rsp)
  667424:	00 20 00 00 00 
  667429:	48 8d 94 24 68 04 00 	lea    0x468(%rsp),%rdx
  667430:	00 
  667431:	48 89 94 24 48 11 00 	mov    %rdx,0x1148(%rsp)
  667438:	00 
  667439:	90                   	nop
  66743a:	48 8d 94 24 68 03 00 	lea    0x368(%rsp),%rdx
  667441:	00 
  667442:	be 04 00 00 00       	mov    $0x4,%esi
  667447:	44 0f 11 3a          	movups %xmm15,(%rdx)
  66744b:	44 0f 11 7a 10       	movups %xmm15,0x10(%rdx)
  667450:	44 0f 11 7a 20       	movups %xmm15,0x20(%rdx)
  667455:	44 0f 11 7a 30       	movups %xmm15,0x30(%rdx)
  66745a:	48 83 c2 40          	add    $0x40,%rdx
  66745e:	66 90                	xchg   %ax,%ax
  667460:	ff ce                	dec    %esi
  667462:	75 e3                	jne    667447 <crypto/internal/fips140/bigmod.(*Nat).Exp+0x427>
  667464:	66 44 0f d6 bc 24 38 	movq   %xmm15,0x1138(%rsp)
  66746b:	11 00 00 
  66746e:	48 c7 84 24 40 11 00 	movq   $0x20,0x1140(%rsp)
  667475:	00 20 00 00 00 
  66747a:	48 8d 94 24 68 03 00 	lea    0x368(%rsp),%rdx
  667481:	00 
  667482:	48 89 94 24 30 11 00 	mov    %rdx,0x1130(%rsp)
  667489:	00 
  66748a:	90                   	nop
  66748b:	48 8d 94 24 68 02 00 	lea    0x268(%rsp),%rdx
  667492:	00 
  667493:	be 04 00 00 00       	mov    $0x4,%esi
  667498:	44 0f 11 3a          	movups %xmm15,(%rdx)
  66749c:	44 0f 11 7a 10       	movups %xmm15,0x10(%rdx)
  6674a1:	44 0f 11 7a 20       	movups %xmm15,0x20(%rdx)
  6674a6:	44 0f 11 7a 30       	movups %xmm15,0x30(%rdx)
  6674ab:	48 83 c2 40          	add    $0x40,%rdx
  6674af:	ff ce                	dec    %esi
  6674b1:	75 e5                	jne    667498 <crypto/internal/fips140/bigmod.(*Nat).Exp+0x478>
  6674b3:	66 44 0f d6 bc 24 20 	movq   %xmm15,0x1120(%rsp)
  6674ba:	11 00 00 
  6674bd:	48 c7 84 24 28 11 00 	movq   $0x20,0x1128(%rsp)
  6674c4:	00 20 00 00 00 
  6674c9:	48 8d 94 24 68 02 00 	lea    0x268(%rsp),%rdx
  6674d0:	00 
  6674d1:	48 89 94 24 18 11 00 	mov    %rdx,0x1118(%rsp)
  6674d8:	00 
  6674d9:	90                   	nop
  6674da:	48 8d 94 24 68 01 00 	lea    0x168(%rsp),%rdx
  6674e1:	00 
  6674e2:	be 04 00 00 00       	mov    $0x4,%esi
  6674e7:	44 0f 11 3a          	movups %xmm15,(%rdx)
  6674eb:	44 0f 11 7a 10       	movups %xmm15,0x10(%rdx)
  6674f0:	44 0f 11 7a 20       	movups %xmm15,0x20(%rdx)
  6674f5:	44 0f 11 7a 30       	movups %xmm15,0x30(%rdx)
  6674fa:	48 83 c2 40          	add    $0x40,%rdx
  6674fe:	66 90                	xchg   %ax,%ax
  667500:	ff ce                	dec    %esi
  667502:	75 e3                	jne    6674e7 <crypto/internal/fips140/bigmod.(*Nat).Exp+0x4c7>
  667504:	66 44 0f d6 bc 24 08 	movq   %xmm15,0x1108(%rsp)
  66750b:	11 00 00 
  66750e:	48 c7 84 24 10 11 00 	movq   $0x20,0x1110(%rsp)
  667515:	00 20 00 00 00 
  66751a:	48 8d 94 24 68 01 00 	lea    0x168(%rsp),%rdx
  667521:	00 
  667522:	48 89 94 24 00 11 00 	mov    %rdx,0x1100(%rsp)
  667529:	00 
  66752a:	48 8d 94 24 50 12 00 	lea    0x1250(%rsp),%rdx
  667531:	00 
  667532:	48 89 94 24 70 10 00 	mov    %rdx,0x1070(%rsp)
  667539:	00 
  66753a:	48 8d 94 24 38 12 00 	lea    0x1238(%rsp),%rdx
  667541:	00 
  667542:	48 89 94 24 78 10 00 	mov    %rdx,0x1078(%rsp)
  667549:	00 
  66754a:	48 8d 94 24 20 12 00 	lea    0x1220(%rsp),%rdx
  667551:	00 
  667552:	48 89 94 24 80 10 00 	mov    %rdx,0x1080(%rsp)
  667559:	00 
  66755a:	48 8d 94 24 08 12 00 	lea    0x1208(%rsp),%rdx
  667561:	00 
  667562:	48 89 94 24 88 10 00 	mov    %rdx,0x1088(%rsp)
  667569:	00 
  66756a:	48 8d 94 24 f0 11 00 	lea    0x11f0(%rsp),%rdx
  667571:	00 
  667572:	48 89 94 24 90 10 00 	mov    %rdx,0x1090(%rsp)
  667579:	00 
  66757a:	48 8d 94 24 d8 11 00 	lea    0x11d8(%rsp),%rdx
  667581:	00 
  667582:	48 89 94 24 98 10 00 	mov    %rdx,0x1098(%rsp)
  667589:	00 
  66758a:	48 8d 94 24 c0 11 00 	lea    0x11c0(%rsp),%rdx
  667591:	00 
  667592:	48 89 94 24 a0 10 00 	mov    %rdx,0x10a0(%rsp)
  667599:	00 
  66759a:	48 8d 94 24 a8 11 00 	lea    0x11a8(%rsp),%rdx
  6675a1:	00 
  6675a2:	48 89 94 24 a8 10 00 	mov    %rdx,0x10a8(%rsp)
  6675a9:	00 
  6675aa:	48 8d 94 24 90 11 00 	lea    0x1190(%rsp),%rdx
  6675b1:	00 
  6675b2:	48 89 94 24 b0 10 00 	mov    %rdx,0x10b0(%rsp)
  6675b9:	00 
  6675ba:	48 8d 94 24 78 11 00 	lea    0x1178(%rsp),%rdx
  6675c1:	00 
  6675c2:	48 89 94 24 b8 10 00 	mov    %rdx,0x10b8(%rsp)
  6675c9:	00 
  6675ca:	48 8d 94 24 60 11 00 	lea    0x1160(%rsp),%rdx
  6675d1:	00 
  6675d2:	48 89 94 24 c0 10 00 	mov    %rdx,0x10c0(%rsp)
  6675d9:	00 
  6675da:	48 8d 94 24 48 11 00 	lea    0x1148(%rsp),%rdx
  6675e1:	00 
  6675e2:	48 89 94 24 c8 10 00 	mov    %rdx,0x10c8(%rsp)
  6675e9:	00 
  6675ea:	48 8d 94 24 30 11 00 	lea    0x1130(%rsp),%rdx
  6675f1:	00 
  6675f2:	48 89 94 24 d0 10 00 	mov    %rdx,0x10d0(%rsp)
  6675f9:	00 
  6675fa:	48 8d 94 24 18 11 00 	lea    0x1118(%rsp),%rdx
  667601:	00 
  667602:	48 89 94 24 d8 10 00 	mov    %rdx,0x10d8(%rsp)
  667609:	00 
  66760a:	48 8d 94 24 00 11 00 	lea    0x1100(%rsp),%rdx
  667611:	00 
  667612:	48 89 94 24 e0 10 00 	mov    %rdx,0x10e0(%rsp)
  667619:	00 
  66761a:	48 8b 94 24 70 10 00 	mov    0x1070(%rsp),%rdx
  667621:	00 
  667622:	48 89 94 24 68 10 00 	mov    %rdx,0x1068(%rsp)
  667629:	00 
  66762a:	48 8b 73 08          	mov    0x8(%rbx),%rsi
  66762e:	48 89 74 24 50       	mov    %rsi,0x50(%rsp)
  667633:	4c 8b 4a 10          	mov    0x10(%rdx),%r9
  667637:	49 39 f1             	cmp    %rsi,%r9
  66763a:	7c 5b                	jl     667697 <crypto/internal/fips140/bigmod.(*Nat).Exp+0x677>
  66763c:	4c 8b 52 08          	mov    0x8(%rdx),%r10
  667640:	49 39 f2             	cmp    %rsi,%r10
  667643:	49 89 f3             	mov    %rsi,%r11
  667646:	49 0f 4f f2          	cmovg  %r10,%rsi
  66764a:	49 39 f1             	cmp    %rsi,%r9
  66764d:	0f 82 8b 05 00 00    	jb     667bde <crypto/internal/fips140/bigmod.(*Nat).Exp+0xbbe>
  667653:	48 85 f6             	test   %rsi,%rsi
  667656:	74 2c                	je     667684 <crypto/internal/fips140/bigmod.(*Nat).Exp+0x664>
  667658:	48 8b 02             	mov    (%rdx),%rax
  66765b:	48 c1 e6 03          	shl    $0x3,%rsi
  66765f:	48 89 f3             	mov    %rsi,%rbx
  667662:	e8 f9 96 e2 ff       	call   490d60 <runtime.memclrNoHeapPointers>
  667667:	48 8b 94 24 68 10 00 	mov    0x1068(%rsp),%rdx
  66766e:	00 
  66766f:	48 8b 9c 24 80 12 00 	mov    0x1280(%rsp),%rbx
  667676:	00 
  667677:	4c 8b 84 24 a0 12 00 	mov    0x12a0(%rsp),%r8
  66767e:	00 
  66767f:	4c 8b 5c 24 50       	mov    0x50(%rsp),%r11
  667684:	48 8b 72 10          	mov    0x10(%rdx),%rsi
  667688:	4c 39 de             	cmp    %r11,%rsi
  66768b:	0f 82 48 05 00 00    	jb     667bd9 <crypto/internal/fips140/bigmod.(*Nat).Exp+0xbb9>
  667691:	4c 89 5a 08          	mov    %r11,0x8(%rdx)
  667695:	eb 55                	jmp    6676ec <crypto/internal/fips140/bigmod.(*Nat).Exp+0x6cc>
  667697:	48 8d 05 a2 21 2f 00 	lea    0x2f21a2(%rip),%rax        # 959840 <type:*+0x41868>
  66769e:	48 89 f3             	mov    %rsi,%rbx
  6676a1:	48 89 d9             	mov    %rbx,%rcx
  6676a4:	e8 b7 44 e2 ff       	call   48bb60 <runtime.makeslice>
  6676a9:	48 8b 54 24 50       	mov    0x50(%rsp),%rdx
  6676ae:	48 8b 9c 24 68 10 00 	mov    0x1068(%rsp),%rbx
  6676b5:	00 
  6676b6:	48 89 53 08          	mov    %rdx,0x8(%rbx)
  6676ba:	48 89 53 10          	mov    %rdx,0x10(%rbx)
  6676be:	83 3d bb ec 38 00 00 	cmpl   $0x0,0x38ecbb(%rip)        # 9f6380 <runtime.writeBarrier>
  6676c5:	74 0f                	je     6676d6 <crypto/internal/fips140/bigmod.(*Nat).Exp+0x6b6>
  6676c7:	48 8b 13             	mov    (%rbx),%rdx
  6676ca:	e8 51 92 e2 ff       	call   490920 <runtime.gcWriteBarrier2>
  6676cf:	49 89 03             	mov    %rax,(%r11)
  6676d2:	49 89 53 08          	mov    %rdx,0x8(%r11)
  6676d6:	48 89 03             	mov    %rax,(%rbx)
  6676d9:	48 89 da             	mov    %rbx,%rdx
  6676dc:	48 8b 9c 24 80 12 00 	mov    0x1280(%rsp),%rbx
  6676e3:	00 
  6676e4:	4c 8b 84 24 a0 12 00 	mov    0x12a0(%rsp),%r8
  6676eb:	00 
  6676ec:	48 8b 32             	mov    (%rdx),%rsi
  6676ef:	4c 8b 4a 08          	mov    0x8(%rdx),%r9
  6676f3:	4c 8b 13             	mov    (%rbx),%r10
  6676f6:	4c 8b 5b 08          	mov    0x8(%rbx),%r11
  6676fa:	4d 39 d9             	cmp    %r11,%r9
  6676fd:	4d 0f 4f cb          	cmovg  %r11,%r9
  667701:	4c 39 d6             	cmp    %r10,%rsi
  667704:	74 22                	je     667728 <crypto/internal/fips140/bigmod.(*Nat).Exp+0x708>
  667706:	49 c1 e1 03          	shl    $0x3,%r9
  66770a:	48 89 f0             	mov    %rsi,%rax
  66770d:	4c 89 d3             	mov    %r10,%rbx
  667710:	4c 89 c9             	mov    %r9,%rcx
  667713:	e8 48 99 e2 ff       	call   491060 <runtime.memmove>
  667718:	48 8b 94 24 68 10 00 	mov    0x1068(%rsp),%rdx
  66771f:	00 
  667720:	4c 8b 84 24 a0 12 00 	mov    0x12a0(%rsp),%r8
  667727:	00 
  667728:	49 8b 48 18          	mov    0x18(%r8),%rcx
  66772c:	48 89 d0             	mov    %rdx,%rax
  66772f:	48 89 c3             	mov    %rax,%rbx
  667732:	4c 89 c7             	mov    %r8,%rdi
  667735:	e8 a6 e5 ff ff       	call   665ce0 <crypto/internal/fips140/bigmod.(*Nat).montgomeryMul>
  66773a:	b8 01 00 00 00       	mov    $0x1,%eax
  66773f:	90                   	nop
  667740:	eb 35                	jmp    667777 <crypto/internal/fips140/bigmod.(*Nat).Exp+0x757>
  667742:	48 89 44 24 40       	mov    %rax,0x40(%rsp)
  667747:	48 8b 94 c4 70 10 00 	mov    0x1070(%rsp,%rax,8),%rdx
  66774e:	00 
  66774f:	48 8b 9c c4 68 10 00 	mov    0x1068(%rsp,%rax,8),%rbx
  667756:	00 
  667757:	48 8b 8c 24 70 10 00 	mov    0x1070(%rsp),%rcx
  66775e:	00 
  66775f:	48 89 d0             	mov    %rdx,%rax
  667762:	48 8b bc 24 a0 12 00 	mov    0x12a0(%rsp),%rdi
  667769:	00 
  66776a:	e8 71 e5 ff ff       	call   665ce0 <crypto/internal/fips140/bigmod.(*Nat).montgomeryMul>
  66776f:	48 8b 44 24 40       	mov    0x40(%rsp),%rax
  667774:	48 ff c0             	inc    %rax
  667777:	48 83 f8 0f          	cmp    $0xf,%rax
  66777b:	7c c5                	jl     667742 <crypto/internal/fips140/bigmod.(*Nat).Exp+0x722>
  66777d:	48 8b bc 24 a0 12 00 	mov    0x12a0(%rsp),%rdi
  667784:	00 
  667785:	48 8b 17             	mov    (%rdi),%rdx
  667788:	48 8b 5a 08          	mov    0x8(%rdx),%rbx
  66778c:	48 89 5c 24 50       	mov    %rbx,0x50(%rsp)
  667791:	48 8b 84 24 78 12 00 	mov    0x1278(%rsp),%rax
  667798:	00 
  667799:	48 8b 50 10          	mov    0x10(%rax),%rdx
  66779d:	90                   	nop
  66779e:	66 90                	xchg   %ax,%ax
  6677a0:	48 39 da             	cmp    %rbx,%rdx
  6677a3:	7c 57                	jl     6677fc <crypto/internal/fips140/bigmod.(*Nat).Exp+0x7dc>
  6677a5:	48 8b 70 08          	mov    0x8(%rax),%rsi
  6677a9:	48 39 de             	cmp    %rbx,%rsi
  6677ac:	49 89 d8             	mov    %rbx,%r8
  6677af:	4c 0f 4f c6          	cmovg  %rsi,%r8
  6677b3:	4c 39 c2             	cmp    %r8,%rdx
  6677b6:	0f 82 18 04 00 00    	jb     667bd4 <crypto/internal/fips140/bigmod.(*Nat).Exp+0xbb4>
  6677bc:	0f 1f 40 00          	nopl   0x0(%rax)
  6677c0:	4d 85 c0             	test   %r8,%r8
  6677c3:	74 24                	je     6677e9 <crypto/internal/fips140/bigmod.(*Nat).Exp+0x7c9>
  6677c5:	48 8b 00             	mov    (%rax),%rax
  6677c8:	49 c1 e0 03          	shl    $0x3,%r8
  6677cc:	4c 89 c3             	mov    %r8,%rbx
  6677cf:	e8 8c 95 e2 ff       	call   490d60 <runtime.memclrNoHeapPointers>
  6677d4:	48 8b 84 24 78 12 00 	mov    0x1278(%rsp),%rax
  6677db:	00 
  6677dc:	48 8b 5c 24 50       	mov    0x50(%rsp),%rbx
  6677e1:	48 8b bc 24 a0 12 00 	mov    0x12a0(%rsp),%rdi
  6677e8:	00 
  6677e9:	48 8b 50 10          	mov    0x10(%rax),%rdx
  6677ed:	48 39 da             	cmp    %rbx,%rdx
  6677f0:	0f 82 d9 03 00 00    	jb     667bcf <crypto/internal/fips140/bigmod.(*Nat).Exp+0xbaf>
  6677f6:	48 89 58 08          	mov    %rbx,0x8(%rax)
  6677fa:	eb 4a                	jmp    667846 <crypto/internal/fips140/bigmod.(*Nat).Exp+0x826>
  6677fc:	48 8d 05 3d 20 2f 00 	lea    0x2f203d(%rip),%rax        # 959840 <type:*+0x41868>
  667803:	48 89 d9             	mov    %rbx,%rcx
  667806:	e8 55 43 e2 ff       	call   48bb60 <runtime.makeslice>
  66780b:	48 8b 54 24 50       	mov    0x50(%rsp),%rdx
  667810:	48 8b 9c 24 78 12 00 	mov    0x1278(%rsp),%rbx
  667817:	00 
  667818:	48 89 53 08          	mov    %rdx,0x8(%rbx)
  66781c:	48 89 53 10          	mov    %rdx,0x10(%rbx)
  667820:	83 3d 59 eb 38 00 00 	cmpl   $0x0,0x38eb59(%rip)        # 9f6380 <runtime.writeBarrier>
  667827:	74 0f                	je     667838 <crypto/internal/fips140/bigmod.(*Nat).Exp+0x818>
  667829:	48 8b 13             	mov    (%rbx),%rdx
  66782c:	e8 ef 90 e2 ff       	call   490920 <runtime.gcWriteBarrier2>
  667831:	49 89 03             	mov    %rax,(%r11)
  667834:	49 89 53 08          	mov    %rdx,0x8(%r11)
  667838:	48 89 03             	mov    %rax,(%rbx)
  66783b:	48 89 d8             	mov    %rbx,%rax
  66783e:	48 8b bc 24 a0 12 00 	mov    0x12a0(%rsp),%rdi
  667845:	00 
  667846:	48 83 78 08 00       	cmpq   $0x0,0x8(%rax)
  66784b:	0f 86 79 03 00 00    	jbe    667bca <crypto/internal/fips140/bigmod.(*Nat).Exp+0xbaa>
  667851:	48 8b 10             	mov    (%rax),%rdx
  667854:	48 c7 02 01 00 00 00 	movq   $0x1,(%rdx)
  66785b:	48 8b 4f 18          	mov    0x18(%rdi),%rcx
  66785f:	90                   	nop
  667860:	48 89 c3             	mov    %rax,%rbx
  667863:	e8 78 e4 ff ff       	call   665ce0 <crypto/internal/fips140/bigmod.(*Nat).montgomeryMul>
  667868:	90                   	nop
  667869:	48 8d 7c 24 68       	lea    0x68(%rsp),%rdi
  66786e:	ba 04 00 00 00       	mov    $0x4,%edx
  667873:	44 0f 11 3f          	movups %xmm15,(%rdi)
  667877:	44 0f 11 7f 10       	movups %xmm15,0x10(%rdi)
  66787c:	44 0f 11 7f 20       	movups %xmm15,0x20(%rdi)
  667881:	44 0f 11 7f 30       	movups %xmm15,0x30(%rdi)
  667886:	48 83 c7 40          	add    $0x40,%rdi
  66788a:	ff ca                	dec    %edx
  66788c:	75 e5                	jne    667873 <crypto/internal/fips140/bigmod.(*Nat).Exp+0x853>
  66788e:	66 44 0f d6 bc 24 f0 	movq   %xmm15,0x10f0(%rsp)
  667895:	10 00 00 
  667898:	48 c7 84 24 f8 10 00 	movq   $0x20,0x10f8(%rsp)
  66789f:	00 20 00 00 00 
  6678a4:	48 8d 7c 24 68       	lea    0x68(%rsp),%rdi
  6678a9:	48 89 bc 24 e8 10 00 	mov    %rdi,0x10e8(%rsp)
  6678b0:	00 
  6678b1:	48 8b 9c 24 a0 12 00 	mov    0x12a0(%rsp),%rbx
  6678b8:	00 
  6678b9:	48 8b 13             	mov    (%rbx),%rdx
  6678bc:	48 8b 52 08          	mov    0x8(%rdx),%rdx
  6678c0:	90                   	nop
  6678c1:	48 85 d2             	test   %rdx,%rdx
  6678c4:	0f 8c e0 02 00 00    	jl     667baa <crypto/internal/fips140/bigmod.(*Nat).Exp+0xb8a>
  6678ca:	48 89 54 24 30       	mov    %rdx,0x30(%rsp)
  6678cf:	48 83 fa 20          	cmp    $0x20,%rdx
  6678d3:	7f 3e                	jg     667913 <crypto/internal/fips140/bigmod.(*Nat).Exp+0x8f3>
  6678d5:	48 85 d2             	test   %rdx,%rdx
  6678d8:	74 1e                	je     6678f8 <crypto/internal/fips140/bigmod.(*Nat).Exp+0x8d8>
  6678da:	48 89 d3             	mov    %rdx,%rbx
  6678dd:	48 c1 e3 03          	shl    $0x3,%rbx
  6678e1:	48 8d 44 24 68       	lea    0x68(%rsp),%rax
  6678e6:	e8 75 94 e2 ff       	call   490d60 <runtime.memclrNoHeapPointers>
  6678eb:	48 8b 54 24 30       	mov    0x30(%rsp),%rdx
  6678f0:	48 8b 9c 24 a0 12 00 	mov    0x12a0(%rsp),%rbx
  6678f7:	00 
  6678f8:	48 8b b4 24 f8 10 00 	mov    0x10f8(%rsp),%rsi
  6678ff:	00 
  667900:	48 39 d6             	cmp    %rdx,%rsi
  667903:	0f 82 9c 02 00 00    	jb     667ba5 <crypto/internal/fips140/bigmod.(*Nat).Exp+0xb85>
  667909:	48 89 94 24 f0 10 00 	mov    %rdx,0x10f0(%rsp)
  667910:	00 
  667911:	eb 37                	jmp    66794a <crypto/internal/fips140/bigmod.(*Nat).Exp+0x92a>
  667913:	48 8d 05 26 1f 2f 00 	lea    0x2f1f26(%rip),%rax        # 959840 <type:*+0x41868>
  66791a:	48 89 d3             	mov    %rdx,%rbx
  66791d:	31 c9                	xor    %ecx,%ecx
  66791f:	90                   	nop
  667920:	e8 9b 0c e0 ff       	call   4685c0 <runtime.makeslicecopy>
  667925:	48 8b 54 24 30       	mov    0x30(%rsp),%rdx
  66792a:	48 89 94 24 f0 10 00 	mov    %rdx,0x10f0(%rsp)
  667931:	00 
  667932:	48 89 94 24 f8 10 00 	mov    %rdx,0x10f8(%rsp)
  667939:	00 
  66793a:	48 89 84 24 e8 10 00 	mov    %rax,0x10e8(%rsp)
  667941:	00 
  667942:	48 8b 9c 24 a0 12 00 	mov    0x12a0(%rsp),%rbx
  667949:	00 
  66794a:	31 d2                	xor    %edx,%edx
  66794c:	48 8b b4 24 90 12 00 	mov    0x1290(%rsp),%rsi
  667953:	00 
  667954:	4c 8b 84 24 88 12 00 	mov    0x1288(%rsp),%r8
  66795b:	00 
  66795c:	48 8b 84 24 78 12 00 	mov    0x1278(%rsp),%rax
  667963:	00 
  667964:	eb 1a                	jmp    667980 <crypto/internal/fips140/bigmod.(*Nat).Exp+0x960>
  667966:	48 8b 54 24 50       	mov    0x50(%rsp),%rdx
  66796b:	48 ff c2             	inc    %rdx
  66796e:	48 8b b4 24 90 12 00 	mov    0x1290(%rsp),%rsi
  667975:	00 
  667976:	4c 8b 84 24 88 12 00 	mov    0x1288(%rsp),%r8
  66797d:	00 
  66797e:	66 90                	xchg   %ax,%ax
  667980:	48 39 d6             	cmp    %rdx,%rsi
  667983:	0f 8e 02 02 00 00    	jle    667b8b <crypto/internal/fips140/bigmod.(*Nat).Exp+0xb6b>
  667989:	48 89 54 24 50       	mov    %rdx,0x50(%rsp)
  66798e:	45 0f b6 0c 10       	movzbl (%r8,%rdx,1),%r9d
  667993:	44 88 4c 24 27       	mov    %r9b,0x27(%rsp)
  667998:	4c 8d 54 24 58       	lea    0x58(%rsp),%r10
  66799d:	45 0f 11 3a          	movups %xmm15,(%r10)
  6679a1:	48 c7 44 24 58 04 00 	movq   $0x4,0x58(%rsp)
  6679a8:	00 00 
  6679aa:	31 c9                	xor    %ecx,%ecx
  6679ac:	eb 12                	jmp    6679c0 <crypto/internal/fips140/bigmod.(*Nat).Exp+0x9a0>
  6679ae:	48 8b 4c 24 48       	mov    0x48(%rsp),%rcx
  6679b3:	48 ff c1             	inc    %rcx
  6679b6:	48 8b 9c 24 a0 12 00 	mov    0x12a0(%rsp),%rbx
  6679bd:	00 
  6679be:	66 90                	xchg   %ax,%ax
  6679c0:	48 83 f9 02          	cmp    $0x2,%rcx
  6679c4:	7d a0                	jge    667966 <crypto/internal/fips140/bigmod.(*Nat).Exp+0x946>
  6679c6:	48 89 4c 24 48       	mov    %rcx,0x48(%rsp)
  6679cb:	48 8b 54 cc 58       	mov    0x58(%rsp,%rcx,8),%rdx
  6679d0:	48 89 54 24 38       	mov    %rdx,0x38(%rsp)
  6679d5:	48 89 c1             	mov    %rax,%rcx
  6679d8:	48 89 df             	mov    %rbx,%rdi
  6679db:	48 89 c3             	mov    %rax,%rbx
  6679de:	66 90                	xchg   %ax,%ax
  6679e0:	e8 fb e2 ff ff       	call   665ce0 <crypto/internal/fips140/bigmod.(*Nat).montgomeryMul>
  6679e5:	48 8b 84 24 78 12 00 	mov    0x1278(%rsp),%rax
  6679ec:	00 
  6679ed:	48 89 c3             	mov    %rax,%rbx
  6679f0:	48 89 c1             	mov    %rax,%rcx
  6679f3:	48 8b bc 24 a0 12 00 	mov    0x12a0(%rsp),%rdi
  6679fa:	00 
  6679fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  667a00:	e8 db e2 ff ff       	call   665ce0 <crypto/internal/fips140/bigmod.(*Nat).montgomeryMul>
  667a05:	48 8b 84 24 78 12 00 	mov    0x1278(%rsp),%rax
  667a0c:	00 
  667a0d:	48 89 c3             	mov    %rax,%rbx
  667a10:	48 89 c1             	mov    %rax,%rcx
  667a13:	48 8b bc 24 a0 12 00 	mov    0x12a0(%rsp),%rdi
  667a1a:	00 
  667a1b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  667a20:	e8 bb e2 ff ff       	call   665ce0 <crypto/internal/fips140/bigmod.(*Nat).montgomeryMul>
  667a25:	48 8b 84 24 78 12 00 	mov    0x1278(%rsp),%rax
  667a2c:	00 
  667a2d:	48 89 c3             	mov    %rax,%rbx
  667a30:	48 89 c1             	mov    %rax,%rcx
  667a33:	48 8b bc 24 a0 12 00 	mov    0x12a0(%rsp),%rdi
  667a3a:	00 
  667a3b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  667a40:	e8 9b e2 ff ff       	call   665ce0 <crypto/internal/fips140/bigmod.(*Nat).montgomeryMul>
  667a45:	48 8b 4c 24 38       	mov    0x38(%rsp),%rcx
  667a4a:	48 85 c9             	test   %rcx,%rcx
  667a4d:	0f 8c 4d 01 00 00    	jl     667ba0 <crypto/internal/fips140/bigmod.(*Nat).Exp+0xb80>
  667a53:	0f b6 54 24 27       	movzbl 0x27(%rsp),%edx
  667a58:	d2 ea                	shr    %cl,%dl
  667a5a:	48 83 f9 08          	cmp    $0x8,%rcx
  667a5e:	45 19 c0             	sbb    %r8d,%r8d
  667a61:	44 21 c2             	and    %r8d,%edx
  667a64:	83 e2 0f             	and    $0xf,%edx
  667a67:	45 31 c0             	xor    %r8d,%r8d
  667a6a:	eb 06                	jmp    667a72 <crypto/internal/fips140/bigmod.(*Nat).Exp+0xa52>
  667a6c:	4c 89 e2             	mov    %r12,%rdx
  667a6f:	4d 89 e8             	mov    %r13,%r8
  667a72:	49 83 f8 0f          	cmp    $0xf,%r8
  667a76:	7d 78                	jge    667af0 <crypto/internal/fips140/bigmod.(*Nat).Exp+0xad0>
  667a78:	4d 8d 48 01          	lea    0x1(%r8),%r9
  667a7c:	4e 8b 84 c4 70 10 00 	mov    0x1070(%rsp,%r8,8),%r8
  667a83:	00 
  667a84:	4c 8b 94 24 f0 10 00 	mov    0x10f0(%rsp),%r10
  667a8b:	00 
  667a8c:	4d 8b 58 10          	mov    0x10(%r8),%r11
  667a90:	49 89 d4             	mov    %rdx,%r12
  667a93:	4c 29 ca             	sub    %r9,%rdx
  667a96:	0f 92 c2             	setb   %dl
  667a99:	0f b6 d2             	movzbl %dl,%edx
  667a9c:	4d 89 cd             	mov    %r9,%r13
  667a9f:	4d 29 e1             	sub    %r12,%r9
  667aa2:	41 0f 92 c1          	setb   %r9b
  667aa6:	45 0f b6 c9          	movzbl %r9b,%r9d
  667aaa:	49 09 d1             	or     %rdx,%r9
  667aad:	4d 39 d3             	cmp    %r10,%r11
  667ab0:	0f 82 e1 00 00 00    	jb     667b97 <crypto/internal/fips140/bigmod.(*Nat).Exp+0xb77>
  667ab6:	49 83 f1 01          	xor    $0x1,%r9
  667aba:	48 8b 94 24 e8 10 00 	mov    0x10e8(%rsp),%rdx
  667ac1:	00 
  667ac2:	4d 8b 00             	mov    (%r8),%r8
  667ac5:	90                   	nop
  667ac6:	49 f7 d9             	neg    %r9
  667ac9:	45 31 db             	xor    %r11d,%r11d
  667acc:	eb 18                	jmp    667ae6 <crypto/internal/fips140/bigmod.(*Nat).Exp+0xac6>
  667ace:	4e 8b 3c da          	mov    (%rdx,%r11,8),%r15
  667ad2:	4b 8b 04 d8          	mov    (%r8,%r11,8),%rax
  667ad6:	4c 31 f8             	xor    %r15,%rax
  667ad9:	4c 21 c8             	and    %r9,%rax
  667adc:	49 31 c7             	xor    %rax,%r15
  667adf:	4e 89 3c da          	mov    %r15,(%rdx,%r11,8)
  667ae3:	49 ff c3             	inc    %r11
  667ae6:	4d 39 d3             	cmp    %r10,%r11
  667ae9:	7c e3                	jl     667ace <crypto/internal/fips140/bigmod.(*Nat).Exp+0xaae>
  667aeb:	e9 7c ff ff ff       	jmp    667a6c <crypto/internal/fips140/bigmod.(*Nat).Exp+0xa4c>
  667af0:	48 89 54 24 28       	mov    %rdx,0x28(%rsp)
  667af5:	48 8d 84 24 e8 10 00 	lea    0x10e8(%rsp),%rax
  667afc:	00 
  667afd:	48 8b 9c 24 78 12 00 	mov    0x1278(%rsp),%rbx
  667b04:	00 
  667b05:	48 89 c1             	mov    %rax,%rcx
  667b08:	48 8b bc 24 a0 12 00 	mov    0x12a0(%rsp),%rdi
  667b0f:	00 
  667b10:	e8 cb e1 ff ff       	call   665ce0 <crypto/internal/fips140/bigmod.(*Nat).montgomeryMul>
  667b15:	48 8b 84 24 78 12 00 	mov    0x1278(%rsp),%rax
  667b1c:	00 
  667b1d:	48 8b 50 08          	mov    0x8(%rax),%rdx
  667b21:	48 8b b4 24 f8 10 00 	mov    0x10f8(%rsp),%rsi
  667b28:	00 
  667b29:	90                   	nop
  667b2a:	90                   	nop
  667b2b:	4c 8b 44 24 28       	mov    0x28(%rsp),%r8
  667b30:	4d 89 c1             	mov    %r8,%r9
  667b33:	49 83 e8 00          	sub    $0x0,%r8
  667b37:	41 0f 92 c0          	setb   %r8b
  667b3b:	45 0f b6 c0          	movzbl %r8b,%r8d
  667b3f:	45 31 d2             	xor    %r10d,%r10d
  667b42:	4d 29 ca             	sub    %r9,%r10
  667b45:	41 0f 92 c1          	setb   %r9b
  667b49:	45 0f b6 c9          	movzbl %r9b,%r9d
  667b4d:	4d 09 c1             	or     %r8,%r9
  667b50:	48 39 d6             	cmp    %rdx,%rsi
  667b53:	72 3d                	jb     667b92 <crypto/internal/fips140/bigmod.(*Nat).Exp+0xb72>
  667b55:	48 8b 30             	mov    (%rax),%rsi
  667b58:	4c 8b 84 24 e8 10 00 	mov    0x10e8(%rsp),%r8
  667b5f:	00 
  667b60:	90                   	nop
  667b61:	49 f7 d9             	neg    %r9
  667b64:	45 31 d2             	xor    %r10d,%r10d
  667b67:	eb 18                	jmp    667b81 <crypto/internal/fips140/bigmod.(*Nat).Exp+0xb61>
  667b69:	4e 8b 1c d6          	mov    (%rsi,%r10,8),%r11
  667b6d:	4f 8b 24 d0          	mov    (%r8,%r10,8),%r12
  667b71:	4d 31 dc             	xor    %r11,%r12
  667b74:	4d 21 cc             	and    %r9,%r12
  667b77:	4d 31 e3             	xor    %r12,%r11
  667b7a:	4e 89 1c d6          	mov    %r11,(%rsi,%r10,8)
  667b7e:	49 ff c2             	inc    %r10
  667b81:	49 39 d2             	cmp    %rdx,%r10
  667b84:	7c e3                	jl     667b69 <crypto/internal/fips140/bigmod.(*Nat).Exp+0xb49>
  667b86:	e9 23 fe ff ff       	jmp    6679ae <crypto/internal/fips140/bigmod.(*Nat).Exp+0x98e>
  667b8b:	e8 b0 df ff ff       	call   665b40 <crypto/internal/fips140/bigmod.(*Nat).montgomeryReduction>
  667b90:	c9                   	leave
  667b91:	c3                   	ret
  667b92:	e8 29 91 e2 ff       	call   490cc0 <runtime.panicBounds>
  667b97:	e8 24 91 e2 ff       	call   490cc0 <runtime.panicBounds>
  667b9c:	0f 1f 40 00          	nopl   0x0(%rax)
  667ba0:	e8 bb 53 de ff       	call   44cf60 <runtime.panicshift>
  667ba5:	e8 16 91 e2 ff       	call   490cc0 <runtime.panicBounds>
  667baa:	48 8d 05 07 06 06 00 	lea    0x60607(%rip),%rax        # 6c81b8 <go:string.*+0xf1b8>
  667bb1:	bb 25 00 00 00       	mov    $0x25,%ebx
  667bb6:	e8 a5 fc e1 ff       	call   487860 <runtime.convTstring>
  667bbb:	48 89 c3             	mov    %rax,%rbx
  667bbe:	48 8d 05 fb 19 2f 00 	lea    0x2f19fb(%rip),%rax        # 9595c0 <type:*+0x415e8>
  667bc5:	e8 96 1a e2 ff       	call   489660 <runtime.gopanic>
  667bca:	e8 f1 90 e2 ff       	call   490cc0 <runtime.panicBounds>
  667bcf:	e8 ec 90 e2 ff       	call   490cc0 <runtime.panicBounds>
  667bd4:	e8 e7 90 e2 ff       	call   490cc0 <runtime.panicBounds>
  667bd9:	e8 e2 90 e2 ff       	call   490cc0 <runtime.panicBounds>
  667bde:	66 90                	xchg   %ax,%ax
  667be0:	e8 db 90 e2 ff       	call   490cc0 <runtime.panicBounds>
  667be5:	48 8d 05 02 f4 05 00 	lea    0x5f402(%rip),%rax        # 6c6fee <go:string.*+0xdfee>
  667bec:	bb 23 00 00 00       	mov    $0x23,%ebx
  667bf1:	e8 6a fc e1 ff       	call   487860 <runtime.convTstring>
  667bf6:	48 89 c3             	mov    %rax,%rbx
  667bf9:	48 8d 05 c0 19 2f 00 	lea    0x2f19c0(%rip),%rax        # 9595c0 <type:*+0x415e8>
  667c00:	e8 5b 1a e2 ff       	call   489660 <runtime.gopanic>
  667c05:	90                   	nop
  667c06:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  667c0b:	48 89 5c 24 10       	mov    %rbx,0x10(%rsp)
  667c10:	48 89 4c 24 18       	mov    %rcx,0x18(%rsp)
  667c15:	48 89 7c 24 20       	mov    %rdi,0x20(%rsp)
  667c1a:	48 89 74 24 28       	mov    %rsi,0x28(%rsp)
  667c1f:	4c 89 44 24 30       	mov    %r8,0x30(%rsp)
  667c24:	e8 d7 72 e2 ff       	call   48ef00 <runtime.morestack_noctxt.abi0>
  667c29:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
  667c2e:	48 8b 5c 24 10       	mov    0x10(%rsp),%rbx
  667c33:	48 8b 4c 24 18       	mov    0x18(%rsp),%rcx
  667c38:	48 8b 7c 24 20       	mov    0x20(%rsp),%rdi
  667c3d:	48 8b 74 24 28       	mov    0x28(%rsp),%rsi
  667c42:	4c 8b 44 24 30       	mov    0x30(%rsp),%r8
  667c47:	e9 d4 f3 ff ff       	jmp    667020 <crypto/internal/fips140/bigmod.(*Nat).Exp>

Disassembly of section .plt:
