#!/bin/bash

# Changing password
if [ ! -f $SCRIPTPATH/.initialized ]; then
    if [ "$PASSWORD" = "" ]; then
        PASSWORD=`pwgen 10 1`
        echo "Login password is \"$PASSWORD\""
    fi
    echo "$USER:$PASSWORD" | chpasswd
    sudo -u $USER touch $SCRIPTPATH/.initialized
fi

npm start
