execute store result score #calculation_temp1 numeric run data get entity @s HandItems[0].tag.miniUUIDMost
execute store result score #calculation_temp2 numeric run data get entity @s HandItems[0].tag.miniUUIDLeast
execute unless entity @a[tag=wrenchUser] as @a if score @s MhWrenchUUIDM = #calculation_temp1 numeric if score @s MhWrenchUUIDL = #calculation_temp2 numeric run tag @s add wrenchUser
execute if entity @a[tag=wrenchUser,predicate=!galaxy:sneak] run tag @s add adjustment
execute if entity @a[tag=wrenchUser,predicate=galaxy:sneak] run tag @s add remove
execute if entity @a[tag=wrenchUser] run replaceitem entity @s weapon.mainhand air
execute if entity @s[tag=adjustment] run replaceitem entity @a[tag=wrenchUser,predicate=!galaxy:tool/hand_main-wrench] weapon.mainhand air
execute as @a[tag=wrenchUser,gamemode=!creative] run function galaxy:tool/get/wrench
execute as @a[tag=wrenchUser,gamemode=creative,predicate=!galaxy:tool/hand_main-wrench] run function galaxy:tool/get/wrench
tag @a[tag=wrenchUser] remove wrenchUser
