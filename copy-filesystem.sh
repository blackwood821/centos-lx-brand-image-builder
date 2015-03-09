#!/usr/bin/env bash

set -euo pipefail
IFS=$'\n\t'

BUILD_DATE=`date +%Y%m%d`

# Tars up the required system files and dirctories.
tar czf /tmp/centos-7-${BUILD_DATE}.tar.gz --exclude-from=exclude.txt /
