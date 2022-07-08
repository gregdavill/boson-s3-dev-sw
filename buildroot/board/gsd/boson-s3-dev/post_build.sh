#!/bin/sh

set -e

BOARD_DIR="$(dirname $0)"

cp -r "$BOARD_DIR"/skeleton/* "$TARGET_DIR"

cp "$TARGET_DIR"/lib/firmware/brcm/brcmfmac43430-sdio.txt "$TARGET_DIR"/lib/firmware/brcm/brcmfmac43430-sdio.gsd,gsd-boson-dev.txt
cp "$TARGET_DIR"/lib/firmware/brcm/brcmfmac43430-sdio.bin "$TARGET_DIR"/lib/firmware/brcm/brcmfmac43430-sdio.gsd,gsd-boson-dev.bin
