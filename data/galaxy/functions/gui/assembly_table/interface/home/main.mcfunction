execute if entity @s[tag=galaxy._task.gui.refresh] run function galaxy:gui/assembly_table/interface/home/generate_gui_data
tag @s[tag=galaxy._task.gui.refresh] add galaxy._task.assembly_table.blueprintPageButton
tag @s[tag=galaxy._task.gui.refresh] add galaxy._task.assembly_table.buildBlueprintPage

execute store result score #1 calcu_temp if data block ~ ~ ~ Items[]
execute store result score #2 calcu_temp if data block ~ ~ ~ Items[{tag:{CustomData:{galaxy:{Type:"gui"}}}}]
execute if predicate galaxy:recipe/assembly_table/result/is-not_placeholder run scoreboard players add #2 calcu_temp 1
execute if score #1 calcu_temp > #2 calcu_temp run tag @s add galaxy._task.gui.popAll
execute if entity @s[tag=galaxy._task.gui.popAll] run data modify storage galaxy:temp +block.pop_item.input set from block ~ ~ ~ Items
execute if entity @s[tag=galaxy._task.gui.popAll] run function galaxy:block/pop_item/on_top
tag @s[tag=galaxy._task.gui.popAll] remove galaxy._task.gui.popAll

tag @s[tag=!galaxy._task.assembly_table.blueprintPageButton,predicate=!galaxy:gui/assembly_table/home/blueprint_page_button] add galaxy._task.assembly_table.blueprintPageButton
execute if entity @s[tag=galaxy._task.assembly_table.blueprintPageButton] run tag @s add galaxy._task.gui.cleanupGuiItem
execute if entity @s[tag=galaxy._task.assembly_table.blueprintPageButton] run function galaxy:gui/assembly_table/interface/home/blueprint_page_button
execute if entity @s[tag=galaxy._task.assembly_table.blueprintPageButton] run function galaxy:gui/assembly_table/interface/home/build-blueprint_page_button
tag @s[tag=galaxy._task.assembly_table.blueprintPageButton] remove galaxy._task.assembly_table.blueprintPageButton

execute if entity @s[tag=galaxy._task.assembly_table.buildBlueprintPage] run function galaxy:gui/assembly_table/interface/home/build-blueprint_page
tag @s[tag=galaxy._task.assembly_table.buildBlueprintPage] remove galaxy._task.assembly_table.buildBlueprintPage
