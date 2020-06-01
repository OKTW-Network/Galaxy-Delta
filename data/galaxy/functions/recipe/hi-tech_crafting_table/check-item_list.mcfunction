# execute if score @s htctCategory matches 0 run function galaxy:recipe/hi-tech_crafting_table/all/check-item_list
execute if score @s htctCategory matches 1 run function galaxy:recipe/hi-tech_crafting_table/material/check-item_list
execute if score @s htctCategory matches 2 run function galaxy:recipe/hi-tech_crafting_table/machine/check-item_list
execute if score @s htctCategory matches 3 run function galaxy:recipe/hi-tech_crafting_table/functional_block/check-item_list
execute if score @s htctCategory matches 4 run function galaxy:recipe/hi-tech_crafting_table/weapon/check-item_list
execute if score @s htctCategory matches 5 run function galaxy:recipe/hi-tech_crafting_table/tool/check-item_list

execute if score @s sucRequest matches 1 run function galaxy:gui/remove-gui_item
execute if score @s sucRequest matches 1 run tag @s add switchToMode1
execute if score @s sucRequest matches 1 run function galaxy:gui/hi-tech_crafting_table/switch_mode
execute if score @s sucRequest matches 1 run scoreboard players set @s sucRequest 0
