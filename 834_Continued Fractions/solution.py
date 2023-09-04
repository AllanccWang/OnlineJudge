#UVa 834 Continued Fractions
def Continued_Fractions(a,b):
    arr=[]
    while 1:
        arr+=[str(a//b)]
        t=a%b
        a=b
        b=t
        if b==0: break
    return f"[{arr[0]};{','.join(arr[1:])}]"
