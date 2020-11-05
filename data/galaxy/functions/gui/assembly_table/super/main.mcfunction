execute if predicate galaxy:gui/check_slot-all unless predicate galaxy:gui/check-super_assembler run tag @s add dropNotGUI
execute if entity @s[tag=dropNotGUI] run function galaxy:gui/assembly_table/super/drop-not_gui
tag @s[tag=dropNotGUI] remove dropNotGUI

# GUI cover
function galaxy:gui/assembly_table/super/check-cover
execute if entity @s[tag=setCover] run function galaxy:gui/remove-gui_item
execute if entity @s[tag=setCover] run function galaxy:gui/assembly_table/super/build-cover
tag @s[tag=setCover] remove setCover

# attribute button
function galaxy:gui/assembly_table/super/check-attribute_button
execute if entity @s[tag=setAttributeButton] run function galaxy:gui/remove-gui_item
execute if entity @s[tag=setAttributeButton] run function galaxy:gui/assembly_table/super/build-attribute_button
tag @s[tag=setAttributeButton] remove setAttributeButton

# attribute
function galaxy:gui/assembly_table/super/check-attribute
execute if entity @s[tag=setAttribute] run function galaxy:gui/remove-gui_item
execute if entity @s[tag=setAttribute] run function galaxy:gui/assembly_table/super/build-attribute
tag @s[tag=setAttribute] remove setAttribute

# value button
function galaxy:gui/assembly_table/super/check-value_button
execute if entity @s[tag=setValueButton] run function galaxy:gui/remove-gui_item
execute if entity @s[tag=setValueButton] run function galaxy:gui/assembly_table/super/build-value_button
tag @s[tag=setValueButton] remove setValueButton

# value
function galaxy:gui/assembly_table/super/check-value
execute if entity @s[tag=setValue] run function galaxy:gui/remove-gui_item
execute if entity @s[tag=setValue] run function galaxy:gui/assembly_table/super/build-value
tag @s[tag=setValue] remove setValue

# builder result
execute unless predicate galaxy:gui/check_slot-16 run tag @s add setResult
execute if entity @s[tag=setResult] run function galaxy:gui/assembly_table/super/store-option
execute if entity @s[tag=setResult] run function galaxy:gui/assembly_table/super/build-result
tag @s[tag=setResult] remove setResult

tag @s[tag=update] remove update
