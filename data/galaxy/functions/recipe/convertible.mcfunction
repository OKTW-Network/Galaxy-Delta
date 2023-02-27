execute if predicate galaxy:recipe/convertible/hand_main run data modify storage cu:item replaceitem.input set from entity @s SelectedItem.tag.CustomData.galaxy.convertToItem
execute if predicate galaxy:recipe/convertible/hand_main run function cu:item/replaceitem/hand_main

execute if predicate galaxy:recipe/convertible/hand_off run data modify storage cu:item replaceitem.input set from entity @s Inventory[{Slot:-106b}].tag.CustomData.galaxy.convertToItem
execute if predicate galaxy:recipe/convertible/hand_off run function cu:item/replaceitem/hand_off
