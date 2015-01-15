#!/bin/bash

cd "$( dirname $0 )"
rm -rf tmp
mkdir tmp

find -type f \( \
	-iname '*.html' -o \
	-iname '*.css' -o \
	-iname '*.woff' \
\) | xargs -n1 -I {} cp --parents {} tmp/

sed -i 's/brdg\.me/beta.brdg.me/g' tmp/*.html

S3_BUCKET=beta.brdg.me SITE=tmp s3_website push

rm -rf tmp
