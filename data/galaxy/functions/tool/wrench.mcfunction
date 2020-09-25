execute store result score #1 calcu_temp run data get entity @s HandItems[0].tag.UUID[0]
execute store result score #2 calcu_temp run data get entity @s HandItems[0].tag.UUID[1]
execute store result score #3 calcu_temp run data get entity @s HandItems[0].tag.UUID[2]
execute store result score #4 calcu_temp run data get entity @s HandItems[0].tag.UUID[3]
execute as @a if score @s MhWrenchUUID0 = #1 calcu_temp if score @s MhWrenchUUID1 = #2 calcu_temp if score @s MhWrenchUUID2 = #3 calcu_temp if score @s MhWrenchUUID3 = #4 calcu_temp run tag @s add wrenchUser
execute if entity @a[tag=wrenchUser,predicate=!minecraft:sneaking] run tag @s add adjustment
execute if entity @a[tag=wrenchUser,predicate=minecraft:sneaking] run tag @s add dismantle
execute if entity @a[tag=wrenchUser] run data modify storage cu:replaceitem item set from entity @s HandItems[0]
execute as @a[tag=wrenchUser] run function cu:replaceitem/hand_main
execute if entity @a[tag=wrenchUser] run replaceitem entity @s weapon.mainhand air
tag @a[tag=wrenchUser] remove wrenchUser
