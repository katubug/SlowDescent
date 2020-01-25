import crafttweaker.item.IItemStack;

//NOTE Mods required for this script:
// Better With Mods
// Deadly Monsters
// Food Funk
// Misty World
// Mowzie's Mobs
// Ore Core
// Project: Vibrant Journeys
// Tough As Nails

/* -------------------------------------------------------------------------- */
/*                        SECTION Misc Remove and Hide                        */
/* -------------------------------------------------------------------------- */

var remAndHide = [
//Hides unused Foodfunk items
    <foodfunk:rotted_item>,
    <foodfunk:biodegradable_item>,
//Hides disabled PVJ Ground Cover
    <pvj:mossy_cobblestone_rocks>,
    <pvj:red_sandstone_rocks>,
//Remove PVJ Limestone Stuff
    <pvj:limestone>,
    <pvj:limestone_stairs>,
    <pvj:limestone_slab>,
//Remove PVJ Marble and Basalt
    <pvj:basalt>,
    <pvj:basalt_brick>,
    <pvj:marble>,
    <pvj:marble_brick>,
    <pvj:basalt_stairs>,
    <pvj:basalt_brick_stairs>,
    <pvj:basalt_brick_slab>,
    <pvj:basalt_slab>,
//Tough as Nails Stuff
    <toughasnails:campfire>,
    <toughasnails:rain_collector>,
//Remove Deadly Monsters Stuff
    <dmonsters:sunlightdrop>, 
    <dmonsters:dump>,
    <dmonsters:purgepill>,
    <dmonsters:christmas_tree>,
    <dmonsters:present_box>,
    <dmonsters:presentblock>,
    <dmonsters:mobspawneritem_present>,
//Remove Mowzie's Mobs Stuff
    <mowziesmobs:barakoa_mask_misery>,
    <mowziesmobs:barakoa_mask_bliss>,
    <mowziesmobs:barakoa_mask_rage>,
    <mowziesmobs:barakoa_mask_fear>,
    <mowziesmobs:barakoa_mask_fury>,
    <mowziesmobs:grant_suns_blessing>,
    <mowziesmobs:barako_mask>,
    <mowziesmobs:dart>,
    <mowziesmobs:spear>,
    <mowziesmobs:blowgun>,
//Remove OreCore Stuff
    <orecore:compressed_coal_ore>,
    <orecore:compressed_diamond_ore>,
    <orecore:compressed_emerald_ore>,
    <orecore:compressed_gold_ore>,
    <orecore:compressed_iron_ore>,
    <orecore:compressed_lapis_ore>,
    <orecore:compressed_redstone_ore>,
    <orecore:stone>,
    <orecore:magmarack_block>,
    <orecore:xp_ore>,
    <orecore:nether_xp_ore>,
    <orecore:end_xp_ore>,
    <orecore:basalt_block>,
    <orecore:basalt_ore>,
    <orecore:marmor_block>,
    <orecore:marmor_ore>,
    <orecore:slate_block>,
    <orecore:slate_ore>,
    <orecore:oil_slate_ore>,
    <orecore:lava_crystal_block>,
    <orecore:gold_gravel_ore>,
    <orecore:iron_gravel_ore>,
    <orecore:lava_crystal>,
    <orecore:coal_dust>,
    <orecore:lava_crystal_ore>,
    <orecore:iron_dust>,
    <orecore:gold_dust>,
    <orecore:lapis_dust>,
    <orecore:emerald_dust>,
    <orecore:diamond_dust>,
    <orecore:tiny_coal_dust>,
    <orecore:tiny_iron_dust>,
    <orecore:tiny_gold_dust>,
    <orecore:tiny_lapis_dust>,
    <orecore:tiny_emerald_dust>,
    <orecore:tiny_diamond_dust>,
    <orecore:emerald_sword>,
    <orecore:emerald_pickaxe>,
    <orecore:emerald_axe>,
    <orecore:emerald_shovel>,
    <orecore:emerald_hoe>,
    <orecore:lavacrystal_sword>,
    <orecore:lavacrystal_pickaxe>,
    <orecore:lavacrystal_axe>,
    <orecore:lavacrystal_shovel>,
    <orecore:lavacrystal_hoe>,
    <orecore:emerald_helmet>,
    <orecore:emerald_chestplate>,
    <orecore:emerald_leggins>,
    <orecore:emerald_boots>,
    <orecore:emerald_boots>,
    <orecore:lavacrystal_helmet>,
    <orecore:lavacrystal_chestplate>,
    <orecore:lavacrystal_leggins>,
    <orecore:lavacrystal_boots>,
    <orecore:compressed_aluminium_ore>,
    <orecore:compressed_amethyst_ore>,
    <orecore:compressed_copper_ore>,
    <orecore:compressed_iridium_ore>,
    <orecore:compressed_lead_ore>,
    <orecore:compressed_platinum_ore>,
    <orecore:compressed_quartz_ore>,
    <orecore:compressed_ruby_ore>,
    <orecore:compressed_sapphire_ore>,
    <orecore:compressed_silver_ore>,
    <orecore:compressed_tin_ore>,
    <orecore:compressed_uranium_ore>,
    <orecore:nether_aluminium_ore>,
    <orecore:nether_amethyst_ore>,
    <orecore:nether_copper_ore>,
    <orecore:nether_iridium_ore>,
    <orecore:nether_lead_ore>,
    <orecore:nether_platin_ore>,
    <orecore:nether_ruby_ore>,
    <orecore:nether_sapphire_ore>,
    <orecore:nether_silver_ore>,
    <orecore:nether_tin_ore>,
    <orecore:nether_uranium_ore>,
    <orecore:end_aluminium_ore>,
    <orecore:end_amethyst_ore>,
    <orecore:end_copper_ore>,
    <orecore:end_iridium_ore>,
    <orecore:end_lead_ore>,
    <orecore:end_platin_ore>,
    <orecore:end_ruby_ore>,
    <orecore:end_sapphire_ore>,
    <orecore:end_silver_ore>,
    <orecore:end_tin_ore>,
    <orecore:end_uranium_ore>,
    <orecore:aluminium_ore>,
    <orecore:amethyst_ore>,
    <orecore:copper_ore>,
    <orecore:iridium_ore>,
    <orecore:lead_ore>,
    <orecore:platinum_ore>,
    <orecore:ruby_ore>,
    <orecore:sapphire_ore>,
    <orecore:silver_ore>,
    <orecore:tin_ore>,
    <orecore:uranium_ore>,
    <orecore:quartz_ore>,
    <orecore:copper_ingot>,
    <orecore:aluminium_ingot>,
    <orecore:lead_ingot>,
    <orecore:platinum_ingot>,
    <orecore:silver_ingot>,
    <orecore:tin_ingot>,
    <orecore:iridium>,
    <orecore:ruby>,
    <orecore:sapphire>,
    <orecore:amethyst>,
    <orecore:quartz>,
    <orecore:uranium>,
    <orecore:oil_paste>,
    <orecore:oil_bucket>,
//Unwanted Foods
    <betterwithmods:chicken_soup>,
    <saltmod:salt_beetroot>,
    <saltmod:corned_beef>,
    <xlfoodmod:super_energy_drink>,
    <xlfoodmod:deadly_energy_drink>,
    <xlfoodmod:strong_energy_drink>,
    <xlfoodmod:stealthy_energy_drink>,
    <xlfoodmod:healthy_energy_drink>,
    <xlfoodmod:speedy_energy_drink>,
    <xlfoodmod:empty_can>,
    <xlfoodmod:salt>,
    <xlfoodmod:rock_salt>
] as IItemStack[];

for item in remAndHide {
    mods.jei.JEI.removeAndHide(item);
}

//!SECTION

/* -------------------------------------------------------------------------- */
/*                     SECTION Remove Recipe But Not Item                     */
/* -------------------------------------------------------------------------- */

//Removes torch recipes to allow BWM to lock them behind Nethercoal
recipes.remove(<minecraft:torch>);

//Removes PVJ's Bones > Bone recipe
recipes.remove(<minecraft:bone>);

//!SECTION 

/* ---------------------- SECTION Recipe removal by ID ---------------------- */

var badRecipes = [
    "pvj:cobblestone_1",
    "pvj:cobblestone_2",
    "orecore:cobblestone",
    "mist:crafting_table",
    "mist:furnace",
    "mist:dispenser",
    "mist:dropper",
    "mist:brewing_stand",
    "betterwithmods:higheff/oak_trapdoor",
    "xlfoodmod:beef_jerky"
] as string[];

for recipe in badRecipes {
    recipes.removeByRecipeName(recipe);
}

//!SECTION 