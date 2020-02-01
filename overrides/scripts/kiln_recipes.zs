import mods.pyrotech.PitKiln;
import mods.pyrotech.BrickKiln;
import mods.pyrotech.StoneKiln;
import mods.pyrotech.CrudeDryingRack;
import mods.pyrotech.DryingRack;
import mods.pyrotech.StoneOven;
import mods.pyrotech.BrickOven;
import mods.pyrotech.CompactingBin;

/* -------------------------------------------------------------------------- */
/*                    ANCHOR Pyrotech and BWM Compatibility                   */
/* -------------------------------------------------------------------------- */

//NOTE Mods required for this script:
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
recipes.addShapeless("unfired_brick", <betterwithmods:unfired_pottery:4>, [<pyrotech:material:17>,<pyrotech:material:17>]);

//Unfired Brick
StoneKiln.addRecipe("bwm_brick_kiln", <minecraft:brick>, <betterwithmods:unfired_pottery:4>, 140, 0.1, [
    <pyrotech:material:6>,
    <pyrotech:material:7>,
    <pyrotech:material>
], true);

/* ----------------------- SECTION Drying Rack Recipes ---------------------- */

furnace.remove(<xlfoodmod:beef_jerky>);
furnace.remove(<pvj:cooked_squid>);
furnace.remove(<minecraft:cooked_fish>);
furnace.remove(<minecraft:cooked_fish:1>);
furnace.remove(<simplytea:black_tea>);
furnace.remove(<betterwithmods:cooked_bat_wing>);

CrudeDryingRack.addRecipe("dried_cod", <minecraft:cooked_fish>, <minecraft:fish>, 1 * 60 * 20, true);
CrudeDryingRack.addRecipe("dried_salmon", <minecraft:cooked_fish:1>, <minecraft:fish:1>, 1 * 60 * 20, true);
CrudeDryingRack.addRecipe("dried_squid", <pvj:cooked_squid>, <pvj:raw_squid>, 1 * 60 * 20, true);
CrudeDryingRack.addRecipe("beef_jerky", <xlfoodmod:beef_jerky>, <minecraft:beef>, 2 * 60 * 20, true);
CrudeDryingRack.addRecipe("bat_wing_jerky", <betterwithmods:cooked_bat_wing>, <betterwithmods:bat_wing>, 2 * 60 * 20, true);
CrudeDryingRack.addRecipe("mud_to_dirt", <minecraft:dirt>, <pvj:mud>, 30 * 20, true);
DryingRack.addRecipe("tea_drying", <simplytea:black_tea>, <simplytea:leaf_tea>, 3 * 60 * 20);

//Removes some Stone/Brick Oven recipes for these
StoneOven.removeRecipes(<minecraft:cooked_fish:*>);
StoneOven.removeRecipes(<pvj:cooked_squid>);
StoneOven.removeRecipes(<xlfoodmod:beef_jerky>);
StoneOven.removeRecipes(<betterwithmods:cooked_bat_wing>);
StoneOven.removeRecipes(<simplytea:black_tea>);
BrickOven.removeRecipes(<minecraft:cooked_fish:*>);
BrickOven.removeRecipes(<pvj:cooked_squid>);
BrickOven.removeRecipes(<xlfoodmod:beef_jerky>);
BrickOven.removeRecipes(<betterwithmods:cooked_bat_wing>);
BrickOven.removeRecipes(<simplytea:black_tea>);
//!SECTION 

/* ------------------------------ SECTION Misc ------------------------------ */

CompactingBin.addRecipe("wither_bone_from_ash", <netherex:wither_bone>, <ore:ashWither>, 3, true);