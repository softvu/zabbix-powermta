#!/usr/bin/env bash

hostname=$(hostname)
vmta=$1

if [[ -z $vmta ]]
then
    (>&2 echo "No vmta name specified")
    exit 1;
fi

size=$(pmta show vmtas | grep $vmta | awk '{print $3}')

#if [[ -z $size ]]
#then
#    size=0
#fi

echo $size
