string = input()
alp_dict = dict()

for i in range(97,123) :
    alp_dict[chr(i)] = 0

for s in string:
    alp_dict[s] += 1

print(*alp_dict.values())