#!/bin/bash

set -xe

VER="$1"
export BUILD_VERSION="$VER"


git clone https://github.com/pytorch/audio || :

cd audio
git checkout "$2"
git checkout --recurse-submodules "$2"
git submodule sync
git submodule update --init --recursive


# export MAX_JOBS=1
export BUILD_TEST=0

python3 setup.py build > /dev/null
python3 setup.py install > /dev/null
python3 setup.py bdist_wheel > /dev/null
