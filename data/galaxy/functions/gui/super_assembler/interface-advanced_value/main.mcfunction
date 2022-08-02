tag @s[tag=lockGUISwitch] remove lockGUISwitch

execute if entity @s[tag=galaxy._task.assembly_table.removeResult] run function galaxy:gui/super_assembler/delete-result
tag @s[tag=galaxy._task.assembly_table.removeResult] remove galaxy._task.assembly_table.removeResult

execute if predicate galaxy:gui/check_slot-all unless predicate galaxy:gui/check_whole-gui_item run tag @s add dropNotGUI
execute if entity @s[tag=dropNotGUI] run function galaxy:gui/super_assembler/interface-advanced_value/drop-not_gui
tag @s[tag=dropNotGUI] remove dropNotGUI

# GUI cover
function galaxy:gui/super_assembler/interface-advanced_value/check-cover
execute if entity @s[tag=galaxy._task.GUI.buildCover] run function galaxy:gui/remove_player_gui_item
execute if entity @s[tag=galaxy._task.GUI.buildCover] run function galaxy:gui/super_assembler/interface-advanced_value/build-cover
tag @s[tag=galaxy._task.GUI.buildCover] remove galaxy._task.GUI.buildCover

# value button
function galaxy:gui/super_assembler/interface-advanced_value/check-value_button
execute if entity @s[tag=setValueButton] run function galaxy:gui/remove_player_gui_item
execute if entity @s[tag=setValueButton] run function galaxy:gui/super_assembler/interface-advanced_value/build-value_button
tag @s[tag=setValueButton] remove setValueButton

# value
function galaxy:gui/super_assembler/interface-advanced_value/check-value
execute if entity @s[tag=setValue] run function galaxy:gui/remove_player_gui_item
execute if entity @s[tag=setValue] run function galaxy:gui/super_assembler/interface-advanced_value/build-value
tag @s[tag=setValue] remove setValue

# button return
execute if entity @s[tag=setButtonReturn] run item replace block ~ ~ ~ container.18 with minecraft:golden_hoe{display:{Name:'{"translate":"gui.back","italic":false}'},HideFlags:63,CustomModelData:10120,CustomData:{galaxy:{Type:"gui"}}}
tag @s[tag=setButtonReturn] remove setButtonReturn

tag @s[tag=galaxy._task.GUI.update] remove galaxy._task.GUI.update

# switch interface, main
execute unless data block ~ ~ ~ Items[{Slot:18b}] if entity @s[tag=!lockGUISwitch] run tag @s add switchToInterface.main
execute if entity @s[tag=switchToInterface.main] run function galaxy:gui/remove_player_gui_item
execute if entity @s[tag=switchToInterface.main] run function galaxy:gui/super_assembler/switch_interface
