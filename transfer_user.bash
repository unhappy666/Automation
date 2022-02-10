#!/bin/bash

SOURCE=${BASH_SOURCE[0]}
while [ -h "$SOURCE" ]; do
  DIR=$( cd -P "$( dirname "$SOURCE" )" >/dev/null 2>&1 && pwd )
  SOURCE=$(readlink "$SOURCE")
  [[ $SOURCE != /* ]] && SOURCE=$DIR/$SOURCE
done
DIR=$( cd -P "$( dirname "$SOURCE" )" >/dev/null 2>&1 && pwd ) 

clear
echo "Do you have "Full Disk access" for "Terminal" (yes/no)?"
read DISK_ACCESS
if [ $DISK_ACCESS == no ]; then
clear
open x-apple.systempreferences:com.apple.preference.security?Privacy_AllFiles
echo "'Click the lock to make changes' and mark ☑ 'Terminal' for grant access"
echo "Press ENTER (Return) to continue"
read WAITING
else echo "+"
fi
clear
echo "Enter Full Name of existing account (for example: Nikolas Kage)"
        read LOCAL_ADMIN_FULLNAME
        echo "Enter shrotname of existing account (for example: nikolaskage)"
        read LOCAL_ADMIN_SHORTNAME
        echo "Enter password for user"
        read LOCAL_ADMIN_PASSWORD
        sysadminctl -addUser $LOCAL_ADMIN_SHORTNAME -fullName "$LOCAL_ADMIN_FULLNAME" -password "$LOCAL_ADMIN_PASSWORD"  -admin
        clear
        echo "Progress |*----|"
        dscl . create /Users/$LOCAL_ADMIN_SHORTNAME IsHidden 0
        clear
        echo "Progress |-*---|"
        dscl . -create /Users/$LOCAL_ADMIN_SHORTNAME NFSHomeDirectory /Users/$LOCAL_ADMIN_SHORTNAME
        clear
        echo "Progress |--*--|"
        sudo chown -R  $LOCAL_ADMIN_SHORTNAME /Users/$LOCAL_ADMIN_SHORTNAME
        clear
        echo "Progress |---*-|"
        sudo chmod 777 /Users/$LOCAL_ADMIN_SHORTNAME
        clear
        echo "Success"
        sleep 1
        wait
        clear
exit
sudo bash $DIR/Automation.sh