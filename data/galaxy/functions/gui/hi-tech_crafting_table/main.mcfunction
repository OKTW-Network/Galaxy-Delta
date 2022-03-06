execute store result score #1 calcu_temp if data block ~ ~ ~ Items[]
execute store result score #2 calcu_temp if data block ~ ~ ~ Items[].tag.CustomData.galaxy{id:"gui_item"}
execute if score #1 calcu_temp > #2 calcu_temp run function galaxy:gui/hi-tech_crafting_table/drop-not_gui

execute if score @s galaxy.GUI.interface matches 0 run function galaxy:gui/hi-tech_crafting_table/interface-main/main
execute if score @s galaxy.GUI.interface matches 1 run function galaxy:gui/hi-tech_crafting_table/interface-recipe_requirement/main
