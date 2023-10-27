#!/bin/bash

. configs/init.sh
. libs/choice.sh

CHOICE=$(whiptail --title "$TITLE" --menu "I don't know who you are, but I'll find you." 12 60 2 \
    "1" "Search by USERNAME" \
    "2" "Search by PHONE" \
    3>&1 1>&2 2>&3)

echo "Report $(date +'%Y/%m/%d - %H:%M:%S')\n" >> $FILENAME

case $CHOICE in
    "1")
        USER_INPUT=$(whiptail --inputbox "Targeted username:" 10 50 3>&1 1>&2 2>&3)

        echo "TRACKING MODE: USERNAME" >> $FILENAME
        echo "USERNAME TARGET: $USER_INPUT" >> $FILENAME

        trigger_choice "USERNAME" "$USER_INPUT"
        ;;
    "2")
        USER_INPUT=$(whiptail --inputbox "Targeted email:" 10 50 3>&1 1>&2 2>&3)

        echo "TRACKING MODE: EMAIL" >> $FILENAME
        echo "EMAIL TARGET: $USER_INPUT" >> $FILENAME

        trigger_choice "EMAIL" "$USER_INPUT"
        ;;
    *)
        exit 0
esac



