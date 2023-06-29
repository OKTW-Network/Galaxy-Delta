execute if predicate galaxy:book/hold-galaxy_delta run data modify storage galaxy:get item set value []
execute if predicate galaxy:book/hold-galaxy_delta run function galaxy:book/get/galaxy_delta
execute if predicate galaxy:book/hold-galaxy_delta run data modify storage cu:item replaceitem.input set from storage galaxy:get item[0]

execute if predicate galaxy:book/hand_main-galaxy_delta run data modify storage cu:item replaceitem.input.Count set from entity @s SelectedItem.Count
execute if predicate galaxy:book/hand_main-galaxy_delta run function cu:item/replaceitem/main_hand

execute if predicate galaxy:book/hand_off-galaxy_delta run data modify storage cu:item replaceitem.input.Count set from entity @s Inventory[{Slot:-106b}].Count
execute if predicate galaxy:book/hand_off-galaxy_delta run function cu:item/replaceitem/off_hand

scoreboard players set @s galaxy.book.triggerUpdate.galaxy_delta 0
scoreboard players enable @s galaxy.book.triggerUpdate.galaxy_delta
