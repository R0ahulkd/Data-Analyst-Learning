n = int(input("Enter a number : "))
for i in range (2,n):
    a = n%i
    if(a == 0):
        break

if(a==0):
    print(n,"is not a prime number.")
else:
    print(n,"is a Prime number.")