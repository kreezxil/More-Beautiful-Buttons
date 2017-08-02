package com.kreezcraft.morebeautifulbuttons.blocks;

import com.kreezcraft.morebeautifulbuttons.MoreBeautifulButtons;
import com.kreezcraft.morebeautifulbuttons.client.IHasModel;
import com.kreezcraft.morebeautifulbuttons.items.InitItems;

import net.minecraft.block.BlockButtonWood;
import net.minecraft.block.material.Material;
import net.minecraft.creativetab.CreativeTabs;
import net.minecraft.item.Item;
import net.minecraft.item.ItemBlock;

public class WoodButton extends BlockButtonWood implements IHasModel {
	protected String name;

	public WoodButton(String name) {
		super();
		this.name = name;
		setUnlocalizedName(MoreBeautifulButtons.MODID + "." + name);
		setCreativeTab(CreativeTabs.REDSTONE);
		setRegistryName(name);
		InitBlocks.BLOCKS.add(this);
		InitItems.ITEMS.add(new ItemBlock(this).setRegistryName(getRegistryName()));
		
	}
	
	@Override
	public void registerModels() {
		MoreBeautifulButtons.proxy.registerItemRenderer(Item.getItemFromBlock(this), 0, "inventory");
	}

}
