#! /usr/bin/env bash
# ______   _   _  
# | ___ | | | / / C-Keenan
# | | |_| | |/ /  https://github.com/C-Keenan
# | |  _  |   /   
# | |_| | |   \   
# |_____| |_|\_\  

# test script for learning purposes changes often and should be discarded if downloaded, not run

dcstart="docker-compose up -d"
dcstop="docker-compose down"
dcrestart="docker-compose down && docker-compose up -d"
home="/home/cameron/"
root="/"
lanc="/mnt/lancache/lancache"
docker="/home/cameron/docker"
libspd="/home/cameron/docker/librespeedtest"
iscsidsc="sudo iscsiadm -m discovery -t sendtargets -p 192.168.1.2"
iscsimnt="sudo iscsiadm --mode node --targetname iqn.2011-08.com.asustor:as1004t-8dc32d.lancache --portal 192.168.1.2 && sudo mount /dev/sdd1 /mnt/lancache"
reboot="sudo reboot"
iscsilogout="sudo iscsiadm -m node -u"
iscsidmnt="sudo umount /dev/sdd1"

# script start
echo "Some commands in this script will need sudo elevation. Please provide 'sudo' password when promted."
echo ""
echo ""
cd $home
cd $lanc
$dcstop
cd $home
$iscsidmnt
$iscsilogout