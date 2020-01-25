import crafttweaker.item.IItemStack;
import crafttweaker.events.IEventManager;

/* -------------------------------------------------------------------------- */
/*                        Makes Thermometer more useful                       */
/* -------------------------------------------------------------------------- */

//NOTE Mods required for this script:
//Tough as Nails

//Executes Command on Right Click w/ Thermometer
//Major help on this script from nooby and UVMidnight, thank you!
events.onPlayerInteract(function(event as crafttweaker.event.PlayerInteractEvent){
    if (<toughasnails:thermometer>.matches(event.player.currentItem))
 {
    event.player.executeCommand("tan tempinfo");
    }
});

<toughasnails:thermometer>.addTooltip(format.gold("Right click to view details about your temperature."));