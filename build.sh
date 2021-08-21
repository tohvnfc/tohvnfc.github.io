#!/bin/bash

# https://github.com/tohvnfc/tohvnfc.github.io

npm run build

# Colors
RED='\033[0;31m'
GREEN='\033[0;32m'
NO_CLR='\033[0m'

# Needed files and folder
CUSTOM_CSS_SRC="src/css/custom.css"
CUSTOM_CSS="css/custom.css"

INDEX_SRC="src/index.html"
INDEX="index.html"

IMG_SRC_DIR="src/img"
IMG_DIR="img/"

# Copy custom.css
if [ -e $CUSTOM_CSS_SRC ] && [ -e $CUSTOM_CSS ]
then
    cp src/css/custom.css css/custom.css
else
    echo "ERR: Missing files"
fi

# Copy index.html
if [ -e $INDEX_SRC ] && [ -e $INDEX ]
then
    cp src/index.html index.html
else
    echo "ERR: Missing files"
fi

# Copy images
if [ -d $INDEX_SRC_DIR ] && [ -d $IMG_DIR ]
then
    cp -r src/img/* img
else
    echo "ERR: Missing folders"
fi