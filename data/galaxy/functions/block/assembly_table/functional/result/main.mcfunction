data modify storage cu:block container.remove_slot.input set from entity @s data.galaxy.assembly_table.blueprint.parts
function cu:block/container/remove_slot
function galaxy:block/assembly_table/functional/data/reset-parts

function galaxy:block/assembly_table/functional/data/delete-result
execute if score @s galaxy.block.assembly_table.resultSlotStatus matches 1 run function galaxy:block/assembly_table/functional/solve_new_result
