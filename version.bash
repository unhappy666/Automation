#!/bin/bash

SOURCE=${BASH_SOURCE[0]}
while [ -h "$SOURCE" ]; do
  DIR=$( cd -P "$( dirname "$SOURCE" )" >/dev/null 2>&1 && pwd )
  SOURCE=$(readlink "$SOURCE")
  [[ $SOURCE != /* ]] && SOURCE=$DIR/$SOURCE
done
DIR=$( cd -P "$( dirname "$SOURCE" )" >/dev/null 2>&1 && pwd )

mkdir $DIR/Updates
#Paste file ID from Google Dirve to the next aliases
#clear
#echo "Progress |*---------|"
#automation_app="19q4heNKK74LDiX1dz4g29sYP5sNwwn49"
#curl -s -c ./cookie -s -L "https://drive.google.com/uc?export=download&id=${automation_app}" > /dev/null
#curl -s -Lb ./cookie "https://drive.google.com/uc?export=download&confirm=`awk '/download/ {print $NF}' ./cookie`&id=${automation_app}" > $DIR/Updates/Automation.app
clear
echo "Progress |-*--------|"
automation_sh="1vnRe0yKHpITLmBsqsIpOxijOB7sJITPU"
curl -s -c ./cookie -s -L "https://drive.google.com/uc?export=download&id=${automation_sh}" > /dev/null
curl -s -Lb ./cookie "https://drive.google.com/uc?export=download&confirm=`awk '/download/ {print $NF}' ./cookie`&id=${automation_sh}" > $DIR/Updates/Automation.sh
sleep 10
wait
clear
echo "Progress |--*-------|"
programms_bash="160GXsgwbKg4ibLBO4anL_zqOyKXmldvV"
curl -s -c ./cookie -s -L "https://drive.google.com/uc?export=download&id=${programms_bash}" > /dev/null
curl -s -Lb ./cookie "https://drive.google.com/uc?export=download&confirm=`awk '/download/ {print $NF}' ./cookie`&id=${programms_bash}" > $DIR/Updates/programms.bash
sleep 10
wait
clear
echo "Progress |---*------|"
create_user_bash="1lUWIxunBIGjU3xuYEw8cqTf1RYV_Pwo6"
curl -s -c ./cookie -s -L "https://drive.google.com/uc?export=download&id=${create_user_bash}" > /dev/null
curl -s -Lb ./cookie "https://drive.google.com/uc?export=download&confirm=`awk '/download/ {print $NF}' ./cookie`&id=${create_user_bash}" > $DIR/Updates/create_user.bash
sleep 10
wait
clear
echo "Progress |----*-----|"
transfer_user_bash="1usk_r_MhmW6QBuxeJQCSFzR1cIOXAV0q"
curl -s -c ./cookie -s -L "https://drive.google.com/uc?export=download&id=${transfer_user_bash}" > /dev/null
curl -s -Lb ./cookie "https://drive.google.com/uc?export=download&confirm=`awk '/download/ {print $NF}' ./cookie`&id=${transfer_user_bash}" > $DIR/Updates/transfer_user.bash
sleep 10
wait
clear
echo "Progress |-----*----|"
bash_bash="1mArC2poDT-DzqOLdT0h6p2AtXDlWnfoE"
curl -s -c ./cookie -s -L "https://drive.google.com/uc?export=download&id=${bash_bash}" > /dev/null
curl -s -Lb ./cookie "https://drive.google.com/uc?export=download&confirm=`awk '/download/ {print $NF}' ./cookie`&id=${bash_bash}" > $DIR/Updates/bash.bash
sleep 10
wait
clear
echo "Progress |------*---|"
hide_user_bash="10NNRmJu06z5S7r1Cz9wTdwoaUCWqNpr-"
curl -s -c ./cookie -s -L "https://drive.google.com/uc?export=download&id=${hide_user_bash}" > /dev/null
curl -s -Lb ./cookie "https://drive.google.com/uc?export=download&confirm=`awk '/download/ {print $NF}' ./cookie`&id=${hide_user_bash}" > $DIR/Updates/hide_user.bash
sleep 10
wait
clear
echo "Progress |------*---|"
README_txt="1iu2nxCrtiR8zQ1pIr0Rf6R0Q-dNKH8Yw"
curl -s -c ./cookie -s -L "https://drive.google.com/uc?export=download&id=${README_txt}" > /dev/null
curl -s -Lb ./cookie "https://drive.google.com/uc?export=download&confirm=`awk '/download/ {print $NF}' ./cookie`&id=${README_txt}" > $DIR/Updates/README.txt
sleep 10
wait
clear
echo "Progress |-------*--|"
version_bash="1LBXqwEMrzhQBhYExMY-lZcTQQnTIt8AD"
curl -s -c ./cookie -s -L "https://drive.google.com/uc?export=download&id=${version_bash}" > /dev/null
curl -s -Lb ./cookie "https://drive.google.com/uc?export=download&confirm=`awk '/download/ {print $NF}' ./cookie`&id=${version_bash}" > $DIR/Updates/version.bash
sleep 10
wait
clear
echo "Progress |--------*-|"
sudo chown -R ${whoami} $DIR/Updates
sudo chmod -R 777 $DIR/Updates
#sudo rm -rf $DIR/Automation.app
#mv -v $DIR/Updates/* $DIR 
clear
echo "Progress |---------*|"