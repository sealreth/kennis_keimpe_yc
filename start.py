"""print("hoi")
vara = input("To do?")
print(vara)

file = open("ToDolist.txt", "a")
file.write(vara)
file.close()
"""


file_path = "Booklist.txt"
file = open(file_path, "a") #If the file did not exsits, this creates it.
file.close

with open(file_path, "r") as file:
    existing_entries = file.readlines()
    file.close()

for entry in existing_entries:
    print(entry)

user_input = input("Name of the book?: ")
new_line = f"{user_input}\n" #allows new_line variable in if statements

if new_line in existing_entries:
    print(f"Dublicate entry, try again.")
else:
    with open(file_path, "a") as file:
        file.write(new_line) #UTF support python
        file.close()
