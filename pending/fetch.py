import urllib.request,urllib.parse,json,pathlib,concurrent.futures,time
r=pathlib.Path('/home/exedev/crypto-audit/pending')
ids=[839765,822002,822001,822040,755040,818725,818921,818724,818920,818922,818720,818721,818722,824126,733845,520269,480095,464835,676055,787380,799801,756360,716900,482875,627936,627943,669535,733960,778420,778260,778100,778120,778102,671275,752981,755840,765200,767700,771900,835565,806280,743760,738362,738363,614085,760101,733844,733843,822000,839786,480535,519615,481618,334610,413594]
def get(n):
 u=f'https://go-review.googlesource.com/changes/{n}/detail?o=CURRENT_REVISION&o=CURRENT_COMMIT&o=CURRENT_FILES&o=DETAILED_ACCOUNTS&o=MESSAGES&o=DETAILED_LABELS'
 for i in range(3):
  try:
   data=urllib.request.urlopen(u,timeout=45).read();d=json.loads(data[4:]);(r/f'{n}.json').write_text(json.dumps(d,indent=2));return n,d['status'],d['subject']
  except Exception as e:
   if i==2:return n,str(e)
   time.sleep(1)
with concurrent.futures.ThreadPoolExecutor(max_workers=5) as ex:
 for result in ex.map(get,ids):print(*result,flush=True)
