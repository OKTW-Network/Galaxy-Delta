function galaxy:block/coke_furnace/work/processor1/data_get-io
data modify storage galaxy:temp process set from storage galaxy:get item
function galaxy:recipe/coke_furnace/check
scoreboard players operation @s workProc1Status = @s sucCfRcp
