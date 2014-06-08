#!/usr/bin/env python
# -*- coding: utf-8 -*-
import commands


#todo file Path
INPUT_FILE="/Users/lnial/Dropbox/memo/todo.mkd"

fp = open(INPUT_FILE,'r')

lines = fp.readlines()

def main():
    for line in lines:
        if line[0] in ["=", "[", "\n"]:
            continue
        if "- [ ]" in line:
            message = line[:-1].lstrip("- [ ]")
            command = "/usr/local/bin/growlnotify -t 'ToDo' -m " + message + " -s"
            commands.getstatusoutput(commands)
    

if __name__ == '__main__':
    main()

