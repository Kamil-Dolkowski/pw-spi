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
