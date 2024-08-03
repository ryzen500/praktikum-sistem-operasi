#!/bin/sh
# Confirm whether we really want to run this service
confirm() {
local YES="Y"
local NO="N"
local CONT="C"
while true; do
echo -n "(Y)es/(N)o/(C)ontinue? [Y] "
read answer
answer=`echo "$answer" | tr '[a-z]' '[A-Z]'`
if [ "$answer" = "" ] || [ "$answer" = "$YES" ]; then
return 0 # Yes
elif [ "$answer" = "$CONT" ]; then
return 2 # Continue
elif [ "$answer" = "$NO" ]; then
return 1 # No

else
echo "Invalid input. Please enter Y, N, or C."
fi
done
}