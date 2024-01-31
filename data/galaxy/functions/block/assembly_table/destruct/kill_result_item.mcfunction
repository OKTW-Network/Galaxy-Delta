data modify storage cu:value different.input1 set from entity @e[tag=galaxy._tag.ThisDestroyedBlock,limit=1] data.galaxy.assembly_table.result.tag.CustomData.galaxy.tag.assemblyInfo.UUID
data modify storage cu:value different.input2 set from entity @s Item.tag.CustomData.galaxy.tag.assemblyInfo.UUID
function cu:value/different
execute if score #value.different.result cu matches 0 run kill @s
