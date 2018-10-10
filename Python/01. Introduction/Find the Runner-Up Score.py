n = int(input())
numbers = list(set([int(x) for x in input().split()]))
print(sorted(numbers)[-2])
