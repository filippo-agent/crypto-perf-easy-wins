import pathlib,subprocess,os,time
r=pathlib.Path('/home/exedev/crypto-audit/round3')
T=[
('ecc-combined','bin','ecdsa-base','ecdsa-wnaf-square',r'^BenchmarkRound3VerifyEngine$/P-(384|521)$/(Warm|Reparse)$/(Valid|InvalidHash)$','go-crypto','ecdsa'),
('rsa-rr-wide','bin','rsa-base','rsa-word-rr-wide',r'^BenchmarkRound3RSAPublic$/(2048|3072|4096)$/(PerOperationSetup|DERParseAndOperation)$/(VerifyPKCS1|EncryptOAEP)$','go-crypto','rsa'),
('rsa-rr-keygen','bin','rsa-base','rsa-word-rr-wide',r'^BenchmarkRound2GenerateKey$/(2048|3072|4096)$/Corpus$','go-crypto','rsa'),
('rsa-rr-private','bin','rsa-base','rsa-word-rr-wide',r'^BenchmarkRound3PrecomputedRSASign$','go-crypto','rsa'),
('stack-mlkem-combined','stack-bin','mlkem-base','mlkem-combined',r'^BenchmarkRound2MLKEM$/(768|1024)$/(GenerateKey|EncapsWarm|ParseEncapsCold|DecapsWarm)$','go-pq-stack','mlkem'),
('stack-hpke-combined','stack-bin','hpke-base','hpke-combined',r'^BenchmarkRound2HPKE$/004[12]$/(SealWarm|ParseSealCold|OpenWarm)$','go-pq-stack','hpke'),
('stack-mldsa-invscale','stack-bin','mldsa-base','mldsa-invscale',r'^BenchmarkRound2MLDSA$/(44|65|87)$/(SignDeterministicWarm|ParseVerifyCold)$','go-pq-stack','mldsa'),
('stack-mldsa-combined','stack-bin','mldsa-base','mldsa-combined',r'^BenchmarkRound2MLDSA$/(44|65|87)$/(SignDeterministicWarm|ParseVerifyCold)$','go-pq-stack','mldsa')]
(r/'bench/final-probes-manifest.txt').write_text(repr(T)+'\n')
for i in range(12):
 for name,folder,old,new,pat,tree,pkg in T[i%len(T):]+T[:i%len(T)]:
  for v,b in ([('old',old),('new',new)] if i%2==0 else [('new',new),('old',old)]):
   print(i,name,v,time.strftime('%H:%M:%S'),flush=True)
   with (r/f'bench/{name}-{v}.txt').open('a') as f:subprocess.run(['taskset','-c','0',str(r/folder/f'{b}.test'),'-test.run=^$','-test.bench='+pat,'-test.benchtime=250ms','-test.benchmem','-test.cpu=1'],cwd=f'/home/exedev/{tree}/src/crypto/{pkg}',env={**os.environ,'GOMAXPROCS':'1','GOROOT':f'/home/exedev/{tree}'},stdout=f,stderr=subprocess.STDOUT,check=True)
for name,*_ in T:
 with (r/f'bench/{name}-stat.txt').open('w') as f:subprocess.run(['/home/exedev/go/bin/benchstat',str(r/f'bench/{name}-old.txt'),str(r/f'bench/{name}-new.txt')],stdout=f,check=True)
