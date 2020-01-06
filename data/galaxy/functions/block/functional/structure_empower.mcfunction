# throw out non-wrench items
execute if entity @s[predicate=galaxy:hand_main-not_empty,predicate=!galaxy:tool/hand_main-wrench] run tag @s add throw
execute if entity @s[tag=throw] run summon minecraft:item ~ ~ ~ {Tags:["throwItem"],PickupDelay:10s,Item:{id:"minecraft:stone",Count:1b}}
execute if entity @s[tag=throw] run data modify entity @e[tag=throwItem,limit=1] Item set from entity @s HandItems[0]
execute if entity @s[tag=throw] run replaceitem entity @s weapon.mainhand air
execute if entity @s[tag=throw] run tag @e[tag=throwItem] remove throwItem
execute if entity @s[tag=throw] run tag @s remove throw

# remove
execute if entity @s[predicate=galaxy:hand_main-not_empty,predicate=galaxy:tool/hand_main-wrench] run tag @s add remove
execute if entity @s[tag=remove] run function galaxy:tool/wrench
execute if entity @s[tag=remove] run function galaxy:tool/summon/structure_empower
execute if entity @s[tag=remove] run kill @s
