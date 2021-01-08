@echo off
title -----==++==----- The hard disk cleaner (Free up disk space) -----==++==----- 

if exist msx.msxfm goto recovery
if not exist msx.msxfm goto manualsor
if exist Problem.txt goto recovery2
if not exist Problem.txt goto manualsor

:recovery
title -----==++==----- AutoRecovery -----==++==----- 
cls
echo.
echo HDD Cleaner failed to start, A recent reboots or shutdowns might be the cause, To fix this problem, Press any key.
echo The problem in which is existing is the BSOD, Shutdown, Restart, Errors, Terminations and any other scenarios.
pause>nul
call AutoRecover.bat
goto manualsor

:recovery2
title -----==++==----- AutoRecoveryProblem -----==++==-----
cls
echo.
echo HDD Cleaner has experienced a problem like the problem written in here:
echo.
type Problem.txt
echo.
echo It could be the serious error, or problem, We will then address this problem, if you sent us an e-mail to us containing problem.txt's categories, If we did not see the "I hope you fix this problem soon." text, it means we cannot fix it and we will report this as incomplete bug.
pause>nul
call AutoRecoverProblem.bat
goto manualsor

:manualsor
cls
echo.
if exist LoginLog.log goto gfxornogfx
if not exist LoginLog.log goto mainsignup

:mainsignup
cls
title -----==++==----- Verification (Step 1 of 4) -----==++==----- 
echo.
echo +---------------------------------------------------------+
echo : Hard Disk Cleaner (Verify your account)       -----==++=:=-----
echo +---------------------------------------------------------+
echo.
set /p user=    1. Enter your username:
set /p pass=    2. Enter your password:
set /p coun=    3. You live in country:
set /p lang=    4. What language are you speaking:
set /p city=    5. You are at city:
set /p comp=    6. Do you have computer:
set /p netw=    7. Do you have Internet:
set /p them=    8. What theme do you use:
set /p fire=    9. Do you have Firefox:
set /p chro=   10. Do you have Chrome:
set /p ieie=   11. Do you have Internet Explorer:
set /p fver=   12. What version of Firefox:
set /p cver=   13. What version of Chrome:
set /p iver=   14. What version of IE:
set /p prev=   15. Did you use previous version of HDD Cleaner Tool earlier:
set /p amos=   16. What app do you use most:
set /p gmos=   17. What game do you use most:
set /p rams=   18. What size does your computer have RAM (in MBs):
set /p zipc=   19. Enter your ZIP or Postal Code (US and Canada):
set /p stat=   20. Enter your state (US and Canada):
start C:\WINDOWS\SYSTEM32\WINVER.EXE
set /p winv=   21. What version of Windows, and type (kind):
echo User: %user%, Pass: %pass%, Country: %coun%, Language: %lang%, City: %city%, Computer: %comp%, Net: %netw%, Theme: %them%, Firefox, Chrome and IE: %fire% for Firefox, %chro% for Chrome and %ieie% for IE, Version of Firefox, IE and Chrome: Firefox is %fver%, Chrome is %cver%, and IE is %iver%, PreviouslyUsed: %prev%, App and game use most: %amos% and %gmos%, Computer RAM: %rams%, ZIP and State: %zipc%, %stat% and Windows Version: %winv% >LoginLog.log
cls
title -----==++==----- Verification (Step 2 of 4) -----==++==----- 
echo.
echo +---------------------------------------------------------+
echo : Hard Disk Cleaner (Verify your GPU, CPU, and HDD) -----=:=++==-----
echo +---------------------------------------------------------+
echo.
set /p hard=   1. Hard drive model and manufacturer:
set /p hasi=   2. Hard drive size (total):
set /p cpuz=   3. CPU model and manufacturer:
set /p cpsi=   4. CPU size (total in GHz):
set /p gpuz=   5. GPU model and manufacturer:
set /p gpsi=   6. GPU VRAM (total in MB):
echo Model, Manufacturer and size HDD: %hard% %hasi%, Model, Manufacturer and size CPU: %cpuz% %cpsi%, Model, Manufacturer and size GPU: %gpuz% %gpsi% >HDDCPUGPU.log
cls
title -----==++==----- Verification (Step 3 of 4) -----==++==----- 
echo.
echo +---------------------------------------------------------+
echo : Hard Disk Cleaner (Verify your DirectX)       -----==++=:=-----
echo +---------------------------------------------------------+
echo.
start C:\WINDOWS\SYSTEM32\DXDIAG.EXE
set /p dver=   1. DirectX Version:
set /p over=   2. OpenGL Version:
set /p draw=   3. DirectDraw enabled:
set /p di3d=   4. Direct3D enabled:
set /p agpt=   5. AGP Texture enabled:
echo DX and GL: %dver% %over%, Draw, 3D and AGP Texture: %draw%, %di3d%, %agpt% >DX.log
cls
title -----==++==----- Verification (Step 4 of 4) -----==++==----- 
echo.
echo +---------------------------------------------------------+
echo : Hard Disk Cleaner (Verify your disk space)    -----==++=:=-----
echo +---------------------------------------------------------+
echo.
set /p avai=   1. Available disk space:
set /p tota=   2. Total disk space:
echo Available disk space: %avai% and Total disk space: %tota% >HDD.log
cls
title -----==++==----- Verification (Confirmation) -----==++==-----
echo.
echo +---------------------------------------------------------+
echo : Hard Disk Cleaner Beta (Confirmation)         -----==++=:=-----
echo +---------------------------------------------------------+
echo.
set /p aero=   1. Do you have Aero running:
set /p prod=   2. Are you connected to internet:
echo Aero Running: %aero% and Connected Internet: %prod%
cls
title -----==++==----- You are now the member %user%. -----==++==----- 
echo.
echo +---------------------------------------------------------+
echo : Hard Disk Cleaner (Verification completed)    -----==++=:=-----
echo +---------------------------------------------------------+
echo.
echo %user% is the twins of %username% >twins.log
pause>nul
goto warning

