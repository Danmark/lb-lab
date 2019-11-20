#!/bin/sh

export BASE_DIR=$PWD
for role in roles/*/
do
    if [ "$role" = "roles/exampe-role/" ]
    then
        continue
    fi
    cd "$role" || retrun
    molecule test
    cd "$BASE_DIR" || return
done