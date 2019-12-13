import crafttweaker.item.IItemStack;
import mods.pyrotech.Campfire;
import mods.pyrotech.StoneOven;

//Remove Energy Drinks from XL Food Mod
mods.jei.JEI.removeAndHide(<xlfoodmod:super_energy_drink>);
mods.jei.JEI.removeAndHide(<xlfoodmod:deadly_energy_drink>);
mods.jei.JEI.removeAndHide(<xlfoodmod:strong_energy_drink>);
mods.jei.JEI.removeAndHide(<xlfoodmod:stealthy_energy_drink>);
mods.jei.JEI.removeAndHide(<xlfoodmod:healthy_energy_drink>);
mods.jei.JEI.removeAndHide(<xlfoodmod:speedy_energy_drink>);
mods.jei.JEI.removeAndHide(<xlfoodmod:empty_can>);

//Remove XL Food Mod's Salt
mods.jei.JEI.hide(<xlfoodmod:salt>);

//Change recipe for Marshmallows to be crafting instead of smelting
furnace.remove(<xlfoodmod:marshmallow>);
recipes.addShapeless("marshmallow_by_crafting", <xlfoodmod:marshmallow>, [<minecraft:sugar>]);

//Remove BWM Cooked egg, replace it with XL Food Mod Fried Egg. Also remove the vanilla egg > XL Food Mod egg recipe
mods.jei.JEI.removeAndHide(<betterwithmods:cooked_egg>);
furnace.remove(<betterwithmods:cooked_egg>);
furnace.remove(<betterwithmods:cooked_egg>, <minecraft:egg>);
furnace.addRecipe(<xlfoodmod:fried_egg>, <betterwithmods:raw_egg>, 2.0);

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
    <saltmod:salt_wheat_sprouts>
] as IItemStack[];

for item in salted {
    <ore:saltedFood>.add(item);
    item.addTooltip("Salted foods are preserved for longer.");
}

<saltmod:salt_pinch>.addTooltip("Adding salt to foods can protect against spoilage.");

//Remove food values from drinks
mods.foodtweaker.changeFoodStats(<pvj:sugarcane_juice>, 0, 0);
mods.foodtweaker.changeFoodStats(<xlfoodmod:coffee>, 0, 0);
mods.foodtweaker.changeFoodStats(<pvj:coconut_milk>, 0, 0);
mods.foodtweaker.changeFoodStats(<xlfoodmod:beer>, 0, 0);

//===Remove Unrealistic Campfire Recipes===

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

//Remove Cookie Crafting recipe to force it to be smelting only
recipes.removeByRecipeName("minecraft:cookie");