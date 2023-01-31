#! /usr/bin/env bash
# ______   _   _  
# | ___ | | | / / C-Keenan
# | | |_| | |/ /  https://github.com/C-Keenan
# | |  _  |   /   
# | |_| | |   \   
# |_____| |_|\_\  

dcstop="docker-compose down"
home="/home/cameron/"
lanc="/mnt/lancache/lancache"
reboot="sudo reboot"
iscsilogout="sudo iscsiadm -m node -u"
iscsidmnt="sudo umount /dev/sdd1"

# script start
echo "Some commands in this script will need sudo elevation. Please provide 'sudo' password if promted."
echo ""
echo ""
cd $home
cd $lanc
$dcstop
cd $home
$iscsidmnt
$iscsilogout
$reboot
