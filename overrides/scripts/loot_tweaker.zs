import crafttweaker.item.IItemStack;
import loottweaker.vanilla.loot.LootTables;
import loottweaker.vanilla.loot.LootTable;
import loottweaker.vanilla.loot.LootPool;
import loottweaker.vanilla.loot.Conditions;
import loottweaker.vanilla.loot.Functions;

/* -------------------------------------------------------------------------- */
/*                     SECTION Vanilla Abandoned Mineshaft                    */
/* -------------------------------------------------------------------------- */

val table_mc_am = LootTables.getTable("minecraft:chests/abandoned_mineshaft");
val pool_mc_am = table_mc_am.addPool("pool_mcam_common", 2, 4, 0, 1);
val nilla = table_mc_am.getPool("pool2");
nilla.setRolls(1, 2);

/* --------------------------------- Common --------------------------------- */

pool_mc_am.addItemEntry(<cave_expansion:stonepot>, 1);
pool_mc_am.addItemEntry(<pyrotech:cog_iron>, 3);
pool_mc_am.addItemEntry(<pyrotech:sawmill_blade_iron>, 3);
pool_mc_am.addItemEntry(<toughasnails:fruit_juice:2>, 6);
pool_mc_am.addItemEntry(<toughasnails:fruit_juice:5>, 3);
pool_mc_am.addItemEntry(<toughasnails:fruit_juice:6>, 2);
pool_mc_am.addItemEntryHelper(<betterwithmods:material:6>, 4, 3, [Functions.setCount(2, 6)], []);   //Tanned Leather
pool_mc_am.addItemEntryHelper(<embers:shard_ember>, 2, 3, [Functions.setCount(1, 3)], []);
pool_mc_am.addItemEntryHelper(<minecraft:glass_bottle>, 5, 1, [Functions.setCount(4, 16)], []);
pool_mc_am.addItemEntryHelper(<pyrotech:material:19>, 6, 1, [Functions.setCount(2, 5)], []); //Iron Shard
pool_mc_am.addItemEntryHelper(<saltmod:soda>, 3, 1, [Functions.setCount(1, 5)], []);
pool_mc_am.addItemEntryHelper(<toughasnails:purified_water_bottle>, 3, 1, [Functions.setCount(1, 3)], []);

/* -------------------------------- Uncommon -------------------------------- */
val pool_mc_am2 = table_mc_am.addPool("pool_mcam_uncommon", 1, 2, 0, 1);

pool_mc_am2.addItemEntry(<baubles:ring>, 1);
pool_mc_am2.addItemEntry(<pyrotech:bag_durable>, 5);
pool_mc_am2.addItemEntry(<pyrotech:cog_gold>, 6);
pool_mc_am2.addItemEntry(<pyrotech:sawmill_blade_gold>, 6);
pool_mc_am2.addItemEntry(<quark:diamond_heart>, 1);
pool_mc_am2.addItemEntry(<toughasnails:canteen>, 7);
pool_mc_am2.addItemEntryHelper(<betterwithmods:material:1>, 4, 1, [Functions.setCount(1, 3)], []);       //Nethercoal
pool_mc_am2.addItemEntryHelper(<betterwithmods:material:29>, 8, 1, [Functions.setCount(1, 6)], []);      //Blasting Oil
pool_mc_am2.addItemEntryHelper(<orecore:meteor>, 8, 1, [Functions.setCount(1, 4)], []);
pool_mc_am2.addItemEntryHelper(<pyrotech:material:34>, 7, 2, [Functions.setCount(1, 4)], []);   //Gold Shard
pool_mc_am2.addItemEntryHelper(<xat:glowing_ingot>, 3, 3, [Functions.setCount(1, 2)], []);

/* ---------------------------------- Rare ---------------------------------- */
val pool_mc_am3 = table_mc_am.addPool("pool_mcam_rare", 0, 1, 0, 1);
pool_mc_am3.addItemEntry(<xat:glowing_gem>, 1);
pool_mc_am3.addItemEntry(<recall:item_recall>, 1);
pool_mc_am3.addItemEntry(<scalinghealth:difficultychanger>, 1);
pool_mc_am3.addItemEntry(<scalinghealth:difficultychanger:1>, 1);
pool_mc_am3.addEmptyEntry(20);

