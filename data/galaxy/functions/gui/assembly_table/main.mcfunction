execute if entity @s[tag=galaxy._task.gui.refresh] run function galaxy:block/inventory/remove_gui_type
execute if entity @s[tag=galaxy._task.gui.refresh] run tag @s add galaxy._task.gui.cleanupGuiItem
execute if entity @s[tag=galaxy._task.gui.refresh] run tag @s add galaxy._task.gui.buildCover

execute if score @s galaxy.block.assembly_table.mode matches 0 run function galaxy:gui/assembly_table/interface/home/mode_0/main
execute if score @s galaxy.block.assembly_table.mode matches 1 run function galaxy:gui/assembly_table/interface/blueprint/main
execute if score @s galaxy.block.assembly_table.mode matches 2 run function galaxy:gui/assembly_table/interface/home/mode_2/main

data modify storage cu:block container.get_slot_item.input set from entity @s data.galaxy.gui.cover
function cu:block/container/get_slot_item
data modify storage cu:value different.input1 set from entity @s data.galaxy.gui.cover
data modify storage cu:value different.input2 set from storage cu:block container.get_slot_item.result
function cu:value/different
execute if score #value.different.result cu matches 1 run tag @s add galaxy._task.gui.cleanupGuiItem
execute if score #value.different.result cu matches 1 run tag @s add galaxy._task.gui.buildCover
execute if entity @s[tag=galaxy._task.gui.buildCover] run data modify block ~ ~ ~ Items append from entity @s data.galaxy.gui.cover[]
tag @s[tag=galaxy._task.gui.buildCover] remove galaxy._task.gui.buildCover

execute if entity @s[tag=galaxy._task.gui.cleanupGuiItem] run function galaxy:gui/cleanup_gui_item
tag @s[tag=galaxy._task.gui.cleanupGuiItem] remove galaxy._task.gui.cleanupGuiItem

tag @s[tag=galaxy._task.gui.buildPlaceholder] remove galaxy._task.gui.buildPlaceholder
tag @s[tag=galaxy._task.gui.refresh] remove galaxy._task.gui.refresh
