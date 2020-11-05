scoreboard players operation #1 calcu_temp = @s htctCategory
execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:0b}]} run scoreboard players remove @s htctCategory 1
execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:1b}]} run scoreboard players remove @s htctCategory 1
execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:18b}]} run scoreboard players add @s htctCategory 1
execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:19b}]} run scoreboard players add @s htctCategory 1
execute if score @s htctCategory > #global htctCatgMax run scoreboard players set @s htctCategory 1
execute if score @s htctCategory matches ..0 store result score @s htctCategory run scoreboard players get #global htctCatgMax
execute unless score @s htctCategory = #1 calcu_temp run tag @s add getCategory

execute if entity @s[tag=getCategory] run function galaxy:gui/hi-tech_crafting_table/mode0/get-category
execute if entity @s[tag=getCategory] run tag @s add setCategory
execute if entity @s[tag=getCategory] run tag @s add setRecipeButton
execute if entity @s[tag=getCategory] run tag @s add getRecipePage
execute if entity @s[tag=getCategory] run tag @s add setRecipePage
tag @s[tag=getCategory] remove getCategory

replaceitem block ~ ~ ~ container.0 minecraft:gray_stained_glass_pane{display:{Name:'{"translate":"gui.previous","italic":false}'},CustomModelData:10200,guiItem:1}
replaceitem block ~ ~ ~ container.18 minecraft:gray_stained_glass_pane{display:{Name:'{"translate":"gui.next","italic":false}'},CustomModelData:10201,guiItem:1}
