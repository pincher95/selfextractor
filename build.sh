#!/bin/bash
# save as ./build.sh

cd payload
tar cfz ../payload.tar.gz ./*
cd ..

if [ -e "payload.tar.gz" ]; then
	cat decompress payload.tar.gz > selfextractor.run
else
	echo "payload.tar.gz does not exist"
	exit 1
fi

rm -f payload.tar.gz
echo "selfextractor.run created"
exit 0
