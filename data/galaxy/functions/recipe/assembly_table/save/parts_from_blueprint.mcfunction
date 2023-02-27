function galaxy:recipe/assembly_table/save/delete-parts

data modify storage cu:item simulate_container.input set value [{operation:"set",value:[]}]
data modify storage cu:item simulate_container.input[0].value set from entity @s HandItems[0].tag.CustomData.galaxy.data.assembly.blueprint.parts
function cu:item/simulate_container/main
data modify entity @s HandItems[0].tag.CustomData.galaxy.data.assembly.partsSlot set from storage cu:item simulate_container.result[0]
data modify entity @s HandItems[0].tag.CustomData.galaxy.data.assembly.parts set value []
