@echo off
set /p configDir=< .\config.txt
cd %configDir%
set /P linkInput="Link To The Video: "
echo %linkInput%
yt-dlp -S res,ext:webm:webm "%linkInput%"
pause