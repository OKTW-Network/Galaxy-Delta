execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:0b}]} run scoreboard players remove @s sbldAttribute 1
execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:18b}]} run scoreboard players add @s sbldAttribute 1
execute if score @s sbldAttribute > #global sbldAtbMax run scoreboard players set @s sbldAttribute 0
execute if score @s sbldAttribute matches ..-1 store result score @s sbldAttribute run scoreboard players get #global sbldAtbMax
function galaxy:recipe/super_builder-gun/build-atb_category
tag @s add setSbldAtbValue
tag @s remove setSbldAtbTab
