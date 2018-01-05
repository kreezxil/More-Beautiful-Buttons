package com.kreezcraft.morebeautifulbuttons;

import com.kreezcraft.morebeautifulbuttons.blocks.InitBlocks;

import net.minecraft.creativetab.CreativeTabs;
import net.minecraft.item.Item;
import net.minecraft.item.ItemStack;

public class MBBTab extends CreativeTabs {

	public MBBTab(String label) {
		super(label);
		setBackgroundImageName("item_search.png");
	}

	@Override
	public ItemStack getTabIconItem() {
		return new ItemStack(InitBlocks.BLUE_TERRACOTTA_BUTTON);
	}
	
	@Override
	public boolean  hasSearchBar() {
		return true;
	}


}
