import mods.pyrotech.PitKiln;
import mods.pyrotech.BrickKiln;
import mods.pyrotech.StoneKiln;


//This script is intended to remove references to the BWM Kiln Multiblock, replacing it when necessary with the Pyrotech Kilns.

//Remove all Kiln Recipes
mods.betterwithmods.Kiln.removeAll();

//Pottery: Vase, Planter, Crucible
StoneKiln.addRecipe("bwm_vase", <betterwithmods:vase>, <betterwithmods:unfired_pottery:3>, 6000, true);
StoneKiln.addRecipe("bwm_planter", <betterwithmods:planter>, <betterwithmods:unfired_pottery:1>, 6000, true);
StoneKiln.addRecipe("bwm_crucible", <betterwithmods:cooking_pot>, <betterwithmods:unfired_pottery>, 6000, true);
StoneKiln.addRecipe("bwm_urn", <betterwithmods:urn>, <betterwithmods:unfired_pottery:2>, 6000, true);

//End Stone > White Cobble
//Possible Side Effects: Ender Slag

//Unfired Brick
//Possible Side Effects: Pottery Shards, Pottery...smaller thingies.

//NetherBrick
//Possible Side Effects: Ground Netherrack, Ash?

//NetherSludge
