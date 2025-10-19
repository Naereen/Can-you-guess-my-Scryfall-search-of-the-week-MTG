# Makefile to send this to my website
SHELL=/usr/bin/env /bin/bash

all:	send

send:	send_zamok
send_zamok:
	CP --exclude=.git ./ ${Szam}publis/Can-you-guess-my-Scryfall-search-of-the-week-MTG/

http.server:
	python -m http.server
