tag @s add galaxy._task.hi_tech_crafting_table.buildContentPageButton

execute store result score #1 calcu_temp store result score #2 calcu_temp run data get entity @s data.galaxy.hi_tech_crafting_table.contentPageNumber
execute store result score #3 calcu_temp store result score #4 calcu_temp run data get entity @s data.galaxy.hi_tech_crafting_table.category.content
scoreboard players operation #3 calcu_temp /= #15 num
scoreboard players operation #4 calcu_temp %= #15 num
execute if score #4 calcu_temp matches 1.. run scoreboard players add #3 calcu_temp 1
execute if score #3 calcu_temp matches 2.. unless predicate galaxy:gui/hi_tech_crafting_table/overview/content_page_button/page_previous run scoreboard players remove #2 calcu_temp 1
execute if score #3 calcu_temp matches 2.. unless predicate galaxy:gui/hi_tech_crafting_table/overview/content_page_button/page_next run scoreboard players add #2 calcu_temp 1
execute if score #2 calcu_temp > #3 calcu_temp run scoreboard players set #2 calcu_temp 1
execute if score #2 calcu_temp matches ..0 run scoreboard players operation #2 calcu_temp = #3 calcu_temp
execute unless score #2 calcu_temp = #1 calcu_temp run tag @s add galaxy._tag.hi_tech_crafting_table.contentPageChanged
execute if entity @s[tag=galaxy._tag.hi_tech_crafting_table.contentPageChanged] store result entity @s data.galaxy.hi_tech_crafting_table.contentPageNumber int 1 run scoreboard players get #2 calcu_temp
execute if entity @s[tag=galaxy._tag.hi_tech_crafting_table.contentPageChanged] run function galaxy:block/hi_tech_crafting_table/functional/content_page/get_new
execute if entity @s[tag=galaxy._tag.hi_tech_crafting_table.contentPageChanged] run tag @s add galaxy._task.hi_tech_crafting_table.buildContentPage
