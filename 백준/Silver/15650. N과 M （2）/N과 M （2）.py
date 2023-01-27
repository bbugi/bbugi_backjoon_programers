import sys
import itertools

input = sys.stdin.readline

n, m = map(int, input().split())

n_list = []
for i in range(1, n+1):
    n_list.append(i)
    
c = itertools.combinations(n_list, m)

# print(list(c))

for num in c:
    print(" ".join(map(str, num)))