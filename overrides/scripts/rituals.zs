
//Mods required for this script:
//Arcane World
//Embers
//Pyrotech
//Better With Mods


//Remove the "activate scroll" recipe and original ritual recipes, and instead make the rituals require the scroll? Then have the scroll be dungeon loot, quest rewards, mob drops.
//Testing:
//Remove these rituals
mods.ArcaneWorld.remove("arcaneworld:summon_wolf");
mods.ArcaneWorld.remove("arcaneworld:ritual_scroll");
//Add in one for summoning wolf
val wolfscroll = <arcaneworld:ritual_scroll>.withTag({ritual: "crafttweaker:summon_wolf"});
mods.ArcaneWorld.createRitualSummon("summon_wolf", "Conjure Wolf", "minecraft:wolf", wolfscroll, <minecraft:diamond>);
//Result: Works! REVIEW Arcane Rituals Recipes
//Further results: Won't work after all because it uses any scroll, ignores NBT data. Possible alternative might be to make an item via contenttweaker to serve as an intermediary? i'm too tired to think straight. FIXME

//Input guide:
//mods.ArcaneWorld.createRitualSummon(String name, String displayName, String entity, IIngredient... inputs)

//Adds ritual to summon Embers golem
val golemscroll = <arcaneworld:ritual_scroll>.withTag({ritual: "crafttweaker:summon_golem"});

mods.ArcaneWorld.createRitualSummon("summon_golem", "Conjure Ancient Golem", "embers:ancient_golem", <minecraft:stonebrick>, golemscroll, <betterwithmods:material:34>, <pyrotech:gold_hammer>, <minecraft:stonebrick>);

//Notes for the future:
//Summon blighted chicken: /summon minecraft:chicken ~ ~1 ~ {Health:50,Attributes:[{Name:"generic.maxHealth",Base:50}],Tags:["{ScalingHealth.IsBlight:1b}"]}

