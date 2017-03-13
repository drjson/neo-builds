#!/bin/sh

modprobe mpl3115
modprobe lm75

while [ 1 ]; do
  TEMP_RAW=`cat /sys/class/i2c-dev/i2c-1/device/1-0060/iio\:device0/in_temp_raw`
  TEMP_SCALE=`cat /sys/class/i2c-dev/i2c-1/device/1-0060/iio\:device0/in_temp_scale`
  
  PRES_RAW=`cat /sys/class/i2c-dev/i2c-1/device/1-0060/iio\:device0/in_pressure_raw`
  PRES_SCALE=`cat /sys/class/i2c-dev/i2c-1/device/1-0060/iio\:device0/in_pressure_scale`

  echo -ne "mp13l15: T="
  echo -ne `dc $TEMP_RAW $TEMP_SCALE mul p`
  echo -ne "\tP="
  echo -ne `dc $PRES_RAW $PRES_SCALE mul p`

  LM75_TEMP=`cat /sys/class/i2c-dev/i2c-1/device/1-0048/hwmon/hwmon0/temp1_input`
  
  echo -ne "\tlm75="
  echo `dc $LM75_TEMP 1000 div p`
done
