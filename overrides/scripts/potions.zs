import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

/* -------------------------------------------------------------------------- */
/*                           SECTION Potion Recipes                           */
/* -------------------------------------------------------------------------- */

//NOTE Mods required for this script:
//PotionCore
//Better With Mods
//Project: Vibrant Journeys
//BetterNether
//Deadly Monsters
//Pyrotech
//Tough As Nails
//Fish's Undead Rising
//Food Funk
//Misty World
//Salty Mod
//Extra Alchemy

//Setting a quick bit of OreDict for the script below
<ore:blockCactus>.add(<pvj:small_cactus>);
<ore:blockCactus>.add(<betternether:barrel_cactus>);

//First, remove a recipe for Magnetism Potions so I can replace it
brewing.removeRecipe(<minecraft:potion>.withTag({Potion: "extraalchemy:magnetism_normal"}), <minecraft:iron_ingot>);
brewing.addBrew(<minecraft:potion>.withTag({Potion: "minecraft:awkward"}), <ore:slimeball>, <minecraft:potion>.withTag({Potion: "extraalchemy:magnetism_normal"}));

/* ---------------------- SECTION Normal Normal Potions --------------------- */
val NormalNormalPotions = [
    <minecraft:potion>.withTag({Potion: "potioncore:wither"}),
    <minecraft:potion>.withTag({Potion: "potioncore:blindness"}),
    <minecraft:potion>.withTag({Potion: "potioncore:levitation"}),
    <minecraft:potion>.withTag({Potion: "potioncore:glowing"}),
    <minecraft:potion>.withTag({Potion: "potioncore:haste"}),
    <minecraft:potion>.withTag({Potion: "potioncore:unluck"}),
    <minecraft:potion>.withTag({Potion: "potioncore:recoil"}),
    <minecraft:potion>.withTag({Potion: "potioncore:iron_skin"}),
    <minecraft:potion>.withTag({Potion: "potioncore:purity"}),
    <minecraft:potion>.withTag({Potion: "potioncore:diamond_skin"}),
    <minecraft:potion>.withTag({Potion: "potioncore:teleport"}),
    <minecraft:potion>.withTag({Potion: "potioncore:teleport_surface"}),
    <minecraft:potion>.withTag({Potion: "potioncore:step_up"}),
    <minecraft:potion>.withTag({Potion: "potioncore:drown"}),
    <minecraft:potion>.withTag({Potion: "potioncore:climb"}),
    <minecraft:potion>.withTag({Potion: "potioncore:rust"}),
    <minecraft:potion>.withTag({Potion: "potioncore:vulnerable"}),
    <minecraft:potion>.withTag({Potion: "potioncore:explode"}),
    <minecraft:potion>.withTag({Potion: "potioncore:solid_core"}),
    <minecraft:potion>.withTag({Potion: "potioncore:potion_sickness"}),
    <minecraft:potion>.withTag({Potion: "potioncore:lightning"}),
    <minecraft:potion>.withTag({Potion: "potioncore:weight"}),
    <minecraft:potion>.withTag({Potion: "potioncore:launch"}),
    <minecraft:potion>.withTag({Potion: "potioncore:dispel"}),
    <minecraft:potion>.withTag({Potion: "potioncore:revival"}),
    <minecraft:potion>.withTag({Potion: "potioncore:klutz"}),
    <minecraft:potion>.withTag({Potion: "potioncore:broken_armor"}),
    <minecraft:potion>.withTag({Potion: "potioncore:slow_fall"}),
    <minecraft:potion>.withTag({Potion: "potioncore:curse"}),
    <minecraft:potion>.withTag({Potion: "potioncore:archery"})
] as IItemStack[];

val PotionIngredients = [
    <minecraft:skull:1>,                //Wither
    <ore:dyeBlack>,                     //Blindness
    <dmonsters:entrailflesh>,           //Levitation
    <dmonsters:sunlightdrop>,           //Glowing
    <pvj:sugarcane_juice>,              //Haste
    <pvj:goon_bile>,                    //Unluck
    <ore:blockCactus>,                  //Recoil
    <ore:ingotIron>,                    //Iron Skin
    <pvj:witherweed>,                   //Wither Purity
    <pyrotech:material:18>,             //Diamond Skin [Diamond Shard]
    <minecraft:ender_pearl>,            //Teleport
    <betterwithmods:material:40>,       //Teleport Surface [Ocular of Ender]
    <mod_lavacow:glowshroom>,           //Step Up
    <toughasnails:purified_water_bottle>,//Drown
    <minecraft:web>,                    //Climb
    <pyrotech:generated_slag_iron>,     //Rust
    <minecraft:chorus_flower>,          //Vulnerable
    <betterwithmods:material:29>,       //Explode [Blasting Oil]
    <dmonsters:widemanspine>,           //Solid Core
    <foodfunk:rotten_food>,             //Potion Sickness
    <mist:niobium_nugget>,              //Lightning
    <ore:rock>,                         //Weight
    <betterwithmods:material:26>,       //Launch [Niter]
    <saltmod:powdered_milk>,            //Dispel
    <mod_lavacow:undyingheart>,         //Revival
    <ore:tallow>,                       //Klutz
    <pyrotech:material:33>,             //Broken Armor [Obsidian Shard]
    <ore:feather>,                      //Slow Fall
    <pvj:unstable_essence>,             //Curse
    <toughasnails:fruit_juice:3>        //Archery [Carrot Juice]
] as IIngredient[];

