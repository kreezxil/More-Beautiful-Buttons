package com.kreezcraft.morebeautifulbuttons.blocks;

import com.kreezcraft.morebeautifulbuttons.MoreBeautifulButtons;
import com.kreezcraft.morebeautifulbuttons.client.IHasModel;
import com.kreezcraft.morebeautifulbuttons.items.InitItems;

import net.minecraft.block.BlockButtonStone;
import net.minecraft.block.state.IBlockState;
import net.minecraft.creativetab.CreativeTabs;
import net.minecraft.entity.player.EntityPlayer;
import net.minecraft.init.SoundEvents;
import net.minecraft.item.Item;
import net.minecraft.item.ItemBlock;
import net.minecraft.util.SoundCategory;
import net.minecraft.util.math.BlockPos;
import net.minecraft.world.IBlockAccess;
import net.minecraft.world.World;

public class LightButton extends BlockButtonStone implements IHasModel {
	
	protected String name;

	public LightButton(String name) {
		super();
		this.name = name;
		setUnlocalizedName(MoreBeautifulButtons.MODID + "." + name);
		setCreativeTab(MoreBeautifulButtons.creativeTab);
		setRegistryName(name);
		InitBlocks.BLOCKS.add(this);
		InitItems.ITEMS.add(new ItemBlock(this).setRegistryName(getRegistryName()));
		
	}

	@Override
	public void registerModels() {
		MoreBeautifulButtons.proxy.registerItemRenderer(Item.getItemFromBlock(this), 0, "inventory");
	}

	@Override
	protected void playClickSound(EntityPlayer player, World worldIn, BlockPos pos) {
	      worldIn.playSound(player, pos, SoundEvents.BLOCK_GLASS_HIT, SoundCategory.BLOCKS, 0.3F, 0.6F);
	}

	@Override
	protected void playReleaseSound(World worldIn, BlockPos pos) {
          worldIn.playSound((EntityPlayer)null, pos, SoundEvents.BLOCK_GLASS_PLACE, SoundCategory.BLOCKS, 0.3F, 0.5F);
	}

	@Override
	public int getLightValue(IBlockState state, IBlockAccess world, BlockPos pos) {
		return 15;
	}

	
}
