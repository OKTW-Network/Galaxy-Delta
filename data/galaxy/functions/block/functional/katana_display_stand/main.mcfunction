# display
function galaxy:block/functional/katana_display_stand/check-display
execute if entity @s[tag=setDisplay] run function galaxy:block/functional/katana_display_stand/build-display/main
execute if entity @s[tag=removeDisplay] run function galaxy:block/functional/katana_display_stand/remove-display
tag @s[tag=setDisplay] remove setDisplay
tag @s[tag=removeDisplay] remove removeDisplay

# throw out non-katana items
execute if entity @s[predicate=!minecraft:hand_main-empty,predicate=!galaxy:armor_stand/hand_main-katana_display,predicate=!galaxy:tool/hand_main-wrench] run tag @s add dropUnallowed
execute if entity @s[tag=dropUnallowed] run data modify storage galaxy:temporary block.drop append from entity @s HandItems[0]
execute if entity @s[tag=dropUnallowed] run replaceitem entity @s weapon.mainhand air
execute if entity @s[tag=dropUnallowed] run function galaxy:block/drop_item
tag @s[tag=dropUnallowed] remove dropUnallowed

# wrench
execute if entity @s[predicate=!minecraft:hand_main-empty,predicate=galaxy:tool/hand_main-wrench] run function galaxy:tool/wrench
execute if entity @s[tag=adjustment,tag=displaying] run function galaxy:block/functional/katana_display_stand/wrench/adjustment
execute if entity @s[tag=dismantle] run function galaxy:block/functional/katana_display_stand/wrench/dismantle
tag @s[tag=adjustment] remove adjustment
