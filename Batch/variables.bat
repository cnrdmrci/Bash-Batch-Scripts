@echo off
cls 

:: argument
:: variables.bat hi hello
echo First argument: %1
echo Second argument: %2

::===================================================

::define id variable
set /A id=1

::define string variable
set name=Caner

set info=Id: %id%, Name: %name%
echo %info%

::===================================================

set /A firstNumber=3
set /A secondNumber=4
set /A sum=%firstNumber% + %secondNumber%
echo Sum = %sum%

::===================================================
::scope variable

setlocal
  set local=Local variable
  echo %local%
endlocal

::===================================================
::environment variable

echo %ENVIRONMENT_VARIABLE%

