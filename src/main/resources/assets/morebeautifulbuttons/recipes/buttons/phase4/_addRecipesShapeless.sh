#!/bin/bash
function do_normal() {
	local -n normal=$2
	for button in ${normal[*]}
	do
		file="${button}_button.json"
		echo "{" > $file
		echo "\"type\": \"forge:ore_shapeless\"," >> $file
		echo "  \"ingredients\": [" >> $file
		echo "      {" >> $file
		echo "        \"item\": \"minecraft:${button}\"" >> $file
		echo "      }," >> $file
		echo "      {" >> $file
		echo "        \"item\": \"morebeautifulbuttons:button_press\"" >> $file
		echo "      }" >> $file
		echo "    ]," >> $file
		echo "  \"result\": {" >> $file
		echo "    \"item\": \"morebeautifulbuttons:${button}_button\"" >> $file
		echo "  }" >> $file  
		echo "}" >> $file
	done
}

function do_variant() {
	local -n work=$2
	data=0
	for button in ${work[*]}
	do
		file="${button}_button.json"
		echo "{" > $file
		echo "\"type\": \"forge:ore_shapeless\"," >> $file
		echo "  \"ingredients\": [" >> $file
		echo "      {" >> $file
		echo "        \"item\": \"minecraft:${1}\"," >> $file
		echo "        \"data\": ${data}" >> $file
		let "data++"
		echo "      }," >> $file
		echo "      {" >> $file
		echo "        \"item\": \"morebeautifulbuttons:button_press\"" >> $file
		echo "      }" >> $file
		echo "    ]," >> $file
		echo "  \"result\": {" >> $file
		echo "    \"item\": \"morebeautifulbuttons:${button}_button\"" >> $file
		echo "  }" >> $file  
		echo "}" >> $file

	done
}


powdered_concrete=(white_concrete_powder orange_concrete_powder magenta_concrete_powder light_blue_concrete_powder yellow_concrete_powder lime_concrete_powder pink_concrete_powder gray_concrete_powder light_gray_concrete_powder cyan_concrete_powder purple_concrete_powder blue_concrete_powder brown_concrete_powder green_concrete_powder red_concrete_powder black_concrete_powder)
do_variant "concrete_powder" powdered_concrete

basic=(cactus redstone_block)
do_normal "Stone" basic
