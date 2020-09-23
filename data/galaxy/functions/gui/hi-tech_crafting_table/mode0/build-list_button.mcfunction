scoreboard players operation #1 calcu_temp = @s htctListPage
execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:8b}]} run scoreboard players remove @s htctListPage 1
execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:26b}]} run scoreboard players add @s htctListPage 1
execute if score @s htctListPage > @s htctListPageMax run scoreboard players set @s htctListPage 1
execute if score @s htctListPage matches ..0 store result score @s htctListPage run scoreboard players get @s htctListPageMax
execute unless score @s htctListPage = #1 calcu_temp run tag @s add getList

execute if entity @s[tag=getList] run function galaxy:gui/hi-tech_crafting_table/mode0/get-list
execute if entity @s[tag=getList] run tag @s add setList
tag @s[tag=getList] remove getList

replaceitem block ~ ~ ~ container.8 minecraft:gray_stained_glass_pane{display:{Name:'{"translate":"gui.previous.page","italic":false,"color":"dark_gray"}'},CustomModelData:20200,guiItem:1}
replaceitem block ~ ~ ~ container.26 minecraft:gray_stained_glass_pane{display:{Name:'{"translate":"gui.next.page","italic":false,"color":"dark_gray"}'},CustomModelData:20201,guiItem:1}
execute if score @s htctListPageMax matches 2.. run replaceitem block ~ ~ ~ container.8 minecraft:gray_stained_glass_pane{display:{Name:'{"translate":"gui.previous.page","italic":false}'},CustomModelData:10200,guiItem:1}
execute if score @s htctListPageMax matches 2.. run replaceitem block ~ ~ ~ container.26 minecraft:gray_stained_glass_pane{display:{Name:'{"translate":"gui.next.page","italic":false}'},CustomModelData:10201,guiItem:1}
