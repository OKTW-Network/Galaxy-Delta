# throw out non-wrench items
execute if entity @s[predicate=!minecraft:hand_main-empty,predicate=!galaxy:tool/hand_main-wrench] run tag @s add dropUnallowed
execute if entity @s[tag=dropUnallowed] run data modify storage galaxy:temporary block.drop append from entity @s HandItems[0]
execute if entity @s[tag=dropUnallowed] run replaceitem entity @s weapon.mainhand air
execute if entity @s[tag=dropUnallowed] run function galaxy:block/drop_item
tag @s[tag=dropUnallowed] remove dropUnallowed

# remove
execute if entity @s[predicate=!minecraft:hand_main-empty,predicate=galaxy:tool/hand_main-wrench] run tag @s add dismantle
execute if entity @s[tag=dismantle] run function galaxy:tool/wrench
execute if entity @s[tag=dismantle] run function galaxy:tool/summon/structure_empower
execute if entity @s[tag=dismantle] run kill @s
