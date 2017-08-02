#!/bin/bash
function mkButton() {
	local -n todo=$2

	for button in ${todo[*]}
	do
	  file="${button}_button.json"
	  echo "{" > $file
	  echo "   \"parent\": \"minecraft:block/button\"," >> $file
	  echo "   \"textures\": {" >> $file
	  echo "       \"texture\": \"morebeautifulbuttons:blocks/${button}\"" >> $file
	  echo "   }" >> $file
	  echo "}" >> $file
	
	  file="${button}_button_pressed.json"
	  echo "{" > $file
	  echo "   \"parent\": \"minecraft:block/button_pressed\"," >> $file
	  echo "   \"textures\": {" >> $file
	  echo "       \"texture\": \"morebeautifulbuttons:blocks/${button}\"" >> $file
	  echo "   }" >> $file
	  echo "}" >> $file
	
	  file="${button}_button_inventory.json"
	  echo "{" > $file
	  echo "   \"parent\": \"minecraft:block/button_inventory\"," >> $file
	  echo "   \"textures\": {" >> $file
	  echo "       \"texture\": \"morebeautifulbuttons:blocks/${button}\"" >> $file
	  echo "   }" >> $file
	  echo "}" >> $file
	
	
	done
}




basic=(wooden)
mkButton "Stone" basic


