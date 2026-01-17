Student = {"name":"John","class":"6th","roll_no":"23"}
# Get the value for a specific key, while simultaneously setting a default value if the key does not exist. 
a = Student.setdefault("roll_no",24)
print(a) # Prints real default value which is 23
print(Student)