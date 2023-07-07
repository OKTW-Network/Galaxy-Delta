data modify storage galaxy:temp +block.assembly_table.parts set value []
data modify storage galaxy:temp +block.assembly_table.partSlot set value []
data modify storage galaxy:temp +block.assembly_table.partSlotComplete set value []

data modify storage cu:block container.get_slot_item.input set from entity @s data.galaxy.assembly_table.blueprint.parts
function cu:block/container/get_slot_item
data modify storage galaxy:temp +block.assembly_table.partSlot set from storage cu:block container.get_slot_item.result
data modify storage galaxy:temp +block.assembly_table.parts set from storage galaxy:temp +block.assembly_table.partSlot
data remove storage galaxy:temp +block.assembly_table.parts[{tag:{CustomData:{galaxy:{id:"assembly_table.parts_placeholder"}}}}]
data modify storage cu:item simulate_container.input set value [{operation:"set",value:[]}]
data modify storage cu:item simulate_container.input[0].value set from entity @s data.galaxy.assembly_table.blueprint.parts
data modify storage cu:item simulate_container.input[0].value append from storage galaxy:temp +block.assembly_table.parts[]
function cu:item/simulate_container/main
data modify storage galaxy:temp +block.assembly_table.partSlotComplete set from storage cu:item simulate_container.result[0]
