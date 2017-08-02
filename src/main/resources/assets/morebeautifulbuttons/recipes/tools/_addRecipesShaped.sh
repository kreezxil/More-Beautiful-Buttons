#!/bin/bash
function do_normal() {
	for button in ${normal[*]}
	do
		file="${button}_button.json"
		echo "{" > $file
		echo "\"type\": \"forge:ore_shaped\"," >> $file
		echo "  \"pattern\": [" >> $file
		echo "    \"#\"" >> $file
		echo "  ]," >> $file
		echo "  \"key\": {" >> $file
		echo "    \"#\": [" >> $file
		echo "      {" >> $file
		echo "        \"item\": \"minecraft:${1}\"" >> $file
		echo "      }" >> $file
		echo "    ]" >> $file
		echo "  }," >> $file
		echo "  \"result\": {" >> $file
		echo "    \"item\": \"morebeautifulbuttons:${button}_button\"" >> $file
		echo "  }" >> $file  
		echo "}" >> $file	done
}

function do_variant() {
	local -n work=$2
	data=0
	for button in ${work[*]}
	do
		file="${button}_button.json"
		echo "{" > $file
		echo "\"type\": \"forge:ore_shapeless\"," >> $file
		echo "  \"pattern\": [" >> $file
		echo "    \"#\"" >> $file
		echo "  ]," >> $file
		echo "  \"key\": {" >> $file
		echo "    \"#\": [" >> $file
		echo "      {" >> $file
		echo "        \"item\": \"minecraft:${1}\"," >> $file
		echo "        \"data\": ${data}" >> $file
		let "data++"
		echo "      }" >> $file
		echo "    ]" >> $file
		echo "  }," >> $file
		echo "  \"result\": {" >> $file
		echo "    \"item\": \"morebeautifulbuttons:${button}_button\"" >> $file
		echo "  }" >> $file  
		echo "}" >> $file
	done
}

normal=(bricks end_stone_bricks gravel nether_bricks obsidian red_nether_bricks soul_sand)
do_normal	

dirt=(dirt coarse_dirt)
do_variant "dirt" dirt

red_sandstone=(red_sandstone chiseled_red_sandstone smooth_red_sandstone)
do_variant "red_sandstone" red_sandstone

sandstone=(sandstone chiseled_sandstone smooth_sandstone)
do_variant "sandstone" sandstone

prismarine=(prismarine prismarine_bricks dark_prismarine)
do_variant "prismarine" prismarine

sand=(sand red_sand)
do_variant "sand" sand

stonebrick=(stone_bricks mossy_stone_bricks cracked_stone_bricks chiseled_stone_bricks)
do_variant "stonebrick" stonebrick

