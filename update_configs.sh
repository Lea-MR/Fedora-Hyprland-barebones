#!/bin/bash

source variables.sh

for f in ${C_FOLDERS[@]}; do
    ORI=~/.config/$f/.
    DEST=./config-files/$f/
    printf "cp -a $ORI $DEST\n"
    cp -a $ORI $DEST
done
