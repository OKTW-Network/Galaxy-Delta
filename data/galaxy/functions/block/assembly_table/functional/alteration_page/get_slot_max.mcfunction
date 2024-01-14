execute store result score #1 temp run scoreboard players set @s galaxy.block.assembly_table.rightPanelPageContentMax 6
scoreboard players operation #1 temp *= @s galaxy.block.assembly_table.alterationPageNumber
scoreboard players operation #2 temp = @s galaxy.block.assembly_table.alterationMax
scoreboard players operation #2 temp %= #6 num
execute if score #1 temp > @s galaxy.block.assembly_table.alterationMax run scoreboard players operation @s galaxy.block.assembly_table.rightPanelPageContentMax = #2 temp
