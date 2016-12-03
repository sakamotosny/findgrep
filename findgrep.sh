#!/bin/bash

usage()
{
    local script_name=$(basename "$0")

    cat << END
Usage: $script_name PATTERN [PATH] [NAME_PATTERN]
Find file in current directory recursively, and print lines which match PATTERN.

Examples: 
    $script_name return
    $script_name return ~ '*.txt'

END

}

if [ "$#" -eq 0 ]; then 
    usage
    exit 1
fi

pattern=$1
find . -type f | xargs grep "$pattern"
