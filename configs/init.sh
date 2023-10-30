#!/bin/bash

VERSION="0.1"
TITLE="WhoAreYou v0.1"

mkdir -p "logs"
FILENAME="logs/report-$(date +'%Y%m%d%H%M%S').html"

# Research modules (enabled = true / disable = false)
TWITTER_SEARCH=false # Needs configuration
INSTAGRAM_SEARCH=false # Needs configuration
FAMOUS_APPS=true

# Do not edit
HTML_CONTENT="<html><head><title></title><style type="text/css">table{width:40%;background-color:#000}tr{background-color:#fff}th{width:40%}td,th{padding:10px}hr{margin-bottom:40px}</style></head><body style="background-color:#7fffd4"><center><h1 id="target_name"></h1><h3 id="datetime"></h3></center><hr><table cellspacing="3"><tr><th>Facebook</th><td><a href="https://www.facebook.com/" target="_blank" id="id_facebook">Facebook</a></td></tr><tr bgcolor="#ffffff"><th>Twitter</th><td><a href="https://twitter.com/" target="_blank" id="id_twitter">Twitter</a></td></tr><tr bgcolor="#ffffff"><th>Youtube</th><td><a href="https://www.youtube.com/@" target="_blank" id="id_youtube">Youtube</a></td></tr><tr bgcolor="#ffffff"><th>Instagram</th><td><a href="https://www.instagram.com/" target="_blank" id="id_instagram">Instagram</a></td></tr></table></html>"
