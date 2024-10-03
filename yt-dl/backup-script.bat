@echo off
:: Set the download location and playlist URL
set "download_dir=C:\PLACEHOLDER"
set "playlist_url=https://www.youtube.com/playlist?list=PLVXCZXyumEsPvPLreNfhW8bQ4RBZgGgv5"

:: Create the download folder if it doesn't exist
if not exist "%download_dir%" (
    mkdir "%download_dir%"
)

:: Echo the command for debugging
echo yt-dlp -f bestvideo+bestaudio --merge-output-format mp4 -o "%download_dir%\%%(uploader)s\%%(title)s.%%(ext)s" "%playlist_url%" --verbose

:: Run yt-dlp to download all videos from the playlist
yt-dlp -f bestvideo+bestaudio --merge-output-format mp4 -o "%download_dir%\%%(uploader)s\%%(title)s.%%(ext)s" "%playlist_url%" --verbose

:: Pause to keep the window open after completion
pause
