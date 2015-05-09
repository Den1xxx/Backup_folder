@set @x=0 /*
@echo off
rem Copyright by Den1xxx - http://fromgomel.com/?module=sendmail

rem Copy from this folder
set from=D:\HOMEBANK\base
rem Log file
set log=result_%DATE%.txt
rem Number of archives
set old=30

if exist %DATE% (
    echo Today archive already exists
	rem Pause 3 sec
	cscript //nologo /e:jscript "%~f0" 3000
) else (
	echo Save base to archive
	mkdir %DATE%
	xcopy %from% %DATE% /c/h/e/r/k/y/s >>%log%
	if exist %DATE% (
		echo Archive succesfully saved in folder %DATE%
		echo Remove old archives
		rem Удаляем папки 
		for /f "skip=%old% delims=?" %%f in ('dir /a:d /b  /o:-d') do (
			rd /S /Q "%%~nxf"
		)
		rem Удаляем логи 
		for /f "skip=%old% delims=?" %%i in ('dir /o:-d /a:-d /b "result*"') do (
		  del %%i
		)		
		rem Пауза 5 сек
		cscript //nologo /e:jscript "%~f0" 5000
	) else (
		echo Not saved archives from %from%. 
		pause 
	)
)
exit

goto:eof */ if(isFinite(WScript.Arguments(0))) WScript.Sleep(WScript.Arguments(0))