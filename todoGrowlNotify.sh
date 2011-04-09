#!/bin/sh

#2011/04/09 18:40:20
#auth lainl
#

#my setting 
#1 home
#2 lab_macmini
#3 lab_macbook
Place="3"

#todo file Path
INPUT_FILE="/Users/lainl/Dropbox/memo/changelog"

for line in `cat $INPUT_FILE`
do
    if [ "${line%%::*}" = "$Place" ]; then
        #this comand show coment to growl
        /usr/local/bin/growlnotify -t 'ToDo' -m ${line##::&} -s

        #delete line
        sed -e "/$line/d" $INPUT_FILE > tempfile
        mv tempfile $INPUT_FILE
    fi
done

