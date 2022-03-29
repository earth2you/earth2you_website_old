#!/bin/bash

source activate urubu
make 

echo -e "build"
cp -R _build/* ../earth2you.github.io

echo -e "commit to Git"
cd ../earth2you.github.io

echo -e "pull any missing commits"
git pull

git add --all
git commit -m "update"
echo -e "Pushing to earth2you.github.io"
git push origin main

echo -e "Done"


