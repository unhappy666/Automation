#!/bin/bash

SOURCE=${BASH_SOURCE[0]}
while [ -h "$SOURCE" ]; do
  DIR=$( cd -P "$( dirname "$SOURCE" )" >/dev/null 2>&1 && pwd )
  SOURCE=$(readlink "$SOURCE")
  [[ $SOURCE != /* ]] && SOURCE=$DIR/$SOURCE
done
DIR=$( cd -P "$( dirname "$SOURCE" )" >/dev/null 2>&1 && pwd )

clear
echo "Enter Full Name (for example: Nikolas Kage)"
        read LOCAL_ADMIN_FULLNAME
        echo "Enter shrotname (for example: nikolaskage)"
        read LOCAL_ADMIN_SHORTNAME
        echo "Enter password for user"
        read LOCAL_ADMIN_PASSWORD
        sysadminctl -addUser $LOCAL_ADMIN_SHORTNAME -fullName "$LOCAL_ADMIN_FULLNAME" -password "$LOCAL_ADMIN_PASSWORD"  -admin
        dscl . create /Users/$LOCAL_ADMIN_SHORTNAME IsHidden 0
        dscl . -create /Users/$LOCAL_ADMIN_SHORTNAME NFSHomeDirectory /Users/$LOCAL_ADMIN_SHORTNAME
        sudo systemsetup -setremotelogin on
        sudo dseditgroup -o create -q bender -t user com.apple.access_ssh
        sudo -u $LOCAL_ADMIN_SHORTNAME defaults write "/Users/$LOCAL_ADMIN_SHORTNAME/Library/Preferences/ByHost/com.apple.coreservices.useractivityd.plist" ActivityAdvertisingAllowed -bool no
        sudo -u $LOCAL_ADMIN_SHORTNAME defaults write "/Users/$LOCAL_ADMIN_SHORTNAME/Library/Preferences/ByHost/com.apple.coreservices.useractivityd.plist" ActivityReceivingAllowed -bool no
        clear
        echo "User has been created"
        sleep 1
        wait
exit
sudo bash $DIR/Automation.sh