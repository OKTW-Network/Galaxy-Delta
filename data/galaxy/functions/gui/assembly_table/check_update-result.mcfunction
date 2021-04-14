data modify storage cu:compare input1 set from entity @s HandItems[0].tag.CustomData.galaxy.data.result.tag.CustomData.galaxy.UUID
data modify storage cu:compare input2 set from block ~ ~ ~ Items[{Slot:13b}].tag.CustomData.galaxy.UUID
function cu:compare/different
execute if score #result compare matches 1 run tag @s add rebuildParts
