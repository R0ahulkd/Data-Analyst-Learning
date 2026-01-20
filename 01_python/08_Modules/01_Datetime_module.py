import datetime
x = datetime.datetime.now()
print(x)

y = datetime.datetime(2003,12,29)
print(y.strftime("%A"))
print(y.strftime("%a"))
print(y.strftime("%B"))
print(y.strftime("%m"))
print(y.strftime("%Y"))
print(y.strftime("%y"))
print(y.strftime("%M"))
print(y.strftime("%p"))