val BaseNormals = [
    <minecraft:potion>.withTag({Potion: "extraalchemy:charged2_normal"}),   //Wither
    <minecraft:potion>.withTag({Potion: "minecraft:thick"}),                //Blindness
    <minecraft:potion>.withTag({Potion: "minecraft:mundane"}),              //Levitation
    <minecraft:potion>.withTag({Potion: "minecraft:mundane"}),              //Glowing
    <minecraft:potion>.withTag({Potion: "minecraft:thick"}),                //Haste
    <minecraft:potion>.withTag({Potion: "minecraft:awkward"}),              //Unluck
    <minecraft:potion>.withTag({Potion: "minecraft:thick"}),                //Recoil
    <minecraft:potion>.withTag({Potion: "extraalchemy:charged_normal"}),    //Iron Skin
    <minecraft:potion>.withTag({Potion: "minecraft:thick"}),                //Wither Purity
    <minecraft:potion>.withTag({Potion: "extraalchemy:charged2_normal"}),   //Diamond Skin
    <minecraft:potion>.withTag({Potion: "minecraft:mundane"}),              //Teleport
    <minecraft:potion>.withTag({Potion: "minecraft:mundane"}),              //Teleport Surface
    <minecraft:potion>.withTag({Potion: "minecraft:awkward"}),              //Step Up
    <minecraft:potion>.withTag({Potion: "minecraft:mundane"}),              //Drown
    <minecraft:potion>.withTag({Potion: "minecraft:thick"}),                //Climb
    <minecraft:potion>.withTag({Potion: "minecraft:awkward"}),              //Rust
    <minecraft:potion>.withTag({Potion: "minecraft:thick"}),                //Vulnerable
    <minecraft:potion>.withTag({Potion: "minecraft:thick"}),                //Explode
    <minecraft:potion>.withTag({Potion: "minecraft:awkward"}),              //Solid Core
    <minecraft:potion>.withTag({Potion: "minecraft:awkward"}),              //Potion Sickness
    <minecraft:potion>.withTag({Potion: "minecraft:thick"}),                //Lightning
    <minecraft:potion>.withTag({Potion: "minecraft:awkward"}),              //Weight
    <minecraft:potion>.withTag({Potion: "minecraft:thick"}),                //Launch
    <minecraft:potion>.withTag({Potion: "minecraft:awkward"}),              //Dispel
    <minecraft:potion>.withTag({Potion: "extraalchemy:reincarnation_strong"}),       //Revival
    <minecraft:potion>.withTag({Potion: "minecraft:awkward"}),              //Klutz
    <minecraft:potion>.withTag({Potion: "minecraft:thick"}),                //Broken Armor
    <minecraft:potion>.withTag({Potion: "minecraft:thick"}),                //Slow Fall
    <minecraft:potion>.withTag({Potion: "minecraft:thick"}),                //Curse
    <minecraft:potion>.withTag({Potion: "minecraft:awkward"})               //Archery
] as IItemStack[];

for i, item in NormalNormalPotions {
    brewing.addBrew(BaseNormals[i], PotionIngredients[i], NormalNormalPotions[i]);
}
//!SECTION 

/* ---------------------- SECTION Normal Splash Potions --------------------- */

val NormalSplashPotions = [
    <minecraft:splash_potion>.withTag({Potion: "potioncore:wither"}),
    <minecraft:splash_potion>.withTag({Potion: "potioncore:blindness"}),
    <minecraft:splash_potion>.withTag({Potion: "potioncore:levitation"}),
    <minecraft:splash_potion>.withTag({Potion: "potioncore:glowing"}),
    <minecraft:splash_potion>.withTag({Potion: "potioncore:haste"}),
    <minecraft:splash_potion>.withTag({Potion: "potioncore:unluck"}),
    <minecraft:splash_potion>.withTag({Potion: "potioncore:recoil"}),
    <minecraft:splash_potion>.withTag({Potion: "potioncore:iron_skin"}),
    <minecraft:splash_potion>.withTag({Potion: "potioncore:purity"}),
    <minecraft:splash_potion>.withTag({Potion: "potioncore:diamond_skin"}),
    <minecraft:splash_potion>.withTag({Potion: "potioncore:teleport"}),
    <minecraft:splash_potion>.withTag({Potion: "potioncore:teleport_surface"}),
    <minecraft:splash_potion>.withTag({Potion: "potioncore:step_up"}),
    <minecraft:splash_potion>.withTag({Potion: "potioncore:drown"}),
    <minecraft:splash_potion>.withTag({Potion: "potioncore:climb"}),
    <minecraft:splash_potion>.withTag({Potion: "potioncore:rust"}),
    <minecraft:splash_potion>.withTag({Potion: "potioncore:vulnerable"}),
    <minecraft:splash_potion>.withTag({Potion: "potioncore:explode"}),
    <minecraft:splash_potion>.withTag({Potion: "potioncore:solid_core"}),
    <minecraft:splash_potion>.withTag({Potion: "potioncore:potion_sickness"}),
    <minecraft:splash_potion>.withTag({Potion: "potioncore:lightning"}),
    <minecraft:splash_potion>.withTag({Potion: "potioncore:weight"}),
    <minecraft:splash_potion>.withTag({Potion: "potioncore:launch"}),
    <minecraft:splash_potion>.withTag({Potion: "potioncore:dispel"}),
    <minecraft:splash_potion>.withTag({Potion: "potioncore:revival"}),
    <minecraft:splash_potion>.withTag({Potion: "potioncore:klutz"}),
    <minecraft:splash_potion>.withTag({Potion: "potioncore:broken_armor"}),
    <minecraft:splash_potion>.withTag({Potion: "potioncore:slow_fall"}),
    <minecraft:splash_potion>.withTag({Potion: "potioncore:curse"}),
    <minecraft:splash_potion>.withTag({Potion: "potioncore:archery"})
] as IItemStack[];

