#!/usr/bin/env bash

printf '\e[8;10;74t'
SOURCE=${BASH_SOURCE[0]}
while [ -h "$SOURCE" ]; do
  DIR=$( cd -P "$( dirname "$SOURCE" )" >/dev/null 2>&1 && pwd )
  SOURCE=$(readlink "$SOURCE")
  [[ $SOURCE != /* ]] && SOURCE=$DIR/$SOURCE
done
DIR=$( cd -P "$( dirname "$SOURCE" )" >/dev/null 2>&1 && pwd )

APP_VERSION=1.1
yes | sudo rm -rf /tmp/log.txt
sudo echo "Make your choise: "
clear
main="echo 1.Install programms 2.User management 3.Download MDM Profile 4.Help 5.Check for Updates 6.Quit"
PS3='Make your choise: '
options=("Install programms" "User management" "MDM" "Help" "Check for Updates" "Quit")
select opt3 in "${options[@]}"
do
    case $opt3 in
    "Install programms")
        $DIR/programms.bash
        clear
        $main
    ;;
    "User management")
        clear
        automation="echo 1.Create user 2.Transfer LADP account to Local 3.Hide and unhide user 4.Back"
        PS3='Make your choise: '
        automate=("Create admin user" "Transfer LADP account to Local" "Hide and unhide user" "Back")
        select opt2 in "${automate[@]}"
        do
            case $opt2 in
                "Create admin user")
                    sudo bash $DIR/create_user.bash
                    clear
                    $automation
                ;;
                "Transfer LADP account to Local")
                    sudo bash $DIR/transfer_user.bash
                ;;
                "Hide and unhide user")
                    sudo bash $DIR/hide_user.bash
                    clear
                    $automation
                ;;
                "Back")
                    clear
                    break
                    exit
                    bash $SOURCE
                ;;
                *) clear
                echo "invalid option $REPLY";;
            esac
        done
        clear
        $main
    ;;
    "MDM")
        open https://mdm.itomy.ch/mydevices
        clear
        $main
    ;;
    "Help")
    clear
    echo "This script was created to automate routine tasks.
(All files should be in the same folder)
    
    Created by Vladyslav Avramenko / Omega
    Email: vladyslav.avramenko@itomy.ch
    Telegram: @Omega640
    version release 1.1
    "
    $main
    ;;
    "Check for Updates")
        sudo bash $DIR/version.bash
        clear
        $automation
    ;;
    "Quit")
    yes | sudo rm -rf /tmp/log.txt
    exit
    ;;
    *)  clear
        $main
        echo "invalid option $REPLY";;
esac
done