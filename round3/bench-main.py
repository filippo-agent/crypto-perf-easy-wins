import pathlib,subprocess,os,time
r=pathlib.Path('/home/exedev/crypto-audit/round3')
# name, binary dir, old, new, selector, source-tree, package
T=[
('stack-mlkem-mask','stack-bin','mlkem-base','mlkem-mask',r'^BenchmarkRound2MLKEM$/(768|1024)$/(EncapsWarm|ParseEncapsCold|DecapsWarm)$','go-pq-stack','mlkem'),
('stack-mlkem-select','stack-bin','mlkem-base','mlkem-compare-select',r'^BenchmarkRound2MLKEM$/(768|1024)$/(GenerateKey|EncapsWarm|ParseEncapsCold|DecapsWarm|DecapsRejectWarm)$','go-pq-stack','mlkem'),
('stack-mldsa-mask','stack-bin','mldsa-base','mldsa-mask',r'^BenchmarkRound2MLDSA$/(44|65|87)$/(SignDeterministicWarm|ParseVerifyCold)$','go-pq-stack','mldsa'),
('stack-mldsa-select','stack-bin','mldsa-base','mldsa-compare-select',r'^BenchmarkRound2MLDSA$/(44|65|87)$/(SeedExpand|SignDeterministicWarm|ParseVerifyCold)$','go-pq-stack','mldsa'),
('stack-mlkem-pack','stack-bin','mlkem-base','mlkem-pack',r'^BenchmarkRound2MLKEM$/(768|1024)$/(EncapsWarm|ParseEncapsCold|DecapsWarm)$','go-pq-stack','mlkem'),
('stack-mlkem-compress','stack-bin','mlkem-base','mlkem-compress',r'^BenchmarkRound2MLKEM$/(768|1024)$/(EncapsWarm|DecapsWarm)$','go-pq-stack','mlkem'),
('rsa-kernels','bin','rsa-base','rsa-kernels',r'^BenchmarkRound3RSAPublic$/(2048|3072|4096)$/(PerOperationSetup|DERParseAndOperation)$/(VerifyPKCS1|EncryptOAEP)$','go-crypto','rsa'),
('rsa-rr','bin','rsa-base','rsa-word-rr',r'^BenchmarkRound3RSAPublic$/(2048|3072|4096)$/PerOperationSetup$/VerifyPKCS1$','go-crypto','rsa'),
('pbkdf2-fixed','bin','pbkdf2-base','pbkdf2-fixed',r'^BenchmarkRound3PublicPBKDF2$/^(SHA256|SHA224|SHA512|OpaqueSHA256)$/Iter(1|4096)$/Len32$','go-crypto','pbkdf2'),
('ecc-p256-sparse','bin','ecdsa-base','ecdsa-p256-sparse',r'^BenchmarkRound3ECDSALowcost$/P-256$/(SharedKey|ReparseKey)$/(Valid|InvalidHash)$','go-crypto','ecdsa'),
('ecc-wnaf','bin','ecdsa-base','ecdsa-wnaf',r'^BenchmarkRound3VerifyEngine$/P-(384|521)$/(Warm|Reparse)$/Valid$','go-crypto','ecdsa'),
('p384-square','bin','ecdsa-base','ecdsa-p384-square',r'^Benchmark(Round3VerifyEngine|Sign)$/(P-384|P384)$','go-crypto','ecdsa'),
('p384-square-ecdh','bin','ecdh-base','ecdh-p384-square',r'^BenchmarkECDH$/P384$','go-crypto','ecdh')]
(r/'bench/main-manifest.txt').write_text(repr(T)+'\n')
for i in range(12):
 for name,folder,old,new,pat,tree,pkg in T[i%len(T):]+T[:i%len(T)]:
  for v,b in ([('old',old),('new',new)] if i%2==0 else [('new',new),('old',old)]):
   print(i,name,v,time.strftime('%H:%M:%S'),flush=True)
   with (r/f'bench/{name}-{v}.txt').open('a') as f:subprocess.run(['taskset','-c','0',str(r/folder/f'{b}.test'),'-test.run=^$','-test.bench='+pat,'-test.benchtime=200ms','-test.benchmem','-test.cpu=1'],cwd=f'/home/exedev/{tree}/src/crypto/{pkg}',env={**os.environ,'GOMAXPROCS':'1','GOROOT':f'/home/exedev/{tree}'},stdout=f,stderr=subprocess.STDOUT,check=True)
for name,*_ in T:
 with (r/f'bench/{name}-stat.txt').open('w') as f:subprocess.run(['/home/exedev/go/bin/benchstat',str(r/f'bench/{name}-old.txt'),str(r/f'bench/{name}-new.txt')],stdout=f,check=True)
