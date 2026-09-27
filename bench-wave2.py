import os, pathlib, subprocess, time
root=pathlib.Path('/home/exedev/crypto-audit'); os.chdir(root)
tasks=[('sha2','sha2-old','sha2-new',r'^BenchmarkAuditPublicSHA2$/.*/(0|32|64|1024)$'),('sha2-hmac','sha2-old','sha2-new',r'^BenchmarkAuditPublicHMAC$/.*/(32|64|1024)$'),('tls-pair','tls-pair-old','tls-pair-new',r'^BenchmarkAuditTLS12HandshakePair$'),('x509-oid','x509-old','x509-oid-new',r'^BenchmarkAuditParseCertificate$'),('fiat-equal','ecdh-old','ecdh-equal-new',r'^BenchmarkAuditKeyImport$/P-(256|384|521)$/Public$'),('fiat-bound','ecdh-old','ecdh-bound-new',r'^BenchmarkAuditKeyImport$/P-(256|384|521)$/Public$'),('fiat-equal-ecdsa','ecdsa-old','ecdsa-equal-new',r'^Benchmark(AuditParsePublicKey|Verify)$/(P-256|P-384|P-521|P256|P384|P521)$'),('fiat-bound-ecdsa','ecdsa-old','ecdsa-bound-new',r'^Benchmark(AuditParsePublicKey|Verify)$/(P-256|P-384|P-521|P256|P384|P521)$')]
(root/'bench/wave2-manifest.txt').write_text(repr(tasks)+'\n')
for i in range(12):
 for name,old,new,pattern in tasks[i%len(tasks):]+tasks[:i%len(tasks)]:
  for v,binary in ([('old',old),('new',new)] if i%2==0 else [('new',new),('old',old)]):
   print(i,name,v,time.strftime('%H:%M:%S'),flush=True)
   with (root/f'bench/{name}-{v}.txt').open('a') as out:
    subprocess.run(['taskset','-c','0',str(root/f'bin/{binary}.test'),'-test.run=^$','-test.bench='+pattern,'-test.benchtime=250ms','-test.benchmem','-test.cpu=1'],env={**os.environ,'GOMAXPROCS':'1'},stdout=out,stderr=subprocess.STDOUT,check=True)
for name,_,_,_ in tasks:
 with (root/f'bench/{name}-stat.txt').open('w') as out:
  subprocess.run(['/home/exedev/go/bin/benchstat',f'bench/{name}-old.txt',f'bench/{name}-new.txt'],stdout=out,check=True)
