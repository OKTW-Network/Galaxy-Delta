scoreboard players set @s galaxy.block.process.idle 1
function galaxy:recipe/advanced_blast_furnace/check_io/main
scoreboard players set #1 calcu_temp 0
execute if data block ~ ~ ~ Items[{Slot:20b}].tag.CustomData.galaxy.tag.advancedBlastFurnaceFuel run scoreboard players set #1 calcu_temp 1
execute if score @s galaxy.block.process.burnTime matches 1.. run scoreboard players set #1 calcu_temp 1
execute if entity @s[tag=galaxy._tag.advanced_blast_furnace.validIO] if score #1 calcu_temp matches 1 run scoreboard players set @s galaxy.block.process.idle 0
