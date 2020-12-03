execute if entity @a[tag=ThisWrenchUser,predicate=minecraft:sneaking] run tag @s[tag=displaying] add wrenchKatanaDisplayStandStatus
execute if entity @a[tag=ThisWrenchUser,predicate=!minecraft:sneaking] run tag @s[tag=displaying] add wrenchKatanaDisplayStandRebuild

execute if entity @s[tag=wrenchKatanaDisplayStandStatus] run function galaxy:entity/katana_display_stand/main
execute if entity @s[tag=wrenchKatanaDisplayStandRebuild] run function galaxy:entity/katana_display_stand/main

tag @s remove wrenchKatanaDisplayStandStatus
tag @s remove wrenchKatanaDisplayStandRebuild
