#!/bin/bash
#Csamiselo Jun 2020
#csamiselo@github.com
  #simple program to change the shell prompt

#The PS1 environment variables can be used to modify the prompt
echo "Your promt has been changed"
cat ~/.bashrc | grep PS1
${PS1}="PROMPT>"