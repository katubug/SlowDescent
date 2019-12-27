import crafttweaker.item.IItemStack;
import mods.pyrotech.PitKiln;
import mods.pyrotech.StoneKiln;
import mods.pyrotech.StoneCrucible;
import mods.pyrotech.BrickCrucible;
import mods.pyrotech.GraniteAnvil;
import mods.pyrotech.CrudeDryingRack;

/* -------------------------------------------------------------------------- */
/*                    ANCHOR This script is the messy one!                    */
/* -------------------------------------------------------------------------- */

//NOTE Mods required for this messy-ass script:
//Pyrotech
//Better With Mods
//Project Vibrant Journeys
//FoodFunk
//SaltyMod

/* --------- SECTION Makes Pyrotech Crucibles produce purified water -------- */

//Removes plain water recipes from Crucibles
StoneCrucible.removeRecipes(<liquid:water>);
BrickCrucible.removeRecipes(<liquid:water>);

//Adds water purification recipe to Stone+ Crucibles
StoneCrucible.addRecipe("ice_purified_water", <liquid:purified_water> * 1000, <minecraft:ice>, 1 * 60 * 20, true);
StoneCrucible.addRecipe("packedice_purified_water", <liquid:purified_water> * 2000, <minecraft:ice>, 4 * 60 * 20, true);
StoneCrucible.addRecipe("snowblock_purified_water", <liquid:purified_water> * 500, <minecraft:snow>, 15 * 20, true);
StoneCrucible.addRecipe("snowball_purified_water", <liquid:purified_water> * 125, <minecraft:snowball>, 15 * 20, true);
//!SECTION 

/* ------------------------------ SECTION Boat Changing ----------------------------- */
//Remove BWM Vanilla Boat recipes
recipes.removeByRecipeName("betterwithmods:higheff/oak_boat");
recipes.removeByRecipeName("betterwithmods:higheff/spruce_boat");
recipes.removeByRecipeName("betterwithmods:higheff/birch_boat");
recipes.removeByRecipeName("betterwithmods:higheff/jungle_boat");
recipes.removeByRecipeName("betterwithmods:higheff/acacia_boat");
recipes.removeByRecipeName("betterwithmods:higheff/dark_oak_boat");

//Remove PVJ Boat recipes
var boats = [
    <pvj:jacaranda_boat>,
    <pvj:cherry_blossom_boat>,
    <pvj:juniper_boat>,
    <pvj:cottonwood_boat>,
    <pvj:baobab_boat>,
    <pvj:maple_boat>,
    <pvj:aspen_boat>,
    <pvj:pine_boat>,
    <pvj:fir_boat>,
    <pvj:redwood_boat>,
    <pvj:palm_boat>,
    <pvj:willow_boat>,
    <pvj:mangrove_boat>
] as IItemStack[];

for boat in boats {
    recipes.remove(boat);
}

//FIXME Use loops?
//And adds the PVJ ones all back, because I don't know a better way of doing this.
recipes.addShaped(<pvj:redwood_boat>, [[<pvj:planks_redwood>, null, <pvj:planks_redwood>], [<pyrotech:planks_tarred>, <pyrotech:material:23>, <pyrotech:planks_tarred>]]);

recipes.addShaped(<pvj:palm_boat>, [[<pvj:planks_palm>, null, <pvj:planks_palm>], [<pyrotech:planks_tarred>, <pyrotech:material:23>, <pyrotech:planks_tarred>]]);

recipes.addShaped(<pvj:mangrove_boat>, [[<pvj:planks_mangrove>, null, <pvj:planks_mangrove>], [<pyrotech:planks_tarred>, <pyrotech:material:23>, <pyrotech:planks_tarred>]]);

recipes.addShaped(<pvj:fir_boat>, [[<pvj:planks_fir>, null, <pvj:planks_fir>], [<pyrotech:planks_tarred>, <pyrotech:material:23>, <pyrotech:planks_tarred>]]);

recipes.addShaped(<pvj:pine_boat>, [[<pvj:planks_pine>, null, <pvj:planks_pine>], [<pyrotech:planks_tarred>, <pyrotech:material:23>, <pyrotech:planks_tarred>]]);

