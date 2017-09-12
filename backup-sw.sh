#!/bin/bash

USERNAME="admin"
PASSWORD="gtynfuhfvvf"
TFTP="172.20.0.9"
date=`date +"%Y%m%d"`

# DO NOT CHANGE BELOW THIS LINE

# http://stackoverflow.com/a/246128
HOME=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)

LOG="$HOME"/$(basename "$0").log

while read -r s; do
  [[ "$s" =~ ^#.*$ ]] && continue
    {
        date
            "$HOME"/upload-cfg.exp "${s//[$'\t\r\n ']}" $USERNAME $PASSWORD $TFTP $date
                echo -----------------------------------------"${s//[$'\t\r\n ']}"---------------------------------------
                  } >> "$LOG"
                  done < "$HOME"/switches.lst