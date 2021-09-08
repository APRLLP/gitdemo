@echo off
REM Generate the first 100 perfect squares and save to squares.out

echo First 100 perfect squares: >squares.out

for /l %%n in (1,1,100) do call :square %%n
goto end

:square
set /a square="%1*%1"
echo %square% >>squares.out

:end
