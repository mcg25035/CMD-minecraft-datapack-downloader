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

echo �۰ʧ�s�D�{�� : �O
@ping 127.0.0.1 -n 3 -w 1000 > nul.
echo �۰ʧ�s���O�]�C�� : �_
@ping 127.0.0.1 -n 3 -w 1000 > nul.
echo �w�������O�] : 1��
@ping 127.0.0.1 -n 3 -w 1000 > nul.
echo Mcfunction Store���� : Beta27637
@ping 127.0.0.1 -n 3 -w 1000 > nul.
goto restart
:restarto

:restart

color 80
cmdbkg.exe
cls
echo �ɭ��౵���еy��...
@ping 127.0.0.1 -n 3 -w 1000 > nul.
cls
cmdbkg.exe bmp/bkg.bmp
cls
del goto.txt
cls
title Mcfunction Store  (����Beta27637)
:Loop

Call Button  5 9 "���O�]�ԲӸ�ơ@�@�@�@�@�@" 0 0 "�����{��    " # Press
Getinput /m %Press% /h 70
:: Check for the pressed button 
if %errorlevel%==1 (goto 1)
if %errorlevel%==2 (goto exit)
goto Loop
:1

cls
cmdbkg.exe
cls
echo �ɭ��౵���еy��...
@ping 127.0.0.1 -n 3 -w 1000 > nul.
cls
cmdbkg.exe bmp/ms.bmp
:Loop1
Call Button  80 9 "�w��  " 0 0 "��^  " # Press
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
echo �ɭ��౵���еy��...
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
echo                                                                                 �w�ˤ�...
for /f %%i in (pa.txt) do (
	echo                                                        %%i�H
)

@ping 127.0.0.1 -n 3 -w 1000 > nul.
IF EXIST install_complete.tag (goto ic)
goto Loop99
:ic
cls
del install_complete.tag
goto restart
:exit