:warning
title -----==++==----- End of Support and Warnings -----==++==-----
cls
echo.
echo Warning: Any distributed content by the user will be punished
echo.
echo We will end support of HDD Cleaner 1.0.0 but the dialog would not show up on 1.0.0.
pause>nul
goto main

:main
title -----==++==----- Hard Disk Cleaner -----==++==----- 
cls
echo.
echo +---------------------------------------------------------+
echo : Hard Disk Cleaner   -----==+==-----   Choice 8 for exit :
echo +---------------------------------------------------------+
echo.
echo  %user% twins of %username%
echo  Choice 9 for all options
echo.
echo               +-----------------------------+
echo         -----=:=-----  Select Options -----=:=-----
echo               +-----------------------------+
echo               : +--- Options -+- Saves ---+ :
echo               : :1. Defrag    : saves more: : 
echo               : :2. Cleanup   : saves some: : 
echo               : :3. Manual    : saves less: : 
echo               : :4. Reinstall : saves all : : 
echo               : :5. Programs  : saves more: : 
echo               : :6. SysRestore: saves more: : 
echo               : :7. Hibernate : saves more: : 
echo               : +-------------------------+ :
echo               +---End support of HC 1.0.0---+
echo.
echo recover>msx.msxfm
set /p option=    Your option:
if %option% == 1 goto defrag
if %option% == 2 goto cleans
if %option% == 3 goto explor
if %option% == 4 goto format
if %option% == 5 goto progra
if %option% == 6 goto sysres
if %option% == 7 goto hibern
if %option% == 8 goto exihdc
if %option% == 9 goto allopt

title -----==++==----- Wrong Parameter! -----==++==----- 
cls
echo.
echo The option %option% is not found, We will add soon.
pause>nul
goto main

:defrag
title -----==++==----- Defrag -----==++==----- 
cls
echo.
echo Which OS do you run?
echo.
echo 1. Windows XP
echo 2. Windows 7
echo.
set /p win=    Your option:
if %win% == 1 goto XP
if %win% == 2 goto 7

:XP
start C:\WINDOWS\SYSTEM32\DFRG.MSC
pause>nul
goto main

:7
start C:\windows\System32\Dfrgui.exe
pause>nul
goto main

