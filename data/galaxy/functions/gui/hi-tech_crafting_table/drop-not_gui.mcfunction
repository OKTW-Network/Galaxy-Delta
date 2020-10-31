function galaxy:gui/data_get-all_slots
data modify storage galaxy:gui drop set from storage galaxy:get item
execute if data storage galaxy:gui drop[0] run function galaxy:gui/delete-drop
execute if data storage galaxy:gui drop[0] positioned ~ ~1 ~ run function galaxy:gui/drop_item
