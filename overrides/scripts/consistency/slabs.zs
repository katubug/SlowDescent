import crafttweaker.item.IItemStack;
import mods.pyrotech.GraniteAnvil;
import mods.pyrotech.BrickSawmill;
import mods.pyrotech.StoneSawmill;
import mods.pyrotech.Chopping;
import crafttweaker.item.IIngredient;

/* --------------------- SECTION Slab Recipe Consistency -------------------- */

//===SECTION Materials input===

var slabPlanks = [
/*    <minecraft:planks>, //Oak
    <minecraft:planks:1>, //Spruce
    <minecraft:planks:2>, //Birch
    <minecraft:planks:3>, //Jungle
    <minecraft:planks:4>, //Acacia
    <minecraft:planks:5>, //Dark Oak */
    <mist:a_tree_block:13>,
    <mist:acacia_block:13>,
    <mist:aspen_block:13>,
    <mist:birch_block:13>,
    <mist:oak_block:13>,
    <mist:pine_block:13>,
    <mist:poplar_block:13>,
    <mist:s_tree_block:13>,
    <mist:snow_block:13>,
    <mist:spruce_block:13>,
    <mist:t_tree_block:13>,
    <mist:willow_block:13>,
    <mowziesmobs:painted_acacia>,
    <pvj:planks_aspen>,
    <pvj:planks_baobab>,
    <pvj:planks_cherry_blossom>,
    <pvj:planks_cottonwood>,
    <pvj:planks_fir>,
    <pvj:planks_jacaranda>,
    <pvj:planks_juniper>,
    <pvj:planks_mangrove>,
    <pvj:planks_maple>,
    <pvj:planks_palm>,
    <pvj:planks_pine>,
    <pvj:planks_redwood>,
    <pvj:planks_willow>
] as IItemStack[];

var slabStone = [
    <embers:ashen_brick>,
    <embers:ashen_stone>,
    <embers:ashen_tile>,
    <embers:block_caminite_brick>,
/*    <minecraft:purpur_block>,
    <minecraft:stone>,
    <minecraft:red_sandstone>,
    <minecraft:sandstone>,
    <minecraft:cobblestone>,
    <minecraft:brick_block>,
    <minecraft:stonebrick>,
    <minecraft:nether_brick>,
    <minecraft:quartz_block>, */
    <mist:cobblestone>,
    <netherex:basalt_brick>,
    <netherex:basalt_pillar>,
    <netherex:basalt>,
    <netherex:fiery_nether_brick>,
    <netherex:gloomy_nether_brick>,
    <netherex:icy_nether_brick>,
    <netherex:lively_nether_brick>,
    <minecraft:red_nether_brick>,
    <netherex:smooth_basalt>,
    <pvj:adobe_brick>,
    <pvj:adobe>,
    <pvj:cobblestone_brick>,
    <quark:marble>,
    <quark:world_stone_bricks:4>,
    <pvj:siltstone>,
    <saltmod:salt_block>,
    <saltmod:salt_block:5>,
    <quark:biotite_block>,
    <quark:soul_sandstone>
] as IItemStack[];

//!SECTION 
//===SECTION Slab outputs===

var woodSlabs = [
/*    <minecraft:wooden_slab>, //Oak
    <minecraft:wooden_slab:1>, //Spruce
    <minecraft:wooden_slab:2>, //Birch
    <minecraft:wooden_slab:3>, //Jungle
    <minecraft:wooden_slab:4>, //Acacia
    <minecraft:wooden_slab:5>, //Dark Oak */
    <mist:a_tree_slab>,
    <mist:acacia_slab>,
    <mist:aspen_slab>,
    <mist:birch_slab>,
    <mist:oak_slab>,
    <mist:pine_slab>,
    <mist:poplar_slab>,
    <mist:s_tree_slab>,
    <mist:snow_slab>,
    <mist:spruce_slab>,
    <mist:t_tree_slab>,
    <mist:willow_slab>,
    <mowziesmobs:painted_acacia_slab>,
    <pvj:aspen_slab>,
    <pvj:baobab_slab>,
    <pvj:cherry_blossom_slab>,
    <pvj:cottonwood_slab>,
    <pvj:fir_slab>,
    <pvj:jacaranda_slab>,
    <pvj:juniper_slab>,
    <pvj:mangrove_slab>,
    <pvj:maple_slab>,
    <pvj:palm_slab>,
    <pvj:pine_slab>,
    <pvj:redwood_slab>,
    <pvj:willow_slab>
] as IItemStack[];

var stoneSlabs = [
    <embers:ashen_brick_slab>,
    <embers:ashen_stone_slab>,
    <embers:ashen_tile_slab>,
    <embers:block_caminite_brick_slab>,
/*    <minecraft:purpur_slab>,
    <minecraft:stone_slab>, //Smooth Stone
    <minecraft:stone_slab2>, //Red Sandstone
    <minecraft:stone_slab:1>, //Sandstone
    <minecraft:stone_slab:3>, //Cobblestone
    <minecraft:stone_slab:4>, //Bricks
    <minecraft:stone_slab:5>, //Stone Bricks
    <minecraft:stone_slab:6>, //Nether Bricks
    <minecraft:stone_slab:7>, //Quartz */
    <mist:cobblestone_slab>,
    <netherex:basalt_brick_slab>,
    <netherex:basalt_pillar_slab>,
    <netherex:basalt_slab>,
    <netherex:fiery_nether_brick_slab>,
    <netherex:gloomy_nether_brick_slab>,
    <netherex:icy_nether_brick_slab>,
    <netherex:lively_nether_brick_slab>,
    <netherex:red_nether_brick_slab>,
    <netherex:smooth_basalt_slab>,
    <pvj:adobe_brick_slab>,
    <pvj:adobe_slab>,
    <pvj:cobblestone_brick_slab>,
    <pvj:marble_brick_slab>,
    <pvj:marble_slab>,
    <pvj:siltstone_slab>,
    <saltmod:salt_slab:1>,
    <saltmod:salt_slab>,
    <quark:biotite_slab>,
    <quark:soul_sandstone_slab>
] as IItemStack[];

