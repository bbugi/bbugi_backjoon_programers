n = int(input())

for i in range(1,n+1): # 1, 2, 3, 4, 5
    print(" "*(i-1), "*"*(n+1-i), sep="")