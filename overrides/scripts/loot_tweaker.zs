import crafttweaker.item.IItemStack;
import loottweaker.vanilla.loot.LootTables;
import loottweaker.vanilla.loot.LootTable;
import loottweaker.vanilla.loot.LootPool;
import loottweaker.vanilla.loot.Conditions;
import loottweaker.vanilla.loot.Functions;

//REVIEW Potential loot ideas:
//BWM Arcane Scrolls w/ enchant_randomly?
//Function for potion rings and ritual scrolls using setNBT?
//Enchant some items with Curse of Vanishing

/* -------------------------------------------------------------------------- */
/*                     SECTION Vanilla Abandoned Mineshaft                    */
/* -------------------------------------------------------------------------- */

val table_mc_am = LootTables.getTable("minecraft:chests/abandoned_mineshaft");
val pool_mc_am = table_mc_am.addPool("pool_mcam_common", 2, 4, 0, 1);
val nilla = table_mc_am.getPool("pool2");
nilla.setRolls(1, 2);

/* --------------------------------- Common --------------------------------- */

pool_mc_am.addItemEntry(<pyrotech:cog_iron>, 3);
pool_mc_am.addItemEntry(<pyrotech:sawmill_blade_iron>, 3);
pool_mc_am.addItemEntry(<toughasnails:fruit_juice:2>, 6);
pool_mc_am.addItemEntry(<toughasnails:fruit_juice:5>, 3);
pool_mc_am.addItemEntry(<toughasnails:fruit_juice:6>, 2);
pool_mc_am.addItemEntryHelper(<embers:shard_ember>, 2, 3, [Functions.setCount(1, 3)], []);
pool_mc_am.addItemEntryHelper(<pyrotech:material:19>, 6, 1, [Functions.setCount(2, 5)], []); //Iron Shard
pool_mc_am.addItemEntryHelper(<saltmod:soda>, 3, 1, [Functions.setCount(1, 5)], []);

/* -------------------------------- Uncommon -------------------------------- */
val pool_mc_am2 = table_mc_am.addPool("pool_mcam_uncommon", 1, 2, 0, 1);

pool_mc_am2.addItemEntry(<baubles:ring>, 1);
pool_mc_am2.addItemEntry(<pyrotech:bag_durable>, 5);
pool_mc_am2.addItemEntry(<pyrotech:cog_gold>, 6);
pool_mc_am2.addItemEntry(<pyrotech:sawmill_blade_gold>, 6);
pool_mc_am2.addItemEntry(<quark:diamond_heart>, 1);
pool_mc_am2.addItemEntry(<toughasnails:canteen>, 7);
pool_mc_am2.addItemEntryHelper(<betterwithmods:material:29>, 8, 1, [Functions.setCount(1, 6)], []);      //Blasting Oil
pool_mc_am2.addItemEntryHelper(<orecore:meteor>, 8, 1, [Functions.setCount(1, 4)], []);
pool_mc_am2.addItemEntryHelper(<pyrotech:material:34>, 7, 2, [Functions.setCount(1, 4)], []);   //Gold Shard

/* ---------------------------------- Rare ---------------------------------- */
val pool_mc_am3 = table_mc_am.addPool("pool_mcam_rare", 0, 1, 0, 1);
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
pool_mc_dp.addItemEntry(<embers:shard_ember>, 4);
pool_mc_dp.addItemEntry(<mod_lavacow:cursed_bandage>, 7);
pool_mc_dp.addItemEntry(<toughasnails:fruit_juice:5>, 8);    //Glistering Melon
pool_mc_dp.addItemEntry(<xlfoodmod:pizza>, 6);
pool_mc_dp.addItemEntryHelper(<mod_lavacow:cursed_fabric>, 3, 2, [Functions.setCount(1, 5)], []);
pool_mc_dp.addItemEntryHelper(<pvj:unstable_essence>, 4, 1, [Functions.setCount(1, 3)], []);
pool_mc_dp.addItemEntryHelper(<simplytea:teabag_black>, 3, 1, [Functions.setCount(1, 2)], []);
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
pool_mc_dp3.addItemEntry(<mod_lavacow:fissionpotion>, 5);
pool_mc_dp3.addItemEntry(<netherex:dull_mirror>, 1);
pool_mc_dp3.addItemEntry(<recall:item_recall>, 7);
pool_mc_dp3.addItemEntry(<xat:glowing_gem>, 6);
pool_mc_dp3.addItemEntryHelper(<embers:glimmer_shard>, 2, 3, [Functions.setCount(1, 5)], []);

