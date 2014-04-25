@echo off

set tempfile=%TEMP%\_autocheckin_temp_delete_me.txt

curl -X GET "https://api.github.com/repos/blow-tc/autocheckin/contents/hello.txt" --silent -u "blow-tc:1.cup.sak!" --proxy 127.0.0.1:8888 --insecure | grep sha | cut -d":" -f2 > %tempfile%

set /p sha= < %tempfile%
set sha=%sha:,=%
set sha=%sha:"=%
set sha=%sha: =%

del %tempfile%


echo SHA is %sha%


