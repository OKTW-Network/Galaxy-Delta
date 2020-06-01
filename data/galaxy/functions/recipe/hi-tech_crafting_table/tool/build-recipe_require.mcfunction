# wrench
execute if score @s reqRcpHTct matches 1 if score @s htctRequPage matches 1 run scoreboard players set @s htctRequPageMax 1
execute if score @s reqRcpHTct matches 1 if score @s htctRequPage matches 1 run scoreboard players set @s htctRequSlotMax 2
execute if score @s reqRcpHTct matches 1 if score @s htctRequPage matches 1 run replaceitem block ~ ~ ~ container.1 minecraft:command_block{display:{Name:'{"translate":"item.galaxy.steel_ingot","italic":false,"color":"white"}'},HideFlags:63,CustomModelData:1010,ingotSteel:1,guiItem:1} 1
execute if score @s reqRcpHTct matches 1 if score @s htctRequPage matches 1 run replaceitem block ~ ~ ~ container.2 minecraft:iron_ingot{guiItem:1} 3

# structure empower
execute if score @s reqRcpHTct matches 2 if score @s htctRequPage matches 1 run scoreboard players set @s htctRequPageMax 1
execute if score @s reqRcpHTct matches 2 if score @s htctRequPage matches 1 run scoreboard players set @s htctRequSlotMax 3
execute if score @s reqRcpHTct matches 2 if score @s htctRequPage matches 1 run replaceitem block ~ ~ ~ container.1 minecraft:blaze_rod{guiItem:1} 4
execute if score @s reqRcpHTct matches 2 if score @s htctRequPage matches 1 run replaceitem block ~ ~ ~ container.2 minecraft:gold_ingot{guiItem:1} 2
execute if score @s reqRcpHTct matches 2 if score @s htctRequPage matches 1 run replaceitem block ~ ~ ~ container.3 minecraft:glass_pane{guiItem:1} 1
