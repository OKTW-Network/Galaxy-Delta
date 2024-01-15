scoreboard players set #1 temp 0
execute if data entity @s data.galaxy.hi_tech_crafting_table.interfaceStack[0] store result score #1 temp run data get entity @s data.galaxy.hi_tech_crafting_table.interfaceStack
item replace block ~ ~ ~ container.18 with minecraft:diamond_hoe{display:{Name:'{"translate":"gui.to_home","italic":false,"color":"dark_gray"}'},HideFlags:127,CustomModelData:1310011,CustomData:{galaxy:{Type:"gui",id:"hi_tech_crafting_table.home_button"}}}
execute if score #1 temp matches 1.. run data modify block ~ ~ ~ Items[{tag:{CustomData:{galaxy:{id:"hi_tech_crafting_table.home_button"}}}}].tag merge value {display:{Name:'{"translate":"gui.to_home","italic":false}'},CustomModelData:1300065}
