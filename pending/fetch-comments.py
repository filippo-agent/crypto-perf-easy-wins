import concurrent.futures,json,pathlib,urllib.request
r=pathlib.Path('/home/exedev/crypto-audit/pending')
ids=[520269,755040,799801,756360,835565,733960,824126,760101,614085,480095,676055,464835,482875,481618,334610,413594]
def get(n):
 try:
  d=json.loads(urllib.request.urlopen(f'https://go-review.googlesource.com/changes/{n}/comments',timeout=30).read()[4:]);(r/f'{n}-comments.json').write_text(json.dumps(d,indent=2));print(n,sum(len(v) for v in d.values()))
 except Exception as e:print(n,e)
with concurrent.futures.ThreadPoolExecutor(max_workers=4) as ex:list(ex.map(get,ids))
