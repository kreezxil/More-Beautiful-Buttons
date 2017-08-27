#!/bin/bash
# you must have jq installed for this to work

for f in *.json;
do
  theBlock=$(cat $f | jq -r '.ingredients[0].item')
  theResult=$(cat $f | jq -r '.result.item')
  echo "GameRegistry.addShapelessRecipe(new ItemStack(${theResult}), ${theBlock}, morebeautifulbuttons:button_press);" >> copyMe;
done

