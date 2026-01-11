# a = 1
# for i in range (1,6):
#     a = i
#     for j in range (0,i):
#         print(a, end = "\t")
#         a -= 1
#     print("\n")

# 2nd Method
for i in range (1,6):
    for j in range (i,0,-1):
        print(j, end = "\t")
    print("\n")