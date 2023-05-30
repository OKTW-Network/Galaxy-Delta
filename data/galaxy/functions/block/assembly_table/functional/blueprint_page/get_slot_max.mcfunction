execute store result score #1 temp run scoreboard players set @s galaxy.block.assembly_table.blueprintPageSlotMax 6
scoreboard players operation #1 temp *= @s galaxy.block.assembly_table.blueprintPageNumber
scoreboard players operation #2 temp = #recipe.assembly_table.blueprintMax galaxy
scoreboard players operation #2 temp %= #6 num
execute if score #1 temp > #recipe.assembly_table.blueprintMax galaxy run scoreboard players operation @s galaxy.block.assembly_table.blueprintPageSlotMax = #2 temp
