#!/bin/bash

# $ nano [nazwa-pliku]  


#---------------------ZMIENNE---------------------
# tworzenie zmiennej
AGE=25
echo $AGE

# zmienna tylko do odczytu
# readonly AGE	#stala zmienna

AGE=35
echo $AGE

# usuwanie zmiennych
unset AGE
echo "empty": $AGE

# funkcja ze zmienna globalna
AGE=44
setAGE() {
	echo "Mama lat: $AGE"
}

setAGE
echo "Tu tez mam: $AGE"

# zmienna lokalna

setnewAGE() {
	local AGE=25
	echo "Mam lat $AGE"
}
AGE=40
setnewAGE
echo "Czy tu mam tez tyle lat?: $AGE"


# $ env | grep AGE
# $ unset AGE
# $ printenv AGE

# $ sudo -u nazwa_user printenv




#----------------------TABLICE-------------------------
#tablica
tablica=(1 2 3)

# ${tablica[index]}
echo ${tablica[2]}

#petla
for i in "${tablica[@]}"    # mozna zamiast '@' dac '*'  |   @ - z nowa linia   |  * - bez nowej linii
do
    echo "$i"
done

# nadpisanie tablicy
tablica=("ssss" "aaaa" "zzzz")

for i in "${tablica[*]}"
do
    echo "$i"
done

# ostatnia wartosc tablicy
echo "Ostatnia wartosc: ${tablica[-1]}"

# usuwanie watosci z tablicy
echo ${tablica[*]}
unset tablica[-1]
echo ${tablica[*]}

# dodawanie wartosci do tablicy
tablica[3]="xxxx"
echo ${tablica[*]}

# uzyskiwanie indexu
echo ${!tablica[*]}

# lista kluczy
for i in "${!tablica[@]}"
do
    echo "$i" "${tablica[$i]}"
done


# declare -a      # tablica indeksacyjna
# declare -A      # tablica asocjacyjna

# utworzenie tablicy indeksacyjnej
declare -a tablica
tablica[1]="ssss"

# utworzenie tablicy asocjacyjnej
declare -A rok
rok["jeden"]="pierwszy"
rok["dwa"]="drugi"
echo ${rok[*]}





#----------------------STRINGI------------------------
# stringi
text1="aaaaa"
text2="bbbb"

echo "$text1 $text2"
echo $text1 $text2

text1="${text1} cccc"
echo $text1

text1+="ffff"
echo $text1


if echo "$text1" | grep -q "cccc"; then
    echo "cccc wystepuje w stringu"
fi





#--------------------KATALOGI/PLIKI---------------------

katalog=kuba

if [ -d "$katalog" ]; then
    echo "Katalog istnieje"
else
    echo "Katalog nie istnieje"
    mkdir "$katalog"
fi



[ -d "$katalog" ] && echo "Katalog istnieje" || echo "Katalog nie istnieje"


# czy istnieje:
# -e    plik
# -d     katalog







#------------------------------------------------------

x=10
y=10

if (( x == y )); then
echo "Te wartosci sa rowne"
fi



if [ "$x" -eq "$y" ]; then
    echo "Wartosci sa rowne"
fi