val BaseSplashPotions = [
    <minecraft:splash_potion>.withTag({Potion: "extraalchemy:charged2_normal"}),
    <minecraft:splash_potion>.withTag({Potion: "minecraft:thick"}),
    <minecraft:splash_potion>.withTag({Potion: "minecraft:mundane"}),
    <minecraft:splash_potion>.withTag({Potion: "minecraft:mundane"}),
    <minecraft:splash_potion>.withTag({Potion: "minecraft:thick"}),
    <minecraft:splash_potion>.withTag({Potion: "minecraft:awkward"}),
    <minecraft:splash_potion>.withTag({Potion: "minecraft:thick"}),
    <minecraft:splash_potion>.withTag({Potion: "extraalchemy:charged_normal"}),
    <minecraft:splash_potion>.withTag({Potion: "minecraft:thick"}),
    <minecraft:splash_potion>.withTag({Potion: "extraalchemy:charged2_normal"}),
    <minecraft:splash_potion>.withTag({Potion: "minecraft:mundane"}),
    <minecraft:splash_potion>.withTag({Potion: "minecraft:mundane"}),
    <minecraft:splash_potion>.withTag({Potion: "minecraft:awkward"}),
    <minecraft:splash_potion>.withTag({Potion: "minecraft:mundane"}),
    <minecraft:splash_potion>.withTag({Potion: "minecraft:thick"}),
    <minecraft:splash_potion>.withTag({Potion: "minecraft:awkward"}),
    <minecraft:splash_potion>.withTag({Potion: "minecraft:thick"}),
    <minecraft:splash_potion>.withTag({Potion: "minecraft:thick"}),
    <minecraft:splash_potion>.withTag({Potion: "minecraft:awkward"}),
    <minecraft:splash_potion>.withTag({Potion: "minecraft:awkward"}),
    <minecraft:splash_potion>.withTag({Potion: "minecraft:thick"}),
    <minecraft:splash_potion>.withTag({Potion: "minecraft:awkward"}),
    <minecraft:splash_potion>.withTag({Potion: "minecraft:thick"}),
    <minecraft:splash_potion>.withTag({Potion: "minecraft:awkward"}),
    <minecraft:splash_potion>.withTag({Potion: "extraalchemy:reincarnation_strong"}),
    <minecraft:splash_potion>.withTag({Potion: "minecraft:awkward"}),
    <minecraft:splash_potion>.withTag({Potion: "minecraft:thick"}),
    <minecraft:splash_potion>.withTag({Potion: "minecraft:thick"}),
    <minecraft:splash_potion>.withTag({Potion: "minecraft:thick"}),
    <minecraft:splash_potion>.withTag({Potion: "minecraft:awkward"})
] as IItemStack[];

for i, item in NormalSplashPotions {
    brewing.addBrew(BaseSplashPotions[i], PotionIngredients[i], NormalSplashPotions[i]);
    brewing.addBrew(NormalNormalPotions[i], <minecraft:gunpowder>, NormalSplashPotions[i]);
}
//!SECTION 

/* -------------------- SECTION Normal Lingering Potions -------------------- */
val NormalLingeringPotions = [
    <minecraft:lingering_potion>.withTag({Potion: "potioncore:wither"}),
    <minecraft:lingering_potion>.withTag({Potion: "potioncore:blindness"}),
    <minecraft:lingering_potion>.withTag({Potion: "potioncore:levitation"}),
    <minecraft:lingering_potion>.withTag({Potion: "potioncore:glowing"}),
    <minecraft:lingering_potion>.withTag({Potion: "potioncore:haste"}),
    <minecraft:lingering_potion>.withTag({Potion: "potioncore:unluck"}),
    <minecraft:lingering_potion>.withTag({Potion: "potioncore:recoil"}),
    <minecraft:lingering_potion>.withTag({Potion: "potioncore:iron_skin"}),
    <minecraft:lingering_potion>.withTag({Potion: "potioncore:purity"}),
    <minecraft:lingering_potion>.withTag({Potion: "potioncore:diamond_skin"}),
    <minecraft:lingering_potion>.withTag({Potion: "potioncore:teleport"}),
    <minecraft:lingering_potion>.withTag({Potion: "potioncore:teleport_surface"}),
    <minecraft:lingering_potion>.withTag({Potion: "potioncore:step_up"}),
    <minecraft:lingering_potion>.withTag({Potion: "potioncore:drown"}),
    <minecraft:lingering_potion>.withTag({Potion: "potioncore:climb"}),
    <minecraft:lingering_potion>.withTag({Potion: "potioncore:rust"}),
    <minecraft:lingering_potion>.withTag({Potion: "potioncore:vulnerable"}),
    <minecraft:lingering_potion>.withTag({Potion: "potioncore:explode"}),
    <minecraft:lingering_potion>.withTag({Potion: "potioncore:solid_core"}),
    <minecraft:lingering_potion>.withTag({Potion: "potioncore:potion_sickness"}),
    <minecraft:lingering_potion>.withTag({Potion: "potioncore:lightning"}),
    <minecraft:lingering_potion>.withTag({Potion: "potioncore:weight"}),
    <minecraft:lingering_potion>.withTag({Potion: "potioncore:launch"}),
    <minecraft:lingering_potion>.withTag({Potion: "potioncore:dispel"}),
    <minecraft:lingering_potion>.withTag({Potion: "potioncore:revival"}),
    <minecraft:lingering_potion>.withTag({Potion: "potioncore:klutz"}),
    <minecraft:lingering_potion>.withTag({Potion: "potioncore:broken_armor"}),
    <minecraft:lingering_potion>.withTag({Potion: "potioncore:slow_fall"}),
    <minecraft:lingering_potion>.withTag({Potion: "potioncore:curse"}),
    <minecraft:lingering_potion>.withTag({Potion: "potioncore:archery"})
] as IItemStack[];

