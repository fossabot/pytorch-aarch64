#!/usr/bin/env bash

while sleep 5m; do echo "$1: $SECONDS seconds, still building..."; done &
