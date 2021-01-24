@echo off

for %%a in (1 2 3) do echo %%a

echo.

for /L %%a in (5,1,8) do echo %%a

echo.

set /A index = 1
:loop
if %index% gtr 3 goto end
echo index value: %index%
set /A index += 1
goto :loop
:end
