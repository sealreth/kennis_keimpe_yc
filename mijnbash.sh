#! /bin/sh


my_dir = `dirname $0`

for file in *
do
    tail $file
    echo "======"
done

echo "====================\n\n"

while IFS= read -r line;
do
    echo "delijn: $line "
done < test.txt

echo "Welcome: $1"
echo "dit gaat naar het scherm0"
read voornaam
echo "de voornaam is: $voornaam"
