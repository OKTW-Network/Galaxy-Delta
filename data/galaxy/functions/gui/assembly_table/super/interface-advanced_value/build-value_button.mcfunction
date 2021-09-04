scoreboard players operation #1 calcu_temp = @s sbldValue
execute if entity @s[tag=!update] run function galaxy:gui/assembly_table/super/interface-advanced_value/calculate-value
execute if score @s sbldValue matches 10000000.. run scoreboard players set @s sbldValue 9999999
execute if score @s sbldValue >= @s sbldValueMax store result score @s sbldValue run scoreboard players get @s sbldValueMax
execute if score @s sbldValue matches ..-10000000 run scoreboard players set @s sbldValue -9999999
execute if score @s sbldValue <= @s sbldValueMin store result score @s sbldValue run scoreboard players get @s sbldValueMin
execute unless score @s sbldValue = #1 calcu_temp run tag @s add setValue
execute unless score @s sbldValue = #1 calcu_temp run function galaxy:gui/assembly_table/super/store-option

item replace block ~ ~ ~ container.2 with minecraft:golden_hoe{display:{Name:'{"text":"+1000000","italic":false,"color":"green"}'},HideFlags:63,CustomModelData:10127,guiItem:1}
item replace block ~ ~ ~ container.3 with minecraft:golden_hoe{display:{Name:'{"text":"+100000","italic":false,"color":"green"}'},HideFlags:63,CustomModelData:10127,guiItem:1}
item replace block ~ ~ ~ container.4 with minecraft:golden_hoe{display:{Name:'{"text":"+10000","italic":false,"color":"green"}'},HideFlags:63,CustomModelData:10127,guiItem:1}
item replace block ~ ~ ~ container.5 with minecraft:golden_hoe{display:{Name:'{"text":"+1000","italic":false,"color":"green"}'},HideFlags:63,CustomModelData:10127,guiItem:1}
item replace block ~ ~ ~ container.6 with minecraft:golden_hoe{display:{Name:'{"text":"+100","italic":false,"color":"green"}'},HideFlags:63,CustomModelData:10127,guiItem:1}
item replace block ~ ~ ~ container.7 with minecraft:golden_hoe{display:{Name:'{"text":"+10","italic":false,"color":"green"}'},HideFlags:63,CustomModelData:10127,guiItem:1}
item replace block ~ ~ ~ container.8 with minecraft:golden_hoe{display:{Name:'{"text":"+1","italic":false,"color":"green"}'},HideFlags:63,CustomModelData:10127,guiItem:1}
item replace block ~ ~ ~ container.20 with minecraft:golden_hoe{display:{Name:'{"text":"-1000000","italic":false,"color":"red"}'},HideFlags:63,CustomModelData:10128,guiItem:1}
item replace block ~ ~ ~ container.21 with minecraft:golden_hoe{display:{Name:'{"text":"-100000","italic":false,"color":"red"}'},HideFlags:63,CustomModelData:10128,guiItem:1}
item replace block ~ ~ ~ container.22 with minecraft:golden_hoe{display:{Name:'{"text":"-10000","italic":false,"color":"red"}'},HideFlags:63,CustomModelData:10128,guiItem:1}
item replace block ~ ~ ~ container.23 with minecraft:golden_hoe{display:{Name:'{"text":"-1000","italic":false,"color":"red"}'},HideFlags:63,CustomModelData:10128,guiItem:1}
item replace block ~ ~ ~ container.24 with minecraft:golden_hoe{display:{Name:'{"text":"-100","italic":false,"color":"red"}'},HideFlags:63,CustomModelData:10128,guiItem:1}
item replace block ~ ~ ~ container.25 with minecraft:golden_hoe{display:{Name:'{"text":"-10","italic":false,"color":"red"}'},HideFlags:63,CustomModelData:10128,guiItem:1}
item replace block ~ ~ ~ container.26 with minecraft:golden_hoe{display:{Name:'{"text":"-1","italic":false,"color":"red"}'},HideFlags:63,CustomModelData:10128,guiItem:1}
