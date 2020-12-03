execute if entity @a[tag=ThisCrowbarUser,predicate=minecraft:sneaking] run tag @s add crowbarKatanaDisplayStandDestruct
execute if entity @a[tag=ThisCrowbarUser,predicate=!minecraft:sneaking] run tag @s[tag=displaying] add crowbarKatanaDisplayStandRebuild

execute if entity @s[tag=crowbarKatanaDisplayStandDestruct] run function galaxy:entity/katana_display_stand/main
execute if entity @s[tag=crowbarKatanaDisplayStandRebuild] run function galaxy:entity/katana_display_stand/main

tag @s remove crowbarKatanaDisplayStandDestruct
tag @s remove crowbarKatanaDisplayStandRebuild
