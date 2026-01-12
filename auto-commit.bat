@echo off
cd /d C:\qa-auto-commit-horario

git add .

git diff --cached --quiet
IF %ERRORLEVEL% NEQ 0 (
    git commit -m "auto commit"
    git push origin main
)
