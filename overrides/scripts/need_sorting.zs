import crafttweaker.item.IItemStack;
import mods.pyrotech.PitKiln;
import mods.pyrotech.StoneKiln;
import mods.pyrotech.StoneCrucible;
import mods.pyrotech.BrickCrucible;
import mods.pyrotech.GraniteAnvil;
import mods.pyrotech.CrudeDryingRack;
import crafttweaker.block.IBlockDefinition;
import crafttweaker.block.IBlock;

/* -------------------------------------------------------------------------- */
/*                    ANCHOR This script is the messy one!                    */
/* -------------------------------------------------------------------------- */

//NOTE Mods required for this messy-ass script:
// Better With Mods
// Canny Composter
// Embers
// Fish's Undead Rising
// InitialInventory
// NetherEx
// Project Vibrant Journeys
// Pyrotech
// Quark
// Salty Mod
// Sanity
// Tough As Nails

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

var plank = [
    <pvj:planks_jacaranda>,
    <pvj:planks_cherry_blossom>,
    <pvj:planks_juniper>,
    <pvj:planks_cottonwood>,
    <pvj:planks_baobab>,
    <pvj:planks_maple>,
    <pvj:planks_aspen>,
    <pvj:planks_pine>,
    <pvj:planks_fir>,
    <pvj:planks_redwood>,
    <pvj:planks_palm>,
    <pvj:planks_willow>,
    <pvj:planks_mangrove>
] as IItemStack[];

var boatNames = [
    "pvj_jacaranda_boat",
    "pvj_cherry_blossom_boat",
    "pvj_juniper_boat",
    "pvj_cottonwood_boat",
    "pvj_baobab_boat",
    "pvj_maple_boat",
    "pvj_aspen_boat",
    "pvj_pine_boat",
    "pvj_fir_boat",
    "pvj_redwood_boat",
    "pvj_palm_boat",
    "pvj_willow_boat",
    "pvj_mangrove_boat"
] as string[];

for boat in boats {
    recipes.remove(boat);
}

for i, boat in boats {
    recipes.addShaped(boatNames[i], boat, [[plank[i], null, plank[i]],[<pyrotech:planks_tarred>, <pyrotech:material:23>, <pyrotech:planks_tarred>]]);
}

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

/* --------------------- SECTION Forced OreDict Recipes --------------------- */

//Adds some oredict to relevant items
<ore:stoneBasalt>.add(<netherex:basalt>);
<ore:basaltBrick>.add(<netherex:basalt_brick>);
<ore:stoneBasaltBrick>.add(<quark:world_stone_bricks:3>);
<ore:cobblestone>.add(<mist:cobblestone>);

//FIXME The following scripts somehow make all recipes take <ore:string> instead of <ore:twine>. I have no goshdang clue why, and no one in the CrT discord has responded yet. So I'll set this aside for later.
<ore:twine>.add(<betterwithmods:material:3>);
<ore:string>.add(<pyrotech:material:14>);
<ore:string>.add(<pyrotech:material:26>);
<ore:string>.add(<betterwithmods:material:3>);

//Makes stick recipes more compatible
recipes.replaceAllOccurences(<minecraft:stick>, <ore:stickWood>);

//Change String recipes to use OreDict
recipes.replaceAllOccurences(<minecraft:string>, <ore:twine>, <*>.only(function(item) {
    return !isNull(item) & !<minecraft:bow>.matches(item);
}));

/*
SECTION Test Later
REVIEW - Could I do something like:
var cobbleRecipeArray = [
    <minecraft:cobblestone_wall>,
    <minecraft:stone_stairs>
] as IItemStack[];

recipes.replaceAllOccurences(<minecraft:cobblestone>, <ore:cobblestone>, <*>.only(function(item) {
    return !isNull(item) & cobbleRecipeArray[i].matches(item);
}));
!SECTION 
*/

//Change String recipes to use OreDict part 2
recipes.replaceAllOccurences(<ore:string>, <ore:twine>, <*>.only(function(item) {
    return !isNull(item) & !<minecraft:wool>.matches(item);
}));

//Make Basalt and Marble recipes use oredict blocks
recipes.replaceAllOccurences(<pvj:marble>, <ore:stoneMarble>);
recipes.replaceAllOccurences(<pvj:marble_brick>, <quark:world_stone_bricks:4>);
recipes.replaceAllOccurences(<netherex:basalt>, <ore:stoneBasalt>);
recipes.replaceAllOccurences(<quark:basalt>, <ore:stoneBasalt>);
//recipes.replaceAllOccurences(<pvj:basalt>, <ore:stoneBasalt>);
recipes.replaceAllOccurences(<netherex:smooth_basalt>, <ore:stoneBasaltPolished>);
recipes.replaceAllOccurences(<quark:basalt:1>, <ore:stoneBasaltPolished>);
recipes.replaceAllOccurences(<netherex:basalt_brick>, <ore:stoneBasaltBrick>);
recipes.replaceAllOccurences(<quark:world_stone_bricks:3>, <ore:stoneBasaltBrick>);
//recipes.replaceAllOccurences(<pvj:basalt_brick>, <ore:basaltBrick>);

