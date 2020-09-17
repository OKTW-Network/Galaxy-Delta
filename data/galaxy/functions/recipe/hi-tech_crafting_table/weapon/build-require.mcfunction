# katana
execute if score @s reqRcpHTct matches 1 if score @s htctRequPage matches 1 run scoreboard players set @s htctRequPageMax 1
execute if score @s reqRcpHTct matches 1 if score @s htctRequPage matches 1 run scoreboard players set @s htctRequSlotMax 4
execute if score @s reqRcpHTct matches 1 if score @s htctRequPage matches 1 run replaceitem block ~ ~ ~ container.1 minecraft:stick{guiItem:1} 2
execute if score @s reqRcpHTct matches 1 if score @s htctRequPage matches 1 run replaceitem block ~ ~ ~ container.2 minecraft:command_block{display:{Name:'{"translate":"item.galaxy.steel_ingot","italic":false,"color":"white"}'},HideFlags:63,CustomModelData:1010,ingotSteel:1,guiItem:1} 3
execute if score @s reqRcpHTct matches 1 if score @s htctRequPage matches 1 run replaceitem block ~ ~ ~ container.3 minecraft:gold_nugget{guiItem:1} 2
execute if score @s reqRcpHTct matches 1 if score @s htctRequPage matches 1 run replaceitem block ~ ~ ~ container.4 minecraft:stripped_dark_oak_log{guiItem:1} 2
