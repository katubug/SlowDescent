import crafttweaker.item.IItemStack;

# ---------------------------------------------------------------------------- #
#                 ANCHOR Adding and Removing OreDictionary Tags                #
# ---------------------------------------------------------------------------- #

//SECTION Axes
var axes = [
    <embers:axe_copper>,
    <embers:axe_silver>,
    <embers:axe_lead>,
    <embers:axe_dawnstone>,
    <embers:axe_aluminum>,
    <embers:axe_bronze>,
    <embers:axe_electrum>,
    <embers:axe_nickel>,
    <embers:axe_tin>,
    <mist:niobium_axe>,
    <arcaneworld:molten_axe>,
    <betterwithmods:steel_axe>
] as IItemStack[];

for axe in axes {
    <ore:toolAxe>.add(axe);
}
//!SECTION 

//Ash oredict

<ore:ashWither>.add(<netherex:wither_dust>);
<ore:ashWither>.add(<quark:black_ash>);

val ashes = [
<mysticalwildlife:dusk_ash>,
<orecore:ashe>,
<pyrotech:material>,
<embers:dust_ash>
] as IItemStack[];

for ash in ashes {
    <ore:dustAsh>.add(ash);
}