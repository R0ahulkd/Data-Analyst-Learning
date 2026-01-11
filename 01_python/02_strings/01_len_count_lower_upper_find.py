a = "Harry Potter and the Goblet of Fire"
b = "{} Potter and the Goblet of Fire"
print(len(a)) #Find length of string
print(a.count("a")) #find occurance of given character
print(a.upper()) #to make string upper case
print(a.lower()) #to make string lower case
print(a.capitalize()) #capitalize first character of string
print(a.title()) #capitalize first character of every word
print(a.index("t")) #find index of character
print(a.index("t",10,34)) #find index in range
print(a.casefold()) #aggrasively convert string to lower case
print(a.find("e")) #find any character same as index
print(b.format("Harry")) #use for format like string b prints given data in {}
print(a.center(50,"-")) #add extra - to make string equal to 50 character