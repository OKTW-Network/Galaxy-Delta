scoreboard players set #recipe.assembly_table.get.parts_slot.fillEmpty galaxy 1
function galaxy:recipe/assembly_table/get/parts_slot/main
data modify storage cu:value list.difference.input1 set from entity @s data.galaxy.assembly_table.partsSlot
data modify storage cu:value list.difference.input2 set from storage galaxy:temp +recipe.assembly_table.get.parts_slot.result
scoreboard players set #value.list.difference.method cu 2
scoreboard players set #value.list.difference.differentMethod cu 1
function cu:value/list/difference/main
data modify storage galaxy:temp +recipe.assembly_table.check_changes._partsDifferent set from storage cu:value list.difference.result.different.value
function galaxy:recipe/assembly_table/check_changes/parts/check-new/_recursive/main
data remove storage galaxy:temp +recipe.assembly_table.check_changes._partsDifferent

execute store result score #1 temp run data get entity @s data.galaxy.assembly_table.blueprint.requiredCount
execute if score #1 temp = @s galaxy.block.assembly_table.requiredCount run tag @s add galaxy._task.assembly_table.assembleResult
