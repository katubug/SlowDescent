import crafttweaker.item.IItemStack;
import mods.pyrotech.PitKiln;
import mods.pyrotech.StoneKiln;
import mods.pyrotech.StoneCrucible;
import mods.pyrotech.BrickCrucible;

//Removes plain water recipes from Crucibles
StoneCrucible.removeRecipes(<liquid:water>);
BrickCrucible.removeRecipes(<liquid:water>);

//Adds water purification recipe to Stone+ Crucibles
StoneCrucible.addRecipe("ice_purified_water", <liquid:purified_water> * 1000, <minecraft:ice>, 1 * 60 * 20, true);
StoneCrucible.addRecipe("packedice_purified_water", <liquid:purified_water> * 2000, <minecraft:ice>, 4 * 60 * 20, true);
StoneCrucible.addRecipe("snowblock_purified_water", <liquid:purified_water> * 500, <minecraft:snow>, 15 * 20, true);
StoneCrucible.addRecipe("snowball_purified_water", <liquid:purified_water> * 125, <minecraft:snowball>, 15 * 20, true);

//====Boats Nonsense====
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

//Hides disabled PVJ Ground Cover
mods.jei.JEI.hide(<pvj:mossy_cobblestone_rocks>);
mods.jei.JEI.hide(<pvj:red_sandstone_rocks>);

//Hides unused Foodfunk items
mods.jei.JEI.hide(<foodfunk:rotted_item>);
mods.jei.JEI.hide(<foodfunk:biodegradable_item>);

//===Disable Diamond Nuggets and make Diamond Alloy Ingots use Pyrotech Shards instead===

//Remove/Hide Nuggets
mods.jei.JEI.removeAndHide(<betterwithmods:material:46>);

//Remove 9x pieces > Ingot recipe, while leaving the recipe with Creeper Oysters in tact.
recipes.removeByRecipeName("betterwithmods:decompress/material.diamond_ingot_compress");

//Remove Ingot recipe w/ Nuggets from Crucible
mods.betterwithmods.Crucible.remove([<betterwithmods:material:45>]);

//Adds new Crucible recipe for Diamond Ingot w/ Shards (stoked)
mods.betterwithmods.Crucible.addStoked([<pyrotech:material:18> * 9],[<betterwithmods:material:45>]);

//Removes torch recipes to allow BWM to lock them behind Nethercoal
recipes.remove(<minecraft:torch>);

//Remove and Hide BWM's Wool Armor in favor of TaN's.
mods.jei.JEI.removeAndHide(<betterwithmods:wool_boots>);
mods.jei.JEI.removeAndHide(<betterwithmods:wool_helmet>);
mods.jei.JEI.removeAndHide(<betterwithmods:wool_pants>);
mods.jei.JEI.removeAndHide(<betterwithmods:wool_chest>);

//Remove PVJ Limestone Stuff
mods.jei.JEI.removeAndHide(<pvj:limestone>);
mods.jei.JEI.removeAndHide(<pvj:limestone_stairs>);
mods.jei.JEI.removeAndHide(<pvj:limestone_slab>);

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
