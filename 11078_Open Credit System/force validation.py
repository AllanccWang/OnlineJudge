'''
In description, ...... 
1. If i < j, then i’th student is senior to the j’th student
It means we can also identify the number of senior students and junior student
2. The score of the i’th student is absolute values less than 150000
It means the min diff is -150000, then if the initial diff setting is -1, it will cause error.
'''
#UVa 11078 Open Credit System - force validation
n=int(fin.readline())
for cases in range(0,n):
    p=int(fin.readline()) #number of students
    a=[int(x) for x in fin.readline().split()]
    diff=-1
    max_grade=a[0]
    for i in range(1,len(a)):
        if max_grade-a[i]>diff:
            diff=max_grade-a[i]
        max_grade=max(max_grade,a[i])
    print(diff)
