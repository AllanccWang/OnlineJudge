'''
It needs to reverse the radix in output string
'''
#UVa 389 Basically Speaking - force validation
#array for storing radix
m=[str(i) for i in range(0,10)]+[chr(x+ord("A")) for x in range(0,6)]
#s: the number in the base you are converting from
#a: the base you are converting from
#b: the base you are converting to
def Basically_Speaking(s,b,c):
    b,c=map(int,[b,c])
    x=int(s,b)
    d=[]
    while x:
        d+=[m[int(x)%int(c)]]
        x//=int(c)
    s=''.join(d)
    if len(s)>7: s=s[-7:]
    return s.zfill(7)
