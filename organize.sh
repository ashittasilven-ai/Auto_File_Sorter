#!/bin/bash

## Target Directory ##
DIR="./Test"

## Create directories if they do not exist ##
mkdir -p "$DIR/Images"
mkdir -p "$DIR/Audio"

for file in "$DIR"/*; do
    if [ -f "$file" ]; then
	case "$file" in
	    *.jpg|*.png)
	    mv "$file" "$DIR/Images/"
            ;;
	    *.mp3)
	    mv "$file" "$DIR/Audio/"
            ;;
	esac
    fi
done

echo "Files organized successfully"
