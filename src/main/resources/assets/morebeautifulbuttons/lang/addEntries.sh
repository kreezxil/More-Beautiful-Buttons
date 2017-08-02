#!/bin/bash
function mkButton() {
	file="en_us.lang"

	local -n todo=$2	
	
	for button in ${todo[*]}
	do
	  temp=(${button//_/ })
	  name=${temp[*]^}
	  echo "tile.morebeautifulbuttons.${button}_button.name=${name} Button" >> $file
	done
}

powdered_concrete=(white_concrete_powder orange_concrete_powder magenta_concrete_powder light_blue_concrete_powder yellow_concrete_powder lime_concrete_powder pink_concrete_powder gray_concrete_powder light_gray_concrete_powder cyan_concrete_powder purple_concrete_powder blue_concrete_powder brown_concrete_powder green_concrete_powder red_concrete_powder black_concrete_powder)
mkButton "Sand" powdered_concrete

basic=(cactus redstone_block)
mkButton "Stone" basic

