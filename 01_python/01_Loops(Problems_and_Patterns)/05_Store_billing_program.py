while True:
    name = input("Enter your Name : ")
    total = 0
    while True:
        quantity = float(input("Enter item quantity : "))
        amount = float(input("Enter the Amount : "))
        total += amount * quantity
        repeat = input("Do you want to enter more product or exit use yes or no : ")
        if repeat == "no":
            break

    print("Name : ", name, "\nTotal Amount : ", total)
    repeat1 = input("Make more bill yes or no")
    if repeat == "no" or repeat == "No":
        break