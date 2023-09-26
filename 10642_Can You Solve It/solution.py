#UVa 10642 Can You Solve It
def solve(case):
    x0, y0, x1, y1=[int(x) for x in fin.readline().split()]
    s0 = x0 + y0 + (x0 + y0 - 1) * (x0 + y0) // 2 + x0
    s1 = x1 + y1 + (x1 + y1 - 1) * (x1 + y1) // 2 + x1
    print(f"Case {case+1}: {s1-s0}",file=fout)
