scoreboard players operation #1 calcu_temp = @s galaxy.block.state.lit

scoreboard players set @s galaxy.block.state.lit 0
execute if score @s galaxy.block.work.processor1.burnTime matches 1.. run scoreboard players set @s galaxy.block.state.lit 1

execute unless score @s galaxy.block.state.lit = #1 calcu_temp run tag @s add setStateLit
