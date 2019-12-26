# execute if score @s htctCategory matches 0 run function galaxy:recipe/hi-tech_crafting_table/all/check-item_list
execute if score @s htctCategory matches 1 run function galaxy:recipe/hi-tech_crafting_table/material/check-item_list
execute if score @s htctCategory matches 2 run function galaxy:recipe/hi-tech_crafting_table/machine/check-item_list
execute if score @s htctCategory matches 3 run function galaxy:recipe/hi-tech_crafting_table/functional_block/check-item_list
execute if score @s htctCategory matches 4 run function galaxy:recipe/hi-tech_crafting_table/weapon/check-item_list
execute if score @s htctCategory matches 5 run function galaxy:recipe/hi-tech_crafting_table/tool/check-item_list

execute if score @s sucRequest matches 1 run function galaxy:delete-gui_item
execute if score @s sucRequest matches 1.. run scoreboard players set @s guiMode 1
execute if score @s sucRequest matches 1.. run scoreboard players set @s htctRequPage 1
execute if score @s sucRequest matches 1.. run function galaxy:gui/hi-tech_crafting_table/update
execute if score @s sucRequest matches 1.. run scoreboard players set @s sucRequest 0
