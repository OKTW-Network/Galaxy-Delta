execute if entity @s[tag=galaxy._task.gui.refresh] run function galaxy:gui/assembly_table/interface/home/generate_gui_data
tag @s[tag=galaxy._task.gui.refresh] add galaxy._task.assembly_table.buildModeSwitchButton
tag @s[tag=galaxy._task.gui.refresh] add galaxy._task.assembly_table.buildBlueprintPageButton
tag @s[tag=galaxy._task.gui.refresh] add galaxy._task.assembly_table.buildBlueprintPage

execute if entity @s[tag=galaxy._task.assembly_table.buildModeSwitchButton] run tag @s add galaxy._task.gui.cleanupGuiItem
execute if entity @s[tag=galaxy._task.assembly_table.buildModeSwitchButton] run function galaxy:gui/assembly_table/interface/home/build-mode_switch_button
tag @s[tag=galaxy._task.assembly_table.buildModeSwitchButton] remove galaxy._task.assembly_table.buildModeSwitchButton

execute if entity @s[tag=galaxy._task.assembly_table.buildBlueprintPage] run function galaxy:gui/assembly_table/interface/home/mode_0/build-blueprint_page
tag @s[tag=galaxy._task.assembly_table.buildBlueprintPage] remove galaxy._task.assembly_table.buildBlueprintPage

execute if entity @s[tag=galaxy._task.assembly_table.buildBlueprintPageButton] run tag @s add galaxy._task.gui.cleanupGuiItem
execute if entity @s[tag=galaxy._task.assembly_table.buildBlueprintPageButton] run function galaxy:gui/assembly_table/interface/home/mode_0/build-blueprint_page_button
tag @s[tag=galaxy._task.assembly_table.buildBlueprintPageButton] remove galaxy._task.assembly_table.buildBlueprintPageButton
