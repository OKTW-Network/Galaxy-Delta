data modify storage cu:item simulate_container.input set value [{operation:"set",value:[]}]
data modify storage cu:item simulate_container.input[0].value set from entity @s data.galaxy.assembly_table.blueprint.parts
data modify storage cu:item simulate_container.input[0].value append from storage galaxy:temp +recipe.assembly_table.get.parts_slot.result[]
function cu:item/simulate_container/main
data modify storage galaxy:temp +recipe.assembly_table.get.parts_slot.result set from storage cu:item simulate_container.result[0]
