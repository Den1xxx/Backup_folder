@set @x=0 /*
@echo off
rem Copyright by Den1xxx - http://fromgomel.com/?module=sendmail

rem ��㤠 �����㥬
set from=D:\HOMEBANK\base
rem ���� ��� ����� ����஢����
set log=result_%DATE%.txt
rem ����쪮 ��娢�� ��⠢����
set old=30

if exist %DATE% (
    echo �������譨� ��娢 㦥 �������
	rem ��㧠 3 ᥪ
	cscript //nologo /e:jscript "%~f0" 3000
) else (
	echo ���࠭塞 ���� � ��娢
	mkdir %DATE%
	xcopy %from% %DATE% /c/h/e/r/k/y/s >>%log%
	if exist %DATE% (
		echo �������譨� ��娢 㤠筮 ��࠭�� � ����� %DATE%
		echo ����塞 ���� ��娢�
		rem ����塞 ����� 
		for /f "skip=%old% delims=?" %%f in ('dir /a:d /b  /o:-d') do (
			rd /S /Q "%%~nxf"
		)
		rem ����塞 ���� 
		for /f "skip=%old% delims=?" %%i in ('dir /o:-d /a:-d /b "result*"') do (
		  del %%i
		)		
		rem ��㧠 5 ᥪ
		cscript //nologo /e:jscript "%~f0" 5000
	) else (
		echo ����⠫� ��࠭����� ��娢� �� %from%. 
		echo ��������, ࠧ������ - � �� ����.
		pause 
	)
)
exit

goto:eof */ if(isFinite(WScript.Arguments(0))) WScript.Sleep(WScript.Arguments(0))