#!/sbin/sh
#fix of oem commands limits SharpAquos S2 by heineken
#fix misc erase (recovery bootloop)

abort() {
  exit 1;
}

block=/dev/block/platform/soc/c0c4000.sdhci/by-name/deviceinfo;
offset=20737;
echo -ne '\xFF' | dd obs=1 count=1 seek=$offset of=$block;

block2=/dev/block/platform/soc/c0c4000.sdhci/by-name/misc;
offset2=0;
echo -ne '\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00' | dd obs=1 count=1 seek=$offset2 of=$block2;

exit 0;
