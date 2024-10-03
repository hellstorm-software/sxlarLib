::downloads the best available mp4 of a youtube video or playlist

@echo off
:: replace "videoLocation" with the path to your video
cd "C:\videoLocation"

:: replace "VideoUrlHere" with the url to the playlist or video you want to download. this will download it in the highest quality audio and video as an mp4
yt-dlp -f "bestvideo[ext=mp4]+bestaudio[ext=m4a]/best[ext=mp4]" VideoUrlHere
pause

:: the video's downloaded will need to be converted to h.264 if you are using them in software like premiere
:: see mp4-conversion.bat for details
