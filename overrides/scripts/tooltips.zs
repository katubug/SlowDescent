import crafttweaker.item.IItemStack;

/* -------------------------------------------------------------------------- */
/*                                  Tooltips                                  */
/* -------------------------------------------------------------------------- */

/* ------------------------- SECTION Deadly Monsters ------------------------ */

//Lucky Egg - right click to throw - but be careful
<dmonsters:luckyegg>.addTooltip(format.gold("Throwing this like a normal egg might work, but who knows what might hatch?"));

//Baby Eye - right click to obtain silktouched block, single use
<dmonsters:babyeye>.addTooltip(format.gold("Right click on any block to pick it up without disturbing it."));

//Entrail Flesh - left click on any entity to turn them into an entrail
<dmonsters:entrailflesh>.addTooltip(format.gold("Hit an enemy with this to transform them. But be warned: you may not like what they become."));

//Wideman Spine - weak weapon that offers superior knockback
<dmonsters:widemanspine>.addTooltip(format.gold("This could be used as a weapon. It doesn't seem very damaging, but it's durable and throws foes off balance."));

//Woman Heart - right click to transform any solid block into lava. shift+right click to transform it into water. functions in the nether
<dmonsters:womanheart>.addTooltip(format.gold("Using this on a block will turn that block to lava. Using it while crouched will change it to water instead."));

//Dagon - basically a throwing star. can be picked up and reused.
<dmonsters:dagon>.addTooltip(format.gold("A reusable weapon that can be thrown at enemies and retrieved."));

//Reinforcement Bar - allows you to reinforce stone or cobblestone blocks
<dmonsters:rebar>.addTooltip(format.gold("Use this on stone or cobblestone to reinforce it. Crouch and right click to remove it."));

//Sunlight Drop - Changes the time to day. However, since cursed cows are disabled, it is unobtainable.
//!SECTION 

/* ------------------------ SECTION Staging Tooltips ------------------------ */

//Candles
var candles = [
    <betterwithmods:candle>,
    <betterwithmods:candle:1>,
    <betterwithmods:candle:2>,
    <betterwithmods:candle:3>,
    <betterwithmods:candle:4>,
    <betterwithmods:candle:5>,
    <betterwithmods:candle:6>,
    <betterwithmods:candle:7>,
    <betterwithmods:candle:15>,
    <betterwithmods:candle:14>,
    <betterwithmods:candle:13>,
    <betterwithmods:candle:12>,
    <betterwithmods:candle:11>,
    <betterwithmods:candle:10>,
    <betterwithmods:candle:9>,
    <betterwithmods:candle:8>,
    <quark:candle>,
    <quark:candle:1>,
    <quark:candle:2>,
    <quark:candle:3>,
    <quark:candle:4>,
    <quark:candle:5>,
    <quark:candle:6>,
    <quark:candle:14>,
    <quark:candle:13>,
    <quark:candle:12>,
    <quark:candle:11>,
    <quark:candle:10>,
    <quark:candle:9>,
    <quark:candle:8>,
    <quark:candle:7>,
    <quark:candle:15>
] as IItemStack[];

for cand in candles {
    cand.addTooltip(format.gold("The secret to neverending fire can only be learned, not discovered."));
}

//Pajamas
var pajamas = [
    <betterwithmods:wool_helmet>,
    <betterwithmods:wool_chest>,
    <betterwithmods:wool_pants>,
    <betterwithmods:wool_boots>
] as IItemStack[];

for paj in pajamas {
    paj.addTooltip(format.gold("An incredibly comfortable garment invented by the citizens before becoming Forsaken."));
}
//!SECTION 

/* ------------------------ SECTION Tough As Nails ------------------------ */
//FIXME Applications differ between armor pieces. Helmet = 2, Chest, Legs = 3, Boots = 1
//Adds tooltips for items that provide exposure bonuses
var mudArmor = [
    <saltmod:mud_helmet>,
    <saltmod:mud_chestplate>,
    <saltmod:mud_leggings>,
    <saltmod:mud_boots>
] as IItemStack[];

for mud in mudArmor {
    mud.addTooltip(format.aqua("When worn, provides 1 point of cooling."));
}

var pajamaArmor = [
    <betterwithmods:wool_boots>,
    <betterwithmods:wool_pants>,
    <betterwithmods:wool_chest>,
    <betterwithmods:wool_helmet>
] as IItemStack[];

for pajam in pajamaArmor {
    pajam.addTooltip(format.red("When worn, provides 1 point of heating."));
}

var coolLiner = [
    <armorunder:cool_boots_liner>,
    <armorunder:cool_leggings_liner>,
    <armorunder:cool_chestplate_liner>,
    <armorunder:cool_helmet_liner>
] as IItemStack[];

for cool in coolLiner {
    cool.addTooltip(format.aqua("When combined with armor, provides 1 point of cooling per application, for a maximum of 3."));
}

var warmLiner = [
    <armorunder:warm_helmet_liner>,
    <armorunder:warm_chestplate_liner>,
    <armorunder:warm_leggings_liner>,
    <armorunder:warm_boots_liner>
] as IItemStack[];

for warm in warmLiner {
    warm.addTooltip(format.red("When combined with armor, provides 1 point of heating her application, for a maximum of 3."));
}

var woolArmor = [
    <toughasnails:wool_boots>,
    <toughasnails:wool_leggings>,
    <toughasnails:wool_chestplate>,
    <toughasnails:wool_helmet>
] as IItemStack[];

for wool in woolArmor {
    wool.addTooltip(format.red("When worn, provides 2 points of heating. Can also be applied to armor for 1 point of heating."));
}

var slimeArmor = [
    <toughasnails:jelled_slime_boots>,
    <toughasnails:jelled_slime_leggings>,
    <toughasnails:jelled_slime_chestplate>,
    <toughasnails:jelled_slime_helmet>
] as IItemStack[];

for slarmor in slimeArmor {
    slarmor.addTooltip(format.aqua("When worn, provides 2 points of cooling. Can also be applied to armor for 1 point of cooling."));
}
/*
var otto = [
<armorunder:antifreeze_boots_liner>,
<armorunder:antifreeze_leggings_liner>,
<armorunder:antifreeze_chestplate_liner>,
<armorunder:antifreeze_helmet_liner>
] as IItemStack[];

for otters in otto {
    otters.addTooltip(format.gold("When applied to armor, provides 4 points of cooling. Does not")); //FIXME 
}
*/
//!SECTION 

/* ---------------------- SECTION Single Item Tooltips ---------------------- */

//Soul Bead
<quark:soul_powder>.addTooltip(format.gold("Right click while in the Nether to locate the nearest Nether Fortress."));

//Fizzy Drink
<saltmod:fizzy_drink>.addTooltip(format.gold("This curative can never be lost upon death."));

//!SECTION 