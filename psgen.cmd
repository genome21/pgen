@echo off
rem This script generates a password of a variable length
rem To use, enter the following
rem pgen.cmd #
rem Where # is the number of characters of the password length
rem Note that this uses alphanumeric Caps and Lowercase characters
rem Special characters are also included and are listed
rem .@#$-_+=[]
rem All other special charecters not listed above are excluded

setlocal enableextensions enabledelayexpansion

rem Define alphabet
set "alphabet=a A b B c C d D e E f F g G h H i I j J k K l L m M n N o O p P q Q r R s S t T u U v V w W x X y Y z Z 0 1 2 3 4 5 6 7 8 9 . @  # $ - _ + = [ ]"
set len=%1
rem Create an "array" with the elements of the alphabet
set "size=0"
for %%a in (%alphabet%) do (
set "a.!size!=%%a"
set /a "size+=1"
)

rem Generate the output, selecting 32 random elements from the array
set "k="
for /l %%a in (1 1 %%len%) do (
set /a "r=!random! %% size"
for %%b in (!r!) do set "k=!k!!a.%%b!"
)
echo(%k%

endlocal