//!SECTION 

/* -------------------------------------------------------------------------- */
/*                           SECTION Desert Pyramid                           */
/* -------------------------------------------------------------------------- */
val table_mc_dp = LootTables.getTable("minecraft:chests/desert_pyramid");

/* ----------------------------- Common/Uncommon ---------------------------- */
val pool_mc_dp = table_mc_dp.addPool("pool_mcdp_common", 2, 3, 0, 3);
pool_mc_dp.addItemEntry(<cave_expansion:stonepot>, 4);
pool_mc_dp.addItemEntry(<embers:shard_ember>, 4);
pool_mc_dp.addItemEntry(<mod_lavacow:cursed_bandage>, 7);
pool_mc_dp.addItemEntry(<toughasnails:fruit_juice:5>, 8);    //Glistering Melon
pool_mc_dp.addItemEntry(<xlfoodmod:pizza>, 6);
pool_mc_dp.addItemEntryHelper(<betterwithmods:kibble>, 10, 1, [Functions.setCount(3, 6)], []);
pool_mc_dp.addItemEntryHelper(<mod_lavacow:cursed_fabric>, 3, 2, [Functions.setCount(1, 5)], []);
pool_mc_dp.addItemEntryHelper(<pvj:unstable_essence>, 4, 1, [Functions.setCount(1, 3)], []);
pool_mc_dp.addItemEntryHelper(<simplytea:teabag_black>, 3, 1, [Functions.setCount(1, 2)], []);
pool_mc_dp.addItemEntryHelper(<simplytea:teabag_floral>, 3, 1, [Functions.setCount(1, 2)], []);
pool_mc_dp.addItemEntryHelper(<toughasnails:magma_shard>, 2, 3, [Functions.setCount(1, 3)], []);

/* ---------------------------------- Rare ---------------------------------- */
val pool_mc_dp2 = table_mc_dp.getPool("main");
pool_mc_dp2.addItemEntry(<respawnablepets:etheric_gem>, 3);
pool_mc_dp2.addItemEntry(<extraalchemy:empty_ring>, 5);
pool_mc_dp2.addItemEntry(<embers:ember_amulet>, 2);
pool_mc_dp2.addItemEntry(<embers:ember_belt>, 2);
pool_mc_dp2.addItemEntry(<embers:ember_ring>, 4);

/* -------------------------------- Very Rare ------------------------------- */
val pool_mc_dp3 = table_mc_dp.addPool("pool_mcdp_rare", 0, 1, 0, 1);
pool_mc_dp3.addEmptyEntry(20);
pool_mc_dp3.addItemEntry(<xat:glowing_gem>, 6);
pool_mc_dp3.addItemEntry(<recall:item_recall>, 7);
pool_mc_dp3.addItemEntry(<netherex:dull_mirror>, 1);
pool_mc_dp3.addItemEntry(<mod_lavacow:fissionpotion>, 5);
pool_mc_dp3.addItemEntry(<eplus:table_upgrade>, 1);
pool_mc_dp3.addItemEntryHelper(<embers:glimmer_shard>, 2, 3, [Functions.setCount(1, 5)], []);
pool_mc_dp3.addItemEntry(<cave_expansion:treasurelvl2>, 7);

//!SECTION 

/* -------------------------------------------------------------------------- */
/*              SECTION Project: Vibrant Journey's Abandoned Farm             */
/* -------------------------------------------------------------------------- */

val table_pvj_af = LootTables.getTable("pvj:abandoned_farm");
val pool_pvj_af = table_pvj_af.addPool("pool_pvjaf", 2, 4, 0, 1);

var seeds = [
<xlfoodmod:rice_seeds>,
<xlfoodmod:pepper_seeds>,
<xlfoodmod:corn_seeds>,
<xlfoodmod:tomato_seeds>,
<xlfoodmod:onion>,
<xlfoodmod:lettuce_seeds>,
<xlfoodmod:cucumber_seeds>,
<xlfoodmod:strawberry_seeds>,
<minecraft:beetroot_seeds>,
<betterwithmods:hemp>
] as IItemStack[];

for seed in seeds {
    pool_pvj_af.addItemEntry(seed, 5);
}
//!SECTION 