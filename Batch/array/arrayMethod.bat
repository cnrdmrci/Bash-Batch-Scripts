@echo off

set array.return=goto :eof
set array.func=%1
set array.func.args=%2 %3 %4 %5
call :%array.func% %array.func.args%
goto :eof

:add
set array.name=%1
set array.value=%2
for /f "delims=[=] tokens=2" %%a in ('set %array.name%[') do (
  set array.index=%%a
)
set /a array.index+=1
set %array.name%[%array.index%]=%array.value%
goto :eof

:len
set array.name=%1
set array.var=%2
set /A count=0
for /f %%a in ('set %array.name%[') do (
  set /A count+=1
)
set %array.var%=%count%
goto :eof

:getItemWithIndex
set array.name=%1
set array.index=%2
set array.var=%3
set isFound=false
for /f "delims=[=] tokens=1,2,3" %%a in ('set %array.name%[') do (
  if %%b==%array.index% (
    set %array.var%=%%c
    set isFound=true
  )
)

if %isFound%==false set %array.var%=Index not found
goto :eof

