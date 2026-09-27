import os, pathlib, subprocess, time
root=pathlib.Path('/home/exedev/crypto-audit'); os.chdir(root)
tasks=[('mldsa','mldsa',r'^BenchmarkKeygen$'),('pbkdf2','pbkdf2',r'^BenchmarkHMACSHA(1|256)$'),('hkdf','hkdf',r'^BenchmarkAuditExpand$'),('x509','x509',r'^BenchmarkAuditParseCertificate$'),('tls-quic','tls',r'^BenchmarkAuditQUICHandshake$'),('hpke','hpke',r'^BenchmarkAuditPQNewPrivateKey$'),('rsa','rsa',r'^BenchmarkAuditParsePKCS8PrivateKey$'),('ecdsa','ecdsa',r'^Benchmark(Sign|AuditDeterministicSign)$')]
(root/'bench/operations-manifest.txt').write_text(repr(tasks)+'\n')
for i in range(12):
 for name,binary,pattern in tasks[i%len(tasks):]+tasks[:i%len(tasks)]:
  for v in (['old','new'] if i%2==0 else ['new','old']):
   print(i,name,v,time.strftime('%H:%M:%S'),flush=True)
   with (root/f'bench/{name}-{v}.txt').open('a') as out:
    subprocess.run(['taskset','-c','0',str(root/f'bin/{binary}-{v}.test'),'-test.run=^$','-test.bench='+pattern,'-test.benchtime=250ms','-test.benchmem','-test.cpu=1'],env={**os.environ,'GOMAXPROCS':'1'},stdout=out,stderr=subprocess.STDOUT,check=True)
for name,_,_ in tasks:
 with (root/f'bench/{name}-stat.txt').open('w') as out:
  subprocess.run(['/home/exedev/go/bin/benchstat',f'bench/{name}-old.txt',f'bench/{name}-new.txt'],stdout=out,check=True)
