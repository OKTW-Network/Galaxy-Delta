scoreboard players operation #_temp.block.states.lit galaxy = @s galaxy.block.states.lit
scoreboard players operation #_temp.block.process.burnTime galaxy = @s galaxy.block.process.burnTime
execute if score @s galaxy.block.process.burnTime matches 1.. run scoreboard players remove @s galaxy.block.process.burnTime 1

execute if score @s galaxy.block.process.idle matches 1.. run scoreboard players add @s galaxy.block.process.idle 1
execute if score @s galaxy.block.process.idle matches 11.. run function galaxy:block/reinforced_blast_furnace/functional/try_stop_idle

execute if score @s galaxy.block.process.idle matches 0 run function galaxy:recipe/reinforced_blast_furnace/check_io/main
execute if score @s galaxy.block.process.idle matches 0 if entity @s[tag=galaxy._tag.reinforced_blast_furnace.validIO] run function galaxy:block/reinforced_blast_furnace/functional/process
execute if score @s galaxy.block.process.idle matches 0 if entity @s[tag=galaxy._tag.reinforced_blast_furnace.validIO] run function galaxy:recipe/reinforced_blast_furnace/check_io/main
execute if score @s galaxy.block.process.idle matches 0 if entity @s[tag=!galaxy._tag.reinforced_blast_furnace.validIO] run tag @s add galaxy._task.reinforced_blast_furnace.processIdleStart

execute if score @s galaxy.block.process.burnTime matches 1.. run tag @s add galaxy._task.gui.furnace_like.refreshProcess
execute if score @s galaxy.block.process.burnTime matches 0 if score #_temp.block.process.burnTime galaxy matches 1.. if score @s galaxy.block.process.idle matches 1.. run tag @s add galaxy._task.gui.furnace_like.refreshProcess
execute if score @s galaxy.block.process.burnTime matches 0 if score #_temp.block.process.burnTime galaxy matches 1.. if score @s galaxy.block.process.idle matches 0 run tag @s add galaxy._task.reinforced_blast_furnace.processIdleStart

scoreboard players set @s galaxy.block.states.lit 0
execute if score @s galaxy.block.process.burnTime matches 1.. run scoreboard players set @s galaxy.block.states.lit 1
execute unless score @s galaxy.block.states.lit = #_temp.block.states.lit galaxy run function galaxy:block/reinforced_blast_furnace/states/lit

execute if entity @s[tag=galaxy._task.reinforced_blast_furnace.processIdleStart] run scoreboard players set @s galaxy.block.process.progress 0
execute if entity @s[tag=galaxy._task.reinforced_blast_furnace.processIdleStart] run tag @s add galaxy._task.gui.furnace_like.refreshProcess
execute if entity @s[tag=galaxy._task.reinforced_blast_furnace.processIdleStart] run scoreboard players set @s galaxy.block.process.idle 1
tag @s[tag=galaxy._task.reinforced_blast_furnace.processIdleStart] remove galaxy._task.reinforced_blast_furnace.processIdleStart

function galaxy:recipe/reinforced_blast_furnace/check_io/reset