val BaseLingeringPotions = [
    <minecraft:lingering_potion>.withTag({Potion: "extraalchemy:charged2_normal"}),
    <minecraft:lingering_potion>.withTag({Potion: "minecraft:thick"}),
    <minecraft:lingering_potion>.withTag({Potion: "minecraft:mundane"}),
    <minecraft:lingering_potion>.withTag({Potion: "minecraft:mundane"}),
    <minecraft:lingering_potion>.withTag({Potion: "minecraft:thick"}),
    <minecraft:lingering_potion>.withTag({Potion: "minecraft:awkward"}),
    <minecraft:lingering_potion>.withTag({Potion: "minecraft:thick"}),
    <minecraft:lingering_potion>.withTag({Potion: "extraalchemy:charged_normal"}),
    <minecraft:lingering_potion>.withTag({Potion: "minecraft:thick"}),
    <minecraft:lingering_potion>.withTag({Potion: "extraalchemy:charged2_normal"}),
    <minecraft:lingering_potion>.withTag({Potion: "minecraft:mundane"}),
    <minecraft:lingering_potion>.withTag({Potion: "minecraft:mundane"}),
    <minecraft:lingering_potion>.withTag({Potion: "minecraft:awkward"}),
    <minecraft:lingering_potion>.withTag({Potion: "minecraft:mundane"}),
    <minecraft:lingering_potion>.withTag({Potion: "minecraft:thick"}),
    <minecraft:lingering_potion>.withTag({Potion: "minecraft:awkward"}),
    <minecraft:lingering_potion>.withTag({Potion: "minecraft:thick"}),
    <minecraft:lingering_potion>.withTag({Potion: "minecraft:thick"}),
    <minecraft:lingering_potion>.withTag({Potion: "minecraft:awkward"}),
    <minecraft:lingering_potion>.withTag({Potion: "minecraft:awkward"}),
    <minecraft:lingering_potion>.withTag({Potion: "minecraft:thick"}),
    <minecraft:lingering_potion>.withTag({Potion: "minecraft:awkward"}),
    <minecraft:lingering_potion>.withTag({Potion: "minecraft:thick"}),
    <minecraft:lingering_potion>.withTag({Potion: "minecraft:awkward"}),
    <minecraft:lingering_potion>.withTag({Potion: "extraalchemy:reincarnation_strong"}),
    <minecraft:lingering_potion>.withTag({Potion: "minecraft:awkward"}),
    <minecraft:lingering_potion>.withTag({Potion: "minecraft:thick"}),
    <minecraft:lingering_potion>.withTag({Potion: "minecraft:thick"}),
    <minecraft:lingering_potion>.withTag({Potion: "minecraft:thick"}),
    <minecraft:lingering_potion>.withTag({Potion: "minecraft:awkward"})
] as IItemStack[];

for i, item in NormalLingeringPotions {
    brewing.addBrew(BaseLingeringPotions[i], PotionIngredients[i], NormalLingeringPotions[i]);
    brewing.addBrew(NormalSplashPotions[i], <minecraft:dragon_breath>, NormalLingeringPotions[i]);
}
//!SECTION 

/* ----------------------- SECTION Long Normal Potions ---------------------- */
//FIXME 
val LongNormalPotions = [
    <minecraft:potion>.withTag({Potion: "potioncore:long_wither"}),
    <minecraft:potion>.withTag({Potion: "potioncore:long_blindness"}),
    <minecraft:potion>.withTag({Potion: "potioncore:long_levitation"}),
    <minecraft:potion>.withTag({Potion: "potioncore:long_glowing"}),
    <minecraft:potion>.withTag({Potion: "potioncore:long_haste"}),
    <minecraft:potion>.withTag({Potion: "potioncore:long_recoil"}),
    <minecraft:potion>.withTag({Potion: "potioncore:long_iron_skin"}),
    <minecraft:potion>.withTag({Potion: "potioncore:long_purity"}),
    <minecraft:potion>.withTag({Potion: "potioncore:long_diamond_skin"}),
    <minecraft:potion>.withTag({Potion: "potioncore:long_step_up"}),
    <minecraft:potion>.withTag({Potion: "potioncore:long_drown"}),
    <minecraft:potion>.withTag({Potion: "potioncore:long_climb"}),
    <minecraft:potion>.withTag({Potion: "potioncore:long_rust"}),
    <minecraft:potion>.withTag({Potion: "potioncore:long_vulnerable"}),
    <minecraft:potion>.withTag({Potion: "potioncore:long_solid_core"}),
    <minecraft:potion>.withTag({Potion: "potioncore:long_potion_sickness"}),
    <minecraft:potion>.withTag({Potion: "potioncore:long_weight"}),
    <minecraft:potion>.withTag({Potion: "potioncore:long_revival"}),
    <minecraft:potion>.withTag({Potion: "potioncore:long_klutz"}),
    <minecraft:potion>.withTag({Potion: "potioncore:long_broken_armor"}),
    <minecraft:potion>.withTag({Potion: "potioncore:long_slow_fall"}),
    <minecraft:potion>.withTag({Potion: "potioncore:long_archery"})
] as IItemStack[];

