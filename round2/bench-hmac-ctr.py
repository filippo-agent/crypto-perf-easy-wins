import os,pathlib,subprocess,time
r=pathlib.Path('/home/exedev/crypto-audit/round2')
tasks=[('hmac','hmac-old','hmac-new',r'^BenchmarkRound2PublicHMAC$/(SHA256|SHA384|SHA512|SHA3_256|OpaqueSHA256|MarshaledSHA256)$/32/(Cold|Warm|TwoUses)$'),('pbkdf2-native','hmac-old','hmac-new',r'^BenchmarkRound2PublicPBKDF2$/(SHA256|SHA384|SHA512|SHA3_256)$/Iter(1|4096)$/Blocks1$'),('hkdf-native','hmac-old','hmac-new',r'^BenchmarkRound2PublicHKDF$/(SHA256|SHA512)$/Blocks(1|8)$'),('ecdsa-hmac','ecdsa-hmac-old','ecdsa-hmac-new',r'^BenchmarkSign$/(P256|P384|P521)$'),('ctr2','ctr-old','ctr-new2',r'^BenchmarkRound2CTR$/.*/Bytes(1|7|16|17|50|1024|8192)$')]
(r/'bench/hmac-ctr-manifest.txt').write_text(repr(tasks)+'\n')
for i in range(12):
 for name,old,new,pat in tasks[i%len(tasks):]+tasks[:i%len(tasks)]:
  for v,bin in ([('old',old),('new',new)] if i%2==0 else [('new',new),('old',old)]):
   print(i,name,v,time.strftime('%H:%M:%S'),flush=True)
   with (r/f'bench/{name}-{v}.txt').open('a') as o:subprocess.run(['taskset','-c','0',str(r/f'bin/{bin}.test'),'-test.run=^$','-test.bench='+pat,'-test.benchtime=200ms','-test.benchmem','-test.cpu=1'],env={**os.environ,'GOMAXPROCS':'1'},stdout=o,stderr=subprocess.STDOUT,check=True)
for name,*_ in tasks:
 with (r/f'bench/{name}-stat.txt').open('w') as o:subprocess.run(['/home/exedev/go/bin/benchstat',str(r/f'bench/{name}-old.txt'),str(r/f'bench/{name}-new.txt')],stdout=o,check=True)