//!SECTION 

//===SECTION String Arrays===

var stringWood = [
/*    "wooden_slab_oak",
    "wooden_slab_spruce",
    "wooden_slab_birch",
    "wooden_slab_jungle",
    "wooden_slab_acacia",
    "wooden_slab_darkoak",
    "wooden_slab_oak", */
    "wooden_slab_matree",
    "wooden_slab_macacia",
    "wooden_slab_maspen",
    "wooden_slab_mbirch",
    "wooden_slab_moak",
    "wooden_slab_mpine",
    "wooden_slab_mpoplar",
    "wooden_slab_mstree",
    "wooden_slab_msnow",
    "wooden_slab_mspruce",
    "wooden_slab_mttree",
    "wooden_slab_mwillow",
    "wooden_slab_mpacacia",
    "wooden_slab_paspen",
    "wooden_slab_pbaobab",
    "wooden_slab_pcherry",
    "wooden_slab_pcotton",
    "wooden_slab_pfir",
    "wooden_slab_pjacaranda",
    "wooden_slab_pjuniper",
    "wooden_slab_pmangrove",
    "wooden_slab_pmaple",
    "wooden_slab_ppalm",
    "wooden_slab_ppine",
    "wooden_slab_predwood",
    "wooden_slab_pwillow"
] as string[];

var stringStone = [
    "stone_slab_eabrick",
    "stone_slab_eastone",
    "stone_slab_eatile",
    "stone_slab_ecaminite",
/*    "stone_slab_purpur",
    "stone_slab_smstone",
    "stone_slab_rsandstone",
    "stone_slab_sandstone",
    "stone_slab_cobble",
    "stone_slab_brick",
    "stone_slab_stonebrick",
    "stone_slab_netherbrick",
    "stone_slab_quartz", */
    "stone_slab_mcobble",
    "stone_slab_nbasbrick",
    "stone_slab_nbaspil",
    "stone_slab_nbasalt",
    "stone_slab_nfierynb",
    "stone_slab_ngloomynb",
    "stone_slab_nicynb",
    "stone_slab_nlivelynb",
    "stone_slab_rednether", //vanilla, i just put it in the wrong spot
    "stone_slab_nsmoobas",
    "stone_slab_padobe",
    "stone_slab_padobeb",
    "stone_slab_pcobble",
    "stone_slab_qmarble",
    "stone_slab_qmarbleb",
    "stone_slab_psiltstone",
    "stone_slab_salt",
    "stone_slab_saltb",
    "stone_slab_qbiotite",
    "stone_slab_qsoul",
] as string[];

var stringStone2 = [
    "stone_slab2_eabrick",
    "stone_slab2_eastone",
    "stone_slab2_eatile",
    "stone_slab2_ecaminite",
/*    "stone_slab2_purpur",
    "stone_slab2_smstone",
    "stone_slab2_rsandstone",
    "stone_slab2_sandstone",
    "stone_slab2_cobble",
    "stone_slab2_brick",
    "stone_slab2_stonebrick",
    "stone_slab2_netherbrick",
    "stone_slab2_quartz", */
    "stone_slab2_mcobble",
    "stone_slab2_nbasbrick",
    "stone_slab2_nbaspil",
    "stone_slab2_nbasalt",
    "stone_slab2_nfierynb",
    "stone_slab2_ngloomynb",
    "stone_slab2_nicynb",
    "stone_slab2_nlivelynb",
    "stone_slab2_rednether", //vanilla, i just put it in the wrong spot
    "stone_slab2_nsmoobas",
    "stone_slab2_padobe",
    "stone_slab2_padobeb",
    "stone_slab2_pcobble",
    "stone_slab2_qmarble",
    "stone_slab2_qmarbleb",
    "stone_slab2_psiltstone",
    "stone_slab2_salt",
    "stone_slab2_saltb",
    "stone_slab2_qbiotite",
    "stone_slab2_qsoul",
] as string[];

//!SECTION 
//===SECTION The Recipe Loops===
//inputs: slabPlanks, slabStone
//outputs: woodSlabs, stoneSlabs
//machines: GraniteAnvil, BrickSawmill, StoneSawmill, Chopping

for i, item in stoneSlabs {
    GraniteAnvil.addRecipe(stringStone[i], stoneSlabs[i] * 2, slabStone[i], 6, "pickaxe", true);
    BrickSawmill.addRecipe(stringStone2[i], stoneSlabs[i] * 2, slabStone[i], 120, <pyrotech:sawmill_blade_diamond:*>.or(<pyrotech:sawmill_blade_obsidian:*>));
}

for i, item in woodSlabs {
    Chopping.addRecipe(stringWood[i], woodSlabs[i], slabPlanks[i], [6], [4], true); //FIXME This is fine for chopping block, but the sawmill only gives 1 by default w/ low tier blades
}

/*
NOTE from DShadowWolf#0851 on the CrT discord:
uses .displayName.replace(" ", "\_") to make it so the display-name doesn't have spaces
            val input_name as string = recipe.input.displayName.replace(" ", "_");
            val output_name as string = recipe.output.displayName.replace(" ", "_");
            val rec_n as string = input_name ~ "_to_" ~ output_name ~ "_for_" ~ machine_n;
the "machine_n" bit is actually a reference into an array but... thats more because I'm doing 4 different machines for each of the recipes that are getting done there
*/