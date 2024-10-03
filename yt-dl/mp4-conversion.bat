@echo off
::converts the videos downloaded with basic-dl.bat to h.264 codex for video editing
cd "C:\videoLocation"
:: replace "videoLocation" with the path to your video
ffmpeg -i placeholder.mp4 -c:v libx264 -c:a aac placeholder_n.mp4
pause

