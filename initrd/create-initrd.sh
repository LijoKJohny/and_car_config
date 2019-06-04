#!/bin/bash

rm -f initrd.img
cd initrdfs
find . -print | cpio -ov -H newc > ../initrd
cd ..
gzip initrd
mv initrd.gz initrd.img

