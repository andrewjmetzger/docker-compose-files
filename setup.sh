#! /bin/bash
#  Read common.env
export $(grep -v '^#' common.env | xargs -d '\n')

# TODO: Do work here
echo $COMMON_FOO

# Unset variables from common.env
unset $(grep -v '^#' common.env | sed -E 's/(.*)=.*/\1/' | xargs)
exit
