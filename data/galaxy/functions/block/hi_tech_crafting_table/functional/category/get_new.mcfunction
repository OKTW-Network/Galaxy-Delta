data modify storage cu:value list.index.input set from entity @s data.galaxy.hi_tech_crafting_table.overview.category
execute store result score #1 temp run data get entity @s data.galaxy.hi_tech_crafting_table.overview.category
execute store result score #value.list.index.start cu run data get entity @s data.galaxy.hi_tech_crafting_table.categoryNumber
execute store result score #value.list.index.end cu run scoreboard players remove #value.list.index.start cu 1
execute if score #1 temp matches 2.. run scoreboard players remove #value.list.index.start cu 1
execute if score #1 temp matches 3.. run scoreboard players add #value.list.index.end cu 1
execute if score #value.list.index.end cu = #1 temp run scoreboard players set #value.list.index.end cu 0
scoreboard players set #value.list.index.arrange cu 1
scoreboard players set #value.list.index.circular cu 2
function cu:value/list/index/main
execute store result score #1 temp run data get storage cu:value list.index.result
data modify entity @s data.galaxy.hi_tech_crafting_table.previousCategoryIcon set from storage cu:value list.index.result[0].icon
execute if score #1 temp matches 2.. run data modify entity @s data.galaxy.hi_tech_crafting_table.category set from storage cu:value list.index.result[1]
execute if score #1 temp matches 1 run data modify entity @s data.galaxy.hi_tech_crafting_table.category set from storage cu:value list.index.result[0]
execute if score #1 temp matches 3 run data modify entity @s data.galaxy.hi_tech_crafting_table.nextCategoryIcon set from storage cu:value list.index.result[2].icon
execute if score #1 temp matches ..2 run data modify entity @s data.galaxy.hi_tech_crafting_table.nextCategoryIcon set from storage cu:value list.index.result[0].icon
function galaxy:block/hi_tech_crafting_table/functional/content_page/get_new
