@echo off
rem Copyright by Den1xxx - http://fromgomel.com/?module=sendmail

rem ��㤠 �����㥬
set from=D:\HOMEBANK\base
rem ���� ��� ����� ����஢����
set log=result_%DATE%.txt
rem �� ᪮�쪮 ���� ���� ��娢� 㤠�塞
set old=30

if exist %DATE% (
    echo �������譨� ��娢 㦥 �������
	TIMEOUT 3
) else (
	echo ���࠭塞 ���� � ��娢
	mkdir %DATE%
	xcopy %from% %DATE% /c/h/e/r/k/y/s >>%log%
	if exist %DATE% (
		echo �������譨� ��娢 㤠筮 ��࠭�� � ����� %DATE%
		echo ����塞 ���� ��娢�
		FORFILES /D -%old% /C "cmd /c IF @isdir == TRUE rd /S /Q @path"
		FORFILES /M result* /D -%old% /C "cmd /c del @file"
		TIMEOUT 5
	) else (
		echo ����⠫� ��࠭����� ��娢� �� %from%. 
		echo ��������, ࠧ������ - � �� ����.
		pause 
	)
)