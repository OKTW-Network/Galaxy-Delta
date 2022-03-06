scoreboard players operation #1 calcu_temp = @s galaxy.GUI.attribute.value
execute if entity @s[tag=!update] run function galaxy:gui/assembly_table/super/interface-main/calculate-value
execute if score @s galaxy.GUI.attribute.value matches 1000.. run scoreboard players set @s galaxy.GUI.attribute.value 999
execute if score @s galaxy.GUI.attribute.value >= @s galaxy.GUI.attribute.valueMax store result score @s galaxy.GUI.attribute.value run scoreboard players get @s galaxy.GUI.attribute.valueMax
execute if score @s galaxy.GUI.attribute.value <= @s galaxy.GUI.attribute.valueMin store result score @s galaxy.GUI.attribute.value run scoreboard players get @s galaxy.GUI.attribute.valueMin
execute if score @s galaxy.GUI.attribute.value matches ..-1 run scoreboard players set @s galaxy.GUI.attribute.value 0
execute unless score @s galaxy.GUI.attribute.value = #1 calcu_temp run tag @s add setValue
execute unless score @s galaxy.GUI.attribute.value = #1 calcu_temp run tag @s add setResult
execute unless score @s galaxy.GUI.attribute.value = #1 calcu_temp run function galaxy:gui/assembly_table/super/store-option

item replace block ~ ~ ~ container.3 with minecraft:golden_hoe{display:{Name:'{"text":"+100","italic":false,"color":"green"}'},HideFlags:63,CustomModelData:10127,CustomData:{galaxy:{id:"gui_item"}}}
item replace block ~ ~ ~ container.4 with minecraft:golden_hoe{display:{Name:'{"text":"+10","italic":false,"color":"green"}'},HideFlags:63,CustomModelData:10127,CustomData:{galaxy:{id:"gui_item"}}}
item replace block ~ ~ ~ container.5 with minecraft:golden_hoe{display:{Name:'{"text":"+1","italic":false,"color":"green"}'},HideFlags:63,CustomModelData:10127,CustomData:{galaxy:{id:"gui_item"}}}
item replace block ~ ~ ~ container.21 with minecraft:golden_hoe{display:{Name:'{"text":"-100","italic":false,"color":"red"}'},HideFlags:63,CustomModelData:10128,CustomData:{galaxy:{id:"gui_item"}}}
item replace block ~ ~ ~ container.22 with minecraft:golden_hoe{display:{Name:'{"text":"-10","italic":false,"color":"red"}'},HideFlags:63,CustomModelData:10128,CustomData:{galaxy:{id:"gui_item"}}}
item replace block ~ ~ ~ container.23 with minecraft:golden_hoe{display:{Name:'{"text":"-1","italic":false,"color":"red"}'},HideFlags:63,CustomModelData:10128,CustomData:{galaxy:{id:"gui_item"}}}
