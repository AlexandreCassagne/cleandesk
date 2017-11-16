#!/bin/bash

# Do not change

cd $1
pwd

function sortspt () {
    echo "$2 \n---> $1"
    mkdir -p $1
    for rule in $2 
    do
	regex="s/\\.${rule}$/.${rule}/"i
	rename $regex * -f
        mv *".${rule}" $1 2> /dev/null
    done
    
}

# Populate the following array with ( ("*.ext", "destination/folder") )
RULES=()

FOLDER="Music"
RULES="mp3 aac ogg m4a m4a m4p mp4 logicx mid"

sortspt $FOLDER "$RULES"

FOLDER="Movies"
RULES="mov avi mkv mp4 m4v"

sortspt $FOLDER "$RULES"

FOLDER="Documents"
RULES="pdf doc ppt xls docx rar 7z pptx xlsx sql tex txt ofx key pages numbers rtf textClipping  zip iso xml csv gz"
sortspt $FOLDER "$RULES"

FOLDER="Web"
RULES="php html javascript js css json"
sortspt $FOLDER "$RULES"


FOLDER="Images"
RULES="ai psd jpg jpeg bmp png ps gif dae svg eps 3ds" 
sortspt $FOLDER "$RULES"

FOLDER="Programming"
RULES="cpp swift h ml c py rb jar sh playground md out m java"

sortspt $FOLDER "$RULES"

FOLDER="Various"
RULES="dmg app apkg nes mus ram ics"
sortspt $FOLDER "$RULES"

FOLDER="Books"
RULES="epub"
sortspt $FOLDER "$RULES"

find . -maxdepth 1 -type d -empty -delete 
ls