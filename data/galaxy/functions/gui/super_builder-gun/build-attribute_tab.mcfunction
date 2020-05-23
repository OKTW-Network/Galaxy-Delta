execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:0b}]} run scoreboard players remove @s sbldAtbType 1
execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:18b}]} run scoreboard players add @s sbldAtbType 1
execute if score @s sbldAtbType > #global sbldAtbMax run scoreboard players set @s sbldAtbType 1
execute if score @s sbldAtbType matches ..0 store result score @s sbldAtbType run scoreboard players get #global sbldAtbMax
function galaxy:recipe/super_builder-gun/build-atb_category
function galaxy:gui/super_builder-gun/build-num_selection_section
tag @s remove setSbldAtbTab
