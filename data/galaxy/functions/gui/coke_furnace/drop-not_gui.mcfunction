data modify storage galaxy:temp +GUI.item set value []

function galaxy:gui/data_get-all_slots
data remove storage galaxy:get item[{Slot:11b}]
data remove storage galaxy:get item[{Slot:15b}]
data modify storage galaxy:temp +GUI.item set from storage galaxy:get item

execute if data storage galaxy:temp +GUI.item[0] run function galaxy:gui/delete-slot
execute if data storage galaxy:temp +GUI.item[0] run playsound minecraft:entity.item.pickup block @a ~ ~1 ~ 1 0.6
execute if data storage galaxy:temp +GUI.item[0] run data modify storage cu:item input set from storage galaxy:temp +GUI.item
execute if data storage galaxy:temp +GUI.item[0] run data modify storage cu:item pickupDelay set value 0s
execute if data storage galaxy:temp +GUI.item[0] positioned ~ ~1 ~ run function cu:item/summon
