scoreboard players operation #1 calcu_temp = @s galaxy.GUI.hi-tech_crafting_table.category
execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:0b}]} run scoreboard players remove @s galaxy.GUI.hi-tech_crafting_table.category 1
execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:1b}]} run scoreboard players remove @s galaxy.GUI.hi-tech_crafting_table.category 1
execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:18b}]} run scoreboard players add @s galaxy.GUI.hi-tech_crafting_table.category 1
execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:19b}]} run scoreboard players add @s galaxy.GUI.hi-tech_crafting_table.category 1
execute if score #recipe.hi-tech_crafting_table.categoryMax galaxy matches 2.. if score @s galaxy.GUI.hi-tech_crafting_table.category > #recipe.hi-tech_crafting_table.categoryMax galaxy run scoreboard players set @s galaxy.GUI.hi-tech_crafting_table.category 1
execute if score #recipe.hi-tech_crafting_table.categoryMax galaxy matches 2.. if score @s galaxy.GUI.hi-tech_crafting_table.category matches ..0 run scoreboard players operation @s galaxy.GUI.hi-tech_crafting_table.category = #recipe.hi-tech_crafting_table.categoryMax galaxy
execute unless score @s galaxy.GUI.hi-tech_crafting_table.category = #1 calcu_temp run tag @s add galaxy._task.gui.updateThings
execute unless score #recipe.hi-tech_crafting_table.categoryMax galaxy matches 2.. run scoreboard players operation @s galaxy.GUI.hi-tech_crafting_table.category = #recipe.hi-tech_crafting_table.categoryMax galaxy
execute if entity @s[tag=galaxy._task.gui.updateThings] run tag @s add getCategory
execute if entity @s[tag=galaxy._task.gui.updateThings] run tag @s add setCategory
execute if entity @s[tag=galaxy._task.gui.updateThings] run tag @s add setRecipeButton
execute if entity @s[tag=galaxy._task.gui.updateThings] run tag @s add getRecipePage
execute if entity @s[tag=galaxy._task.gui.updateThings] run tag @s add setRecipePage
tag @s[tag=galaxy._task.gui.updateThings] remove galaxy._task.gui.updateThings

item replace block ~ ~ ~ container.0 with minecraft:gray_stained_glass_pane{display:{Name:'{"translate":"gui.previous","italic":false}'},CustomModelData:101000,CustomData:{galaxy:{Type:"gui"}}}
item replace block ~ ~ ~ container.18 with minecraft:gray_stained_glass_pane{display:{Name:'{"translate":"gui.next","italic":false}'},CustomModelData:101001,CustomData:{galaxy:{Type:"gui"}}}
