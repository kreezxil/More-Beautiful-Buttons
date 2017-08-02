#!/bin/bash

function mkButton() {
	
	local -n todo=${2}
	
	for button in ${todo[*]}
	do
	  file="${button}_button.json"
	  echo "{" > $file
	  echo "  \"variants\": {" >> $file
	  echo "      \"facing=up,powered=false\":    { \"model\": \"morebeautifulbuttons:${button}_button\", \"uvlock\": true }," >> $file
	  echo "      \"facing=down,powered=false\":  { \"model\": \"morebeautifulbuttons:${button}_button\", \"uvlock\": true, \"x\": 180 }," >> $file
	  echo "      \"facing=east,powered=false\":  { \"model\": \"morebeautifulbuttons:${button}_button\", \"uvlock\": true, \"x\": 90, \"y\": 90 }," >> $file
	  echo "      \"facing=west,powered=false\":  { \"model\": \"morebeautifulbuttons:${button}_button\", \"uvlock\": true, \"x\": 90, \"y\": 270 }," >> $file
	  echo "      \"facing=south,powered=false\": { \"model\": \"morebeautifulbuttons:${button}_button\", \"uvlock\": true, \"x\": 90, \"y\": 180 }," >> $file
	  echo "      \"facing=north,powered=false\": { \"model\": \"morebeautifulbuttons:${button}_button\", \"uvlock\": true, \"x\": 90 }," >> $file
	  echo "      \"facing=up,powered=true\":     { \"model\": \"morebeautifulbuttons:${button}_button_pressed\", \"uvlock\": true }," >> $file
	  echo "      \"facing=down,powered=true\":   { \"model\": \"morebeautifulbuttons:${button}_button_pressed\", \"uvlock\": true, \"x\": 180 }," >> $file
	  echo "      \"facing=east,powered=true\":   { \"model\": \"morebeautifulbuttons:${button}_button_pressed\", \"uvlock\": true, \"x\": 90, \"y\": 90 }," >> $file
	  echo "      \"facing=west,powered=true\":   { \"model\": \"morebeautifulbuttons:${button}_button_pressed\", \"uvlock\": true, \"x\": 90, \"y\": 270 }," >> $file
	  echo "      \"facing=south,powered=true\":  { \"model\": \"morebeautifulbuttons:${button}_button_pressed\", \"uvlock\": true, \"x\": 90, \"y\": 180 }," >> $file
	  echo "      \"facing=north,powered=true\":  { \"model\": \"morebeautifulbuttons:${button}_button_pressed\", \"uvlock\": true, \"x\": 90 }" >> $file
	  echo "  }" >> $file
	  echo "}" >> $file
	
	
	done
}

powdered_concrete=(white_concrete_powder orange_concrete_powder magenta_concrete_powder light_blue_concrete_powder yellow_concrete_powder lime_concrete_powder pink_concrete_powder gray_concrete_powder light_gray_concrete_powder cyan_concrete_powder purple_concrete_powder blue_concrete_powder brown_concrete_powder green_concrete_powder red_concrete_powder black_concrete_powder)
mkButton "Sand" powdered_concrete

basic=(cactus redstone_block)
mkButton "Stone" basic
