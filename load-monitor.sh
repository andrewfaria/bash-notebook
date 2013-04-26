#!/bin/bash

# Dependencies
# sendmail
# bc

# config
max_load="2"
to_address = ""
from_address = ""
subject = ""
message = ""

# get current load
load=`uptime | awk '{print $10}' | tr -d ','`


if [ $(echo "$load > $max_load" | bc -l) -eq 1 ]
then
    echo "warning"
fi
