execute store result score #1 calcu_temp if data block ~ ~ ~ Items[]
execute store result score #2 calcu_temp if data block ~ ~ ~ Items[].tag.CustomData.galaxy{Type:"gui"}
execute store result score #3 calcu_temp if data block ~ ~ ~ Items[].tag.CustomData.galaxy{Type:"trigger"}
scoreboard players operation #2 calcu_temp += #3 calcu_temp
execute if score #1 calcu_temp > #2 calcu_temp run function galaxy:block/hi_tech_crafting_table/functional/pop-unallowed

execute unless predicate galaxy:gui/hi_tech_crafting_table/home_button run function galaxy:block/hi_tech_crafting_table/functional/home_button
execute if entity @s[tag=!galaxy._task.hi_tech_crafting_table.switchToHome] unless predicate galaxy:gui/hi_tech_crafting_table/back_button run function galaxy:block/hi_tech_crafting_table/functional/back_button
execute if entity @s[tag=!galaxy._task.hi_tech_crafting_table.switchToHome,tag=!galaxy._task.hi_tech_crafting_table.switchBack] if data entity @s data.galaxy.hi_tech_crafting_table{interface:"overview"} run function galaxy:block/hi_tech_crafting_table/functional/overview
execute if entity @s[tag=!galaxy._task.hi_tech_crafting_table.switchToHome,tag=!galaxy._task.hi_tech_crafting_table.switchBack] if data entity @s data.galaxy.hi_tech_crafting_table{interface:"recipe"} run function galaxy:block/hi_tech_crafting_table/functional/recipe

execute if entity @s[tag=galaxy._task.hi_tech_crafting_table.changeInterfaceFromContentPage] run function galaxy:block/hi_tech_crafting_table/functional/change_interface_from_content_page
execute if entity @s[tag=galaxy._task.hi_tech_crafting_table.switchToHome] run function galaxy:block/hi_tech_crafting_table/functional/switch_to_home
execute if entity @s[tag=galaxy._task.hi_tech_crafting_table.switchBack] run function galaxy:block/hi_tech_crafting_table/functional/switch_back

function galaxy:gui/hi_tech_crafting_table/main

tag @s remove galaxy._tag.hi_tech_crafting_table.categoryChanged
tag @s remove galaxy._tag.hi_tech_crafting_table.contentPageChanged
tag @s remove galaxy._tag.hi_tech_crafting_table.requirementPageChanged
