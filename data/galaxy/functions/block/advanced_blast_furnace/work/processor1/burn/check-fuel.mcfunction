function galaxy:block/advanced_blast_furnace/work/processor1/burn/data_get-slot_fuel
data modify storage galaxy:temp process set from storage galaxy:get item
function galaxy:recipe/advanced_blast_furnace/check-fuel
scoreboard players operation @s workProc1CanFuel = @s sucABfFuel
