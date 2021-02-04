scoreboard players operation #1 calcu_temp = @s statesLit

scoreboard players set @s statesLit 0
function galaxy:block/coke_furnace/work/get-status
execute if score @s workStatus matches 1 run scoreboard players set @s statesLit 1

execute unless score @s statesLit = #1 calcu_temp run tag @s add setStateLit
