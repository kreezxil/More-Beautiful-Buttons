package com.kreezcraft.morebeautifulbuttons;

import com.kreezcraft.morebeautifulbuttons.blocks.InitBlocks;

import net.minecraft.creativetab.CreativeTabs;
import net.minecraft.item.ItemStack;

public class MoreBeautifulButtonsTab extends CreativeTabs {

	public MoreBeautifulButtonsTab(String label) {
		super(MoreBeautifulButtons.MODID);
		setBackgroundImageName("item_search.png");
	}

	@Override
	public ItemStack getTabIconItem() {
		return new ItemStack(InitBlocks.DIAMOND_BLOCK_BUTTON);
	}
	
	@Override
	public boolean hasSearchBar() {
		return true;
	}

	
}