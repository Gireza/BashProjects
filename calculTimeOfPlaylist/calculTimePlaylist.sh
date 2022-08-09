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

grep -Eo "[0-9]{0,3}:?[0-9]{1,2}:[0-9]{2}" $1 #| cut 

# the output is not what we want, after the last value, times are printed 2 times again
# this is what we want : 

6:04
19:16
15:44
14:10
14:34
20:05
9:17
16:20
15:16
16:39
9:56
9:50
9:19
16:15
9:40
14:37
12:48
20:59
18:28
19:34
13:09
13:46
10:00
10:46
13:32
18:43
13:20
12:09
11:40
12:46
20:23
12:46
11:41
17:41
25:10
16:12
12:27
15:26
21:32
19:12
13:34
17:28
11:04
12:40
22:40
10:40
13:57
9:52
14:00
11:01
10:05
21:42
14:43
9:27
14:36
15:49
14:52
8:15
9:04
14:12
13:09
8:00
9:18
12:07
8:45
12:51
9:34
8:47
17:12
11:44
11:25
17:20


# improvements 

# add file verification
# use the playlist url (how to avoid the confirmation page ?)


