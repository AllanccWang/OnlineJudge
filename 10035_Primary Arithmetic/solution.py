#UVa 10035 Primary Arithmetic 
def main():
    while 1:
        n,m=map(int,fin.readline().split())
        if n==0 and m==0: break
        carry = 0
        count = 0
        while n > 0 or m > 0:
            if n % 10 + m % 10 + carry >= 10:
                count += 1
                carry = 1
            else:
                carry = 0
            n //= 10
            m //= 10

        if count <= 1:
            if count == 0:
                print("No carry operation.")
            else:
                print("1 carry operation.")
        else:
            print(count, "carry operations.")
