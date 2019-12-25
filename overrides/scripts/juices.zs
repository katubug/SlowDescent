import crafttweaker.event.EntityLivingUseItemEvent.Finish;
import crafttweaker.item.IItemStack;

/* -------------------------------------------------------------------------- */
/*                          ANCHOR Drinks and Sodium                          */
/* -------------------------------------------------------------------------- */

//NOTE Mods required for this script:
//Tough As Nails
//Nutrition (soft requirement)

var drinks = [
    <toughasnails:fruit_juice>,
    <toughasnails:fruit_juice:1>,
    <toughasnails:fruit_juice:3>,
    <toughasnails:fruit_juice:5>,
    <toughasnails:fruit_juice:6>,
    <toughasnails:fruit_juice:7>,
    <toughasnails:fruit_juice:8>,
    <toughasnails:fruit_juice:9>
] as IItemStack[];

for drink in drinks {
    <ore:drinksPotassium>.add(drink);
    drink.addTooltip(format.gold("This drink is high in potassium, and can reduce sodium levels."));
}

//Executes Command on Drinking Juice
events.onEntityLivingUseItemFinish(function(event as crafttweaker.event.EntityLivingUseItemEvent.Finish){
    if (<ore:drinksPotassium>.matches(event.item))
 {
    event.player.executeCommand("nutrition subtract @p sodium 3");
    }
});