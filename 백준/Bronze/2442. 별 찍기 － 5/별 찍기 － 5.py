n = int(input())

for i in range(1, n+1):
    print(" "*((2*(n-i))//2) ,"*"*(2*i-1), sep='')