//!SECTION 

/* -------------------------------------------------------------------------- */
/*                             SECTION Igloo Chest                            */
/* -------------------------------------------------------------------------- */
val table_mc_ic = LootTables.getTable("minecraft:chests/igloo_chest");
val pool_mc_ic = table_mc_ic.getPool("main");
pool_mc_ic.removeEntry("minecraft:apple");
pool_mc_ic.removeEntry("minecraft:wheat");

/* --------------------------------- Common --------------------------------- */
pool_mc_ic.addItemEntryHelper(<toughasnails:ice_cube>, 10, 1, [Functions.setCount(1, 6)], []);
pool_mc_ic.addItemEntryHelper(<minecraft:packed_ice>, 5, 1, [Functions.setCount(1, 3)], []);
pool_mc_ic.addItemEntryHelper(<xlfoodmod:icecream_sandwich>, 3, 1, [Functions.setCount(1, 5)], []);

/* ---------------------------------- Rare ---------------------------------- */
val pool_mc_ic2 = table_mc_dp.addPool("pool_mcic_rare", 0, 1, 0, 1);
pool_mc_ic2.addItemEntry(<mod_lavacow:fissionpotion>, 5);
pool_mc_ic2.addItemEntry(<recall:item_recall>, 3);
pool_mc_ic2.addItemEntry(<scalinghealth:crystalshard>, 2);
pool_mc_ic2.addItemEntryHelper(<pyrotech:material:18>, 6, 1, [Functions.setCount(1, 5)], []);

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

/* -------------------------------------------------------------------------- */
/*                          SECTION Stonelings Carry                          */
/* -------------------------------------------------------------------------- */
val table_q_sc = LootTables.getTable("quark:entities/stoneling_carry");
val pool_q_sc = table_q_sc.getPool("main");

pool_q_sc.addItemEntry(<embers:shard_ember>, 200);
pool_q_sc.addItemEntry(<scalinghealth:heartcontainer>, 50);
pool_q_sc.addItemEntry(<scalinghealth:crystalshard>, 150);
pool_q_sc.addItemEntry(<embers:ingot_dawnstone>, 100);
pool_q_sc.addItemEntry(<embers:glimmer_shard>, 200);
pool_q_sc.addItemEntry(<netherex:amethyst_crystal>, 200);

//!SECTION

/* -------------------------------------------------------------------------- */
/*                    SECTION Vanilla/Quark Simple Dungeon                    */
/* -------------------------------------------------------------------------- */
val table_mc_sd = LootTables.getTable("minecraft:chests/simple_dungeon");

/* --------------------------------- Common --------------------------------- */
val pool_mc_sd = table_mc_sd.getPool("pool2");

//Min Weight: 5
//Max Weight: 10

pool_mc_sd.addItemEntry(<toughasnails:purified_water_bottle>, 7);
pool_mc_sd.addItemEntry(<xlfoodmod:pizza>, 5);
pool_mc_sd.addItemEntry(<xlfoodmod:pumpkin_cake>, 5);
pool_mc_sd.addItemEntry(<xlfoodmod:strawberry_cake>, 5);
pool_mc_sd.addItemEntryHelper(<betterwithmods:material:6>, 6, 0, [Functions.setCount(1, 3)], []);     //Tanned Leather
pool_mc_sd.addItemEntryHelper(<embers:shard_ember>, 5, 0, [Functions.setCount(1, 3)], []);
pool_mc_sd.addItemEntryHelper(<minecraft:glass_bottle>, 10, 0, [Functions.setCount(1, 3)], []);
pool_mc_sd.addItemEntryHelper(<pvj:unstable_essence>, 6, 0, [Functions.setCount(1, 3)], []);

