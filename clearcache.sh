#!/bin/bash
#Csamiselo Jun 2020
#csamiselo@github.com
  #Script to clear up RAM cahe using the sync command 

sudo su && sync;sudo echo 1 > /proc/sys/vm/drop_caches && sync; sudo echo 2 > /proc/sys/vm/drop_caches && sync; sudo echo 3 > /proc/sys/vm/drop_caches