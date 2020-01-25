import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.pyrotech.Campfire;
import mods.pyrotech.StoneOven;

/* -------------------------------------------------------------------------- */
/*                         ANCHOR Food-Related Scripts                        */
/* -------------------------------------------------------------------------- */

//NOTE Mods required for this script:
//Better With Mods
//ContentTweaker
//Fish's Undead Rising
//Mystical Wildlife
//NetherEx
//Project Vibrant Journeys
//Pyrotech
//Salty Mod
//XL Food Mod

/* ----------------------- SECTION Recipe Alterations ----------------------- */

//Change recipes for Allium to use Onions instead (except dye)
recipes.replaceAllOccurences(<minecraft:red_flower:2>, <xlfoodmod:onion>, <*>.only(function(item) {
    return !isNull(item) & !<minecraft:dye:13>.matches(item);
}));

//Change recipe for Marshmallows to be crafting instead of smelting
furnace.remove(<xlfoodmod:marshmallow>);
recipes.addShapeless("marshmallow_by_crafting", <xlfoodmod:marshmallow>, [<minecraft:sugar>]);

//Remove BWM Cooked egg, replace it with XL Food Mod Fried Egg. Also remove the vanilla egg > XL Food Mod egg recipe
mods.jei.JEI.removeAndHide(<betterwithmods:cooked_egg>);
furnace.remove(<betterwithmods:cooked_egg>);
furnace.remove(<betterwithmods:cooked_egg>, <minecraft:egg>);
furnace.addRecipe(<xlfoodmod:fried_egg>, <betterwithmods:raw_egg>, 2.0);

//Remove Cookie Crafting recipe to force it to be smelting only
recipes.removeByRecipeName("minecraft:cookie");

//===Replacing Water Bottles w/ Purified===

//Remove
recipes.remove(<saltmod:pickled_mushroom>);
recipes.remove(<saltmod:pickled_fern>);
recipes.remove(<saltmod:fizzy_drink>);

//Quick OreDict thing
<ore:listAllmushroom>.add(<mist:mushrooms_food:*>);

//Add
recipes.addShaped("pickled_mushroom", <saltmod:pickled_mushroom>, [[<ore:listAllmushroom>, <ore:listAllmushroom>, null],[<toughasnails:purified_water_bottle>, <saltmod:salt_pinch>, null]]);
recipes.addShaped("pickled_fern", <saltmod:pickled_fern>, [[<minecraft:tallgrass:2>, <minecraft:tallgrass:2>, null],[<toughasnails:purified_water_bottle>, <saltmod:salt_pinch>, null]]);
recipes.addShapeless("fizzy_drink", <saltmod:fizzy_drink>, [<saltmod:soda>, <toughasnails:purified_water_bottle>]);

//!SECTION 

/* --------------- SECTION Remove Unrealistic Campfire Recipes -------------- */

//Whitelisted:
Campfire.whitelistSmeltingRecipes([
    <minecraft:cooked_chicken>,
//    <minecraft:cooked_fish:*>,
    <minecraft:cooked_beef>,
    <minecraft:baked_potato>,
    <minecraft:cooked_porkchop>,
    <minecraft:cooked_mutton>,
    <minecraft:cooked_rabbit>,
    <betterwithmods:cooked_wolf_chop>,
    <betterwithmods:cooked_mystery_meat>,
    <betterwithmods:cooked_kebab>,
//    <betterwithmods:cooked_bat_wing>,
//    <pvj:cooked_squid>,
    <pvj:steamed_clam_meat>,
    <pvj:cooked_duck>,
    <xlfoodmod:roasted_marshmallow>,
    <xlfoodmod:flesh>,
    <xlfoodmod:cooked_chicken_wing>,
    <xlfoodmod:corn>,
    <xlfoodmod:fried_egg>,
    <pyrotech:apple_baked>,
    <pyrotech:carrot_roasted>,
    <pyrotech:mushroom_brown_roasted>,
    <pyrotech:mushroom_red_roasted>,
    <pyrotech:beetroot_roasted>,
    <pyrotech:book>
]);

//Cake Batter - Add to Stone/Refractory Oven
StoneOven.addRecipe("pyrotech_oven_cake", <minecraft:cake>, <betterwithmods:raw_pastry>, true);

//Makes some changes involving ground beef
//REVIEW Katu do you wanna make the xlfoodmod version more expensive, or? 
<ore:foodGroundbeef>.add(<mod_lavacow:mousse>);
recipes.replaceAllOccurences(<xlfoodmod:ground_beef>, <ore:foodGroundbeef>);

//Makes Spaghetti use Meatballs instead of Ground Beef
recipes.remove(<xlfoodmod:spaghetti>);
recipes.addShaped("spaghet", <xlfoodmod:spaghetti>, [[null, <mod_lavacow:meatball>, null],[<xlfoodmod:cooked_dough>, <xlfoodmod:tomato_sauce>, <xlfoodmod:cooked_dough>], [null, <xlfoodmod:bowl>, null]]);

