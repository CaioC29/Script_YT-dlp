@echo off

title Script YT-DLP By Caioba
chcp 65001 > nul

:menu
cls
echo ===== SCRIPT DE AUTOMAÇÃO PARA YT-DLP (v1.1) =====         By: Caioba
echo.
echo.
echo [1] Baixar vídeo
echo [2] Baixar áudio
echo.
echo [0] Sair
echo.
echo.
set /p opc=Insira uma opção: 
if %opc% == 1 goto video
if %opc% == 2 goto audio
if %opc% == 0 goto sair


::opc invalida
echo.
echo Opção inválida, tente novamente
timeout /t 3
echo.
cls
goto menu


:video
cls
echo ===== SCRIPT DE AUTOMAÇÃO PARA YT-DLP (v1.1) =====         By: Caioba
echo.
echo.
echo [✓] Baixar vídeo [SELECIONADO]
echo.
echo Escolha o formato:
echo.
echo [1] .mp4
echo [2] .mov
echo [3] .webm
echo.
echo [0] Voltar ao menu
echo.
echo.
set /p opc=Insira uma opção: 
if %opc% == 1 goto mp4
if %opc% == 2 goto mov
if %opc% == 3 goto webm
if %opc% == 0 goto menu 


::opc invalida
echo.
echo Opção inválida, tente novamente
timeout /t 3
echo.
cls
goto video


:mp4
echo.
set /p url=Insira a URL: 
echo.
echo Iniciando download...
echo.
yt-dlp.exe --recode mp4 %url%
echo.
pause
exit


:mov
echo.
set /p url=Insira a URL: 
echo.
echo Iniciando download...
echo.
yt-dlp.exe --recode mov %url%
echo.
pause
exit


:webm
echo.
set /p url=Insira a URL: 
echo.
echo Iniciando download...
echo.
yt-dlp.exe %url%
echo.
pause
exit


:audio
cls
echo ===== SCRIPT DE AUTOMAÇÃO PARA YT-DLP (v1.1) =====         By: Caioba
echo.
echo.
echo [✓] Baixar áudio [SELECIONADO]
echo.
echo Escolha o formato:
echo.
echo [1] .mp3
echo [2] .wav
echo [3] .opus
echo.
echo [0] Voltar ao menu
echo.
echo.
set /p opc=Insira uma opção: 
if %opc% == 1 goto mp3
if %opc% == 2 goto wav
if %opc% == 3 goto opus
if %opc% == 0 goto menu 


::opc invalida
echo.
echo Opção inválida, tente novamente
timeout /t 3
echo.
cls
goto audio


:mp3
echo.
set /p url=Insira a URL: 
echo.
echo Iniciando download...
echo.
yt-dlp.exe -x --recode mp3 %url%
echo.
pause
exit


:wav
echo.
set /p url=Insira a URL: 
echo.
echo Iniciando download...
echo.
yt-dlp.exe -x --recode wav %url%
echo.
pause
exit


:opus
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
echo.
echo Saindo...
echo.
timeout /t 3 /nobreak
exit