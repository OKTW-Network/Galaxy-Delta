execute if predicate galaxy:recipe/convertible/main_hand run data modify storage cu:item replaceitem.input set from entity @s SelectedItem.tag.CustomData.galaxy.convertToItem
execute if predicate galaxy:recipe/convertible/main_hand run function cu:item/replaceitem/main_hand

execute if predicate galaxy:recipe/convertible/off_hand run data modify storage cu:item replaceitem.input set from entity @s Inventory[{Slot:-106b}].tag.CustomData.galaxy.convertToItem
execute if predicate galaxy:recipe/convertible/off_hand run function cu:item/replaceitem/off_hand
