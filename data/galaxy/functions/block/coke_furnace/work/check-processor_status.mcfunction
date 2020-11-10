scoreboard players operation #1 calcu_temp = @s workProcStatus
function galaxy:block/coke_furnace/work/get-processor_status
execute unless score @s workProcStatus = #1 calcu_temp run tag @s add workProcStatusUpdate
