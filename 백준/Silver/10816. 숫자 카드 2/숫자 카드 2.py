import sys
from collections import Counter
input = sys.stdin.readline

n = int(input())
n_list = list(map(int, input().split()))
m = int(input())
m_list = list(map(int, input().split()))

c = Counter(n_list) 
print(*[c.get(i) if c.get(i) is not None else 0 for i in m_list])