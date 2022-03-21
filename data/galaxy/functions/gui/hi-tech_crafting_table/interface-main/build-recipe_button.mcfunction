scoreboard players operation #1 calcu_temp = @s galaxy.GUI.HTct.recipeSubjectListPage
execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:8b}]} run scoreboard players remove @s galaxy.GUI.HTct.recipeSubjectListPage 1
execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:26b}]} run scoreboard players add @s galaxy.GUI.HTct.recipeSubjectListPage 1
execute if score @s galaxy.GUI.HTct.recipeSubjectListPage > @s galaxy.GUI.HTct.recipeSubjectListPageMax run scoreboard players set @s galaxy.GUI.HTct.recipeSubjectListPage 1
execute if score @s galaxy.GUI.HTct.recipeSubjectListPage matches ..0 store result score @s galaxy.GUI.HTct.recipeSubjectListPage run scoreboard players get @s galaxy.GUI.HTct.recipeSubjectListPageMax
execute unless score @s galaxy.GUI.HTct.recipeSubjectListPage = #1 calcu_temp run tag @s add getRecipePage
execute unless score @s galaxy.GUI.HTct.recipeSubjectListPage = #1 calcu_temp run tag @s add setRecipePage

item replace block ~ ~ ~ container.8 with minecraft:gray_stained_glass_pane{display:{Name:'{"translate":"gui.previous.page","italic":false,"color":"dark_gray"}'},CustomModelData:20200,CustomData:{galaxy:{id:"gui_item"}}}
item replace block ~ ~ ~ container.26 with minecraft:gray_stained_glass_pane{display:{Name:'{"translate":"gui.next.page","italic":false,"color":"dark_gray"}'},CustomModelData:20201,CustomData:{galaxy:{id:"gui_item"}}}
execute if score @s galaxy.GUI.HTct.recipeSubjectListPageMax matches 2.. run item replace block ~ ~ ~ container.8 with minecraft:gray_stained_glass_pane{display:{Name:'{"translate":"gui.previous.page","italic":false}'},CustomModelData:10200,CustomData:{galaxy:{id:"gui_item"}}}
execute if score @s galaxy.GUI.HTct.recipeSubjectListPageMax matches 2.. run item replace block ~ ~ ~ container.26 with minecraft:gray_stained_glass_pane{display:{Name:'{"translate":"gui.next.page","italic":false}'},CustomModelData:10201,CustomData:{galaxy:{id:"gui_item"}}}
