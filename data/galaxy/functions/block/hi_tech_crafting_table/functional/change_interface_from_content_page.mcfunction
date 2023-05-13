data modify storage cu:value list.index.input set from entity @s data.galaxy.hi_tech_crafting_table.contentPage
execute unless predicate galaxy:gui/hi_tech_crafting_table/overview/content_page/slot_1 run scoreboard players set #value.list.index.start cu 0
execute unless predicate galaxy:gui/hi_tech_crafting_table/overview/content_page/slot_2 run scoreboard players set #value.list.index.start cu 1
execute unless predicate galaxy:gui/hi_tech_crafting_table/overview/content_page/slot_3 run scoreboard players set #value.list.index.start cu 2
execute unless predicate galaxy:gui/hi_tech_crafting_table/overview/content_page/slot_4 run scoreboard players set #value.list.index.start cu 3
execute unless predicate galaxy:gui/hi_tech_crafting_table/overview/content_page/slot_5 run scoreboard players set #value.list.index.start cu 4
execute unless predicate galaxy:gui/hi_tech_crafting_table/overview/content_page/slot_6 run scoreboard players set #value.list.index.start cu 5
execute unless predicate galaxy:gui/hi_tech_crafting_table/overview/content_page/slot_7 run scoreboard players set #value.list.index.start cu 6
execute unless predicate galaxy:gui/hi_tech_crafting_table/overview/content_page/slot_8 run scoreboard players set #value.list.index.start cu 7
execute unless predicate galaxy:gui/hi_tech_crafting_table/overview/content_page/slot_9 run scoreboard players set #value.list.index.start cu 8
execute unless predicate galaxy:gui/hi_tech_crafting_table/overview/content_page/slot_10 run scoreboard players set #value.list.index.start cu 9
execute unless predicate galaxy:gui/hi_tech_crafting_table/overview/content_page/slot_11 run scoreboard players set #value.list.index.start cu 10
execute unless predicate galaxy:gui/hi_tech_crafting_table/overview/content_page/slot_12 run scoreboard players set #value.list.index.start cu 11
execute unless predicate galaxy:gui/hi_tech_crafting_table/overview/content_page/slot_13 run scoreboard players set #value.list.index.start cu 12
execute unless predicate galaxy:gui/hi_tech_crafting_table/overview/content_page/slot_14 run scoreboard players set #value.list.index.start cu 13
execute unless predicate galaxy:gui/hi_tech_crafting_table/overview/content_page/slot_15 run scoreboard players set #value.list.index.start cu 14
function cu:value/list/index/main
data modify storage galaxy:temp +block.hi_tech_crafting_table.solve_entry set from storage cu:value list.index.result[0].galaxyHiTechCrafting

data modify entity @s data.galaxy.hi_tech_crafting_table.interfaceStack append value {type:"overview",id:""}
data modify entity @s data.galaxy.hi_tech_crafting_table.interfaceStack[-1].id set from entity @s data.galaxy.hi_tech_crafting_table.overview.id
data modify entity @s data.galaxy.hi_tech_crafting_table.interfaceStack[-1].categoryNumber set from entity @s data.galaxy.hi_tech_crafting_table.categoryNumber
data modify entity @s data.galaxy.hi_tech_crafting_table.interfaceStack[-1].contentPageNumber set from entity @s data.galaxy.hi_tech_crafting_table.contentPageNumber
function galaxy:block/hi_tech_crafting_table/functional/remove_overview_data

function galaxy:block/hi_tech_crafting_table/functional/solve_entry/main

tag @s add galaxy._task.gui.refresh

tag @s remove galaxy._task.hi_tech_crafting_table.changeInterfaceFromContentPage
