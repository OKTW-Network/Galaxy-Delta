scoreboard players operation #_temp.block.process.progress galaxy = @s galaxy.block.process.progress

execute if score @s galaxy.block.process.burnTime matches 0 if data block ~ ~ ~ Items[{Slot:20b}].tag.CustomData.galaxy.tag.advancedBlastFurnaceFuel run function galaxy:block/advanced_blast_furnace/functional/burn_start

execute if score @s galaxy.block.process.burnTime matches 1.. run scoreboard players add @s galaxy.block.process.progress 1
execute if score @s galaxy.block.process.progress >= #galaxy$block.advanced_blast_furnace.process_duration Config run function galaxy:recipe/advanced_blast_furnace/craft
execute if score @s galaxy.block.process.progress >= #galaxy$block.advanced_blast_furnace.process_duration Config run scoreboard players set @s galaxy.block.process.progress 0

execute unless score @s galaxy.block.process.progress = #_temp.block.process.progress galaxy if predicate minecraft:block_states/open run tag @s add galaxy._task.gui.furnace_like.refreshProcess
