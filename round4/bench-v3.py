import pathlib,subprocess,os,time
r=pathlib.Path('/home/exedev/crypto-audit/round4')
for i in range(12):
 for pkg,pat in [('ecdsa',r'^Benchmark(Sign|Round3VerifyEngine)$/(P384|P-384)$/.*'),('ecdh',r'^BenchmarkECDH$/P384$')]:
  for v in (['mul','square'] if i%2==0 else ['square','mul']):
   print(i,pkg,v,time.strftime('%H:%M:%S'),flush=True)
   # Limit verification to complete parse+Verify valid case; Sign is its own leaf.
   if pkg=='ecdsa':pat=r'^BenchmarkRound3VerifyEngine$/P-384$/Reparse$/Valid$'
   with (r/f'bench/v3-{pkg}-{v}.txt').open('a') as f:subprocess.run(['taskset','-c','0',str(r/f'bin/{pkg}-v3-{v}.test'),'-test.run=^$','-test.bench='+pat,'-test.benchtime=300ms','-test.benchmem','-test.cpu=1'],env={**os.environ,'GOMAXPROCS':'1'},stdout=f,stderr=subprocess.STDOUT,check=True)
for pkg in ['ecdsa','ecdh']:
 with (r/f'bench/v3-{pkg}-stat.txt').open('w') as f:subprocess.run(['/home/exedev/go/bin/benchstat',str(r/f'bench/v3-{pkg}-mul.txt'),str(r/f'bench/v3-{pkg}-square.txt')],stdout=f,check=True)
