function galaxy:block/advanced_blast_furnace/work/processor1/data_get-slot_io
data modify storage galaxy:temp process set from storage galaxy:get item
function galaxy:recipe/advanced_blast_furnace/check-io
scoreboard players operation @s workProc1CanWork = @s sucABfRcp
