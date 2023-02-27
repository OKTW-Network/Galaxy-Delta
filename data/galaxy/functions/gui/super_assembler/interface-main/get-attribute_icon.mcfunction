data modify storage cu:value list.index.input set from storage galaxy:recipe super_assembler.attribute
scoreboard players operation #1 calcu_temp = @s galaxy.GUI.attribute.type
scoreboard players remove #1 calcu_temp 1
execute store result score #value.list.index.min cu run scoreboard players remove #1 calcu_temp 1
execute if score #value.list.index.min cu matches ..-1 run scoreboard players operation #value.list.index.min cu += #recipe.hi-tech_crafting_table.categoryMax galaxy
function cu:value/list/index/main
data modify entity @s HandItems[0].tag.CustomData.galaxy.data.attributePrev.icon set from storage cu:value list.index.result[0].icon

data modify storage cu:value list.index.input set from storage galaxy:recipe super_assembler.attribute
scoreboard players operation #1 calcu_temp = @s galaxy.GUI.attribute.type
scoreboard players add #1 calcu_temp 1
execute store result score #value.list.index.min cu run scoreboard players remove #1 calcu_temp 1
execute if score #value.list.index.min cu >= #recipe.hi-tech_crafting_table.categoryMax galaxy run scoreboard players operation #value.list.index.min cu -= #recipe.hi-tech_crafting_table.categoryMax galaxy
function cu:value/list/index/main
data modify entity @s HandItems[0].tag.CustomData.galaxy.data.attributeNext.icon set from storage cu:value list.index.result[0].icon