//TODO 
/*
List of recipes to add salt to (don't forget to add them to the oredict tag as well!):
<xlfoodmod:cheese>,
<xlfoodmod:bacon>,
<xlfoodmod:bucket_of_fried_chicken>,
<xlfoodmod:chicken_salad>,
<xlfoodmod:cucumber_soup>,
<xlfoodmod:tomato_soup>,
<xlfoodmod:vegetable_soup>,
<xlfoodmod:chicken_soup>,
<xlfoodmod:beef_stew>,
<xlfoodmod:pumpkin_stew>,
<xlfoodmod:cheese_pie>,
<xlfoodmod:chicken_pot_pie>,
<xlfoodmod:bacon_pie>,
<xlfoodmod:fish_pie>
*/

/* TODO 
Removing food values from items that shouldn't be directly edible/shouldn't have hunger/saturation values
Don't forget to exempt them from spoilage

val nonFood = [
    <betterwithmods:raw_pastry:3>,
    <betterwithmods:material:44>,
    <minecraft:pumpkin_seeds>,
    <pvj:coconut_milk>,
    <simplytea:cup_tea_black>,
    <simplytea:cup_tea_green>,
    <simplytea:cup_tea_floral>,
    <simplytea:cup_tea_chai>,
    <simplytea:cup_tea_chorus>,
    <simplytea:cup_cocoa>,
    <xlfoodmod:butter>,
    <xlfoodmod:dough>,
    <xlfoodmod:top_bun>,
    <xlfoodmod:bottom_bun>,
    <xlfoodmod:tortilla>,
    <xlfoodmod:icecream_cone>,
    <xlfoodmod:beer>,
    <xlfoodmod:coffee>,
    <xlfoodmod:cappuccino>,
    <saltmod:saltwort_seed>
] as IItemStack[];
*/

//Fixes Cappuccino's recipe
recipes.remove(<xlfoodmod:cappuccino>);
recipes.addShapeless(<xlfoodmod:cappuccino>, [<ore:foodMilk>, <xlfoodmod:coffee>]);

var milks = [
<pvj:coconut_milk>,
<minecraft:milk_bucket>,
<saltmod:powdered_milk>,
<simplytea:teapot:2>,
<simplytea:frothed_teapot:4>
] as IItemStack[];

for milk in milks {
    <ore:foodMilk>.add(milk);
}

/* -------------------------------------------------------------------------- */
/*                            SECTION Salted Foods                            */
/* -------------------------------------------------------------------------- */

/* ---------------------- Creation of New Salted Foods ---------------------- */

var saltables = [
    <betterwithmods:chowder>,
    <betterwithmods:hearty_stew>,
    <betterwithmods:cooked_wolf_chop>,
    <betterwithmods:cooked_mystery_meat>,
    <mod_lavacow:parasite_item_cooked>,
    <mod_lavacow:piranha_cooked>,
    <mod_lavacow:cheirolepis_cooked>,
    <mod_lavacow:mimic_claw_cooked>,
    <mod_lavacow:ptera_wing_cooked>,
    <mod_lavacow:zombiepiranha_item_cooked>,
    <mist:sponge_meat>,
    <mysticalwildlife:vrontausaurus_meat_cooked>,
    <mysticalwildlife:yaga_hog_meat_cooked>,
    <mysticalwildlife:dusk_lurker_meat_cooked>,
    <mysticalwildlife:cicaptera_meat_cooked>,
    <mysticalwildlife:plumper_meat_cooked>,
    <mysticalwildlife:krill_meat_cooked>,
    <netherex:ghast_meat_cooked>,
    <pvj:cooked_squid>,
    <pvj:cooked_duck>,
    <pvj:steamed_clam_meat>,
    <pvj:clam_chowder>,
    <quark:cooked_crab_leg>,
    <pyrotech:egg_roasted>,
    <pyrotech:beetroot_roasted>,
    <pyrotech:carrot_roasted>,
    <xlfoodmod:flesh>,
    <xlfoodmod:cooked_chicken_wing>,
    <xlfoodmod:cucumber_soup>,
    <xlfoodmod:tomato_soup>,
    <xlfoodmod:vegetable_soup>,
    <xlfoodmod:chicken_soup>,
    <xlfoodmod:beef_stew>
] as IItemStack[];

