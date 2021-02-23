#!/usr/bin/env bash

set -xe

while sleep 5m; do echo "=====[ $SECONDS seconds, buildroot still building... ]====="; done &

echo "Python version: $1"
echo "Building PyTorch"
BUILD_PATH=$(pwd)

bash torch.sh "1.7.1" "v1.7.1"
bash vision.sh "0.8.2" "v0.8.2"
bash audio.sh "0.7.2" "v0.7.2"
bash text.sh "0.8.1" "v0.8.1"
bash csprng.sh "0.1.4" "v0.1.4"


cd torch/dist
cp ./*.whl "$BUILD_PATH/whl/"
cd "$BUILD_PATH"

cd vision/dist
cp ./*.whl "$BUILD_PATH/whl/"
cd "$BUILD_PATH"

cd audio/dist
cp ./*.whl "$BUILD_PATH/whl/"
cd "$BUILD_PATH"

cd text/dist
cp ./*.whl "$BUILD_PATH/whl/"
cd "$BUILD_PATH"

cd csprng/dist
cp ./*.whl "$BUILD_PATH/whl/"
