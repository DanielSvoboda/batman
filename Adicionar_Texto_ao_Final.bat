chcp 65001
@echo off
mode con: cols=60 lines=20
title Adicionar Texto ao Final

setlocal enabledelayedexpansion

:menu
cls
echo Escolha uma opção: 
echo 1 - PDF
echo 2 - TXT
echo 3 - OUTRO
set /p opcao=Digite a opção desejada: 
if %opcao%==1 goto pdf
if %opcao%==2 goto txt
if %opcao%==3 goto outro

:pdf
set /p texto=Digite o texto a ser adicionado ao final: 
call :renomear pdf %texto%
goto fim

:txt
set /p texto=Digite o texto a ser adicionado ao final: 
call :renomear txt %texto%
goto fim

:outro
set /p extensao=Digite a extensão desejada: 
set /p texto=Digite o texto a ser adicionado ao final: 
call :renomear %extensao% %texto%
goto fim

:fim
del temp.log
echo.
echo !total! arquivos foram renomeados.
echo.
set /p "prompt=Pressione ENTER para sair. "

exit /b

:renomear
set extensao=%1
set texto=%2
set total=0
dir /b | find "%extensao%" /i > temp.log
for /f "tokens=1-2 delims=." %%A in (temp.log) do (
    set "fName=%%A"
    ren %%A.%%B !fName!%texto%.%%B
    set /a total+=1
)
goto :eof
