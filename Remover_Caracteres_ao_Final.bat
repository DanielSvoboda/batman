chcp 65001
@echo off
mode con: cols=60 lines=20
title Remover Caracteres ao Final

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
set /p caracteres=Digite o número de caracteres a serem removidos: 
call :renomear pdf %caracteres%
goto fim

:txt
set /p caracteres=Digite o número de caracteres a serem removidos: 
call :renomear txt %caracteres%
goto fim

:outro
set /p extensao=Digite a extensão desejada: 
set /p caracteres=Digite o número de caracteres a serem removidos: 
call :renomear %extensao% %caracteres%
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
set caracteres=%2
set total=0
dir /b | find "%extensao%" /i > temp.log
for /f "tokens=1-2 delims=." %%A in (temp.log) do (
    set "fName=%%A"
    ren %%A.%%B !fName:~0,-%caracteres%!.%%B
    set /a total+=1
)
goto :eof
