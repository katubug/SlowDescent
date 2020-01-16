import crafttweaker.item.IItemStack;

/* -------------------------------------------------------------------------- */
/*       SECTION Survival related scripts? Probably needs organizing tbh      */
/* -------------------------------------------------------------------------- */

//NOTE Mods required for this script:
//Tough As Nails
//Project Vibrant Journeys

//FIXME This should probably be named something else tbh.

//Disables Tough as Nails' campfire in favor of Pyrotech's.
mods.jei.JEI.removeAndHide(<toughasnails:campfire>);

//Removes PVJ's Bones > Bone recipe
recipes.remove(<minecraft:bone>);

//Changes the hardness of PVJ's Rocky Ground Cover to be consistent with Stone/Wood.
var rocks = [
    <pvj:stone_rocks:*>,
    <pvj:cobblestone_rocks:*>,
    <pvj:granite_rocks:*>,
    <pvj:diorite_rocks:*>,
    <pvj:sandstone_rocks:*>,
    <pvj:andesite_rocks:*>
] as IItemStack[];

for rock in rocks {
    rock.hardness = 0.1;
}

var sticks = [
    <pvj:oak_twigs>,
    <pvj:birch_twigs>,
    <pvj:spruce_twigs>,
    <pvj:jungle_twigs>,
    <pvj:acacia_twigs>,
    <pvj:dark_oak_twigs>,
    <pvj:willow_twigs>,
    <pvj:mangrove_twigs>,
    <pvj:baobab_twigs>,
    <pvj:orange_maple_twigs>,
    <pvj:red_maple_twigs>,
    <pvj:aspen_twigs>,
    <pvj:pine_twigs>,
    <pvj:fir_twigs>,
    <pvj:redwood_twigs>,
    <pvj:palm_twigs>,
    <pvj:cottonwood_twigs>,
    <pvj:juniper_twigs>,
    <pvj:juniper_berried_twigs>,
    <pvj:white_cherry_blossom_twigs>,
    <pvj:pink_cherry_blossom_twigs>,
    <pvj:jacaranda_twigs>
] as IItemStack[];

for stick in sticks {
    stick.hardness = 0.5;
}