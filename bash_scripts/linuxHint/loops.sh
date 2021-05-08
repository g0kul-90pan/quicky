# !/bin/bash
# while loops
echo -e "\nwhile loops"
num=1

while [ "$num" -lt 10 ]
do
    echo "$num"
    num=$(( num + 1 ))
done

# until loops
echo -e "\nuntil loops"
num=1

until [ "$num" -gt 10 ]
do
    echo "$num"
    num=$(( num + 1 ))
done

#for loops

echo -e "\n for loops method 1"

for i in {1..20}
do
    echo "$i"
done

echo -e "The multplication table of 4 is\n"

for i in {4..40..4} #{starting_point..ending_point..increment}
do
    echo "$i"
done

echo -e "\n for loops method 2"

for (( i=0; i < 6; i++ ))
do
    echo "$i"
done


# break statement
echo -e "\nloop will stop if number is greater than 5"

i=1
while [ "$i" -lt 20 ]
do
    if [ "$i" -gt 5 ]
    then
        break
    fi
    echo "$i"
    i=$(( i + 1 ))
done


# continue statement

echo -e "\nloop will skip printing of 5"

for i in {1..20}
do

    if [ "$i" -eq 5 ]
    then
        continue
    fi

    echo "$i"
done




