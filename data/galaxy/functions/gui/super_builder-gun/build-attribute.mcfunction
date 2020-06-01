execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:0b}]} run scoreboard players remove @s sbldAttribute 1
execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:1b}]} run scoreboard players remove @s sbldAttribute 1
execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:18b}]} run scoreboard players add @s sbldAttribute 1
execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:19b}]} run scoreboard players add @s sbldAttribute 1
execute if score @s sbldAttribute > #global sbldGAtbMax run scoreboard players set @s sbldAttribute 0
execute if score @s sbldAttribute matches ..-1 store result score @s sbldAttribute run scoreboard players get #global sbldGAtbMax
replaceitem block ~ ~ ~ container.0 minecraft:gray_stained_glass_pane{display:{Name:'{"translate":"gui.previous_page","italic":false}'},CustomModelData:10200,guiItem:1}
replaceitem block ~ ~ ~ container.18 minecraft:gray_stained_glass_pane{display:{Name:'{"translate":"gui.next_page","italic":false}'},CustomModelData:10201,guiItem:1}
function galaxy:recipe/super_builder-gun/build-atb_category