recipes.addShaped(<pvj:aspen_boat>, [[<pvj:planks_aspen>, null, <pvj:planks_aspen>], [<pyrotech:planks_tarred>, <pyrotech:material:23>, <pyrotech:planks_tarred>]]);

recipes.addShaped(<pvj:maple_boat>, [[<pvj:planks_maple>, null, <pvj:planks_maple>], [<pyrotech:planks_tarred>, <pyrotech:material:23>, <pyrotech:planks_tarred>]]);

recipes.addShaped(<pvj:baobab_boat>, [[<pvj:planks_baobab>, null, <pvj:planks_baobab>], [<pyrotech:planks_tarred>, <pyrotech:material:23>, <pyrotech:planks_tarred>]]);

recipes.addShaped(<pvj:cottonwood_boat>, [[<pvj:planks_cottonwood>, null, <pvj:planks_cottonwood>], [<pyrotech:planks_tarred>, <pyrotech:material:23>, <pyrotech:planks_tarred>]]);

recipes.addShaped(<pvj:juniper_boat>, [[<pvj:planks_juniper>, null, <pvj:planks_juniper>], [<pyrotech:planks_tarred>, <pyrotech:material:23>, <pyrotech:planks_tarred>]]);

recipes.addShaped(<pvj:cherry_blossom_boat>, [[<pvj:planks_cherry_blossom>, null, <pvj:planks_cherry_blossom>], [<pyrotech:planks_tarred>, <pyrotech:material:23>, <pyrotech:planks_tarred>]]);

recipes.addShaped(<pvj:jacaranda_boat>, [[<pvj:planks_jacaranda>, null, <pvj:planks_jacaranda>], [<pyrotech:planks_tarred>, <pyrotech:material:23>, <pyrotech:planks_tarred>]]);

recipes.addShaped(<pvj:willow_boat>, [[<pvj:planks_willow>, null, <pvj:planks_willow>], [<pyrotech:planks_tarred>, <pyrotech:material:23>, <pyrotech:planks_tarred>]]);

//!SECTION 

/* --------- SECTION Disable Diamond Nuggets and make Diamond Alloy --------- */
/* ------------------- Ingots use Pyrotech Shards instead ------------------- */

//Remove/Hide Nuggets
mods.jei.JEI.removeAndHide(<betterwithmods:material:46>);

//Remove 9x pieces > Ingot recipe, while leaving the recipe with Creeper Oysters in tact.
recipes.removeByRecipeName("betterwithmods:decompress/material.diamond_ingot_compress");

//Remove Ingot recipe w/ Nuggets from Crucible
mods.betterwithmods.Crucible.remove([<betterwithmods:material:45>]);

//Adds new Crucible recipe for Diamond Ingot w/ Shards (stoked)
mods.betterwithmods.Crucible.addStoked([<pyrotech:material:18> * 9],[<betterwithmods:material:45>]);

//====Adds recipes for Diamond Ingots====
//Diamond Leggings
recipes.remove(<minecraft:diamond_leggings>);
recipes.addShaped("diamond_ingot_leggings", <minecraft:diamond_leggings>, [[<betterwithmods:material:45>, <minecraft:diamond>, <betterwithmods:material:45>],[<minecraft:diamond>, null, <minecraft:diamond>], [<minecraft:diamond>, null, <minecraft:diamond>]]);

//Diamond Helmet
recipes.remove(<minecraft:diamond_helmet>);
recipes.addShaped("diamond_ingot_helmet", <minecraft:diamond_helmet>, [[<betterwithmods:material:45>, <minecraft:diamond>, <betterwithmods:material:45>],[<minecraft:diamond>, null, <minecraft:diamond>]]);

//Diamond Chestplate
recipes.remove(<minecraft:diamond_chestplate>);
recipes.addShaped("diamond_ingot_chestplate", <minecraft:diamond_chestplate>, [[<minecraft:diamond>, null, <minecraft:diamond>],[<minecraft:diamond>, <betterwithmods:material:45>, <minecraft:diamond>], [<minecraft:diamond>, <betterwithmods:material:45>, <minecraft:diamond>]]);

