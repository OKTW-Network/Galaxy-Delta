# HTct
execute if score @s reqRcpHTct matches 1 run replaceitem block ~ ~ ~ container.16 minecraft:wooden_sword{display:{Name:'{"translate":"block.galaxy.hi_tech_crafting_table","italic":false,"color":"blue"}'},HideFlags:63,CustomModelData:10100,guiItem:1,htctRequester:1}

# coke furnace
execute if score @s reqRcpHTct matches 2 run replaceitem block ~ ~ ~ container.16 minecraft:wooden_sword{display:{Name:'{"translate":"block.galaxy.coke_furnace","italic":false}'},HideFlags:63,CustomModelData:10200,guiItem:1,htctRequester:1}

# advanced blast furnace
execute if score @s reqRcpHTct matches 3 run replaceitem block ~ ~ ~ container.16 minecraft:wooden_sword{display:{Name:'{"translate":"block.galaxy.advanced_blast_furnace","italic":false}'},HideFlags:63,CustomModelData:10300,guiItem:1,htctRequester:1}
