@echo off
setlocal enabledelayedexpansion

set OUTPUT_FILE=playlist.cue

if exist %OUTPUT_FILE% del %OUTPUT_FILE%

set TRACK_NUM=1

for %%F in (*.wav) do (
    echo FILE "%%F" WAVE >> %OUTPUT_FILE%
    echo   TRACK !TRACK_NUM! AUDIO >> %OUTPUT_FILE%
    echo     INDEX 01 00:00:00 >> %OUTPUT_FILE%
    set /a TRACK_NUM+=1
)

echo Fichier CUE genere : %OUTPUT_FILE%
