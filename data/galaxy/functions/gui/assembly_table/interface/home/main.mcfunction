execute if entity @s[tag=galaxy._task.gui.refresh] run function galaxy:gui/assembly_table/interface/home/generate_gui_data
tag @s[tag=galaxy._task.gui.refresh] add galaxy._task.assembly_table.buildBlueprintPageButton
tag @s[tag=galaxy._task.gui.refresh] add galaxy._task.assembly_table.buildBlueprintPage

execute store result score #1 temp if data block ~ ~ ~ Items[]
execute store result score #2 temp if data block ~ ~ ~ Items[{tag:{CustomData:{galaxy:{Type:"gui"}}}}]
execute if predicate galaxy:recipe/assembly_table/result/is-not_placeholder run scoreboard players add #2 temp 1
execute if score #1 temp > #2 temp run tag @s add galaxy._task.gui.popAll
execute if entity @s[tag=galaxy._task.gui.popAll] run data modify storage galaxy:temp +block.pop_item.input set from block ~ ~ ~ Items
execute if entity @s[tag=galaxy._task.gui.popAll] run function galaxy:block/pop_item/on_top
tag @s[tag=galaxy._task.gui.popAll] remove galaxy._task.gui.popAll

execute if entity @s[tag=galaxy._task.assembly_table.buildBlueprintPage] run function galaxy:gui/assembly_table/interface/home/build-blueprint_page
tag @s[tag=galaxy._task.assembly_table.buildBlueprintPage] remove galaxy._task.assembly_table.buildBlueprintPage

execute if entity @s[tag=galaxy._task.assembly_table.buildBlueprintPageButton] run tag @s add galaxy._task.gui.cleanupGuiItem
execute if entity @s[tag=galaxy._task.assembly_table.buildBlueprintPageButton] run function galaxy:gui/assembly_table/interface/home/build-blueprint_page_button
tag @s[tag=galaxy._task.assembly_table.buildBlueprintPageButton] remove galaxy._task.assembly_table.buildBlueprintPageButton
