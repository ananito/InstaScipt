# This will use chromium to get cookies and download the reels from insta
# Add all the reels yrl to videofile.txt

$(gallery-dl --write-info-json --sleep 10 --cookies-from-browser chromium -i videofile.txt)