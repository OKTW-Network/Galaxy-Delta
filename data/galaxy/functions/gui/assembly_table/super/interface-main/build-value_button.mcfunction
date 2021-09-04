scoreboard players operation #1 calcu_temp = @s sbldValue
execute if entity @s[tag=!update] run function galaxy:gui/assembly_table/super/interface-main/calculate-value
execute if score @s sbldValue matches 1000.. run scoreboard players set @s sbldValue 999
execute if score @s sbldValue >= @s sbldValueMax store result score @s sbldValue run scoreboard players get @s sbldValueMax
execute if score @s sbldValue <= @s sbldValueMin store result score @s sbldValue run scoreboard players get @s sbldValueMin
execute if score @s sbldValue matches ..-1 run scoreboard players set @s sbldValue 0
execute unless score @s sbldValue = #1 calcu_temp run tag @s add setValue
execute unless score @s sbldValue = #1 calcu_temp run tag @s add setResult
execute unless score @s sbldValue = #1 calcu_temp run function galaxy:gui/assembly_table/super/store-option

item replace block ~ ~ ~ container.3 with minecraft:golden_hoe{display:{Name:'{"text":"+100","italic":false,"color":"green"}'},HideFlags:63,CustomModelData:10127,guiItem:1}
item replace block ~ ~ ~ container.4 with minecraft:golden_hoe{display:{Name:'{"text":"+10","italic":false,"color":"green"}'},HideFlags:63,CustomModelData:10127,guiItem:1}
item replace block ~ ~ ~ container.5 with minecraft:golden_hoe{display:{Name:'{"text":"+1","italic":false,"color":"green"}'},HideFlags:63,CustomModelData:10127,guiItem:1}
item replace block ~ ~ ~ container.21 with minecraft:golden_hoe{display:{Name:'{"text":"-100","italic":false,"color":"red"}'},HideFlags:63,CustomModelData:10128,guiItem:1}
item replace block ~ ~ ~ container.22 with minecraft:golden_hoe{display:{Name:'{"text":"-10","italic":false,"color":"red"}'},HideFlags:63,CustomModelData:10128,guiItem:1}
item replace block ~ ~ ~ container.23 with minecraft:golden_hoe{display:{Name:'{"text":"-1","italic":false,"color":"red"}'},HideFlags:63,CustomModelData:10128,guiItem:1}
