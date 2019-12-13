import crafttweaker.item.IItemStack;
import crafttweaker.events.IEventManager;
import crafttweaker.event.IPlayerEvent;
import crafttweaker.player.IPlayer;

//Executes Command on Right Click w/ Thermometer
//Major help on this script from nooby and UVMidnight, thank you!
events.onPlayerInteract(function(event as crafttweaker.event.PlayerInteractEvent){
    if (<toughasnails:thermometer>.matches(event.player.currentItem))
 {
    event.player.executeCommand("tan tempinfo");
    }
});