#!/bin/bash

set -xe

VER="0.7.2"
export BUILD_VERSION="$VER"

git clone https://github.com/pytorch/audio || :

cd audio
git checkout --recurse-submodules "v$VER"
git submodule sync
git submodule update --init --recursive

apt update
apt install -y sox libsox-dev libsox-fmt-all

export MAX_JOBS=1
export BUILD_TEST=0

python3 setup.py build
python3 setup.py install
python3 setup.py bdist_wheel
