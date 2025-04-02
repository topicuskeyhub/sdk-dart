#!/bin/bash

mkdir -p tmp
cd tmp
wget https://github.com/microsoft/kiota/releases/download/v1.24.3/linux-x64.zip
unzip linux-x64.zip
cd ../lib
find . -type f -name "*.dart" -print0 | xargs -0 grep -Z -l "auto generated" | xargs -0 rm -f
find . -type d -empty -delete
env KIOTA_Generation:MaxDegreeOfParallelism=1 ../tmp/kiota update -o .
cd ..
rm -rf tmp
