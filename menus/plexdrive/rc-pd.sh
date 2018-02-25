 #!/bin/bash

HEIGHT=12
WIDTH=45
CHOICE_HEIGHT=5
BACKTITLE="Visit https://PlexGuide.com - Automations Made Simple"
TITLE="PlexDrive - RClone"
MENU="Choose one of the following options:"

OPTIONS=(A "PlexDrive"
         B "RClone"
         Z "Exit")

CHOICE=$(dialog --clear \
                --backtitle "$BACKTITLE" \
                --title "$TITLE" \
                --menu "$MENU" \
                $HEIGHT $WIDTH $CHOICE_HEIGHT \
                "${OPTIONS[@]}" \
                2>&1 >/dev/tty)

clear
case $CHOICE in
        A)
            bash /opt/plexguide/menus/plexdrive/main.sh ;;
        B)
            bash /opt/plexguide/scripts/menus/rclone-menu.sh ;;
        Z)
            clear
            exit 0 ;;
esac