data modify storage cu:temporary comparator.input1 set from entity @s HandItems[0].tag.GUI.result.tag.gun.UUID
data modify storage cu:temporary comparator.input2 set from block ~ ~ ~ Items[{Slot:13b}].tag.gun.UUID
function cu:comparator/different
execute if data storage cu:result {comparator:1} run tag @s add rebuildParts
function cu:comparator/remove-result
