#!/usr/bin/env bash

set -xe

echo "Python version: $1"
echo "Building PyTorch"
BUILD_PATH=$(pwd)


echo "v1.7.1"

bash torch.sh "1.7.1" "v1.7.1"
bash vision.sh "0.8.2" "v0.8.2"
bash audio.sh "0.7.2" "v0.7.2"
bash text.sh "0.8.1" "v0.8.1"

pip uninstall -y torch torchaudio torchtext torchvision


echo "v1.7.0"

bash torch.sh "1.7.0" "v1.7.0"
bash vision.sh "0.8.1" "v0.8.1"
bash audio.sh "0.7.0" "v0.7.0"
bash text.sh "0.8.0" "v0.8.0-rc2"

pip uninstall -y torchvision
bash vision.sh "0.8.0" "v0.8.0"

pip uninstall -y torch torchaudio torchtext torchvision


echo "v1.6.0"

bash torch-patch.sh "1.6.0" "v1.6.0"
bash vision.sh "0.7.0" "v0.7.0"
bash audio.sh "0.6.0" "v0.6.0"
bash text.sh "0.7.0" "v0.7.0-rc3"

pip uninstall -y torch torchaudio torchtext torchvision


echo "v1.5.1"

bash torch-patch.sh "1.5.1" "v1.5.1"
bash vision.sh "0.6.1" "v0.6.1"
bash audio.sh "0.5.1" "v0.5.1"
bash text.sh "0.6.0" "0.6.0"

pip uninstall -y torch torchaudio torchtext torchvision


echo "v1.5.0"

bash torch-patch.sh "1.5.0" "v1.5.0"
bash vision.sh "0.6.0" "v0.6.0"
bash audio.sh "0.5.0" "v0.5.0"

pip uninstall -y torch torchaudio torchtext torchvision


echo "v1.4.1"

bash torch-patch.sh "1.4.1" "v1.4.1"
bash vision.sh "0.5.0" "v0.5.0"
bash audio.sh "0.4.0" "v0.4.0"
bash text.sh "0.5.0" "0.5.0"

pip uninstall -y torch torchaudio torchtext torchvision


echo "v1.4.0"

bash torch-patch.sh "1.4.0" "v1.4.0"


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
