#UVa 11332 Summing Digits
while 1:
    n=int(fin.readline())
    if n==0: break
    while len(str(n))!=1:
        n=sum([int(x) for x in str(n)])
    print(n)
