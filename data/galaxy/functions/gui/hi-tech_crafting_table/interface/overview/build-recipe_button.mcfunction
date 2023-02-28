scoreboard players operation #1 calcu_temp = @s galaxy.GUI.hi-tech_crafting_table.recipeSubjectPage
execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:8b}]} run scoreboard players remove @s galaxy.GUI.hi-tech_crafting_table.recipeSubjectPage 1
execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:26b}]} run scoreboard players add @s galaxy.GUI.hi-tech_crafting_table.recipeSubjectPage 1
execute if score @s galaxy.GUI.hi-tech_crafting_table.recipeSubjectPage > @s galaxy.GUI.hi-tech_crafting_table.recipeSubjectPageMax run scoreboard players set @s galaxy.GUI.hi-tech_crafting_table.recipeSubjectPage 1
execute if score @s galaxy.GUI.hi-tech_crafting_table.recipeSubjectPage matches ..0 store result score @s galaxy.GUI.hi-tech_crafting_table.recipeSubjectPage run scoreboard players get @s galaxy.GUI.hi-tech_crafting_table.recipeSubjectPageMax
execute unless score @s galaxy.GUI.hi-tech_crafting_table.recipeSubjectPage = #1 calcu_temp run tag @s add getRecipePage
execute unless score @s galaxy.GUI.hi-tech_crafting_table.recipeSubjectPage = #1 calcu_temp run tag @s add setRecipePage

item replace block ~ ~ ~ container.8 with minecraft:gray_stained_glass_pane{display:{Name:'{"translate":"gui.previous.page","italic":false,"color":"dark_gray"}'},CustomModelData:102000,CustomData:{galaxy:{Type:"gui"}}}
item replace block ~ ~ ~ container.26 with minecraft:gray_stained_glass_pane{display:{Name:'{"translate":"gui.next.page","italic":false,"color":"dark_gray"}'},CustomModelData:102001,CustomData:{galaxy:{Type:"gui"}}}
execute if score @s galaxy.GUI.hi-tech_crafting_table.recipeSubjectPageMax matches 2.. run item replace block ~ ~ ~ container.8 with minecraft:gray_stained_glass_pane{display:{Name:'{"translate":"gui.previous.page","italic":false}'},CustomModelData:101000,CustomData:{galaxy:{Type:"gui"}}}
execute if score @s galaxy.GUI.hi-tech_crafting_table.recipeSubjectPageMax matches 2.. run item replace block ~ ~ ~ container.26 with minecraft:gray_stained_glass_pane{display:{Name:'{"translate":"gui.next.page","italic":false}'},CustomModelData:101001,CustomData:{galaxy:{Type:"gui"}}}