for i, item in LongNormalPotions {
    brewing.addBrew(NormalNormalPotions[i], <minecraft:redstone>, LongNormalPotions[i]);
}
//!SECTION 

/* ----------------------- SECTION Long Splash Potions ---------------------- */
//FIXME 
val LongSplashPotions = [
    <minecraft:splash_potion>.withTag({Potion: "potioncore:long_wither"}),
    <minecraft:splash_potion>.withTag({Potion: "potioncore:long_blindness"}),
    <minecraft:splash_potion>.withTag({Potion: "potioncore:long_levitation"}),
    <minecraft:splash_potion>.withTag({Potion: "potioncore:long_glowing"}),
    <minecraft:splash_potion>.withTag({Potion: "potioncore:long_haste"}),
    <minecraft:splash_potion>.withTag({Potion: "potioncore:long_recoil"}),
    <minecraft:splash_potion>.withTag({Potion: "potioncore:long_iron_skin"}),
    <minecraft:splash_potion>.withTag({Potion: "potioncore:long_purity"}),
    <minecraft:splash_potion>.withTag({Potion: "potioncore:long_diamond_skin"}),
    <minecraft:splash_potion>.withTag({Potion: "potioncore:long_step_up"}),
    <minecraft:splash_potion>.withTag({Potion: "potioncore:long_drown"}),
    <minecraft:splash_potion>.withTag({Potion: "potioncore:long_climb"}),
    <minecraft:splash_potion>.withTag({Potion: "potioncore:long_rust"}),
    <minecraft:splash_potion>.withTag({Potion: "potioncore:long_vulnerable"}),
    <minecraft:splash_potion>.withTag({Potion: "potioncore:long_solid_core"}),
    <minecraft:splash_potion>.withTag({Potion: "potioncore:long_potion_sickness"}),
    <minecraft:splash_potion>.withTag({Potion: "potioncore:long_weight"}),
    <minecraft:splash_potion>.withTag({Potion: "potioncore:long_revival"}),
    <minecraft:splash_potion>.withTag({Potion: "potioncore:long_klutz"}),
    <minecraft:splash_potion>.withTag({Potion: "potioncore:long_broken_armor"}),
    <minecraft:splash_potion>.withTag({Potion: "potioncore:long_slow_fall"}),
    <minecraft:splash_potion>.withTag({Potion: "potioncore:long_archery"})
] as IItemStack[];

for i, item in LongSplashPotions {
    brewing.addBrew(NormalSplashPotions[i], <minecraft:redstone>, LongSplashPotions[i]);
    brewing.addBrew(LongNormalPotions[i], <minecraft:gunpowder>, LongSplashPotions[i]);
}
//!SECTION 

/* --------------------- SECTION Long Lingering Potions --------------------- */
//FIXME 
val LongLingeringPotions = [
    <minecraft:lingering_potion>.withTag({Potion: "potioncore:long_wither"}),
    <minecraft:lingering_potion>.withTag({Potion: "potioncore:long_blindness"}),
    <minecraft:lingering_potion>.withTag({Potion: "potioncore:long_levitation"}),
    <minecraft:lingering_potion>.withTag({Potion: "potioncore:long_glowing"}),
    <minecraft:lingering_potion>.withTag({Potion: "potioncore:long_haste"}),
    <minecraft:lingering_potion>.withTag({Potion: "potioncore:long_recoil"}),
    <minecraft:lingering_potion>.withTag({Potion: "potioncore:long_iron_skin"}),
    <minecraft:lingering_potion>.withTag({Potion: "potioncore:long_purity"}),
    <minecraft:lingering_potion>.withTag({Potion: "potioncore:long_diamond_skin"}),
    <minecraft:lingering_potion>.withTag({Potion: "potioncore:long_step_up"}),
    <minecraft:lingering_potion>.withTag({Potion: "potioncore:long_drown"}),
    <minecraft:lingering_potion>.withTag({Potion: "potioncore:long_climb"}),
    <minecraft:lingering_potion>.withTag({Potion: "potioncore:long_rust"}),
    <minecraft:lingering_potion>.withTag({Potion: "potioncore:long_vulnerable"}),
    <minecraft:lingering_potion>.withTag({Potion: "potioncore:long_solid_core"}),
    <minecraft:lingering_potion>.withTag({Potion: "potioncore:long_potion_sickness"}),
    <minecraft:lingering_potion>.withTag({Potion: "potioncore:long_weight"}),
    <minecraft:lingering_potion>.withTag({Potion: "potioncore:long_revival"}),
    <minecraft:lingering_potion>.withTag({Potion: "potioncore:long_klutz"}),
    <minecraft:lingering_potion>.withTag({Potion: "potioncore:long_broken_armor"}),
    <minecraft:lingering_potion>.withTag({Potion: "potioncore:long_slow_fall"}),
    <minecraft:lingering_potion>.withTag({Potion: "potioncore:long_archery"})
] as IItemStack[];

