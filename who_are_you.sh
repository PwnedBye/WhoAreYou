#!/bin/bash

. configs/init.sh
. libs/choice.sh
. libs/twitter.sh

CHOICE=$(whiptail --title "$TITLE" --menu "I don't know who you are, but I'll find you." 12 60 2 \
    "1" "Search by USERNAME" \
    "2" "Search by EMAIL (Not Implemented yet)" \
    3>&1 1>&2 2>&3)

echo "$HTML_CONTENT" >> $FILENAME

case $CHOICE in
    "1")
        USER_INPUT=$(whiptail --inputbox "Targeted username:" 10 50 3>&1 1>&2 2>&3)

        python3 libs/python_scripts/set_target.py "$FILENAME" "$USER_INPUT"
        trigger_choice "USERNAME" "$USER_INPUT"
        ;;
    *)
        exit 0
esac



