function galaxy:recipe/assembly_table/save/delete-parts

data modify storage cu:item simulate_container.input set value [{operation:"set",value:[]}]
data modify storage cu:item simulate_container.input[0].value set from entity @s data.galaxy.assembly_table.blueprint.parts
function cu:item/simulate_container/main
data modify entity @s data.galaxy.assembly_table.partsSlot set from storage cu:item simulate_container.result[0]
data modify entity @s data.galaxy.assembly_table.parts set value []
