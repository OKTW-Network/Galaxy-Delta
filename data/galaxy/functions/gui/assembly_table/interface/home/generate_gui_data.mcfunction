data modify storage cu:item simulate_container.input set value [{operation:"set",value:[]}]
data modify storage cu:item simulate_container.input[0].value append from storage galaxy:recipe assembly_table.gui.home[{tag:{CustomData:{galaxy:{group:["assembly_table.home.cover"]}}}}]
data modify storage cu:item simulate_container.input[0].value append from storage galaxy:recipe assembly_table.gui._piece[{tag:{CustomData:{galaxy:{group:["assembly_table._piece.result_slot_cover"]}}}}]
data modify storage galaxy:temp +gui.assembly_table.generate_gui_data.cover_item set from storage galaxy:recipe assembly_table.gui._piece[{tag:{CustomData:{galaxy:{id:"assembly_table._piece.result_slot_cover.5"}}}}]
data modify storage galaxy:temp +gui.assembly_table.generate_gui_data.cover_item.tag merge from storage galaxy:temp +gui.assembly_table.generate_gui_data.cover_item.tag.CustomData.galaxy.tag.form.left_panel_background
data modify storage cu:item simulate_container.input[0].value append from storage galaxy:temp +gui.assembly_table.generate_gui_data.cover_item
function cu:item/simulate_container/main
data modify entity @s data.galaxy.gui.cover set from storage cu:item simulate_container.result[0]

data modify storage cu:item simulate_container.input set value [{operation:"set_slot_dummy",value:[]},{operation:"result_slot",value:[]}]
data modify storage cu:item simulate_container.input[0].value append from storage galaxy:recipe assembly_table.gui.home[{tag:{CustomData:{galaxy:{group:["assembly_table.home.left_panel"]}}}}]
data modify storage cu:item simulate_container.input[0].value append from storage galaxy:recipe assembly_table.gui.home[{tag:{CustomData:{galaxy:{group:["assembly_table.home.right_panel"]}}}}]
data modify storage cu:item simulate_container.input[0].value append from storage galaxy:recipe assembly_table.gui._piece[{tag:{CustomData:{galaxy:{group:["assembly_table._piece.result_slot_cover"]}}}}]
function cu:item/simulate_container/main
data modify entity @s data.galaxy.gui.strict_slot set from storage cu:item simulate_container.result[0]
