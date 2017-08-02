#!/bin/bash

function mkButton() {
	local -n todo=$2
	for button in ${todo[*]}
	do
	  file="${button}_button.json"
	  echo "{" > $file
	  echo "   \"parent\": \"morebeautifulbuttons:block/${button}_button_inventory\"" >> $file
	  echo "}" >> $file
	done
}


basic=(wooden)
mkButton "Stone" basic
