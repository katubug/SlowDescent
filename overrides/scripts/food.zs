//Remove Energy Drinks from XL Food Mod
mods.jei.JEI.removeAndHide(<xlfoodmod:super_energy_drink>);
mods.jei.JEI.removeAndHide(<xlfoodmod:deadly_energy_drink>);
mods.jei.JEI.removeAndHide(<xlfoodmod:strong_energy_drink>);
mods.jei.JEI.removeAndHide(<xlfoodmod:stealthy_energy_drink>);
mods.jei.JEI.removeAndHide(<xlfoodmod:healthy_energy_drink>);
mods.jei.JEI.removeAndHide(<xlfoodmod:speedy_energy_drink>);

//Remove BWM Cooked egg, replace it with XL Food Mod Fried Egg
mods.jei.JEI.removeAndHide(<betterwithmods:cooked_egg>);
furnace.addRecipe(<xlfoodmod:fried_egg>, <betterwithmods:raw_egg>, 2.0);