#!/bin/bash
# The UID environment variable can be used to check whether the current script has been
# executed as a root or a regular user

if [$UID -ne 0]; then
echo "You are a noon root user.  Please run the program as root".
else
echo Root user
fi
exit
