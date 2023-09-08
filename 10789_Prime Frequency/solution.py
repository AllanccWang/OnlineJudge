#UVa 10789 Prime Frequency
primes=[]
#find primes within 2001
for num in range(2,2002):
    f=True
    for i in range(2,num):
        if num%i==0:
            f=False
    if f: primes+=[num]
#cases: the number of cases
#s: input string
def Prime_Frequency(cases,s):
    arr=[]
    for x in list(set(s)):
        if s.count(x) in primes:
            arr+=[x]
    ans=f"Case {cases+1}: "
    if len(arr)!=0:
        ans+=''.join(sorted(arr))
    else:
        ans+="empty"
    return ans
