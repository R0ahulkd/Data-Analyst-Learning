a = "hello"
b = "Hello123"
c = "12345"
d = "HELLO"
e = " "
f = "Hello 123@"
g = "1.234"

print(a.isnumeric()) #Returns True if all characters in the string are numeric
print(b,b.isnumeric())
print(c,c.isnumeric())
print(f,f.isnumeric())
print(g,g.isnumeric())
print(e,e.isnumeric())
print(d,d.isnumeric())