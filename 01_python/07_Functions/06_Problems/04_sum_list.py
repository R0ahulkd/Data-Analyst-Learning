def sum(n):
    total = 0
    for i in n:
        total += i
    return(total)
    
print(sum([3,6,5,4,7]))

#2nd method using recursion

def add(num):
    if len(num) == 1:
        return num[0]
    else:
        return num[0] + add(num[1:])

print(add([3,6,5,4,7]))