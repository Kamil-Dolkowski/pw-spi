https://arturpyszczuk.pl/commands-chmod.html

$ touch nazwa.sh

$ chmod +x nazwa.sh

$ ./nazwa.sh


# u=rwx, g=r-x, o=r--
chmod 754 nazwa.sh

chmod (zmiana dostępu do plików)

chmod u=rwx,g=rx,o=r nazwa.sh

chmod a+x nazwa.sh

chmod g-x nazwa.sh

chmod go-w nazwa.sh

chmod -R 644 katalog/
-R - wszystkie pliki z katalogu z uprawnieniami

chmod --help



#!/bin/bash - w 1 linijce każdego pliku bash




ls - lista
-la  - atrybuty

          upr użytk. grupa
-rw-r--r-- 1 334531 1049089    0 Nov  9 10:37 cw6.py
drwxr-xr-x 1 334531 1049089    0 Nov 22 15:01 images/
upr=uprawnienia


ls -la > lista.txt  (wypisać do pliku)
ls -la < lista.txt  (wypisać z pliku)


r - read (czytanie)
w - write (pisanie)
x - execute (wykonanie)

   u   g   o
d rwx rwx rwx

u-user
g-group
o-order

d - directory
- - zwykłe pliki
f - FIFO
c - urządzenie znakowe
b - urządzenie blokowe
s - gniazdo



# dodawanie uprawnień
+ - dodawanie
- - odejmowanie
= - ustawianie
u - użytkownik
g - grupa
o - pozostali
a - wszyscy