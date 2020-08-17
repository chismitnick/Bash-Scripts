#!/bin/bash
#Csamiselo Jun 2020
#csamiselo@github.com
  #Script to clear up RAM cahe using the sync command 

sudo su ; sudo sync echo 1 > /proc/sys/vm/drop_caches && sudo sync;  echo 2 > /proc/sys/vm/drop_caches && sudo sync;  echo 3 > /proc/sys/vm/drop_caches