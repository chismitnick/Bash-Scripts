#!/bin/bash
#Csamiselo Jun 2020
#csamiselo@github.com
  #Script to clear up RAM and show memory infor before and after ram is cleared
  free -h && sudo sysctl -w vm.drop_caches=3 && sudo sync && echo 3 | sudo tee /proc/sys/vm/drop_caches && free -h
