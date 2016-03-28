#!/bin/sh

## The popular git commands using for maintenance Pandora project at GitHub
## Uncomment necessary line, comment out unnecessary, and run the script.
## RU: Популярные команды git, используемые для сопровождения Пандоры на Гитхабе
## RU: Раскомментируй нужные строки, закомментируй ненужные, и запусти скрипт.
## 2012(c) Michael Galyuk, Pandora, freeware

## Init git on your computer
## (Change name and email!)
#git config --global user.name "Michael Galyuk"
#git config --global user.email ironsoft@mail.ru
#git config --global color.ui true
#git config --global core.safecrlf true
#git config --global core.autocrlf false
#git config --global core.eol native
#git config --global credential.helper cache
#git config credential.helper 'cache --timeout=3600'

## Start new repository
#git init
#git add README.TXT
#git commit -m "first commit"
#git remote rm origin
#git remote add origin https://github.com/Novator/Pandora.git
#git remote add robux ssh://user@git.site.biz:222/pandora
#git clone --depth=1 git://git.site.biz/pandora
#git push -u origin master

## Auto start server (add to /etc/rc.local)
#git daemon --detach --verbose --base-path=/home/theuser/pathto/repos --max-connections=3 --syslog --export-all

## Switch the repo to server mode, back to local mode and update files (bare is not mandatory)
#git config --bool core.bare true
#rm ./.git/shallow
#git config --bool core.bare false
#git reset --hard master

## Show state
#git status
#git remote -v
#git branch -v
#git diff
#git log

## Push files from local to repository
#git add --all
git commit -a -m "version 0.50 alpha"
git push -u bitbuc master
git push -u github master
#git push -u robux master
#git push -u bitbuc develop
#git push -u github develop

##Cancel last commit with save current files
#git reset --soft HEAD~1
#git reset --soft HEAD^
##Cancel last commit without save current files
#git reset --hard HEAD^
#git push -f origin master

##Modify last commit
#git commit --amend

## Ignore list. Exclude or remove(!) files
#nano .gitignore
#git rm --cached rubyfull.exe
#git rm rubyfull.exe

## Rename file or directory
#git mv ruby.exe rubyfull.exe

## Getting repository to local without history
#git clone --depth=1 https://github.com/Novator/Pandora.git

## Getting changes from repository to local (with or without merge)
#git pull
#git fetch

## Merge pull from another brunch
#git pull https://github.com/rc5hack/Pandora master

##See number of commits, merge commits and update repository
##(set number of commits after "HEAD~", modify "pick" to "s" in all lines besides first)
#git reflog
#git rebase -i HEAD~4
#git push -f

##Pack git objects
#git gc

##Create branch, move to it, or both
#git branch testing
#git checkout testing
#git checkout -b 'testing'

##Merge branch, see conflits, add corrects, and delete unused branch
#git checkout master
#git merge develop
#git status
#git add pandora.rb
#git commit
#git branch --merged
#git branch --no-merged
#git branch -d testing

