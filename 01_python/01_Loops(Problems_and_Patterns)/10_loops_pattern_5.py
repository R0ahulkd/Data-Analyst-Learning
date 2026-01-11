# for i in range (6,1,-1):
#     for j in range (1,6):
#         if j<i-1:
#             print(" ", end = " ")
#         else:
#             print("*", end = " ")
#     print("\n")

# 2nd Method
for i in range (1,6):
    for j in range (5,i,-1):
        print(" ", end = " ")
    for k in range (i):
        print("*", end = " ")
    print()