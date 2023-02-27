function galaxy:recipe/assembly_table/save/result
data modify storage cu:block container.remove_slot.input set from entity @s HandItems[0].tag.CustomData.galaxy.data.assembly.blueprint.parts
function cu:block/container/remove_slot
data modify block ~ ~ ~ Items append from entity @s HandItems[0].tag.CustomData.galaxy.data.assembly.result.tag.CustomData.galaxy.tag.assemblyInfo.parts[]
execute store result score @s galaxy.block.assembly_table.requiredCount run data get entity @s HandItems[0].tag.CustomData.galaxy.data.assembly.blueprint.requiredCount
