import pathlib,subprocess,os,time
r=pathlib.Path('/home/exedev/crypto-audit/round4');out=r/'bench/selected';out.mkdir(exist_ok=True)
T=[('sha256','sha256-base','sha256-sha256-only',r'^BenchmarkAuditPublicSHA2$/^(SHA256|SHA512)$/^(0|32|64|1024)$'),('hmac','hmac-base','hmac-sha256-only',r'^BenchmarkRound2PublicHMAC$/^(SHA256|SHA512)$/^32$/^(Cold|Warm|TwoUses)$')]
(out/'manifest.txt').write_text('SHA256-only final patch; 12 alternating pairs, 300ms, CPU0/GOMAXPROCS1.\n'+repr(T)+'\n')
for i in range(12):
 for name,old,new,pat in T[i%2:]+T[:i%2]:
  for v,b in ([('old',old),('new',new)] if i%2==0 else [('new',new),('old',old)]):
   print(i,name,v,time.strftime('%H:%M:%S'),flush=True)
   with (out/f'{name}-{v}.txt').open('a') as f:subprocess.run(['taskset','-c','0',str(r/'bin'/f'{b}.test'),'-test.run=^$','-test.bench='+pat,'-test.benchtime=300ms','-test.benchmem','-test.cpu=1'],env={**os.environ,'GOMAXPROCS':'1'},stdout=f,stderr=subprocess.STDOUT,check=True)
for name,*_ in T:
 with (out/f'{name}-stat.txt').open('w') as f:subprocess.run(['/home/exedev/go/bin/benchstat',str(out/f'{name}-old.txt'),str(out/f'{name}-new.txt')],stdout=f,check=True)
