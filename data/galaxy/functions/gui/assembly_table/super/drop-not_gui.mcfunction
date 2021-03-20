function galaxy:gui/data_get-all_slots
data remove storage galaxy:get item[{Slot:16b}]
execute unless data block ~ ~ ~ Items[{Slot:16b,tag:{CustomData:{galaxy:{tag:{SuperAssembled:1b}}}}}] run data modify storage galaxy:get item append from block ~ ~ ~ Items[{Slot:16b}]
data modify storage galaxy:gui drop set from storage galaxy:get item
execute if data storage galaxy:gui drop[0] run function galaxy:gui/delete-drop
execute if data storage galaxy:gui drop[0] positioned ~ ~1 ~ run function galaxy:gui/drop_item
