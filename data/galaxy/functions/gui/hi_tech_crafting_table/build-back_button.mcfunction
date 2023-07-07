scoreboard players set #1 temp 0
execute if data entity @s data.galaxy.hi_tech_crafting_table.interfaceStack[0] store result score #1 temp run data get entity @s data.galaxy.hi_tech_crafting_table.interfaceStack
item replace block ~ ~ ~ container.0 with minecraft:gray_stained_glass_pane{display:{Name:'{"translate":"gui.back","italic":false,"color":"dark_gray"}'},CustomModelData:102008,CustomData:{galaxy:{Type:"gui",id:"hi_tech_crafting_table.back_button"}}}
execute if score #1 temp matches 1.. run data modify block ~ ~ ~ Items[{tag:{CustomData:{galaxy:{id:"hi_tech_crafting_table.back_button"}}}}].tag merge value {display:{Name:'{"translate":"gui.back","italic":false}'},CustomModelData:101008}
