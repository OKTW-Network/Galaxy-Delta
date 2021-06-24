scoreboard players operation #1 calcu_temp = @s sbldValue
execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:3b}]} run scoreboard players add @s sbldValue 100
execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:4b}]} run scoreboard players add @s sbldValue 10
execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:5b}]} run scoreboard players add @s sbldValue 1
execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:21b}]} run scoreboard players remove @s sbldValue 100
execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:22b}]} run scoreboard players remove @s sbldValue 10
execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:23b}]} run scoreboard players remove @s sbldValue 1
execute if score @s sbldValue matches 1000.. run scoreboard players set @s sbldValue 999
execute if score @s sbldValue >= @s sbldValueMax store result score @s sbldValue run scoreboard players get @s sbldValueMax
execute if score @s sbldValue <= @s sbldValueMin store result score @s sbldValue run scoreboard players get @s sbldValueMin
execute if score @s sbldValue matches ..-1 run scoreboard players set @s sbldValue 0
execute unless score @s sbldValue = #1 calcu_temp run tag @s add setValue
execute unless score @s sbldValue = #1 calcu_temp run tag @s add setResult

item replace block ~ ~ ~ container.3 with minecraft:gray_stained_glass_pane{display:{Name:'{"text":"+100","italic":false,"color":"green"}'},CustomModelData:10200,guiItem:1}
item replace block ~ ~ ~ container.4 with minecraft:gray_stained_glass_pane{display:{Name:'{"text":"+10","italic":false,"color":"green"}'},CustomModelData:10200,guiItem:1}
item replace block ~ ~ ~ container.5 with minecraft:gray_stained_glass_pane{display:{Name:'{"text":"+1","italic":false,"color":"green"}'},CustomModelData:10200,guiItem:1}
item replace block ~ ~ ~ container.21 with minecraft:gray_stained_glass_pane{display:{Name:'{"text":"-100","italic":false,"color":"red"}'},CustomModelData:10201,guiItem:1}
item replace block ~ ~ ~ container.22 with minecraft:gray_stained_glass_pane{display:{Name:'{"text":"-10","italic":false,"color":"red"}'},CustomModelData:10201,guiItem:1}
item replace block ~ ~ ~ container.23 with minecraft:gray_stained_glass_pane{display:{Name:'{"text":"-1","italic":false,"color":"red"}'},CustomModelData:10201,guiItem:1}
