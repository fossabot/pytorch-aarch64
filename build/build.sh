#!/usr/bin/env bash

set -xe

echo "Python version: $1"
echo "Building PyTorch"


echo "v1.7.1"

bash torch.sh "1.7.1" "v1.7.1"
bash vision.sh "0.8.2" "v0.8.2"
bash audio.sh "0.7.2" "v0.7.2"
bash text.sh "0.8.1" "v0.8.1"

cp torch/dist/torch-1.7.1-cp39-cp39-linux_aarch64.whl ../whl/171/
cp torch/dist/torchaudio-0.7.2-cp39-cp39-linux_aarch64.whl ../whl/171/
cp torch/dist/torchtext-0.8.1-cp39-cp39-linux_aarch64.whl ../whl/171/
cp torch/dist/torchvision-0.8.2-cp39-cp39-linux_aarch64.whl ../whl/171/

pip uninstall -y torch torchaudio torchtext torchvision


echo "v1.7.0"

bash torch.sh "1.7.1" "v1.7.1"
bash vision.sh "0.8.1" "v0.8.1"
bash audio.sh "0.7.0" "v0.7.0"
bash text.sh "0.8.0" "v0.8.0-rc2"

cp torch/dist/torch-1.7.0-cp39-cp39-linux_aarch64.whl ../whl/170/
cp torch/dist/torchaudio-0.7.0-cp39-cp39-linux_aarch64.whl ../whl/170/
cp torch/dist/torchtext-0.8.0-cp39-cp39-linux_aarch64.whl ../whl/170/
cp torch/dist/torchvision-0.8.1-cp39-cp39-linux_aarch64.whl ../whl/170/

pip uninstall -y torchvision
bash vision.sh "0.8.0" "v0.8.0"

cp torch/dist/torchvision-0.8.0-cp39-cp39-linux_aarch64.whl ../whl/170/

pip uninstall -y torch torchaudio torchtext torchvision


echo "v1.6.0"

bash torch-160.sh "1.6.0" "v1.6.0"
bash vision.sh "0.7.0" "v0.7.0"
bash audio.sh "0.6.0" "v0.6.0"
bash text.sh "0.7.0" "v0.7.0-rc3"

cp torch/dist/torch-1.6.0-cp39-cp39-linux_aarch64.whl ../whl/160/
cp torch/dist/torchaudio-0.6.0-cp39-cp39-linux_aarch64.whl ../whl/160/
cp torch/dist/torchtext-0.7.0-cp39-cp39-linux_aarch64.whl ../whl/160/
cp torch/dist/torchvision-0.7.0-cp39-cp39-linux_aarch64.whl ../whl/160/

pip uninstall -y torch torchaudio torchtext torchvision


echo "v1.5.1"

bash torch-160.sh "1.5.1" "v1.5.1"
bash vision.sh "0.6.1" "v0.6.1"
bash audio.sh "0.5.1" "v0.5.1"
bash text.sh "0.6.0" "0.6.0"

cp torch/dist/torch-1.5.1-cp39-cp39-linux_aarch64.whl ../whl/151/
cp torch/dist/torchaudio-0.5.1-cp39-cp39-linux_aarch64.whl ../whl/151/
cp torch/dist/torchtext-0.6.0-py3-none-any.whl ../whl/151/
cp torch/dist/torchvision-0.6.1-cp39-cp39-linux_aarch64.whl ../whl/151/

pip uninstall -y torch torchaudio torchtext torchvision


echo "v1.5.0"

bash torch-160.sh "1.5.0" "v1.5.0"
bash vision.sh "0.6.0" "v0.6.0"
bash audio.sh "0.5.0" "v0.5.0"

cp torch/dist/torch-1.5.0-cp39-cp39-linux_aarch64.whl ../whl/150/
cp torch/dist/torchaudio-0.5.0-cp39-cp39-linux_aarch64.whl ../whl/150/
cp torch/dist/torchvision-0.6.0-cp39-cp39-linux_aarch64.whl ../whl/150/

pip uninstall -y torch torchaudio torchtext torchvision


echo "v1.4.1"

bash torch-160.sh "1.4.1" "v1.4.1"
bash vision.sh "0.5.0" "v0.5.0"
bash audio.sh "0.4.0" "v0.4.0"
bash text.sh "0.5.0" "0.5.0"

cp torch/dist/torch-1.4.1-cp39-cp39-linux_aarch64.whl ../whl/141/
cp torch/dist/torchaudio-0.4.0-cp39-cp39-linux_aarch64.whl ../whl/141/
cp torch/dist/torchtext-0.5.0-py3-none-any.whl ../whl/141/
cp torch/dist/torchvision-0.5.0-cp39-cp39-linux_aarch64.whl ../whl/141/

pip uninstall -y torch torchaudio torchtext torchvision


echo "v1.4.0"

bash torch-160.sh "1.4.0" "v1.4.0"

cp torch/dist/torch-1.4.0-cp39-cp39-linux_aarch64.whl ../whl/140/

pip uninstall -y torch torchaudio torchtext torchvision
