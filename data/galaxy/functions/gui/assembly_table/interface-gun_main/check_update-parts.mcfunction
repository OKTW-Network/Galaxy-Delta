data modify storage cu:compare input1 set value 0b
execute if data entity @s HandItems[0].tag.CustomData.galaxy.data.assemble.parts_id run data modify storage cu:compare input1 set from entity @s HandItems[0].tag.CustomData.galaxy.data.assemble.parts_id
data modify storage cu:compare input2 set value 0b
function galaxy:block/assembly_table/blueprint/gun/get/parts_id
execute if data storage galaxy:temp +block.assembly_table.get.parts_id run data modify storage cu:compare input2 set from storage galaxy:temp +block.assembly_table.get.parts_id
function cu:compare/different
execute if score #compare.result cu matches 1 run function galaxy:block/assembly_table/blueprint/gun/save
execute if score #compare.result cu matches 1 run tag @s add galaxy._task.assembly_table.buildBackground
execute if score #compare.result cu matches 1 if entity @s[tag=galaxy._tag.assembly_table.lockAssemble,predicate=galaxy:block/assembly_table/blueprint/gun/have-min_requirement] run tag @s add galaxy._task.assembly_table.rebuildResult
execute if score #compare.result cu matches 1 if entity @s[tag=galaxy._tag.assembly_table.lockAssemble,predicate=!galaxy:block/assembly_table/blueprint/gun/have-min_requirement,predicate=galaxy:block/assembly_table/blueprint/gun/have-result] run tag @s add galaxy._task.assembly_table.removeResult
execute if score #compare.result cu matches 1 if entity @s[tag=!galaxy._tag.assembly_table.lockAssemble,predicate=galaxy:block/assembly_table/blueprint/gun/have-min_requirement,predicate=!galaxy:block/assembly_table/blueprint/gun/have-result] run tag @s add galaxy._task.assembly_table.buildResult
