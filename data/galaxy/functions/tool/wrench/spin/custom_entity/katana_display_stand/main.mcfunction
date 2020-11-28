execute if entity @a[tag=triggerWrench,predicate=!minecraft:sneaking] if entity @s[tag=displaying] run tag @s add wrenchKatanaDisplayStandAdjust
execute if entity @a[tag=triggerWrench,predicate=minecraft:sneaking] run tag @s add wrenchKatanaDisplayStandDestruct

execute if entity @s[tag=wrenchKatanaDisplayStandAdjust] run function galaxy:tool/wrench/custom_entity/katana_display_stand/adjust
execute if entity @s[tag=wrenchKatanaDisplayStandDestruct] run function galaxy:tool/wrench/custom_entity/katana_display_stand/destruct

tag @s[tag=wrenchKatanaDisplayStandAdjust] remove wrenchKatanaDisplayStandAdjust
tag @s[tag=wrenchKatanaDisplayStandDestruct] remove wrenchKatanaDisplayStandDestruct
