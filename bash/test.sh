#!/bin/bash

echo "Jak masz na imię?"
read imie
echo "Cześć, $imie!"


echo "Podaj liczbę."
read liczba

# -gt >      -lt <
if [ $liczba -gt 10 ]
then
    echo "Liczba większa od 10."
else
    echo "Liczba mniejsza lub równa 10"
fi


for i in {1..10}
do
    echo "Iteracja $i"
done


for ((i=1; i<=$liczba; i++)) 
do
    echo "Iteracja $i"
done


while [ $liczba -le 5 ]
do
    echo "Liczba: $liczba"
    ((liczba++))
done


liczenie() {
    while [ $1 -le 5 ]
do
    echo "Liczba: $1"
    ((liczba++))
done
}

liczenie $liczba


if [ -f "$1" ]      # -f  ->  file exists ?
then
    echo "Plik istnieje"
else

fi




# --------------------------- ls ------------------------------
# $ ls ../      - nadrzędny katalog
# $ ls -l       - bardziej szczegółowe dane
# $ ls -lS      - sortuj po rozmiarze
# $ ls -lSr     - odwraca sortowanie (r)
# $ ls -lSra    - pokazuje pliki ukryte (a)
# $ ls -lSrah   - pokazuje w kilobajtach (h)
# $ ls -lt      - posortowane po dacie (t)
# $ ls -lt | grep .py   - określone pliki (grep) [pattern]
# $ ls -1       - w kolumnie
# $ ls katalog/ katalog/    - wylistuje kilka katalogów