/* -------------------------------- Uncommon -------------------------------- */
val pool_mc_sd2 = table_mc_sd.getPool("pool1");

//Min Weight: 5
//Max Weight: 20

pool_mc_sd2.addItemEntry(<embers:ember_ring>, 5);
pool_mc_sd2.addItemEntry(<extraalchemy:empty_ring>, 10);
pool_mc_sd2.addItemEntry(<quark:diamond_heart>, 5);
pool_mc_sd2.addItemEntry(<quark:golden_frog_leg>, 20);
pool_mc_sd2.addItemEntry(<quark:horse_whistle>, 20);
pool_mc_sd2.addItemEntry(<respawnablepets:etheric_gem>, 7);
pool_mc_sd2.addItemEntry(<toughasnails:canteen>, 10);
pool_mc_sd2.addItemEntryHelper(<quark:black_ash>, 6, 0, [Functions.setCount(1, 2)], []);
pool_mc_sd2.addItemEntryHelper(<sereneseasons:greenhouse_glass>, 6, 0, [Functions.setCount(1, 3)], []);
pool_mc_sd2.addItemEntryHelper(<toughasnails:magma_shard>, 15, 0, [Functions.setCount(1, 4)], []);
pool_mc_sd2.addItemEntryHelper(<xat:glowing_ingot>, 6, 0, [Functions.setCount(1, 3)], []);

/* ---------------------------------- Rare ---------------------------------- */
val pool_mc_sd3 = table_mc_sd.getPool("main");

//Min Weight: 2
//Max Weight: 20

pool_mc_sd3.addItemEntry(<arcaneworld:glowing_chorus>, 2);
pool_mc_sd3.addItemEntry(<betterwithmods:ender_spectacles>, 2);
pool_mc_sd3.addItemEntry(<eplus:table_upgrade>, 2);
pool_mc_sd3.addItemEntry(<mod_lavacow:fissionpotion>, 10);
pool_mc_sd3.addItemEntry(<recall:item_recall>, 10);
pool_mc_sd3.addItemEntry(<scalinghealth:difficultychanger:1>, 15);
pool_mc_sd3.addItemEntry(<scalinghealth:difficultychanger>, 15);
pool_mc_sd3.addItemEntry(<xat:glowing_gem>, 10);
pool_mc_sd3.addItemEntryHelper(<embers:glimmer_shard>, 6, 0, [Functions.setCount(1, 3)], []);
pool_mc_sd3.addItemEntryHelper(<scalinghealth:crystalshard>, 6, 0, [Functions.setCount(1, 3)], []);

//!SECTION 

/* -------------------------------------------------------------------------- */
/*                         SECTION Stronghold Library                         */
/* -------------------------------------------------------------------------- */
val table_mc_sl = LootTables.getTable("minecraft:chests/stronghold_library");
val pool_mc_sl = table_mc_sl.addPool("pool_mc_sl", 1, 2, 0, 1);

//Max Weight: 20
//Min Weight: 1

pool_mc_sl.addItemEntry(<extraalchemy:empty_ring>, 12);
pool_mc_sl.addItemEntry(<xat:glowing_gem>, 15);
pool_mc_sl.addItemEntry(<recall:item_recall>, 10);
pool_mc_sl.addItemEntry(<eplus:table_upgrade>, 5);
pool_mc_sl.addItemEntryHelper(<netherex:amethyst_crystal>, 10, 0, [Functions.setCount(1, 6)], []);
pool_mc_sl.addItemEntry(<corpsecomplex:scroll>, 20);
pool_mc_sl.addItemEntry(<arcaneworld:ritual_scroll>.withTag({ritual: "crafttweaker:summon_golem"}), 15);
pool_mc_sl.addItemEntry(<eplus:decorative_book>, 10);
pool_mc_sl.addItemEntry(<eplus:decorative_book:1>, 15);
pool_mc_sl.addItemEntry(<eplus:decorative_book:2>, 5);
pool_mc_sl.addItemEntry(<eplus:decorative_book:3>, 10);
pool_mc_sl.addItemEntry(<eplus:decorative_book:4>, 5);
pool_mc_sl.addItemEntry(<eplus:decorative_book:5>, 15);
pool_mc_sl.addItemEntry(<eplus:decorative_book:6>, 15);
pool_mc_sl.addItemEntry(<extraalchemy:potion_ring>.withTag({Potion: "extraalchemy:learning_normal"}), 5);
pool_mc_sl.addItemEntry(<extraalchemy:potion_ring>.withTag({Potion: "extraalchemy:learning_strong"}), 1);

