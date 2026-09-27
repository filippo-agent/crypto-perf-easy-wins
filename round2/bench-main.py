import os,pathlib,subprocess,time
r=pathlib.Path('/home/exedev/crypto-audit/round2')
# name, old binary, new binary, public operation selector, package cwd, duration
T=[
('rsa-trial','rsa-base','rsa-trial',r'^BenchmarkRound2GenerateKey$/(2048|3072|4096)$/Corpus$','rsa','200ms'),
('rsa-six','rsa-base','rsa-six',r'^BenchmarkRound2GenerateKey$/(2048|3072|4096)$/Corpus$','rsa','200ms'),
('rsa-exp','rsa-base','rsa-exp',r'^BenchmarkRound2Verify$','rsa','200ms'),
('mlkem-fused','mlkem-base','mlkem-fused',r'^BenchmarkRound2MLKEM$/.*/(EncapsWarm|DecapsWarm|ParseEncapsCold)$','mlkem','200ms'),
('mlkem-precomp','mlkem-base','mlkem-precomp',r'^BenchmarkRound2MLKEM$','mlkem','200ms'),
('hpke-precomp','hpke-base','hpke-precomp',r'^BenchmarkRound2HPKE$/004[12]/(SealWarm|OpenWarm|ParseSealCold)$','hpke','200ms'),
('mldsa-buffer','mldsa-base','mldsa-buffer',r'^BenchmarkRound2MLDSA$/.*/(SeedExpand|SignDeterministicWarm|ParseVerifyCold)$','mldsa','200ms'),
('ecdsa-projective','ecdsa-base','ecdsa-projective',r'^BenchmarkRound2VerifyNormal$/P-(256|384|521)$/Valid$','ecdsa','200ms'),
('ecdsa-vartime','ecdsa-base','ecdsa-vartime',r'^BenchmarkRound2VerifyNormal$/P-(256|384|521)$/Valid$','ecdsa','200ms'),
('ecdsa-both','ecdsa-base','ecdsa-both',r'^BenchmarkRound2VerifyNormal$/P-(256|384|521)$/Valid$','ecdsa','200ms'),
('x509-name','x509-base','x509-name',r'^Benchmark(AuditParseCertificate|Round2NamePublicParse)$','x509','200ms'),
('tls-cache','tls-base','tls-cache',r'^BenchmarkRound2MTLSHandshakePair$','tls','200ms'),
('hmac-resetto','hmac-old','hmac-resetto',r'^BenchmarkRound2PublicHMAC$/^(SHA256|SHA512|MarshaledSHA256)$/32/(Cold|Warm|TwoUses)$','hmac','200ms'),
('pbkdf2-resetto','hmac-old','hmac-resetto',r'^BenchmarkRound2PublicPBKDF2$/^(SHA256|SHA512|SHA3_256)$/Iter4096$/Blocks1$','hmac','200ms')]
(r/'bench/main-manifest.txt').write_text(repr(T)+'\n')
for i in range(12):
 for name,old,new,pat,pkg,duration in T[i%len(T):]+T[:i%len(T)]:
  for v,bin in ([('old',old),('new',new)] if i%2==0 else [('new',new),('old',old)]):
   print(i,name,v,time.strftime('%H:%M:%S'),flush=True)
   with (r/f'bench/{name}-{v}.txt').open('a') as o:
    subprocess.run(['taskset','-c','0',str(r/f'bin/{bin}.test'),'-test.run=^$','-test.bench='+pat,'-test.benchtime='+duration,'-test.benchmem','-test.cpu=1'],cwd='/home/exedev/go-crypto/src/crypto/'+pkg,env={**os.environ,'GOMAXPROCS':'1'},stdout=o,stderr=subprocess.STDOUT,check=True)
for name,*_ in T:
 with (r/f'bench/{name}-stat.txt').open('w') as o:subprocess.run(['/home/exedev/go/bin/benchstat',str(r/f'bench/{name}-old.txt'),str(r/f'bench/{name}-new.txt')],stdout=o,check=True)
