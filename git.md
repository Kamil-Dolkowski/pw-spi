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

git pull origin (wszystkie zmiany)

git pull origin dev (zmiany z brancha dev)

git pull --verbose  (analizuje co pobiera)

    (git pull origin dev --verbose)

git pull --dry-run  (symuluje git pull'a, do sprawdzania połączenia)

git pull --no-commit origin feature (pobierze zmiany, ale nie w formie commitu) (feature = branch?) 

    (git pull origin dev --no-commit)

git pull --rebase origin dev (pobierze zmiany i wrzuci jako 1 commit)

# git remote

git remote -v   (wyświetlanie listy połączonych repozytoriów)

git remote add [nazwa] [url]    (dodanie nowego zdalnego repozytorium)

git remote rm [shortname]   (usuwanie)

git remote rename [old-name] [new-name] (zmiana nazwy)

git remote show [shortname] (pokazuje informacje o danym repozytorium)

git remote update   (aktualizuje wszystkie repozytoria)

git remote set-url [shortname] [new-url]    (zmiana url)

git remote set-head [shortname] -a

# git push

git push [nazwa repozytorium]   ?

git push [nazwa-brancha]

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

(^ (w przypadku) warning: In the wroking copy of '' (po git add .) )

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

        /? git branch --set -upstream-to-origin/main dev ?/

# git checkout  (przełączanie pomiędzy branchami; do prac, zmian na danym branchu)

git checkout [branch-name]  (zmiana brancha)

git checkout -b [branch-name]   (tworzy i zmienia na utworzonego brancha)

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

git reset   (resetuje obszar do ostatniego commita, wycofuje zmiany ze stageingu)

git reset --soft [commit]

git reset --soft HEAD~1

git reset --hard [commit]   (usuwa zmiany)

git reset --keep [commit]   (wracamy do commita, ale pliki niezatwierdzone są zachowane)



soft vs hard



# git stash     (tymczasowo odkłada wprowadzone zmiany, na później)

git stash pop       (przywraca z powrotem)

git stash list

git stash clear

git stash drop [nazwa-brancha?]

    \? git stash ?   (przywracanie zmian, ale nieusuwanie ich ze stosu (stashu) )  ? \?

git stash show [nazwa]


# git fetch     (zawsze przed pracą!!!)

git fetch origin [nazwa-brancha]

(git fetch origin main)

git fetch --tags 

git fetch --all     (wszystkie zmiany ze zdalnych repozytoriów)

git fetch origin

git fetch --prune   (pobiera wszystkie informacje o zdalnych repozytoriach, odcięcie się od głównej gałęzi)


# git log   (pokazuje wszystkie commity)

git log -n 3

git log -n 3 --oneline

git log -n 3 --graph

git log --since="3 day ego"

git log --since="3 day ego" > log.txt

git log.txt

git log --author="[nazwa]"

git log --grep="add"

git log Raedme.md   (logi dla tego pliku)

git log --help

git log --after="2023-11-01" --before="2023-12-01"

# git diff      (wyświetla zmiany w plikach)

git diff --staged       (wyrzuca zmiany w plikach w staged)

git diff [skrócona-nazwa-commita1] [skrócona-nazwa-commita2]    (porównanie 2 commitów)

    (git diff 6e5688e 73huf32)

git diff [nazwa-branch] [nazwa-brancha]     (porównanie 2 branchy)

    (git diff main dev)

git diff [skrócona-nazwa-commita1] [skrócona-nazwa-commita2] --name-only       (lista zmian w plikach)

git diff [skrócona-nazwa-commita] -- [nazwa-pliku]      (zmiany w danym pliku w danym commitcie)

    (git diff 6hv46d -- kod.py)

git diff dev    [porównanie z innym branchem]

git diff dev --stat     (statystyki)

# git revert    (wycofanie, odrzucenie zmian przez dodanie commita) (nadpisanie commita)

git revert 4hdf6sj 

git revert HEAD     (wycofuje zmiany z ostatniego commita)

git revert 4hdf6sj --no-commit


git revert --abord ?


git reset --hard HEAD~1

git reset --soft HEAD~1




# git merge [z-nazwa-brancha] [do-nazwa-brancha]

git merge origin/dev    (z repo zdalnego mimo lokalnych plików)

git merge origin/dev --squash   (nieważne, ile commitów -> do 1 commitu)

git merge origin/dev --ff-only  

git merge origin/dev ----strategy-option ours   (nasze są ważniejsze niż inne)

git merge origin/dev ----strategy-option theirs (inne ważniejsze niż nasze)

git merge origin/dev ----strategy-option patience

git merge --abort       (przerwanie merge'a)


# git cherry-pick 9h47df

git cherry-pick --continue ( ? )








# ---------------------PRZYSZLY TYDZIEN--------------------

wt. - Python (Kolokwium)    8:00
śro - Python (wykład)
czw - Git  (Kolokwium) (kartki lub kahoot)  8:00

# ---------------------------------------------------------











*multi-repo




Get-ChildItem -Path 'C:\Users/STUDENTs$/334531' -Directory | ForEach-Object {
    $size = (Get-ChildItem -Path $_.FullName -Recurse -File | Measure-Object -Property Length -Sum).Sum
    [PSCustomObject]@{
        Katalog = $_.FullName
        Rozmiar = [Math]::Round($size / 1MB, 2)
    }
} | Sort-Object Rozmiar -Descending