//Diamond Boots
recipes.remove(<minecraft:diamond_boots>);
recipes.addShaped("diamond_ingot_boots", <minecraft:diamond_boots>, [[<minecraft:diamond>, null, <minecraft:diamond>], [<betterwithmods:material:45>, null, <betterwithmods:material:45>]]);

//!SECTION 

/* ---------------------- SECTION Misc Remove and Hide ---------------------- */

//Hides unused Foodfunk items
mods.jei.JEI.hide(<foodfunk:rotted_item>);
mods.jei.JEI.hide(<foodfunk:biodegradable_item>);

//Hides disabled PVJ Ground Cover
mods.jei.JEI.hide(<pvj:mossy_cobblestone_rocks>);
mods.jei.JEI.hide(<pvj:red_sandstone_rocks>);

//Remove and Hide BWM's Wool Armor in favor of TaN's.
mods.jei.JEI.removeAndHide(<betterwithmods:wool_boots>);
mods.jei.JEI.removeAndHide(<betterwithmods:wool_helmet>);
mods.jei.JEI.removeAndHide(<betterwithmods:wool_pants>);
mods.jei.JEI.removeAndHide(<betterwithmods:wool_chest>);

//Remove PVJ Limestone Stuff
mods.jei.JEI.removeAndHide(<pvj:limestone>);
mods.jei.JEI.removeAndHide(<pvj:limestone_stairs>);
mods.jei.JEI.removeAndHide(<pvj:limestone_slab>);

//Remove PVJ Marble and Basalt
mods.jei.JEI.removeAndHide(<pvj:basalt>);
mods.jei.JEI.removeAndHide(<pvj:basalt_brick>);
mods.jei.JEI.removeAndHide(<pvj:marble>);
mods.jei.JEI.removeAndHide(<pvj:marble_brick>);

//Make PVJ basalt and marble recipes use Quark's blocks
recipes.replaceAllOccurences(<pvj:basalt>, <quark:basalt>);
recipes.replaceAllOccurences(<pvj:marble>, <quark:marble>);
recipes.replaceAllOccurences(<pvj:basalt_brick>, <quark:world_stone_bricks:3>);
recipes.replaceAllOccurences(<pvj:marble_brick>, <quark:world_stone_bricks:4>);

//!SECTION 

/* ---------------------- SECTION Granite Anvil Recipes --------------------- */

//Salt
recipes.removeByRecipeName("saltmod:salt_pinch_from_slab");
GraniteAnvil.addRecipe("salt_slab_to_pinch", <saltmod:salt_pinch> * 40, <saltmod:salt_slab:*>, 10, "hammer", true);

//Coal
GraniteAnvil.addRecipe("charcoal_flakes_to_dust", <betterwithmods:material:37>, <pyrotech:material:15>, 6, "hammer", true);

//Charcoal
GraniteAnvil.addRecipe("coal_pieces_to_dust", <betterwithmods:material:18>, <pyrotech:material:21>, 6, "hammer", true);

//!SECTION 

/* ----------------------- SECTION Leather Production ----------------------- */
//Adds Pyrotech Drying Rack recipe for Leather > Tanned Leather
CrudeDryingRack.addRecipe("leather_to_tanned", <betterwithmods:material:6>, <minecraft:leather>, 2 * 60 * 20, true);
CrudeDryingRack.addRecipe("cut_leather_to_tanned", <betterwithmods:material:32>, <betterwithmods:material:31>, 2 * 60 * 20, true);

//Removes BWM's recipes for Tanned Leather
//Tanned Leather
mods.betterwithmods.Cauldron.remove([<betterwithmods:material:6>]);
//Cut Tanned Leather
mods.betterwithmods.Cauldron.remove([<betterwithmods:material:32>]);
//Scoured Leather
mods.betterwithmods.Mill.remove([<betterwithmods:material:7>]);
//Cut Scoured Leather
mods.betterwithmods.Mill.remove([<betterwithmods:material:33>]);