for i, item in LongLingeringPotions {
    brewing.addBrew(NormalLingeringPotions[i], <minecraft:redstone>, LongLingeringPotions[i]);
    brewing.addBrew(LongSplashPotions[i], <minecraft:dragon_breath>, LongLingeringPotions[i]);
}
//!SECTION 

/* ---------------------- SECTION Strong Normal Potions --------------------- */
//FIXME 
val StrongNormalPotions = [
    <minecraft:potion>.withTag({Potion: "potioncore:strong_wither"}),
    <minecraft:potion>.withTag({Potion: "potioncore:strong_blindness"}),
    <minecraft:potion>.withTag({Potion: "potioncore:strong_levitation"}),
    <minecraft:potion>.withTag({Potion: "potioncore:strong_haste"}),
    <minecraft:potion>.withTag({Potion: "potioncore:strong_recoil"}),
    <minecraft:potion>.withTag({Potion: "potioncore:strong_iron_skin"}),
    <minecraft:potion>.withTag({Potion: "potioncore:strong_diamond_skin"}),
    <minecraft:potion>.withTag({Potion: "potioncore:strong_teleport"}),
    <minecraft:potion>.withTag({Potion: "potioncore:strong_step_up"}),
    <minecraft:potion>.withTag({Potion: "potioncore:strong_rust"}),
    <minecraft:potion>.withTag({Potion: "potioncore:strong_vulnerable"}),
    <minecraft:potion>.withTag({Potion: "potioncore:strong_explode"}),
    <minecraft:potion>.withTag({Potion: "potioncore:strong_potion_sickness"}),
    <minecraft:potion>.withTag({Potion: "potioncore:strong_weight"}),
    <minecraft:potion>.withTag({Potion: "potioncore:strong_launch"}),
    <minecraft:potion>.withTag({Potion: "potioncore:strong_revival"}),
    <minecraft:potion>.withTag({Potion: "potioncore:strong_klutz"}),
    <minecraft:potion>.withTag({Potion: "potioncore:strong_broken_armor"}),
    <minecraft:potion>.withTag({Potion: "potioncore:strong_slow_fall"}),
    <minecraft:potion>.withTag({Potion: "potioncore:strong_curse"}),
    <minecraft:potion>.withTag({Potion: "potioncore:strong_archery"})
] as IItemStack[];

for i, item in StrongNormalPotions {
    brewing.addBrew(NormalNormalPotions[i], <minecraft:glowstone_dust>, StrongNormalPotions[i]);
}
//!SECTION 

/* ---------------------- SECTION Strong Splash Potions --------------------- */
//FIXME 
val StrongSplashPotions = [
    <minecraft:splash_potion>.withTag({Potion: "potioncore:strong_wither"}),
    <minecraft:splash_potion>.withTag({Potion: "potioncore:strong_blindness"}),
    <minecraft:splash_potion>.withTag({Potion: "potioncore:strong_levitation"}),
    <minecraft:splash_potion>.withTag({Potion: "potioncore:strong_haste"}),
    <minecraft:splash_potion>.withTag({Potion: "potioncore:strong_recoil"}),
    <minecraft:splash_potion>.withTag({Potion: "potioncore:strong_iron_skin"}),
    <minecraft:splash_potion>.withTag({Potion: "potioncore:strong_diamond_skin"}),
    <minecraft:splash_potion>.withTag({Potion: "potioncore:strong_teleport"}),
    <minecraft:splash_potion>.withTag({Potion: "potioncore:strong_step_up"}),
    <minecraft:splash_potion>.withTag({Potion: "potioncore:strong_rust"}),
    <minecraft:splash_potion>.withTag({Potion: "potioncore:strong_vulnerable"}),
    <minecraft:splash_potion>.withTag({Potion: "potioncore:strong_explode"}),
    <minecraft:splash_potion>.withTag({Potion: "potioncore:strong_potion_sickness"}),
    <minecraft:splash_potion>.withTag({Potion: "potioncore:strong_weight"}),
    <minecraft:splash_potion>.withTag({Potion: "potioncore:strong_launch"}),
    <minecraft:splash_potion>.withTag({Potion: "potioncore:strong_revival"}),
    <minecraft:splash_potion>.withTag({Potion: "potioncore:strong_klutz"}),
    <minecraft:splash_potion>.withTag({Potion: "potioncore:strong_broken_armor"}),
    <minecraft:splash_potion>.withTag({Potion: "potioncore:strong_slow_fall"}),
    <minecraft:splash_potion>.withTag({Potion: "potioncore:strong_curse"}),
    <minecraft:splash_potion>.withTag({Potion: "potioncore:strong_archery"})
] as IItemStack[];

for i, item in StrongSplashPotions {
    brewing.addBrew(NormalSplashPotions[i], <minecraft:glowstone_dust>, StrongSplashPotions[i]);
    brewing.addBrew(StrongNormalPotions[i], <minecraft:gunpowder>, StrongSplashPotions[i]);
}
//!SECTION 

