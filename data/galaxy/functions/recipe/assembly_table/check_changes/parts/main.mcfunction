function galaxy:recipe/assembly_table/get/parts_slot/main
data modify storage galaxy:temp +recipe.assembly_table.check_changes._newPartsSlot set from storage galaxy:temp +recipe.assembly_table.get.parts_slot.result
data modify storage cu:value different.input1 set from entity @s data.galaxy.assembly_table.partsSlot
data modify storage cu:value different.input2 set from storage galaxy:temp +recipe.assembly_table.check_changes._newPartsSlot
function cu:value/different
execute if score #value.different.result cu matches 1 run tag @s add galaxy._tag.assembly_table.partsChanged
execute if entity @s[tag=galaxy._tag.assembly_table.partsChanged] run function galaxy:recipe/assembly_table/check_changes/parts/check-new/main

data remove storage galaxy:temp +recipe.assembly_table.check_changes._newPartsSlot
