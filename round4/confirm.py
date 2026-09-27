import pathlib,subprocess,os,time
r=pathlib.Path('/home/exedev/crypto-audit/round4');out=r/'bench/confirmation';out.mkdir(exist_ok=True)
T=[('mldsa-decompose','mldsa-base','mldsa-decompose-group-constants',r'^BenchmarkRound2MLDSA$/^(44|65)$/^(SignDeterministicWarm|ParseVerifyCold)$','go-pq-stack','mldsa'),('mlkem-cbd','mlkem-base','mlkem-cbd-widen-byte',r'^BenchmarkRound2MLKEM$/^(768|1024)$/^(EncapsWarm|DecapsWarm)$','go-pq-stack','mlkem'),('sha-outparam','sha256-base','sha256-outparam',r'^BenchmarkAuditPublicSHA2$/^(SHA256|SHA512)$/^(0|32|64|1024)$','go-crypto','sha256'),('hmac-outparam','hmac-base','hmac-outparam',r'^BenchmarkRound2PublicHMAC$/^(SHA256|SHA512)$/^32$/^Warm$','go-crypto','hmac')]
(out/'manifest.txt').write_text('Fixed follow-up: 16 paired samples, 400ms, CPU0/GOMAXPROCS1. No further reruns based on significance.\n'+repr(T)+'\n')
for i in range(16):
 for name,old,new,pat,tree,pkg in T[i%len(T):]+T[:i%len(T)]:
  for v,b in ([('old',old),('new',new)] if i%2==0 else [('new',new),('old',old)]):
   print(i,name,v,time.strftime('%H:%M:%S'),flush=True)
   with (out/f'{name}-{v}.txt').open('a') as f:subprocess.run(['taskset','-c','0',str(r/'bin'/f'{b}.test'),'-test.run=^$','-test.bench='+pat,'-test.benchtime=400ms','-test.benchmem','-test.cpu=1'],cwd=f'/home/exedev/{tree}/src/crypto/{pkg}',env={**os.environ,'GOMAXPROCS':'1','GOROOT':f'/home/exedev/{tree}'},stdout=f,stderr=subprocess.STDOUT,check=True)
for name,*_ in T:
 with (out/f'{name}-stat.txt').open('w') as f:subprocess.run(['/home/exedev/go/bin/benchstat',str(out/f'{name}-old.txt'),str(out/f'{name}-new.txt')],stdout=f,check=True)
