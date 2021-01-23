@echo off
::cls

::===================================================
set message=Text message
echo Message: %message%

::===================================================
set empty=
echo Message: %empty%

::===================================================
set message=hey
set /A id=1
set text=%message% number %id%
echo %text%

::===================================================
::string length

::===================================================
set text=How are you
set newText=%text:~-3%
echo %newText%

set newText=%text:~8,3%
echo %newText%

::===================================================
set text=Hello, how are you
set newText=%text:Hello=Hi%
echo %newText%
set newText=%text:Hello, =%
echo %newText%

