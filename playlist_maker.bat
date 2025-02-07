@echo off
setlocal enabledelayedexpansion

:: Nom du fichier de sortie
set OUTPUT_FILE=playlist.cue

:: Supprime le fichier s'il existe déjà
if exist %OUTPUT_FILE% del %OUTPUT_FILE%

:: Initialisation du compteur de piste
set TRACK_NUM=1

:: Boucle sur chaque fichier donné en argument
for %%F in (*.wav) do (
    echo FILE "%%F" WAVE >> %OUTPUT_FILE%
    echo   TRACK !TRACK_NUM! AUDIO >> %OUTPUT_FILE%
    echo     INDEX 01 00:00:00 >> %OUTPUT_FILE%
    set /a TRACK_NUM+=1
)

echo Fichier CUE genere : %OUTPUT_FILE%