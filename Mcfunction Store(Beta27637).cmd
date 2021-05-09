@echo off
mode 100,40
start sound.vbs

cls
for /f %%i in (goto.txt) do (
	If %%i == restart (goto restart) ELSE (goto aav)
)
:aav
color 70
cls

cmdbkg.exe bmp/load.bmp

echo 自動更新主程式 : 是
@ping 127.0.0.1 -n 3 -w 1000 > nul.
echo 自動更新指令包列表 : 否
@ping 127.0.0.1 -n 3 -w 1000 > nul.
echo 已知的指令包 : 1個
@ping 127.0.0.1 -n 3 -w 1000 > nul.
echo Mcfunction Store版本 : Beta27637
@ping 127.0.0.1 -n 3 -w 1000 > nul.
goto restart
:restarto

:restart

color 80
cmdbkg.exe
cls
echo 界面轉接中請稍候...
@ping 127.0.0.1 -n 3 -w 1000 > nul.
cls
cmdbkg.exe bmp/bkg.bmp
cls
del goto.txt
cls
title Mcfunction Store  (版本Beta27637)
:Loop

Call Button  5 9 "指令包詳細資料　　　　　　" 0 0 "關閉程式    " # Press
Getinput /m %Press% /h 70
:: Check for the pressed button 
if %errorlevel%==1 (goto 1)
if %errorlevel%==2 (goto exit)
goto Loop
:1

cls
cmdbkg.exe
cls
echo 界面轉接中請稍候...
@ping 127.0.0.1 -n 3 -w 1000 > nul.
cls
cmdbkg.exe bmp/ms.bmp
:Loop1
Call Button  80 9 "安裝  " 0 0 "返回  " # Press
Getinput /m %Press% /h 70

:: Check for the pressed button 
if %errorlevel%==2 (goto restarto)
if %errorlevel%==1 (goto install)
goto Loop1
:install

start installer_money112.cmd
:Loop2
cmdbkg.exe
cls
echo 界面轉接中請稍候...
@ping 127.0.0.1 -n 3 -w 1000 > nul.
cls
cmdbkg.exe bmp/msinstall.bmp
:Loop99
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo                                                                                 安裝中...
for /f %%i in (pa.txt) do (
	echo                                                        %%i％
)

@ping 127.0.0.1 -n 3 -w 1000 > nul.
IF EXIST install_complete.tag (goto ic)
goto Loop99
:ic
cls
del install_complete.tag
goto restart
:exit
