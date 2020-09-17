execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:0b}]} run scoreboard players remove @s htctCategory 1
execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:1b}]} run scoreboard players remove @s htctCategory 1
execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:18b}]} run scoreboard players add @s htctCategory 1
execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:19b}]} run scoreboard players add @s htctCategory 1
execute if score @s htctCategory > #global htctCatgMax run scoreboard players set @s htctCategory 1
execute if score @s htctCategory matches ..0 store result score @s htctCategory run scoreboard players get #global htctCatgMax
replaceitem block ~ ~ ~ container.0 minecraft:gray_stained_glass_pane{display:{Name:'{"translate":"gui.previous.category","italic":false}'},CustomModelData:10200,guiItem:1}
replaceitem block ~ ~ ~ container.18 minecraft:gray_stained_glass_pane{display:{Name:'{"translate":"gui.next.category","italic":false}'},CustomModelData:10201,guiItem:1}
function galaxy:recipe/hi-tech_crafting_table/build-category
