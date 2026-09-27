import os,pathlib,subprocess,time
r=pathlib.Path('/home/exedev/crypto-audit/round2')
T=[
('rsa-cache','rsa-cache-base','rsa-cache',r'^BenchmarkRound2PublicCache$/(2048|3072|4096)$/(VerifyPKCS1v15|VerifyPSS|EncryptOAEP)$/(Warm|FreshStruct)$','rsa'),
('rsa-cache-x509','rsa-cache-base','rsa-cache',r'^BenchmarkRound2PublicCacheX509$/(2048|4096)$','rsa'),
('mlkem-scale','mlkem-base','mlkem-scale',r'^BenchmarkRound2MLKEM$/.*/(EncapsWarm|DecapsWarm|SeedExpand)$','mlkem'),
('mlkem-all','mlkem-base','mlkem-all',r'^BenchmarkRound2MLKEM$/.*/(GenerateKey|EncapsWarm|DecapsWarm|ParseEncapsCold|DecapsRejectWarm)$','mlkem'),
('hpke-all','hpke-base','hpke-all',r'^BenchmarkRound2HPKE$/004[12]$/(SealWarm|OpenWarm|ParseSealCold)$','hpke'),
('ecdsa-p256','ecdsa-base','ecdsa-p256',r'^BenchmarkRound2VerifyNormal$/P-(256|384)$/(Valid|InvalidHash)$','ecdsa')]
(r/'bench/wave3-manifest.txt').write_text(repr(T)+'\n')
for i in range(12):
 for name,old,new,pat,pkg in T[i%len(T):]+T[:i%len(T)]:
  for v,b in ([('old',old),('new',new)] if i%2==0 else [('new',new),('old',old)]):
   print(i,name,v,time.strftime('%H:%M:%S'),flush=True)
   with (r/f'bench/{name}-{v}.txt').open('a') as o:subprocess.run(['taskset','-c','0',str(r/f'bin/{b}.test'),'-test.run=^$','-test.bench='+pat,'-test.benchtime=250ms','-test.benchmem','-test.cpu=1'],cwd='/home/exedev/go-crypto/src/crypto/'+pkg,env={**os.environ,'GOMAXPROCS':'1'},stdout=o,stderr=subprocess.STDOUT,check=True)
for name,*_ in T:
 with (r/f'bench/{name}-stat.txt').open('w') as o:subprocess.run(['/home/exedev/go/bin/benchstat',str(r/f'bench/{name}-old.txt'),str(r/f'bench/{name}-new.txt')],stdout=o,check=True)
