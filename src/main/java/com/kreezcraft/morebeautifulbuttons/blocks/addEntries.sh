#!/bin/bash

function mkButton() {
	type=$1
	local -n work=$2
#	if [[( $# -eq 3 && $3 == "variant")]]; then
#		data=0
#	fi
	
	for button in ${work[*]}
	do
	  VARNAME="${button^^}_BUTTON"
	  name=${VARNAME,,}
	  echo "public static final ${type}Button ${VARNAME} = new ${type}Button(\"${name}\");" >> $file
	done
	echo "//" >> $file
	echo "//" >> $file
}

file="InitBlocks.java"

powdered_concrete=(white_concrete_powder orange_concrete_powder magenta_concrete_powder light_blue_concrete_powder yellow_concrete_powder lime_concrete_powder pink_concrete_powder gray_concrete_powder light_gray_concrete_powder cyan_concrete_powder purple_concrete_powder blue_concrete_powder brown_concrete_powder green_concrete_powder red_concrete_powder black_concrete_powder)
mkButton "Sand" powdered_concrete

basic=(cactus redstone_block)
mkButton "Stone" basic

