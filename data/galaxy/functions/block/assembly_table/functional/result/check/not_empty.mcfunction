scoreboard players set #1 temp 0
execute unless data block ~ ~ ~ Items[{Slot:13b}] run scoreboard players add #1 temp 1
execute if predicate galaxy:recipe/assembly_table/result/is-not_placeholder unless data storage galaxy:temp +block.assembly_table.resultAssemblyInfo run scoreboard players add #1 temp 2
execute if score #1 temp matches 1.. run scoreboard players set @s galaxy.block.assembly_table.resultSlotStatus 0
execute if score #1 temp matches 2.. run function galaxy:block/assembly_table/functional/result/pop
