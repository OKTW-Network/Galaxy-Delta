scoreboard players operation #1 calcu_temp = @s htctRequPage
execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:5b}]} run scoreboard players remove @s htctRequPage 1
execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:23b}]} run scoreboard players add @s htctRequPage 1
execute if score @s htctRequPage > @s htctRequPageMax run scoreboard players set @s htctRequPage 1
execute if score @s htctRequPage matches ..0 store result score @s htctRequPage run scoreboard players get @s htctRequPageMax
execute unless score @s htctRequPage = #1 calcu_temp run tag @s add getRequire

execute if entity @s[tag=getRequire] run function galaxy:gui/hi-tech_crafting_table/mode1/get-reqire
execute if entity @s[tag=getRequire] run tag @s add setRequire
tag @s[tag=getRequire] remove getRequire

replaceitem block ~ ~ ~ container.5 minecraft:gray_stained_glass_pane{display:{Name:'{"translate":"gui.previous.page","italic":false,"color":"dark_gray"}'},CustomModelData:20200,guiItem:1}
replaceitem block ~ ~ ~ container.23 minecraft:gray_stained_glass_pane{display:{Name:'{"translate":"gui.next.page","italic":false,"color":"dark_gray"}'},CustomModelData:20201,guiItem:1}
execute if score @s htctRequPageMax matches 2.. run replaceitem block ~ ~ ~ container.5 minecraft:gray_stained_glass_pane{display:{Name:'{"translate":"gui.previous.page","italic":false}'},CustomModelData:10200,guiItem:1}
execute if score @s htctRequPageMax matches 2.. run replaceitem block ~ ~ ~ container.23 minecraft:gray_stained_glass_pane{display:{Name:'{"translate":"gui.next.page","italic":false}'},CustomModelData:10201,guiItem:1}
