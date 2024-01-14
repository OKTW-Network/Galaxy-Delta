data remove entity @s data.galaxy.gui.alteration_page

data modify storage cu:value object.find_targets.source set from storage galaxy:recipe assembly_table.blueprint
data modify storage galaxy:temp +gui.assembly_table.generate_alteration_page.id append from storage galaxy:temp +block.assembly_table.resultComponent.Alteration[].id
function galaxy:gui/assembly_table/interface/home/mode_2/generate_alteration_page/_set_targets
data remove storage galaxy:temp +gui.assembly_table.generate_alteration_page.id
scoreboard players set #value.object.find_targets.method cu 1
function cu:value/object/find_targets/main
data modify storage galaxy:temp +gui.assembly_table.generate_alteration_page.icon append from storage cu:value object.find_targets.result[].icon
data modify storage galaxy:temp +gui.assembly_table.generate_alteration_page.id append from storage galaxy:temp +block.assembly_table.resultComponent.Alteration[].id
scoreboard players set #gui.assembly_table.generate_alteration_page._recursiveCount galaxy 0
function galaxy:gui/assembly_table/interface/home/mode_2/generate_alteration_page/_finishing_up
data remove storage galaxy:temp +gui.assembly_table.generate_alteration_page.icon
data remove storage galaxy:temp +gui.assembly_table.generate_alteration_page.id
