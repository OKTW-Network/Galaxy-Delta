scoreboard players operation #1 calcu_temp = @s galaxy.GUI.hi-tech_crafting_table.recipeRequirementPage
execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:5b}]} run scoreboard players remove @s galaxy.GUI.hi-tech_crafting_table.recipeRequirementPage 1
execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:23b}]} run scoreboard players add @s galaxy.GUI.hi-tech_crafting_table.recipeRequirementPage 1
execute if score @s galaxy.GUI.hi-tech_crafting_table.recipeRequirementPage > @s galaxy.GUI.hi-tech_crafting_table.recipeRequirementPageMax run scoreboard players set @s galaxy.GUI.hi-tech_crafting_table.recipeRequirementPage 1
execute if score @s galaxy.GUI.hi-tech_crafting_table.recipeRequirementPage matches ..0 store result score @s galaxy.GUI.hi-tech_crafting_table.recipeRequirementPage run scoreboard players get @s galaxy.GUI.hi-tech_crafting_table.recipeRequirementPageMax
execute unless score @s galaxy.GUI.hi-tech_crafting_table.recipeRequirementPage = #1 calcu_temp run tag @s add getRequirePage

execute if entity @s[tag=getRequirePage] run function galaxy:gui/hi-tech_crafting_table/interface/requirement/get-reqire_page
execute if entity @s[tag=getRequirePage] run tag @s add setRequirePage
tag @s[tag=getRequirePage] remove getRequirePage

item replace block ~ ~ ~ container.5 with minecraft:gray_stained_glass_pane{display:{Name:'{"translate":"gui.previous.page","italic":false,"color":"dark_gray"}'},CustomModelData:20200,CustomData:{galaxy:{Type:"gui"}}}
item replace block ~ ~ ~ container.23 with minecraft:gray_stained_glass_pane{display:{Name:'{"translate":"gui.next.page","italic":false,"color":"dark_gray"}'},CustomModelData:20201,CustomData:{galaxy:{Type:"gui"}}}
execute if score @s galaxy.GUI.hi-tech_crafting_table.recipeRequirementPageMax matches 2.. run item replace block ~ ~ ~ container.5 with minecraft:gray_stained_glass_pane{display:{Name:'{"translate":"gui.previous.page","italic":false}'},CustomModelData:10200,CustomData:{galaxy:{Type:"gui"}}}
execute if score @s galaxy.GUI.hi-tech_crafting_table.recipeRequirementPageMax matches 2.. run item replace block ~ ~ ~ container.23 with minecraft:gray_stained_glass_pane{display:{Name:'{"translate":"gui.next.page","italic":false}'},CustomModelData:10201,CustomData:{galaxy:{Type:"gui"}}}