//Hides BWM's Scoured Leather and Bark
//Scoured Leather
mods.jei.JEI.removeAndHide(<betterwithmods:material:7>);
//Cut Scoured Leather
mods.jei.JEI.removeAndHide(<betterwithmods:material:33>);
//Barks
mods.jei.JEI.removeAndHide(<betterwithmods:bark>);
mods.jei.JEI.removeAndHide(<betterwithmods:bark:1>);
mods.jei.JEI.removeAndHide(<betterwithmods:bark:2>);
mods.jei.JEI.removeAndHide(<betterwithmods:bark:3>);
mods.jei.JEI.removeAndHide(<betterwithmods:bark:4>);
mods.jei.JEI.removeAndHide(<betterwithmods:bark:5>);
mods.jei.JEI.removeAndHide(<betterwithmods:bark:6>);

//!SECTION 

/* --------------------- SECTION Farmland Compatibility --------------------- */

//Remove recipe for BWM Fertilizer
mods.betterwithmods.Cauldron.remove([<betterwithmods:fertilizer>]);

//Remove and hide Fertilizer and Fertile Farmland
mods.jei.JEI.removeAndHide(<betterwithmods:fertilizer>);
mods.jei.JEI.removeAndHide(<betterwithmods:fertile_farmland>);

//Changes Potash Mulch recipe to require Compost instead of "mulchNitrogen," and also to use either type of ash.
<ore:listAllash>.add(<pyrotech:material>);
<ore:listAllash>.add(<betterwithmods:material:21>);

recipes.remove(<pyrotech:mulch>);
recipes.addShaped(<pyrotech:mulch> * 4, [[<ore:listAllash>, <pyrotech:rock:7>, <ore:listAllash>],[<pyrotech:rock:7>, <composter:compost>, <pyrotech:rock:7>], [<ore:listAllash>, <pyrotech:rock:7>, <ore:listAllash>]]);

//!SECTION 

/* ---------------------- SECTION Completely unsorted --------------------- */

//Removes torch recipes to allow BWM to lock them behind Nethercoal
recipes.remove(<minecraft:torch>);

//Adds recipe for Pyrotech Dirt Clumps
recipes.addShapeless("dirt_conversion", <pyrotech:rock:4> * 2, [<betterwithmods:dirt_pile>]);

//Adds anvil recipe for Stone Bricks > Masonry Bricks
GraniteAnvil.addRecipe("stonebricks_to_masonry", <pyrotech:material:16> * 4, <minecraft:stonebrick>, 8, "pickaxe", true);

//Remove BWM Trapdoor recipes
recipes.removeByRecipeName("betterwithmods:higheff/oak_trapdoor");

//Makes Undead Rising's Golden Heart more expensive
var regenPotion = <minecraft:lingering_potion>.withTag({Potion: "minecraft:strong_regeneration"});

recipes.remove(<mod_lavacow:goldenheart>);

recipes.addShaped("golden_heart_expensive", <mod_lavacow:goldenheart>, [[regenPotion, <betterwithmods:material:45>, regenPotion],[<ore:blockGold>, <mod_lavacow:mootenheart>, <ore:blockGold>], [regenPotion, <quark:diamond_heart>, regenPotion]]);

//Removes some things from Deadly Monsters and Mowzie's Mobs
val dMonWat = [
    <dmonsters:dump>,
    <dmonsters:purgepill>,
    <dmonsters:christmas_tree>,
    <dmonsters:present_box>,
    <dmonsters:presentblock>,
    <dmonsters:mobspawneritem_present>,
    <mowziesmobs:barakoa_mask_misery>,
    <mowziesmobs:barakoa_mask_bliss>,
    <mowziesmobs:barakoa_mask_rage>,
    <mowziesmobs:barakoa_mask_fear>,
    <mowziesmobs:barakoa_mask_fury>,
    <mowziesmobs:grant_suns_blessing>,
    <mowziesmobs:barako_mask>
//    <dmonsters:barbedwire>,
//    <dmonsters:meshfence>,
//    <dmonsters:meshfencepole>
] as IItemStack[];

for item in dMonWat {
    mods.jei.JEI.removeAndHide(item);
}

//!SECTION 