/* -------------------- SECTION Strong Lingering Potions -------------------- */
//FIXME 
val StrongLingeringPotions = [
    <minecraft:lingering_potion>.withTag({Potion: "potioncore:strong_wither"}),
    <minecraft:lingering_potion>.withTag({Potion: "potioncore:strong_blindness"}),
    <minecraft:lingering_potion>.withTag({Potion: "potioncore:strong_levitation"}),
    <minecraft:lingering_potion>.withTag({Potion: "potioncore:strong_haste"}),
    <minecraft:lingering_potion>.withTag({Potion: "potioncore:strong_recoil"}),
    <minecraft:lingering_potion>.withTag({Potion: "potioncore:strong_iron_skin"}),
    <minecraft:lingering_potion>.withTag({Potion: "potioncore:strong_diamond_skin"}),
    <minecraft:lingering_potion>.withTag({Potion: "potioncore:strong_teleport"}),
    <minecraft:lingering_potion>.withTag({Potion: "potioncore:strong_step_up"}),
    <minecraft:lingering_potion>.withTag({Potion: "potioncore:strong_rust"}),
    <minecraft:lingering_potion>.withTag({Potion: "potioncore:strong_vulnerable"}),
    <minecraft:lingering_potion>.withTag({Potion: "potioncore:strong_explode"}),
    <minecraft:lingering_potion>.withTag({Potion: "potioncore:strong_potion_sickness"}),
    <minecraft:lingering_potion>.withTag({Potion: "potioncore:strong_weight"}),
    <minecraft:lingering_potion>.withTag({Potion: "potioncore:strong_launch"}),
    <minecraft:lingering_potion>.withTag({Potion: "potioncore:strong_revival"}),
    <minecraft:lingering_potion>.withTag({Potion: "potioncore:strong_klutz"}),
    <minecraft:lingering_potion>.withTag({Potion: "potioncore:strong_broken_armor"}),
    <minecraft:lingering_potion>.withTag({Potion: "potioncore:strong_slow_fall"}),
    <minecraft:lingering_potion>.withTag({Potion: "potioncore:strong_curse"}),
    <minecraft:lingering_potion>.withTag({Potion: "potioncore:strong_archery"})
] as IItemStack[];

for i, item in StrongLingeringPotions {
    brewing.addBrew(StrongNormalPotions[i], <minecraft:glowstone_dust>, StrongLingeringPotions[i]);
    brewing.addBrew(StrongSplashPotions[i], <minecraft:dragon_breath>, StrongLingeringPotions[i]);
}
//!SECTION 

