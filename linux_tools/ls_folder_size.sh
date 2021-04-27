#!/bin/bash

TARGET_DIR='/home/'
MAX_DEPTH=2
EXCLUDE_DIR=''
SHOW_NUM=5

set -e

if [ ! -z ${EXCLUDE_DIR} ]; then
  du \
    ${TARGET_DIR} \
    --max-depth=${MAX_DEPTH} \
    -h \
    --exclude=${EXCLUDE_DIR} \
    | sort -n -r \
    | head -n ${SHOW_NUM}
else
  du \
    ${TARGET_DIR} \
    --max-depth=${MAX_DEPTH} \
    -h \
    | sort -n -r \
    | head -n ${SHOW_NUM}
fi