:cleans
title -----==++==----- Clean Disk -----==++==----- 
cls
echo.
echo Which OS do you run?
echo.
echo 1. Windows XP
echo 2. Windows 7
echo.
set /p win1=    Your option:
if %win1% == 1 goto XP1
if %win1% == 2 goto 71

:XP1
start C:\WINDOWS\SYSTEM32\CLEANMGR.EXE
pause>nul
goto main

:71
start C:\windows\System32\Cleanmgr.exe
pause>nul
goto main

:explor
title -----==++==----- Explorer -----==++==----- 
cls
start C:\WINDOWS\EXPLORER.EXE
pause>nul
goto main

:format
title -----==++==----- WARNING!! -----==++==----- 
cls
echo.
echo IMPORTANT, YOU MUST BACKUP FILES TO FLOPPY, USB OR EXTERNAL HDD OTHERWISE YOU'LL LOSE YOUR IMPORTANT FILES, APPS AND GAMES!
pause>nul
cls
echo.
echo.
echo Which OS do you run?
echo.
echo 1. Windows XP
echo 2. Windows 7
echo.
set /p win2=    Your option:
if %win2% == 1 goto XP2
if %win2% == 2 goto 72

:XP2
if not exist D:\SETUP.EXE goto erroroption5XP
if exist D:\SETUP.EXE goto launcherXP

:erroroption5XP
title -----==++==----- Hard Disk Cleaner - No Disk -----==++==----- 
cls
echo.
echo Please insert the system Windows XP setup.
echo.
pause>nul
if not exist D:\SETUP.EXE goto erroroption5XP
if exist D:\SETUP goto launcherXP

:launcherXP
title -----==++==----- Ready. -----==++==----- 
cls
echo.
echo 1. Insert the system Windows XP Setup disc
echo 2. Go to Boots or something similar
echo 3. Go to Boot Orders
echo 4. Go to first one and change from HDD or Net to (CD-ROM drive if using CD-ROM or diskette drive if using diskette)
echo 5. Go back to BIOS Main Menu
echo 6. Press Save changes and exit BIOS
echo 7. Press ENTER to continue
echo 8. Please wait while Setup is inspecting hardwares, and then press ENTER
echo 9. Press F8, Format it, then wait till the copy files has been finished
echo 10. After restarting, restart your computer into BIOS
echo 11. Go to Boots or something similar
echo 12. Go to Boot Orders
echo 13. Go to first one and change from CD or Diskette to HDD
echo 14. Go back to BIOS Main Menu
echo 15. Press Save changes and exit BIOS
echo 16. Press ENTER to continue
echo 17. Follow the instructions on screen.
pause>nul
title -----==++==----- GO!! -----==++==----- 
del msx.msxfm
shutdown -r -t 00

:72
if not exist D:\bootmgr goto erroroption57
if exist D:\bootmgr goto launcher7

:erroroption57
title -----==++==----- Hard Disk Cleaner - No Disk -----==++==----- 
cls
echo.
echo Please insert the system Windows 7 setup.
echo.
pause>nul
if not exist D:\bootmgr goto erroroption57
if exist D:\bootmgr goto launcher7

:launcher7
title -----==++==----- Ready. -----==++==----- 
cls
echo.
echo 1. Insert the system Windows 7 Setup disc
echo 2. Go to Boots or something similar
echo 3. Go to Boot Orders
echo 4. Go to first one and change from HDD or Net to (CD-ROM drive if using CD-ROM)
echo 5. Go back to BIOS Main Menu
echo 6. Press Save changes and exit BIOS
echo 7. Press ENTER to continue
echo 8. Please wait while Setup is loading files, booting, then press Next
echo 9. Press Install Windows
echo 10. Accept license terms and type your product key
echo 11. Click Custom and Format or add your HDD
echo 12. Click on Next
echo 13. After Setup has complete, Go to BIOS, then go to Boots or something similar
echo 14. Go to boot orders and change the order on the first one from CD to HDD
echo 15. Go back to the BIOS Main Menu
echo 16. Save and exit BIOS
echo 17. Wait until Setup has complete and complete the OOBE Steps
pause>nul
title -----==++==----- GO!! -----==++==----- 
del msx.msxfm
shutdown -r -t 00

