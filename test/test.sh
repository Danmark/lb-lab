#!/bin/sh

export BASE_DIR=$PWD
for role in roles/*/
do
    if [ "$role" = "roles/exampe-role/" ]
    then
        continue
    fi
    cd "$role" || retrun
    export test
    molecule test
    test=$?
    if [ "$test" -ne 0 ]
    then
        exit 1
    fi
    cd "$BASE_DIR" || return
done