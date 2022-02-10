#!/bin/bash

SOURCE=${BASH_SOURCE[0]}
while [ -h "$SOURCE" ]; do
  DIR=$( cd -P "$( dirname "$SOURCE" )" >/dev/null 2>&1 && pwd )
  SOURCE=$(readlink "$SOURCE")
  [[ $SOURCE != /* ]] && SOURCE=$DIR/$SOURCE
done
DIR=$( cd -P "$( dirname "$SOURCE" )" >/dev/null 2>&1 && pwd )

clear
    echo "Enter shrotname (for example: nikolaskage)"
    read LOCAL_ADMIN_SHORTNAME
    echo "Hide = 1, Unhide = 0"
    read HIDE
    dscl . create /Users/$LOCAL_ADMIN_SHORTNAME IsHidden $HIDE
    clear
    echo "Success"
    sleep 1
    wait
    clear
exit
sudo bash $DIR/Automation.sh