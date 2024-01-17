# książka ("Projekt Phoenix") "The Phoenix project" Gene Kim, Kevin Behr

# podejście scramowe (elastyczne do pracy)

transparentność i przekazywanie wiedzy




# LINUX

# whoami
# ls, cd, rm, mv, cp, touch, mkdir, rmdir, sudo

rmdir -r   - katalog z wszystkimi plikami
rmdir      - usuwa pusty katalog
rm - do plików    rmdir - do katalogów


# grep, find

ls -la | grep nazwa_katalogu
grep 'tekst' nazwapliku.txt
grep -r 'tekst' /nazwakatalogu
grep -i 'tekst'     ( wyszukuje po "tekst", "TEkst" )
-n - pokazuje numery wierszy
-l - nazwy plików, w które zawierają dane dopasowanie
grep -l 'tekst' *.txt
-v - te, które nie zawierają danego "tekst"

find nazwa pliku
find /nazwaKatalogu
find /path -perm 644
find /path -size +10M   (znajdzie wszystkie pliki większe niż 10M w danej ścieżce)
find /path -mtime 10    (10 dni wstecz)



>   nadpisanie i utworzenie pliku
>>  dodanie
<   wsad do polecenia
|   pipe - w 1 wierszu wiele poleceń (chain)


# ping

ping [ip] - sprawdzanie komunikacji z innym danym ip
ping onet.pl -t     - ping cały czas (CTR+C, aby zatrzymać)
ping onet.pl -l 1024  - wielkość 1024 bajty


Reply from 18.66.233.80: bytes=32 time=3ms TTL=248
czas odpowiedzi (wysłania i powrotu informacji)


# ssh 

ssh user@ip
ssh-keygen
ssh-copy-id user@ip


# scp, rsync

scp - Secure copy
scp lokalny_katalog user@ip:zdalny_katalog
scp -r      (cały katalog)
scp -p      (wszystkie dane ?)

rsync - dynamiczne kopiowanie

# procesy

ps - aktywne procesy

ps aux 
ps aux | grep nazwa

top - interaktywne monitorowanie procesów 

kill [PID] - zabijanie procesu po PID-dzie
kill nazwa_procesu
killall

htop - zaawansowana wersja top-a


# df, du, free

df - disk free      (informacje o wolnej przestrzeni)
du - disk useage    (informacje o zużytej przestrzeni)

df -h  (całkowite wolne miejsce)
du -sh (w bieżącym katalogu)

free -h     (pamięć RAM)


# curl, wget - pobieranie danych

# tar, zip, unzip  - kompresja i dekompresja danych

tar - kompresja


# sieciowe

netstat - informacje o połączeniach
netstat -r   - routing
netstat -i   - interface
netstat -tuln

*PCP *UDP
jak analizować porty?


# ipconfig

ipconfig - konfiguracja i zarządzanie ustawieniami interface'ów sieciowych
ip addr


# tracert

tracert onet.pl

*cloudfront
*DHCP


# Jak sprawdzić swoje ip?

ipconfig /all


SSH - port 22

# KOLOKWIUM ?

Na jakich portach działają?

Porty zastrzeżone:

Porty otwarte:


# różne

nslookup google.pl  - rozpoznawanie nazw hostów

dig - nowsza wersja nslookup

nmap -v A adresip - przeskanuje tą sieć

tcpdump -i eth0 - analiza ruchu sieciowego


useradd

chmod
chall ? - kto jest właścicielem pliku


# zmienne środowiskowe

env

echo $PATH


# tail, head

# cronjob - co jakiś czas uruchamiany jest pewien skrypt

jobs - wyświetla robione prace

bg %1 - wznawia procesy

fg %1 - na wierchu, na pierwszy plan (proces)

screen
screen -S nazwa  - tworzenie nowe
screen -r nazwa  - ?
screen -ls - wyświetlenie wszystkich

skakanie pomiędzy terminalami - (CTRL+A+D)