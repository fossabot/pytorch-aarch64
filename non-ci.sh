#!/usr/bin/env bash

set -xe

PYVER="$1"

bash check-arch.sh
docker pull "kumatea/build:py$PYVER-ci"

mkdir whl
docker run --name "py$PYVER" -v "$(pwd):/build" "kumatea/build:py$PYVER-ci" /bin/bash -c "cd /build && bash run.sh $PYVER"

DATETODAY=$(date -I | tr -d "-")
tar -cJf "$DATETODAY-$PYVER.tar.xz" whl
mkdir artifacts
cp "$DATETODAY-$PYVER.tar.xz" artifacts/
