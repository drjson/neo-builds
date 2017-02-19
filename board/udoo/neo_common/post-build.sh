#!/bin/sh

BOARD_DIR="$(dirname $0)"

echo $HOST_DIR/usr/bin/mkimage -A arm -O linux -T script -C none  \
-n "boot script" -d $BOARD_DIR/boot.scr.txt $BINARIES_DIR/boot.scr

echo "Creating Image boot.scr"
$HOST_DIR/usr/bin/mkimage -A arm -O linux -T script -C none  \
-n "boot script" -d $BOARD_DIR/boot.scr.txt $BINARIES_DIR/boot.scr

echo "Installing to $TARGET_DIR"
install -m 0644 -D $BINARIES_DIR/boot.scr $TARGET_DIR/boot/boot.scr
