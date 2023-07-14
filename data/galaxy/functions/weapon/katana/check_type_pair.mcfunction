tag @s remove galaxy._tag.katana.pairedType
data modify storage cu:value different.input1 set from entity @s SelectedItem.tag.CustomData.galaxy.tag.type
data modify storage cu:value different.input2 set from entity @s Inventory[{Slot:-106b}].tag.CustomData.galaxy.tag.type
function cu:value/different
execute if score #value.different.result cu matches 0 run tag @s add galaxy._tag.katana.pairedType
