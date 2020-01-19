import crafttweaker.item.IItemStack;
import crafttweaker.events.IEventManager;
import crafttweaker.player.IPlayer;
import crafttweaker.event.PlayerInteractEvent;

//Provides an incentive to use the Cursed Heart and discourages use of the Enchanted Heart

events.onPlayerInteract(function(event as crafttweaker.event.PlayerInteractEvent){
    if (<scalinghealth:difficultychanger>.matches(event.player.currentItem)) {
        event.player.executeCommand("/summon minecraft:zombie_villager ~ ~1 ~ {CanPickUpLoot:1b,Health:56,Attributes:[{Name:\"generic.movementSpeed\",Base:0.2f}],HandItems:[{id:\"minecraft:stone_sword\",Count:1},{}],ArmorItems:[{},{},{},{id:\"minecraft:pumpkin\",Count:1}],ActiveEffects:[{Id:110,Amplifier:1,Duration:10000}]}");
    }
});

events.onPlayerInteract(function(event as crafttweaker.event.PlayerInteractEvent){
    if (<scalinghealth:difficultychanger:1>.matches(event.player.currentItem)) {
        if(!event.world.remote){
            //Additional "if" prevents it from sending more than once
        event.player.give(<minecraft:diamond>);
        if(event.world.remote){
            //REVIEW Hopefully this means that players on servers also get it? I'll need to test eventually.
        event.player.give(<minecraft:diamond>);
            }
        }
    }
});