//Makes Fossil Stands use blocks that exist
recipes.addShaped("fossil_stand_oredict", <orecore:fossil_stand_base>, [[<minecraft:concrete:8>, <minecraft:concrete:8>, <minecraft:concrete:8>],[<ore:stoneBasaltPolished>, <ore:stoneBasaltPolished>, <ore:stoneBasaltPolished>], [<minecraft:concrete:8>, <minecraft:concrete:8>, <minecraft:concrete:8>]]);




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
recipes.addShaped("new_potash_mulch", <pyrotech:mulch> * 4, [[<ore:listAllash>, <pyrotech:rock:7>, <ore:listAllash>],[<pyrotech:rock:7>, <composter:compost>, <pyrotech:rock:7>], [<ore:listAllash>, <pyrotech:rock:7>, <ore:listAllash>]]);

//!SECTION 

/* ---------------------- SECTION Completely unsorted --------------------- */

//Hides unwanted JEI Categories
mods.jei.JEI.hideCategory("minecraft.anvil");
mods.jei.JEI.hideCategory("embers.dawnstone_anvil");

//Changes Chopping Block recipe to not overlap BWM's planks recipes. REVIEW I'm not sure this is how I want to do this?
//I could theoretically just remove BWM's planks recipes and force them to use the Saw?
recipes.remove(<pyrotech:chopping_block>);
recipes.addShaped("alternate_chopping_block", <pyrotech:chopping_block>, [[null, <ore:toolAxe>, null], [<ore:logWood>, <ore:logWood>, <ore:logWood>]]);

//Adds recipe for Pyrotech Dirt Clumps
recipes.addShapeless("dirt_conversion", <pyrotech:rock:4> * 2, [<betterwithmods:dirt_pile>]);

//Adds anvil recipe for Stone Bricks > Masonry Bricks
GraniteAnvil.addRecipe("stonebricks_to_masonry", <pyrotech:material:16> * 4, <minecraft:stonebrick>, 8, "pickaxe", true);

//Makes Undead Rising's Golden Heart more expensive
//Set a variable
var regenPotion = <minecraft:lingering_potion>.withTag({Potion: "minecraft:strong_regeneration"});
//Remove old recipe and add new one
recipes.remove(<mod_lavacow:goldenheart>);
recipes.addShaped("golden_heart_expensive", <mod_lavacow:goldenheart>, [[regenPotion, <betterwithmods:material:45>, regenPotion],[<ore:blockGold>, <mod_lavacow:mootenheart>, <ore:blockGold>], [regenPotion, <quark:diamond_heart>, regenPotion]]);

//Adds a recipe for nametags
recipes.addShaped("nametag", <minecraft:name_tag> * 2, [[<ore:string>, <ore:string>, null],[<ore:string>, <ore:paper>, null], [null, null, <ore:dyeBlack>]]);

//=== Change recipes for BWM Wool Armor, which has been repurposed to Pajamas===
recipes.addShaped("pajama_boots", <betterwithmods:wool_boots>, [[<ore:string>, null, <ore:string>],[<betterwithmods:material:4>, <ore:string>, <betterwithmods:material:4>], [<betterwithmods:material:4>, <ore:string>, <betterwithmods:material:4>]]);
recipes.addShaped("pajama_pants", <betterwithmods:wool_pants>, [[<betterwithmods:material:4>, <betterwithmods:material:4>, <betterwithmods:material:4>],[<betterwithmods:material:4>, <ore:string>, <betterwithmods:material:4>], [<betterwithmods:material:4>, <ore:string>, <betterwithmods:material:4>]]);
recipes.addShaped("pajama_shirt", <betterwithmods:wool_chest>, [[<betterwithmods:material:4>, <ore:string>, <betterwithmods:material:4>],[<betterwithmods:material:4>, <betterwithmods:material:4>, <betterwithmods:material:4>], [<betterwithmods:material:4>, <betterwithmods:material:4>, <betterwithmods:material:4>]]);
recipes.addShaped("pajama_helmet", <betterwithmods:wool_helmet>, [[<betterwithmods:material:4>, <betterwithmods:material:4>, <betterwithmods:material:4>],[<betterwithmods:material:4>, <ore:string>, <betterwithmods:material:4>], [<ore:string>, null, <ore:string>]]);

//!SECTION 

/* ------------------------ SECTION Initial inventory ----------------------- */
var butt = <minecraft:beef>;

mods.initialinventory.InvHandler.addStartingItem(<sanity:checker>);
mods.initialinventory.InvHandler.addStartingItem(<toughasnails:thermometer>);
mods.initialinventory.InvHandler.addStartingItem(butt);

//!SECTION 

/* ------------------------ SECTION Misc Need Sorting ----------------------- */

//Makes Wool have a preferred tool.
var wool = (<minecraft:wool>.asBlock().definition);
wool.setHarvestLevel("axe", 0);