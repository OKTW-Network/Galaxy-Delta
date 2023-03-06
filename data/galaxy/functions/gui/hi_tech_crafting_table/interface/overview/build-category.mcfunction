data remove block ~ ~ ~ Items[{Slot:10b}]
data remove block ~ ~ ~ Items[{Slot:1b}]
data remove block ~ ~ ~ Items[{Slot:19b}]

data modify storage galaxy:temp +gui.hi_tech_crafting_table.build-category.icon set from entity @s HandItems[0].tag.CustomData.galaxy.data.hi_tech_crafting_table.category.icon
data modify storage galaxy:temp +gui.hi_tech_crafting_table.build-category.icon merge value {Slot:10b}
data modify block ~ ~ ~ Items prepend from storage galaxy:temp +gui.hi_tech_crafting_table.build-category.icon

data modify storage cu:value list.index.input set from storage galaxy:recipe hi_tech_crafting_table.category
scoreboard players operation #1 calcu_temp = @s galaxy.GUI.hi_tech_crafting_table.category
scoreboard players remove #1 calcu_temp 1
execute store result score #value.list.index.min cu run scoreboard players remove #1 calcu_temp 1
execute if score #value.list.index.min cu matches ..-1 run scoreboard players operation #value.list.index.min cu += #recipe.hi_tech_crafting_table.categoryMax galaxy
function cu:value/list/index/main
data modify storage galaxy:temp +gui.hi_tech_crafting_table.build-category.icon set from storage cu:value list.index.result[0].icon
data modify storage galaxy:temp +gui.hi_tech_crafting_table.build-category.icon merge value {Slot:1b}
data modify block ~ ~ ~ Items prepend from storage galaxy:temp +gui.hi_tech_crafting_table.build-category.icon

data modify storage cu:value list.index.input set from storage galaxy:recipe hi_tech_crafting_table.category
scoreboard players operation #1 calcu_temp = @s galaxy.GUI.hi_tech_crafting_table.category
scoreboard players add #1 calcu_temp 1
execute store result score #value.list.index.min cu run scoreboard players remove #1 calcu_temp 1
execute if score #value.list.index.min cu >= #recipe.hi_tech_crafting_table.categoryMax galaxy run scoreboard players operation #value.list.index.min cu -= #recipe.hi_tech_crafting_table.categoryMax galaxy
function cu:value/list/index/main
data modify storage galaxy:temp +gui.hi_tech_crafting_table.build-category.icon set from storage cu:value list.index.result[0].icon
data modify storage galaxy:temp +gui.hi_tech_crafting_table.build-category.icon merge value {Slot:19b}
data modify block ~ ~ ~ Items prepend from storage galaxy:temp +gui.hi_tech_crafting_table.build-category.icon
