@set @x=0 /*
@echo off
rem Copyright by Den1xxx - http://fromgomel.com/?module=sendmail

rem Откуда копируем
set from=D:\HOMEBANK\base
rem Файл для логов копирования
set log=result_%DATE%.txt
rem Сколько архивов оставлять
set old=30

if exist %DATE% (
    echo Сегодняшний архив уже существует
	rem Пауза 3 сек
	cscript //nologo /e:jscript "%~f0" 3000
) else (
	echo Сохраняем базу в архив
	mkdir %DATE%
	xcopy %from% %DATE% /c/h/e/r/k/y/s >>%log%
	if exist %DATE% (
		echo Сегодняшний архив удачно сохранен в папке %DATE%
		echo Удаляем старые архивы
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
		echo Перестали сохраняться архивы из %from%. 
		echo Пожалуйста, разберитесь - в чём дело.
		pause 
	)
)
exit

goto:eof */ if(isFinite(WScript.Arguments(0))) WScript.Sleep(WScript.Arguments(0))