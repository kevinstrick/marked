#!/bin/bash

if [ ! -d "$HOME/Library/Application Support/marked/Corporate Apps" ] ;
then
	mkdir -p "$HOME/Library/Application Support/marked/Corporate Apps"
fi

if [ ! -d "$HOME/Library/Application Support/marked/Corporate Favorites" ] ;
then
	mkdir -p "$HOME/Library/Application Support/marked/Corporate Favorites"
fi



/usr/bin/python "/Library/Application Support/FEG/bookmarks/EnsureBookmarks_apps.py" | logger -t "FEG Manage Bookmarks"
sleep 1
/usr/bin/python "/Library/Application Support/FEG/bookmarks/EnsureBookmarks_favorites.py" | logger -t "FEG Manage Bookmarks"

exit 0
