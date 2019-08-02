scoreboard players set @s htctListPageMax 1

execute if score @s htctListPage matches 1 run replaceitem block ~ ~ ~ container.3 minecraft:command_block{display:{Name:"{\"translate\":\"item.galaxy.steel_ingot\",\"italic\":false}"},CustomModelData:1010,guiItem:1}
