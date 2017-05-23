dtc -O dtb -o BB-I2C1A1-00A0.dtbo -b 0 -@ BB-I2C1A1.dts
dtc -O dtb -o TERA-I2C1-00A0.dtbo -b 0 -@ TERA-I2C1.dts
sudo su
cp BB-I2C1A1-00A0.dtbo /lib/firmware
cp TERA-I2C1-00A0.dtbo /lib/firmware

echo /sys/devices/platform/bone_capemgr/BB-I2C1A1-00A0  > slots
echo /sys/devices/platform/bone_capemgr/TERA-I2C1-00A0  > slots

echo "installation finit"