//!SECTION 

/* -------------------------------------------------------------------------- */
/*                          SECTION End City Treasure                         */
/* -------------------------------------------------------------------------- */

val table_mc_ec = LootTables.getTable("minecraft:chests/end_city_treasure");
val pool_mc_ec = table_mc_ec.getPool("main");

var dumb = [
    "minecraft:iron_ingot",
    "minecraft:gold_ingot",
    "minecraft:beetroot_seeds",
    "minecraft:iron_sword",
    "minecraft:iron_boots",
    "minecraft:iron_chestplate",
    "minecraft:iron_leggings",
    "minecraft:iron_helmet",
    "minecraft:iron_pickaxe",
    "minecraft:iron_shovel"
] as string[];

for dum in dumb {
    pool_mc_ec.removeEntry(dum);
}

//Max 15
//Min 1
val pool_mc_ec2 = table_mc_ec.addPool("pool_mc_ec2", 2, 4, 0, 1);

pool_mc_ec2.addItemEntry(<arcaneworld:biome_crystal>.withTag({biome: "minecraft:sky"}), 5);
pool_mc_ec2.addItemEntry(<mutantbeasts:endersoul_hand>, 1);
pool_mc_ec2.addItemEntry(<sanity:specterbread>, 10);
pool_mc_ec2.addItemEntry(<scalinghealth:heartcontainer>, 1);
pool_mc_ec2.addItemEntry(<xat:dragons_eye>, 1);
pool_mc_ec2.addItemEntry(<xat:dwarf_ring>, 1);
pool_mc_ec2.addItemEntry(<xat:fairy_ring>, 1);
pool_mc_ec2.addItemEntryHelper(<betterwithmods:material:40>, 6, 0, [Functions.setCount(1, 5)], []);    //Ocular of Ender
pool_mc_ec2.addItemEntryHelper(<minecraft:ender_eye>, 10, 0, [Functions.setCount(1, 3)], []);
pool_mc_ec2.addItemEntryHelper(<minecraft:ender_pearl>, 15, 0, [Functions.setCount(2, 10)], []);
pool_mc_ec2.addItemEntryHelper(<minecraft:obsidian>, 10, 0, [Functions.setCount(5, 30)], []);
pool_mc_ec2.addItemEntryHelper(<xat:glowing_gem>, 5, 0, [Functions.setCount(1, 3)], []);
pool_mc_ec2.addItemEntryHelper(<xat:glowing_ingot>, 5, 0, [Functions.setCount(1, 6)], []);
pool_mc_ec2.addItemEntryHelper(<xat:glowing_powder>, 5, 0, [Functions.setCount(1, 9)], []);
pool_mc_ec2.addItemEntryHelper(<betterwithmods:steel_helmet>, 2, 0, [Functions.enchantRandomly(["minecraft:unbreaking", "minecraft:thorns"])], []);
pool_mc_ec2.addItemEntryHelper(<betterwithmods:steel_chest>, 2, 0, [Functions.enchantRandomly(["minecraft:unbreaking", "minecraft:thorns"])], []);
pool_mc_ec2.addItemEntryHelper(<betterwithmods:steel_pants>, 2, 0, [Functions.enchantRandomly(["minecraft:unbreaking", "minecraft:thorns"])], []);
pool_mc_ec2.addItemEntryHelper(<betterwithmods:steel_boots>, 2, 0, [Functions.enchantRandomly(["minecraft:unbreaking", "minecraft:thorns"])], []);

//!SECTION 

/* -------------------------------------------------------------------------- */
/*                            SECTION Jungle Temple                           */
/* -------------------------------------------------------------------------- */
val table_mc_jt = LootTables.getTable("minecraft:chests/jungle_temple");
val pool_mc_jt = table_mc_jt.addPool("pool_mc_jt", 2, 4, 0, 1);

