data modify storage cu:value list.index.input set from entity @s data.galaxy.hi_tech_crafting_table.category.content
execute store result score #value.list.index.end cu run scoreboard players set #value.list.index.start cu 15
execute store result score #1 temp run data get entity @s data.galaxy.hi_tech_crafting_table.contentPageNumber
scoreboard players operation #value.list.index.end cu *= #1 temp
execute store result score #2 temp run data get entity @s data.galaxy.hi_tech_crafting_table.category.content
scoreboard players operation #value.list.index.end cu < #2 temp
scoreboard players remove #value.list.index.end cu 1
scoreboard players remove #1 temp 1
scoreboard players operation #value.list.index.start cu *= #1 temp
function cu:value/list/index/main
data modify entity @s data.galaxy.hi_tech_crafting_table.contentPage set from storage cu:value list.index.result
execute store result score @s galaxy.block.hi_tech_crafting_table.contentPageSlotMax run data get entity @s data.galaxy.hi_tech_crafting_table.contentPage
