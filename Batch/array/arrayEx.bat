@echo off
set items[0]=Pencil
set items[1]=Paper
set items[2]=Notebook
call arrayMethod.bat add items Rock
call arrayMethod.bat len items length
echo items list count: %length%
echo Items:
echo.
for /f "delims=[=] tokens=1,2,3" %%a in ('set items[') do (
  echo %%b - %%c
)
echo.
echo Get item with index:
set /p selectedIndex=
call arrayMethod.bat getItemWithIndex items %selectedIndex% item
echo.
echo Selected item is: %item%
pause >nul
exit
