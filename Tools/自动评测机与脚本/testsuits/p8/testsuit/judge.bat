@echo off

IF "%2"=="" (
	echo Usage: %0 ^<a^> ^<b^>
	exit /b
)

setlocal

mkdir "%~dp0\tmp1" 2> NUL
mkdir "%~dp0\tmp2" 2> NUL

echo Preprocessing
type "%1" | "%~dp0\bin\grep" "@.*$" > "%~dp0\tmp1\out-pre.lines"
"%~dp0\bin\sed" -e "s/^.*@/@/" "%~dp0\tmp1\out-pre.lines" > "%~dp0\tmp1\out-pre.txt"
type "%2" | "%~dp0\bin\grep" "@.*$" > "%~dp0\tmp2\out-pre.lines"
"%~dp0\bin\sed" -e "s/^.*@/@/" "%~dp0\tmp2\out-pre.lines" > "%~dp0\tmp2\out-pre.txt"

echo Comparing
"%~dp0\bin\diff" -q "%~dp0\tmp1\out-pre.txt" "%~dp0\tmp2\out-pre.txt" 2> NUL > NUL
echo Finished %errorlevel%

endlocal

"%~dp0\bin\diff" -q "%~dp0\tmp1\out-pre.txt" "%~dp0\tmp2\out-pre.txt"
exit /b %errorlevel%
