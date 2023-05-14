execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:8b}]} run scoreboard players remove @s galaxy.GUI.assembly_table.blueprintPage 1
execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:26b}]} run scoreboard players add @s galaxy.GUI.assembly_table.blueprintPage 1
scoreboard players operation @s galaxy.GUI.assembly_table.blueprintPage < #recipe.assembly_table.blueprintPageMax galaxy
scoreboard players operation @s galaxy.GUI.assembly_table.blueprintPage > #1 num

scoreboard players set #1 temp 6
scoreboard players operation #1 temp *= @s galaxy.GUI.assembly_table.blueprintPage
scoreboard players operation #2 temp = #recipe.assembly_table.blueprintMax galaxy
scoreboard players operation #2 temp %= #6 num
execute if score #1 temp > #recipe.assembly_table.blueprintMax galaxy run scoreboard players operation #1 temp = #2 temp
scoreboard players operation @s galaxy.GUI.assembly_table.blueprintPageSlotMax = #1 temp
