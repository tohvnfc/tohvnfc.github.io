#!/bin/bash

# https://github.com/tohvnfc/tohvnfc.github.io

npm run build

# Needed files and folder
INDEX_SRC="src/index.html"
INDEX="index.html"

COMMON_SRC="src/common"
COMMON_DIR="common"

CUSTOM_CSS_SRC="src/css/custom.css"
CUSTOM_CSS="css/custom.css"

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

# Copy common htmls
if [ -d $COMMON_SRC ] && [ -d $COMMON_DIR ]
then
    cp -r src/common/* common
else
    echo "ERR: Missing folders"
fi