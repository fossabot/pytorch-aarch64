#!/usr/bin/env bash

set -xe

apt update
apt install -y sox libsox-dev libsox-fmt-all libjpeg-dev libpng-dev

bash print-time.sh "Docker"

cd build
bash build.sh "$1"
