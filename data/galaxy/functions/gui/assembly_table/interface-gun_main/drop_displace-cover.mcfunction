data modify storage galaxy:temp +GUI.item set value []

execute unless data block ~ ~ ~ Items[{Slot:0b,tag:{CustomData:{galaxy:{id:"gui_item"}}}}] run data modify storage galaxy:temp +GUI.item append from block ~ ~ ~ Items[{Slot:0b}]
execute unless data block ~ ~ ~ Items[{Slot:2b,tag:{CustomData:{galaxy:{id:"gui_item"}}}}] run data modify storage galaxy:temp +GUI.item append from block ~ ~ ~ Items[{Slot:2b}]
execute unless data block ~ ~ ~ Items[{Slot:3b,tag:{CustomData:{galaxy:{id:"gui_item"}}}}] run data modify storage galaxy:temp +GUI.item append from block ~ ~ ~ Items[{Slot:3b}]
execute unless data block ~ ~ ~ Items[{Slot:4b,tag:{CustomData:{galaxy:{id:"gui_item"}}}}] run data modify storage galaxy:temp +GUI.item append from block ~ ~ ~ Items[{Slot:4b}]
execute unless data block ~ ~ ~ Items[{Slot:5b,tag:{CustomData:{galaxy:{id:"gui_item"}}}}] run data modify storage galaxy:temp +GUI.item append from block ~ ~ ~ Items[{Slot:5b}]
execute unless data block ~ ~ ~ Items[{Slot:6b,tag:{CustomData:{galaxy:{id:"gui_item"}}}}] run data modify storage galaxy:temp +GUI.item append from block ~ ~ ~ Items[{Slot:6b}]
execute unless data block ~ ~ ~ Items[{Slot:8b,tag:{CustomData:{galaxy:{id:"gui_item"}}}}] run data modify storage galaxy:temp +GUI.item append from block ~ ~ ~ Items[{Slot:8b}]
execute unless data block ~ ~ ~ Items[{Slot:12b,tag:{CustomData:{galaxy:{id:"gui_item"}}}}] run data modify storage galaxy:temp +GUI.item append from block ~ ~ ~ Items[{Slot:12b}]
execute unless data block ~ ~ ~ Items[{Slot:14b,tag:{CustomData:{galaxy:{id:"gui_item"}}}}] run data modify storage galaxy:temp +GUI.item append from block ~ ~ ~ Items[{Slot:14b}]
execute unless data block ~ ~ ~ Items[{Slot:15b,tag:{CustomData:{galaxy:{id:"gui_item"}}}}] run data modify storage galaxy:temp +GUI.item append from block ~ ~ ~ Items[{Slot:15b}]
execute unless data block ~ ~ ~ Items[{Slot:16b,tag:{CustomData:{galaxy:{id:"gui_item"}}}}] run data modify storage galaxy:temp +GUI.item append from block ~ ~ ~ Items[{Slot:16b}]
execute unless data block ~ ~ ~ Items[{Slot:17b,tag:{CustomData:{galaxy:{id:"gui_item"}}}}] run data modify storage galaxy:temp +GUI.item append from block ~ ~ ~ Items[{Slot:17b}]
execute unless data block ~ ~ ~ Items[{Slot:18b,tag:{CustomData:{galaxy:{id:"gui_item"}}}}] run data modify storage galaxy:temp +GUI.item append from block ~ ~ ~ Items[{Slot:18b}]
execute unless data block ~ ~ ~ Items[{Slot:21b,tag:{CustomData:{galaxy:{id:"gui_item"}}}}] run data modify storage galaxy:temp +GUI.item append from block ~ ~ ~ Items[{Slot:21b}]
execute unless data block ~ ~ ~ Items[{Slot:22b,tag:{CustomData:{galaxy:{id:"gui_item"}}}}] run data modify storage galaxy:temp +GUI.item append from block ~ ~ ~ Items[{Slot:22b}]
execute unless data block ~ ~ ~ Items[{Slot:23b,tag:{CustomData:{galaxy:{id:"gui_item"}}}}] run data modify storage galaxy:temp +GUI.item append from block ~ ~ ~ Items[{Slot:23b}]
execute unless data block ~ ~ ~ Items[{Slot:25b,tag:{CustomData:{galaxy:{id:"gui_item"}}}}] run data modify storage galaxy:temp +GUI.item append from block ~ ~ ~ Items[{Slot:25b}]

execute if data storage galaxy:temp +GUI.item[0] run function galaxy:gui/delete-slot
execute if data storage galaxy:temp +GUI.item[0] run playsound minecraft:entity.item.pickup block @a ~ ~1 ~ 1 0.6
execute if data storage galaxy:temp +GUI.item[0] run data modify storage cu:item input set from storage galaxy:temp +GUI.item
execute if data storage galaxy:temp +GUI.item[0] run data modify storage cu:item pickupDelay set value 0s
execute if data storage galaxy:temp +GUI.item[0] positioned ~ ~1 ~ run function cu:item/summon
