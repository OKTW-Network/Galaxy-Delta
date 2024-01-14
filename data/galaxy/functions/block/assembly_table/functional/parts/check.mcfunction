function galaxy:block/assembly_table/functional/parts/get
data modify storage cu:value different.input1 set from storage galaxy:temp +block.assembly_table.partSlot
data modify storage cu:value different.input2 set from entity @s data.galaxy.assembly_table.partSlotComplete
function cu:value/different
execute if score #value.different.result cu matches 1 run tag @s add galaxy._tag.assembly_table.partsChanged
function galaxy:block/assembly_table/functional/parts/pop_invalid/main
