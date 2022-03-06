scoreboard players operation #1 calcu_temp = @s galaxy.block.state.lit

scoreboard players set @s galaxy.block.state.lit 0
function galaxy:block/coke_furnace/work/get-status
execute if score @s workStatus matches 1 run scoreboard players set @s galaxy.block.state.lit 1

execute unless score @s galaxy.block.state.lit = #1 calcu_temp run tag @s add setStateLit
