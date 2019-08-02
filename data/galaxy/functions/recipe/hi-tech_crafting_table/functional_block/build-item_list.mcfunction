scoreboard players set @s htctListPageMax 1

execute if score @s htctListPage matches 1 run replaceitem block ~ ~ ~ container.3 minecraft:armor_stand{display:{Name:"{\"translate\":\"block.galaxy.katana_showcase\",\"italic\":false}"},CustomModelData:20200,guiItem:1}
execute if score @s htctListPage matches 1 run replaceitem block ~ ~ ~ container.4 minecraft:armor_stand{display:{Name:"{\"translate\":\"block.galaxy.katana_showcase\",\"italic\":false}"},CustomModelData:20201,guiItem:1}
