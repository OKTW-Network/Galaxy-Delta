scoreboard players operation #1 calcu_temp = @s galaxy.block.work.process.status
function galaxy:block/advanced_blast_furnace/work/get-processor_status
execute unless score @s galaxy.block.work.process.status = #1 calcu_temp run tag @s add workProcStatusUpdate
