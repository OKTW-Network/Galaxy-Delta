function galaxy:block/assembly_table/functional/data/delete-parts

data modify entity @s data.galaxy.assembly_table.parts set value []
data modify storage cu:item simulate_container.input set value [{operation:"set",value:[]}]
data modify storage cu:item simulate_container.input[0].value set from entity @s data.galaxy.assembly_table.blueprint.parts
function cu:item/simulate_container/main
data modify entity @s data.galaxy.assembly_table.partSlotComplete set from storage cu:item simulate_container.result[0]
