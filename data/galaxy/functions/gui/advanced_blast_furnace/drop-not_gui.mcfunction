function galaxy:gui/data_get-all_slots
data remove storage galaxy:get item[{Slot:2b}]
data remove storage galaxy:get item[{Slot:15b}]
data remove storage galaxy:get item[{Slot:20b}]
data modify storage galaxy:gui drop set from storage galaxy:get item
execute if data storage galaxy:gui drop[0] run function galaxy:gui/delete-drop
execute if data storage galaxy:gui drop[0] positioned ~ ~1 ~ run function galaxy:gui/drop_item
