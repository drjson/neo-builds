#!/bin/bash

# set to active mode
i2cset -f -y 3 0x1e 0x2a 1
# enable both accelerometer and magnetometer
i2cset -f -y 3 0x1e 0x5b 3

while [ 1 ]; do
  # accelerometer vector
  a_x=$(( $( i2cget -f -y 3 0x1e 0x01 ) << 8 | $( i2cget -f -y 3 0x1e 0x02 ) ))
  a_y=$(( $( i2cget -f -y 3 0x1e 0x03 ) << 8 | $( i2cget -f -y 3 0x1e 0x04 ) ))
  a_z=$(( $( i2cget -f -y 3 0x1e 0x05 ) << 8 | $( i2cget -f -y 3 0x1e 0x06 ) ))

  # magnetometer vector
  m_x=$(( $( i2cget -f -y 3 0x1e 0x33 ) << 8 | $( i2cget -f -y 3 0x1e 0x34 ) ))
  m_y=$(( $( i2cget -f -y 3 0x1e 0x35 ) << 8 | $( i2cget -f -y 3 0x1e 0x36 ) ))
  m_z=$(( $( i2cget -f -y 3 0x1e 0x37 ) << 8 | $( i2cget -f -y 3 0x1e 0x38 ) ))
  echo "acc: $a_x/$a_y/$a_z - mag: $m_x/$m_y/$m_z"
done
