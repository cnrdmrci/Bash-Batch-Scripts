@echo off

call :WriteName
call :WriteNameWithParameters Caner
call :Sum 1 2 result
echo %result%
exit /B 0

::===================================================
:WriteName
set name=Caner
echo Name: %name%
exit /B 0

::===================================================
:WriteNameWithParameters
echo Name: %~1
exit /B 0

::===================================================
:Sum
set /A %~3 = %~1 + %~2
exit /B 0
