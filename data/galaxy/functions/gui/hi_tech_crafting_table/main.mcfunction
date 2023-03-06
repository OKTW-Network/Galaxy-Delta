execute if entity @s[tag=galaxy._task.gui.refresh] run function galaxy:gui/cleanup_gui_item
execute if entity @s[tag=galaxy._task.gui.refresh] run function galaxy:gui/remove-all_slots
execute if entity @s[tag=galaxy._task.gui.refresh] run tag @s add galaxy._task.gui.buildCover

execute store result score #1 calcu_temp if data block ~ ~ ~ Items[]
execute store result score #2 calcu_temp if data block ~ ~ ~ Items[].tag.CustomData.galaxy{Type:"gui"}
execute if score #1 calcu_temp > #2 calcu_temp run tag @s add galaxy._task.gui.popAll
execute if entity @s[tag=galaxy._task.gui.popAll] run data modify storage galaxy:temp +block.pop_item.input set from block ~ ~ ~ Items
execute if entity @s[tag=galaxy._task.gui.popAll] run function galaxy:block/pop_item/on_top
tag @s[tag=galaxy._task.gui.popAll] remove galaxy._task.gui.popAll

execute if data entity @s HandItems[0].tag.CustomData.galaxy.data.hi_tech_crafting_table{interface:"overview"} run function galaxy:gui/hi_tech_crafting_table/interface/overview/main
execute if data entity @s HandItems[0].tag.CustomData.galaxy.data.hi_tech_crafting_table{interface:"requirement"} run function galaxy:gui/hi_tech_crafting_table/interface/requirement/main

execute if entity @s[tag=galaxy._task.gui.cleanupGuiItem] run function galaxy:gui/cleanup_gui_item
tag @s[tag=galaxy._task.gui.cleanupGuiItem] remove galaxy._task.gui.cleanupGuiItem

tag @s[tag=galaxy._task.gui.refresh] remove galaxy._task.gui.refresh

execute if entity @s[tag=galaxy._task.gui.switchInterface] run function galaxy:gui/hi_tech_crafting_table/switch_interface
tag @s[tag=galaxy._task.gui.switchInterface] remove galaxy._task.gui.switchInterface
