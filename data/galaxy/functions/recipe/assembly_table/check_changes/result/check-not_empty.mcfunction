scoreboard players set #1 temp 0
execute unless data block ~ ~ ~ Items[{Slot:13b}] run scoreboard players add #1 temp 1
execute if predicate galaxy:recipe/assembly_table/result/is-not_placeholder unless data block ~ ~ ~ Items[{Slot:13b}].tag.CustomData.galaxy.tag.assemblyInfo run scoreboard players add #1 temp 2
execute if score #1 temp matches 1 run tag @s add galaxy._tag.assembly_table.resultEmpty
execute if score #1 temp matches 2.. run tag @s add galaxy._tag.assembly_table.resultInvalid
execute if score #1 temp matches 1.. run tag @s add galaxy._tag.assembly_table.resultChanged
