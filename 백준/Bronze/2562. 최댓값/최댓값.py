import sys
input = sys.stdin.readline

nums =[]

for i in range(9):
    nums.append(int(input()))
print(max(nums), (nums.index(max(nums))+1))