execute if entity @a[tag=galaxy._tag.ThisCrowbarUser,predicate=minecraft:sneaking] run tag @s add galaxy._tag.crowbarKatanaDisplayStandDestruct
execute if entity @a[tag=galaxy._tag.ThisCrowbarUser,predicate=!minecraft:sneaking] run tag @s[tag=galaxy._tag.isDisplaying] add galaxy._tag.crowbarKatanaDisplayStandRebuild

execute if entity @s[tag=galaxy._tag.crowbarKatanaDisplayStandDestruct] run function galaxy:entity/katana_display_stand/main
execute if entity @s[tag=galaxy._tag.crowbarKatanaDisplayStandRebuild] run function galaxy:entity/katana_display_stand/main

tag @s remove galaxy._tag.crowbarKatanaDisplayStandDestruct
tag @s remove galaxy._tag.crowbarKatanaDisplayStandRebuild
