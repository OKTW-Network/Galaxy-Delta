execute store result score #1 calcu_temp run data get block ~ ~ ~ Items[{Slot:15b}].Count 1
scoreboard players add #1 calcu_temp 1
execute if score #1 calcu_temp matches 65.. run tag @s remove galaxy._tag.coke_furnace.validIO
