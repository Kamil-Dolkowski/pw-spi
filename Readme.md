# dodanie usera i maila
git config --local user.name ""

git config --local user.email ""


git config --global user.name ""

git config --global user.email ""

# nowe repo
git init

# klonowanie repo
git clone
# tworzy nowy katalog 
git clone https://

# klon do aktualnego katalogu 
git clone https:// .

git clone https:// /nowy-katalog

# dodanie pliku do staging
git add nazwa-pliku

git add *       (wszystkie)

git add *.py    (wszystkie z końcówką .py)

git add .       (aktualny katalog)

git add Readme.md index.html

git add -h  (?help)

# komitowanie zmian
git commit -m"zmiany"

# status zmian
git status

git status -s

# pobranie wszystkich zmian z repo
git fetch

# pobierz zmiany
git pull

# wypchnij zmiany
git push

# utwórz branch
git checkout -b nazwa-brancha

git branch nazwa-brancha

# lista branchy
git branch 

# usuwanie brancha
git branch -d nazwa-brancha

# polaczenie z github
git remote add origin "link http"

# gdzie jest .gitconfig
git config --list --show-origin

git config --global core.editor emacs ("'C:// ")

# ustawienie brancha default
git config --global init.defaultBranch main

git config --global init.defaultBranch master


git help config

# git diff
git diff --staged   (staged_changes)

git diff            (changes)

git log

# usuwanie zmian
git reset HEAD Readme.md

git checkout -- Readme.md

# add, mod, delete remote url
git remote -v

git remote add test https://github.com/Kamil-Dolkowski/test.git

# .gitignore  -  strona do generowania .gitignore
https://www.toptal.com/developers/gitignore/

# fork - pobieranie rezpozytorium do siebie do własnego użytku, nie zmieniając oryginału

# git remote
git remote -v

git remote show origin

git remote rename test test2

git remote remove test2

# tagi
git tag

git tag -a v1.3 -m"Fix poprawy wydajnosci"

git push origin --tags

git tag -d v1.3 (usuwanie)

# wersjonowanie semantyczne
https://semver.org/lang/pl/

# aliasy

# branche
git branch

git branch nowy

git checkout -b nowy2

# folders
feature, refactor, bugfix, hotfix, release

git branch feature/1-dodanie-strony

git branch feature/2-dodanie-footer

git branch feature/3-kontakty

1234


