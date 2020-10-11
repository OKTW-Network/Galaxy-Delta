scoreboard players operation #1 calcu_temp = @s htctRcpePage
execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:8b}]} run scoreboard players remove @s htctRcpePage 1
execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:26b}]} run scoreboard players add @s htctRcpePage 1
execute if score @s htctRcpePage > @s htctRcpePageMax run scoreboard players set @s htctRcpePage 1
execute if score @s htctRcpePage matches ..0 store result score @s htctRcpePage run scoreboard players get @s htctRcpePageMax
execute unless score @s htctRcpePage = #1 calcu_temp run tag @s add getRecipePage

execute if entity @s[tag=getRecipePage] run function galaxy:gui/hi-tech_crafting_table/mode0/get-recipe_page
execute if entity @s[tag=getRecipePage] run tag @s add setRecipePage
tag @s[tag=getRecipePage] remove getRecipePage

replaceitem block ~ ~ ~ container.8 minecraft:gray_stained_glass_pane{display:{Name:'{"translate":"gui.previous.page","italic":false,"color":"dark_gray"}'},CustomModelData:20200,guiItem:1}
replaceitem block ~ ~ ~ container.26 minecraft:gray_stained_glass_pane{display:{Name:'{"translate":"gui.next.page","italic":false,"color":"dark_gray"}'},CustomModelData:20201,guiItem:1}
execute if score @s htctRcpePageMax matches 2.. run replaceitem block ~ ~ ~ container.8 minecraft:gray_stained_glass_pane{display:{Name:'{"translate":"gui.previous.page","italic":false}'},CustomModelData:10200,guiItem:1}
execute if score @s htctRcpePageMax matches 2.. run replaceitem block ~ ~ ~ container.26 minecraft:gray_stained_glass_pane{display:{Name:'{"translate":"gui.next.page","italic":false}'},CustomModelData:10201,guiItem:1}
