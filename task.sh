#!/bin/bash

echo "Let us pretend that this is doing something ... and takes 20 seconds"

echo "This is the BUILD_ENVIRONMENT variable: $BUILD_ENVIRONMENT" 

count=0
while [ "$count" -lt 20 ]; do
    count=$((count + 1))

    color_code=$((31 + (count % 7)))
    printf "\e[01;${color_code}mDoing something [$count of 20]\e[00m\n"

    sleep 1
done