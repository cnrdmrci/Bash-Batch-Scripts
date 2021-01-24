@echo off

set /A number = 1
set /A count = 10

:while
if %number% leq %count% (
  echo Number: %number%
  set /A number += 1
  goto :while
)

