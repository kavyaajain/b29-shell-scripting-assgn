#!/bin/bash

mkdir -p Images Documents Videos Others

echo "Organizing files..."

for file in *.jpg *.png; do
    [ -e "$file" ] || continue
    mv "$file" Images/
    echo "Moved $file -> Images"
done

for file in *.pdf *.txt; do
    [ -e "$file" ] || continue
    mv "$file" Documents/
    echo "Moved $file -> Documents"
done

for file in *.mp4 *.mkv; do
    [ -e "$file" ] || continue
    mv "$file" Videos/
    echo "Moved $file -> Videos"
done

for file in *; do
    if [[ -f "$file" && "$file" != *.jpg && "$file" != *.png && "$file" != *.pdf && "$file" != *.txt && "$file" != *.mp4 && "$file" != *.mkv ]]; then
        mv "$file" Others/
        echo "Moved $file -> Others"
    fi
done

echo "Done organizing!"
