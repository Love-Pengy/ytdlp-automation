@echo off
set /p configDir=< .\config.txt
cd %configDir%
set /P linkInput="Link To The Video: "
set /P typeSelector="(1) Audio Only, (2) Video Only, (3) Both: "
set /P extSelector="Desired Extension: "
set DEBUG=1

if DEBUG == 1 (
    echo "link Input: %linkInput%, type selector: %typeSelector%, ext Selector: %extSelector%"
)
if "%typeSelector%"=="1" ( 
    yt-dlp -f bestaudio -x "%linkInput%" --recode %extSelector%
) else (
    if DEBUG == 1 (
        echo "Type Selector: %typeSelector%"
    )
    if "%typeSelector%"=="2" (
        yt-dlp -f bestvideo[ext=%extSelector%] "%linkInput%" 
    ) else ( 
        if "%typeSelector%"=="3" (
            REM yt-dlp -S res,ext:mp4:m4a --recode %extSelector% "%linkInput%"
            yt-dlp -f bestvideo+bestaudio "%linkInput%" --recode %extSelector%
        ) else (
            echo "Invalid Input Please Try Again"
        )
    )
)
REM echo %linkInput%
pause