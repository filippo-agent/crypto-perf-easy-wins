from collections import Counter
counts=Counter(); examples={}; total=0; saturated=0
for B,n in [(4,1),(4,2),(4,3),(4,4),(8,2),(8,3),(16,2)]:
 R=B**n
 for m in range(R//2,R):
  d=m//(B**(n-1))
  for x in range(m):
   for y in range(B):
    A=x*B+y; H=A//(B**(n-1)); hi=H//B
    qhat=min(H//d,B-1); true=A//m
    assert true<=qhat<=true+2
    z=A-qhat*m; width=B**(n+1); enc=z%width; negative=int(z<0); fixes=0
    for _ in range(2):
     v=enc+negative*m; carry=v//width; enc=v%width
     fixes+=negative; negative &= 1-carry
    assert enc==A%m and not negative
    counts[fixes]+=1;examples.setdefault(fixes,(B,n,m,x,y));saturated+=hi==d;total+=1
print('PASS',total,'cases; correction counts',dict(counts),'examples',examples,'hi==d',saturated)
