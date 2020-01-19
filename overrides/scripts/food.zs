import crafttweaker.item.IItemStack;
import mods.pyrotech.Campfire;
import mods.pyrotech.StoneOven;

/* -------------------------------------------------------------------------- */
/*                         ANCHOR Food-Related Scripts                        */
/* -------------------------------------------------------------------------- */

//NOTE Mods required for this script:
//XL Food Mod
//Better With Mods
//Salty Mod
//Project Vibrant Journeys
//Pyrotech

/* ---------------------- SECTION Misc Remove and Hide ---------------------- */

//Remove Energy Drinks from XL Food Mod
mods.jei.JEI.removeAndHide(<xlfoodmod:super_energy_drink>);
mods.jei.JEI.removeAndHide(<xlfoodmod:deadly_energy_drink>);
mods.jei.JEI.removeAndHide(<xlfoodmod:strong_energy_drink>);
mods.jei.JEI.removeAndHide(<xlfoodmod:stealthy_energy_drink>);
mods.jei.JEI.removeAndHide(<xlfoodmod:healthy_energy_drink>);
mods.jei.JEI.removeAndHide(<xlfoodmod:speedy_energy_drink>);
mods.jei.JEI.removeAndHide(<xlfoodmod:empty_can>);

//Hide XL Food Mod's Salt
mods.jei.JEI.hide(<xlfoodmod:salt>);

//Hide XLFoodMod Rock Salt Ore
mods.jei.JEI.hide(<xlfoodmod:rock_salt>);

//!SECTION 

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

//!SECTION 

/* ------------------- SECTION Ore Dictionary and Tooltips ------------------ */
//Adds all salted foods to OreDict to allow for easy FoodFunk alteration
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

//<betternether:stalagnate_bowl>.addTooltip(format.gold("This bowl seems to have preservative properties, but the smell it gives off is...odd."));

//!SECTION 

/* --------------- SECTION Remove Unrealistic Campfire Recipes -------------- */

//Whitelisted:
Campfire.whitelistSmeltingRecipes([
    <minecraft:cooked_chicken>,
    <minecraft:cooked_fish:*>,
    <minecraft:cooked_beef>,
    <minecraft:baked_potato>,
    <minecraft:cooked_porkchop>,
    <minecraft:cooked_mutton>,
    <minecraft:cooked_rabbit>,
    <betterwithmods:cooked_wolf_chop>,
    <betterwithmods:cooked_mystery_meat>,
    <betterwithmods:cooked_kebab>,
    <betterwithmods:cooked_bat_wing>,
    <pvj:cooked_squid>,
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