execute unless data block ~ ~ ~ Items[{Slot:1b,tag:{component:{sight:1}}}] run tag @s add dropUnallowed
execute unless data block ~ ~ ~ Items[{Slot:7b,tag:{component:{trigger:1}}}] run tag @s add dropUnallowed
execute unless data block ~ ~ ~ Items[{Slot:9b,tag:{component:{barrel:1}}}] run tag @s add dropUnallowed
execute unless data block ~ ~ ~ Items[{Slot:10b,tag:{component:{casing_gun:1}}}] run tag @s add dropUnallowed
execute unless data block ~ ~ ~ Items[{Slot:11b,tag:{component:{laser_core:1}}}] run tag @s add dropUnallowed
execute unless data block ~ ~ ~ Items[{Slot:19b,tag:{component:{cooling_system:1}}}] run tag @s add dropUnallowed
execute unless data block ~ ~ ~ Items[{Slot:20b,tag:{component:{handle:1}}}] run tag @s add dropUnallowed
execute unless data block ~ ~ ~ Items[{Slot:24b,tag:{component:{cosmetic:1}}}] run tag @s add dropUnallowed
execute unless data block ~ ~ ~ Items[{Slot:26b,tag:{component:{color_lens:1}}}] run tag @s add dropUnallowed

# execute if data entity @s HandItems[0].tag.GUI.result.tag.gun{type:1} if data block ~ ~ ~ Items[].tag.component.forType unless data block ~ ~ ~ Items[].tag.component{forType:1} run tag @s add dropUnallowed
# execute if data entity @s HandItems[0].tag.GUI.result.tag.gun{type:2} if data block ~ ~ ~ Items[].tag.component.forType unless data block ~ ~ ~ Items[].tag.component{forType:2} run tag @s add dropUnallowed
# execute if data entity @s HandItems[0].tag.GUI.result.tag.gun{type:3} if data block ~ ~ ~ Items[].tag.component.forType unless data block ~ ~ ~ Items[].tag.component{forType:3} run tag @s add dropUnallowed

execute unless data block ~ ~ ~ Items[{Slot:13b}].tag.gun run tag @s add dropUnallowed
execute if data block ~ ~ ~ Items[{Slot:13b}].tag.gun.sbldGResult run tag @s add dropUnallowed
