#!/bin/bash

#echo "$(3e01)"

a=$(echo "1.234e23" | sed 's/e/*10^/g;s/ /*/' | bc)

echo "$a"
