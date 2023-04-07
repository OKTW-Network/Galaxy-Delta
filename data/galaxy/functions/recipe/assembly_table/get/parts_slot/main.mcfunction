data modify storage cu:block container.get_slot_item.input set from entity @s data.galaxy.assembly_table.blueprint.parts
function cu:block/container/get_slot_item
data modify storage galaxy:temp +recipe.assembly_table.get.parts_slot.result set from storage cu:block container.get_slot_item.result
execute if score #recipe.assembly_table.get.parts_slot.fillEmpty galaxy matches 1 run function galaxy:recipe/assembly_table/get/parts_slot/fill_empty

scoreboard players reset #recipe.assembly_table.get.parts_slot.fillEmpty galaxy