pool_mc_jt.addItemEntryHelper(<minecraft:experience_bottle>, 2, 0, [Functions.setCount(1, 9)], []);
pool_mc_jt.addItemEntryHelper(<minecraft:slime_ball>, 5, 0, [Functions.setCount(1, 9)], []);
pool_mc_jt.addItemEntryHelper(<minecraft:torch>, 5, 0, [Functions.setCount(1, 9)], []);
pool_mc_jt.addItemEntryHelper(<simplytea:teabag_floral>, 10, 0, [Functions.setCount(1, 3)], []);
pool_mc_jt.addItemEntryHelper(<simplytea:teabag_green>, 10, 0, [Functions.setCount(1, 3)], []);
pool_mc_jt.addItemEntryHelper(<toughasnails:fruit_juice:2>, 20, 0, [Functions.setCount(1, 4)], []);    //Cactus
pool_mc_jt.addItemEntryHelper(<toughasnails:fruit_juice:5>, 15, 0, [Functions.setCount(1, 2)], []);    //Glistering Melon
pool_mc_jt.addItemEntryHelper(<toughasnails:fruit_juice:6>, 15, 0, [Functions.setCount(1, 2)], []);    //Golden Apple

val pool_mc_jt2 = table_mc_jt.addPool("pool_mc_jt2", 1, 2, 0, 1);
pool_mc_jt2.addItemEntry(<betterwithmods:creeper_oyster>, 5);
pool_mc_jt2.addItemEntry(<betterwithmods:vase:13>, 8);
pool_mc_jt2.addItemEntry(<betterwithmods:vase:14>, 8);
pool_mc_jt2.addItemEntry(<respawnablepets:etheric_gem>, 2);
pool_mc_jt2.addItemEntry(<scalinghealth:difficultychanger:1>, 5);
pool_mc_jt2.addItemEntry(<scalinghealth:difficultychanger>, 5);
pool_mc_jt2.addItemEntry(<simplytea:tea_sapling>, 8);
pool_mc_jt2.addItemEntryHelper(<mod_lavacow:cursed_fabric>, 10, 0, [Functions.setCount(1, 3)], []);
pool_mc_jt2.addItemEntryHelper(<mod_lavacow:poisonspore>, 15, 0, [Functions.setCount(1, 5)], []);
pool_mc_jt2.addItemEntryHelper(<sereneseasons:greenhouse_glass>, 1, 0, [Functions.setCount(1, 3)], []);

val pool_mc_jt3 = table_mc_jt.addPool("pool_mc_jt3", 0, 1, 0, 1);
pool_mc_jt3.addItemEntry(<mowziesmobs:foliaath_seed>, 2);
pool_mc_jt3.addItemEntry(<mutantbeasts:chemical_x>, 2);
pool_mc_jt3.addItemEntryHelper(<pyrotech:obsidian_sword>, 2, 0, [Functions.enchantWithLevels(20, 39, true)], []);
pool_mc_jt3.addEmptyEntry(10);

//!SECTION 

/* -------------------------------------------------------------------------- */
/*                       SECTION Jungle Temple Dispenser                      */
/* -------------------------------------------------------------------------- */
val table_mc_jtd = LootTables.getTable("minecraft:chests/jungle_temple_dispenser");
val pool_mc_jtd = table_mc_jtd.getPool("main");

pool_mc_jtd.setRolls(2, 4);

pool_mc_jtd.addItemEntryHelper(<betterwithmods:broadhead_arrow>, 15, 0, [Functions.setCount(1, 9)], []);
pool_mc_jtd.addItemEntryHelper(<minecraft:tipped_arrow>.withTag({Potion: "minecraft:poison"}), 20, 0, [Functions.setCount(1, 9)], []);
pool_mc_jtd.addItemEntryHelper(<minecraft:tipped_arrow>.withTag({Potion: "minecraft:long_poison"}), 20, 0, [Functions.setCount(1, 9)], []);
pool_mc_jtd.addItemEntryHelper(<minecraft:tipped_arrow>.withTag({Potion: "minecraft:strong_poison"}), 20, 0, [Functions.setCount(1, 9)], []);
//!SECTION 

