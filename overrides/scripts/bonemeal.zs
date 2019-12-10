import crafttweaker.item.IItemStack;
import crafttweaker.events.IEventManager;
import crafttweaker.event.PlayerBonemealEvent;
import crafttweaker.event.IEventCancelable;

//Prevents vanilla bonemeal from being effective.
events.onPlayerBonemeal(function(event as crafttweaker.event.PlayerBonemealEvent){
    if (<minecraft:dye:15>.matches(event.item)) {
    event.cancel();
    //The additional "if" is required to allow sendChat to not submit twice
    if(event.world.remote){
        event.player.sendChat("That doesn't seem to work. Perhaps Compost would work better.");
    }
    }
});