execute if entity @s[tag=!update] run function galaxy:gui/super_builder-gun/store-option

scoreboard players operation #1 calcu_temp = @s sbldAttribute
execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:0b}]} run scoreboard players remove @s sbldAttribute 1
execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:1b}]} run scoreboard players remove @s sbldAttribute 1
execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:18b}]} run scoreboard players add @s sbldAttribute 1
execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:19b}]} run scoreboard players add @s sbldAttribute 1
execute if score @s sbldAttribute > #global sbldGAtbMax run scoreboard players set @s sbldAttribute 1
execute if score @s sbldAttribute matches ..0 store result score @s sbldAttribute run scoreboard players get #global sbldGAtbMax
execute unless score @s sbldAttribute = #1 calcu_temp run tag @s add getAttribute

execute if entity @s[tag=getAttribute] run function galaxy:gui/super_builder-gun/get-attribute
execute if entity @s[tag=getAttribute] run function galaxy:gui/super_builder-gun/get-option
execute if entity @s[tag=getAttribute] run tag @s add setAttribute
execute if entity @s[tag=getAttribute] run tag @s add setValueButton
execute if entity @s[tag=getAttribute] run tag @s add setValue
tag @s[tag=getAttribute] remove getAttribute

replaceitem block ~ ~ ~ container.0 minecraft:gray_stained_glass_pane{display:{Name:'{"translate":"gui.previous_page","italic":false}'},CustomModelData:10200,guiItem:1}
replaceitem block ~ ~ ~ container.18 minecraft:gray_stained_glass_pane{display:{Name:'{"translate":"gui.next_page","italic":false}'},CustomModelData:10201,guiItem:1}
