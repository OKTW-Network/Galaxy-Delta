# return item
execute if entity @s[predicate=!minecraft:hand_main-empty,predicate=!galaxy:tool/hand_main-wrench] run tag @s add returnItem
execute if entity @s[tag=returnItem] run data modify storage cu:give item set from entity @s HandItems[0]
execute if entity @s[tag=returnItem] run replaceitem entity @s weapon.mainhand air
execute if entity @s[tag=returnItem] as @a[tag=triggerInteractEntity] run function cu:give/main
tag @s[tag=returnItem] remove returnItem

# wrench
execute if entity @s[predicate=!minecraft:hand_main-empty,predicate=galaxy:tool/hand_main-wrench] run tag @s add wrenchEmpowerLens
execute if entity @s[tag=wrenchEmpowerLens] run function galaxy:tool/wrench/handler-dummy-custom_entity
tag @s[tag=wrenchEmpowerLens] remove wrenchEmpowerLens
