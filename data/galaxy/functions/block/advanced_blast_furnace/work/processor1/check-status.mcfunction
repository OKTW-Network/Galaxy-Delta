function galaxy:block/advanced_blast_furnace/work/processor1/data_get-io
data modify storage galaxy:temp process set from storage galaxy:get item
function galaxy:recipe/advanced_blast_furnace/check
scoreboard players operation @s workProc1Status = @s sucABfRcp
