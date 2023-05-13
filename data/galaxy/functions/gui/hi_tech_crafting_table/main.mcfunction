execute if entity @s[tag=galaxy._task.gui.refresh] run data remove block ~ ~ ~ Items
execute if entity @s[tag=galaxy._task.gui.refresh] run tag @s add galaxy._task.gui.cleanupGuiItem
execute if entity @s[tag=galaxy._task.gui.refresh] run tag @s add galaxy._task.gui.buildCover
execute if entity @s[tag=galaxy._task.gui.refresh] run tag @s add galaxy._task.hi_tech_crafting_table.buildHomeButton
execute if entity @s[tag=galaxy._task.gui.refresh] run tag @s add galaxy._task.hi_tech_crafting_table.buildBackButton

execute if data entity @s data.galaxy.hi_tech_crafting_table{interface:"overview"} run function galaxy:gui/hi_tech_crafting_table/interface/overview/main
execute if data entity @s data.galaxy.hi_tech_crafting_table{interface:"recipe"} run function galaxy:gui/hi_tech_crafting_table/interface/recipe/main

execute if entity @s[tag=galaxy._task.hi_tech_crafting_table.buildHomeButton] run tag @s add galaxy._task.gui.cleanupGuiItem
execute if entity @s[tag=galaxy._task.hi_tech_crafting_table.buildHomeButton] run function galaxy:gui/hi_tech_crafting_table/build-home_button
tag @s[tag=galaxy._task.hi_tech_crafting_table.buildHomeButton] remove galaxy._task.hi_tech_crafting_table.buildHomeButton

execute if entity @s[tag=galaxy._task.hi_tech_crafting_table.buildBackButton] run tag @s add galaxy._task.gui.cleanupGuiItem
execute if entity @s[tag=galaxy._task.hi_tech_crafting_table.buildBackButton] run function galaxy:gui/hi_tech_crafting_table/build-back_button
tag @s[tag=galaxy._task.hi_tech_crafting_table.buildBackButton] remove galaxy._task.hi_tech_crafting_table.buildBackButton

execute if entity @s[tag=galaxy._task.gui.cleanupGuiItem] run function galaxy:gui/cleanup_gui_item
tag @s[tag=galaxy._task.gui.cleanupGuiItem] remove galaxy._task.gui.cleanupGuiItem

tag @s[tag=galaxy._task.gui.refresh] remove galaxy._task.gui.refresh
