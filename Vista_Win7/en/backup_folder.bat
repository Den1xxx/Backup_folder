@echo off
rem Copyright by Den1xxx - http://fromgomel.com/?module=sendmail

rem Copy from this folder
set from=D:\HOMEBANK\base
rem Log file
set log=result_%DATE%.txt
rem Old days
set old=30

if exist %DATE% (
    echo Today archive already exists
	TIMEOUT 3
) else (
	echo Save base to archive
	mkdir %DATE%
	xcopy %from% %DATE% /c/h/e/r/k/y/s >>%log%
	if exist %DATE% (
		echo Archive succesfully saved in folder %DATE%
		echo Remove old archives
		FORFILES /D -%old% /C "cmd /c IF @isdir == TRUE rd /S /Q @path"
		FORFILES /M result* /D -%old% /C "cmd /c del @file"
		TIMEOUT 5
	) else (
		echo Not saved archives from %from%. 
		pause 
	)
)