scoreboard players set #1 temp -1
execute unless data block ~ ~ ~ Items[{Slot:13b}] run scoreboard players add #1 temp 1
execute if predicate galaxy:recipe/assembly_table/result/is-placeholder run scoreboard players add #1 temp 1
execute if data storage galaxy:temp +block.assembly_table.resultAssemblyInfo run scoreboard players add #1 temp 2
execute if data storage galaxy:temp +block.assembly_table.resultComponent run scoreboard players add #1 temp 3
execute unless score #1 temp matches 0..2 run function galaxy:block/assembly_table/functional/result/pop_and_reset_placeholder
execute unless score #1 temp matches 0..2 run scoreboard players set #1 temp 0
scoreboard players operation @s galaxy.block.assembly_table.resultSlotStatus = #1 temp
execute unless score #1 temp matches 0 run scoreboard players operation #block.assembly_table.modeSwitch galaxy = #1 temp
