data modify storage cu:value different.input1 set from entity @s SelectedItem.tag.CustomData.galaxy.tag.type
data modify storage cu:value different.input2 set from entity @s Inventory[{Slot:-106b}].tag.CustomData.galaxy.tag.type
function cu:value/different
execute if score #value.different.result cu matches 0 run function galaxy:weapon/katana/action/swap_put/replaceitem
execute if score #value.different.result cu matches 0 run function galaxy:weapon/katana/action/swap_put/consequence
