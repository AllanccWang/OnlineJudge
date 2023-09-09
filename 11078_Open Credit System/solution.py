#UVa 11078 Open Credit System
n=int(fin.readline())
for cases in range(0,n):
    p=int(fin.readline()) #number of students
    a=[int(x) for x in fin.readline().split()]
    diff=-1000000
    #If i < j, then i’th student is senior to the j’th student.
    max_grade=a[0]
    for i in range(1,len(a)):
        if max_grade-a[i]>diff:
            diff=max_grade-a[i]
        max_grade=max(max_grade,a[i])
    print(diff,file=fout)
