import pathlib,urllib.request,base64,json,subprocess
r=pathlib.Path('/home/exedev/crypto-audit/pending')
for n in [520269,755040,835565,799801,756360,778420,480095,464835,482875]:
 d=json.loads((r/f'{n}.json').read_text());sha=d['current_revision']
 p=r/f'{n}-current.patch'
 if not p.exists():p.write_bytes(base64.b64decode(urllib.request.urlopen(f'https://go-review.googlesource.com/changes/{n}/revisions/{sha}/patch',timeout=45).read()))
 result=subprocess.run(['git','-C','/home/exedev/go-crypto','apply','--check',str(p)],text=True,capture_output=True)
 (r/f'{n}-applycheck.txt').write_text(f'Against 2ff5743d plus our four disjoint shortlisted patches; git apply --check exit {result.returncode}\n'+result.stdout+result.stderr)
 print(n,'applies' if result.returncode==0 else result.stderr.strip()[:220])
