tag @s add galaxy._tag.ThisUseCrowbar

execute if entity @s[gamemode=!creative] run function galaxy:tool/crowbar/return_used

tag @e[tag=galaxy.tool.crowbar] add galaxy._tag.ThisCrowbar

execute if predicate minecraft:entity_properties/sneaking as @e[tag=galaxy._tag.ThisCrowbar] at @s align xyz positioned ~0.5 ~0.5 ~0.5 positioned ^ ^ ^-1 run function galaxy:tool/crowbar/block/main

kill @e[tag=galaxy._tag.ThisCrowbar]

tag @s remove galaxy._tag.ThisUseCrowbar
