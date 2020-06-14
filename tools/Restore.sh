#!/bin/bash

# Setting parameters
mPath=$(cd ../files && pwd)

# Restore configuration file
grep "\\*" "$mPath"/Restore-List.md | cut -f2 -d" " | while read -r oneLine
do
    bash "$mPath"/"$oneLine"/Script/Restore.sh "$mPath"
done
