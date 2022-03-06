scoreboard players operation #1 calcu_temp = @s galaxy.GUI.HTct.category
execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:0b}]} run scoreboard players remove @s galaxy.GUI.HTct.category 1
execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:1b}]} run scoreboard players remove @s galaxy.GUI.HTct.category 1
execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:18b}]} run scoreboard players add @s galaxy.GUI.HTct.category 1
execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:19b}]} run scoreboard players add @s galaxy.GUI.HTct.category 1
execute if score @s galaxy.GUI.HTct.category > #global galaxy.GUI.HTct.categoryMax run scoreboard players set @s galaxy.GUI.HTct.category 1
execute if score @s galaxy.GUI.HTct.category matches ..0 store result score @s galaxy.GUI.HTct.category run scoreboard players get #global galaxy.GUI.HTct.categoryMax
execute unless score @s galaxy.GUI.HTct.category = #1 calcu_temp run tag @s add getCategory

execute if entity @s[tag=getCategory] run function galaxy:gui/hi-tech_crafting_table/interface-main/get-category
execute if entity @s[tag=getCategory] run tag @s add setCategory
execute if entity @s[tag=getCategory] run tag @s add setRecipeButton
execute if entity @s[tag=getCategory] run tag @s add getRecipePage
execute if entity @s[tag=getCategory] run tag @s add setRecipePage
tag @s[tag=getCategory] remove getCategory

item replace block ~ ~ ~ container.0 with minecraft:gray_stained_glass_pane{display:{Name:'{"translate":"gui.previous","italic":false}'},CustomModelData:10200,CustomData:{galaxy:{id:"gui_item"}}}
item replace block ~ ~ ~ container.18 with minecraft:gray_stained_glass_pane{display:{Name:'{"translate":"gui.next","italic":false}'},CustomModelData:10201,CustomData:{galaxy:{id:"gui_item"}}}
