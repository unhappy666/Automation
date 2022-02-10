#!/bin/bash

        clear
        progs="echo 1.Google Chrome 2.Slack 3.Telegram 4.AnyDesk 5.All (1-4) 6.OpenVPN
    
    
        7.Sketch 8.Sublime 9.Skype 10.My Link 11.My path 12.Back"
        PS3='Make your choise: '
        programms=("Google Chrome" "Slack" "Telegram" "AnyDesk" "All 1-4" "OpenVPN"  "Sketch" "Sublime" "Skype" "My Weblink" "My Path" "Back" )
            select opt in "${programms[@]}"
            do
                case $opt in
                "Google Chrome")
                    if  [ -d /Applications/"Google Chrome.app" ]; then
                        clear
                        echo "$opt allready installed. Enything else?"
                    else
                        echo "Installing $opt"
                        temp=$TMPDIR$(uuidgen)
                        mkdir -p $temp/mount
                        clear
                        echo "Progress |*----|"
                        if [[ `arch` == arm64 ]]; then
                            curl -s 'https://dl.google.com/chrome/mac/universal/stable/GGRO/googlechrome.dmg' > $temp/1.dmg
                        else
                            curl -s 'https://dl.google.com/chrome/mac/stable/GGRO/googlechrome.dmg' > $temp/1.dmg
                        fi
                        clear
                        echo "Progress |-*---|"
                        yes | hdiutil attach -noverify -nobrowse -mountpoint $temp/mount $temp/1.dmg >> /tmp/log.txt
                        clear
                        echo "Progress |--*--|"
                        cp -r $temp/mount/*.app /Applications
                        clear
                        echo "Progress |---*-|"
                        hdiutil detach $temp/mount >> /tmp/log.txt
                        rm -r $temp
                        clear
                        echo "Progress |----*|"
                        echo "$opt installation is done. Enything else?"
                    fi
                    $progs
                ;;
                "Slack")
                    if  [ -d /Applications/"Slack.app" ]; then
                        clear
                        echo "$opt allready installed. Enything else?"
                    else
                        echo "Installing $opt"
                        temp=$TMPDIR$(uuidgen)
                        mkdir -p $temp/mount
                        clear
                        echo "Progress |*----|"
                        curl -s 'https://downloads.slack-edge.com/releases/macos/4.23.0/prod/universal/Slack-4.23.0-macOS.dmg' > $temp/1.dmg
                        clear
                        echo "Progress |-*---|"
                        yes | hdiutil attach -noverify -nobrowse -mountpoint $temp/mount $temp/1.dmg >> /tmp/log.txt
                        clear
                        echo "Progress |--*--|"
                        cp -r $temp/mount/*.app /Applications
                        clear
                        echo "Progress |---*-|"
                        hdiutil detach $temp/mount >> /tmp/log.txt
                        rm -r $temp
                        clear
                        echo "Progress |----*|"
                        echo "$opt installation is done. Enything else?"
                    fi
                    $progs
                ;;
                "AnyDesk")
                    if  [ -d /Applications/"AnyDesk.app" ]; then
                        clear
                        echo "$opt allready installed. Enything else?"
                    else
                        echo "Installing $opt"
                        temp=$TMPDIR$(uuidgen)
                        mkdir -p $temp/mount
                        clear
                        echo "Progress |*----|"
                        curl -s 'https://download.anydesk.com/anydesk.dmg' > $temp/1.dmg
                        clear
                        echo "Progress |-*---|"
                        yes | hdiutil attach -noverify -nobrowse -mountpoint $temp/mount $temp/1.dmg >> /tmp/log.txt
                        clear
                        echo "Progress |--*--|"
                        cp -r $temp/mount/*.app /Applications
                        clear
                        echo "Progress |---*-|"
                        hdiutil detach $temp/mount >> /tmp/log.txt
                        rm -r $temp
                        clear
                        echo "Progress |----*|"
                        open x-apple.systempreferences:com.apple.preference.security?Privacy_Accessibility
                        echo "$opt installation is done. Enything else?"
                    fi
                    $progs
                ;;
                "Telegram")
                    if  [ -d /Applications/"Telegram.app" ]; then
                        clear
                        echo "$opt allready installed. Enything else?"
                    else
                        echo "Installing $opt"
                        temp=$TMPDIR$(uuidgen)
                        mkdir -p $temp/mount
                        clear
                        echo "Progress |*----|"
                        curl -s 'https://osx.telegram.org/updates/Telegram.dmg' > $temp/1.dmg
                        clear
                        echo "Progress |-*---|"
                        yes | hdiutil attach -noverify -nobrowse -mountpoint $temp/mount $temp/1.dmg >> /tmp/log.txt
                        clear
                        echo "Progress |--*--|"
                        cp -r $temp/mount/*.app /Applications
                        clear
                        echo "Progress |---*-|"
                        hdiutil detach $temp/mount >> /tmp/log.txt
                        rm -r $temp
                        clear
                        echo "Progress |----*|"
                        echo "$opt installation is done. Enything else?"
                    fi
                    $progs
                ;;
                "All 1-4")
                    clear
                    if  [ -d /Applications/"Google Chrome.app" ]; then
                        clear
                        echo "Google Chrome allready installed."
                    else
                        echo "Installing Google Chrome"
                        temp=$TMPDIR$(uuidgen)
                        mkdir -p $temp/mount
                        clear
                        echo "Google Chrome Progress |*----|"
                        if [[ `arch` == arm64 ]]; then
                            curl -s 'https://dl.google.com/chrome/mac/universal/stable/GGRO/googlechrome.dmg' > $temp/1.dmg
                        else
                            curl -s 'https://dl.google.com/chrome/mac/stable/GGRO/googlechrome.dmg' > $temp/1.dmg
                        fi
                        clear
                        echo "Google Chrome Progress |-*---|"
                        yes | hdiutil attach -noverify -nobrowse -mountpoint $temp/mount $temp/1.dmg >> /tmp/log.txt
                        clear
                        echo "Google Chrome Progress |--*--|"
                        cp -r $temp/mount/*.app /Applications
                        clear
                        echo "Google Chrome Progress |---*-|"
                        hdiutil detach $temp/mount >> /tmp/log.txt
                        rm -r $temp
                        clear
                        echo "Google Chrome installation is done."
                    fi


                    if  [ -d /Applications/"Slack.app" ]; then
                        echo "Slack allready installed."
                    else
                        echo "Installing Slack"
                        temp=$TMPDIR$(uuidgen)
                        mkdir -p $temp/mount
                        clear
                        echo "Google Chrome installation is done."
                        echo "Slack Progress |*----|"
                        curl -s 'https://downloads.slack-edge.com/releases/macos/4.23.0/prod/universal/Slack-4.23.0-macOS.dmg' > $temp/1.dmg
                        clear
                        echo "Google Chrome installation is done."
                        echo "Slack Progress |-*---|"
                        yes | hdiutil attach -noverify -nobrowse -mountpoint $temp/mount $temp/1.dmg >> /tmp/log.txt
                        clear
                        echo "Google Chrome installation is done."
                        echo "Slack Progress |--*--|"
                        cp -r $temp/mount/*.app /Applications
                        clear
                        echo "Google Chrome installation is done."
                        echo "Slack Progress |---*-|"
                        hdiutil detach $temp/mount >> /tmp/log.txt
                        rm -r $temp
                        clear
                        echo "Google Chrome installation is done."
                        echo "Slack installation is done."
                    fi


                    if  [ -d /Applications/"Telegram.app" ]; then
                        echo "Telegram allready installed"
                    else
                        echo "Installing Telegram"
                        temp=$TMPDIR$(uuidgen)
                        mkdir -p $temp/mount
                        clear
                        echo "Google Chrome installation is done"
                        echo "Slack installation is done."
                        echo "Telegram Progress |*----|"
                        curl -s 'https://osx.telegram.org/updates/Telegram.dmg' > $temp/1.dmg
                        clear
                        echo "Google Chrome installation is done"
                        echo "Slack installation is done."
                        echo "Telegram Progress |-*---|"
                        yes | hdiutil attach -noverify -nobrowse -mountpoint $temp/mount $temp/1.dmg >> /tmp/log.txt
                        clear
                        echo "Google Chrome installation is done"
                        echo "Slack installation is done."
                        echo "Telegram Progress |--*--|"
                        cp -r $temp/mount/*.app /Applications
                        clear
                        echo "Google Chrome installation is done"
                        echo "Slack installation is done."
                        echo "Telegram Progress |---*-|"
                        hdiutil detach $temp/mount >> /tmp/log.txt
                        rm -r $temp
                        clear
                        echo "Google Chrome installation is done"
                        echo "Slack installation is done."
                        echo "Telegram is done"
                    fi


                    if  [ -d /Applications/"AnyDesk.app" ]; then
                        echo "AnyDesk allready installed."
                    else
                        echo "Installing AnyDesk"
                        temp=$TMPDIR$(uuidgen)
                        mkdir -p $temp/mount
                        clear
                        echo "Google Chrome installation is done"
                        echo "Slack installation is done."
                        echo "Telegram is done"
                        echo "AnyDesk Progress |*----|"
                        curl -s 'https://download.anydesk.com/anydesk.dmg' > $temp/1.dmg
                        clear
                        echo "Google Chrome installation is done"
                        echo "Slack installation is done."
                        echo "Telegram is done"
                        echo "AnyDesk Progress |-*---|"
                        yes | hdiutil attach -noverify -nobrowse -mountpoint $temp/mount $temp/1.dmg >> /tmp/log.txt
                        clear
                        echo "Google Chrome installation is done"
                        echo "Slack installation is done."
                        echo "Telegram is done"
                        echo "AnyDesk Progress |--*--|"
                        cp -r $temp/mount/*.app /Applications
                        clear
                        echo "Google Chrome installation is done"
                        echo "Slack installation is done."
                        echo "Telegram is done"
                        echo "AnyDesk Progress |---*-|"
                        hdiutil detach $temp/mount >> /tmp/log.txt
                        rm -r $temp
                        clear
                        echo "Google Chrome installation is done"
                        echo "Slack installation is done."
                        echo "Telegram is done"
                        echo "AnyDesk is done"
                        open x-apple.systempreferences:com.apple.preference.security?Privacy_Accessibility
                    fi

                    echo "-----------------------------------------------------------|"
                    echo "$opt installations are done. Enything else?"
                    $progs
                ;;
                "OpenVPN")
                    if  [ -d /Applications/"OpenVpn Connect"/"OpenVPN Connect.app" ]; then
                        clear
                        echo "$opt allready installed"
                    else
                        clear
                        echo "Installing $opt"
                        temp=$TMPDIR$(uuidgen)
                        mkdir -p $temp/mount
                        clear
                        echo "Progress |*----|"
                        curl -s 'https://swupdate.openvpn.net/downloads/connect/openvpn-connect-3.3.3.4163_signed.dmg' > $temp/1.dmg
                        clear
                        echo "Progress |-*---|"
                        yes | hdiutil attach -noverify -nobrowse -mountpoint $temp/mount $temp/1.dmg >> /tmp/log.txt
                        clear
                        echo "Progress |--*--|"
                        sudo installer -pkg $temp/mount/*.pkg -target /Applications >> /tmp/log.txt
                        clear
                        echo "Progress |---*-|"
                        hdiutil detach $temp/mount >> /tmp/log.txt
                        clear
                        echo "Progress |----*|"
                        rm -r $temp
                        echo "$opt installation is done. Enything else?"
                    fi
                    $progs
                ;;
                "Sketch")
                    if  [ -d /Applications/"Sketch.app" ]; then
                        clear
                        echo "$opt allready installed. Enything else?"
                    else
                        echo "Installing $opt"
                        temp=$TMPDIR$(uuidgen)
                        mkdir -p $temp/mount
                        mkdir -p $temp/mount1
                        #Paste file ID from Google Dirve to the next line
                        fileid="1xqiAhbtMQpZmNIgViD25CszJ6wn1E-Cx"
                        clear
                        echo "Progress |*-----|"
                        curl -s -c ./cookie -s -L "https://drive.google.com/uc?export=download&id=${fileid}" > /dev/null
                        clear
                        echo "Progress |-*----|"
                        curl -s -Lb ./cookie "https://drive.google.com/uc?export=download&confirm=`awk '/download/ {print $NF}' ./cookie`&id=${fileid}" > $temp/Sketch.dmg
                        clear
                        echo "Progress |--*---|"
                        yes | hdiutil attach -noverify -nobrowse -mountpoint $temp/mount $temp/Sketch.dmg
                        clear
                        echo "Progress |---*--|"
                        yes | hdiutil attach -noverify -nobrowse -mountpoint $temp/mount1 $temp/mount/"Manual Install"/*.dmg
                        clear
                        echo "Progress |----*-|"
                        cp -r $temp/mount1/*.app /Applications
                        hdiutil detach $temp/mount1
                        hdiutil detach $temp/mount
                        rm -r $temp
                        clear
                        echo "Progress |-----*|"
                        xattr -d -r com.apple.quarantine /Applications/Sketch.app/
                        echo "$opt installation is done. Enything else?"
                    fi
                    $progs
                ;;
                "Sublime")
                    if  [ -d /Applications/"Sublime.app" ]; then
                        clear
                        echo "$opt allready installed. Enything else?"
                    else
                        echo "Installing $opt"
                        temp=$TMPDIR$(uuidgen)
                        mkdir -p $temp/mount
                        mkdir -p $temp/mount1
                        #Paste file ID from Google Dirve to the next alias
                        fileid="1sN--mgml1hQi4ACTCONl3ErX9SNFdfON"
                        clear
                        echo "Progress |*------|"
                        curl -s -c ./cookie -s -L "https://drive.google.com/uc?export=download&id=${fileid}" > /dev/null
                        clear
                        echo "Progress |-*-----|"
                        curl -s -Lb ./cookie "https://drive.google.com/uc?export=download&confirm=`awk '/download/ {print $NF}' ./cookie`&id=${fileid}" > $temp/Sublime.dmg
                        clear
                        echo "Progress |--*----|"
                        yes | hdiutil attach -noverify -nobrowse -mountpoint $temp/mount $temp/Sublime.dmg >> /tmp/log.txt
                        clear
                        echo "Progress |---*---|"
                        yes | hdiutil attach -noverify -nobrowse -mountpoint $temp/mount1 $temp/mount/"Manual Install"/*.dmg >> /tmp/log.txt
                        clear
                        echo "Progress |----*--|"
                        cp -r $temp/mount1/*.app /Applications
                        open $temp/mount1/Extra/"Sublime Text Lic.txt"
                        clear
                        echo "Progress |-----*-|"
                        hdiutil detach $temp/mount1 >> /tmp/log.txt
                        clear
                        echo "Progress |------*|"
                        hdiutil detach $temp/mount >> /tmp/log.txt
                        rm -r $temp
                        xattr -d -r com.apple.quarantine /Applications/"Sublime Text".app/
                        open /Applications/"Sublime text".app
                        echo "$opt installation is done. Please past license key "Help - Enter License" Enything else?"
                    fi
                    $progs
                ;;
                "Skype")
                    if  [ -d /Applications/"Skype.app" ]; then
                        clear
                        echo "$opt allready installed. Enything else?"
                    else
                        echo "Installing $opt"
                        temp=$TMPDIR$(uuidgen)
                        mkdir -p $temp/mount
                        clear
                        echo "Progress |*----|"
                        curl -s 'https://download.skype.com/s4l/download/mac/Skype-8.78.0.159.dmg' > $temp/1.dmg
                        clear
                        echo "Progress |-*---|"
                        yes | hdiutil attach -noverify -nobrowse -mountpoint $temp/mount $temp/1.dmg >> /tmp/log.txt
                        clear
                        echo "Progress |--*--|"
                        cp -r $temp/mount/*.app /Applications
                        clear
                        echo "Progress |---*-|"
                        hdiutil detach $temp/mount >> /tmp/log.txt
                        clear
                        echo "Progress |----*|"
                        rm -r $temp
                        echo "$opt installation is done. Enything else?"
                    fi
                    $progs
                ;;
                "My Weblink")
                    temp=$TMPDIR$(uuidgen)
                    mkdir -p $temp/mount
                    mkdir -p $temp/mount1
                    clear
                    echo "Paste weblink "https://*****/*****/*.***|" for installation:"
                    read varlink
                    clear
                    echo "Installing your app"
                    curl -s $varlink > $temp/mount/
                    if [ $temp/mount/*.* == $temp/mount/*.app ]; then
                        cp -r $temp/mount/*.app /Applications
                    elif [ $temp/mount/*.* == $temp/mount/*.dmg ]; then
                        yes | hdiutil attach -noverify -nobrowse -mountpoint $temp/mount $temp/mount/*.dmg >> /tmp/log.txt
                    elif [ $temp/mount/*.* == $temp/mount/*.pkg ]; then
                        sudo installer -pkg $temp/mount/*.pkg -target /Applications >> /tmp/log.txt
                    elif [ $temp/mount/"Manual Install"/*.* == $temp/mount/"Manual Install"/*.dmg ]; then
                        yes | hdiutil attach -noverify -nobrowse -mountpoint $temp/mount1 $temp/mount/"Manual Install"/*.dmg >> /tmp/log.txt
                        cp -r $temp/mount1/*.app /Applications
                    fi
                    hdiutil detach $temp/mount1 >> /tmp/log.txt
                    hdiutil detach $temp/mount >> /tmp/log.txt
                    rm -r $temp
                    echo "Your link installation is done. Enything else?"
                    $progs
                ;;
                "My Path")
                    temp=$TMPDIR$(uuidgen)
                    mkdir -p $temp/mount
                    mkdir -p $temp/mount1
                    echo "Paste path "/*****/*.***|" for your installation file:"
                    read varpath
                    echo "Installing your app"
                    cp $varpath $temp/mount/
                    if [ $temp/mount/*.* == $temp/mount/*.app ]; then
                        cp -r $temp/mount/*.app /Applications
                    elif [ $temp/mount/*.* == $temp/mount/*.dmg ]; then
                        yes | hdiutil attach -noverify -nobrowse -mountpoint $temp/mount $temp/mount/*.dmg >> /tmp/log.txt
                    elif [ $temp/mount/*.* == $temp/mount/*.pkg ]; then
                        sudo installer -pkg $temp/mount/*.pkg -target /Applications >> /tmp/log.txt
                    elif [ $temp/mount/"Manual Install"/*.* == $temp/mount/"Manual Install"/*.dmg ]; then
                        yes | hdiutil attach -noverify -nobrowse -mountpoint $temp/mount1 $temp/mount/"Manual Install"/*.dmg >> /tmp/log.txt
                        cp -r $temp/mount1/*.app /Applications
                    fi
                    yes | hdiutil attach -noverify -nobrowse -mountpoint $temp/mount1 $temp/mount/"Manual Install"/*.dmg >> /tmp/log.txt
                    cp -r $temp/mount1/*.app /Applications
                    hdiutil detach $temp/mount1 >> /tmp/log.txt
                    hdiutil detach $temp/mount >> /tmp/log.txt
                    rm -r $temp
                    echo "Your path installation is done. Enything else?"
                    $progs
                ;;
                "Back")
                    break
                    exit
                    bash $DIR/Automation.sh
                ;;
                *)  clear
                    $progs
                    echo "invalid option $REPLY";;
                esac
            done