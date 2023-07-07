tag @s add galaxy._task.hi_tech_crafting_table.buildCategoryRow

execute store result score #1 temp store result score #2 temp run data get entity @s data.galaxy.hi_tech_crafting_table.categoryNumber
execute store result score #3 temp run data get entity @s data.galaxy.hi_tech_crafting_table.overview.category
execute if score #3 temp matches 2.. unless predicate galaxy:gui/hi_tech_crafting_table/overview/category_row/top run scoreboard players remove #2 temp 1
execute if score #3 temp matches 2.. unless predicate galaxy:gui/hi_tech_crafting_table/overview/category_row/bottom run scoreboard players add #2 temp 1
execute if score #2 temp > #3 temp run scoreboard players set #2 temp 1
execute if score #2 temp matches ..0 run scoreboard players operation #2 temp = #3 temp
execute unless score #2 temp = #1 temp store result entity @s data.galaxy.hi_tech_crafting_table.categoryNumber int 1 run scoreboard players get #2 temp
execute unless score #2 temp = #1 temp run tag @s add galaxy._tag.hi_tech_crafting_table.categoryChanged
execute if entity @s[tag=galaxy._tag.hi_tech_crafting_table.categoryChanged] run data modify entity @s data.galaxy.hi_tech_crafting_table.contentPageNumber set value 1
execute if entity @s[tag=galaxy._tag.hi_tech_crafting_table.categoryChanged] run function galaxy:block/hi_tech_crafting_table/functional/category/get_new
execute if entity @s[tag=galaxy._tag.hi_tech_crafting_table.categoryChanged] run tag @s add galaxy._task.hi_tech_crafting_table.buildContentPage
execute if entity @s[tag=galaxy._tag.hi_tech_crafting_table.categoryChanged] run tag @s add galaxy._task.hi_tech_crafting_table.buildContentPageButton
