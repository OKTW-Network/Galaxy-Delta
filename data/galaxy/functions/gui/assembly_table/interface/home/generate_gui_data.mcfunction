data modify storage cu:item simulate_container.input set value [{operation:"set",value:[]}]
data modify storage cu:item simulate_container.input[0].value append from storage galaxy:reicpe assembly_table.gui.home[{tag:{CustomData:{galaxy:{id:"assembly_table.home.blueprint_page_cover"}}}}]
data modify storage cu:item simulate_container.input[0].value append from storage galaxy:reicpe assembly_table.gui._piece[{tag:{CustomData:{galaxy:{group:["assembly_table._piece.result_slot_cover"]}}}}]
function cu:item/simulate_container/main
data modify entity @s data.galaxy.gui.cover set from storage cu:item simulate_container.result[0]
