scoreboard players operation #_temp.block.states.lit galaxy = @s galaxy.block.states.lit

execute if score @s galaxy.block.process.idle matches 1.. run scoreboard players add @s galaxy.block.process.idle 1
execute if score @s galaxy.block.process.idle matches 11.. run function galaxy:block/coke_furnace/functional/try_stop_idle

execute if score @s galaxy.block.process.idle matches 0 run function galaxy:recipe/coke_furnace/check_io/main
execute if score @s galaxy.block.process.idle matches 0 if entity @s[tag=galaxy._tag.coke_furnace.validIO] run function galaxy:block/coke_furnace/functional/process
execute if score @s galaxy.block.process.idle matches 0 if entity @s[tag=galaxy._tag.coke_furnace.validIO] run function galaxy:recipe/coke_furnace/check_io/main
execute if score @s galaxy.block.process.idle matches 0 if entity @s[tag=!galaxy._tag.coke_furnace.validIO] run tag @s add galaxy._task.coke_furnace.processIdleStart

execute if entity @s[tag=galaxy._task.coke_furnace.processIdleStart] run scoreboard players set @s galaxy.block.process.progress 0
execute if entity @s[tag=galaxy._task.coke_furnace.processIdleStart] run scoreboard players set @s galaxy.block.states.lit 0
execute if entity @s[tag=galaxy._task.coke_furnace.processIdleStart] run tag @s add galaxy._task.gui.coke_furnace.updateProcess
execute if entity @s[tag=galaxy._task.coke_furnace.processIdleStart] run scoreboard players set @s galaxy.block.process.idle 1
tag @s[tag=galaxy._task.coke_furnace.processIdleStart] remove galaxy._task.coke_furnace.processIdleStart

execute unless score @s galaxy.block.states.lit = #_temp.block.states.lit galaxy run function galaxy:block/coke_furnace/update_block_states

function galaxy:recipe/coke_furnace/check_io/reset
