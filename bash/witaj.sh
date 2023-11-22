#!/bin/bash
echo "Witaj świecie"

nazwa=Jan
echo "Witaj, $nazwa"


a=2
b=2
if [ $a -eq $b ]; then
    echo "Równe"
else
    echo "Różne"
fi


for i in {1..5}; do
    echo "Number: $i"
done


i=1
while [ $i -le 5 ]; do
    echo "Licz: $i"
    ((i++))
done


powitanie() {
    echo "Witaj, $1"
}

powitanie "Jan"

powitanie $1
# $ ./witaj.sh Jan

# $ ./witaj.sh Jan > Jan.txt    (nadpisuje plik)

# $ ./witaj.sh Jan >> Jan.txt   (dodaje do pliku)


if [ -f "Jan.txt" ]; then
    echo "Plik istnieje"
fi


# $ hostname
# $ whoami


echo "Nazwa hosta: $(hostname)"
echo "Informacja o użytkowniku; $(whoami)"


for i in {1..5}; do
    mkdir "katalog_$i"
    echo "Number: $i"
done