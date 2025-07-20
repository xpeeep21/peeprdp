@echo off
echo Downloading necessary files...

:: Download the "Litemanager.zip" file from GitHub
curl -L -o Litemanager.zip "https://github.com/Chandoo12/Lm_in_GD_Github_repo/raw/main/Litemanager.zip"

:: Check if the file was downloaded successfully
if exist Litemanager.zip (
    echo File downloaded successfully.
    echo Extracting the downloaded file...
    
    :: Extract the ZIP file
    powershell -Command "Expand-Archive -Path Litemanager.zip -DestinationPath Litemanager"

    :: Check if the file was extracted correctly
    if exist Litemanager\Litemanager.exe (
        echo Extraction successful! Proceeding with the setup...
        :: Run the executable or proceed with other tasks
        start Litemanager\Litemanager.exe
    ) else (
        echo Error: The extracted files are missing or corrupted.
        exit /b 1
    )
) else (
    echo Error: Failed to download the file.
    exit /b 1
)

echo All tasks completed.
pause
