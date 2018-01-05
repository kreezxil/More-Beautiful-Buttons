package com.kreezcraft.morebeautifulbuttons.items;

import java.util.ArrayList;
import java.util.List;

import com.kreezcraft.morebeautifulbuttons.MoreBeautifulButtons;

import net.minecraft.creativetab.CreativeTabs;
import net.minecraft.item.Item;

public class InitItems {

	public static final List<Item> ITEMS = new ArrayList<Item>();

	public static final Item BUTTON_PRESS = new ItemBase("button_press").setCreativeTab(MoreBeautifulButtons.creativeTab);

}