execute unless data block ~ ~ ~ Items[{Slot:1b,tag:{component:1,addon:1,sight:1}}] run tag @s add dropUnallowed
execute unless data block ~ ~ ~ Items[{Slot:7b,tag:{component:1,addon:1,firing_mode:1}}] run tag @s add dropUnallowed
execute unless data block ~ ~ ~ Items[{Slot:9b,tag:{component:1,barrel:1}}] run tag @s add dropUnallowed
execute unless data block ~ ~ ~ Items[{Slot:10b,tag:{component:1,casing_gun:1}}] run tag @s add dropUnallowed
execute unless data block ~ ~ ~ Items[{Slot:11b,tag:{component:1,laser_core:1}}] run tag @s add dropUnallowed
execute unless data block ~ ~ ~ Items[{Slot:19b,tag:{component:1,cooling_system:1}}] run tag @s add dropUnallowed
execute unless data block ~ ~ ~ Items[{Slot:20b,tag:{component:1,handle:1}}] run tag @s add dropUnallowed
execute unless data block ~ ~ ~ Items[{Slot:24b,tag:{component:1,addon:1,cosmetic:1}}] run tag @s add dropUnallowed
execute unless data block ~ ~ ~ Items[{Slot:26b,tag:{component:1,addon:1,color_lens:1}}] run tag @s add dropUnallowed

execute unless data block ~ ~ ~ Items[{Slot:13b,tag:{gun:1}}] run tag @s add dropUnallowed
execute if data block ~ ~ ~ Items[{Slot:13b,tag:{gun:1,sbldGResult:1}}] run tag @s add dropUnallowed
