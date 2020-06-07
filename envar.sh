#!/bin/bash
#C Samiselo Jun 2020
#csamiselo@github.com
echo "A simple script to print the environemnt variables that are associated with a program"
#Steps: open editor,get editor $PID , lastly use 'cat /proc/$PID/environ' replace $PID with the actually
 sudo gedit; pgrep gedit; cat/proc/$PID/environ | tr '\0' '\n'
 exit