:progra
title -----==++==----- Add or remove programs -----==++==----- 
cls
echo.
start C:\WINDOWS\system32\appwiz.cpl
pause>nul
goto main

:sysres
title -----==++==----- System Restore Turnoff -----==++==-----
cls
echo.
echo.
echo Which OS do you run?
echo.
echo 1. Windows XP
echo 2. Windows 7
echo.
set /p win3=    Your option:
if %win3% == 1 goto XP3
if %win3% == 2 goto 73

:XP3
cls
echo.
echo 1. Click on "System Restore" tab
echo 2. Tick the "Turn Off System Restore" check box
echo 3. Click on OK or Apply and then confirm
start C:\WINDOWS\system32\sysdm.cpl
pause>nul
goto main

:73
cls
echo.
echo 1. Wait until control panel has open and then on the search, Type on System Properties
echo 2. Open See how much ram is this and then click on System Protection
echo 3. Click on Config for each drive and select Turn off System Protection
echo 4. Click on OK
start C:\Windows\System32\Control.exe
pause>nul
goto main

:hddcpf
title -----==++==----- Planned features -----==++==-----
cls
echo There were no palnned features right now.
echo.
pause>nul
goto main

:hibern
title -----==++==----- Hibernation system off -----==++==-----
cls
echo.
echo 1. Click on "Hibernate" tab
echo 2. Clear the check box "Enable Hibernation"
echo 3. Click on OK or Apply button
set /p winxp7=  Your OS:
if %winxp7% == 1 goto exphibernate
if %winxp7% == 2 goto win7hib

:exphibernate
start C:\WINDOWS\system32\powercfg.cpl
pause>nul
goto main

:win7hib
start C:\WINDOWS\system32\powercfg.exe /hibernate off
pause>nul
goto main

:change
cls
title -----==++==----- Changelogs -----==++==----- 
echo.
echo         +--------------------------------------------------------+
echo -----==+:                  Changelog for software                :+==-----
echo         +--------------------------------------------------------+
echo         : 1. Questions numbers are reset on every step           :
echo         : 2. Removed the questions related to other program      :
echo         : 3. Complete GUI of Changelogs screen                   :
echo         : 4. Added one rule                                      :
echo         : 5. Removed software renderer due to outdated use       :
echo         : 6. Fixed spelling "planned" being "palnned"            :
echo         : 7. Fixed scanning files                                :
echo         : 8. Increased size in Changelogs screen                 :
echo         : 9. Removed Realms                                      :
echo         : 10. Removed Chinese screen (version) leaving outdated  :
echo         : 11. Merged all options to one screen (options screen)  :
echo         : 12. Now all options are going into the options screen  :
echo         : 13. Fixed the gui on confirmation that is incomplete   :
echo         : 14. End support of HDD Cleaner 1.0.0 and warning added :
echo         : 15. Removed percentage of savings causes it to glitch  :
echo         : 16. Fixed Main Menu causes you to put enter two times  :
echo         : 17. Fixed that the back button on requests is missing  :
echo         : 18. Removed (to diskette if using the diskette)        :
echo         +--------------------------------------------------------+
pause>nul
goto allopt

:scanbf
cls
title -----==++==----- Scanning files... -----==++==----- 
echo.
echo +---------------------------------------------------+
cd c:\
dir /s /p
echo +---------------------------------------------------+
pause>nul
goto allopt

:logsvi
title -----==++==----- View Login Logs -----==++==-----
echo.
echo +-------------------------------Log 1 of 4--+
type LoginLog.log
pause>nul
cls
echo +-------------------------------Log 2 of 4--+
type HDD.log
pause>nul
cls
echo +-------------------------------Log 3 of 4--+
type DX.log
pause>nul
cls
echo +-------------------------------Log 4 of 4--+
type HDDCPUGPU.log
pause>nul
cls
echo +-------------------------------Twins of..--+
type twins.log
pause>nul
cls
goto allopt

