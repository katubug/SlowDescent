import crafttweaker.item.IItemStack;

//Disables Tough as Nails' campfire in favor of Pyrotech's.
mods.jei.JEI.removeAndHide(<toughasnails:campfire>);

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

//Hides disabled PVJ Ground Cover
mods.jei.JEI.hide(<pvj:mossy_cobblestone_rocks>);
mods.jei.JEI.hide(<pvj:red_sandstone_rocks>);