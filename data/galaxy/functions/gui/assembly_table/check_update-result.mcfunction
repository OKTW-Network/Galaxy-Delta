data modify storage cu:compare input1 set from entity @s HandItems[0].tag.CustomData.galaxy.data.result.tag.CustomData.galaxy.tag.UUID
data modify storage cu:compare input2 set from block ~ ~ ~ Items[{Slot:13b}].tag.CustomData.galaxy.tag.UUID
function cu:compare/different
execute if data storage cu:compare {result:1b} run tag @s add rebuildParts
