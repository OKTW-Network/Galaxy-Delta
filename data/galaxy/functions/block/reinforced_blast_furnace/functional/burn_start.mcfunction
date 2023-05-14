execute store result entity @s data.galaxy.reinforced_blast_furnace.burnTimeMax int 1 store result score @s galaxy.block.process.burnTime run data get block ~ ~ ~ Items[{Slot:20b}].tag.CustomData.galaxy.tag.reinforcedBlastFurnaceFuel 1

execute store result score #1 temp run data get block ~ ~ ~ Items[{Slot:20b}].Count 1
execute store result block ~ ~ ~ Items[{Slot:20b}].Count byte 1 run scoreboard players remove #1 temp 1
