M = int(input())
N = int(input())

nums = []
for i in range(M, N+1) :
    if i == 1 :
        continue
    result = True
    j = 2
    while (j*j <= i) :
        if i % j == 0 :
            result = False
            break
        j += 1
    if result :
        nums.append(i)
if len(nums) > 0 :
    print(sum(nums))
    print(nums[0])
else :
    print(-1)