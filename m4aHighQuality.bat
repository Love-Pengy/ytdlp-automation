@echo off
set /p configDir=< .\config.txt
cd %configDir%
set /P linkInput="Link To The Video: "
yt-dlp -f bestaudio[ext=m4a] -x "%linkInput%"
pause