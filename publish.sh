#!/bin/sh

aws s3 sync . s3://starbucks.christmas \
    --delete \
    --exclude '*.*' \
    --include '*.html' \
    --include '*.js' \
    --cache-control 'max-age=600' \
    --content-type 'text/html; charset=utf-8'

echo Done
