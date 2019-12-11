import crafttweaker.item.IItemStack;

//Disables Tough as Nails' campfire in favor of Pyrotech's.
mods.jei.JEI.removeAndHide(<toughasnails:campfire>);

//Removes PVJ's Bones > Bone recipe
recipes.remove(<minecraft:bone>);

//Changes the hardness of PVJ's Rocky Ground Cover to be consistent with Stone.
var rocks = [
    <pvj:stone_rocks:*>,
    <pvj:cobblestone_rocks:*>,
    <pvj:granite_rocks:*>,
    <pvj:diorite_rocks:*>,
    <pvj:sandstone_rocks:*>,
    <pvj:andesite_rocks:*>
] as IItemStack[];

for rock in rocks {
    rock.hardness = 1.5;
}

//===========These should probably go in other files===========

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

//Remove Ingot recipe from Crucible
mods.betterwithmods.Crucible.remove([<betterwithmods:material:45>]);

//Adds new Crucible recipe (unstoked)
//On second thought - since there are no default recipes for unstoked cauldrons, I don't think the only one that exists should be for diamonds, lol.
//mods.betterwithmods.Crucible.addUnstoked([<pyrotech:material:18> * 9],[<betterwithmods:material:45>]);

//Adds new Crucible recipe (stoked)
mods.betterwithmods.Crucible.addStoked([<pyrotech:material:18> * 9],[<betterwithmods:material:45>]);