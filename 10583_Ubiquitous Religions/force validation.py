#UVa 10583 Ubiquitous Religions - force validation
g=[]
def find(x):
    while x!=g[x]:
        x=g[x]
    return x
def union_group(u,v):
    a=find(u)
    b=find(v)
    if a==b:
        return False
    '''
    two nodes need to find their root node
    '''
    g[u]=g[b] 
    return True
def Ubiquitous_Religions(n,m):
    global g
    g=[i for i in range(0,n+1)]
    cnt=n
    for i in range(m):
        u,v=[int(x) for x in fin.readline().split()]
        # if these two student belong to same group
        if union_group(u,v): cnt-=1
    return cnt
