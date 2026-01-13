n = int(input("Enter a number to check whether it is palindrome or not : "))
num = n
rev = 0
while (n > 0):
    dig = n % 10
    rev = (rev * 10) + dig
    n = n // 10

if (rev == num):
    print("Given number is palindrome")
else:
    print("Given number is not a palindrome number") 