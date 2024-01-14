execute if score @s galaxy.block.assembly_table.mode matches 1 unless data block ~ ~ ~ Items[{Slot:13b}] run scoreboard players set #block.assembly_table.modeSwitch galaxy 0
execute if predicate galaxy:recipe/assembly_table/result/is-not_placeholder run scoreboard players set @s galaxy.block.assembly_table.resultSlotStatus 10
