#!/bin/bash


# if [ "$1" == "plik" ]; then
#     touch "$2"
#     echo "Utworzono plik $2."
# elif [ "$1" == "katalog" ]; then
#     mkdir "${2:-"plik.txt"}"
#     # mkdir "$2"
#     echo "Utworzono katalog $2."
# else
#     echo "Nieznana akcja"
# fi


# $1 - zmienna 1
# $# - ilość zmiennych
# $@ - zbiór zmiennych


# for arg in "$@"; do 
#     echo "Argument: $arg"
# done
# # $ ./plik.sh 1 2 3 4 5 6 7 8


for (( i=1; i<=$#; i++ )); do
    echo "Argument $i" 
done
# $ ./plik.sh 1 2 3 4 5 6 7 8