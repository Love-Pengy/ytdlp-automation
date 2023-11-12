@echo off
set /p configDir=< .\config.txt
cd %configDir%
set /P linkInput="Link To The Video: "
echo %linkInput%
yt-dlp -S res,ext:mp4:m4a --recode mp4 "%linkInput%"
pause