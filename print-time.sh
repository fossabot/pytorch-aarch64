#!/usr/bin/env bash

while sleep 120; do echo "$1: $SECONDS seconds, still building..." && uptime; done
