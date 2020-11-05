scoreboard players set #1 calcu_temp 0
scoreboard players set #2 calcu_temp 0

execute if score @s htctCategory matches 1 run function galaxy:recipe/hi-tech_crafting_table/tool/craft
execute if score @s htctCategory matches 2 run function galaxy:recipe/hi-tech_crafting_table/functional_block/craft
execute if score @s htctCategory matches 3 run function galaxy:recipe/hi-tech_crafting_table/interactive_block/craft
execute if score @s htctCategory matches 4 run function galaxy:recipe/hi-tech_crafting_table/component/craft
execute if score @s htctCategory matches 5 run function galaxy:recipe/hi-tech_crafting_table/weapon/craft
