data modify storage cu:value object.find_targets.input append value {id:""}
data modify storage cu:value object.find_targets.input[-1].id set from storage galaxy:temp +gui.assembly_table.generate_alteration_page.id[0]
data remove storage galaxy:temp +gui.assembly_table.generate_alteration_page.id[0]
execute if data storage galaxy:temp +gui.assembly_table.generate_alteration_page.id[0] run function galaxy:gui/assembly_table/interface/home/mode_2/generate_alteration_page/_set_targets
