#!/bin/bash

# set to active mode
i2cset -f -y 3 0x20 0x13 0x16

while [ 1 ]; do
  # gyro vector
  g_x=$(( $( i2cget -f -y 3 0x20 0x01 ) << 8 | $( i2cget -f -y 3 0x20 0x02 ) ))
  g_y=$(( $( i2cget -f -y 3 0x20 0x03 ) << 8 | $( i2cget -f -y 3 0x20 0x04 ) ))
  g_z=$(( $( i2cget -f -y 3 0x20 0x05 ) << 8 | $( i2cget -f -y 3 0x20 0x06 ) ))

  echo "$g_x/$g_y/$g_z"
done
