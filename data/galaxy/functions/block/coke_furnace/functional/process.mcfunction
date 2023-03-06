scoreboard players operation #_temp.block.process.progress galaxy = @s galaxy.block.process.progress

scoreboard players add @s galaxy.block.process.progress 1
execute if score @s galaxy.block.process.progress >= #galaxy$block.coke_furnace.process_duration Config run function galaxy:recipe/coke_furnace/craft
execute if score @s galaxy.block.process.progress >= #galaxy$block.coke_furnace.process_duration Config run scoreboard players set @s galaxy.block.process.progress 0

scoreboard players set @s galaxy.block.states.lit 1

execute unless score @s galaxy.block.process.progress = #_temp.block.process.progress galaxy if predicate minecraft:block_states/open run tag @s add galaxy._task.gui.coke_furnace.updateProcess
