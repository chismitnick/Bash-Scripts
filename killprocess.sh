#!/bin/bash
#Csamiselo Nov 2020
#chismitnick@github.com
#simple script to search for process by name and kill it
pgrep $1 2>&1 > /dev/null
if [ $? -eq 0 ]
then
{
echo "process running"
ps -ef | grep $1 | grep -v grep | awk '{print $2}'| xargs kill -9
}
else
{
echo "no process with that name is running"
};fi