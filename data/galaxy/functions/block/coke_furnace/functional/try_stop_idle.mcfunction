scoreboard players set @s galaxy.block.process.idle 1
function galaxy:recipe/coke_furnace/check_io/main
execute if entity @s[tag=galaxy._tag.coke_furnace.validIO] run scoreboard players set @s galaxy.block.process.idle 0
