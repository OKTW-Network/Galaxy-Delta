execute unless data block ~ ~ ~ Items[{Slot:1b,tag:{component:{sight:1}}}] run data modify storage galaxy:gui drop append from block ~ ~ ~ Items[{Slot:1b}]
execute unless data block ~ ~ ~ Items[{Slot:7b,tag:{component:{addon:1}}}] run data modify storage galaxy:gui drop append from block ~ ~ ~ Items[{Slot:7b}]
execute unless data block ~ ~ ~ Items[{Slot:9b,tag:{component:{barrel:1}}}] run data modify storage galaxy:gui drop append from block ~ ~ ~ Items[{Slot:9b}]
execute unless data block ~ ~ ~ Items[{Slot:10b,tag:{component:{casing_gun:1}}}] run data modify storage galaxy:gui drop append from block ~ ~ ~ Items[{Slot:10b}]
execute unless data block ~ ~ ~ Items[{Slot:11b,tag:{component:{laser_core:1}}}] run data modify storage galaxy:gui drop append from block ~ ~ ~ Items[{Slot:11b}]
execute unless data block ~ ~ ~ Items[{Slot:19b,tag:{component:{cooling_system:1}}}] run data modify storage galaxy:gui drop append from block ~ ~ ~ Items[{Slot:19b}]
execute unless data block ~ ~ ~ Items[{Slot:20b,tag:{component:{handle:1}}}] run data modify storage galaxy:gui drop append from block ~ ~ ~ Items[{Slot:20b}]
execute unless data block ~ ~ ~ Items[{Slot:24b,tag:{component:{cosmetic:1}}}] run data modify storage galaxy:gui drop append from block ~ ~ ~ Items[{Slot:24b}]
execute unless data block ~ ~ ~ Items[{Slot:26b,tag:{component:{color_lens:1}}}] run data modify storage galaxy:gui drop append from block ~ ~ ~ Items[{Slot:26b}]

execute unless data block ~ ~ ~ Items[{Slot:13b}].tag.gun run data modify storage galaxy:gui drop append from block ~ ~ ~ Items[{Slot:13b}]
execute if data block ~ ~ ~ Items[{Slot:13b}].tag.gun.sbldGResult run data modify storage galaxy:gui drop append from block ~ ~ ~ Items[{Slot:13b}]

execute if data storage galaxy:gui drop[0] run function galaxy:gui/delete-drop
execute if data storage galaxy:gui drop[0] positioned ~ ~1 ~ run function galaxy:gui/drop_item
