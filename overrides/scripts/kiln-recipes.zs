import mods.pyrotech.PitKiln;
import mods.pyrotech.BrickKiln;
import mods.pyrotech.StoneKiln;

//Mods required for this script:
//Pyrotech
//Better With Mods

//This script is intended to remove references to the BWM Kiln Multiblock, replacing it when necessary with the Pyrotech Kilns.

//===Remove all Kiln Recipes===
mods.betterwithmods.Kiln.removeAll();

//===Pottery===
//Vase
StoneKiln.addRecipe("bwm_vase", <betterwithmods:vase>, <betterwithmods:unfired_pottery:3>, 6000, true);
//Planter
StoneKiln.addRecipe("bwm_planter", <betterwithmods:planter>, <betterwithmods:unfired_pottery:1>, 6000, true);
//Crucible
StoneKiln.addRecipe("bwm_crucible", <betterwithmods:cooking_pot>, <betterwithmods:unfired_pottery>, 6000, true);
//Urn
StoneKiln.addRecipe("bwm_urn", <betterwithmods:urn>, <betterwithmods:unfired_pottery:2>, 6000, true);

//===End Stone > White Cobble===
StoneKiln.addRecipe("bwm_endstone_kiln", <betterwithmods:aesthetic:7>, <minecraft:end_stone>, 140, 0.5, [
    <betterwithmods:material:39>,
    <betterwithmods:material:25>
], true);

//===NetherBrick===
//Remove vanilla furnace recipe Nether Sludge > Netherbrick
furnace.remove(<minecraft:netherbrick>);
//Add vanilla furnace recipe for unfired netherbrick > netherbrick
furnace.addRecipe(<minecraft:netherbrick>, <betterwithmods:unfired_pottery:5>);
//Add Kiln recipe for unfired netherbrick > netherbrick
StoneKiln.addRecipe("bwm_netherbrick_kiln", <minecraft:netherbrick>, <betterwithmods:unfired_pottery:5>, 180, 0.15, [
    <betterwithmods:material:15>,
    <pyrotech:material>
], true);

//===NetherSludge===
StoneKiln.addRecipe("hardened_nether_sludge", <betterwithmods:aesthetic:2>, <betterwithmods:nether_clay>, 200, true);

//====Compatibility between Pyrotech Unfired Clay Brick and BWM Unfired Brick====
//Remove and hide Pyrotech's Unfired Clay Brick
mods.jei.JEI.removeAndHide(<pyrotech:material:24>);

//Replace all crafting table recipes
recipes.replaceAllOccurences(<pyrotech:material:24>, <betterwithmods:unfired_pottery:4>, <*>);

//Remove furnace recipes using Pyrotech's brick
furnace.remove(<minecraft:brick>);

//Remove Kiln recipes using Pyrotech's brick
PitKiln.removeRecipes(<minecraft:brick>);
StoneKiln.removeRecipes(<minecraft:brick>);

//Adds furnace recipes using BWM's brick
furnace.addRecipe(<minecraft:brick>, <betterwithmods:unfired_pottery:4>, 0.9259259328246117);

//Change BWM Unfired Brick to use Pyrotech Lumps
recipes.remove(<betterwithmods:unfired_pottery:4>);
recipes.addShapeless(<betterwithmods:unfired_pottery:4>, [<pyrotech:material:17>,<pyrotech:material:17>]);

//Unfired Brick
StoneKiln.addRecipe("bwm_brick_kiln", <minecraft:brick>, <betterwithmods:unfired_pottery:4>, 140, 0.1, [
    <pyrotech:material:6>,
    <pyrotech:material:7>,
    <pyrotech:material>
], true);