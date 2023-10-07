#UVa 1339 Ancient Cipher
while 1:
    s1=fin.readline().split('\n')[0]
    s2=fin.readline().split('\n')[0]
    if len(s1)==0: break
    a=[0]*26
    b=[0]*26 #a
    n=[0]*105
    m=[0]*105 #n

    for i in range(len(s1)):
        a[ord(s1[i])-ord('A')]+=1
        b[ord(s2[i])-ord('A')]+=1

    for i in range(26):
        n[a[i]]+=1
        m[b[i]]+=1
    
    f=True
    for i in range(len(s1)):
        if n[i]!=m[i]:
            f=False
            break
    if f: print("YES",file=fout)
    else: print("NO",file=fout)
