#! /usr/bin/env bash
# ______   _   _  
# | ___ | | | / / C-Keenan
# | | |_| | |/ /  https://github.com/C-Keenan
# | |  _  |   /   
# | |_| | |   \   
# |_____| |_|\_\  

# Resfresh script updated to working order

# change this wget link to something else if you wish to have your custom scripts auto pulled and saved properly
# to do so change the link and all references to the file name to proper name.file format and have this and the ->
# file you want to update in the same directory

wget https://raw.githubusercontent.com/C-Keenan/bashscripts/main/test.sh
cp test.sh.1 test.sh
cat test.sh
sleep 20
rm test.sh.1