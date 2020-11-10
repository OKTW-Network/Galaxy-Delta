scoreboard players operation #1 calcu_temp = @s workStatus
function galaxy:block/advanced_blast_furnace/work/get-status
execute unless score @s workStatus = #1 calcu_temp run tag @s add workStatusUpdate
