#UVa 11824 A Minimum Land Price
#list a contains integer Li which is the cost of land
def A_Minimum_Land_Price(a):
    a=sorted(a,reverse=True)
    s=0
    for i,x in enumerate(a):
        s+=2*x**(i+1)
        if s>5*10**6:
            return "Too expensive"
    return s
