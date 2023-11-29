# git init

Opis: Inicjalizuje nowe repozytorium Git.
Przykład: git init

# git clone [url]

Opis: Klonuje istniejące repozytorium z podanego URL.
Przykład: git clone hhtps://github. ...
            
git clone [url] [katalog] ( . .. ~ / )
            
git clone --branch [branch-name] [url]

git clone --depth 1 [url]   (depth - głębokość/historia repozytorium) (1 - ostatni commit)

git clone --mirror [url]    (kopiuje wszystkie branche, tagi, itp.)

# git add [file]

git add [directory]

git add .   (wszystko)

git add -A  (wszystko)

git add -u  (dodaje wszystkie updatetowane(zmodyfikowane) (nie nowo utworzone!))

git add --ignore-removal    (dodaje wszystkie oprócz usunietych)

git add [file1] [file2]

git add "*.py"

# git commit -m "[commit message]"

git commit -a -m "[commit message]" (wszystko)

git commit -am "[commit message]" (to samo co na górze)

git commit --amend -m "[change last commit message]"  (korekta ostatniego commitu)

git commit --amend --no-edit    (wrzucenie czegoś do starego commita, bez dodawania nowego)

git commit --allow-empty -m "Pusty commit"  (pusty commit)

git commit -m "Tytuł commita" -m "Dalszy opis zmian"

# git status

git status -s   (zwarty sposób)

git status -u   (pokazuje wszystkie nieśledzone pliki?)

git status -b   (informacje o bieżącej gałęzi i porównuje z repozytorium)

git status --ignored    (pokazuje pliki ignorowane)

git status --show-stash (pokazuje pliki, które są w stashu)

# git pull

git pull origin

git pull origin dev

git pull --verbose

git pull --dry-run  (symuluje git pull'a, do sprawdzania połączenia)

git pull --no-commit origin feature (pobierze zmiany, ale nie w formie commitu) (feature = branch?)

# git remote

git remote -v   (wyświetlanie listy połączonych repozytoriów)

git remote add [nazwa] [url]    (dodanie nowego repozytorium)

git remote rm [shortname]   (usuwanie)

git remote rename [old-name] [new-name] (zmiana nazwy)

git remote show [shortname] (pokazuje informacje o danym repozytorium)

git remote update   (aktualizuje wszystkie repozytoria)

git remote set-url [shortname] [new-url]

git remote set-head [shortname] -a

# git push

git push [nazwa repozytorium]

# git config 

git config --global user.name "[name]"

git config --global user.email "[email address]"

git config --global core.editor "[editor]"  (konfiguracja edytora systemowego?)

(edytory: vim, VScode)

git config --list

git config user.email

git config --global alias.[alias-name] '[command]'

git config --global alias.st 'status'

/n/r
git config --global core.autocrlf [true|false|input]    (zmienia znak końcowy linii? (\n) )

git config --global core.ignorecase [true|false]

git config --global merge.tool [tool]

git config --global diff.tool [tool]

git config --global core.filemode [true|false]




rebase vs merge

rebase - przenoszone są wszystkie brakujące commmity do brancha głównego
merge - przenoszony jest tylko ostatni commit do brancha głównego

# git rebase

# git merge

# git branch    (wyświetlenie wszystkich branchy)

git branch [nazwa-brancha]  (utworzenie brancha)

git branch -d [branch-name]     (usunięcie brancha (lokalnie) )

git branch -D [branch-name]     (force remove - wymusza usunięcie gałęzi (brancha) )

git branch -m [old-name] [new-name]     (zmiana nazwy brancha)

git branch -r   (wyświetlenie zdalnych branchy)

git branch -a   (wszystkie branche)

git branch --show-current

git branch -v   (wyświetlenie ostatniego brancha?)

git branch --merged

git branch --no-merged [branch] (pokazuje branche, które nie zostały zmergowane z bieżącą)

git branch --contains [commit]  (wyświetli branche w commitcie?)

git branch -vv

git branch --sort=[key]     (wyświetlenie posortowanych branchy wg klucza)

git branch --sort=committerdate

git branch [branch-name] [start-point]  (branch z brancha)

git branch --copy feature-old feature-new (skopiowanie brancha) (do którego istnieje)

git branch --move [old-branch] [new-branch]

git branch --edit-description [branch-name]

git branch --list [pattern]     (wylistowanie brancha wg wzorca) (pattern - najczęściej regex)

git branch --list 'feature*'

git branch --delete --remotes [remote/branch]   (usuwanie brancha z repozytorium (zdalnie) ) (UWAGA!!!)

git branch --force [branch-name]    (wymuszenie)

git branch --color  (kolory w wyświetlaniu gałęzi)

# git checkout  (przełączanie pomiędzy branchami; do prac, zmian na danym branchu)

git checkout [branch-name]  (zmiana brancha)

git checkout -b [branch-name]   

git checkout [commit-hash]  

git checkout -- [file-name] (przywraca stan z ostatniego commita)

git checkout [branch-name] -- [file-name]   (zmiany, plik z innego brancha na obecny?)

git checkout -      (zmiana na ostatni branch)

git checkout --orphan new-start     (branch bez historii)

git checkout [tag-name] 

git checkout v1.0.0

git checkout -b [new-branch] [start-point]

# tag - checkpoint, milestone 

git tag     (wyświetlenie tagów)

git tag [tag-name]  (utworzenie taga na bieżącym commitcie)

git tag -a [tag-name] -m "[message]"    

git tag -d [tag-name]   (usunięcie taga)

git show [tag-name]     (informacje o tagu?)

git push [remote] [tag-name]

git push [remote] --tags    (wszystkie)

git tag -l "[pattern]"

git tag -l "v1.*"

git checkout [tag-name]

git tag -a [tag-name] [commit-hash] -m "[message]"

# git reset     (wycofywanie zmian w repozytorium)

git reset [file]    (ze stageingu)

git reset (resetuje obszar do ostatniego commita, wycofuje zmiany ze stageingu)

git reset --soft [commit]

git reset --soft HEAD~1

git reset --hard [commit]   (usuwa zmiany)

git reset --keep [commit]   (wracamy do commita, ale pliki niezatwierdzone są zachowane)



soft vs hard
















Get-ChildItem -Path 'C:\Users/STUDENTs$/334531' -Directory | ForEach-Object {
    $size = (Get-ChildItem -Path $_.FullName -Recurse -File | Measure-Object -Property Length -Sum).Sum
    [PSCustomObject]@{
        Katalog = $_.FullName
        Rozmiar = [Math]::Round($size / 1MB, 2)
    }
} | Sort-Object Rozmiar -Descending
