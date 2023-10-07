while 1:
    n=int(fin.readline())
    if n==-1: break
    mb=0
    fb=1
    for i in range(n):
        tmp=mb
        mb+=fb
        fb=tmp+1
    print(mb,fb+mb)
