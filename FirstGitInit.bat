@echo off
title gitProcess
:main
echo enter username for git
set /p uname= enter a username:  
git init
git config --global user.name "%uname%"
set /p email= enter the email: 
git config --global user.email "%email%"
git status
git add .
git status
set /p message= enter message for committing the git: 
git commit -m "%message%"
git log
git remote -v
set /p nodename= enter a nodename (say origin) for git remote: 
set /p address= enter the address for git remote: 
git remote add %nodename% "%address%"
git remote branch -M master
git push -u %nodename% master
pause
cmd /k