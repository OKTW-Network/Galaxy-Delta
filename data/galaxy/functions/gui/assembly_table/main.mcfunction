execute if entity @s[tag=galaxy._task.gui.refresh] run function galaxy:block/inventory/remove_gui_type
tag @s[tag=galaxy._task.gui.refresh] add galaxy._task.gui.buildCover

# execute if entity @s[tag=!galaxy._task.assembly_table.buildPlaceholder,tag=galaxy._tag.assembly_table.resultChanged,tag=galaxy._tag.assembly_table.resultEmpty] if data entity @s HandItems[0].tag.CustomData.galaxy.data.assembly.blueprint run tag @s add galaxy._task.assembly_table.buildPlaceholder

execute unless data entity @s HandItems[0].tag.CustomData.galaxy.data.assembly.blueprint run function galaxy:gui/assembly_table/interface/home/main
execute if data entity @s HandItems[0].tag.CustomData.galaxy.data.assembly.blueprint run function galaxy:gui/assembly_table/interface/blueprint/main

execute if entity @s[tag=galaxy._task.gui.buildCover] run data modify block ~ ~ ~ Items append from entity @s HandItems[0].tag.CustomData.galaxy.data.gui.cover[]
tag @s[tag=galaxy._task.gui.buildCover] remove galaxy._task.gui.buildCover

execute if entity @s[tag=galaxy._task.gui.cleanupGuiItem] run function galaxy:gui/cleanup_gui_item
tag @s[tag=galaxy._task.gui.cleanupGuiItem] remove galaxy._task.gui.cleanupGuiItem

tag @s[tag=galaxy._task.gui.buildPlaceholder] remove galaxy._task.gui.buildPlaceholder
tag @s[tag=galaxy._task.gui.refresh] remove galaxy._task.gui.refresh
