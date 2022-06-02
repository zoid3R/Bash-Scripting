#!/bin/bash
{
curl "https://gist.githubusercontent.com/kalinchernev/486393efcca01623b18d/raw/daa24c9fea66afb7d68f8d69f0c4b8eeb9406e83/countries" > .\kraje.txt
KRAJE=$(grep -i '^[P]'. .kraje.txt)

echo "${KRAJE^^}"
echo "Proszę wpisać nazwę kraju:"

read KRAJ
KRAJW="${KRAJ^^}"
KRAJEW="${KRAJE^^}"

for item in $KRAJEW
do
        if [ "$KRAJW" == "$item" ]; then
                match=true
                break
        fi
done

if [ $match ]; then
        echo "true"
else
        echo "false"
fi

} 2> errors.log