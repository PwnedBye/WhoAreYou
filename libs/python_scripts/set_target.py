#!/usr/bin/env python3
import pdb
from bs4 import BeautifulSoup
import sys

def write_to_report(html_file_name, target):
    with open(html_file_name, 'r') as f:
        contenu = f.read()

    soup = BeautifulSoup(contenu, 'html.parser') # Parse HTML file

    tag_target = soup.find(id="target_name")
    tag_datetime = soup.find(id="datetime")

    tag_target.string = target
    tag_datetime.string = html_file_name


    # Écrire le nouveau contenu HTML dans le fichier
    with open(html_file_name, 'w') as f:
        f.write(str(soup))

write_to_report(sys.argv[1], sys.argv[2])