/* ------- SECTION Disabling and Hiding Unwanted ExtraAlchemy Potions ------- */
val unwantedPotions = [
    <minecraft:potion>.withTag({Potion: "extraalchemy:cheat_death_normal"}),
    <minecraft:potion>.withTag({Potion: "extraalchemy:concentration_normal"}),
    <minecraft:splash_potion>.withTag({Potion: "extraalchemy:concentration_normal"}),
    <minecraft:tipped_arrow>.withTag({Potion: "extraalchemy:concentration_normal"}),
    <minecraft:lingering_potion>.withTag({Potion: "extraalchemy:concentration_normal"}),
    <extraalchemy:breakable_potion>.withTag({Potion: "extraalchemy:concentration_normal"}),
    <minecraft:potion>.withTag({Potion: "extraalchemy:combustion_normal"}),
    <minecraft:potion>.withTag({Potion: "extraalchemy:combustion_strong"}),
    <minecraft:potion>.withTag({Potion: "extraalchemy:combustion_long"}),
    <minecraft:potion>.withTag({Potion: "extraalchemy:cheat_death_normal"}),
    <minecraft:splash_potion>.withTag({Potion: "extraalchemy:cheat_death_normal"}),
    <minecraft:tipped_arrow>.withTag({Potion: "extraalchemy:cheat_death_normal"}),
    <minecraft:lingering_potion>.withTag({Potion: "extraalchemy:cheat_death_normal"}),
    <extraalchemy:breakable_potion>.withTag({Potion: "extraalchemy:cheat_death_normal"}),
    <minecraft:splash_potion>.withTag({Potion: "extraalchemy:combustion_normal"}),
    <minecraft:splash_potion>.withTag({Potion: "extraalchemy:combustion_strong"}),
    <minecraft:splash_potion>.withTag({Potion: "extraalchemy:combustion_long"}),
    <minecraft:tipped_arrow>.withTag({Potion: "extraalchemy:combustion_normal"}),
    <minecraft:tipped_arrow>.withTag({Potion: "extraalchemy:combustion_strong"}),
    <minecraft:tipped_arrow>.withTag({Potion: "extraalchemy:combustion_long"}),
    <minecraft:lingering_potion>.withTag({Potion: "extraalchemy:combustion_normal"}),
    <minecraft:lingering_potion>.withTag({Potion: "extraalchemy:combustion_strong"}),
    <minecraft:lingering_potion>.withTag({Potion: "extraalchemy:combustion_long"}),
    <extraalchemy:breakable_potion>.withTag({Potion: "extraalchemy:combustion_normal"}),
    <extraalchemy:breakable_potion>.withTag({Potion: "extraalchemy:combustion_strong"}),
    <extraalchemy:breakable_potion>.withTag({Potion: "extraalchemy:combustion_long"}),
    <minecraft:potion>.withTag({Potion: "extraalchemy:crumbling_normal"}),
    <minecraft:potion>.withTag({Potion: "extraalchemy:crumbling_strong"}),
    <minecraft:potion>.withTag({Potion: "extraalchemy:crumbling_long"}),
    <minecraft:splash_potion>.withTag({Potion: "extraalchemy:crumbling_normal"}),
    <minecraft:splash_potion>.withTag({Potion: "extraalchemy:crumbling_strong"}),
    <minecraft:splash_potion>.withTag({Potion: "extraalchemy:crumbling_long"}),
    <minecraft:tipped_arrow>.withTag({Potion: "extraalchemy:crumbling_normal"}),
    <minecraft:tipped_arrow>.withTag({Potion: "extraalchemy:crumbling_strong"}),
    <minecraft:tipped_arrow>.withTag({Potion: "extraalchemy:crumbling_long"}),
    <minecraft:lingering_potion>.withTag({Potion: "extraalchemy:crumbling_normal"}),
    <minecraft:lingering_potion>.withTag({Potion: "extraalchemy:crumbling_strong"}),
    <minecraft:lingering_potion>.withTag({Potion: "extraalchemy:crumbling_long"}),
    <extraalchemy:breakable_potion>.withTag({Potion: "extraalchemy:crumbling_normal"}),
    <extraalchemy:breakable_potion>.withTag({Potion: "extraalchemy:crumbling_strong"}),
    <extraalchemy:breakable_potion>.withTag({Potion: "extraalchemy:crumbling_long"}),
    <extraalchemy:potion_ring>.withTag({Potion: "extraalchemy:crumbling_normal"}),
    <extraalchemy:potion_ring>.withTag({Potion: "extraalchemy:crumbling_strong"}),
    <minecraft:potion>.withTag({Potion: "extraalchemy:dislocation_normal"}),
    <minecraft:potion>.withTag({Potion: "extraalchemy:dislocation_strong"}),
    <minecraft:potion>.withTag({Potion: "extraalchemy:dislocation_long"}),
    <minecraft:splash_potion>.withTag({Potion: "extraalchemy:dislocation_normal"}),
    <minecraft:splash_potion>.withTag({Potion: "extraalchemy:dislocation_strong"}),
    <minecraft:splash_potion>.withTag({Potion: "extraalchemy:dislocation_long"}),
    <minecraft:tipped_arrow>.withTag({Potion: "extraalchemy:dislocation_normal"}),
    <minecraft:tipped_arrow>.withTag({Potion: "extraalchemy:dislocation_strong"}),
    <minecraft:tipped_arrow>.withTag({Potion: "extraalchemy:dislocation_long"}),
    <minecraft:lingering_potion>.withTag({Potion: "extraalchemy:dislocation_normal"}),
    <minecraft:lingering_potion>.withTag({Potion: "extraalchemy:dislocation_strong"}),
    <minecraft:lingering_potion>.withTag({Potion: "extraalchemy:dislocation_long"}),
    <extraalchemy:breakable_potion>.withTag({Potion: "extraalchemy:dislocation_normal"}),
    <extraalchemy:breakable_potion>.withTag({Potion: "extraalchemy:dislocation_strong"}),
    <extraalchemy:breakable_potion>.withTag({Potion: "extraalchemy:dislocation_long"}),
    <extraalchemy:potion_ring>.withTag({Potion: "extraalchemy:dislocation_normal"}),
    <extraalchemy:potion_ring>.withTag({Potion: "extraalchemy:dislocation_strong"}),
    <minecraft:potion>.withTag({Potion: "extraalchemy:recall_normal"}),
    <minecraft:potion>.withTag({Potion: "extraalchemy:recall_strong"}),
    <minecraft:potion>.withTag({Potion: "extraalchemy:recall_long"}),
    <minecraft:splash_potion>.withTag({Potion: "extraalchemy:recall_normal"}),
    <minecraft:splash_potion>.withTag({Potion: "extraalchemy:recall_strong"}),
    <minecraft:splash_potion>.withTag({Potion: "extraalchemy:recall_long"}),
    <minecraft:tipped_arrow>.withTag({Potion: "extraalchemy:recall_normal"}),
    <minecraft:tipped_arrow>.withTag({Potion: "extraalchemy:recall_strong"}),
    <minecraft:tipped_arrow>.withTag({Potion: "extraalchemy:recall_long"}),
    <minecraft:lingering_potion>.withTag({Potion: "extraalchemy:recall_strong"}),
    <minecraft:lingering_potion>.withTag({Potion: "extraalchemy:recall_normal"}),
    <minecraft:lingering_potion>.withTag({Potion: "extraalchemy:recall_long"}),
    <extraalchemy:breakable_potion>.withTag({Potion: "extraalchemy:recall_normal"}),
    <extraalchemy:breakable_potion>.withTag({Potion: "extraalchemy:recall_strong"}),
    <extraalchemy:breakable_potion>.withTag({Potion: "extraalchemy:recall_long"}),
    <minecraft:potion>.withTag({Potion: "extraalchemy:return_normal"}),
    <minecraft:splash_potion>.withTag({Potion: "extraalchemy:return_normal"}),
    <minecraft:tipped_arrow>.withTag({Potion: "extraalchemy:return_normal"}),
    <minecraft:lingering_potion>.withTag({Potion: "extraalchemy:return_normal"}),
    <extraalchemy:breakable_potion>.withTag({Potion: "extraalchemy:return_normal"})
] as IItemStack[];

for potion in unwantedPotions {
    mods.jei.JEI.removeAndHide(potion);
}
//!SECTION 
//!SECTION 