#!/bin/sh

softbase="/home/tmp/Soft_STB/"
softdate=`LC_TIME=en_US.UTF-8 date +%Y/[%m]_%B/%d.%m.%Y`
softdir=$softbase$softdate
log=log.txt

smbmount //192.168.0.71/share /home/tmp/ -o username=guest,password=

    if [ ! -d $softdir ];
	then
		mkdir -p $softdir
    fi
#501 for ...
#	wget -r -l1 -N -nH -nd -A "*sdk.tgz"  http://172.16.0.159:4001/nv501-android/convex/ -P  $softdir/nv501/convex
#	wget -r -l1 -N -nH -nd -A "*sdk.tgz"  http://172.16.0.159:4001/nv501-android/kvant/ -P  $softdir/nv501/kvant
#	wget -r -l1 -N -nH -nd -A "*sdk.tgz"  http://172.16.0.159:4001/nv501-android/iptvportal/ -P  $softdir/nv501/iptvportal
#	wget -r -l1 -N -nH -nd -A "*sdk.tgz"  http://172.16.0.159:4001/nv501-android/antstb/ -P  $softdir/nv501/antstb
#	wget -r -l1 -N -nH -nd -A "*sdk.tgz"  http://172.16.0.159:4001/nv501-android/vladlink/ -P  $softdir/nv501/vladlink

#NV501
	wget -r -l1 -N -nH -nd -A "*sdk.tgz"  http://172.16.0.159:4001/nv501-android/eltex/ -P  $softdir/nv501/eltex/SDK
	wget -r -l1 -N -nH -nd -A "*.fwe"  http://172.16.0.159:4001/nv501-android/eltex/image -P  $softdir/nv501/eltex

#NV701
#wget -r -l1 -N -nH -nd -A "*sdk.tgz"  http://172.16.0.159:4001/nv701wac-android/ -P $softdir/nv701wac/SDK
#wget -r -l1 -N -nH -nd -A "*.ota"  http://172.16.0.159:4001/nv701wac-android/ota/ -P  $softdir/nv701wac

#NV710
#wget -r -l1 -N -nH -nd -A "*sdk.tgz"  http://172.16.0.159:4001/nv710-android/ -P $softdir/nv710/SDK
#wget -r -l1 -N -nH -nd -A "*.ota"  http://172.16.0.159:4001/nv710-android/ota/ -P  $softdir/nv710

#NV310
#	wget -r -l1 -N -nH -nd -A "*sdk.tar.gz"  http://172.16.0.159:4001/nv31x-android/nv310wac/ -P  $softdir/nv31x
#	wget -r -l1 -N -nH -nd -A "fw31x-revB*"  http://172.16.0.159:4001/nv31x-android/ -P  $softdir/nv31x

#NV510
wget -r -l1 -N -nH -nd -A "fw510*" http://172.16.0.159:4001/nv510-android/image/ -P  $softdir/nv510_android7
wget -r -l1 -N -nH -nd -A "*sdk.tgz"  http://172.16.0.159:4001/nv510-android/ -P  $softdir/nv510_android7/SDK

#NV711Wac
wget -r -l1 -N -nH -nd -A "*.ota"  http://172.16.0.159:4001/nv711-android/eltex/ota/ -P $softdir/nv711/eltex
wget -r -l1 -N -nH -nd -A "*sdk.tgz"  http://172.16.0.159:4001/nv711-android/eltex/ -P  $softdir/nv711/eltex/SDK



umount -l /home/tmp/
