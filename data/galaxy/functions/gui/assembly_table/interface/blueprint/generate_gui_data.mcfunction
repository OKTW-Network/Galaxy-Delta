data modify storage cu:item simulate_container.input set value [{operation:"set",value:[]}]
data modify storage cu:item simulate_container.input[0].value set from entity @s data.galaxy.assembly_table.blueprint.cover
data modify storage cu:item simulate_container.input[0].value append from storage galaxy:recipe assembly_table.gui._piece[{tag:{CustomData:{galaxy:{group:["assembly_table._piece.result_slot_cover"]}}}}]
function cu:item/simulate_container/main
data modify entity @s data.galaxy.gui.cover set from storage cu:item simulate_container.result[0]

data modify storage cu:item simulate_container.input set value [{operation:"set",value:[]}]
data modify storage cu:item simulate_container.input[0].value set from entity @s data.galaxy.assembly_table.blueprint.parts
data modify storage cu:item simulate_container.input[0].value append from storage galaxy:recipe assembly_table.gui._piece[{tag:{CustomData:{galaxy:{id:"assembly_table._piece.result_slot_placeholder"}}}}]
function cu:item/simulate_container/main
data modify entity @s data.galaxy.gui.placeholder set from storage cu:item simulate_container.result[0]
