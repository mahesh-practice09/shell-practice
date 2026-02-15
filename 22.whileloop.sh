#!/bin/bash

# count=1

# while [ $count -le 5 ]
# do
# echo "count is $count"
# sleep 1
# ((count++))
# done

while IFS= read -r line; do
echo "Line: $line"
done < 20.script.sh