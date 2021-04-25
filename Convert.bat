@echo OFF
SETLOCAL EnableDelayedExpansion
FOR /F "delims=;" %%F in (convlist.txt) do (
ffmpeg -i "%%F" -c:v libx264 -preset slow -crf 20 -c:a aac -b:a 128k "%%~dF%%~pF%%~nF.mp4"
)
PAUSE