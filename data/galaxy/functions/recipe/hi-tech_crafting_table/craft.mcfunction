scoreboard players set #calculation_temp1 numeric 0
scoreboard players set #calculation_temp2 numeric 0

# execute if score @s htctCategory matches 0 run function galaxy:recipe/hi-tech_crafting_table/all/craft
execute if score @s htctCategory matches 1 run function galaxy:recipe/hi-tech_crafting_table/material/craft
execute if score @s htctCategory matches 2 run function galaxy:recipe/hi-tech_crafting_table/machine/craft
execute if score @s htctCategory matches 3 run function galaxy:recipe/hi-tech_crafting_table/functional_block/craft
execute if score @s htctCategory matches 4 run function galaxy:recipe/hi-tech_crafting_table/weapon/craft
execute if score @s htctCategory matches 5 run function galaxy:recipe/hi-tech_crafting_table/tool/craft
