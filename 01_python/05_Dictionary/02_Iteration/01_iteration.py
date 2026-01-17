Student = {"name":"John","class":"6th","roll_no":"23"}
#Print keys
for i in Student:
    print(i)

#Print Values of the key
print("\nValues of the keys")
for i in Student:
    print(Student[i])

print("\n")
# Value Function
for i in Student.values():
    print(i)

print("\n")
#Using Item Functions (Prints both keys and values)
for i in Student.items():
    print(i)

for i,j in Student.items():
    print(i,":",j)