@echo off 
::cls

set list=A B C D E
for %%i in (%list%) do (
  echo %%i
)

::===================================================
set array[0]=1
echo %array[0]%

setlocal enabledelayedexpansion 
set topic[0]=comments 
set topic[1]=variables 
set topic[2]=Arrays 
set topic[3]=Decision making 
set topic[4]=Time and date 
set topic[5]=Operators 

for /l %%n in (0,1,5) do ( 
   echo !topic[%%n]!
)

::===================================================
set Arr[0]=1 
set Arr[1]=2 
set Arr[2]=3 
set Arr[3]=4 
set x=0
:SymLoop 

if defined Arr[%x%] ( 
   call echo %%Arr[%x%]%% 
   set /a x+=1
   GOTO :SymLoop 
)
echo "The length of the array is" %x%

::===================================================
set obj[0].Name=Name1 
set obj[0].ID=1 
set obj[1].Name=Name2
set obj[1].ID=2 
set obj[2].Name=Name3 
set obj[2].ID=3 
FOR /L %%i IN (0 1 2) DO  (
   call echo Name = %%obj[%%i].Name%%
   call echo Value = %%obj[%%i].ID%%
)
