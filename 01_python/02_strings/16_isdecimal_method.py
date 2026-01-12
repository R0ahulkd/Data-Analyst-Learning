a = "hello"
b = "Hello123"
c = "12345"
d = "HELLO"
e = " "
f = "Hello 123@"
g = "1.234"

print(a.isdecimal()) #Returns True if all characters in the string are decimals
print(b,b.isdecimal())
print(c,c.isdecimal())
print(f,f.isdecimal())
print(g,g.isdecimal())
print(e,e.isdecimal())
print(d,d.isdecimal())