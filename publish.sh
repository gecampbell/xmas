#!/bin/sh

aws s3 sync . s3://starbucks.christmas \
    --delete \
    --exclude '*.*' \
    --include '*.html'
