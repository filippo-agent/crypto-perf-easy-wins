import pathlib,subprocess,os,time
r=pathlib.Path('/home/exedev/crypto-audit/round4')
T=[
('mldsa-decompose','mldsa-base','mldsa-decompose-group-constants',r'^BenchmarkRound2MLDSA$/(44|65|87)$/(SignDeterministicWarm|ParseVerifyCold)$','go-pq-stack','mldsa'),
('mldsa-frommont','mldsa-base','mldsa-from-montgomery-no-correction',r'^BenchmarkRound2MLDSA$/(44|65|87)$/(SignDeterministicWarm|ParseVerifyCold)$','go-pq-stack','mldsa'),
('mldsa-sub','mldsa-base','mldsa-sub-direct-compare',r'^BenchmarkRound2MLDSA$/(44|65|87)$/(SignDeterministicWarm|ParseVerifyCold)$','go-pq-stack','mldsa'),
('mlkem-cbd','mlkem-base','mlkem-cbd-widen-byte',r'^BenchmarkRound2MLKEM$/(768|1024)$/(GenerateKey|EncapsWarm|ParseEncapsCold|DecapsWarm)$','go-pq-stack','mlkem'),
('mlkem-sub','mlkem-base','mlkem-sub-direct-compare',r'^BenchmarkRound2MLKEM$/(768|1024)$/(EncapsWarm|ParseEncapsCold|DecapsWarm)$','go-pq-stack','mlkem'),
('rsa-cteq','rsa-base','rsa-cteq-xor-borrow',r'^Benchmark(Round3PrecomputedRSASign|Round2Verify)$','go-crypto','rsa'),
('rsa-assign','rsa-base','rsa-assign-intrinsic',r'^Benchmark(Round3PrecomputedRSASign|Round2Verify)$','go-crypto','rsa'),
('hmac-named','hmac-base','hmac-named-return',r'^BenchmarkRound2PublicHMAC$/^(SHA256|SHA512)$/32$/(Cold|Warm)$','go-crypto','hmac'),
('hmac-outparam','hmac-base','hmac-outparam',r'^BenchmarkRound2PublicHMAC$/^(SHA256|SHA512)$/32$/(Cold|Warm)$','go-crypto','hmac'),
('hmac-array','hmac-base','hmac-array-append',r'^BenchmarkRound2PublicHMAC$/^(SHA256|SHA512)$/32$/(Cold|Warm)$','go-crypto','hmac'),
('hmac-distance','hmac-base','hmac-distance',r'^BenchmarkRound2PublicHMAC$/^(SHA256|SHA512)$/32$/(Cold|Warm)$','go-crypto','hmac'),
('sha256-outparam','sha256-base','sha256-outparam',r'^BenchmarkAuditPublicSHA2$/^(SHA256|SHA512)$/32$','go-crypto','sha256'),
('sha256-array','sha256-base','sha256-array-append',r'^BenchmarkAuditPublicSHA2$/^(SHA256|SHA512)$/32$','go-crypto','sha256')]
(r/'bench/manifest.txt').write_text(repr(T)+'\n')
for i in range(12):
 for name,old,new,pat,tree,pkg in T[i%len(T):]+T[:i%len(T)]:
  for v,b in ([('old',old),('new',new)] if i%2==0 else [('new',new),('old',old)]):
   print(i,name,v,time.strftime('%H:%M:%S'),flush=True)
   with (r/f'bench/{name}-{v}.txt').open('a') as f:subprocess.run(['taskset','-c','0',str(r/'bin'/f'{b}.test'),'-test.run=^$','-test.bench='+pat,'-test.benchtime=200ms','-test.benchmem','-test.cpu=1'],cwd=f'/home/exedev/{tree}/src/crypto/{pkg}',env={**os.environ,'GOMAXPROCS':'1','GOROOT':f'/home/exedev/{tree}'},stdout=f,stderr=subprocess.STDOUT,check=True)
for name,*_ in T:
 with (r/f'bench/{name}-stat.txt').open('w') as f:subprocess.run(['/home/exedev/go/bin/benchstat',str(r/f'bench/{name}-old.txt'),str(r/f'bench/{name}-new.txt')],stdout=f,check=True)
