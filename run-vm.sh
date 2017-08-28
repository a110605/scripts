#!/bin/bash

#qemu-system-i386 -m 256 -monitor stdio -usb \
#-drive file=~/pyrebox/images/xpsp3.qcow2,index=0,media=disk,format=qcow2,cache=unsafe \
#-cdrom ~/pyrebox/images/WinXP.iso -boot d 


qemu-system-i386 -m 1024 -monitor stdio -usb \
-drive file=~/pyrebox/images/xpsp3.qcow2,index=0,media=disk,format=qcow2,cache=unsafe \
-usb -netdev user,id=network0 -device rtl8139,netdev=network0 -vnc 127.0.0.1:0,password
