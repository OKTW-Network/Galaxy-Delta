execute if data entity @s data.galaxy.assembly_table.blueprint unless data block ~ ~ ~ Items[{Slot:13b}] run tag @s add galaxy._task.assembly_table.switchToHome
execute if predicate galaxy:recipe/assembly_table/result/is-not_placeholder run scoreboard players set @s galaxy.block.assembly_table.resultSlotStatus 1
