#!/bin/bash
# you must have jq installed for this to work

for f in *.json;
do
  echo "found $f"
  echo "extracting ingredient"
  tempVar=$(cat $f | jq -r '.ingredients[0].item')
  theBlock=$(echo "$tempVar" | cut -f2 -d:)
  echo "extracting result"
  tempVar=$(cat $f | jq -r '.result.item')
  theResult=$(echo "$tempVar" | cut -f2 -d:)
  echo "creating code fragment"
  echo "GameRegistry.addShapelessRecipe(new ItemStack(InitBlocks.${theResult^^}), Blocks.${theBlock^^}, InitBlocks.BUTTON_PRESS);" >> copyMe;
done