/* -------------------------------------------------------------------------- */
/*                         SECTION Village Blacksmith                         */
/* -------------------------------------------------------------------------- */
val table_mc_vb = LootTables.getTable("minecraft:chests/village_blacksmith");
val pool_mc_vb = table_mc_vb.getPool("main");

pool_mc_vb.removeEntry("minecraft:sapling");

val pool_mc_vb2 = table_mc_vb.addPool("pool_mc_vb2", 2, 3, 0, 2);

pool_mc_vb2.addItemEntry(<armorunder:goopak_cool>, 1);
pool_mc_vb2.addItemEntry(<armorunder:goopak_heat>, 1);
pool_mc_vb2.addItemEntry(<pyrotech:bucket_wood>, 10);
pool_mc_vb2.addItemEntry(<pyrotech:cog_iron>, 6);
pool_mc_vb2.addItemEntry(<pyrotech:crude_hammer>, 10);
pool_mc_vb2.addItemEntry(<pyrotech:sawmill_blade_iron>, 6);
pool_mc_vb2.addItemEntry(<xlfoodmod:cheese_cake>, 5);
pool_mc_vb2.addItemEntry(<xlfoodmod:oreo_cake>, 5);
pool_mc_vb2.addItemEntry(<xlfoodmod:pizza>, 7);
pool_mc_vb2.addItemEntryHelper(<betterwithmods:hemp>, 15, 0, [Functions.setCount(1, 5)], []);         //Hemp Seeds
pool_mc_vb2.addItemEntryHelper(<betterwithmods:material>, 5, 0, [Functions.setCount(1, 2)], []);     //Wooden Gear
pool_mc_vb2.addItemEntryHelper(<minecraft:flint>, 15, 0, [Functions.setCount(1, 3)], []);
pool_mc_vb2.addItemEntryHelper(<minecraft:leather>, 15, 0, [Functions.setCount(1, 9)], []);
pool_mc_vb2.addItemEntryHelper(<pyrotech:material:17>, 15, 0, [Functions.setCount(1, 4)], []);        //Lump of Clay
pool_mc_vb2.addItemEntryHelper(<pyrotech:material:19>, 7, 0, [Functions.setCount(1, 3)], []);          //Iron Shard
pool_mc_vb2.addItemEntryHelper(<pyrotech:material:21>, 9, 0, [Functions.setCount(1, 3)], []);        //Coal Pieces

//!SECTION 

/* -------------------------------------------------------------------------- */
/*                          SECTION Woodland Mansion                          */
/* -------------------------------------------------------------------------- */
val table_mc_wm = LootTables.getTable("minecraft:chests/woodland_mansion");
val pool_mc_wm = table_mc_wm.getPool("pool1");
val pool_mc_wm2 = table_mc_wm.getPool("pool2");

/*
val test = <minecraft:skull:3>.withTag({SkullOwner: {Id: "135aaf7f-97d8-4cd2-ac79-4e61a41d9017", Properties: {textures: [{Value: "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNGMxMWU0OWE2NDk3ZTc3YjViNDFkN2JiMzRlNTY3MzU5YWEzMjIyNTY5Y2ViOGM1MGU2M2YxYTVhZjdiZjUyOCJ9fX0="}]}}, display: {Name: "Skeleton Skull (diamond)"}});
REVIEW It works! Here's a link https://minecraft-heads.com/custom-heads
*/

val yuck = [
"minecraft:bread",
"minecraft:wheat",
"minecraft:beetroot_seeds",
"minecraft:pumpkin_seeds",
"minecraft:melon_seeds"
] as string[];

for yuc in yuck {
    pool_mc_wm.removeEntry(yuc);
}

pool_mc_wm2.removeEntry("minecraft:rotten_flesh");
pool_mc_wm2.removeEntry("minecraft:string");

//Pool 1
//Min: 5
//Max: 20
pool_mc_wm.addItemEntry(<minecraft:experience_bottle>, 10);



//Pool 2
//Min: 10
//Max: 10
pool_mc_wm2.addItemEntry(<minecraft:web>, 10);
#pool_mc_wm2.addItemEntry(test, 20);
