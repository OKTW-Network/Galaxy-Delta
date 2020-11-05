data modify storage cu:compare input1 set from entity @s HandItems[0].tag.GUI.result.tag.gun.UUID
data modify storage cu:compare input2 set from block ~ ~ ~ Items[{Slot:13b}].tag.gun.UUID
function cu:compare/different
execute if data storage cu:compare {result:1b} run tag @s add rebuildParts
