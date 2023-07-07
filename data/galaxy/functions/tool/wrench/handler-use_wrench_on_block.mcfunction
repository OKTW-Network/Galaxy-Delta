tag @s add galaxy._tag.ThisUseWrench

execute if entity @s[gamemode=!creative] run function galaxy:tool/wrench/return_used

tag @e[tag=galaxy.tool.wrench] add galaxy._tag.ThisWrench

execute if predicate minecraft:entity_properties/sneaking run function galaxy:tool/wrench/used_on_block/main

kill @e[tag=galaxy._tag.ThisWrench]

tag @s remove galaxy._tag.ThisUseWrench
