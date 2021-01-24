@echo off
::cls

set /A number=10
set /A number2=10

if %number%==%number2% (
  echo "Numbers equal"
) else (
  echo "Numbers not equal"
)


set value=test
if defined value echo value is defined: %value%

if exist C:\test.txt (echo "file exist") else ( echo "file does not exist")

