#!/bin/bash

trigger_choice() {
  local SOURCE="$1"
  local USER_INPUT="$2"

  CHOICE=$(whiptail --title "$TITLE" --yesno "SEARCHING BY $SOURCE - TARGET: $USER_INPUT" 10 50 --yes-button "HUNT !" --no-button "EXIT" 3>&1 1>&2 2>&3)

    # Vérifiez le choix de l'utilisateur
    if [ $? -eq 0 ]; then
      if [ "$TWITTER_SEARCH" = true ]; then
        echo "$TWITTER_SEARCH"
        twitter_search "USERNAME" "$USER_INPUT"
      fi
      if [ "$FAMOUS_APPS" = true ]; then
        python3 libs/python_scripts/global_search.py "$FILENAME"
      fi
    else
        exit 0
    fi
}
