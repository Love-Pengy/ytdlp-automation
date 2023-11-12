@echo off
set /p configDir=< .\config.txt
cd %configDir%
set /P linkInput="Link To The Video: "
yt-dlp -f "ba" "%linkInput%" --recode m4a
pause
