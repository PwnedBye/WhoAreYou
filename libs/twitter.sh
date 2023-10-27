#!/bin/bash

twitter_search() {
  local USER_INPUT="$1"

  curl --request GET \
  --url "https://api.twitter.com/2/users/by/username/$USER_INPUT?user.fields=description%2Ccreated_at" \
  --header "Authorization: Bearer $BEARER_TOKEN"
}
