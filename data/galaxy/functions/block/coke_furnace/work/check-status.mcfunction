scoreboard players operation #1 calcu_temp = @s galaxy.block.work.status
function galaxy:block/coke_furnace/work/get-status
execute unless score @s galaxy.block.work.status = #1 calcu_temp run tag @s add workStatusUpdate
