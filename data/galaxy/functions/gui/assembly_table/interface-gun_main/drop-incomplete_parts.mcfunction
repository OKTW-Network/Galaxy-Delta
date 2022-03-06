data modify storage galaxy:temp +GUI.item set value []

execute if data block ~ ~ ~ Items[{Slot:1b}] run data modify storage galaxy:temp +GUI.item append from block ~ ~ ~ Items[{Slot:1b}]
execute if data block ~ ~ ~ Items[{Slot:7b}] run data modify storage galaxy:temp +GUI.item append from block ~ ~ ~ Items[{Slot:7b}]
execute if data block ~ ~ ~ Items[{Slot:9b}] run data modify storage galaxy:temp +GUI.item append from block ~ ~ ~ Items[{Slot:9b}]
execute if data block ~ ~ ~ Items[{Slot:10b}] run data modify storage galaxy:temp +GUI.item append from block ~ ~ ~ Items[{Slot:10b}]
execute if data block ~ ~ ~ Items[{Slot:11b}] run data modify storage galaxy:temp +GUI.item append from block ~ ~ ~ Items[{Slot:11b}]
execute if data block ~ ~ ~ Items[{Slot:19b}] run data modify storage galaxy:temp +GUI.item append from block ~ ~ ~ Items[{Slot:19b}]
execute if data block ~ ~ ~ Items[{Slot:20b}] run data modify storage galaxy:temp +GUI.item append from block ~ ~ ~ Items[{Slot:20b}]
execute if data block ~ ~ ~ Items[{Slot:24b}] run data modify storage galaxy:temp +GUI.item append from block ~ ~ ~ Items[{Slot:24b}]
execute if data block ~ ~ ~ Items[{Slot:26b}] run data modify storage galaxy:temp +GUI.item append from block ~ ~ ~ Items[{Slot:26b}]

execute if data storage galaxy:temp +GUI.item[0] run function galaxy:gui/delete-slot
execute if data storage galaxy:temp +GUI.item[0] run playsound minecraft:entity.item.pickup block @a ~ ~1 ~ 1 0.6
execute if data storage galaxy:temp +GUI.item[0] run data modify storage cu:item input set from storage galaxy:temp +GUI.item
execute if data storage galaxy:temp +GUI.item[0] run data modify storage cu:item pickupDelay set value 0s
execute if data storage galaxy:temp +GUI.item[0] positioned ~ ~1 ~ run function cu:item/summon
