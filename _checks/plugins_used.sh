#! /usr/bin/env bash

FILEDIR="./config/plugins"
DEFAULT_FILE="${FILEDIR}/default.nix"

for i in $(/bin/ls $FILEDIR/ | grep -v "default.nix"); do
    ! grep -q "$i" "$DEFAULT_FILE" && unfound_strings+="$i,"
done

[ -n "$unfound_strings" ] && echo "Could not find ${unfound_strings:0:-1} in $DEFAULT_FILE" >&2 && echo "Failures Found" && exit 1
echo "All tests passed!" && exit 0
