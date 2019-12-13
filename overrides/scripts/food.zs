import crafttweaker.item.IItemStack;

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

//Remove BWM Cooked egg, replace it with XL Food Mod Fried Egg
mods.jei.JEI.removeAndHide(<betterwithmods:cooked_egg>);
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