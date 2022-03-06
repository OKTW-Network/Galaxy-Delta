data modify storage galaxy:temp +GUI.item set value []

execute if data block ~ ~ ~ Items[{Slot:1b}] unless data block ~ ~ ~ Items[{Slot:1b,tag:{CustomData:{galaxy:{tag:{sight:{}}}}}}] run data modify storage galaxy:temp +GUI.item append from block ~ ~ ~ Items[{Slot:1b}]
execute if data block ~ ~ ~ Items[{Slot:7b}] unless data block ~ ~ ~ Items[{Slot:7b,tag:{CustomData:{galaxy:{tag:{special:{}}}}}}] run data modify storage galaxy:temp +GUI.item append from block ~ ~ ~ Items[{Slot:7b}]
execute if data block ~ ~ ~ Items[{Slot:9b}] unless data block ~ ~ ~ Items[{Slot:9b,tag:{CustomData:{galaxy:{tag:{barrel:{}}}}}}] run data modify storage galaxy:temp +GUI.item append from block ~ ~ ~ Items[{Slot:9b}]
execute if data block ~ ~ ~ Items[{Slot:10b}] unless data block ~ ~ ~ Items[{Slot:10b,tag:{CustomData:{galaxy:{tag:{casing_gun:{}}}}}}] run data modify storage galaxy:temp +GUI.item append from block ~ ~ ~ Items[{Slot:10b}]
execute if data block ~ ~ ~ Items[{Slot:11b}] unless data block ~ ~ ~ Items[{Slot:11b,tag:{CustomData:{galaxy:{tag:{laser_core:{}}}}}}] run data modify storage galaxy:temp +GUI.item append from block ~ ~ ~ Items[{Slot:11b}]
execute if data block ~ ~ ~ Items[{Slot:19b}] unless data block ~ ~ ~ Items[{Slot:19b,tag:{CustomData:{galaxy:{tag:{cooling_system:{}}}}}}] run data modify storage galaxy:temp +GUI.item append from block ~ ~ ~ Items[{Slot:19b}]
execute if data block ~ ~ ~ Items[{Slot:20b}] unless data block ~ ~ ~ Items[{Slot:20b,tag:{CustomData:{galaxy:{tag:{handle_gun:{}}}}}}] run data modify storage galaxy:temp +GUI.item append from block ~ ~ ~ Items[{Slot:20b}]
execute if data block ~ ~ ~ Items[{Slot:24b}] unless data block ~ ~ ~ Items[{Slot:24b,tag:{CustomData:{galaxy:{tag:{cosmetic:{}}}}}}] run data modify storage galaxy:temp +GUI.item append from block ~ ~ ~ Items[{Slot:24b}]
execute if data block ~ ~ ~ Items[{Slot:26b}] unless data block ~ ~ ~ Items[{Slot:26b,tag:{CustomData:{galaxy:{tag:{color_lens:{}}}}}}] run data modify storage galaxy:temp +GUI.item append from block ~ ~ ~ Items[{Slot:26b}]

execute if data block ~ ~ ~ Items[{Slot:13b}] unless data block ~ ~ ~ Items[{Slot:13b}].tag.CustomData.galaxy{id:"gun"} run data modify storage galaxy:temp +GUI.item append from block ~ ~ ~ Items[{Slot:13b}]
execute if data block ~ ~ ~ Items[{Slot:13b}].tag.CustomData.galaxy.tag.SuperAssembled run data modify storage galaxy:temp +GUI.item append from block ~ ~ ~ Items[{Slot:13b}]

execute if data storage galaxy:temp +GUI.item[0] run function galaxy:gui/delete-slot
execute if data storage galaxy:temp +GUI.item[0] run playsound minecraft:entity.item.pickup block @a ~ ~1 ~ 1 0.6
execute if data storage galaxy:temp +GUI.item[0] run data modify storage cu:item input set from storage galaxy:temp +GUI.item
execute if data storage galaxy:temp +GUI.item[0] run data modify storage cu:item pickupDelay set value 0s
execute if data storage galaxy:temp +GUI.item[0] positioned ~ ~1 ~ run function cu:item/summon
