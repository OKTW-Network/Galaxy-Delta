data modify storage cu:compare input1 set value 0b
execute if data entity @s HandItems[0].tag.CustomData.galaxy.data.assemble.result_uuid run data modify storage cu:compare input1 set from entity @s HandItems[0].tag.CustomData.galaxy.data.assemble.result_uuid
data modify storage cu:compare input2 set value 0b
function galaxy:block/assembly_table/blueprint/gun/get/result_uuid
execute if data storage galaxy:temp +block.assembly_table.get.result_uuid run data modify storage cu:compare input2 set from storage galaxy:temp +block.assembly_table.get.result_uuid
function cu:compare/different
execute if score #compare.result cu matches 1 run function galaxy:block/assembly_table/blueprint/gun/save
execute if score #compare.result cu matches 1 run tag @s add galaxy._task.assembly_table.buildBackground
execute if score #compare.result cu matches 1 if entity @s[tag=galaxy._tag.assembly_table.lockAssemble,predicate=galaxy:block/assembly_table/blueprint/gun/have-result] run tag @s add galaxy._task.assembly_table.rebuildParts
execute if score #compare.result cu matches 1 if entity @s[tag=galaxy._tag.assembly_table.lockAssemble,predicate=!galaxy:block/assembly_table/blueprint/gun/have-result,predicate=galaxy:block/assembly_table/blueprint/gun/any-parts] run tag @s add galaxy._task.assembly_table.removeParts
execute if score #compare.result cu matches 1 if entity @s[tag=!galaxy._tag.assembly_table.lockAssemble,predicate=galaxy:block/assembly_table/blueprint/gun/have-result] run tag @s add galaxy._task.assembly_table.buildParts
