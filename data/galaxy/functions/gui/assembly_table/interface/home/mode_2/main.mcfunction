execute if entity @s[tag=galaxy._task.gui.refresh] run function galaxy:gui/assembly_table/interface/home/generate_gui_data
tag @s[tag=galaxy._task.gui.refresh] add galaxy._task.assembly_table.buildModeSwitchButton
tag @s[tag=galaxy._task.gui.refresh] add galaxy._task.assembly_table.buildAlterationPageButton
tag @s[tag=galaxy._task.gui.refresh] add galaxy._task.assembly_table.buildAlterationPage

execute if entity @s[tag=galaxy._task.assembly_table.buildModeSwitchButton] run tag @s add galaxy._task.gui.cleanupGuiItem
execute if entity @s[tag=galaxy._task.assembly_table.buildModeSwitchButton] run function galaxy:gui/assembly_table/interface/home/build-mode_switch_button
tag @s[tag=galaxy._task.assembly_table.buildModeSwitchButton] remove galaxy._task.assembly_table.buildModeSwitchButton

execute if entity @s[tag=galaxy._task.assembly_table.generateAlterationPage] run function galaxy:gui/assembly_table/interface/home/mode_2/generate_alteration_page/main
tag @s[tag=galaxy._task.assembly_table.generateAlterationPage] remove galaxy._task.assembly_table.generateAlterationPage

execute if entity @s[tag=galaxy._task.assembly_table.buildAlterationPage] run function galaxy:gui/assembly_table/interface/home/mode_2/build-alteration_page
tag @s[tag=galaxy._task.assembly_table.buildAlterationPage] remove galaxy._task.assembly_table.buildAlterationPage

execute if entity @s[tag=galaxy._task.assembly_table.buildAlterationPageButton] run tag @s add galaxy._task.gui.cleanupGuiItem
execute if entity @s[tag=galaxy._task.assembly_table.buildAlterationPageButton] run function galaxy:gui/assembly_table/interface/home/mode_2/build-alteration_page_button
tag @s[tag=galaxy._task.assembly_table.buildAlterationPageButton] remove galaxy._task.assembly_table.buildAlterationPageButton
