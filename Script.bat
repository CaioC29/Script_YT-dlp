@echo off

title Script de automacao para YT-DLP By Caioba
chcp 65001 > nul

:menu
echo ===== SCRIPT DE AUTOMAÇÃO PARA YT-DLP =====         By: Caioba
echo.
echo.
echo (1) Baixar vídeo em qualidade máxima
echo (2) Baixar somente áudio
echo (0) Sair
echo.
echo.
set /p opc=Insira uma opção: 
if %opc% == 1 goto video
if %opc% == 2 goto audio
if %opc% == 0 goto sair


::opc invalida
echo.
echo Opção inválida, retornando ao menu
timeout /t 3
echo.
cls
goto menu


:video
echo.
set /p url=Insira a URL: 
echo.
echo Iniciando download...
echo.
yt-dlp.exe -f "bestvideo[ext=mp4]+bestaudio[ext=m4a]/best[ext=mp4]/best" %url%
echo.
pause
exit


:audio
echo.
set /p url=Insira a URL: 
echo.
echo Iniciando download...
echo.
yt-dlp.exe -x %url%
echo.
pause
exit


:sair
cls
color 04
echo Tchau
timeout /t 5 /nobreak
exit