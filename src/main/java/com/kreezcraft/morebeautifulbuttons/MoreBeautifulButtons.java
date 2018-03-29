package com.kreezcraft.morebeautifulbuttons;

import com.kreezcraft.morebeautifulbuttons.proxy.CommonProxy;
import com.kreezcraft.morebeautifulbuttons.recipes.ModRecipes;

import net.minecraftforge.fml.common.Mod;
import net.minecraftforge.fml.common.SidedProxy;
import net.minecraftforge.fml.common.event.FMLInitializationEvent;
import net.minecraftforge.fml.common.event.FMLPostInitializationEvent;
import net.minecraftforge.fml.common.event.FMLPreInitializationEvent;

@Mod(modid = MoreBeautifulButtons.MODID, name = MoreBeautifulButtons.NAME, version = MoreBeautifulButtons.VERSION)
public class MoreBeautifulButtons {

	public static final String MODID = "morebeautifulbuttons";
	public static final String NAME = "More Beautiful Buttons";
	public static final String VERSION = "@VERSION@";

	@Mod.Instance(MODID)
	public static MoreBeautifulButtons instance;
	
	public static final MoreBeautifulButtonsTab creativeTab = new MoreBeautifulButtonsTab("More Beautiful Plates");

	@Mod.EventHandler
	public void preInit(FMLPreInitializationEvent event) {
	}

	@Mod.EventHandler
	public void init(FMLInitializationEvent event) {
		ModRecipes.init();
	}

	@Mod.EventHandler
	public void postInit(FMLPostInitializationEvent event) {

	}

	@SidedProxy(serverSide = "com.kreezcraft.morebeautifulbuttons.proxy.CommonProxy", clientSide = "com.kreezcraft.morebeautifulbuttons.proxy.ClientProxy")
	public static CommonProxy proxy;

}