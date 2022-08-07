#!/bin/bash


if [ $# -ne 1 ]; then
	echo "you need to add the name of the html file"
	exit 1
fi 

#urlPlaylist=$1

#wget -O playlist.html $urlPlaylist

# so we're using grep to extract the time out of each video
# -E is for the following regex and -o is to only get the string and not the entire line
# [0-9]{0,3}:?[0-9]{1,2}:[0-9]{2} is the regex for the time format on thumbnails you can go and do your own at https://regexr.com/ for example

grep -Eo "[0-9]{0,3}:?[0-9]{1,2}:[0-9]{2}" $1 | cut 

# improvements 

# add file verification
# use the playlist url (how to avoid the confirmation page ?)

