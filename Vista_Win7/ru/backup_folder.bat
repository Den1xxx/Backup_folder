@echo off
rem Copyright by Den1xxx - http://fromgomel.com/?module=sendmail

rem Откуда копируем
set from=D:\HOMEBANK\base
rem Файл для логов копирования
set log=result_%DATE%.txt
rem За сколько дней старые архивы удаляем
set old=30

if exist %DATE% (
    echo Сегодняшний архив уже существует
	TIMEOUT 3
) else (
	echo Сохраняем базу в архив
	mkdir %DATE%
	xcopy %from% %DATE% /c/h/e/r/k/y/s >>%log%
	if exist %DATE% (
		echo Сегодняшний архив удачно сохранен в папке %DATE%
		echo Удаляем старые архивы
		FORFILES /D -%old% /C "cmd /c IF @isdir == TRUE rd /S /Q @path"
		FORFILES /M result* /D -%old% /C "cmd /c del @file"
		TIMEOUT 5
	) else (
		echo Перестали сохраняться архивы из %from%. 
		echo Пожалуйста, разберитесь - в чём дело.
		pause 
	)
)