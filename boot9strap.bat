@echo off
title boot9strap 1.1

::Created by @enfier & the rest of the boot9strap team
::April 2022

:menu
cls
color 09
echo[
echo[
echo       $$\                            $$\      $$$$$$\              $$\                                  
echo       $$ l                           $$ l    $$  __$$\             $$ l                                 
echo       $$$$$$$\   $$$$$$\   $$$$$$\ $$$$$$\   $$ /  $$ l $$$$$$$\ $$$$$$\    $$$$$$\  $$$$$$\   $$$$$$\  
echo       $$  __$$\ $$  __$$\ $$  __$$\\_$$  _l  \$$$$$$$ l$$  _____l\_$$  _l  $$  __$$\ \____$$\ $$  __$$\ 
echo       $$ l  $$ l$$ /  $$ l$$ /  $$ l $$ l     \____$$ l\$$$$$$\    $$ l    $$ l  \__l$$$$$$$ l$$ /  $$ l
echo       $$ l  $$ l$$ l  $$ l$$ l  $$ l $$ l$$\ $$\   $$ l \____$$\   $$ l$$\ $$ l     $$  __$$ l$$ l  $$ l
echo       $$$$$$$  l\$$$$$$  l\$$$$$$  l \$$$$  l\$$$$$$  l$$$$$$$  l  \$$$$  l$$ l     \$$$$$$$ l$$$$$$$  l
echo       \_______/  \______/  \______/   \____/  \______/ \_______/    \____/ \__l      \_______l$$  ____/ 
echo                                                                                               $$ l      
echo                                                                                               $$ l      
echo                                                                                               \__l          
echo[
echo                                                 Select an option.
echo                                          [ 1. Bootstrap NTRBoot (Begin) ]
echo                                                  [ 2. Options ]
echo                                              [ 3. Exit boot9strap ]
echo[
set /p "menu=Selected option: "
if "%menu%" equ "1" goto startup
if "%menu%" equ "2" goto options
if "%menu%" equ "3" exit
goto menu

:options
cls
echo[
echo                    /$$$$$$              /$$     /$$                              
echo                   /$$__  $$            l $$    l__/                              
echo                  l $$  \ $$  /$$$$$$  /$$$$$$   /$$  /$$$$$$  /$$$$$$$   /$$$$$$$
echo                  l $$  l $$ /$$__  $$l_  $$_/  l $$ /$$__  $$l $$__  $$ /$$_____/
echo                  l $$  l $$l $$  \ $$  l $$    l $$l $$  \ $$l $$  \ $$l  $$$$$$ 
echo                  l $$  l $$l $$  l $$  l $$ /$$l $$l $$  l $$l $$  l $$ \____  $$
echo                  l  $$$$$$/l $$$$$$$/  l  $$$$/l $$l  $$$$$$/l $$  l $$ /$$$$$$$/
echo                   \______/ l $$____/    \___/  l__/ \______/ l__/  l__/l_______/ 
echo                            l $$                                                  
echo                            l $$                                                  
echo                            l__/         
echo[
echo Select a game to run boot9strap on below:
echo  Auxilium [CURRENTLY SELECTED]
echo  JesusAI [COMING SOON] 
echo  Flip a Coin [COMING SOON]
echo  alist [COMING SOON]
echo[
echo Type anything to return to the menu.
echo[
set /p "options=?: "
if "%options%" equ "dsfblahbl;ahbvolah" exit
goto menu                                       

:startup
cls
cd Downloads
cd boot9strapbeta
if not exist "file\replace.txt" (
    goto fail1
)
if exist "Auxilium.bat" (
    ren Auxilium.bat Auxilium.txt
    goto step2
)
goto fail

:fail1
cls
echo[
echo boot9strap failed to grab replacement file.
echo NTRBoot has crashed due to this.
echo Please make sure all files are in their proper locations.
echo Type anything to exit.
echo[
set /p "aaaa="
if "%aaaa%" equ "inshdfo;shf;osdif" exit
exit

:fail
cls
echo[
echo boot9strap failed to recode Auxilium.
echo This is likely due to Auxilium not being in the proper directory.
echo Type anything to exit.
set /p "sdoifjsdiofsi="
if "%sdoifjsdiofsi%" equ ";ohijhiohi;o" exit
exit

:step2
cls
type "file\replace.txt" > Auxilium.txt
goto step3

:step3
cls
ren Auxilium.txt Auxilium.bat
cd logs 
echo Successful recode on %date% %time% >> boot9straplog.txt
exit