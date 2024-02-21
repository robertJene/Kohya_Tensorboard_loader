@ECHO OFF

Set kohyaFolder=%CD%

IF NOT EXIST "%kohyaFolder%\venv\Scripts" (
 cls
 ECHO[
 ECHO Could not find the venv\Scripts folder.
 ECHO cannot proceed unless this batch file is inside of
 ECHO a Kohya folder that is properly installed.
 ECHO[
 PAUSE
 GOTO endOfLine
)

IF NOT EXIST "%kohyaFolder%\venv\Scripts\activate.bat" (
 cls
 ECHO[
 ECHO Could not find the activate batch file in the venv\Scripts folder.
 ECHO cannot proceed unless this batch file is inside of
 ECHO a Kohya folder that is properly installed.
 ECHO[
 PAUSE
 GOTO endOfLine
)

IF NOT EXIST "%kohyaFolder%\venv\Scripts\deactivate.bat" (
 cls
 ECHO[
 ECHO Could not find the activate batch file in the venv\Scripts folder.
 ECHO cannot proceed unless this batch file is inside of
 ECHO a Kohya folder that is properly installed.
 ECHO[
 PAUSE
 GOTO endOfLine
)



:ROOTMENU
cls
ECHO[
ECHO Please enter the log folder path without quotes
ECHO[

Set logFolder=
Set /P logFolder=: 

ECHO[

IF "%logFolder%"=="" (
ECHO The log folder cannot be blank. Please try again.
ECHO[
PAUSE
GOTO ROOTMENU
)

IF EXIST "%logFolder%" GOTO checkIfFolder

ECHO[
ECHO The path above does not exist, or is not available.
ECHO Please try again.
ECHO[
PAUSE
GOTO ROOTMENU

:checkIfFolder

IF EXIST "%logFolder%\*" (
GOTO isAFolder
) ELSE (
  ECHO That path is not a folder. Please try again.
  ECHO[
  PAUSE
  GOTO ROOTMENU
)


:isAFolder
ECHO[
ECHO 1. Deactivate environment
ECHO[
CALL "%kohyaFolder%\venv\Scripts\deactivate.bat"

ECHO[
ECHO 2. Activate environment
ECHO[
CALL "%kohyaFolder%\venv\Scripts\activate.bat"

ECHO[
ECHO 3. Run tensorboard
ECHO[

"%kohyaFolder%\venv\Scripts\tensorboard.exe" --logdir "%logFolder%"

ECHO[
pause
GOTO ROOTMENU



:endOfLine
Set kohyaFolder=
Set logFolder=
