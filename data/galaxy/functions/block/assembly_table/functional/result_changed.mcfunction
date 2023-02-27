execute if entity @s[tag=galaxy._tag.assembly_table.resultInvalid] run function galaxy:block/assembly_table/functional/pop-result

data modify storage cu:block container.remove_slot.input set from block ~ ~ ~ Items
execute if data storage cu:block container.remove_slot.input[{Slot:13b}] run data remove storage cu:block container.remove_slot.input[{Slot:13b}]
execute if data storage cu:block container.remove_slot.input[{tag:{CustomData:{galaxy:{Type:"gui"}}}}] run data remove storage cu:block container.remove_slot.input[{tag:{CustomData:{galaxy:{Type:"gui"}}}}]
function cu:block/container/remove_slot

function galaxy:recipe/assembly_table/save/delete-result
scoreboard players set @s galaxy.block.assembly_table.requiredCount 0
execute if entity @s[tag=!galaxy._tag.assembly_table.resultEmpty,tag=!galaxy._tag.assembly_table.resultInvalid] run function galaxy:block/assembly_table/functional/solve_new_result
function galaxy:recipe/assembly_table/save/parts
