execute if entity @s[tag=galaxy._task.gui.refresh] run function galaxy:block/inventory/remove_gui_type
tag @s[tag=galaxy._task.gui.refresh] add galaxy._task.gui.buildCover

execute unless data entity @s data.galaxy.assembly_table.blueprint run function galaxy:gui/assembly_table/interface/home/main
execute if data entity @s data.galaxy.assembly_table.blueprint run function galaxy:gui/assembly_table/interface/blueprint/main

execute if entity @s[tag=galaxy._task.gui.buildCover] run data modify block ~ ~ ~ Items append from entity @s data.galaxy.gui.cover[]
tag @s[tag=galaxy._task.gui.buildCover] remove galaxy._task.gui.buildCover

execute if entity @s[tag=galaxy._task.gui.cleanupGuiItem] run function galaxy:gui/cleanup_gui_item
tag @s[tag=galaxy._task.gui.cleanupGuiItem] remove galaxy._task.gui.cleanupGuiItem

tag @s[tag=galaxy._task.gui.buildPlaceholder] remove galaxy._task.gui.buildPlaceholder
tag @s[tag=galaxy._task.gui.refresh] remove galaxy._task.gui.refresh
