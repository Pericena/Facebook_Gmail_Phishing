@rem bin\windows\bat
@rem Autor Luishiño Pericena Choque
@rem Informacion:
@rem Sigueme en las redes Sociales:
@rem Blogger          https://lpericena.blogspot.com/
@rem Github            https://github.com/Pericena
@rem youtube.com  https://www.youtube.com/channel/UCELx1m-NeAdBn7mCuQ86kcw
@rem pinterest        https://es.pinterest.com/lushiopericena/
@rem twitter             https://twitter.com/LPericena
@rem linkedin         https://www.linkedin.com/in/lpericena/
@rem facebook       https://www.facebook.com/profile.php?id=100009309755063
@rem pagina facebook  https://www.facebook.com/lpericena
@rem sitio web        https://pericena.wordpress.com/
@rem vimeo         https://vimeo.com/lpericena
@rem instagram      https://www.instagram.com/lpericena/
@rem remote      https://remote.com/luishinopericena-choque
@rem google+   https://plus.google.com/u/0/114054031405340478901
@rem kiwi       https://kiwi.qa/LuishinoC
@rem App    https://apps.facebook.com/167466933725219
@rem Grupo    https://www.facebook.com/groups/122223121705126/?source_id=1506435219407506
@rem socialtools https://www.socialtools.me/index?action=demoApps&preview=1&app_id=406101
@rem teachlr    https://teachlr.com/lpericena
@rem wikipedia  https://es.wikipedia.org/wiki/Usuario:Luishi%C3%B1o_Pericena_Choque
@rem ask          https://ask.fm/Lpericena
@rem stackoverflow  https://stackoverflow.com/users/6506592/luishi%C3%B1o-pericena-choque
@rem wix https://lpericena.wixsite.com/curriculumvitae

@echo OFF
MODE con: cols=100 lines=30
@echo OFF
title Agony
COLOR 02
@echo OFF
:menu
echo.
echo.                                 ______ _     _     _     _             
echo.                                 ^| ___ \ ^|   (_)   ^| ^|   (_)            
echo.                                 ^| ^|_/ / ^|__  _ ___^| ^|__  _ _ __   __ _ 
echo.                                 ^|  __/^| '_ \^| / __^| '_ \^| ^| '_ \ / _` ^|
echo.                                 ^| ^|   ^| ^| ^| ^| ^\__ \ ^| ^| ^| ^| ^| ^| ^| (_^| ^|
echo.                                 \_^|   ^|_^| ^|_^|_^|___/_^| ^|_^|_^|_^| ^|_^|^\__, ^|
echo.                                                                   __/ ^|
echo.                                                                  ^|___/ 
echo.                                        ___  Autor : Luishiño Pericena Choque 
echo.                                       / _ \   https://lpericena.blogspot.com/
echo.                                      / /_\ \ __ _  ___  _ __  _   _ 
echo.                                      ^|  _  ^|/ _` ^|/ _ \^| '_ \^| ^| ^| ^|
echo.                                      ^| ^| ^| ^| (_^| ^| (_) ^| ^| ^| ^| ^|_^| ^|
echo.                                      \_^| ^|_/\__, ^|^\___/^|_^| ^|_^|^\__, ^|
echo.                                              __/ ^|             __/ ^|
echo.                                             ^|___/             ^|___/                                     							 
echo.version node
call node -v
echo.version npm
call npm -v
title Agony
echo.
echo. Elige una de las opciones...
echo.
::echo.         [F] Facebook  
call powershell Write-Host "[F] Facebook " -ForegroundColor blue
::echo.         [G] Gmail
call powershell Write-Host "[G] Gmail" -ForegroundColor red
::echo.         [C] Cancelar
call powershell Write-Host "[C] Cancelar" -ForegroundColor green
title Agony
echo.
set /p app= Seleccione una opcion[+]
if %app%==F goto :Si
if %app%==f goto :Si
if %app%==G goto :No
if %app%==g goto :No
if %app%==c goto :Cancelar
if %app%==C goto :Cancelar
:Si
cd ./facebook/
call facebook.exe
goto menu
:No
cd ./gmail
call gmail.exe
goto menu
:Cancelar
exit