:helpsu
title -----==++==----- Problems -----==++==-----
cls
echo.
echo You can type any problem that you experienced it, then the app will export your problem into your Text File.
echo.
echo Rules:
echo.
echo 1. The user must not say the bad words in front of your problem
echo 2. The user should not send the problem to anybody except us
echo 3. Please give more information to communities so we can swiftly fix
echo 4. Any missing words or informations the community will not accept it
echo 5. Any missing title of e-mail the community will not locate it
echo 6. Any wrong things the user sent the community will say incomplete bug
echo 7. Avoid one-worded phrases and things like "help!"
echo.
echo 1. Report problems
echo 2. Back
echo.
set /p teamsu=    Your option:
if %teamsu% == 1 goto report
if %teamsu% == 2 goto allopt

:report
title -----==++==----- Problem Send -----==++==-----
cls
echo.
echo Type your problem here:
echo.
echo +-----------------------------------------------------------------+
echo :                                                                 :
echo.
set /p problemreported=  Your Problem:
echo %problemreported% I hope you can fix this problem soon.>Problem.txt
echo : You could copy and paste your txt of the problem, from your txt :
echo : to E-mail.                                                      :
echo : 1: yazanalhabal1@gmail.com 2: yazanalhabal@hotmail.com          :
echo :                                                                 :
echo +-----------------------------------------------------------------+
pause>nul
goto allopt

:featrs
title -----==++==----- Features -----==++==-----
cls
echo.
echo You can type any features that you want it for HDD Cleaner.
echo.
echo Rules:
echo.
echo 1. The user must not say "Please add, Please add, Please add" or the community will not add it
echo 2. Please give instructions to the features so we know the feature might be added
echo 3. Any missing title and words and informations the community might not add it
echo.
echo 1. I have a feature
echo 2. Back
echo.
set /p teamfe=    Your option:
if %teamfe% == 1 goto featre
if %teamfe% == 1 goto allopt

:featre
cls
title -----==++==----- Feature Requests -----==++==-----
echo.
echo Type your feature requests here:
echo.
echo +-----------------------------------------------------------------+
echo :								       :
echo.
set /p featurerequest=  Your Feature:
echo %featurerequest% I hope you add this feature soon.>Feature.txt
echo : You could copy and paste your txt of the feature, from your txt :
echo : to E-mail.                                                      :
echo : 1: yazanalhabal1@gmail.com 2: yazanalhabal@hotmail.com          :
echo :                                                                 :
echo +-----------------------------------------------------------------+
pause>nul
goto allopt

:hddcpf
title -----==++==----- Planned features -----==++==-----
cls
echo The help button for every option
echo.
echo Help button gives you help for every feature, for every option on HDD Cleaner except the options screen (Main in HDD Cleaner 2.3.0, and Options screen in HDD Cleaner 3.0.0).
echo.
echo Support for Windows 8, and 8.1
echo.
echo Unless we know the files of Windows 8 and 8.1, We will add this feature.
echo.
echo Fun Facts and jokes
echo.
echo The fun facts and jokes are funny for the kids, but they will be viewed in another batch file, so we might make one in HDD Cleaner 4.3.0.
echo.
pause>nul
goto allopt

:allopt
title -----==++==----- All Options -----==++==-----
cls
echo.
echo          +---------------+
echo          : Select Option :
echo          +---------------+
echo                  :
echo +--------------------------------+
echo : 1. Changelogs for this product :
echo : 2. Scan for large files        :
echo : 3. View logs for your user     :
echo : 4. Improve our product         :
echo : 5. Add features (request)      :
echo : 6. Planned features            :
echo : 7. Back to main menu           :
echo : 8. Version for this product    :
echo +--------------------------------+
echo.
if %optionop% == 1 goto change
if %optionop% == 2 goto scanbf
if %optionop% == 3 goto logsvi
if %optionop% == 4 goto helpsu
if %optionop% == 5 goto featrs
if %optionop% == 6 goto hddcpf
if %optionop% == 7 goto main
if %optionop% == 8 goto vprodu

:vprodu
title -----==++==----- Version -----==++==-----
cls
echo.
echo       +--------------+    +---------------+
echo -----=: Turla Update :    :version 2.1.0.0:=-----
echo       +--------------+    +---------------+
echo.
pause>nul
goto allopt

:exihdc
title -----==++==----- Deleting cache... -----==++==----- 
cls
del msx.msxfm
exit

