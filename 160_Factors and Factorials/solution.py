#UVa 160 Factors and Factorials
#find primes in range(2..100)
primes=[]
for i in range(2,101):
    f=True
    for j in range(2,i):
        if i%j==0:
            f=False
    if f:
        primes+=[i]

def Factors_and_Factorials(n):
    arr={}
    for x in primes: arr[x]=0
    for num in range(2,n+1):
        for prime in primes:
            c=0
            while num%prime==0:
                num/=prime
                c+=1
            arr[prime]+=c
            if num==1: break
    ans=[]
    for prime in arr:
        if prime<=n:
            ans+=[str(arr[prime]).rjust(3)]
    s=str(n).rjust(3)+"! ="+''.join(ans[0:15])
    if len(ans)>15: s+=("\n      "+''.join(ans[15:]))
    return s
