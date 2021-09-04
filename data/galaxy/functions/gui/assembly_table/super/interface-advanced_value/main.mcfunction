tag @s[tag=lockGUISwitch] remove lockGUISwitch

execute if entity @s[tag=removeResult] run function galaxy:gui/assembly_table/super/delete-result
tag @s[tag=removeResult] remove removeResult

execute if predicate galaxy:gui/check_slot-all unless predicate galaxy:gui/check_whole-gui_item run tag @s add dropNotGUI
execute if entity @s[tag=dropNotGUI] run function galaxy:gui/assembly_table/super/interface-advanced_value/drop-not_gui
tag @s[tag=dropNotGUI] remove dropNotGUI

# GUI cover
function galaxy:gui/assembly_table/super/interface-advanced_value/check-cover
execute if entity @s[tag=setCover] run function galaxy:gui/remove-gui_item
execute if entity @s[tag=setCover] run function galaxy:gui/assembly_table/super/interface-advanced_value/build-cover
tag @s[tag=setCover] remove setCover

# value button
function galaxy:gui/assembly_table/super/interface-advanced_value/check-value_button
execute if entity @s[tag=setValueButton] run function galaxy:gui/remove-gui_item
execute if entity @s[tag=setValueButton] run function galaxy:gui/assembly_table/super/interface-advanced_value/build-value_button
tag @s[tag=setValueButton] remove setValueButton

# value
function galaxy:gui/assembly_table/super/interface-advanced_value/check-value
execute if entity @s[tag=setValue] run function galaxy:gui/remove-gui_item
execute if entity @s[tag=setValue] run function galaxy:gui/assembly_table/super/interface-advanced_value/build-value
tag @s[tag=setValue] remove setValue

# button return
execute if entity @s[tag=setButtonReturn] run item replace block ~ ~ ~ container.18 with minecraft:golden_hoe{display:{Name:'{"translate":"gui.back","italic":false}'},HideFlags:63,CustomModelData:10120,guiItem:1}
tag @s[tag=setButtonReturn] remove setButtonReturn

tag @s[tag=update] remove update

# switch interface, main
execute unless data block ~ ~ ~ Items[{Slot:18b}] if entity @s[tag=!lockGUISwitch] run tag @s add switchToInterface.main
execute if entity @s[tag=switchToInterface.main] run function galaxy:gui/remove-gui_item
execute if entity @s[tag=switchToInterface.main] run function galaxy:gui/assembly_table/super/switch_interface
