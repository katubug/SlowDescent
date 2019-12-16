//Mods required for this script:
//Vaultopic
//Refined Relocation

//Makes the Vault Searcher a little cheaper, since BWM changes the recipe for the Observer.
recipes.remove(<vaultopic:vault_searcher>);
recipes.addShaped(<vaultopic:vault_searcher>, [[<minecraft:redstone>, <ore:ingotBrick>, null],[<minecraft:brick>, <minecraft:redstone_torch>, null]]);

//Removes Refined Relocation's Block Extender and Upgrades
mods.jei.JEI.removeAndHide(<refinedrelocation:block_extender>);
mods.jei.JEI.removeAndHide(<refinedrelocation:stack_limiter>);
mods.jei.JEI.removeAndHide(<refinedrelocation:input_filter>);
mods.jei.JEI.removeAndHide(<refinedrelocation:output_filter>);
mods.jei.JEI.removeAndHide(<refinedrelocation:slot_lock>);

//Changes Sorting Interface to use Vault Searchers instead of Extender Upgrades
recipes.remove(<refinedrelocation:block_extender>);
recipes.addShaped(<refinedrelocation:block_extender>, [[<ore:ingotIron>, <ore:paneGlass>, <ore:ingotIron>],[<vaultopic:vault_searcher>, <refinedrelocation:sorting_connector>, <vaultopic:vault_searcher>], [<ore:ingotIron>, <ore:paneGlass>, <ore:ingotIron>]]);