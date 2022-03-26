execute if entity @a[tag=galaxy._tag.ThisWrenchUser,predicate=minecraft:sneaking] run tag @s[tag=galaxy._tag.isDisplaying] add galaxy._tag.wrenchKatanaDisplayStandStatus
execute if entity @a[tag=galaxy._tag.ThisWrenchUser,predicate=!minecraft:sneaking] run tag @s[tag=galaxy._tag.isDisplaying] add galaxy._tag.wrenchKatanaDisplayStandRebuild

execute if entity @s[tag=galaxy._tag.wrenchKatanaDisplayStandStatus] run function galaxy:entity/katana_display_stand/main
execute if entity @s[tag=galaxy._tag.wrenchKatanaDisplayStandRebuild] run function galaxy:entity/katana_display_stand/main

tag @s remove galaxy._tag.wrenchKatanaDisplayStandStatus
tag @s remove galaxy._tag.wrenchKatanaDisplayStandRebuild
