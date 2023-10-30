#!/usr/bin/env python3

from bs4 import BeautifulSoup
import sys

famous_apps_list = ['facebook', 'twitter', 'youtube', 'instagram']

def write_to_report(html_file_name):
    with open(html_file_name, 'r') as f:
        contenu = f.read()

    soup = BeautifulSoup(contenu, 'html.parser') # Parse HTML file

    for famous_app in famous_apps_list:
      link = soup.find(id="id_{}".format(famous_app))
      link['href'] = link['href'] + 'petrogradov'
      link.string.replace_with('petrogradov')

    # Écrire le nouveau contenu HTML dans le fichier
    with open(html_file_name, 'w') as f:
        f.write(str(soup))

write_to_report(sys.argv[1])
