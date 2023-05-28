echo "Spam"
clear
mkdir "$PWD/$1" #makes a directory (read scrip parameter)
cd "$PWD/$1" #changes into directory
touch "file.txt" #create file in directory
echo "Files in newly created directory: $PWD/$1" #prints header & contents directory
ls -lla #ls -lla shows premissions as well
echo "Harry Potter" >> "file.txt" #printing/appending Harry potter into the file
cat "file.txt" #prints file contents
mv "file.txt" "renamed_file.txt" #renames file
mkdir "textfiles" #makes new directory
mv "renamed_file.txt" "textfiles/moved_file.txt" #moves and renames file
ln -s "./textfiles/moved_file.txt" "potter.txt" #symlink/shortcut
cp "potter.txt" "potter_copy.txt" #copies and names a file
cp -r "textfiles" "textfiles_copy" #copies and names a directory
cp "../Booklist.txt" "./" #copies booklist for grep
cat "Booklist.txt" | grep "Star" #print and search for ''star'' in copied Booklist.txt
#alias seal=history #did not work in script, works in terminal
#seal

cp "../phone.txt" "./" #copies phone numbers file to have a backup

temp_file="temp_file.txt" #holds the modified phone numbers pre-pended with national code
national_code="$2" #variable for national code

while IFS= read -r line; do #loops trough each line
  modified_line="$national_code $line" 
  echo "$modified_line" >> "$temp_file" #pipes modified line into temp file
done < "phone.txt" #pipes contents of file to loop
mv "$temp_file" "phone.txt" #replace the original file with the contents of the temp file
echo "File updated: phone.txt" #prints feedback