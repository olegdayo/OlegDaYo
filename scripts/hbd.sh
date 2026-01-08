#!/bin/bash

line=$(less README.md | grep 'y. o.')

age=0

for word in $(echo $line | cut -d ' ' -f 1-); do
    # Checks if the word is an integer.
    if [ "$word" -eq "$word" 2> /dev/null ]; then
        age=$word
    fi
done

echo "$age"

sed -i "s/I'm a .* y. o./I'm a $((age+1)) y. o./g" ./README.md
