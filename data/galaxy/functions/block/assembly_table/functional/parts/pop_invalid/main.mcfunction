data modify storage cu:value list.difference.input1 set from entity @s data.galaxy.assembly_table.partSlotComplete
data modify storage cu:value list.difference.input2 set from storage galaxy:temp +block.assembly_table.partSlotComplete
scoreboard players set #value.list.difference.method cu 2
scoreboard players set #value.list.difference.differentMethod cu 1
function cu:value/list/difference/main
data modify storage galaxy:temp +block.assembly_table._differentParts set from storage cu:value list.difference.result.different.value
function galaxy:block/assembly_table/functional/parts/pop_invalid/_recursive

data remove storage galaxy:temp +block.assembly_table._differentParts
