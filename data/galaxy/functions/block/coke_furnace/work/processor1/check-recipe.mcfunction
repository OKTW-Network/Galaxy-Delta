function galaxy:block/coke_furnace/work/processor1/data_get-io
data modify storage galaxy:temp process set from storage galaxy:get item
function galaxy:recipe/coke_furnace/check-io
scoreboard players operation @s galaxy.block.work.processor1.canWork = @s sucCfRcp