var saltedFud = [
    <contenttweaker:salted_chowder>,
    <contenttweaker:salted_hearty_stew>,
    <contenttweaker:salted_cooked_wolf_chop>,
    <contenttweaker:salted_cooked_mystery_meat>,
    <contenttweaker:salted_parasite_item_cooked>,
    <contenttweaker:salted_piranha_cooked>,
    <contenttweaker:salted_cheirolepis_cooked>,
    <contenttweaker:salted_mimic_claw_cooked>,
    <contenttweaker:salted_ptera_wing_cooked>,
    <contenttweaker:salted_zombiepiranha_item_cooked>,
    <contenttweaker:salted_sponge_meat>,
    <contenttweaker:salted_vrontausaurus_meat_cooked>,
    <contenttweaker:salted_yaga_hog_meat_cooked>,
    <contenttweaker:salted_dusk_lurker_meat_cooked>,
    <contenttweaker:salted_cicaptera_meat_cooked>,
    <contenttweaker:salted_plumper_meat_cooked>,
    <contenttweaker:salted_krill_meat_cooked>,
    <contenttweaker:salted_ghast_meat_cooked>,
    <contenttweaker:salted_cooked_squid>,
    <contenttweaker:salted_cooked_duck>,
    <contenttweaker:salted_steamed_clam_meat>,
    <contenttweaker:salted_clam_chowder>,
    <contenttweaker:salted_cooked_crab_leg>,
    <contenttweaker:salted_egg_roasted>,
    <contenttweaker:salted_beetroot_roasted>,
    <contenttweaker:salted_carrot_roasted>,
    <contenttweaker:salted_flesh>,
    <contenttweaker:salted_cooked_chicken_wing>,
    <contenttweaker:salted_cucumber_soup>,
    <contenttweaker:salted_tomato_soup>,
    <contenttweaker:salted_vegetable_soup>,
    <contenttweaker:salted_chicken_soup>,
    <contenttweaker:salted_beef_stew>
] as IItemStack[];

for i, saltedo in saltedFud {
    recipes.addShapeless("salt_"~saltables[i].displayName.replace(" ", "_"), saltedo, [<saltmod:salt_pinch>, saltables[i]]);
    <ore:saltedFood>.add(saltedo);
    saltedo.addTooltip(format.gold("Salted foods are preserved for longer."));
}

/* ----------------- Adding OreDict to Existing Salted Foods ---------------- */

var salted = [
    <saltmod:salt_beef_cooked>,
    <saltmod:salt_porkchop_cooked>,
    <saltmod:salt_mutton_cooked>,
    <saltmod:salt_potato_baked>,
    <saltmod:salt_chicken_cooked>,
    <saltmod:salt_rabbit_cooked>,
    <saltmod:salt_fish_cod>,
    <saltmod:salt_fish_cod_cooked>,
    <saltmod:salt_fish_salmon>,
    <saltmod:salt_fish_salmon_cooked>,
    <saltmod:salt_fish_clownfish>,
    <saltmod:salt_beetroot>,
    <saltmod:salt_bread>,
    <saltmod:salt_egg>,
    <saltmod:salt_rabbit_stew>,
    <saltmod:salt_mushroom_stew>,
    <saltmod:salt_beetroot_soup>,
    <saltmod:salt_vegetable_stew>,
    <saltmod:salt_potato_mushroom>,
    <saltmod:salt_fish_soup>,
    <saltmod:salt_fish_salmon_soup>,
    <saltmod:salt_beetroot_salad>,
    <saltmod:salt_hufc>,
    <saltmod:salt_dandelion_salad>,
    <saltmod:salt_wheat_sprouts>,
    <saltmod:fish_pie>,
    <saltmod:fish_salmon_pie>,
    <saltmod:mushroom_pie>,
    <saltmod:onion_pie>,
    <saltmod:potato_pie>,
    <xlfoodmod:chips>,
    <xlfoodmod:salty_chips>,
    <xlfoodmod:butter>,
    <xlfoodmod:ham>
] as IItemStack[];

for item in salted {
    <ore:saltedFood>.add(item);
    item.addTooltip(format.gold("Salted foods are preserved for longer."));
}

<saltmod:salt_pinch>.addTooltip(format.gold("Adding salt to foods can protect against spoilage."));

/* ---------------- Adding Salt in recipe for Existing Foods ---------------- */

//TODO 
/*
List of recipes to add salt to (don't forget to add them to the oredict tag as well!):
<xlfoodmod:cheese>,
<xlfoodmod:bacon>,
<xlfoodmod:bucket_of_fried_chicken>,
<xlfoodmod:chicken_salad>,
<xlfoodmod:cucumber_soup>,
<xlfoodmod:tomato_soup>,
<xlfoodmod:vegetable_soup>,
<xlfoodmod:chicken_soup>,
<xlfoodmod:beef_stew>,
<xlfoodmod:pumpkin_stew>,
<xlfoodmod:cheese_pie>,
<xlfoodmod:chicken_pot_pie>,
<xlfoodmod:bacon_pie>,
<xlfoodmod:fish_pie>
*/

//Note: Texture use permission granted for Pyrotech, Fish's Undead Rising, Salty Mod, and Misty World. All other licenses automatically give permission.

/* ---------- SECTION Changing some Smelting recipes to Drying Rack --------- */

//!SECTION 