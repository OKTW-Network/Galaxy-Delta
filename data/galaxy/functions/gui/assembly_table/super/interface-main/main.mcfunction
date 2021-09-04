tag @s[tag=lockGUISwitch] remove lockGUISwitch

execute if predicate galaxy:gui/check_slot-all unless predicate galaxy:gui/check-super_assembler-main run tag @s add dropNotGUI
execute if entity @s[tag=dropNotGUI] run function galaxy:gui/assembly_table/super/interface-main/drop-not_gui
tag @s[tag=dropNotGUI] remove dropNotGUI

# attribute button
function galaxy:gui/assembly_table/super/interface-main/check-attribute_button
execute if entity @s[tag=setAttributeButton] run function galaxy:gui/remove-gui_item
execute if entity @s[tag=setAttributeButton] run function galaxy:gui/assembly_table/super/interface-main/build-attribute_button
tag @s[tag=setAttributeButton] remove setAttributeButton

# attribute
function galaxy:gui/assembly_table/super/interface-main/check-attribute
execute if entity @s[tag=setAttribute] run function galaxy:gui/remove-gui_item
execute if entity @s[tag=setAttribute] run function galaxy:gui/assembly_table/super/interface-main/build-attribute
tag @s[tag=setAttribute] remove setAttribute

# value button
execute if entity @s[tag=!galaxy.super_assembler.is_advanced_value] run function galaxy:gui/assembly_table/super/interface-main/check-value_button
execute if entity @s[tag=setValueButton] run function galaxy:gui/remove-gui_item
execute if entity @s[tag=setValueButton] run function galaxy:gui/assembly_table/super/interface-main/build-value_button
tag @s[tag=setValueButton] remove setValueButton

# value
execute if entity @s[tag=!galaxy.super_assembler.is_advanced_value] run function galaxy:gui/assembly_table/super/interface-main/check-value
execute if entity @s[tag=setValue] run function galaxy:gui/remove-gui_item
execute if entity @s[tag=setValue] run function galaxy:gui/assembly_table/super/interface-main/build-value
tag @s[tag=setValue] remove setValue

# button, advanced value
execute if entity @s[tag=setButtonAdvancedValue] run function galaxy:gui/assembly_table/super/interface-main/build-button_advanced_value
tag @s[tag=setButtonAdvancedValue] remove setButtonAdvancedValue

# result 
execute unless predicate galaxy:gui/check_slot-16 run tag @s add setResult
execute if entity @s[tag=setResult] run function galaxy:gui/assembly_table/super/interface-main/build-result
tag @s[tag=setResult] remove setResult

# GUI cover
function galaxy:gui/assembly_table/super/interface-main/check-cover
execute if entity @s[tag=setCover] run function galaxy:gui/remove-gui_item
execute if entity @s[tag=setCover] run function galaxy:gui/assembly_table/super/interface-main/build-cover
tag @s[tag=setCover] remove setCover

tag @s[tag=update] remove update

# switch interface, advanced value
execute if entity @s[tag=galaxy.super_assembler.is_advanced_value] if entity @s[tag=!lockGUISwitch] run function galaxy:gui/assembly_table/super/interface-main/check-button_advanced_value
execute if entity @s[tag=switchToInterface.advanced_value] run function galaxy:gui/remove-gui_item
execute if entity @s[tag=switchToInterface.advanced_value] run function galaxy:gui/assembly_table/super/switch_interface
