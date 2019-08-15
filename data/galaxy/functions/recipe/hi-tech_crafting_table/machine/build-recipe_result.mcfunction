# steel ingot
execute if score @s reqRcpHTct matches 1 run replaceitem block ~ ~ ~ container.10 minecraft:armor_stand{display:{Name:"{\"translate\":\"block.galaxy.hi_tech_crafting_table\",\"italic\":false,\"color\":\"blue\"}"},CustomModelData:10100,guiItem:1,HTct:1}
execute if score @s reqRcpHTct matches 2 run replaceitem block ~ ~ ~ container.10 minecraft:armor_stand{display:{Name:"{\"translate\":\"block.galaxy.coke_furnace\",\"italic\":false}"},CustomModelData:10200,guiItem:1,cokeFurnace:1}
execute if score @s reqRcpHTct matches 3 run replaceitem block ~ ~ ~ container.10 minecraft:armor_stand{display:{Name:"{\"translate\":\"block.galaxy.advanced_blast_furnace\",\"italic\":false}"},CustomModelData:10300,guiItem:1,advancedBlastFurnace:1}
