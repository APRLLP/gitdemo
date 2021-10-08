@echo off
REM Generate the first 1000 perfect cubes and save to cubes.out

echo First 1000 perfect cubes: >cubes.out

for /l %%n in (1,1,1000) do call :cube %%n
goto end

:cube
set /a cube="%1*%1*%1"
echo %cube% >>cubes.out

:end
