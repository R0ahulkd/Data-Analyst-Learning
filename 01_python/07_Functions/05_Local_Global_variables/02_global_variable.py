x = 24
print("First Variable x is",x)
def hello():
    global x
    x = 28
    return x

print(hello())
print(x)

# using global now it modify global variable x